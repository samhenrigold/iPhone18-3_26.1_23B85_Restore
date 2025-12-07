void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(uint64_t a1, void *a2)
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

void *geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_1F2A04738;
  a1[1] = v3;
  return a1;
}

uint64_t std::vector<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__emplace_back_slow_path<VKTrafficFeature * {__strong}&,geo::memory_management_mode const&>(void *a1, void **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v28 = a1 + 3;
  if (v6)
  {
    v7 = mdm::zone_mallocator::instance(a1);
    v8 = pthread_rwlock_rdlock((v7 + 32));
    if (v8)
    {
      geo::read_write_lock::logFailure(v8, "read lock", v9);
    }

    v10 = malloc_type_zone_malloc(*v7, 24 * v6, 0x81040B49F1EBBuLL);
    atomic_fetch_add((v7 + 24), 1u);
    geo::read_write_lock::unlock((v7 + 32));
  }

  else
  {
    v10 = 0;
  }

  *(&v27 + 1) = &v10[3 * v6];
  v11 = geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v10[3 * v2], *a2);
  *&v27 = v11 + 3;
  v12 = *a1;
  v13 = a1[1];
  v14 = *a1 - v13;
  v15 = v11 + v14;
  if (*a1 != v13)
  {
    v16 = *a1;
    v17 = v11 + v14;
    do
    {
      v18 = geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v17, v16);
      v16 += 24;
      v17 = v18 + 24;
    }

    while (v16 != v13);
    v19 = v12;
    v20 = v12;
    do
    {
      v21 = *v20;
      v20 += 3;
      (*v21)(v12);
      v19 += 3;
      v12 = v20;
    }

    while (v20 != v13);
  }

  v22 = *a1;
  *a1 = v15;
  v23 = a1[2];
  v25 = v27;
  *(a1 + 1) = v27;
  *&v27 = v22;
  *(&v27 + 1) = v23;
  v26[0] = v22;
  v26[1] = v22;
  std::__split_buffer<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(v26);
  return v25;
}

uint64_t std::__split_buffer<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 3);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = mdm::zone_mallocator::instance(i);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v6, v5);
  }

  return a1;
}

uint64_t geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = off_1F2A04738;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A04738;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A04738;

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,false>(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v60 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = a2 - v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 3);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2 - 24, a1))
        {
          v21 = a1;
          v20 = a2 - 24;
          goto LABEL_67;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a2 - 24);
      return;
    }

    if (v10 == 4)
    {
      break;
    }

    if (v10 == 5)
    {
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24);
      return;
    }

LABEL_10:
    if (v9 <= 575)
    {
      if (a4)
      {
        if (a1 != a2)
        {
          v23 = a1 + 24;
          if (a1 + 24 != a2)
          {
            v24 = 0;
            v25 = a1;
            do
            {
              v26 = v25;
              v25 = v23;
              if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v23, v26))
              {
                v27 = a2;
                geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, v25);
                v28 = v24;
                while (1)
                {
                  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1 + v28 + 24, a1 + v28);
                  if (!v28)
                  {
                    break;
                  }

                  v29 = md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, a1 + v28 - 24);
                  v28 -= 24;
                  if (!v29)
                  {
                    v30 = a1 + v28 + 24;
                    goto LABEL_79;
                  }
                }

                v30 = a1;
LABEL_79:
                geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v30, &v58);
                v58 = off_1F2A04738;

                a2 = v27;
              }

              v23 = v25 + 24;
              v24 += 24;
            }

            while (v25 + 24 != a2);
          }
        }
      }

      else if (a1 != a2)
      {
        v54 = a1 + 24;
        if (a1 + 24 != a2)
        {
          do
          {
            v55 = v54;
            if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v54, a1))
            {
              geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, v55);
              do
              {
                geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1 + 24, a1);
                a1 -= 24;
              }

              while (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, a1));
              geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1 + 24, &v58);
              v58 = off_1F2A04738;
            }

            v54 = v55 + 24;
            a1 = v55;
          }

          while (v55 + 24 != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v31 = v11 >> 1;
        v32 = v11 >> 1;
        v56 = a2;
        do
        {
          v33 = v32;
          if (v31 >= v32)
          {
            v34 = (2 * v32) | 1;
            v35 = a1 + 24 * v34;
            if (2 * v32 + 2 < v10 && md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 + 24 * v34, v35 + 24))
            {
              v35 += 24;
              v34 = 2 * v33 + 2;
            }

            v36 = a1 + 24 * v33;
            if (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v35, v36))
            {
              geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, a1 + 24 * v33);
              do
              {
                v37 = v35;
                geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v36, v35);
                if (v31 < v34)
                {
                  break;
                }

                v38 = (2 * v34) | 1;
                v35 = a1 + 24 * v38;
                v34 = 2 * v34 + 2;
                if (v34 >= v10)
                {
                  v34 = v38;
                }

                else if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 + 24 * v38, v35 + 24))
                {
                  v35 += 24;
                }

                else
                {
                  v34 = v38;
                }

                v36 = v37;
              }

              while (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v35, &v58));
              geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v37, &v58);
              v58 = off_1F2A04738;

              a2 = v56;
            }
          }

          v32 = v33 - 1;
        }

        while (v33);
        v39 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
        do
        {
          geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v57, a1);
          v40 = 0;
          v41 = a1;
          do
          {
            v42 = v41 + 24 * v40;
            v43 = v42 + 24;
            v44 = (2 * v40) | 1;
            v45 = 2 * v40 + 2;
            if (v45 < v39)
            {
              v46 = v42 + 48;
              if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v42 + 24, v42 + 48))
              {
                v43 = v46;
                v44 = v45;
              }
            }

            geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v41, v43);
            v41 = v43;
            v40 = v44;
          }

          while (v44 <= ((v39 - 2) >> 1));
          v47 = a2 - 24;
          if (v43 == a2 - 24)
          {
            v48 = a2 - 24;
            geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v43, v57);
          }

          else
          {
            geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v43, v47);
            v48 = a2 - 24;
            geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v47, v57);
            v49 = v43 - a1 + 24;
            if (v49 >= 25)
            {
              v50 = (-2 - 0x5555555555555555 * (v49 >> 3)) >> 1;
              v51 = a1 + 24 * v50;
              if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v51, v43))
              {
                geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, v43);
                do
                {
                  v52 = v51;
                  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v43, v51);
                  if (!v50)
                  {
                    break;
                  }

                  v50 = (v50 - 1) >> 1;
                  v51 = a1 + 24 * v50;
                  v43 = v52;
                }

                while (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v51, &v58));
                geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v52, &v58);
                v58 = off_1F2A04738;
              }
            }
          }

          v57[0] = off_1F2A04738;

          a2 = v48;
        }

        while (v39-- > 2);
      }

      return;
    }

    v12 = a1 + 24 * (v10 >> 1);
    if (v9 < 0xC01)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1 + 24 * (v10 >> 1), a1, a2 - 24);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24 * (v10 >> 1), a2 - 24);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1 + 24, v12 - 24, a2 - 48);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1 + 48, v12 + 24, a2 - 72);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(v12 - 24, a1 + 24 * (v10 >> 1), v12 + 24);
      geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, a1);
      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1, a1 + 24 * (v10 >> 1));
      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1 + 24 * (v10 >> 1), &v58);
      v58 = off_1F2A04738;
    }

    --a3;
    if ((a4 & 1) != 0 || md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 - 24, a1))
    {
      geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, a1);
      v13 = a1;
      do
      {
        v13 += 24;
      }

      while (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v13, &v58));
      v14 = a2;
      if (v13 - 24 == a1)
      {
        v14 = a2;
        do
        {
          if (v13 >= v14)
          {
            break;
          }

          v14 -= 24;
        }

        while (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v14, &v58));
      }

      else
      {
        do
        {
          v14 -= 24;
        }

        while (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v14, &v58));
      }

      if (v13 >= v14)
      {
        v8 = v13;
      }

      else
      {
        v15 = v14;
        v8 = v13;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(v8, v15);
          do
          {
            v8 += 24;
          }

          while (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v8, &v58));
          do
          {
            v15 -= 24;
          }

          while (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v15, &v58));
        }

        while (v8 < v15);
      }

      if (v8 - 24 != a1)
      {
        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1, v8 - 24);
      }

      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v8 - 24, &v58);
      v58 = off_1F2A04738;

      if (v13 < v14)
      {
        goto LABEL_38;
      }

      v16 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>(a1, v8 - 24);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>(v8, a2))
      {
        a2 = v8 - 24;
        if (!v16)
        {
          goto LABEL_2;
        }

        return;
      }

      if (!v16)
      {
LABEL_38:
        std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,false>(a1, v8 - 24, a3, a4 & 1);
        goto LABEL_57;
      }
    }

    else
    {
      geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v58, a1);
      if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, a2 - 24))
      {
        v8 = a1;
        do
        {
          v8 += 24;
        }

        while (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, v8));
      }

      else
      {
        v17 = a1 + 24;
        do
        {
          v8 = v17;
          if (v17 >= a2)
          {
            break;
          }

          v18 = md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, v17);
          v17 = v8 + 24;
        }

        while (!v18);
      }

      v19 = a2;
      if (v8 < a2)
      {
        v19 = a2;
        do
        {
          v19 -= 24;
        }

        while (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, v19));
      }

      while (v8 < v19)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(v8, v19);
        do
        {
          v8 += 24;
        }

        while (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, v8));
        do
        {
          v19 -= 24;
        }

        while (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(&v58, v19));
      }

      if (v8 - 24 != a1)
      {
        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1, v8 - 24);
      }

      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v8 - 24, &v58);
      v58 = off_1F2A04738;

LABEL_57:
      a4 = 0;
    }
  }

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a1 + 48);
  if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2 - 24, a1 + 48))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1 + 48, a2 - 24);
    if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 + 48, a1 + 24))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1 + 24, a1 + 48);
      if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 + 24, a1))
      {
        v20 = a1 + 24;
        v21 = a1;
LABEL_67:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(v21, v20);
      }
    }
  }
}

BOOL md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = [v4 groupItemVerticalDisplayOrder];
  v6 = [*(a2 + 8) groupItemVerticalDisplayOrder];

  v7 = *(a1 + 8);
  v8 = v7;
  if (v5 == v6)
  {
    v9 = [v7 groupItemHorizontalDisplayOrder];
    v10 = [*(a2 + 8) groupItemHorizontalDisplayOrder];

    v11 = *(a1 + 8);
    v8 = v11;
    if (v9 == v10)
    {
      v12 = [v11 collisionPriority];
      v13 = [*(a2 + 8) collisionPriority];
    }

    else
    {
      v12 = [v11 groupItemHorizontalDisplayOrder];
      v13 = [*(a2 + 8) groupItemHorizontalDisplayOrder];
    }
  }

  else
  {
    v12 = [v7 groupItemVerticalDisplayOrder];
    v13 = [*(a2 + 8) groupItemVerticalDisplayOrder];
  }

  v14 = v12 > v13;

  return v14;
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x1E69E9840];
  geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v4, a1);
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1, a2);
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a2, v4);
  v4[0] = off_1F2A04738;
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2, a1);
  v7 = md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a3, a2);
  if (v6)
  {
    if (v7)
    {
      v8 = a1;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1, a2);
      if (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a3, a2))
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

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a2, a3);
    if (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2, a1))
    {
      return;
    }

    v8 = a1;
    v9 = a2;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(v8, v9);
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a2, a3);
  if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a3, a4);
    if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a3, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a2, a3);
      if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1, a2);
      }
    }
  }

  if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a5, a4))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a4, a5);
    if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a4, a3))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a3, a4);
      if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a3, a2))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a2, a3);
        if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2, a1))
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>(uint64_t a1, uint64_t a2)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a2 - 24);
        return 1;
      case 4:
        v15 = a2 - 24;
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a1 + 48);
        if (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v15, a1 + 48))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1 + 48, v15);
        if (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 + 48, a1 + 24))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(a1 + 24, a1 + 48);
        if (!md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a1 + 24, a1))
        {
          return 1;
        }

        v7 = a1 + 24;
        v6 = a1;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24);
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
      v5 = a2 - 24;
      if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(a2 - 24, a1))
      {
        v6 = a1;
        v7 = v5;
LABEL_6:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *&>(v6, v7);
      }

      return 1;
    }
  }

  v8 = a1 + 48;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0 &,geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *,0>(a1, a1 + 24, a1 + 48);
  v9 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v9, v8))
    {
      geo::_retain_ptr<VKTrafficFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v17, v9);
      v12 = v10;
      while (1)
      {
        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1 + v12 + 72, a1 + v12 + 48);
        if (v12 == -48)
        {
          break;
        }

        v13 = md::RouteAnnotationLabelFeature::RouteAnnotationLabelFeature(geo::Mercator3<double> const&,geo::PolylineCoordinate const&,double,double,std::vector<VKTrafficFeature * {__strong}> const&,std::shared_ptr<md::LabelDedupingGroup> const&,md::LabelManager *)::$_0::operator()(v17, a1 + v12 + 24);
        v12 -= 24;
        if (!v13)
        {
          v14 = a1 + v12 + 72;
          goto LABEL_20;
        }
      }

      v14 = a1;
LABEL_20:
      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v14, v17);
      ++v11;
      v17[0] = off_1F2A04738;

      if (v11 == 8)
      {
        return v9 + 24 == a2;
      }
    }

    v8 = v9;
    v10 += 24;
    v9 += 24;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t md::FlyoverRouteElevationSource::elevationForCoordinate(uint64_t a1, double *a2, void *a3)
{
  v4 = a2;
  if (*(a1 + 104) != 1)
  {
    if (*(a1 + 24) != 1)
    {
      goto LABEL_49;
    }

    v24 = a2[2];
    v25 = +[VKSharedResourcesManager sharedResources];
    Undulation = md::GeoidModel::getUndulation([v25 undulationModel], *v4, v4[1]);
    v27 = *&Undulation;
    if (!HIDWORD(Undulation))
    {
      v27 = 0.0;
    }

    *&v3 = v27 + v24;

    v28 = 0x100000000;
    return v28 & 0xFF00000000 | LODWORD(v3);
  }

  v5 = a3[5];
  v44 = a3 + 6;
  if (v5 == a3 + 6)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v6 = *(v5 + 25);
    v3 = v4[1];
    v7 = tan(*v4 * 0.00872664626 + 0.785398163);
    v8 = log(v7);
    v9 = a3[1];
    if (v9)
    {
      v10 = (1 << v6);
      v11 = vcvtmd_s64_f64((v3 * 0.00277777778 + 0.5) * v10);
      v12 = (1 << v6) + ~vcvtmd_s64_f64((v8 * 0.159154943 + 0.5) * v10);
      v13 = (v12 - 0x61C8864680B583EBLL + (((v6 + 0x53A3C687B1BC605ALL) ^ 0x9E3779B97F4A7D14) << 6) + (((v6 + 0x53A3C687B1BC605ALL) ^ 0x9E3779B97F4A7D14) >> 2)) ^ (v6 + 0x53A3C687B1BC605ALL) ^ 0x9E3779B97F4A7D14;
      v14 = (v11 - 0x61C8864680B583EBLL + (v13 << 6) + (v13 >> 2)) ^ v13;
      v15 = vcnt_s8(v9);
      v15.i16[0] = vaddlv_u8(v15);
      v16 = v15.u32[0];
      if (v15.u32[0] > 1uLL)
      {
        v17 = (v11 - 0x61C8864680B583EBLL + (v13 << 6) + (v13 >> 2)) ^ v13;
        if (v14 >= *&v9)
        {
          v17 = v14 % *&v9;
        }
      }

      else
      {
        v17 = (*&v9 - 1) & v14;
      }

      v18 = *(*a3 + 8 * v17);
      if (v18)
      {
        v19 = *v18;
        if (*v18)
        {
          break;
        }
      }
    }

LABEL_25:
    v21 = v5[1];
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
        v22 = v5[2];
        v23 = *v22 == v5;
        v5 = v22;
      }

      while (!v23);
    }

    v5 = v22;
    v4 = a2;
    if (v22 == v44)
    {
      goto LABEL_49;
    }
  }

  while (1)
  {
    v20 = *(v19 + 1);
    if (v14 == v20)
    {
      break;
    }

    if (v16 > 1)
    {
      if (v20 >= *&v9)
      {
        v20 %= *&v9;
      }
    }

    else
    {
      v20 &= *&v9 - 1;
    }

    if (v20 != v17)
    {
      goto LABEL_25;
    }

LABEL_24:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_25;
    }
  }

  if (v19[40] == 1)
  {
    geo::QuadTile::computeHash(v19 + 16);
    v19[40] = 0;
  }

  if (*(v19 + 4) != v14 || v19[16] != 255 || v19[17] != v6 || *(v19 + 5) != v12 || *(v19 + 6) != v11)
  {
    goto LABEL_24;
  }

  v30 = *(v19 + 6);
  v29 = *(v19 + 7);
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = 1;
  if (v30)
  {
    v32 = 1 << *(v30 + 169);
    v33 = 1.0 / v32;
    v34 = v33 * (v32 + ~*(v30 + 172));
    v47 = v33 * *(v30 + 176);
    v48 = v34;
    v35 = &v47;
    v49[0] = v47 + v33;
    v49[1] = v34 + v33;
    v36 = a2[1];
    v3 = a2[2];
    v37 = tan(*a2 * 0.00872664626 + 0.785398163);
    v40.n128_f64[0] = log(v37);
    v38 = 0;
    v39 = v36 * 0.00277777778 + 0.5;
    v40.n128_f64[0] = v40.n128_f64[0] * 0.159154943 + 0.5;
    v46[0] = v39;
    v46[1] = v40.n128_f64[0];
    v46[2] = v3;
    while (v39 >= *v35 && v39 < v49[v38])
    {
      v41 = v31;
      v31 = 0;
      v39 = v40.n128_f64[0];
      v35 = &v48;
      v38 = 1;
      if ((v41 & 1) == 0)
      {
        v28 = (*(*v30 + 56))(v30, v46, 1, v40, v40.n128_f64[0]);
        v31 = 0;
        LODWORD(v3) = v28;
        if (v29)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      }
    }

    v28 = 0;
    v31 = 1;
    if (!v29)
    {
      goto LABEL_48;
    }

LABEL_47:
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  else
  {
    v28 = 0;
    if (v29)
    {
      goto LABEL_47;
    }
  }

LABEL_48:
  if (v31)
  {
LABEL_49:
    v28 = 0;
    LODWORD(v3) &= 0xFFFFFF00;
  }

  return v28 & 0xFF00000000 | LODWORD(v3);
}

void sub_1B2E2FF68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::FlyoverRouteElevationSource::~FlyoverRouteElevationSource(md::FlyoverRouteElevationSource *this)
{
  md::FlyoverRouteElevationSource::~FlyoverRouteElevationSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04B28;
  v2 = *(this + 26);
  if (v2 != *(this + 28))
  {
    free(v2);
  }

  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::~__hash_table(this + 21);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 88);
  *this = &unk_1F2A21C48;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 8);
}

void md::RouteElevationSource::~RouteElevationSource(md::RouteElevationSource *this)
{
  *this = &unk_1F2A21C48;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 8);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A21C48;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 8);
}

void md::StandardRouteElevationSource::~StandardRouteElevationSource(md::StandardRouteElevationSource *this)
{
  *this = &unk_1F2A21C48;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 8);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A21C48;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 8);
}

void sub_1B2E303E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void md::mun::MeshResourceFetcher::expireResource(md::mun::MeshResourceFetcher *this, const gdc::ResourceKey *a2)
{
  v4 = v3;
  v5 = [MEMORY[0x1E69A2610] modernLoader];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2md3mun19MeshResourceFetcher14expireResourceERKN3gdc11ResourceKeyE_block_invoke;
  v6[3] = &__block_descriptor_48_e733_B24__0r___GEOTileKey_b7b1_____GEOStandardTileKey_b40b6b26b26b14b4b4___GEOGloriaQuadIDTileKey_b6b64b14b4______b10b10b12____b10b22_I____GEORegionalResourceKey_b32b8b6b8b8b1b57___GEOSputnikMetadataKey_b32b24b14b8b42___GEOFlyoverKey_b6b26b26b8b24b14b8b8___GEOTransitLineSelectionKey_b6b25b25b64___GEOPolygonSelectionKey_b6b25b25b64___GEORoadSelectionKey_b6b25b25b64___GEOContourLinesKey_b6b26b26b4b8b50___GEOTileOverlayKey_b6b26b26b8b32b16b6___GEOIdentifiedResourceKey_QCCb1b39___GEOMuninMeshKey_b64b32b16b5b3___GEOVisualLocalizationTrackKey_SCb16b6b26b26b22___GEOVisualLocalizationMetadataKey_b6b9b25b6b26b26b22___GEOVisualLocalizationDataKey_QCb5b21b21b1___GEOS2TileKey_b6b26b26b3b14b4b4b37___GEOLiveTileKey_b6b26b26b14b4b4b4b36___8d16l;
  v6[4] = v2;
  v6[5] = v4;
  [v5 expireTilesWithPredicate:v6];
}

uint64_t anonymous namespace::tileKeyFromResourceKey(_anonymous_namespace_ *this, const gdc::ResourceKey *a2)
{
  gdc::ResourceKey::keyData(v4, this);
  v2 = v4[0];
  gdc::ResourceKey::getUInt64(v4[0], 0);
  gdc::ResourceKey::getUInt64(v2, 1u);
  gdc::ResourceKey::getUInt64(v2, 2u);
  gdc::ResourceKey::getUInt64(v2, 3u);
  if (v2 != v4[2])
  {
    free(v2);
  }

  return GEOMuninMeshTileKeyMake();
}

void md::mun::MeshResourceFetcher::cancelAllResources(md::mun::MeshResourceFetcher *this)
{
  v2 = [MEMORY[0x1E69A2610] modernLoader];
  [v2 cancelAllForClientSynchronous:*(this + 76)];
}

void md::mun::MeshResourceFetcher::cancelResource(md::mun::MeshResourceFetcher *this, const gdc::ResourceKey *a2)
{
  v5 = [MEMORY[0x1E69A2610] modernLoader];
  [v5 cancelKey:&v6 forClient:*(this + 76)];
}

void md::mun::MeshResourceFetcher::cancelResources(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E69A2610] modernLoader];
  for (i = *(a2 + 16); i; i = *i)
  {
    v6 = i[3];
    v12 = i[2];
    v13[0] = v16;
    v13[1] = v16;
    v14 = v16;
    v15 = 32;
    geo::small_vector_base<unsigned char>::append<unsigned char const*>(v13, v6, i[4]);
    v16[4] = i[11];
    v17 = *(i + 6);
    v10 = 0;
    v11 = 0;
    v11 = v8;
    v9 = *(a1 + 608);
    [v4 cancelKey:&v10 forClient:v9];

    if (v13[0] != v14)
    {
      free(v13[0]);
    }
  }
}

void md::mun::MeshResourceFetcher::fetchResources(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v21 = a4;
  v6 = *(a2 + 16);
  if (v6)
  {
    do
    {
      v7 = *(v6 + 24);
      v38 = *(v6 + 16);
      v39 = v43;
      v40 = v43;
      v41 = v43;
      v42 = 32;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(&v39, v7, *(v6 + 32));
      v44 = *(v6 + 88);
      v45 = *(v6 + 96);
      v8 = *(v6 + 112);
      *&v37 = 0;
      *(&v37 + 1) = 0;
      *(&v37 + 1) = v10;
      v11 = v45;
      if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
      }

      v12 = GEOGetVectorKitResourceLoadingLog_log;
      v13 = v12;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *buf = 134219264;
        v47 = *(&v37 + 1);
        v48 = 1024;
        v49 = *(&v37 + 9);
        v50 = 1024;
        v51 = *(&v37 + 13);
        v52 = 1024;
        v53 = *(&v37 + 15) & 0x1F;
        v54 = 1024;
        v55 = *(&v37 + 15) >> 5;
        v56 = 2048;
        v57 = *(&v45 + 1);
        _os_signpost_emit_with_name_impl(&dword_1B2754000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ResourceFetch", "pointId=%llu buildId=%d bucketId=%d cameraId=%d lod=%d parent_signpost=%llu", buf, 0x2Eu);
      }

      gdc::ResourceFetcher::willStartLoading(a1);
      v14 = a1[76];
      md::GEOResourceFetcher::willLoadGEOKey(a1, &v37, v14, &v38);
      [MEMORY[0x1E69A2610] modernLoader];
      v24 = v22 = v6;
      v23 = HIDWORD(v38);
      v15 = qos_class_self();
      v16 = v45;
      v17 = a1[79];
      v18 = *(a3 + 16);
      md::LabelExternalPointFeature::incident(v18);
      objc_claimAutoreleasedReturnValue();
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3321888768;
      v25[2] = ___ZN2md3mun19MeshResourceFetcher14fetchResourcesERKNSt3__113unordered_mapIN3gdc11ResourceKeyEyNS4_15ResourceKeyHashENS2_8equal_toIS5_EENS2_9allocatorINS2_4pairIKS5_yEEEEEEPN3geo9TaskQueueEPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke;
      v25[3] = &unk_1F2A04BF0;
      v28 = a1;
      v29 = v11;
      v19 = v14;
      v26 = v19;
      v30 = v8;
      v31 = v38;
      v32[0] = v35;
      v32[1] = v35;
      v33 = v35;
      v34 = 32;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(v32, v39, v40);
      v35[4] = v44;
      v36 = v45;
      v27 = v21;
      [v24 loadKey:&v37 priority:v23 forClient:v19 options:3 reason:1 qos:v15 signpostID:v16 auditToken:v17 callbackQ:v18 beginNetwork:0 callback:v25];

      if (v32[0] != v33)
      {
        free(v32[0]);
      }

      if (v39 != v41)
      {
        free(v39);
      }

      v6 = *v22;
    }

    while (*v22);
  }
}

void ___ZN2md3mun19MeshResourceFetcher14fetchResourcesERKNSt3__113unordered_mapIN3gdc11ResourceKeyEyNS4_15ResourceKeyHashENS2_8equal_toIS5_EENS2_9allocatorINS2_4pairIKS5_yEEEEEEPN3geo9TaskQueueEPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke(uint64_t a1, const _GEOTileKey *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v25[7] = *MEMORY[0x1E69E9840];
  v19 = a3;
  v10 = a5;
  v11 = a6;
  v12 = *(a1 + 48);
  if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
  }

  v13 = GEOGetVectorKitResourceLoadingLog_log;
  v14 = v13;
  v15 = *(a1 + 56);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v14, OS_SIGNPOST_INTERVAL_END, v15, "ResourceFetch", &unk_1B3514CAA, buf, 2u);
  }

  md::GEOResourceFetcher::didLoadGEOKey(v12, a2, *(a1 + 32));
  v24 = 0;
  if (v19)
  {
    v16 = [v19 decodedRepresentation];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v23 = v10;
      v18 = [v19 readDataWithError:&v23];
      v23;
    }

    v24 = v18;
  }

  v22 = 0;
  memset(buf, 0, sizeof(buf));
  v21 = 0;
  std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>(v25, &v24);
}

void sub_1B2E313BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a30 == 1 && a19 != a21)
  {
    free(a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_72c23_ZTSN3gdc11ResourceKeyE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 != *(a1 + 96))
  {
    free(v2);
  }
}

__n128 __copy_helper_block_ea8_72c23_ZTSN3gdc11ResourceKeyE(void *a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  a1[10] = a1 + 14;
  v4 = a1 + 10;
  a1[9] = v3;
  a1[11] = a1 + 14;
  a1[12] = a1 + 14;
  a1[13] = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>(a1 + 10, *(a2 + 80), *(a2 + 88));
  v4[8] = *(a2 + 144);
  result = *(a2 + 152);
  *(v4 + 9) = result;
  return result;
}

void *gdc::Error::Error(void *a1, uint64_t a2, char *__s, __int128 *a4)
{
  *a1 = a2;
  v6 = (a1 + 4);
  std::string::basic_string[abi:nn200100]<0>(a1 + 1, __s);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    v6->__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  return a1;
}

void sub_1B2E315E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<gdc::DataObject>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4EAC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::mun::MeshResourceFetcher::~MeshResourceFetcher(md::mun::MeshResourceFetcher *this)
{
  md::mun::MeshResourceFetcher::~MeshResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04B58;
  v2 = [MEMORY[0x1E69A2610] modernLoader];
  [v2 cancelAllForClient:*(this + 76)];

  v3 = [MEMORY[0x1E69A2610] modernLoader];
  [v3 closeForClient:*(this + 76)];

  *(this + 78) = &unk_1F2A2FB88;
  *(this + 75) = &unk_1F2A3D108;

  *this = off_1F2A2FAE8;
  std::__hash_table<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::__unordered_map_hasher<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,md::UniqueKeyHasher,std::equal_to<std::pair<_GEOTileKey,void *>>,true>,std::__unordered_map_equal<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::equal_to<std::pair<_GEOTileKey,void *>>,md::UniqueKeyHasher,true>,std::allocator<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>>>::~__hash_table(this + 560);
  std::mutex::~mutex((this + 496));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](this + 456);

  gdc::ResourceFetcher::~ResourceFetcher(this);
}

void sub_1B2E317C4(_Unwind_Exception *a1)
{
  v3 = v2;

  *(v1 + 624) = &unk_1F2A2FB88;
  *(v1 + 600) = &unk_1F2A3D108;

  *v1 = off_1F2A2FAE8;
  std::__hash_table<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::__unordered_map_hasher<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,md::UniqueKeyHasher,std::equal_to<std::pair<_GEOTileKey,void *>>,true>,std::__unordered_map_equal<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::equal_to<std::pair<_GEOTileKey,void *>>,md::UniqueKeyHasher,true>,std::allocator<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>>>::~__hash_table(v1 + 560);
  std::mutex::~mutex((v1 + 496));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v1 + 456);
  gdc::ResourceFetcher::~ResourceFetcher(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::__unordered_map_hasher<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,md::UniqueKeyHasher,std::equal_to<std::pair<_GEOTileKey,void *>>,true>,std::__unordered_map_equal<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::equal_to<std::pair<_GEOTileKey,void *>>,md::UniqueKeyHasher,true>,std::allocator<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[6];
      if (v4 != v2[8])
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

void std::__shared_ptr_emplace<md::TextureResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A04DA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MCDecoder<md::mun::MuninMCMeshResource>::decode(void *a3@<X2>, void *a4@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v6 = (*(**a3 + 32))(*a3);
    v7 = (*(**a3 + 24))();
    v8 = mc_scene_decode(v6, v7);
    if (v8)
    {
      v9 = v8;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      if (v8[5])
      {
        v10 = 0;
        do
        {
          v11 = &v9[4][3 * v10];
          v12 = v11[2];
          if (v12)
          {
            v13 = *(v12 + 8);
            if (v13)
            {
              LOBYTE(v36[7]) = 0;
              memset(v36, 0, 17);
              v32 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v13 length:*(v12 + 4) freeWhenDone:0];
              std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>(&v31, &v32);
            }
          }

          v14 = v33;
          v15 = v34;
          v16 = &v34[-v33] >> 4;
          v17 = *v11;
          if (v16 <= *v11)
          {
            v18 = v17 + 1;
            v19 = v18 - v16;
            if (v18 <= v16)
            {
              if (v18 < v16)
              {
                v22 = (v33 + 16 * v18);
                while (v15 != v22)
                {
                  v23 = *(v15 - 1);
                  if (v23)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
                  }

                  v15 -= 16;
                }

                v34 = v22;
              }
            }

            else
            {
              if (v19 > (v35 - v34) >> 4)
              {
                if (!(v18 >> 60))
                {
                  *&v36[2] = &v33;
                  v20 = v35 - v33;
                  if ((v35 - v33) >> 3 > v18)
                  {
                    v18 = v20 >> 3;
                  }

                  if (v20 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v21 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v21 = v18;
                  }

                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v21);
                }

                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              bzero(v34, 16 * v19);
              v34 += 16 * v19;
            }

            v17 = *v11;
            v14 = v33;
          }

          v24 = (v14 + 16 * v17);
          v25 = v24[1];
          *v24 = 0;
          v24[1] = 0;
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v25);
          }

          ++v10;
        }

        while (v10 < v9[5]);
      }

      v26 = (*(**a3 + 32))();
      v27 = (*(**a3 + 24))();
      no_copy = mc_container_create_read_no_copy("MCP4", v26, v27);
      if (no_copy)
      {
        v29 = no_copy;
        for (i = 0; ; ++i)
        {
          if (i >= *(v29 + 16))
          {
            goto LABEL_41;
          }

          if (mc_container_get_chapter_info(v29, i, &v31) && v31 == 5 && mc_container_decode_la_data_chapter(v29, i, v36))
          {
            break;
          }
        }

        memcpy(__dst, v36 + 1, sizeof(__dst));
LABEL_41:
        mc_container_free(v29);
      }

      operator new();
    }
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_1B2E31E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, char a16)
{
  shared_weak_owners = v16[1].__shared_weak_owners_;
  if (shared_weak_owners != v16[2].__shared_owners_)
  {
    free(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v19);
  a13 = &a16;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a13);
  _Unwind_Resume(a1);
}

void md::mun::MuninMCMeshResource::~MuninMCMeshResource(void **this)
{
  md::mun::MuninMCMeshResource::~MuninMCMeshResource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04D80;
  mc_scene_free(this[19]);
  v3 = this + 115;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = this[2];
  if (v2 != this[4])
  {
    free(v2);
  }
}

void std::__shared_ptr_emplace<md::mun::MuninMCMeshResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A04D48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MCDecoder<md::mun::MuninMCMeshResource>::~MCDecoder(uint64_t a1)
{
  *a1 = &unk_1F2A04D20;
  *(a1 + 8) = &unk_1F2A34758;
  *(a1 + 16) = &unk_1F2A59028;

  JUMPOUT(0x1B8C62190);
}

uint64_t md::MCDecoder<md::mun::MuninMCMeshResource>::~MCDecoder(uint64_t a1)
{
  *a1 = &unk_1F2A04D20;
  *(a1 + 8) = &unk_1F2A34758;
  *(a1 + 16) = &unk_1F2A59028;

  return a1;
}

void std::__shared_ptr_emplace<md::MCDecoder<md::mun::MuninMCMeshResource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A04CE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

_BYTE *md::C3mResourceDecoder<md::mun::MuninMeshResource>::decode@<X0>(uint64_t a1@<X0>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  result = *a3;
  if (*a3 && (a3[112] & 1) != 0)
  {
    v8 = (*(*result + 32))(result);
    v9 = (*(**a3 + 24))();
    geo::c3m::loadFromChunk(v25, a1 + 72, v8, v9, v10, v11, v12);
    if (v25[0])
    {
      memset(v24, 0, sizeof(v24));
      std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(v24, 0x4EC4EC4EC4EC4EC5 * ((v27 - v26) >> 3));
      v13 = v26;
      for (i = v27; v13 != i; v13 += 104)
      {
        v15 = *v13;
        if ((v15 - 4) < 2 || v15 == 2)
        {
          v17 = *(v13 + 1);
          if (*(v13 + 2) - v17 == 32)
          {
            v23 = 0;
            v21 = 0uLL;
            v22 = 0;
            v20 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:**v17 length:(*v17)[1] - **v17 freeWhenDone:0];
            std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>(&v19, &v20);
          }
        }

        else if (!*v13)
        {
          v18 = *(v13 + 1);
          if (*(v13 + 2) - v18 == 32)
          {
            v23 = 0;
            v21 = 0uLL;
            v22 = 0;
            v20 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:**v18 length:(*v18)[1] - **v18 freeWhenDone:0];
            std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>(&v19, &v20);
          }
        }

        v21 = 0uLL;
        std::vector<std::shared_ptr<gdc::Resource>>::push_back[abi:nn200100](v24, &v21);
        if (*(&v21 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v21 + 1));
        }
      }

      operator new();
    }

    *a4 = 0;
    a4[1] = 0;
    return geo::optional<geo::c3m::Model>::~optional(v25);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

void sub_1B2E32544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  geo::small_vector_base<geo::c3m::Mesh>::~small_vector_base(&v30[11].__shared_weak_owners_);
  shared_weak_owners = v30[1].__shared_weak_owners_;
  if (shared_weak_owners != v30[2].__shared_owners_)
  {
    free(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v30);
  operator delete(v33);
  a13 = &a28;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a13);
  geo::optional<geo::c3m::Model>::~optional(va);
  _Unwind_Resume(a1);
}

_BYTE *geo::optional<geo::c3m::Model>::~optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::~small_vector_base(a1 + 41);
    geo::small_vector_base<geo::c3m::Mesh>::~small_vector_base(a1 + 14);
    *a1 = 0;
  }

  return a1;
}

char **geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::~small_vector_base(char **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      geo::small_vector_base<geo::c3m::TextureData>::~small_vector_base((v2 + 8));
      v2 += 104;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2 != a1[2])
  {
    free(v2);
  }

  return a1;
}

uint64_t *geo::small_vector_base<geo::c3m::Mesh>::~small_vector_base(uint64_t *a1)
{
  geo::small_vector_base<geo::c3m::Mesh>::runDestructors(*a1, a1[1]);
  if (*a1 != a1[2])
  {
    free(*a1);
  }

  return a1;
}

void geo::small_vector_base<geo::c3m::Mesh>::runDestructors(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      v4 = *(v3 + 152);
      if (v4)
      {
        *(v3 + 160) = v4;
        operator delete(v4);
      }

      v5 = *(v3 + 128);
      if (v5)
      {
        *(v3 + 136) = v5;
        operator delete(v5);
      }

      v6 = *(v3 + 104);
      if (v6)
      {
        *(v3 + 112) = v6;
        operator delete(v6);
      }

      v7 = *(v3 + 80);
      if (v7)
      {
        *(v3 + 88) = v7;
        operator delete(v7);
      }

      if (*v3 != *(v3 + 16))
      {
        free(*v3);
      }

      v3 += 184;
    }

    while (v3 != a2);
  }
}

uint64_t geo::small_vector_base<geo::c3m::TextureData>::~small_vector_base(uint64_t a1)
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

      v2 += 4;
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

void geo::small_vector_base<geo::c3m::Mesh>::append<geo::c3m::Mesh const*>(void **a1, uint64_t **a2, char *a3)
{
  v4 = a2;
  v5 = a1;
  v38 = a3 - a2;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 - *a1;
  v10 = 0xD37A6F4DE9BD37A7 * (v9 >> 3);
  if (0xD37A6F4DE9BD37A7 * ((a3 - a2) >> 3) > &v6[-v10])
  {
    v11 = v10 - 0x2C8590B21642C859 * ((a3 - a2) >> 3);
    v12 = a1[2];
    v13 = (1 << -__clz((v6 + 1)));
    if (v6 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    if (v14 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    v16 = malloc_type_malloc(184 * v15, 0x1030040E47C81F6uLL);
    v17 = *v5;
    v18 = v5[1];
    if (*v5 != v18)
    {
      v19 = v16;
      do
      {
        v20 = v19 + 4;
        *v19 = (v19 + 4);
        v19[1] = (v19 + 4);
        v19[2] = (v19 + 4);
        v21 = *(v17 + 2);
        v19[3] = *(v17 + 3);
        v22 = *v17;
        if (*v17 == v21)
        {
          v19[1] = (v20 + *(v17 + 1) - v22);
          v24 = *(v17 + 1);
          while (v22 != v24)
          {
            v25 = *v22;
            v20[2] = *(v22 + 2);
            *v20 = v25;
            v20 += 3;
            v22 = (v22 + 24);
          }
        }

        else
        {
          v23 = *(v17 + 1);
          *v19 = v22;
          v19[1] = v23;
          *v17 = 0uLL;
          *(v17 + 1) = 0uLL;
        }

        v19[10] = 0;
        v19[11] = 0;
        v19[12] = 0;
        *(v19 + 5) = *(v17 + 5);
        v19[12] = *(v17 + 12);
        *(v17 + 10) = 0;
        *(v17 + 11) = 0;
        *(v17 + 12) = 0;
        v19[13] = 0;
        v19[14] = 0;
        v19[15] = 0;
        *(v19 + 13) = *(v17 + 104);
        v19[15] = *(v17 + 15);
        *(v17 + 13) = 0;
        *(v17 + 14) = 0;
        *(v17 + 15) = 0;
        v19[16] = 0;
        v19[17] = 0;
        v19[18] = 0;
        *(v19 + 8) = *(v17 + 8);
        v19[18] = *(v17 + 18);
        *(v17 + 16) = 0;
        *(v17 + 17) = 0;
        *(v17 + 18) = 0;
        v19[19] = 0;
        v19[20] = 0;
        v19[21] = 0;
        *(v19 + 19) = *(v17 + 152);
        v19[21] = *(v17 + 21);
        *(v17 + 19) = 0;
        *(v17 + 20) = 0;
        *(v17 + 21) = 0;
        v19[22] = *(v17 + 22);
        v19 += 23;
        v17 += 184;
      }

      while (v17 != v18);
      v17 = *v5;
      v18 = v5[1];
    }

    geo::small_vector_base<geo::c3m::Mesh>::runDestructors(v17, v18);
    if (v8 != v12)
    {
      free(*v5);
    }

    v7 = (v16 + v9);
    *v5 = v16;
    v5[1] = v16 + v9;
    v5[3] = v15;
  }

  if (v4 != a3)
  {
    v37 = v5;
    do
    {
      v26 = v7 + 4;
      *v7 = v7 + 4;
      v7[1] = v7 + 4;
      v7[2] = v7 + 4;
      v7[3] = 2;
      v28 = *v4;
      v27 = v4[1];
      v29 = v27 - *v4;
      v30 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
      if (v30 >= 3)
      {
        if (v30 <= 4)
        {
          v31 = 4;
        }

        else
        {
          v31 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
        }

        v26 = malloc_type_malloc(24 * v31, 0x1000040504FFAC1uLL);
        v32 = *v7;
        v33 = v7[1];
        if (*v7 != v33)
        {
          v34 = v26;
          do
          {
            v35 = *v32;
            v34[2] = *(v32 + 2);
            *v34 = v35;
            v34 += 3;
            v32 = (v32 + 24);
          }

          while (v32 != v33);
        }

        *v7 = v26;
        v7[1] = v26;
        v7[3] = v31;
      }

      if (v28 != v27)
      {
        do
        {
          v36 = *v28;
          v26[2] = *(v28 + 16);
          *v26 = v36;
          v26 += 3;
          v28 += 24;
        }

        while (v28 != v27);
        v26 = v7[1];
      }

      v7[1] = v26 + v29;
      std::vector<gm::Matrix<float,3,1>>::vector[abi:nn200100](v7 + 10, v4 + 10);
      std::vector<gm::Matrix<float,2,1>>::vector[abi:nn200100](v7 + 13, v4 + 13);
      std::vector<md::CommandBufferLocation>::vector[abi:nn200100](v7 + 16, v4 + 16);
      std::vector<md::CommandBufferLocation>::vector[abi:nn200100](v7 + 19, v4 + 19);
      v7[22] = v4[22];
      v4 += 23;
      v7 += 23;
    }

    while (v4 != a3);
    v5 = v37;
    v7 = v37[1];
  }

  v5[1] = v7 + v38;
}

void sub_1B2E32B1C(_Unwind_Exception *exception_object)
{
  if (*v1 != *(v1 + 16))
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::append<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>> const*>(char **a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = a3 - a2;
  v7 = 0x4EC4EC4EC4EC4EC5 * ((a3 - a2) >> 3);
  v8 = a1[1];
  v9 = 0x4EC4EC4EC4EC4EC5 * ((v8 - *a1) >> 3);
  if (v7 > &a1[3][-v9])
  {
    geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::grow(a1, v9 + v7);
    v8 = v5[1];
  }

  if (v4 != v3)
  {
    v26 = v6;
    v27 = v5;
    v28 = v3;
    do
    {
      *v8 = *v4;
      v10 = v8 + 40;
      *(v8 + 1) = v8 + 40;
      *(v8 + 2) = v8 + 40;
      *(v8 + 3) = v8 + 40;
      *(v8 + 4) = 2;
      v12 = *(v4 + 8);
      v11 = *(v4 + 16);
      v13 = v11 - v12;
      v14 = (v11 - v12) >> 5;
      if (v14 >= 3)
      {
        if (v14 <= 4)
        {
          v15 = 4;
        }

        else
        {
          v15 = (v11 - v12) >> 5;
        }

        v16 = malloc_type_malloc(32 * v15, 0x10200402C28E7A6uLL);
        v10 = v16;
        v17 = *(v8 + 1);
        v18 = *(v8 + 2);
        if (v17 != v18)
        {
          v19 = v16;
          do
          {
            *v19 = *v17;
            *v17 = 0;
            *(v17 + 8) = 0;
            v20 = *(v17 + 16);
            v19[24] = *(v17 + 24);
            *(v19 + 2) = v20;
            v19 += 32;
            v17 += 32;
          }

          while (v17 != v18);
          v22 = *(v8 + 1);
          v21 = *(v8 + 2);
          while (v22 != v21)
          {
            v23 = *(v22 + 8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }

            v22 += 32;
          }
        }

        *(v8 + 1) = v10;
        *(v8 + 2) = v10;
        *(v8 + 4) = v15;
        v3 = v28;
      }

      if (v12 != v11)
      {
        do
        {
          v24 = *(v12 + 8);
          *v10 = *v12;
          v10[1] = v24;
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          v25 = *(v12 + 16);
          *(v10 + 24) = *(v12 + 24);
          v10[2] = v25;
          v12 += 32;
          v10 += 4;
        }

        while (v12 != v11);
        v10 = *(v8 + 2);
      }

      *(v8 + 2) = v10 + v13;
      v4 += 104;
      v8 += 104;
    }

    while (v4 != v3);
    v6 = v26;
    v5 = v27;
    v8 = v27[1];
  }

  v5[1] = &v8[v6];
}

void geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::grow(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = (1 << -__clz((v5 + 1)));
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

  v10 = malloc_type_malloc(104 * v9, 0x10200409A70330CuLL);
  v11 = v10;
  v12 = *a1;
  v13 = a1[1];
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      *v14 = *v12;
      v15 = v14 + 40;
      *(v14 + 1) = v14 + 40;
      v16 = *(v12 + 1);
      *(v14 + 2) = v14 + 40;
      *(v14 + 3) = v14 + 40;
      v17 = *(v12 + 3);
      *(v14 + 4) = *(v12 + 4);
      if (v16 == v17)
      {
        *(v14 + 2) = &v15[*(v12 + 2) - v16];
        v19 = *(v12 + 2);
        while (v16 != v19)
        {
          *v15 = *v16;
          *v16 = 0;
          *(v16 + 8) = 0;
          v20 = *(v16 + 16);
          v15[24] = *(v16 + 24);
          *(v15 + 2) = v20;
          v15 += 32;
          v16 += 32;
        }
      }

      else
      {
        v18 = *(v12 + 2);
        *(v14 + 1) = v16;
        *(v14 + 2) = v18;
        *(v12 + 8) = 0uLL;
        *(v12 + 24) = 0uLL;
      }

      v14 += 104;
      v12 += 104;
    }

    while (v12 != v13);
    v21 = *a1;
    v22 = a1[1];
    while (v21 != v22)
    {
      geo::small_vector_base<geo::c3m::TextureData>::~small_vector_base((v21 + 8));
      v21 += 104;
    }
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  a1[1] = &v11[v4 - v3];
  a1[3] = v9;
}

void md::mun::MuninMeshResource::~MuninMeshResource(char **this)
{
  md::mun::MuninMeshResource::~MuninMeshResource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04CC8;
  geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::~small_vector_base(this + 59);
  geo::small_vector_base<geo::c3m::Mesh>::~small_vector_base(this + 32);
  v2 = this[2];
  if (v2 != this[4])
  {
    free(v2);
  }
}

void std::__shared_ptr_emplace<md::mun::MuninMeshResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A04C90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::C3mResourceDecoder<md::mun::MuninMeshResource>::~C3mResourceDecoder(uint64_t a1)
{
  md::C3mResourceDecoder<md::mun::MuninMeshResource>::~C3mResourceDecoder(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::C3mResourceDecoder<md::mun::MuninMeshResource>::~C3mResourceDecoder(uint64_t a1)
{
  *a1 = &unk_1F2A04C68;
  std::mutex::~mutex((a1 + 112));
  std::__hash_table<std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,std::__unordered_map_hasher<huffman_params_t,std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,geo::c3m::HuffmanParamsHash,geo::c3m::HuffmanParamsEquals,true>,std::__unordered_map_equal<huffman_params_t,std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,geo::c3m::HuffmanParamsEquals,geo::c3m::HuffmanParamsHash,true>,std::allocator<std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>>>::~__hash_table(a1 + 72);
  *(a1 + 40) = &unk_1F2A34780;
  *(a1 + 48) = &unk_1F2A59028;

  *(a1 + 8) = &unk_1F2A34758;
  *(a1 + 16) = &unk_1F2A59028;

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,std::__unordered_map_hasher<huffman_params_t,std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,geo::c3m::HuffmanParamsHash,geo::c3m::HuffmanParamsEquals,true>,std::__unordered_map_equal<huffman_params_t,std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,geo::c3m::HuffmanParamsEquals,geo::c3m::HuffmanParamsHash,true>,std::allocator<std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      geo::c3m::EdgebreakerDecodeTable::~EdgebreakerDecodeTable(v2 + 4);
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

void std::__shared_ptr_emplace<md::C3mResourceDecoder<md::mun::MuninMeshResource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A04C30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LegacyTrafficRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(a1 + 49) - *(a1 + 48) + 1), (a1 + 368), 0);
  *(a1 + 364) = result - *(a1 + 48);
  return result;
}

void md::LegacyTrafficRenderLayer::layout(md::LegacyTrafficRenderLayer *this, const md::LayoutContext *a2)
{
  v2 = this;
  v161 = *MEMORY[0x1E69E9840];
  v3 = *(this + 44);
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v4 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 384));
  if (v4)
  {
    v5 = *(*(v4 + 16) + 8 * *(v2 + 385));
  }

  else
  {
    v5 = 0;
  }

  ggl::CommandBuffer::clearRenderItems(v5);
  v123 = v5;
  *(v5 + 32) = 0;
  v120 = *(v2 + 91);
  v148[0] = &unk_1F2A2F200;
  v149 = v148;
  v6 = *(a2 + 1);
  v7 = gdc::Context::get<md::GeometryContext>(v6);
  v115 = md::LayoutContext::get<md::SceneContext>(v6);
  v125 = v2;
  v119 = v7;
  if (v7)
  {
    if (md::SceneStateManager::isFinishedLoadingRequiredLayers(*v115))
    {
      v8 = *(v2 + 48);
      v9 = *(v2 + 49);
      *(v2 + 360) = v8 != v9;
      if (v8 == v9)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *(v2 + 360) = 1;
    }

    v10 = *(v2 + 44);
    v11 = v2;
    v13 = v10[14];
    v12 = v10[15];
    v14 = *(v11 + 34);
    v15 = *(v11 + 35);
    if (v14 == v15)
    {
      v124 = v10;
    }

    else
    {
      do
      {
        v16 = *v14;
        if (!v149 || std::function<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::operator()(v149, *v14))
        {
          v17 = *(v16 + 392);
          FillRect = grl::IconMetricsRenderResult::getFillRect(v17);
          v19 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v115 + 1, FillRect);
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
      v124 = *(v125 + 44);
    }

    v21 = gdc::ToCoordinateSystem(v119[320]);
    v22 = 128;
    if (v21)
    {
      v22 = 144;
    }

    v23 = *&v119[v22 + 8];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v122 = v23;
    if (v13 > (v124[8] - v124[7]) >> 3)
    {
      __asm { FMOV            V0.4S, #1.0 }

      operator new();
    }

    if (v12 > (v124[11] - v124[10]) >> 3)
    {
      operator new();
    }

    v29 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v30 = md::LayoutContext::cameraType(a2);
    v31 = *(v29 + 888);
    v138 = *(v29 + 872);
    v139 = v31;
    v32 = *(v29 + 920);
    v140 = *(v29 + 904);
    v141 = v32;
    v33 = *(v29 + 824);
    v134 = *(v29 + 808);
    v135 = v33;
    v34 = *(v29 + 856);
    v136 = *(v29 + 840);
    v137 = v34;
    v35 = *(v125 + 34);
    v114 = *(v125 + 35);
    if (v35 != v114)
    {
      v36 = v30;
      do
      {
        v116 = v35;
        v37 = *v35;
        if (!v149 || (std::function<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::operator()(v149, *v35) & 1) != 0)
        {
          v38 = *(v37 + 392);
          v39 = grl::IconMetricsRenderResult::getFillRect(v38);
          v40 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v115 + 1, v39);
          if (v40)
          {
            v41 = *(v40 + 16);
            v121 = *(v40 + 17);
            if (v121 != v41)
            {
              v118 = v37;
              do
              {
                v42 = *(v125 + 44);
                if (*(*(v37 + 392) + 168) != 255)
                {
                  v43 = v42[15];
                  v44 = v124[10];
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v132, *(*(**(v44 + 8 * v43) + 136) + 32));
                  v45 = (*(**(v37 + 392) + 32))(*(v37 + 392));
                  v46 = 0;
                  v47 = v133 + 32;
                  do
                  {
                    *(v47 + v46) = *(v45 + v46);
                    v46 += 4;
                  }

                  while (v46 != 12);
                  v48 = (*(**(v37 + 392) + 32))(*(v37 + 392));
                  v49 = 0;
                  v50 = v133 + 48;
                  do
                  {
                    *(v50 + v49) = *(v48 + 12 + v49);
                    v49 += 4;
                  }

                  while (v49 != 12);
                  *(*(v44 + 8 * v43) + 32) = **(v125 + 44);
                  *(*(v44 + 8 * v43) + 40) = **(v44 + 8 * v43);
                  v51 = *(v44 + 8 * v43);
                  *(v51 + 56) = 0;
                  *(v51 + 48) = v120 + *(v38 + 169);
                  memset(&v126[8], 0, 32);
                  v127 = 0u;
                  v128 = 0u;
                  memset(&v129[8], 0, 32);
                  *v126 = 0x3FF0000000000000;
                  *&v126[40] = 0x3FF0000000000000;
                  *v129 = 0x3FF0000000000000;
                  *&v129[40] = 0x3FF0000000000000;
                  md::GeometryContext::transformConstantData(&v150, v119, (v38 + 168), v36, -1, 0.0, 0.0);
                }

                v52 = v42[14];
                v53 = v124[7];
                *(*(v53 + 8 * v52) + 32) = *v42;
                *(*(v53 + 8 * v52) + 40) = **(v53 + 8 * v52);
                v54 = *(v53 + 8 * v52);
                *(v54 + 56) = 0;
                v55 = *(v38 + 169);
                *(v54 + 48) = v120 + v55;
                if (gdc::ToCoordinateSystem(v36))
                {
                  v56 = *(v38 + 176);
                  v57 = 1.0 / (1 << v55);
                  v58 = (1 << v55) + ~*(v38 + 172);
                  *&v144 = v57 * v56;
                  *(&v144 + 1) = v57 * v58;
                  *&v145 = v57 + v56 * v57;
                  *(&v145 + 1) = v57 + v58 * v57;
                  gdc::GlobeTileUtils::boundsFromMercatorRect(&v150, &v144, 0.0, 0.0);
                  geo::OrientedBox<double,3u,double,double>::toMatrix(v126, &v150);
                  md::GeometryContext::transformConstantData(&v144, v119, (v38 + 168), v36, -1, 0.0, 0.0);
                }

                v59 = 1 << *(v41 + 1);
                v60 = 1.0 / v59;
                v61 = v60 * *(v41 + 8);
                v62 = v60 * (v59 + ~*(v41 + 4));
                memset(&v126[8], 0, 32);
                v127 = 0u;
                v128 = 0u;
                *v126 = v60;
                *&v126[40] = v60;
                *v129 = *&v60;
                *&v129[16] = v61;
                *&v129[24] = v62;
                *&v129[32] = xmmword_1B33B0740;
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*v54 + 136), *(*v54 + 232), v42[1], v42[2]);
                v23 = v122;
                v63 = 0;
                v64 = &v134;
                v37 = v118;
                do
                {
                  v65 = 0;
                  v66 = v126;
                  do
                  {
                    v67 = 0;
                    v68 = 0.0;
                    v69 = v64;
                    do
                    {
                      v70 = *v69;
                      v69 += 4;
                      v68 = v68 + *&v66[v67] * v70;
                      v67 += 8;
                    }

                    while (v67 != 32);
                    *(&v150 + 4 * v65++ + v63) = v68;
                    v66 += 32;
                  }

                  while (v65 != 4);
                  ++v63;
                  v64 = (v64 + 8);
                }

                while (v63 != 4);
                v71 = 0;
                v72 = &v150;
                do
                {
                  v74 = *v72;
                  v73 = *(v72 + 2);
                  v72 += 4;
                  *(&v144 + v71) = vcvt_hight_f32_f64(vcvt_f32_f64(v74), v73);
                  v71 += 16;
                }

                while (v71 != 64);
                v75 = ggl::DataAccess<ggl::Tile::View>::DataAccess(&v150, **(**(v53 + 8 * v52) + 136), 1);
                v76 = v153;
                *v153 = v144;
                v76[1] = v145;
                v76[2] = v146;
                v76[3] = v147;
                ggl::BufferMemory::~BufferMemory(v75);
                ggl::CommandBuffer::pushRenderItem(v123, (*(v53 + 8 * v52) + 8));
                ++*(*(v125 + 44) + 112);
                v41 += 32;
              }

              while (v41 != v121);
            }
          }
        }

        v35 = v116 + 1;
      }

      while (v116 + 1 != v114);
    }

    v2 = v125;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }

LABEL_53:
  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::~__value_func[abi:nn200100](v148);
  *(v123 + 4) = *(v2 + 46);
  v77 = *(*(a2 + 3) + 1) < *(*(a2 + 3) + 2);
  v78 = *(v2 + 360);
  md::RibbonLayoutContext::RibbonLayoutContext(v126, a2);
  *&v129[32] = 0uLL;
  memset_pattern16(&v130, &unk_1B33B2570, 0x10uLL);
  v131[21] = 0;
  *v131 = 0;
  *&v131[8] = 0;
  *&v131[15] = 0;
  BYTE8(v127) = v77 | *(v125 + 360);
  v131[16] = **(a2 + 93);
  v131[17] = 1;
  v131[18] = v77 & ~v78 & 1;
  v79 = *(v125 + 34);
  for (i = *(v125 + 35); v79 != i; v79 += 8)
  {
    v81 = *(*v79 + 392);
    if (v81)
    {
      v82 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
      v83 = 0;
      v84 = 1 << *(v81 + 169);
      v85 = (v84 + ~*(v81 + 172));
      v86 = 1.0 / v84;
      v87 = v86 * *(v81 + 176);
      v157 = 0;
      v155 = 0;
      v154 = 0u;
      v153 = 0u;
      v152 = 0u;
      v151 = 0u;
      v150 = v86;
      *&v153 = v86;
      v156 = v86;
      v88 = v82 + 101;
      v158 = v87;
      v159 = v86 * v85;
      v160 = xmmword_1B33B0740;
      do
      {
        v89 = 0;
        v90 = &v150;
        do
        {
          v91 = 0;
          v92 = 0.0;
          v93 = v88;
          do
          {
            v94 = *v93;
            v93 += 4;
            v92 = v92 + v90[v91++] * v94;
          }

          while (v91 != 4);
          *(&v134 + 4 * v89++ + v83) = v92;
          v90 += 4;
        }

        while (v89 != 4);
        ++v83;
        ++v88;
      }

      while (v83 != 4);
      v95 = 0;
      v96 = &v134;
      do
      {
        v98 = *v96;
        v97 = v96[1];
        v96 += 2;
        *(&v144 + v95) = vcvt_hight_f32_f64(vcvt_f32_f64(v98), v97);
        v95 += 16;
      }

      while (v95 != 64);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v134, *(v81 + 728), 1);
      v99 = *(&v136 + 1);
      **(&v136 + 1) = v144;
      *(v99 + 16) = v145;
      *(v99 + 32) = v146;
      *(v99 + 48) = v147;
      v100 = v82[471] * v82[173] / (v82[171] * v86);
      *(v99 + 64) = v100;
      ggl::BufferMemory::~BufferMemory(&v134);
      v101 = gdc::Context::get<md::StyleLogicContext>(*(a2 + 1));
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v144, *v101, (v81 + 760));
      v102 = +[VKDebugSettings sharedSettings];
      v103 = [v102 loadGreenTraffic];

      v104 = v144;
      if (*(&v144 + 1))
      {
        atomic_fetch_add_explicit((*(&v144 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      md::TrafficMeshStyle::TrafficMeshStyle(v132, v104, *(&v104 + 1), v103);
      if (*(&v104 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v104 + 1));
      }

      v138 = v128;
      v139 = *v129;
      v140 = *&v129[16];
      v134 = *v126;
      v135 = *&v126[16];
      v136 = *&v126[32];
      v137 = v127;
      v105 = *&v129[40];
      if (*&v129[40])
      {
        atomic_fetch_add_explicit((*&v129[40] + 8), 1uLL, memory_order_relaxed);
      }

      v142 = v130;
      *v143 = *v131;
      *&v143[14] = *&v131[14];
      v106 = v144;
      if (*(&v144 + 1))
      {
        atomic_fetch_add_explicit((*(&v144 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v141 = v106;
      if (v105)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v105);
      }

      v142 = v132[0];
      if (BYTE8(v127) == 1)
      {
        if (v131[18] == 1)
        {
          v107 = *(*(a2 + 3) + 1);
        }

        else
        {
          v107 = *(v81 + 169) + *(v125 + 364);
        }
      }

      else
      {
        v107 = 0;
      }

      BYTE9(v137) = v107;
      v108 = *(v81 + 744);
      if (v108)
      {
        v109 = *(v108 + 160);
        v110 = *(v125 + 47);
        if (!v109 || v109 != v110)
        {
          md::PilledTrafficLayer::setSharedResources(*(v81 + 744), v110);
        }

        md::PilledTrafficLayer::layout(v108, &v134);
        v150 = COERCE_DOUBLE(&unk_1F2A04EC8);
        *&v151 = v123;
        *&v152 = &v150;
        md::Ribbons::RibbonLayer<md::Ribbons::PilledTrafficRibbonDescriptor>::collectRenderItemsForPasses(*(v108 + 8), *(v108 + 16), &v150);
        std::__function::__value_func<void ()(md::Ribbons::PilledTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v150);
      }

      v111 = *(v81 + 752);
      if (v111)
      {
        v112 = *(v111 + 168);
        v113 = *(v125 + 47);
        if (!v112 || v112 != v113)
        {
          md::SolidTrafficLayer::setSharedResources(*(v81 + 752), v113);
        }

        md::SolidTrafficLayer::layout(v111, &v134);
        v150 = COERCE_DOUBLE(&unk_1F2A04F10);
        *&v151 = v123;
        *&v152 = &v150;
        md::Ribbons::RibbonLayer<md::Ribbons::SolidTrafficRibbonDescriptor>::collectRenderItemsForPasses(*(v111 + 8), *(v111 + 16), &v150);
        std::__function::__value_func<void ()(md::Ribbons::SolidTrafficRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v150);
      }

      if (*(&v106 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v106 + 1));
      }

      if (*(&v144 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v144 + 1));
      }
    }
  }

  ggl::CommandBuffer::sortRenderItems(*(v123 + 9), *(v123 + 10));
  if (*&v129[40])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v129[40]);
  }
}

void sub_1B2E34258(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::~__value_func[abi:nn200100](&STACK[0x278]);
  _Unwind_Resume(a1);
}

void md::RouteLineLayerDataSource::createLayerData(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>, unsigned __int16 **a4@<X2>)
{
  v50[3] = *MEMORY[0x1E69E9840];
  gdc::Tiled::tileFromLayerDataKey(&v44, *(a1 + 16));
  v8 = 1.0 / (1 << v45);
  v41 = v8 * v47;
  v42 = v8 * ((1 << v45) + ~v46);
  v43[0] = v41 + v8;
  v43[1] = v42 + v8;
  v40[0] = 0;
  v40[1] = 0;
  v39[2] = v40;
  md::RouteOverlayContainer::overlays(&v48, *(a3 + 600));
  v34 = a4;
  v35 = a1;
  v33 = a2;
  md::RouteOverlayContainer::persistentOverlays(v50, *(a3 + 600));
  v9 = 0;
  while (1)
  {
    v36 = v9;
    v10 = &v48 + v9 + 8;
    v11 = *(&v48 + v9);
    if (v11 != v10)
    {
      do
      {
        v12 = *(v11 + 4);
        v13 = [v12 boundingMapRegion];
        v37 = md::rectFromGEOMapRegion<double>(v13);
        v38 = v14;
        v39[0] = v15;
        v39[1] = v16;

        v17 = 0;
        v18 = &v41;
        v19 = &v37;
        v20 = 1;
        while (v43[v17] > *v19 && *v18 < *&v39[v17])
        {
          v21 = v20;
          v20 = 0;
          v19 = &v38;
          v18 = &v42;
          v17 = 1;
          if ((v21 & 1) == 0)
          {
            for (i = v40[0]; i; i = *v23)
            {
              while (1)
              {
                v23 = i;
                v24 = i[4];
                if (v12 < v24)
                {
                  break;
                }

                if (v24 >= v12)
                {
                  goto LABEL_15;
                }

                i = v23[1];
                if (!i)
                {
                  goto LABEL_14;
                }
              }
            }

LABEL_14:
            operator new();
          }
        }

LABEL_15:

        v25 = *(v11 + 1);
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = *(v11 + 2);
            v27 = *v26 == v11;
            v11 = v26;
          }

          while (!v27);
        }

        v11 = v26;
      }

      while (v26 != v10);
    }

    v9 = v36 + 24;
    if (v36 == 24)
    {
      for (j = 4; j != -2; j -= 3)
      {
        std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy((&v48)[j]);
      }

      if (gdc::ResourceKey::getInt32(*(v35 + 16), 4u) == 10)
      {
        v29 = *v34;
        v30 = v34[1];
        v31 = 10;
      }

      else
      {
        v29 = *v34;
        v30 = v34[1];
        v31 = 9;
      }

      gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v48, v31, v29, v30);
      if (v48)
      {
        v32 = v48[19];
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v32);
        }
      }

      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v49);
      }

      operator new();
    }
  }
}

void sub_1B2E3489C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  v23 = *(v21 - 144);
  if (v23)
  {
    operator delete(v23);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(a19, v25);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::RouteLineData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A05028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RouteLineLayerDataSource::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  gdc::LayerDataSource::createDebugNode(a1, a2);
  v8 = 15;
  strcpy(&v7, "IsTransitActive");
  gdc::DebugTreeValue::DebugTreeValue(v4, *(a1 + 608));
  gdc::DebugTreeNode::addProperty(a2, &v7, v4);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void md::RouteLineLayerDataSource::constructRequests(uint64_t a1, char **a2, char **a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v3 = a2 == a3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v5 = a2;
    do
    {
      v7 = *(*v5 + 2);
      Int32 = gdc::ResourceKey::getInt32(v7, 4u);
      *&v9 = gdc::Tiled::tileFromLayerDataKey(v24, v7);
      v10 = (*(**(a1 + 24) + 32))(*(a1 + 24), Int32, v9);
      v11 = v10;
      if ((v10 & 0x100000000) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      v12 = *(a1 + 24);
      v25 = (*(*v12 + 24))(v12, Int32);
      LOBYTE(v26) = v13;
      md::TileAdjustmentHelpers::adjustTileForSizeAndRange(v17, 0x200u, v11, &v25, v24);
      if (v20 == 1)
      {
        (*(*v12 + 16))(v21, v12, Int32, v17);
        if (v23)
        {
          v14 = **v5;
          v15 = *(*v5 + 14);
          if ((*(*v5 + 12) & 0x100000000) != 0)
          {
            v16 = *(*v5 + 12);
          }

          else
          {
            v16 = 2147483646;
          }

          v25 = vrev64_s32(v22);
          v26 = v21[1];
          v27 = v21[0];
          gdc::ResourceKey::ResourceKey(v17, v14, Int32, &v25, 4, v15, v16);
          gdc::LayerDataRequest::request(*v5, v17, 0);
          if (v18 != v19)
          {
            free(v18);
          }
        }
      }

      else
      {
        v21[0] = 0;
        v23 = 0;
      }

      v5 += 2;
    }

    while (v5 != a3);
  }
}

uint64_t md::RouteLineLayerDataSource::addFallbackData(md::RouteLineLayerDataSource *this, const gdc::SelectionContext *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1);
  v4 = *(this + 608);
  v47[0] = &unk_1F2A05060;
  v5 = v4 == 0;
  v6 = 9;
  if (!v5)
  {
    v6 = 10;
  }

  v47[1] = md::RouteLineData::mapDataKeyFromTile;
  v48 = v6;
  v49 = 0;
  v50 = 0;
  v51 = v47;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v23 = v3;
  gdc::LayerDataCollector::missingData(&v27, v3, *(this + 16));
  v41[0] = v27;
  v41[1] = *v28;
  while (1)
  {
    v40[0] = v29;
    v40[1] = v30;
    if (!gdc::MissingDataIterator::operator!=(v41, v40))
    {
      break;
    }

    v7 = *(*(&v41[0] + 1) + 113);
    v8 = *(*(&v41[0] + 1) + 116);
    v9 = *(*(&v41[0] + 1) + 112);
    v10 = *(*(&v41[0] + 1) + 128);
    v11 = *(*(&v41[0] + 1) + 136);
    gdc::Tiled::tileFromLayerDataKey(v40, *(*(&v41[0] + 1) + 16));
    v12 = 1 << SBYTE1(v40[0]);
    v35[0] = v40[0];
    v36 = (SDWORD1(v40[0]) % v12 + v12) % v12;
    v37 = (SDWORD2(v40[0]) % v12 + v12) % v12;
    v38 = 0;
    v39 = 1;
    v13 = gdc::FallbackCollector::start((this + 616), v35);
    v14 = *(this + 16);
    v15 = *(this + 2);
    v16 = v51;
    if (!v51)
    {
      goto LABEL_8;
    }

    if (v51 != v47)
    {
      v16 = (*(*v51 + 16))(v13);
LABEL_8:
      v46 = v16;
      goto LABEL_10;
    }

    v46 = v45;
    (*(*v51 + 24))(v13);
LABEL_10:
    md::TileAdjustmentHelpers::getFallbackDataForTile(this + 90, v14, v35, v15, v45, this + 616);
    std::__function::__value_func<gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::~__value_func[abi:nn200100](v45);
    v31[1] = v7;
    v32 = v8;
    v31[0] = v9;
    v33 = v10;
    v34 = v11;
    gdc::FallbackCollector::collectFallbackData(this + 616, &v42, 1, 0, v31);
    gdc::FallbackCollector::end((this + 616), v17);
    gdc::MissingDataIterator::operator++(v41);
  }

  v18 = v43;
  if (v42 != v43)
  {
    v19 = v42 + 15;
    do
    {
      v20 = *grl::IconMetricsRenderResult::getFillRect(*v19);
      gdc::LayerDataKey::LayerDataKey(v24, (v19 - 11));
      gdc::LayerDataRequestKey::LayerDataRequestKey(&v27, v20, v24);
      gdc::LayerDataCollector::addFallbackData(v23, &v27, v19 - 60, v19);
      if (v28[0] != v29)
      {
        free(v28[0]);
      }

      if (v25 != v26)
      {
        free(v25);
      }

      v21 = v19 + 2;
      v19 += 17;
    }

    while (v21 != v18);
  }

  *&v27 = &v42;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&v27);
  return std::__function::__value_func<gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::~__value_func[abi:nn200100](v47);
}

void sub_1B2E34FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = (v21 - 208);
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&a21);
  std::__function::__value_func<gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::~__value_func[abi:nn200100](v21 - 152);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<std::__bind<gdc::LayerDataRequestKey (&)(gdc::RequestType,geo::QuadTile const&,unsigned short),std::placeholders::__ph<1> const&,std::placeholders::__ph<3> const&,unsigned short const&>,std::allocator<std::__bind<gdc::LayerDataRequestKey (&)(gdc::RequestType,geo::QuadTile const&,unsigned short),std::placeholders::__ph<1> const&,std::placeholders::__ph<3> const&,unsigned short const&>>,gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A05060;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 22) = 0;
  *(a2 + 18) = 0;
  return result;
}

void md::RouteLineLayerDataSource::~RouteLineLayerDataSource(md::RouteLineLayerDataSource *this)
{
  md::RouteLineLayerDataSource::~RouteLineLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A04F58;
  v2 = this + 592;
  *(this + 74) = &unk_1F2A05008;
  v3 = *(this + 75);
  v4 = v3[10];
  if (v4)
  {
    v5 = v3 + 10;
    v6 = v3[10];
    do
    {
      v7 = v6[4];
      v8 = v7 >= v2;
      v9 = v7 < v2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v3 + 10 && v2 >= v5[4])
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (v3[9] == v5)
      {
        v3[9] = v11;
      }

      --v3[11];
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v4, v5);
      operator delete(v5);
    }
  }

  v14 = *(this + 93);
  if (v14)
  {
    *(this + 94) = v14;
    operator delete(v14);
  }

  v15 = *(this + 90);
  if (v15)
  {
    *(this + 91) = v15;
    operator delete(v15);
  }

  geo::Pool<gdc::FallbackNode>::~Pool(this + 672);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 81));

  gdc::LayerDataSource::~LayerDataSource(this);
}

uint64_t *std::vector<gm::Matrix<double,2,1>>::vector[abi:nn200100](uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<gm::Matrix<double,2,1>>::__vallocate[abi:nn200100](a1, v2 - *a2);
  }

  return a1;
}

void std::vector<double>::resize(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = (v3 + 8 * a2);
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = &v7[-v3];
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = &v4[8 * v6];
  }

  a1[1] = v11;
}

uint64_t md::MuninRoadEdgePolyline::pointAtDistance(uint64_t a1, float64x2_t *a2, float64x2_t *a3, double a4)
{
  if (a4 < 0.0)
  {
    return 0;
  }

  if (*(a1 + 48) < a4)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = v6 >> 3;
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v9 = 0.0;
  while (1)
  {
    v10 = *(v5 + 8 * v7);
    if (v10 + v9 >= a4)
    {
      break;
    }

    ++v7;
    v9 = v10 + v9;
    if (v8 == v7)
    {
      return 0;
    }
  }

  v12 = (*a1 + 16 * v7);
  *a2 = vmlaq_n_f64(*v12, vsubq_f64(v12[1], *v12), (a4 - v9) / v10);
  if (a3)
  {
    v13 = vsubq_f64(v12[1], *v12);
    *a3 = vmulq_n_f64(v13, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v13, v13))));
  }

  return 1;
}

const md::MuninRoadEdge *md::MuninRoadEdge::MuninRoadEdge(const md::MuninRoadEdge *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, md::MuninJunction *a6, md::MuninJunction *a7)
{
  *a1 = a2;
  *(a1 + 2) = 0;
  v13 = *(a2 + 16);
  v14 = "";
  if (v13 && *v13)
  {
    v14 = *(a2 + 16);
  }

  v15 = strlen(v14);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = v15;
  v17 = a1 + 16;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    v19 = mdm::zone_mallocator::instance(v15);
    v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v19, v18);
    *(a1 + 3) = v16;
    *(a1 + 4) = v18 | 0x8000000000000000;
    *(a1 + 2) = v17;
    goto LABEL_12;
  }

  *(a1 + 39) = v15;
  if (v15)
  {
LABEL_12:
    memmove(v17, v14, v16);
  }

  v17[v16] = 0;
  v20 = a3[1];
  *(a1 + 3) = *a3;
  *(a1 + 4) = v20;
  *(a1 + 10) = a4;
  *(a1 + 11) = a5;
  *(a1 + 12) = a6;
  *(a1 + 13) = a7;
  *(a1 + 112) = 0;
  v21 = *a1;
  if (*(*a1 + 148))
  {
    v22 = *(*a1 + 148) * 0.01;
  }

  else
  {
    v23 = *(v21 + 151);
    if (v23 > 8)
    {
      v22 = 14.8;
    }

    else
    {
      v22 = flt_1B33B4180[v23];
    }
  }

  *(a1 + 2) = v22;
  v24 = *(v21 + 152);
  v26 = v24 == 10 || (v24 - 1) < 3;
  *(a1 + 112) = v26;
  md::MuninJunction::addRoad(a6, a1);
  md::MuninJunction::addRoad(a7, a1);
  return a1;
}

void sub_1B2E355C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  if (*(v10 + 39) < 0)
  {
    v12 = *a10;
    v13 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v13, v12);
  }

  _Unwind_Resume(exception_object);
}

void md::MuninRoadEdge::localizedName(md::MuninRoadEdge *this, std::__shared_weak_count **a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    md::LabelFeature::textFromFeature(&v8, a2, a3, v10, 0);
    v5 = SHIBYTE(v11);
    *this = v8;
    *(this + 2) = v9;
    if (v5 < 0)
    {
      v6 = v10[0];
      v7 = mdm::zone_mallocator::instance(v4);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
    }
  }
}

void sub_1B2E35690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    v20 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v20, a14);
  }

  _Unwind_Resume(exception_object);
}

void md::MuninRoadEdge::walkEdgeGeometry(uint64_t *a1, int a2, uint64_t a3)
{
  v4 = *a1;
  if (v4)
  {
    if (*(a3 + 24))
    {
      v41 = 0;
      v7 = geo::codec::multiSectionFeaturePoints(v4, 0, &v41);
      v8 = a1 + 10;
      if (a1[10] <= v41)
      {
        v9 = a1 + 11;
        if (a1[11] <= v41)
        {
          v10 = v7;
          v11 = *a1;
          v12 = *(*a1 + 8);
          if (v12)
          {
            v12 = std::__shared_weak_count::lock(v12);
            v13 = v12;
            if (v12)
            {
              v12 = *v11;
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = geo::codec::VectorTile::key(v12);
          v15 = *(v14 + 10);
          v16 = *(v14 + 8);
          v38.f64[0] = *v14;
          LOWORD(v38.f64[1]) = v16;
          BYTE2(v38.f64[1]) = v15;
          v39 = GEOTileKeyMake();
          v40 = v17;
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v13);
          }

          GEOMapRectForGEOTileKey();
          v18 = *(MEMORY[0x1E69A1688] + 16);
          v20.f64[1] = v19;
          v22.f64[1] = v21;
          v23 = vdivq_f64(vaddq_f64(v20, v22), v18);
          v24 = 1.0 - v23.f64[1];
          v25 = vdivq_f64(v22, v18);
          v26 = a2 == 0;
          if (a2)
          {
            v27 = v8;
          }

          else
          {
            v27 = v9;
          }

          v28 = *v27;
          if (v26)
          {
            v29 = v8;
          }

          else
          {
            v29 = v9;
          }

          v30 = *v29;
          if (v30 > v28)
          {
            v31 = 1;
          }

          else
          {
            v31 = -1;
          }

          v32 = vsubq_f64(v23, v25);
          v25.f64[1] = v24;
          v36 = v32;
          v37 = v25;
          v33 = v30 + 2 * v31;
          do
          {
            if (v33 == v28 + v31)
            {
              break;
            }

            v38 = vmlaq_f64(v37, vcvtq_f64_f32(*(&v10->__vftable + v28)), v36);
            v34 = *(a3 + 24);
            if (!v34)
            {
              v35 = std::__throw_bad_function_call[abi:nn200100]();
              std::__shared_weak_count::__release_shared[abi:nn200100](v31);
              _Unwind_Resume(v35);
            }

            v28 += v31;
          }

          while (((*(*v34 + 48))(v34, &v38) & 1) != 0);
        }
      }
    }
  }
}

uint64_t std::__function::__value_func<BOOL ()(gm::Matrix<double,2,1> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::MuninRoadEdge::worldPolyline(BOOL,std::vector<gm::Matrix<double,2,1>> &)::$_0,std::allocator<md::MuninRoadEdge::worldPolyline(BOOL,std::vector<gm::Matrix<double,2,1>> &)::$_0>,BOOL ()(gm::Matrix<double,2,1> const&)>::operator()(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v4 = v2[1];
  v3 = v2[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *v2) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - *v2;
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v9);
    }

    *(16 * v6) = *a2;
    v5 = 16 * v6 + 16;
    v10 = *v2;
    v11 = v2[1];
    v12 = 16 * v6 + *v2 - v11;
    if (*v2 != v11)
    {
      v13 = (16 * v6 + *v2 - v11);
      do
      {
        v14 = *v10++;
        *v13++ = v14;
      }

      while (v10 != v11);
      v10 = *v2;
    }

    *v2 = v12;
    v2[1] = v5;
    v2[2] = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  v2[1] = v5;
  return 1;
}

uint64_t std::__function::__func<md::MuninRoadEdge::worldPolyline(BOOL,std::vector<gm::Matrix<double,2,1>> &)::$_0,std::allocator<md::MuninRoadEdge::worldPolyline(BOOL,std::vector<gm::Matrix<double,2,1>> &)::$_0>,BOOL ()(gm::Matrix<double,2,1> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A050A8;
  a2[1] = v2;
  return result;
}

double md::MuninRoadEdge::edgeLengthInMeters(md::MuninRoadEdge *this)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v6[1] = 0;
  v7 = 0.0;
  v6[0] = 0;
  v8[0] = &unk_1F2A050F0;
  v8[1] = v6;
  v8[2] = &v7;
  v8[3] = v8;
  md::MuninRoadEdge::walkEdgeGeometry(this, 1, v8);
  std::__function::__value_func<BOOL ()(gm::Matrix<double,2,1> const&)>::~__value_func[abi:nn200100](v8);
  v2 = v7;
  v3 = exp((*(this + 7) + (*(this + 9) - *(this + 7)) * 0.5) * 6.28318531 + -3.14159265);
  v4 = atan(v3);
  return v2 / geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v4 * 114.591559 + -90.0);
}

void sub_1B2E35BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<BOOL ()(gm::Matrix<double,2,1> const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::MuninRoadEdge::edgeLength(void)::$_0,std::allocator<md::MuninRoadEdge::edgeLength(void)::$_0>,BOOL ()(gm::Matrix<double,2,1> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*v2 != 0)
  {
    v3 = vsubq_f64(*a2, *v2);
    **(a1 + 16) = sqrt(vaddvq_f64(vmulq_f64(v3, v3))) + **(a1 + 16);
  }

  *v2 = *a2;
  *(v2 + 8) = *(a2 + 8);
  return 1;
}

__n128 std::__function::__func<md::MuninRoadEdge::edgeLength(void)::$_0,std::allocator<md::MuninRoadEdge::edgeLength(void)::$_0>,BOOL ()(gm::Matrix<double,2,1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A050F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double md::MuninRoadEdge::direction(std::__shared_weak_count **this, int a2)
{
  v3 = *this;
  if (!v3)
  {
    return 0.0;
  }

  result = 0.0;
  if (this[10] != this[11])
  {
    v24[0] = 0;
    v6 = geo::codec::multiSectionFeaturePoints(v3, 0, v24);
    result = 0.0;
    if (this[10] < v24[0])
    {
      result = 0.0;
      if (this[11] < v24[0])
      {
        v7 = v6;
        v8 = *this;
        shared_owners = (*this)->__shared_owners_;
        if (shared_owners)
        {
          shared_owners = std::__shared_weak_count::lock(shared_owners);
          v10 = shared_owners;
          if (shared_owners)
          {
            shared_owners = *v8;
          }
        }

        else
        {
          v10 = 0;
        }

        v11 = geo::codec::VectorTile::key(shared_owners);
        v12 = *(v11 + 8);
        v24[1] = *v11;
        v25 = v12;
        v26 = *(v11 + 10);
        GEOTileKeyMake();
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }

        GEOMapRectForGEOTileKey();
        v14.f64[1] = v13;
        v15 = vdivq_f64(v14, *(MEMORY[0x1E69A1688] + 16));
        v16 = vmulq_f64(v15, vcvtq_f64_f32(*(&v7->__vftable + this[10])));
        v17 = vmulq_f64(v15, vcvtq_f64_f32(*(&v7->__vftable + this[11])));
        v18 = vsubq_f64(v16, v17);
        v19 = vmulq_f64(v18, v18);
        v20 = vsubq_f64(v17, v16);
        v21 = vmulq_f64(v20, v20);
        if (a2)
        {
          v22 = -1;
        }

        else
        {
          v22 = 0;
        }

        v23 = vdupq_n_s64(v22);
        *&result = *&vmulq_n_f64(vbslq_s8(v23, v20, v18), 1.0 / sqrt(vaddvq_f64(vbslq_s8(v23, v21, v19))));
      }
    }
  }

  return result;
}

void sub_1B2E35E50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *md::RouteLineData::mapDataKeyFromTile@<X0>(unsigned __int8 a1@<W0>, unsigned __int8 *a2@<X1>, int a3@<W2>, unsigned __int8 *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = vrev64_s32(*(a2 + 4));
  v4 = *a2;
  v7 = a2[1];
  v8 = v4;
  v9 = a3;
  return gdc::LayerDataRequestKey::LayerDataRequestKey(a4, a1, 15, &v6, 5);
}

void md::RouteLineData::~RouteLineData(md::RouteLineData *this)
{
  md::RouteLineData::~RouteLineData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A05138;
  *(this + 80) = &unk_1F2A05178;
  v2 = *(this + 98);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4 = (this + 752);
  std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v4);
  std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(*(this + 92), v3);

  md::MapTileData::~MapTileData(this);
}

uint64_t md::TransitTransferAnnotationLabelPart::needsCrossfade(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1[2] + 1304) == 2)
  {
    return 1;
  }

  v5 = a1[72];
  v6 = a1[73];
  if (v5 == v6)
  {
    return 0;
  }

  v10 = v5 + 8;
  do
  {
    result = (*(**(v10 - 8) + 768))(*(v10 - 8), a2, a3, a4);
    if (result)
    {
      break;
    }

    v11 = v10 == v6;
    v10 += 8;
  }

  while (!v11);
  return result;
}

uint64_t md::TransitTransferAnnotationLabelPart::layoutForStaging(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  if (a1[87].i8[0])
  {
    return 17;
  }

  result = md::StackLabelPart::layoutForStaging(a1, a2, a3, a4);
  if (result == 37)
  {
    if (a1[86].i8[7] == 1)
    {
      v6 = a1[2];
      if (*(*&v6 + 1304) != 3)
      {
        v7 = a1[86].u8[6];
        if (~v7 + ((*&a1[73] - *&a1[72]) >> 3) == v7)
        {
          if (a1[86].i8[6])
          {
            v8 = 0;
            for (i = 8 * v7 + 8; ; i += 8)
            {
              v10 = a1[72];
              v11 = *(*&v10 + 8 * v8);
              v12 = *(*&v10 + i);
              v13 = atomic_load((*(v11 + 640) + 143));
              if (v13)
              {
                v14 = atomic_load((*(v12 + 640) + 143));
                if (v14)
                {
                  if (!md::LabelIcon::compareImage(*(v11 + 640), *(v12 + 640)))
                  {
                    v15 = a1[2];
                    if (*(*&v15 + 1304) != 3)
                    {
                      *(*&v15 + 1304) = 2;
                    }

                    a1[87].i8[0] = 1;
                    return 17;
                  }

                  a1[86].i8[7] = 0;
                }
              }

              ++v8;
              result = 37;
              if (v8 >= a1[86].u8[6])
              {
                return result;
              }
            }
          }
        }

        else
        {
          *(*&v6 + 1304) = 3;
          a1[86].i8[7] = 0;
        }
      }
    }

    return 37;
  }

  return result;
}

void md::TransitTransferAnnotationLabelPart::~TransitTransferAnnotationLabelPart(md::TransitTransferAnnotationLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void std::vector<objc_object  {objcproto14VKRouteOverlay}* {__strong}>::push_back[abi:nn200100](void ***a1, void **a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = v4 - *a1;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - *a1;
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

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 8 * v7;
    v12 = *a2;
    *a2 = 0;
    v13 = *a1;
    v14 = a1[1];
    v15 = *a1 == v14;
    v16 = (v11 + *a1 - v14);
    *v11 = v12;
    v6 = (v11 + 8);
    if (!v15)
    {
      v17 = v13;
      v18 = v16;
      do
      {
        v19 = *v17;
        *v17++ = 0;
        *v18++ = v19;
      }

      while (v17 != v14);
      do
      {
        v20 = *v13++;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v16;
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
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  a1[1] = v6;
}

uint64_t md::StandardRouteOverlayCache::removeOverlay(int8x8_t *a1, void *a2, int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v38 = v5;
  if (!v5)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v5;
  if ((isKindOfClass & 1) == 0)
  {
    v12 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(&a1[12], v7);
    if (v12)
    {
      v13 = a1[13];
      v14 = v12[1];
      v15 = vcnt_s8(v13);
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        if (*&v14 >= *&v13)
        {
          *&v14 %= *&v13;
        }
      }

      else
      {
        *&v14 &= *&v13 - 1;
      }

      v22 = a1[12];
      v23 = *(*&v22 + 8 * *&v14);
      do
      {
        v24 = v23;
        v23 = *v23;
      }

      while (v23 != v12);
      if (v24 == &a1[14])
      {
        goto LABEL_60;
      }

      v25 = v24[1];
      if (v15.u32[0] > 1uLL)
      {
        if (*&v25 >= *&v13)
        {
          *&v25 %= *&v13;
        }
      }

      else
      {
        *&v25 &= *&v13 - 1;
      }

      if (*&v25 != *&v14)
      {
LABEL_60:
        if (!*v12)
        {
          goto LABEL_61;
        }

        v27 = *(*v12 + 8);
        if (v15.u32[0] > 1uLL)
        {
          if (v27 >= *&v13)
          {
            v27 %= *&v13;
          }
        }

        else
        {
          v27 &= *&v13 - 1;
        }

        if (v27 != *&v14)
        {
LABEL_61:
          *(*&v22 + 8 * *&v14) = 0;
        }
      }

      v30 = *v12;
      if (*v12)
      {
        v31 = *(*&v30 + 8);
        if (v15.u32[0] > 1uLL)
        {
          if (v31 >= *&v13)
          {
            v31 %= *&v13;
          }
        }

        else
        {
          v31 &= *&v13 - 1;
        }

        if (v31 != *&v14)
        {
          *(*&a1[12] + 8 * v31) = v24;
          v30 = *v12;
        }
      }

      *v24 = v30;
      *v12 = 0;
      --*&a1[15];
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>::operator()[abi:nn200100](1, v12);
      goto LABEL_70;
    }

    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v16 = GEOGetVectorKitRouteLog_log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v40 = v7;
    goto LABEL_17;
  }

  v8 = std::__hash_table<std::__hash_value_type<VKPolylineGroupOverlay *,std::shared_ptr<md::RouteLineOverlayGroup>>,std::__unordered_map_hasher<std::shared_ptr,std::__unordered_map_hasher,md::RouteLineOverlayGroup::StandardRouteOverlayCache::pointer_hasher<VKPolylineGroupOverlay>,std::equal_to<std::shared_ptr>,true>,std::__unordered_map_equal<std::shared_ptr,std::__unordered_map_hasher,std::__unordered_map_hasher<std::shared_ptr,std::__unordered_map_hasher,md::RouteLineOverlayGroup::StandardRouteOverlayCache::pointer_hasher<VKPolylineGroupOverlay>,std::equal_to<std::shared_ptr>,true>,std::equal_to,true>,std::allocator<std::__unordered_map_hasher>>::find<std::shared_ptr>(&a1[17], v7);
  if (!v8)
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v16 = GEOGetVectorKitRouteLog_log;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v40 = v7;
LABEL_17:
    _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_INFO, "Failed to removed overlay %@. It is isnt being tracked", buf, 0xCu);
LABEL_18:

LABEL_19:
    v17 = 0;
    goto LABEL_81;
  }

  v9 = a1[18];
  v10 = v8[1];
  v11 = vcnt_s8(v9);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    if (*&v10 >= *&v9)
    {
      *&v10 %= *&v9;
    }
  }

  else
  {
    *&v10 &= *&v9 - 1;
  }

  v18 = a1[17];
  v19 = *(*&v18 + 8 * *&v10);
  do
  {
    v20 = v19;
    v19 = *v19;
  }

  while (v19 != v8);
  if (v20 == &a1[19])
  {
    goto LABEL_48;
  }

  v21 = v20[1];
  if (v11.u32[0] > 1uLL)
  {
    if (*&v21 >= *&v9)
    {
      *&v21 %= *&v9;
    }
  }

  else
  {
    *&v21 &= *&v9 - 1;
  }

  if (*&v21 != *&v10)
  {
LABEL_48:
    if (!*v8)
    {
      goto LABEL_49;
    }

    v26 = *(*v8 + 8);
    if (v11.u32[0] > 1uLL)
    {
      if (v26 >= *&v9)
      {
        v26 %= *&v9;
      }
    }

    else
    {
      v26 &= *&v9 - 1;
    }

    if (v26 != *&v10)
    {
LABEL_49:
      *(*&v18 + 8 * *&v10) = 0;
    }
  }

  v28 = *v8;
  if (*v8)
  {
    v29 = *(*&v28 + 8);
    if (v11.u32[0] > 1uLL)
    {
      if (v29 >= *&v9)
      {
        v29 %= *&v9;
      }
    }

    else
    {
      v29 &= *&v9 - 1;
    }

    if (v29 != *&v10)
    {
      *(*&a1[17] + 8 * v29) = v20;
      v28 = *v8;
    }
  }

  *v20 = v28;
  *v8 = 0;
  --*&a1[20];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>::operator()[abi:nn200100](1, v8);
  [*&a1[1] stopObserving:v7];
LABEL_70:

  std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__erase_unique<objc_object  {objcproto14VKRouteOverlay}*>(&a1[6], v7);
  if (a3)
  {
    std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__erase_unique<objc_object  {objcproto14VKRouteOverlay}*>(&a1[9], v7);
  }

  v32 = std::remove[abi:nn200100]<std::__wrap_iter<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>,objc_object  {objcproto14VKRouteOverlay}*>(*&a1[2], *&a1[3], &v38);
  if (*&a1[3] != v32)
  {
    if (GEOGetVectorKitRouteLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
    }

    v33 = GEOGetVectorKitRouteLog_log;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = "false";
      v35 = a1[8];
      v36 = a1[11];
      if (a3)
      {
        v34 = "true";
      }

      *buf = 138413058;
      v40 = v7;
      v41 = 2080;
      v42 = v34;
      v43 = 1024;
      v44 = v35.i32[0];
      v45 = 1024;
      v46 = v36.i32[0];
      _os_log_impl(&dword_1B2754000, v33, OS_LOG_TYPE_INFO, "Removed overlay %@ isPersistent:%s overlaysInViewCount:%d persistentOverlaysCount:%d", buf, 0x22u);
    }

    std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::erase(&a1[2], v32, *&a1[3]);
  }

  v17 = 1;
LABEL_81:

  return v17;
}

uint64_t *std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__erase_unique<objc_object  {objcproto14VKRouteOverlay}*>(uint64_t **a1, unint64_t a2)
{
  v4 = a1 + 1;
  result = a1[1];
  if (result)
  {
    v5 = v4;
    v6 = result;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 == v4 || v5[4] > a2)
    {
      return 0;
    }

    else
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(result, v5);
      operator delete(v5);
      return 1;
    }
  }

  return result;
}

uint64_t std::remove[abi:nn200100]<std::__wrap_iter<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>,objc_object  {objcproto14VKRouteOverlay}*>(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while ((geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v3 + 8), a3) & 1) == 0)
    {
      v3 += 24;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 24; i != a2; i += 24)
      {
        if ((geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(i + 8), a3) & 1) == 0)
        {
          geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v3, i);
          v3 += 24;
        }
      }
    }
  }

  return v3;
}

uint64_t std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v7, v4);
        v4 += 24;
        v7 += 24;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    if (v6 != v7)
    {
      v8 = (v6 - 24);
      v9 = v8;
      v10 = v8;
      do
      {
        v11 = *v10;
        v10 -= 3;
        (*v11)(v9);
        v8 -= 3;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, void **a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = v3;
  v6 = v4;
  if (v6 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqual:v6];
  }

  return v7;
}

void std::__shared_ptr_emplace<md::RouteLineOverlay>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 200);
  *(a1 + 200) = 0;

  v3 = *(a1 + 208);
  *(a1 + 208) = 0;

  v4 = *(a1 + 216);
  *(a1 + 216) = 0;

  md::RouteLineDrawAnimation::reset((a1 + 656));
  [*(a1 + 168) setRouteRibbon:0];

  v5 = *(a1 + 696);
  if (v5)
  {
    *(a1 + 704) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 688);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(a1 + 672);
  *(a1 + 672) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 664);
  *(a1 + 664) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 592));
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 560));
  geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr((a1 + 528));
  std::__hash_table<GEOComposedRouteSection * {__strong},std::hash<GEOComposedRouteSection * {__strong}>,std::equal_to<GEOComposedRouteSection * {__strong}>,std::allocator<GEOComposedRouteSection * {__strong}>>::~__hash_table(a1 + 488);
  std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::destroy(*(a1 + 464));
  v9 = *(a1 + 448);
  *(a1 + 448) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::ExtendedMesh>>::~unique_ptr[abi:nn200100]((a1 + 440));
  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::~unique_ptr[abi:nn200100]((a1 + 432));
  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>>::~unique_ptr[abi:nn200100]((a1 + 424));
  v10 = *(a1 + 416);
  *(a1 + 416) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>>::~unique_ptr[abi:nn200100]((a1 + 408));
  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::~unique_ptr[abi:nn200100]((a1 + 400));
  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>>::~unique_ptr[abi:nn200100]((a1 + 392));
  v11 = *(a1 + 384);
  *(a1 + 384) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 376);
  *(a1 + 376) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  std::unique_ptr<md::ManeuverPointSet>::~unique_ptr[abi:nn200100]((a1 + 368));
  v13 = *(a1 + 360);
  *(a1 + 360) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a1 + 352);
  *(a1 + 352) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a1 + 344);
  *(a1 + 344) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  std::unique_ptr<md::RouteLineSharedResources>::~unique_ptr[abi:nn200100]((a1 + 336));
  v22 = (a1 + 312);
  std::vector<std::unique_ptr<md::RouteLineArrowLayer>>::__destroy_vector::operator()[abi:nn200100](&v22);
  std::unique_ptr<md::RouteLineArrowSharedResources>::~unique_ptr[abi:nn200100]((a1 + 304));
  v16 = *(a1 + 296);
  *(a1 + 296) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(a1 + 280);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = *(a1 + 264);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v20 = *(a1 + 248);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  *(a1 + 160) = &unk_1F2A4BA98;
  v21 = *(a1 + 24);
}

void sub_1B2E374B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 696);
  if (v12)
  {
    *(v10 + 704) = v12;
    operator delete(v12);
  }

  v13 = *(v10 + 688);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = *(v10 + 672);
  *(v10 + 672) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(v10 + 664);
  *(v10 + 664) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v10 + 592));
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v10 + 560));
  geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr((v10 + 528));
  std::__hash_table<GEOComposedRouteSection * {__strong},std::hash<GEOComposedRouteSection * {__strong}>,std::equal_to<GEOComposedRouteSection * {__strong}>,std::allocator<GEOComposedRouteSection * {__strong}>>::~__hash_table(v10 + 488);
  std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,std::less<GEOComposedRouteSection * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRouteSection * {__strong},std::unique_ptr<md::DebugPointsSource>>,mdm::zone_mallocator>>::destroy(*(v10 + 464));
  v16 = *(v10 + 448);
  *(v10 + 448) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::ExtendedMesh>>::~unique_ptr[abi:nn200100]((v10 + 440));
  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::~unique_ptr[abi:nn200100]((v10 + 432));
  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>>::~unique_ptr[abi:nn200100]((v10 + 424));
  v17 = *(v10 + 416);
  *(v10 + 416) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>>::~unique_ptr[abi:nn200100]((v10 + 408));
  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::~unique_ptr[abi:nn200100]((v10 + 400));
  std::unique_ptr<ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>>::~unique_ptr[abi:nn200100]((v10 + 392));
  v18 = *(v10 + 384);
  *(v10 + 384) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(v10 + 376);
  *(v10 + 376) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  std::unique_ptr<md::ManeuverPointSet>::~unique_ptr[abi:nn200100]((v10 + 368));
  v20 = *(v10 + 360);
  *(v10 + 360) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(v10 + 352);
  *(v10 + 352) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(v10 + 344);
  *(v10 + 344) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  std::unique_ptr<md::RouteLineSharedResources>::~unique_ptr[abi:nn200100]((v10 + 336));
  a10 = (v10 + 312);
  std::vector<std::unique_ptr<md::RouteLineArrowLayer>>::__destroy_vector::operator()[abi:nn200100](&a10);
  std::unique_ptr<md::RouteLineArrowSharedResources>::~unique_ptr[abi:nn200100]((v10 + 304));
  v23 = *(v10 + 296);
  *(v10 + 296) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(v10 + 288);
  *(v10 + 288) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(v10 + 280);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  v26 = *(v10 + 264);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  v27 = *(v10 + 248);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  *(v10 + 160) = &unk_1F2A4BA98;
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::RouteLineOverlay>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4BAB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::RouteLineOverlayGroup>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 32);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 32));
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
  if (v2[8])
  {
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(*(a1 + 88));
    *(a1 + 88) = 0;
    v3 = *(a1 + 80);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*(a1 + 72) + 8 * i) = 0;
      }
    }

    *(a1 + 96) = 0;
  }

  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  if (v5 != v6)
  {
    v7 = v5 - 3;
    v8 = v5 - 3;
    v9 = v5 - 3;
    do
    {
      v10 = *v9;
      v9 -= 3;
      (*v10)(v8);
      v7 -= 3;
      v11 = v8 == v6;
      v8 = v9;
    }

    while (!v11);
  }

  *(a1 + 56) = v6;
  objc_storeWeak((a1 + 120), 0);
  v12 = *(a1 + 152);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(a1 + 136);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  objc_destroyWeak((a1 + 120));

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(*(a1 + 88));
  v14 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = *(a1 + 56);
    v17 = *(a1 + 48);
    if (v16 != v15)
    {
      v18 = v16 - 3;
      v19 = v16 - 3;
      v20 = v16 - 3;
      do
      {
        v21 = *v20;
        v20 -= 3;
        (*v21)(v19);
        v18 -= 3;
        v11 = v19 == v15;
        v19 = v20;
      }

      while (!v11);
      v17 = *(a1 + 48);
    }

    *(a1 + 56) = v15;
    operator delete(v17);
  }

  v22 = *v2;

  std::__tree<gdc::LayerDataWithWorld>::destroy(v22);
}

void std::__shared_ptr_emplace<md::RouteLineOverlayGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A055C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::StandardRouteOverlayCache::hasPolylineOverlay(md::StandardRouteOverlayCache *this, VKPolylineOverlay *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 6);
  v5 = this + 56;
  if (v4 != this + 56)
  {
    do
    {
      v6 = *(v4 + 4);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v7 = [(VKPolylineOverlay *)v6 polylines];
        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          v9 = *v17;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v17 != v9)
              {
                objc_enumerationMutation(v7);
              }

              if (*(*(&v16 + 1) + 8 * i) == v3)
              {

                goto LABEL_21;
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }
      }

      else if (v6 == v3)
      {
LABEL_21:

        v14 = 1;
        goto LABEL_22;
      }

      v11 = *(v4 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v4 + 2);
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != v5);
  }

  v14 = 0;
LABEL_22:

  return v14;
}

void md::StandardRouteOverlayCache::onPolylineSkippedInGroup(VKPolylineGroupOverlay *this, VKPolylineGroupOverlay *a2, VKPolylineOverlay *a3)
{
  v12 = a3;
  md::StandardRouteOverlayCache::getInternalOverlay(&v13, this, a2);
  v5 = v13;
  if (!v13)
  {
    goto LABEL_17;
  }

  v6 = v12;
  if (!v6)
  {
    if (!v5[15])
    {
      goto LABEL_15;
    }

    v9 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  v7 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v5 + 6, v6);
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7[3];
  v9 = v7[4];
  if (!v9)
  {
    if (v5[15] == v8)
    {
      goto LABEL_15;
    }

    v9 = 0;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  if (v5[15] != v8)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_11:
    v10 = v5[16];
    v5[15] = v8;
    v5[16] = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    if (!v9)
    {
      goto LABEL_15;
    }
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v9);
LABEL_15:

  v11 = **&this->_focusedPolyline->_selected;
  if (v11)
  {
    v15 = 7;
    md::MapEngine::setNeedsTick(v11, &v15);
  }

LABEL_17:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }
}

void md::StandardRouteOverlayCache::onPolylineFocusedInGroup(md::StandardRouteOverlayCache *this, VKPolylineGroupOverlay *a2, VKPolylineOverlay *a3)
{
  v3 = **(*(this + 5) + 88);
  if (v3)
  {
    v4 = 7;
    md::MapEngine::setNeedsTick(v3, &v4);
  }
}

void md::StandardRouteOverlayCache::onPolylineSelectedInGroup(VKPolylineGroupOverlay *this, VKPolylineGroupOverlay *a2, VKPolylineOverlay *a3)
{
  v14 = a3;
  md::StandardRouteOverlayCache::getInternalOverlay(&v15, this, a2);
  v5 = v15;
  if (!v15)
  {
    goto LABEL_24;
  }

  v6 = *(v15 + 112);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = v14;
  if (!v7)
  {
    v10 = 0;
    v9 = 0;
LABEL_9:
    v11 = v5[13];
    if (v11 != v9)
    {
      if (v11)
      {
        *(v11 + 620) = 0;
      }

      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = v5[14];
      v5[13] = v9;
      v5[14] = v10;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        v9 = v5[13];
      }

      if (v9)
      {
        *(v9 + 620) = 1;
      }
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    goto LABEL_20;
  }

  v8 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v5 + 6, v7);
  if (v8)
  {
    v9 = v8[3];
    v10 = v8[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_9;
  }

LABEL_20:

  v13 = **&this->_focusedPolyline->_selected;
  if (v13)
  {
    v17 = 7;
    md::MapEngine::setNeedsTick(v13, &v17);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

LABEL_24:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

void md::StandardRouteOverlayCache::onPolylineRemovedFromGroup(VKPolylineGroupOverlay *this, VKPolylineGroupOverlay *a2, VKPolylineOverlay *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (GEOGetVectorKitRouteLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
  }

  v7 = GEOGetVectorKitRouteLog_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(VKPolylineGroupOverlay *)v5 polylines];
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    v47 = 2048;
    v48 = [v8 count];
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Removed polyline %@ from polylineGroupOverlay %@. PolylineOverlay count %zu", buf, 0x20u);
  }

  md::StandardRouteOverlayCache::getInternalOverlay(buf, this, v5);
  v9 = *buf;
  if (*buf)
  {
    v10 = v6;
    v45 = v10;
    v11 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v9 + 6, v10);
    if (v11)
    {
      v12 = v11;
      v13 = v11[3];
      v14 = v11[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = v9[1];
      if (v15)
      {
        v16 = (v9 + 1);
        v17 = v9[1];
        do
        {
          v18 = v17[4];
          v19 = v18 >= v13;
          v20 = v18 < v13;
          if (v19)
          {
            v16 = v17;
          }

          v17 = v17[v20];
        }

        while (v17);
        if (v16 != (v9 + 1) && v13 >= v16[4])
        {
          v21 = v16[1];
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
            v23 = v16;
            do
            {
              v22 = v23[2];
              v24 = *v22 == v23;
              v23 = v22;
            }

            while (!v24);
          }

          if (*v9 == v16)
          {
            *v9 = v22;
          }

          v9[2] = (v9[2] - 1);
          std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v15, v16);
          v25 = v16[5];
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v25);
          }

          operator delete(v16);
        }
      }

      v26 = v9[7];
      v27 = v12[1];
      v28 = vcnt_s8(v26);
      v28.i16[0] = vaddlv_u8(v28);
      if (v28.u32[0] > 1uLL)
      {
        if (v27 >= *&v26)
        {
          v27 %= *&v26;
        }
      }

      else
      {
        v27 &= *&v26 - 1;
      }

      v29 = v9[6];
      v30 = v29[v27];
      do
      {
        v31 = v30;
        v30 = *v30;
      }

      while (v30 != v12);
      if (v31 == v9 + 8)
      {
        goto LABEL_45;
      }

      v32 = v31[1];
      if (v28.u32[0] > 1uLL)
      {
        if (v32 >= *&v26)
        {
          v32 %= *&v26;
        }
      }

      else
      {
        v32 &= *&v26 - 1;
      }

      if (v32 != v27)
      {
LABEL_45:
        if (!*v12)
        {
          goto LABEL_46;
        }

        v33 = *(*v12 + 8);
        if (v28.u32[0] > 1uLL)
        {
          if (v33 >= *&v26)
          {
            v33 %= *&v26;
          }
        }

        else
        {
          v33 &= *&v26 - 1;
        }

        if (v33 != v27)
        {
LABEL_46:
          v29[v27] = 0;
        }
      }

      v34 = *v12;
      if (*v12)
      {
        v35 = *(v34 + 8);
        if (v28.u32[0] > 1uLL)
        {
          if (v35 >= *&v26)
          {
            v35 %= *&v26;
          }
        }

        else
        {
          v35 &= *&v26 - 1;
        }

        if (v35 != v27)
        {
          v9[6][v35] = v31;
          v34 = *v12;
        }
      }

      *v31 = v34;
      *v12 = 0;
      v9[9] = (v9[9] - 1);
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>::operator()[abi:nn200100](1, v12);
      v36 = v9[3];
      v37 = v9[4];
      if (v36 != v37)
      {
        while ((geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v36 + 8), &v45) & 1) == 0)
        {
          v36 += 24;
          if (v36 == v37)
          {
            v36 = v37;
            goto LABEL_64;
          }
        }

        if (v36 != v37)
        {
          for (i = v36 + 24; i != v37; i += 24)
          {
            if ((geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(i + 8), &v45) & 1) == 0)
            {
              geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v36, i);
              v36 += 24;
            }
          }
        }
      }

LABEL_64:
      v39 = v9[4];
      if (v39 != v36)
      {
        v40 = v39 - 3;
        v41 = v40;
        v42 = v40;
        do
        {
          v43 = *v42;
          v42 -= 3;
          (*v43)(v41);
          v40 -= 3;
          v24 = v41 == v36;
          v41 = v42;
        }

        while (!v24);
        v9[4] = v36;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      v10 = v45;
    }

    v44 = **&this->_focusedPolyline->_selected;
    if (v44)
    {
      LOBYTE(v45) = 7;
      md::MapEngine::setNeedsTick(v44, &v45);
    }
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
  }
}

void md::StandardRouteOverlayCache::onPolylineAddedToGroup(VKPolylineGroupOverlay *this, VKPolylineGroupOverlay *a2, VKPolylineOverlay *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (GEOGetVectorKitRouteLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
  }

  v7 = GEOGetVectorKitRouteLog_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(VKPolylineGroupOverlay *)v5 polylines];
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    v12 = 2048;
    v13 = [v8 count];
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Added polyline %@ to polylineGroupOverlay %@. PolylineOverlay count %zu", buf, 0x20u);
  }

  md::StandardRouteOverlayCache::getInternalOverlay(buf, this, v5);
  if (*buf)
  {
    md::RouteLineOverlayGroup::addPolyline(*buf, v6);
    v9 = **&this->_focusedPolyline->_selected;
    if (v9)
    {
      v10 = 7;
      md::MapEngine::setNeedsTick(v9, &v10);
    }
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
  }
}

void ggl::FoggedDiffuseLandmark::LandmarkPipelineState::~LandmarkPipelineState(ggl::FoggedDiffuseLandmark::LandmarkPipelineState *this)
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

void ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup::~LandmarkPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::VenueBuildingFeatureMarker::~VenueBuildingFeatureMarker(md::VenueBuildingFeatureMarker *this)
{
  *this = &unk_1F2A05658;
  v2 = (this + 32);
  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  v5 = v2;
  std::vector<md::VenueLevel>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A05658;
  v2 = (this + 32);
  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  v5 = v2;
  std::vector<md::VenueLevel>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::vector<md::VenueLevel>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 5;
        std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>::__destroy_vector::operator()[abi:nn200100](&v6);
        if (*(v4 - 48) == 1 && *(v4 - 49) < 0)
        {
          operator delete(*(v4 - 9));
        }

        if (*(v4 - 80) == 1 && *(v4 - 81) < 0)
        {
          operator delete(*(v4 - 13));
        }

        if (*(v4 - 112) == 1 && *(v4 - 113) < 0)
        {
          operator delete(*(v4 - 17));
        }

        if (*(v4 - 144) == 1 && *(v4 - 145) < 0)
        {
          operator delete(*(v4 - 21));
        }

        v4 -= 23;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *md::VenueBuilding::VenueBuilding(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v5 = 0xD37A6F4DE9BD37A7 * ((v4 - *a2) >> 3);
    if (v5 < 0x1642C8590B21643)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueLevel>>(v5);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = *(a2 + 3);
  v7 = *(a2 + 5);
  v8 = *(a2 + 7);
  a1[9] = a2[9];
  *(a1 + 7) = v8;
  *(a1 + 5) = v7;
  *(a1 + 3) = v6;
  geo::ConvexHull2<double>::ConvexHull2(a1 + 10, a2 + 10);
  *(a1 + 13) = *(a2 + 13);
  return a1;
}

void sub_1B2E38B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<md::VenueLevel>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_1B2E38C58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueComponent>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueLevel>>(unint64_t a1)
{
  if (a1 < 0x1642C8590B21643)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10MarketMaskEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MarketMask>(v3);
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
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A427D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A427F8;
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

void ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A427D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MarketMask,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls37SharedMaterialVisibilityOptionsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialVisibilityOptionsHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42FB0;
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

void ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedMaterialVisibilityOptionsHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13PrimitiveTypeEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PrimitiveType>(v3);
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
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41F70;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41F90;
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

void ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41F70;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PrimitiveType,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::PrepareSlices::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::PrimitiveType const&,md::ls::SharedMaterialVisibilityOptionsHandle const*,md::ls::RenderableVisibilityOptions const*,md::ls::MarketMask const*>,ecs2::Query<md::ls::UniqueMaterialVisibilityOptionsHandle const&>)::$_0,std::allocator<md::ita::PrepareSlices::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::PrimitiveType const&,md::ls::SharedMaterialVisibilityOptionsHandle const*,md::ls::RenderableVisibilityOptions const*,md::ls::MarketMask const*>,ecs2::Query<md::ls::UniqueMaterialVisibilityOptionsHandle const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::PrimitiveType const&,md::ls::SharedMaterialVisibilityOptionsHandle const*,md::ls::RenderableVisibilityOptions const*,md::ls::MarketMask const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A056E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void md::ImageResourceDecoder::decode(uint64_t a2@<X2>, void *a3@<X8>)
{
  if (*a2)
  {
    v4 = *(*a2 + 16);
    md::LabelExternalPointFeature::incident(v4);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v4 = 0;
  }

  if ([v4 length])
  {
    v5 = CGDataProviderCreateWithData(0, [v4 bytes], objc_msgSend(v4, "length"), 0);
    v6 = CGImageSourceCreateWithDataProvider(v5, 0);
    CGImageSourceCreateImageAtIndex(v6, 0, 0);
    CFRelease(v6);
    CGDataProviderRelease(v5);
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_1B2E39C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::ImageResource>::__on_zero_shared(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3 != a1[6])
  {

    free(v3);
  }
}

void std::__shared_ptr_emplace<md::ImageResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A057D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::Image>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<md::Image>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A057A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::ImageResourceDecoder::~ImageResourceDecoder(md::ImageResourceDecoder *this)
{
  *this = &unk_1F2A34780;
  *(this + 1) = &unk_1F2A59028;

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A34780;
  *(this + 1) = &unk_1F2A59028;
}

uint64_t std::__function::__value_func<void ()(md::RoadPiece const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<long long>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
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

void std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      do
      {
        v3 = (v3 - 32);
        std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v3);
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>>(v6, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

void std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RoadPiece>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RoadPiece>(uint64_t a1, void *a2)
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

void std::__function::__func<md::LabelTrafficTile::LabelTrafficTile(geo::QuadTile const&,geo::codec::VectorTile *,zilch::TrafficSkeletonTile *,md::DynamicTrafficTileList const&)::$_0,std::allocator<md::LabelTrafficTile::LabelTrafficTile(geo::QuadTile const&,geo::codec::VectorTile *,zilch::TrafficSkeletonTile *,md::DynamicTrafficTileList const&)::$_0>,void ()(md::RoadPiece const&)>::operator()(mdm::zone_mallocator *a1, unint64_t *a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1);
  v4 = *a2;
  v91 = 0uLL;
  v92 = 0;
  v5 = mdm::zone_mallocator::instance(a1);
  v6 = pthread_rwlock_rdlock((v5 + 32));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "read lock", v7);
  }

  v8 = malloc_type_zone_malloc(*v5, 0x38uLL, 0x1060040951A3735uLL);
  atomic_fetch_add((v5 + 24), 1u);
  geo::read_write_lock::unlock((v5 + 32));
  *(v8 + 2) = v4;
  v8[48] = v93;
  *(v8 + 24) = v91;
  *(v8 + 5) = v92;
  v91 = 0uLL;
  v92 = 0;
  v10 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
  v11 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v10 >> 47) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
  *v8 = 0;
  *(v8 + 1) = v12;
  v13 = *(v3 + 128);
  if (v13)
  {
    v14 = vcnt_s8(v13);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = v12;
      if (v13 <= v12)
      {
        v15 = v12 % v13;
      }
    }

    else
    {
      v15 = (v13 - 1) & v12;
    }

    v16 = *(*(v3 + 120) + 8 * v15);
    if (v16)
    {
      for (i = *v16; i; i = *i)
      {
        v18 = *(i + 1);
        if (v18 == v12)
        {
          if (*(i + 2) == v4)
          {
            std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v8);
            v8 = i;
            goto LABEL_73;
          }
        }

        else
        {
          if (v14.u32[0] > 1uLL)
          {
            if (v18 >= v13)
            {
              v18 %= v13;
            }
          }

          else
          {
            v18 &= v13 - 1;
          }

          if (v18 != v15)
          {
            break;
          }
        }
      }
    }
  }

  v19 = (*(v3 + 160) + 1);
  v20 = *(v3 + 168);
  if (!v13 || (v20 * v13) < v19)
  {
    v21 = 1;
    if (v13 >= 3)
    {
      v21 = (v13 & (v13 - 1)) != 0;
    }

    v22 = v21 | (2 * v13);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    if (v24 == 1)
    {
      v24 = 2;
    }

    else if ((v24 & (v24 - 1)) != 0)
    {
      prime = std::__next_prime(v24);
      v24 = prime;
      v13 = *(v3 + 128);
    }

    if (v24 <= v13)
    {
      if (v24 >= v13)
      {
        goto LABEL_59;
      }

      prime = vcvtps_u32_f32(*(v3 + 160) / *(v3 + 168));
      if (v13 < 3 || (v33 = vcnt_s8(v13), v33.i16[0] = vaddlv_u8(v33), v33.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v34 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v34;
        }
      }

      if (v24 <= prime)
      {
        v24 = prime;
      }

      if (v24 >= v13)
      {
        v13 = *(v3 + 128);
        goto LABEL_59;
      }

      if (!v24)
      {
        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> **,0>((v3 + 120), 0);
        v13 = 0;
        *(v3 + 128) = 0;
        goto LABEL_59;
      }
    }

    v25 = mdm::zone_mallocator::instance(prime);
    v26 = pthread_rwlock_rdlock((v25 + 32));
    if (v26)
    {
      geo::read_write_lock::logFailure(v26, "read lock", v27);
    }

    v28 = malloc_type_zone_malloc(*v25, 8 * v24, 0x2004093837F09uLL);
    atomic_fetch_add((v25 + 24), 1u);
    geo::read_write_lock::unlock((v25 + 32));
    std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsFeature const*,std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>>,void *> *> **,0>((v3 + 120), v28);
    v29 = 0;
    *(v3 + 128) = v24;
    do
    {
      *(*(v3 + 120) + 8 * v29++) = 0;
    }

    while (v24 != v29);
    v30 = *(v3 + 144);
    if (v30)
    {
      v31 = v30[1];
      v32 = vcnt_s8(v24);
      v32.i16[0] = vaddlv_u8(v32);
      if (v32.u32[0] > 1uLL)
      {
        if (v31 >= v24)
        {
          v31 %= v24;
        }
      }

      else
      {
        v31 &= v24 - 1;
      }

      *(*(v3 + 120) + 8 * v31) = v3 + 144;
      v35 = *v30;
      if (*v30)
      {
        do
        {
          v36 = v35[1];
          if (v32.u32[0] > 1uLL)
          {
            if (v36 >= v24)
            {
              v36 %= v24;
            }
          }

          else
          {
            v36 &= v24 - 1;
          }

          if (v36 != v31)
          {
            v37 = *(v3 + 120);
            if (!*(v37 + 8 * v36))
            {
              *(v37 + 8 * v36) = v30;
              goto LABEL_55;
            }

            *v30 = *v35;
            *v35 = **(v37 + 8 * v36);
            **(v37 + 8 * v36) = v35;
            v35 = v30;
          }

          v36 = v31;
LABEL_55:
          v30 = v35;
          v35 = *v35;
          v31 = v36;
        }

        while (v35);
      }
    }

    v13 = v24;
  }

LABEL_59:
  v38 = *(v8 + 1);
  v39 = vcnt_s8(v13);
  v39.i16[0] = vaddlv_u8(v39);
  if (v39.u32[0] > 1uLL)
  {
    if (v38 >= v13)
    {
      v38 %= v13;
    }
  }

  else
  {
    v38 &= v13 - 1;
  }

  v40 = *(v3 + 120);
  v41 = *(v40 + 8 * v38);
  if (v41)
  {
    *v8 = *v41;
LABEL_71:
    *v41 = v8;
    goto LABEL_72;
  }

  *v8 = *(v3 + 144);
  *(v3 + 144) = v8;
  *(v40 + 8 * v38) = v3 + 144;
  if (*v8)
  {
    v42 = *(*v8 + 8);
    if (v39.u32[0] > 1uLL)
    {
      if (v42 >= v13)
      {
        v42 %= v13;
      }
    }

    else
    {
      v42 &= v13 - 1;
    }

    v41 = (*(v3 + 120) + 8 * v42);
    goto LABEL_71;
  }

LABEL_72:
  ++*(v3 + 160);
LABEL_73:
  v90 = &v91;
  std::vector<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,geo::allocator_adapter<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v90);
  v45 = *(v8 + 3);
  v44 = *(v8 + 4);
  v46 = v44 - v45;
  v47 = (v44 - v45) >> 5;
  v48 = a2[1];
  if (v47 <= v48)
  {
    v49 = v48 + 1;
    v50 = v48 + 1 - v47;
    if (v48 + 1 <= v47)
    {
      if (v48 + 1 < v47)
      {
        v66 = (v45 + 32 * v49);
        while (v44 != v66)
        {
          v44 = (v44 - 32);
          std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v44);
        }

        *(v8 + 4) = v66;
      }
    }

    else
    {
      v51 = *(v8 + 5);
      if (v50 <= (v51 - v44) >> 5)
      {
        v67 = (v44 + 32 * v50);
        v68 = 32 * v48 - 32 * v47 + 32;
        do
        {
          *v44 = 0;
          *(v44 + 1) = 0;
          *(v44 + 2) = 0;
          v44 = (v44 + 32);
          v68 -= 32;
        }

        while (v68);
        *(v8 + 4) = v67;
      }

      else
      {
        if (v49 >> 59)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v52 = (v51 - v45) >> 4;
        if (v52 <= v49)
        {
          v52 = v48 + 1;
        }

        if ((v51 - v45) >= 0x7FFFFFFFFFFFFFE0)
        {
          v53 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v53 = v52;
        }

        v54 = mdm::zone_mallocator::instance(v43);
        v55 = pthread_rwlock_rdlock((v54 + 32));
        if (v55)
        {
          geo::read_write_lock::logFailure(v55, "read lock", v56);
        }

        v57 = malloc_type_zone_malloc(*v54, 32 * v53, 0x20040D2EA512BuLL);
        atomic_fetch_add((v54 + 24), 1u);
        geo::read_write_lock::unlock((v54 + 32));
        v58 = &v46[v57];
        v59 = v45 + 32 * v48 - v44 + 32;
        v60 = &v46[v57];
        do
        {
          *v60 = 0;
          *(v60 + 1) = 0;
          *(v60 + 2) = 0;
          v60 += 32;
          v59 -= 32;
        }

        while (v59);
        v61 = *(v8 + 3);
        v62 = *(v8 + 4) - v61;
        v63 = &v58[-v62];
        v43 = memcpy(&v58[-v62], v61, v62);
        v64 = *(v8 + 3);
        *(v8 + 3) = v63;
        *(v8 + 4) = v57 + 32 * v49;
        *(v8 + 5) = v57 + 32 * v53;
        if (v64)
        {
          v65 = mdm::zone_mallocator::instance(v43);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::vector<md::RoadPiece,geo::allocator_adapter<md::RoadPiece,mdm::zone_mallocator>>>(v65, v64);
        }
      }
    }

    v48 = a2[1];
    v45 = *(v8 + 3);
  }

  v69 = v45 + 32 * v48;
  v70 = *(v69 + 8);
  v71 = *(v69 + 16);
  if (v70 >= v71)
  {
    v74 = (v70 - *v69) >> 5;
    v75 = v74 + 1;
    if ((v74 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v76 = v71 - *v69;
    if (v76 >> 4 > v75)
    {
      v75 = v76 >> 4;
    }

    if (v76 >= 0x7FFFFFFFFFFFFFE0)
    {
      v77 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v77 = v75;
    }

    if (v77)
    {
      v78 = mdm::zone_mallocator::instance(v43);
      v79 = pthread_rwlock_rdlock((v78 + 32));
      if (v79)
      {
        geo::read_write_lock::logFailure(v79, "read lock", v80);
      }

      v81 = malloc_type_zone_malloc(*v78, 32 * v77, 0x106004029F9A71EuLL);
      atomic_fetch_add((v78 + 24), 1u);
      geo::read_write_lock::unlock((v78 + 32));
    }

    else
    {
      v81 = 0;
    }

    v82 = &v81[32 * v74];
    v83 = &v81[32 * v77];
    v84 = *(a2 + 1);
    *v82 = *a2;
    *(v82 + 1) = v84;
    v73 = v82 + 32;
    v85 = *(v69 + 8) - *v69;
    v86 = &v82[-v85];
    v87 = memcpy(&v82[-v85], *v69, v85);
    v88 = *v69;
    *v69 = v86;
    *(v69 + 8) = v73;
    *(v69 + 16) = v83;
    if (v88)
    {
      v89 = mdm::zone_mallocator::instance(v87);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RoadPiece>(v89, v88);
    }
  }

  else
  {
    v72 = *(a2 + 1);
    *v70 = *a2;
    v70[1] = v72;
    v73 = v70 + 2;
  }

  *(v69 + 8) = v73;
}

uint64_t std::__function::__func<md::LabelTrafficTile::LabelTrafficTile(geo::QuadTile const&,geo::codec::VectorTile *,zilch::TrafficSkeletonTile *,md::DynamicTrafficTileList const&)::$_0,std::allocator<md::LabelTrafficTile::LabelTrafficTile(geo::QuadTile const&,geo::codec::VectorTile *,zilch::TrafficSkeletonTile *,md::DynamicTrafficTileList const&)::$_0>,void ()(md::RoadPiece const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A05830;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<md::LabelTrafficTile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A058B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::AnchorLogic,md::AnchorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext>,gdc::TypeList<md::NavigationContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A05BB8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A05BB8;

  return a1;
}

uint64_t md::Logic<md::AnchorLogic,md::AnchorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext>,gdc::TypeList<md::NavigationContext>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x63B6FE00C0848868 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext>,gdc::TypeList<md::NavigationContext>>::resolveDependencies(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::AnchorContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::AnchorContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A05BD8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x20C40A4A59CD2);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::AnchorContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A05BD8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

void md::AnchorLogic::~AnchorLogic(md::AnchorLogic *this)
{
  md::AnchorLogic::~AnchorLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A05930;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  md::AnchorLogic::_resetExternalAnchors(*(this + 25));
  if (*(this + 26))
  {
    std::__hash_table<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,std::hash<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::equal_to<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::allocator<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>>::__deallocate_node(*(this + 25));
    *(this + 25) = 0;
    v3 = *(this + 24);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*(this + 23) + 8 * i) = 0;
      }
    }

    *(this + 26) = 0;
  }

  std::__hash_table<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,std::hash<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::equal_to<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::allocator<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>>::~__hash_table(this + 184);
  v5 = *(this + 22);
  *(this + 22) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  std::unique_ptr<md::MercatorTerrainHeightCache>::reset[abi:nn200100](this + 21, 0);
  std::unique_ptr<md::MercatorTerrainHeightCache>::reset[abi:nn200100](this + 20, 0);
  v6 = *(this + 18);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 16);
  *(this + 16) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B2E3B150(_Unwind_Exception *a1)
{
  std::__hash_table<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,std::hash<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::equal_to<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::allocator<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>>::~__hash_table(v1 + 184);
  v3 = *(v1 + 176);
  *(v1 + 176) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  std::unique_ptr<md::MercatorTerrainHeightCache>::reset[abi:nn200100]((v1 + 168), 0);
  std::unique_ptr<md::MercatorTerrainHeightCache>::reset[abi:nn200100]((v1 + 160), 0);
  v4 = *(v1 + 144);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 128);
  *(v1 + 128) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,std::hash<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::equal_to<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::allocator<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,std::hash<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::equal_to<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::allocator<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,std::hash<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::equal_to<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::allocator<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>>::__deallocate_node(void (***a1)(void))
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

void std::__shared_ptr_pointer<md::MercatorAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::MercatorAnchor>,std::allocator<md::MercatorAnchor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_pointer<md::MercatorTerrainAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::MercatorTerrainAnchor>,std::allocator<md::MercatorTerrainAnchor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::GlobeMercatorAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::GlobeMercatorAnchor>,std::allocator<md::GlobeMercatorAnchor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::GlobeMercatorAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::GlobeMercatorAnchor>,std::allocator<md::GlobeMercatorAnchor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::GlobeMercatorTerrainAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::GlobeMercatorTerrainAnchor>,std::allocator<md::GlobeMercatorTerrainAnchor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::GlobeMercatorTerrainAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::GlobeMercatorTerrainAnchor>,std::allocator<md::GlobeMercatorTerrainAnchor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::AnchorReleaseQueue>::__on_zero_shared(uint64_t a1)
{
  std::mutex::~mutex((a1 + 48));
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  if (v3)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v4 = *v2;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<md::AnchorReleaseQueue>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A05B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::unique_ptr<std::__hash_node<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
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

void *geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_1F2A05BB8;
  a1[1] = v3;
  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture *>(uint64_t a1, void *a2)
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

void ggl::DownscaleTextureComputeShaderState::~DownscaleTextureComputeShaderState(ggl::DownscaleTextureComputeShaderState *this)
{
  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t *std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<md::mun::CollectionPoint>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
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

void std::vector<md::mun::CollectionPoint>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2328A701194539)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::CollectionPoint>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void md::mun::MuninMetadata::~MuninMetadata(md::mun::MuninMetadata *this)
{
  md::mun::MuninMetadata::~MuninMetadata(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A05C40;
  v2 = *(this + 41);
  if (v2)
  {
    *(this + 42) = v2;
    operator delete(v2);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 256);
  v4 = (this + 232);
  std::vector<md::mun::StorefrontBundle>::__destroy_vector::operator()[abi:nn200100](&v4);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 192);
  v4 = (this + 168);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v4);
  *this = &unk_1F2A60328;
  v3 = *(this + 4);
  if (v3 != *(this + 6))
  {
    free(v3);
  }
}

uint64_t md::mun::MuninMetadata::MuninMetadata(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = gdc::LayerData::LayerData(a1, a2);
  *v8 = &unk_1F2A05C40;
  v8[22] = 0;
  v8[23] = 0;
  v8[21] = 0;
  std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>(v8 + 21, *a3, a3[1], 0x63FB9AEB1FDCD759 * ((a3[1] - *a3) >> 3));
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1065353216;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  v9 = a4[1];
  if (v9 != *a4)
  {
    v10 = 0xCF3CF3CF3CF3CF3DLL * ((v9 - *a4) >> 3);
    if (v10 < 0x186186186186187)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>>(v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(a1 + 256) = 0uLL;
  *(a1 + 272) = 0uLL;
  *(a1 + 288) = 1065353216;
  *(a1 + 296) = 255;
  *(a1 + 304) = 0;
  *(a1 + 300) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1 + 192, vcvtps_u32_f32((0x63FB9AEB1FDCD759 * ((*(a1 + 176) - *(a1 + 168)) >> 3)) / 1.0));
  v11 = *(a1 + 168);
  if (*(a1 + 176) != v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v53[0] = (v11 + v12);
      *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 192), *(v11 + v12), v53) + 12) = v13++;
      v11 = *(a1 + 168);
      v12 += 1864;
    }

    while (v13 < 0x63FB9AEB1FDCD759 * ((*(a1 + 176) - v11) >> 3));
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1 + 256, vcvtps_u32_f32((0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 240) - *(a1 + 232)) >> 3)) / *(a1 + 288)));
  v14 = *(a1 + 232);
  if (*(a1 + 240) != v14)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v53[0] = (v14 + v15);
      *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 256), *(v14 + v15), v53) + 12) = v16++;
      v14 = *(a1 + 232);
      v15 += 168;
    }

    while (v16 < 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 240) - v14) >> 3));
  }

  v17 = *(a2 + 16);
  Int32 = gdc::ResourceKey::getInt32(v17, 2u);
  v19 = gdc::ResourceKey::getInt32(v17, 1u);
  v20 = gdc::ResourceKey::getInt32(v17, 0);
  *(a1 + 296) = -1;
  *(a1 + 297) = Int32;
  *(a1 + 300) = v19;
  *(a1 + 304) = v20;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  bzero(v53, 0x960uLL);
  v21 = *(a1 + 168);
  v22 = *(a1 + 176);
  if (v21 == v22)
  {
    v40 = *(a1 + 168);
  }

  else
  {
    do
    {
      v23 = 1 << *(a1 + 297);
      v24 = -1.0 / v23;
      v25 = (*(v21 + 56) + v24 * *(a1 + 304)) * v23;
      v26 = (*(v21 + 64) + v24 * (v23 + ~*(a1 + 300))) * v23;
      v27 = (v25 * 10.0);
      if (v27 >= 9)
      {
        v27 = 9;
      }

      v28 = v27 & ~(v27 >> 31);
      v29 = (v26 * 10.0);
      if (v29 >= 9)
      {
        v29 = 9;
      }

      v30 = &(&v53[30 * (v29 & ~(v29 >> 31))])[3 * v28];
      v32 = v30[1];
      v31 = v30[2];
      if (v32 >= v31)
      {
        v34 = *v30;
        v35 = v32 - *v30;
        v36 = (v35 >> 3) + 1;
        if (v36 >> 61)
        {
          goto LABEL_45;
        }

        v37 = v31 - v34;
        if (v37 >> 2 > v36)
        {
          v36 = v37 >> 2;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFF8)
        {
          v38 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v38);
        }

        v39 = (8 * (v35 >> 3));
        *v39 = v21;
        v33 = (v39 + 1);
        memcpy(0, v34, v35);
        *v30 = 0;
        v30[2] = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v32 = v21;
        v33 = v32 + 8;
      }

      v30[1] = v33;
      v21 += 1864;
    }

    while (v21 != v22);
    v21 = *(a1 + 168);
    v40 = *(a1 + 176);
  }

  v41 = 0x63FB9AEB1FDCD759 * ((v40 - v21) >> 3);
  if (v41 > (*(a1 + 344) - *(a1 + 328)) >> 3)
  {
    if (!(v41 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v41);
    }

LABEL_45:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  for (i = 0; i != 10; ++i)
  {
    v43 = 0;
    v44 = 10 * i;
    do
    {
      *(a1 + 352 + 2 * (v43 + v44)) = (*(a1 + 336) - *(a1 + 328)) >> 3;
      v45 = &(&v53[3 * v43])[3 * v44];
      v46 = *v45;
      v47 = v45[1];
      while (v46 != v47)
      {
        v48 = *v46++;
        v52 = v48;
        std::vector<md::mun::CollectionPoint const*>::push_back[abi:nn200100](a1 + 328, &v52);
      }

      ++v43;
    }

    while (v43 != 10);
  }

  v49 = 300;
  do
  {
    v50 = v53[v49 - 3];
    if (v50)
    {
      v53[v49 - 2] = v50;
      operator delete(v50);
    }

    v49 -= 3;
  }

  while (v49 * 8);
  return a1;
}

unint64_t md::mun::MuninMetadata::_searchBounds(uint64_t a1, double a2, double a3, double a4)
{
  v8 = exp(a3 * 6.28318531 + -3.14159265);
  v9 = atan(v8);
  v10 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v9 * 114.591559 + -90.0) * a4;
  v11 = 1 << *(a1 + 297);
  v12 = 1.0 / v11;
  v13 = (a2 - v10 - *(a1 + 304) * v12) * v11;
  *&v10 = (a3 - v10 - (v11 + ~*(a1 + 300)) * v12) * v11;
  return (v13 * 10.0) & ~((v13 * 10.0) >> 31) | (((*&v10 * 10.0) & ~((*&v10 * 10.0) >> 31)) << 32);
}

void md::mun::MuninMetadata::neighborsWithinRadius(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = a2->f64[1];
  v11 = md::mun::MuninMetadata::_searchBounds(a1, a2->f64[0], v10, a5);
  v13 = v12;
  v14 = exp(v10 * 6.28318531 + -3.14159265);
  v15 = atan(v14);
  v16 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v15 * 114.591559 + -90.0);
  v41 = v13;
  v42 = v11;
  if (SHIDWORD(v11) <= SHIDWORD(v13))
  {
    v17 = v16 * v16;
    v18 = a5 * a5 * v17;
    v19 = a1 + 352;
    v43 = v13 + 1;
    v45 = v11 >> 32;
    v40 = HIDWORD(v13) + 1;
    v20 = 1.0 / v17;
    v46 = a3;
    do
    {
      if (v42 <= v41)
      {
        v44 = 10 * v45;
        v21 = v42;
        do
        {
          v22 = *(v19 + 2 * (v44 + v21));
          v24 = v45 == 9 && v21 == 9;
          if (v24)
          {
LABEL_12:
            v25 = (*(a1 + 336) - *(a1 + 328)) >> 3;
            goto LABEL_14;
          }

          while (1)
          {
            v25 = *(v19 + 2 * (v44 + v21 + 1));
LABEL_14:
            if (v22 >= v25)
            {
              break;
            }

            v26 = *(a1 + 328);
            if (v22 >= (*(a1 + 336) - v26) >> 3)
            {
              break;
            }

            v47 = *(v26 + 8 * v22);
            v27 = vsubq_f64(*(v47 + 56), *a2);
            v28 = vaddvq_f64(vmulq_f64(v27, v27));
            if (v28 <= v18)
            {
              std::vector<md::mun::CollectionPoint const*>::push_back[abi:nn200100](a3, &v47);
              if (a4)
              {
                v29 = v28 * v20;
                v31 = *(a4 + 8);
                v30 = *(a4 + 16);
                if (v31 >= v30)
                {
                  v33 = *a4;
                  v34 = v31 - *a4;
                  v35 = v34 >> 3;
                  v36 = (v34 >> 3) + 1;
                  if (v36 >> 61)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v37 = v30 - v33;
                  if (v37 >> 2 > v36)
                  {
                    v36 = v37 >> 2;
                  }

                  if (v37 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v38 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  if (v38)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v38);
                  }

                  *(8 * v35) = v29;
                  v32 = 8 * v35 + 8;
                  memcpy(0, v33, v34);
                  v39 = *a4;
                  *a4 = 0;
                  *(a4 + 8) = v32;
                  *(a4 + 16) = 0;
                  if (v39)
                  {
                    operator delete(v39);
                  }

                  v19 = a1 + 352;
                  a3 = v46;
                }

                else
                {
                  *v31 = v29;
                  v32 = (v31 + 1);
                }

                *(a4 + 8) = v32;
              }
            }

            ++v22;
            if (v24)
            {
              goto LABEL_12;
            }
          }

          ++v21;
        }

        while (v43 != v21);
      }

      ++v45;
    }

    while (v40 != v45);
  }
}

void md::mun::MuninMetadata::neighborsWithinRadius(uint64_t a1, long double *a2, uint64_t a3, uint64_t a4, double a5)
{
  v48 = 0.0;
  v49 = 0uLL;
  geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(a2, &v48);
  v46 = *&v49;
  v10 = tan(v48 * 0.5 + 0.785398163);
  v11 = log(v10);
  v12.f64[0] = v46;
  v12.f64[1] = v11;
  __asm { FMOV            V0.2D, #0.5 }

  v17 = vmlaq_f64(_Q0, vdupq_n_s64(0x3FC45F306DC9C883uLL), v12);
  v18 = md::mun::MuninMetadata::_searchBounds(a1, v17.f64[0], v17.f64[1], a5);
  v41 = v19;
  v42 = v18;
  if (SHIDWORD(v18) <= SHIDWORD(v19))
  {
    v20 = a1 + 352;
    v21 = a5 * a5;
    v43 = v19 + 1;
    v45 = v18 >> 32;
    v40 = HIDWORD(v19) + 1;
    v47 = a3;
    do
    {
      if (v42 <= v41)
      {
        v44 = 10 * v45;
        v22 = v42;
        do
        {
          v23 = *(v20 + 2 * (v44 + v22));
          v25 = v45 == 9 && v22 == 9;
          if (v25)
          {
LABEL_12:
            v26 = (*(a1 + 336) - *(a1 + 328)) >> 3;
            goto LABEL_14;
          }

          while (1)
          {
            v26 = *(v20 + 2 * (v44 + v22 + 1));
LABEL_14:
            if (v23 >= v26)
            {
              break;
            }

            v27 = *(a1 + 328);
            if (v23 >= (*(a1 + 336) - v27) >> 3)
            {
              break;
            }

            v48 = *(v27 + 8 * v23);
            v28 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(*&v48 + 8, a2);
            if (v28 <= v21)
            {
              v29 = v28;
              std::vector<md::mun::CollectionPoint const*>::push_back[abi:nn200100](a3, &v48);
              if (a4)
              {
                v31 = *(a4 + 8);
                v30 = *(a4 + 16);
                if (v31 >= v30)
                {
                  v33 = *a4;
                  v34 = v31 - *a4;
                  v35 = v34 >> 3;
                  v36 = (v34 >> 3) + 1;
                  if (v36 >> 61)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v37 = v30 - v33;
                  if (v37 >> 2 > v36)
                  {
                    v36 = v37 >> 2;
                  }

                  if (v37 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v38 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  if (v38)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v38);
                  }

                  *(8 * v35) = v29;
                  v32 = 8 * v35 + 8;
                  memcpy(0, v33, v34);
                  v39 = *a4;
                  *a4 = 0;
                  *(a4 + 8) = v32;
                  *(a4 + 16) = 0;
                  if (v39)
                  {
                    operator delete(v39);
                  }

                  v20 = a1 + 352;
                  a3 = v47;
                }

                else
                {
                  *v31 = v29;
                  v32 = (v31 + 1);
                }

                *(a4 + 8) = v32;
              }
            }

            ++v23;
            if (v25)
            {
              goto LABEL_12;
            }
          }

          ++v22;
        }

        while (v43 != v22);
      }

      ++v45;
    }

    while (v40 != v45);
  }
}

uint64_t md::ARArrivalExternalMeshLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 576);
  if (v3)
  {
    v4 = 37;
  }

  else
  {
    v4 = 26;
  }

  if (v3)
  {
    *(v3 + 120) = *(a1 + 608);
    *(v3 + 168) = *(*(a1 + 16) + 1144);
    md::ARArrivalExternalMeshLabelPart::collisionInfoFromTransform(v3, a2 + 432, (v3 + 32), a1 + 632, (a1 + 616));
    v5 = 0;
    v6 = *(a1 + 576);
    v7 = (a1 + 688);
    do
    {
      *(v7 + v5) = *(v6 + 8 + v5);
      v5 += 4;
    }

    while (v5 != 12);
    v8 = 0;
    v9 = (a1 + 700);
    do
    {
      *(v9 + v8) = *(v6 + 20 + v8);
      v8 += 4;
    }

    while (v8 != 12);
    geo::Transform<double>::toMatrix(v18, (v6 + 32));
    v10 = v18[5];
    *(a1 + 776) = v18[4];
    *(a1 + 792) = v10;
    v11 = v18[7];
    *(a1 + 808) = v18[6];
    *(a1 + 824) = v11;
    v12 = v18[1];
    *(a1 + 712) = v18[0];
    *(a1 + 728) = v12;
    v13 = v18[3];
    *(a1 + 744) = v18[2];
    *(a1 + 760) = v13;
    md::CollisionObject::resetWithRects((a1 + 312), 1u);
    md::CollisionObject::addRect(a1 + 312, (a1 + 632));
    v14 = *(a1 + 616);
    *(a1 + 520) = v14;
    v15 = *(a1 + 620);
    *(a1 + 524) = v15;
    *(a1 + 344) = v14;
    *(a1 + 348) = v15;
    md::CollisionObject::setupShapeData(a1 + 312);
    v16 = (a1 + 440);
    if (*(a1 + 464) == 1)
    {
      *v16 = *v7;
      *(a1 + 448) = *(a1 + 696);
      *(a1 + 452) = *v9;
      *(a1 + 460) = *(a1 + 708);
    }

    else
    {
      *v16 = *v7;
      *(a1 + 456) = *(a1 + 704);
      *(a1 + 464) = 1;
    }

    *(a1 + 424) = a1 + 712;
    return 37;
  }

  return v4;
}

void md::ARArrivalExternalMeshLabelPart::collisionInfoFromTransform(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = 0;
  v21[4] = *MEMORY[0x1E69E9840];
  do
  {
    *&v16.i64[v8] = *(a1 + 8 + 4 * v8);
    ++v8;
  }

  while (v8 != 3);
  v9 = (a1 + 20);
  for (i = 3; i != 6; ++i)
  {
    v11 = *v9++;
    *&v16.i64[i] = v11;
  }

  geo::Transform<double>::toMatrix(&v18, a3);
  v17[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v17[1] = xmmword_1B33B0520;
  v17[2] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v21[0] = &unk_1F2A61070;
  v21[1] = v17;
  v21[2] = &v18;
  v21[3] = v21;
  gm::Box<double,3>::forEachCorner(&v16, v21);
  std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](v21);
  v16 = xmmword_1B33B0730;
  v18.i64[0] = &unk_1F29E3380;
  v18.i64[1] = a2;
  v19 = &v16;
  v20 = &v18;
  gm::Box<double,3>::forEachCorner(v17, &v18);
  std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](&v18);
  v12.i64[1] = v16.i64[1];
  v18 = v16;
  *v12.f32 = vmla_f32(*v16.i8, 0x3F0000003F000000, vsub_f32(*&vextq_s8(v18, v18, 8uLL), *v16.i8));
  *a5 = v12.i64[0];
  *a4 = gm::Box<float,2>::operator-(&v18, v12);
  *(a4 + 4) = v13;
  *(a4 + 8) = v14;
  *(a4 + 12) = v15;
}

double md::ARArrivalExternalMeshLabelPart::updateForDisplay(md::ARArrivalExternalMeshLabelPart *this)
{
  *(this + 78) = *(this + 77);
  *(this + 648) = *(this + 632);
  *(this + 83) = *(this + 86);
  *(this + 168) = *(this + 174);
  *(this + 171) = *(this + 177);
  *(this + 676) = *(this + 700);
  v1 = (this + 840);
  v2 = 16;
  do
  {
    *v1 = *(v1 - 8);
    ++v1;
    v2 -= 2;
  }

  while (v2);
  result = *(*(this + 2) + 792);
  *(this + 76) = result;
  return result;
}

uint64_t md::ARArrivalExternalMeshLabelPart::layoutForStaging(uint64_t a1, uint64_t a2)
{
  result = md::ExternalMeshLabelPart::layoutForStaging(a1);
  if (result == 37)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(a1 + 656 + 4 * v6);
      v8 = *(a1 + 648 + 4 * v6);
      if (v5)
      {
        break;
      }

      v5 = 1;
      v6 = 1;
    }

    while (v7 >= v8);
    if (v7 < v8)
    {
      md::ARArrivalExternalMeshLabelPart::collisionInfoFromTransform(*(a1 + 576), *(a2 + 424), (*(a1 + 592) + 16), a1 + 648, (a1 + 624));
    }

    md::CollisionObject::resetWithRects((a1 + 72), 1u);
    md::CollisionObject::addRect(a1 + 72, (a1 + 648));
    v9 = *(a1 + 624);
    *(a1 + 280) = v9;
    v10 = *(a1 + 628);
    *(a1 + 284) = v10;
    *(a1 + 104) = v9;
    *(a1 + 108) = v10;
    md::CollisionObject::setupShapeData(a1 + 72);
    v11 = (a1 + 664);
    if (*(a1 + 224) == 1)
    {
      *(a1 + 200) = *v11;
      *(a1 + 208) = *(a1 + 672);
      *(a1 + 220) = *(a1 + 684);
      *(a1 + 212) = *(a1 + 676);
    }

    else
    {
      *(a1 + 200) = *v11;
      *(a1 + 216) = *(a1 + 680);
      *(a1 + 224) = 1;
    }

    *(a1 + 184) = a1 + 840;
    return 37;
  }

  return result;
}

void md::ARArrivalExternalMeshLabelPart::~ARArrivalExternalMeshLabelPart(md::ARArrivalExternalMeshLabelPart *this)
{
  md::ExternalMeshLabelPart::~ExternalMeshLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::FlyoverCommon::PolarVertex>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::FlyoverCommon::PolarVertex>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::FlyoverCommon::PolarVertex>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::FlyoverCommon::PolarVertex>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::FlyoverCommon::PolarVertex>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::FlyoverCommon::PolarVertex>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06128;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::FlyoverCommon::PolarMesh::~PolarMesh(ggl::FlyoverCommon::PolarMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::FlyoverCommon::PolarMesh::~PolarMesh(ggl::FlyoverCommon::PolarMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::FlyoverCommon::PolarVertex>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::FlyoverCommon::PolarVertex>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void md::NavContext::worldPoint(md::NavContext *this, const md::LabelPoint *a2, double a3, float a4)
{
  v5 = *(a2 + 10);
  if (v5 == 3.4028e38)
  {
    v5 = 0.0;
  }

  v6 = v5 * (a3 * a4);
  if (this)
  {
    md::LabelPoint::mercatorPoint(a2);
  }

  else
  {
    v7 = md::LabelPoint::geocentricPoint(a2);
    md::LabelPoint::geocentricPoint(v7);
    for (i = 0; i != 3; ++i)
    {
      *(&v17 + i * 8) = *&md::GeocentricNormal(geo::Geocentric<double> const&)::oneOverRadiiSquared[i] * *(a2 + i * 8);
    }

    v9 = gm::Matrix<double,3,1>::normalized<int,void>(&v17);
    v10 = 0;
    *v14 = v9;
    v14[1] = v11;
    v14[2] = v12;
    do
    {
      *(&v17 + v10 * 8) = *&v14[v10] * v6;
      ++v10;
    }

    while (v10 != 3);
    v13 = 0;
    v15 = v17;
    v16 = v18;
    do
    {
      *(&v17 + v13) = *(&v15 + v13) + *(a2 + v13);
      v13 += 8;
    }

    while (v13 != 24);
  }
}

void md::LineLabelFeature::debugString(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 4;
  strcpy(v8, "Road");
  v5 = md::LineLabelFeature::debugRoadString(a5, a1, a2, a3, a4, v8);
  if (v9 < 0)
  {
    v6 = *v8;
    v7 = mdm::zone_mallocator::instance(v5);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
  }
}

void sub_1B2E3D158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LineLabelFeature::debugRoadString(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v198[19] = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v174);
  v11 = *(a3 + 464);
  v12 = *a4;
  *(v186.__r_.__value_.__r.__words + 4) = -1;
  LODWORD(v186.__r_.__value_.__l.__data_) = v12;
  HIDWORD(v186.__r_.__value_.__r.__words[1]) = -1;
  v186.__r_.__value_.__r.__words[2] = 0;
  v168 = a3;
  v166 = v7;
  md::LabelFeature::debugString(a2, a3, &v186, v7, __p);
  if (SHIBYTE(v188.__locale_) >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (SHIBYTE(v188.__locale_) >= 0)
  {
    locale_high = HIBYTE(v188.__locale_);
  }

  else
  {
    locale_high = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, v13, locale_high);
  v167 = a4;
  if (SHIBYTE(v188.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "  Style MinVisibleZoom=", 23);
  v15 = MEMORY[0x1B8C61C80](&v174, *(a2 + 137));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "  ", 2);
  v16 = *(a6 + 23);
  if (v16 >= 0)
  {
    v17 = a6;
  }

  else
  {
    v17 = *a6;
  }

  if (v16 >= 0)
  {
    v18 = *(a6 + 23);
  }

  else
  {
    v18 = *(a6 + 8);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, v17, v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, ":\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "    layoutZ=", 12);
  v19 = MEMORY[0x1B8C61C80](&v174, v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, " pathZ=", 7);
  v20 = *(a2 + 192);
  v170 = (a2 + 192);
  v21 = md::LabelLineStore::lineSetIndexForZoom(v20, v11);
  if ((v21 & 0x80000000) != 0 || (v22 = *(v20 + 12)) == 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v22 + 112 * v21);
  }

  v24 = MEMORY[0x1B8C61C90](v19, v23);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, " travelDir=", 11);
  v25 = *v170;
  v26 = md::LabelLineStore::lineCountForZoom(*v170, v11);
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = 4;
    do
    {
      md::LabelLineStore::lineStartForZoom(__p, v25, v11, v28);
      while (md::LabelLinePosition::pointExists(__p))
      {
        v30 = md::LabelLinePosition::travelDirection(__p);
        v31 = v30;
        if (v29 != 4)
        {
          v31 = v29;
          if (v30 != v29)
          {
            v29 = 3;
            break;
          }
        }

        md::LabelLinePosition::moveToNextPoint(__p);
        v29 = v31;
      }

      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](__p[1]);
      }

      ++v28;
    }

    while (v28 != v27);
    v32 = off_1E7B35F28[v29];
  }

  else
  {
    v32 = "Invalid";
  }

  std::string::basic_string[abi:nn200100]<0>(&v186, v32);
  if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v186;
  }

  else
  {
    v33 = v186.__r_.__value_.__r.__words[0];
  }

  if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v186.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v186.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, v33, size);
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v186.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "\n", 1);
  __val = *a4;
  std::ostringstream::basic_ostringstream[abi:nn200100](__p);
  v35 = *(v168 + 464);
  v36 = *(a2 + 224);
  v37 = (a2 + 232);
  if (v36 == (a2 + 232))
  {
    v38 = 0;
  }

  else
  {
    v38 = 0;
    do
    {
      v39 = v36[1];
      v40 = v36;
      if (v39)
      {
        do
        {
          v41 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v41 = v40[2];
          v42 = *v41 == v40;
          v40 = v41;
        }

        while (!v42);
      }

      v38 += (*(v36[5] + 16) >> v35) & 1;
      v36 = v41;
    }

    while (v41 != v37);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "    Placements:count=", 21);
  v43 = MEMORY[0x1B8C61CB0](__p, *(a2 + 248));
  v44 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, " zCount=", 8);
  MEMORY[0x1B8C61CB0](v44, v38);
  if ((*(a2 + 212) >> v35))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, " [PositionsLimited]", 19);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "\n", 1);
  if (v7)
  {
    if (!*(a2 + 248))
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "No Line Placements\n", 19);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "Placements:\n", 12);
    v45 = *(a2 + 224);
    if (v45 != v37)
    {
      do
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "    [", 5);
        v46 = *(v45 + 8);
        if (v46)
        {
          std::to_string(&v186, v46);
          v47 = HIBYTE(v186.__r_.__value_.__r.__words[2]);
        }

        else
        {
          *(&v186.__r_.__value_.__s + 23) = 7;
          strcpy(&v186, "UNKNOWN");
          v47 = 7;
        }

        if ((v47 & 0x80u) == 0)
        {
          v48 = &v186;
        }

        else
        {
          v48 = v186.__r_.__value_.__r.__words[0];
        }

        if ((v47 & 0x80u) == 0)
        {
          v49 = v47;
        }

        else
        {
          v49 = v186.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, v48, v49);
        (*(*v45[5] + 216))(&v183);
        v50 = std::string::insert(&v183, 0, "]: ", 3uLL);
        v51 = *&v50->__r_.__value_.__l.__data_;
        v185 = v50->__r_.__value_.__r.__words[2];
        v184 = v51;
        v50->__r_.__value_.__l.__size_ = 0;
        v50->__r_.__value_.__r.__words[2] = 0;
        v50->__r_.__value_.__r.__words[0] = 0;
        if (v185 >= 0)
        {
          v52 = &v184;
        }

        else
        {
          v52 = v184;
        }

        if (v185 >= 0)
        {
          v53 = HIBYTE(v185);
        }

        else
        {
          v53 = *(&v184 + 1);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, v52, v53);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "\n", 1);
        if (SHIBYTE(v185) < 0)
        {
          operator delete(v184);
        }

        if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v183.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v186.__r_.__value_.__l.__data_);
        }

        v54 = v45[1];
        if (v54)
        {
          do
          {
            v55 = v54;
            v54 = *v54;
          }

          while (v54);
        }

        else
        {
          do
          {
            v55 = v45[2];
            v42 = *v55 == v45;
            v45 = v55;
          }

          while (!v42);
        }

        v45 = v55;
      }

      while (v55 != v37);
    }
  }

  md::LineLabelPlacer::positionForIdentifier(&v184, v170, __val);
  v56 = v184;
  v57 = v168;
  if (v184)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "Placement:", 10);
    if (__val)
    {
      std::to_string(&v186, __val);
      v58 = HIBYTE(v186.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v58 = 7;
      *(&v186.__r_.__value_.__s + 23) = 7;
      strcpy(&v186, "UNKNOWN");
    }

    if ((v58 & 0x80u) == 0)
    {
      v59 = &v186;
    }

    else
    {
      v59 = v186.__r_.__value_.__r.__words[0];
    }

    if ((v58 & 0x80u) == 0)
    {
      v60 = v58;
    }

    else
    {
      v60 = v186.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, v59, v60);
    if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v186.__r_.__value_.__l.__data_);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, ":\n    ", 6);
    (*(*v56 + 216))(&v186, v56, v166);
    if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = &v186;
    }

    else
    {
      v61 = v186.__r_.__value_.__r.__words[0];
    }

    if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = HIBYTE(v186.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v62 = v186.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, v61, v62);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "\n", 1);
    if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v186.__r_.__value_.__l.__data_);
    }
  }

  if ((v197 & 0x10) != 0)
  {
    v64 = v196;
    if (v196 < v193)
    {
      v196 = v193;
      v64 = v193;
    }

    v65 = __src;
  }

  else
  {
    if ((v197 & 8) == 0)
    {
      v63 = 0;
      v173 = 0;
      goto LABEL_116;
    }

    v65 = v189;
    v64 = v191;
  }

  v63 = v64 - v65;
  if (v64 - v65 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_230;
  }

  if (v63 >= 0x17)
  {
    operator new();
  }

  v173 = v64 - v65;
  if (v63)
  {
    memmove(__dst, v65, v63);
  }

LABEL_116:
  *(__dst + v63) = 0;
  if (*(&v184 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v184 + 1));
  }

  v66 = *MEMORY[0x1E69E54E8];
  __p[0] = *MEMORY[0x1E69E54E8];
  v67 = *(MEMORY[0x1E69E54E8] + 24);
  *(__p + *(__p[0] - 3)) = v67;
  __p[1] = (MEMORY[0x1E69E5548] + 16);
  if (v195 < 0)
  {
    operator delete(v194);
  }

  __p[1] = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&v188);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](v198);
  if ((v173 & 0x80u) == 0)
  {
    v68 = __dst;
  }

  else
  {
    v68 = __dst[0];
  }

  if ((v173 & 0x80u) == 0)
  {
    v69 = v173;
  }

  else
  {
    v69 = __dst[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, v68, v69);
  if (v173 < 0)
  {
    operator delete(__dst[0]);
  }

  v70 = md::LineLabelFeature::roadMetricsForZ(a2, v11, *(v168 + 424));
  if (v70)
  {
    v71 = ldexp(1.0, v11);
    v72 = v174;
    *(&v174 + *(v174 - 24) + 8) = *(&v174 + *(v174 - 24) + 8) & 0xFFFFFEFB | 4;
    *(&v176[0].__locale_ + *(v72 - 24)) = 0;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "   ", 3);
    if (((*(*a2 + 344))(a2) & 1) == 0)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, " vis=", 5);
      MEMORY[0x1B8C61C50](&v174, *(v70 + 89));
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, " spacing(vis,rnk)=pts:", 22);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "text(", 5);
    v73 = MEMORY[0x1B8C61C50](&v174, *(v70 + 84));
    v74 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v73, ",", 1);
    v75 = MEMORY[0x1B8C61C80](v74, *(v70 + 90));
    v76 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v75, ")=", 2);
    v77 = v71 * 512.0;
    MEMORY[0x1B8C61C60](v76, *v70 * v77);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, " shield(", 8);
    v78 = MEMORY[0x1B8C61C50](&v174, *(v70 + 86));
    v79 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v78, ",", 1);
    v80 = MEMORY[0x1B8C61C80](v79, *(v70 + 91));
    v81 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v80, ")=", 2);
    MEMORY[0x1B8C61C60](v81, *(v70 + 2) * v77);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, " arrow(", 7);
    v82 = MEMORY[0x1B8C61C50](&v174, *(v70 + 87));
    v83 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v82, ")=", 2);
    MEMORY[0x1B8C61C60](v83, *(v70 + 1) * v77);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "\n", 1);
  }

  if (*(a2 + 360) != *(a2 + 352))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "    Shields:", 12);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "cnt=", 4);
    MEMORY[0x1B8C61CB0](&v174, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 360) - *(a2 + 352)) >> 4));
    v84 = *(a2 + 352);
    for (i = *(a2 + 360); v84 != i; v84 += 3)
    {
      LOBYTE(v189) = *(v84 + 24);
      if (*(v84 + 23) < 0)
      {
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(__p, *v84, *(v84 + 1));
      }

      else
      {
        v86 = *v84;
        v188.__locale_ = *(v84 + 2);
        *__p = v86;
      }

      v190 = *(v84 + 4);
      LODWORD(v191) = *(v84 + 10);
      BYTE4(v191) = *(v84 + 44);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, " ", 1);
      if (SHIBYTE(v188.__locale_) >= 0)
      {
        v87 = __p;
      }

      else
      {
        v87 = __p[0];
      }

      if (SHIBYTE(v188.__locale_) >= 0)
      {
        v88 = HIBYTE(v188.__locale_);
      }

      else
      {
        v88 = __p[1];
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, v87, v88);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "(", 1);
      v89 = MEMORY[0x1B8C61CE0](&v174, v190);
      v90 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v89, ")", 1);
      if (SHIBYTE(v188.__locale_) < 0)
      {
        v91 = __p[0];
        v92 = mdm::zone_mallocator::instance(v90);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v92, v91);
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "\n", 1);
    v57 = v168;
  }

  v159 = v66;
  v160 = v67;
  v162 = *v170;
  v93 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SSLPM:\n"];
  v94 = md::LabelLineStore::lineSetIndexForZoom(v162, *(v57 + 464));
  v95 = v167;
  if ((v94 & 0x80000000) == 0)
  {
    v96 = *(v162 + 12) + 112 * v94;
    v97 = *(v96 + 80);
    v98 = *(v96 + 88);
    v99 = (v96 + 80);
    [v93 appendFormat:@" LabelLineCount=%i\n", (v98 - v97) >> 3];
    v100 = v166 ? 100 : 4;
    v101 = *v99;
    if (v99[1] != *v99)
    {
      v102 = 0;
      v103 = 0;
      v158 = v100 | 1;
      v163 = v100;
      __vala = v99;
      do
      {
        v104 = v95[1];
        v169 = v103;
        if ((v166 & 1) != 0 || v103 == v104)
        {
          [v93 appendFormat:@" LabelLine[%i] segments=%i", v103, (*(*(v101 + 8 * v103) + 16) - *(*(v101 + 8 * v103) + 8)) >> 4];
          if (v103 == v104)
          {
            [v93 appendFormat:@" (SELECTED) segment[%i]\n", v95[2]];
            v105 = *(v101 + 8 * v103);
            started = md::LabelLine::startCoordinate(*(v105 + 8), *(v105 + 16));
            md::LabelLine::pointAtCoordinate(__p, *(v105 + 8), *(v105 + 16), started, SHIWORD(started));
            v107 = *(v101 + 8 * v103);
            v108 = md::LabelLine::endCoordinate(*(v107 + 8), *(v107 + 16));
            md::LabelLine::pointAtCoordinate(&v186, *(v107 + 8), *(v107 + 16), v108, SHIWORD(v108));
            if (*(v162 + 159) == 1)
            {
              md::LabelPoint::geocentricPoint(__p);
              md::LabelPoint::geocentricPoint(&v186);
              v109 = __p[0];
              v110 = __p[1];
              locale = v188.__locale_;
              v112 = *&v186.__r_.__value_.__l.__data_;
              v113 = v186.__r_.__value_.__r.__words[2];
              v114 = *(*(v101 + 8 * v103) + 8);
              v115 = 0.0;
              if (*(*(v101 + 8 * v103) + 16) != v114 && v114)
              {
                v115 = md::LabelLineSegment::coincidentPointTolerance(*v114);
              }

              [v93 appendFormat:@"Start=(%.10f, %.10f, %.10f) End=(%.10f, %.10f, %.10f) Eps=%.10f\n", v109, v110, locale, v112, v113, *&v115];
            }

            else
            {
              v131 = md::LabelPoint::mercatorPoint(__p);
              v132 = md::LabelPoint::mercatorPoint(&v186);
              v133 = *v131;
              v134 = v131[1];
              v135 = *v132;
              v136 = v132[1];
              v137 = *(*(v101 + 8 * v103) + 8);
              v138 = 0.0;
              if (*(*(v101 + 8 * v103) + 16) == v137)
              {
                v95 = v167;
              }

              else
              {
                v95 = v167;
                if (v137)
                {
                  v138 = md::LabelLineSegment::coincidentPointTolerance(*v137);
                }
              }

              [v93 appendFormat:@"Start=(%.10f, %.10f) End=(%.10f, %.10f) Eps=%.10f\n", v133, v134, v135, v136, *&v138];
            }

            v139 = *(v101 + 8 * v103);
            v140 = *(v139 + 8);
            if (v140)
            {
              v141 = v95[2];
              if ((*(v139 + 16) - v140) >> 4 > v141)
              {
                v142 = (v140 + 16 * v141);
                v143 = "rev";
                if (v142[8])
                {
                  v143 = "fwd";
                }

                [v93 appendFormat:@"Segment: dir=%s section=%i\n", v143, *(*v142 + 44)];
                v144 = *(v101 + 8 * v103);
                if (*(v144 + 1) == 4)
                {
                  v145 = *(v144 + 8);
                  if (v145)
                  {
                    v146 = v95[2];
                    if ((*(v144 + 16) - v145) >> 4 > v146)
                    {
                      v147 = *(*(*(*(*(v145 + 16 * v146) + 16) + 48) + 48) + 8 * *(*(v145 + 16 * v146) + 44) + 4);
                      v148 = 8 * v147;
                      if (v147)
                      {
                        operator new();
                      }

                      v149 = 0;
                      if (v148)
                      {
                        do
                        {
                          [v93 appendFormat:@" ExclRange=(%.2f, %.2f)\n", *v149, v149[1]];
                          v149 += 2;
                        }

                        while (v149 != v148);
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            [v93 appendString:@"\n"];
          }

          if (v102 >= v100)
          {
            [v93 appendString:@"...\n"];
            break;
          }

          v116 = *(v101 + 8 * v103);
          v117 = *(v116 + 40);
          v118 = *(v116 + 48);
          if (v117 != v118)
          {
            v171 = 0;
            while (v102 != v100)
            {
              v119 = *v117;
              v120 = (*v117)[1];
              if (v120)
              {
                v121 = std::__shared_weak_count::lock(v120);
                if (v121)
                {
                  v122 = *v119;
                  std::__shared_weak_count::__release_shared[abi:nn200100](v121);
                  if (v122)
                  {
                    if (v122 != v171)
                    {
                      [v93 appendFormat:@" Tile=(%i.%i.%i)\n", *(v122 + 5) >> 6, *(v122 + 9) & 0x3FFFFFF, *(v122 + 5) & 0x3F];
                      v171 = v122;
                    }

                    v123 = v119[2];
                    if (v123)
                    {
                      v124 = *(v122 + 1848);
                      v125 = *(v122 + 1864);
                      [v93 appendFormat:@"  Line ID=%llu rng=(%.2f:%.2f)\n", *(v123 + 24), *(v123 + 8), *(v123 + 16)];
                      if (*(v123 + 42))
                      {
                        v126 = 0;
                        v127 = v124 + 32;
                        do
                        {
                          v128 = *(v123 + 32);
                          [v93 appendFormat:@"   Section fidx=%i rng=(%.2f:%.2f) rev=%i", *(v127 + 40 * v128 - 32), *(v127 + 40 * v128 - 24), *(v127 + 40 * v128 - 16), *(v127 + 40 * v128 - 2)];
                          if (*(v127 + 40 * v128) == 1)
                          {
                            [v93 appendFormat:@" sub=(%u:%u)\n", *(v127 + 40 * v128 - 6), *(v127 + 40 * v128 - 6) + *(v127 + 40 * v128 - 4) - 1];
                          }

                          else
                          {
                            [v93 appendString:@"\n"];
                          }

                          ++v126;
                          v127 += 40;
                        }

                        while (v126 < *(v123 + 42));
                      }

                      if (*(v123 + 40))
                      {
                        v129 = 0;
                        v100 = v163;
                        v99 = __vala;
                        do
                        {
                          v130 = (v125 + 24 * *(v123 + 36));
                          [v93 appendFormat:@"   Attr type=%i rsn=%i rng=(%.2f:%.2f)\n", *v130, v130[1], *(v130 + 1), *(v130 + 2)];
                          ++v129;
                          v125 += 24;
                        }

                        while (v129 < *(v123 + 40));
                      }

                      else
                      {
                        v100 = v163;
                        v99 = __vala;
                      }
                    }
                  }
                }
              }

              ++v102;
              if (++v117 == v118)
              {
                goto LABEL_186;
              }
            }

            [v93 appendString:@"...\n"];
            v102 = v158;
          }
        }

LABEL_186:
        v95 = v167;
        v103 = v169 + 1;
        v101 = *v99;
      }

      while (v169 + 1 < ((v99[1] - *v99) >> 3));
    }
  }

  v150 = v93;
  std::string::basic_string[abi:nn200100]<0>(&v184, [v93 UTF8String]);
  if (v185 >= 0)
  {
    v151 = &v184;
  }

  else
  {
    v151 = v184;
  }

  if (v185 >= 0)
  {
    v152 = HIBYTE(v185);
  }

  else
  {
    v152 = *(&v184 + 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, v151, v152);
  if (SHIBYTE(v185) < 0)
  {
    operator delete(v184);
  }

  if ((v181 & 0x10) != 0)
  {
    v155 = v180;
    if (v180 < v177)
    {
      v180 = v177;
      v155 = v177;
    }

    v156 = v176[4].__locale_;
  }

  else
  {
    if ((v181 & 8) == 0)
    {
      v153 = 0;
      v154 = a1;
      *(a1 + 23) = 0;
      goto LABEL_227;
    }

    v156 = v176[1].__locale_;
    v155 = v176[3].__locale_;
  }

  v154 = a1;
  v153 = v155 - v156;
  if ((v155 - v156) > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_230:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v153 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v153;
  if (v153)
  {
    memmove(a1, v156, v153);
  }

LABEL_227:
  *(v154 + v153) = 0;
  v174 = v159;
  *(&v174 + *(v159 - 24)) = v160;
  v175 = MEMORY[0x1E69E5548] + 16;
  if (v179 < 0)
  {
    operator delete(v178);
  }

  v175 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v176);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v182);
}

void sub_1B2E3E5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::locale a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  a31 = *MEMORY[0x1E69E54E8];
  *(&a31 + *(a31 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a32 = MEMORY[0x1E69E5548] + 16;
  if (a45 < 0)
  {
    operator delete(__p);
  }

  a32 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a33);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a48);
  _Unwind_Resume(a1);
}

uint64_t md::LabelLineStore::lineCountForZoom(md::LabelLineStore *this, unsigned int a2)
{
  v3 = md::LabelLineStore::lineSetIndexForZoom(this, a2);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = *(this + 12);
  if (!v4)
  {
    return 0;
  }

  else
  {
    return (*(v4 + 112 * v3 + 88) - *(v4 + 112 * v3 + 80)) >> 3;
  }
}

uint64_t md::LabelLinePosition::travelDirection(md::LabelLinePosition *this)
{
  if (*(*this + 152) == 7)
  {
    if (*(this + 10) == *(*this + 16))
    {
      v4 = *(this + 3);
      if (v4)
      {
        if ((*(this + 17) & 0x80000000) == 0)
        {
          v5 = *v4;
          if (v5)
          {
            if (*(v5 + 32) == 1)
            {
              v6 = *(v5 + 24);
              if (v6)
              {
                v7 = *v6;
                if (v7)
                {
                  return *(v7 + 304);
                }
              }
            }
          }
        }
      }
    }

    return 4;
  }

  if (*(*this + 152))
  {
    return 4;
  }

  v1 = md::LabelLinePosition::geoFeature(this);
  result = 4;
  if (v1)
  {
    v3 = *(v1 + 153);
    if (v3 >= 3)
    {
      return 4;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

void md::LineLabelFeature::debugPopulateAttributeStrings(md::LineLabelFeature *this, NSMutableSet *a2, const md::LabelManager *a3, const md::LabelIdentifier *a4)
{
  v18 = a2;
  md::LineLabelPlacer::positionForIdentifier(&v20, this + 192, *a4);
  v6 = v20;
  if (v20)
  {
    v7 = (*(*v20 + 200))(v20);
    md::LabelLineResolvedPosition::ensureValidLinePosition(v7, v8);
    v9 = *(v6 + 9);
  }

  else
  {
    v9 = 1;
  }

  v10 = *(this + 34);
  if (v10 != *(this + 35))
  {
    if (v9 >= 7)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0x6060C01000000uLL >> (8 * v9);
    }

    md::LineLabelFeature::resolvedStyleAttributes(&v19, this, *v10, *(this + 76) == 0, v11);
  }

  if (*(this + 52))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = md::HighlightHelper::debugAttributesToString(this + 416);
    v14 = [v12 stringWithFormat:@"{%@}[SINGLE]", v13];
    [(NSMutableSet *)v18 addObject:v14];
  }

  v15 = md::LabelFeature::debugClientAttributesToString(this + 52, *(a3 + 42));
  if (v15)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@}[CLIENT]", v15];
    [(NSMutableSet *)v18 addObject:v16];
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }
}

void sub_1B2E3ECE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void md::LineLabelFeature::debugDraw(md::LineLabelFeature *a1, uint64_t a2, float32x2_t *a3, unsigned int *a4)
{
  v7 = a1;
  v257 = *MEMORY[0x1E69E9840];
  v209 = md::LineLabelFeature::roadMetricsForZ(a1, *(a2 + 464), *(a2 + 424));
  if (v209)
  {
    v8 = *(v7 + 24);
    v213 = (v7 + 192);
    v9 = atomic_load(v8 + 155);
    if (v9)
    {
      md::LabelLineStore::consumeWorkUnits(v8);
    }

    v10 = *(*(a2 + 232) + 64) * *(a2 + 484);
    v11 = *(a2 + 464);
    v226 = a2;
    if ((*(*v7 + 264))(v7) == 3 || (v56 = *v213, v57 = md::LabelLineStore::lineSetIndexForZoom(*v213, v11), (v57 & 0x80000000) == 0) && (v58 = *(v56 + 12)) != 0 && *(v58 + 112 * v57) >= 8u)
    {
      v12 = *v213;
      v13 = md::LabelLineStore::lineSetIndexForZoom(*v213, v11);
      if ((v13 & 0x80000000) == 0)
      {
        v14 = *(v12 + 12);
        if (v14)
        {
          v15 = v14 + 112 * v13;
          v16 = *(v15 + 80);
          v17 = *(a2 + 176);
          a3[13].f32[0] = fabsf(v17 + v17) * 0.5;
          v214 = (v15 + 80);
          if (*(v15 + 88) != v16)
          {
            v211 = v7;
            v18 = 0;
            v19 = a2 + 1296;
            __asm { FMOV            V0.2D, #1.0 }

            v219 = _Q0;
            do
            {
              v25 = a4[1];
              std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v242, **v213, *(*v213 + 1));
              v216 = v242;
              v242 = 0uLL;
              v26 = *(v16 + 8 * v18);
              started = md::LabelLine::startCoordinate(*(v26 + 8), *(v26 + 16));
              v245 = v216;
              if (*&v216.f64[1])
              {
                atomic_fetch_add_explicit((*&v216.f64[1] + 8), 1uLL, memory_order_relaxed);
              }

              *&v246 = v26;
              v247 = started;
              v248 = *(*&v216.f64[0] + 16);
              v28 = started;
              v29 = *(v26 + 8);
              v30 = v29 + 16 * started;
              if (v28 >= (*(v26 + 16) - v29) >> 4)
              {
                v30 = 0;
              }

              *(&v246 + 1) = v30;
              if (*&v216.f64[1])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&v216.f64[1]);
              }

              if (*&v242.f64[1])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&v242.f64[1]);
              }

              v31 = (*(***(&v246 + 1) + 24))(**(&v246 + 1), SWORD1(v247));
              labelPointToWorldPoint(v31, *(a2 + 440), v10);
              v236.f64[0] = v32;
              v236.f64[1] = v33;
              *&v237 = v34;
              isDistanceClipped = md::LabelLayoutContext::isDistanceClipped(a2 + 432, &v236);
              if (!isDistanceClipped)
              {
                v36 = 0;
                v37 = (a2 + 1296);
                do
                {
                  v38 = 0;
                  v39 = 0.0;
                  v40 = v37;
                  do
                  {
                    v41 = *v40;
                    v40 += 4;
                    v39 = v39 + v236.f64[v38++] * v41;
                  }

                  while (v38 != 3);
                  v242.f64[v36] = *(v19 + 8 * v36 + 96) + v39;
                  ++v36;
                  ++v37;
                }

                while (v36 != 4);
                v4 = vcvt_f32_f64(vmulq_f64(v242, vdivq_f64(v219, vdupq_lane_s64(*(&v243 + 1), 0))));
                a3[1] = v4;
                ggl::DebugConsole::drawSymbol(a3, 3);
              }

              while (1)
              {
                v55 = md::LabelLinePosition::pointAtOffset(&v245, 1);
                if (!v55)
                {
                  break;
                }

                labelPointToWorldPoint(v55, *(a2 + 440), v10);
                v229.f64[0] = v42;
                v229.f64[1] = v43;
                *&v230 = v44;
                v45 = md::LabelLayoutContext::isDistanceClipped(a2 + 432, &v229);
                if (v45)
                {
                  v46 = v4;
                }

                else
                {
                  v47 = 0;
                  v48 = (a2 + 1296);
                  do
                  {
                    v49 = 0;
                    v50 = 0.0;
                    v51 = v48;
                    do
                    {
                      v52 = *v51;
                      v51 += 4;
                      v50 = v50 + v229.f64[v49++] * v52;
                    }

                    while (v49 != 3);
                    v242.f64[v47] = *(v19 + 8 * v47 + 96) + v50;
                    ++v47;
                    ++v48;
                  }

                  while (v47 != 4);
                  v53 = vmulq_f64(v242, vdivq_f64(v219, vdupq_lane_s64(*(&v243 + 1), 0)));
                  v46 = vcvt_f32_f64(v53);
                  *&v254.f64[0] = v46;
                  if (!isDistanceClipped)
                  {
                    if (a4[2] == v247)
                    {
                      v54 = -16776961;
                    }

                    else
                    {
                      v54 = -65536;
                    }

                    if (v18 != v25)
                    {
                      v54 = -16711936;
                    }

                    a3[12].i32[0] = v54;
                    a3[1] = v4;
                    ggl::DebugConsole::drawLine(a3, &v254, *v53.f64);
                  }
                }

                md::LabelLinePosition::moveToNextPoint(&v245);
                v4 = v46;
                isDistanceClipped = v45;
              }

              if (!isDistanceClipped)
              {
                a3[1] = v4;
                ggl::DebugConsole::drawSymbol(a3, 4);
              }

              if (*&v245.f64[1])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&v245.f64[1]);
              }

              ++v18;
              v16 = *v214;
            }

            while (v18 < (v214[1] - *v214) >> 3);
            v17 = *(a2 + 176);
            v7 = v211;
          }

          a3[13].f32[0] = fabsf(v17) * 0.5;
        }
      }
    }

    v59 = *(v7 + 28);
    v215 = (v7 + 232);
    if (v59 != (v7 + 232))
    {
      v60 = 1 << *(a2 + 464);
      __asm { FMOV            V0.2D, #1.0 }

      v220 = _Q0;
      do
      {
        (*(*v59[5] + 184))(v59[5], v226, a3);
        v62 = 0;
        v63 = *(v59 + 8);
        if (v63 == *a4)
        {
          v64 = OverlayColorSelected;
        }

        else
        {
          v64 = &OverlayColorStandard;
        }

        do
        {
          a3[12].i8[v62] = v64[v62];
          ++v62;
        }

        while (v62 != 4);
        v65 = (*(*v59[5] + 56))(v59[5]);
        labelPointToWorldPoint(v65, *(v226 + 440), v10);
        v66 = 0;
        v242.f64[0] = v67;
        v242.f64[1] = v68;
        *&v243 = v69;
        v70 = (v226 + 1296);
        do
        {
          v71 = 0;
          v72 = 0.0;
          v73 = v70;
          do
          {
            v74 = *v73;
            v73 += 4;
            v72 = v72 + v242.f64[v71++] * v74;
          }

          while (v71 != 3);
          v245.f64[v66] = *(v226 + 1296 + 8 * v66 + 96) + v72;
          ++v66;
          ++v70;
        }

        while (v66 != 4);
        v75 = vcvt_f32_f64(vmulq_f64(v245, vdivq_f64(v220, vdupq_lane_s64(*(&v246 + 1), 0))));
        if (v63 == *a4)
        {
          v76 = 4.0;
        }

        else
        {
          v76 = 2.0;
        }

        a3[13].f32[0] = fabsf(v76 * *(v226 + 176)) * 0.5;
        a3[1] = v75;
        if (*(v59[5] + 9) == 4)
        {
          v77 = 1;
        }

        else
        {
          v77 = 3;
        }

        ggl::DebugConsole::drawSymbol(a3, v77);
        if ((v60 & *(v59[5] + 12)) != 0)
        {
          ggl::DebugConsole::drawSymbol(a3, 0);
        }

        v78 = v59[1];
        if (v78)
        {
          do
          {
            v79 = v78;
            v78 = *v78;
          }

          while (v78);
        }

        else
        {
          do
          {
            v79 = v59[2];
            _ZF = *v79 == v59;
            v59 = v79;
          }

          while (!_ZF);
        }

        v59 = v79;
      }

      while (v79 != v215);
    }

    std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v245, **v213, *(*v213 + 1));
    v221 = v245;
    v232 = v245;
    v80 = *v213;
    v212 = *(v226 + 464);
    v81 = md::LabelLineStore::lineSetIndexForZoom(*v213, v212);
    v82 = v221.f64[1];
    if ((v81 & 0x80000000) == 0)
    {
      v83 = *(v80 + 12);
      if (v83)
      {
        v84 = v83 + 112 * v81;
        v85 = *(v84 + 80);
        v210 = (v84 + 80);
        if (*(v84 + 88) != v85)
        {
          v86 = 0;
          v87 = v221.f64[0];
          v88 = v226 + 1296;
          __asm { FMOV            V0.2D, #1.0 }

          v217 = _Q0;
          v225 = a3;
          do
          {
            md::LabelLine::attributes(&v251, *(v85 + 8 * v86), &v232, v212);
            v91 = v251;
            v90 = v252;
            for (i = v252; v91 != v90; v91 += 48)
            {
              v92 = &kAttributeDrawOptions + 12 * *v91;
              v93 = *v92;
              if ((v93 - 1) <= 1)
              {
                a3[12].i32[0] = *(v92 + 1);
                v94 = v85;
                v95 = *(v85 + 8 * v86);
                v245.f64[0] = v87;
                v245.f64[1] = v82;
                if (v82 != 0.0)
                {
                  atomic_fetch_add_explicit((*&v82 + 8), 1uLL, memory_order_relaxed);
                }

                v96 = *(v91 + 3);
                *&v246 = v95;
                v247 = v96;
                v248 = *(*&v87 + 16);
                v98 = v95 + 8;
                v97 = *(v95 + 8);
                v99 = *(v98 + 8) - v97;
                v100 = v97 + 16 * v96;
                if (v96 >= (v99 >> 4))
                {
                  v100 = 0;
                }

                *(&v246 + 1) = v100;
                v243 = 0u;
                v244 = 0u;
                v242 = 0u;
                DWORD2(v244) = 2139095039;
                LabelPoint = md::LabelLinePosition::getLabelPoint(&v245, &v242);
                v102 = 0;
                if (LabelPoint)
                {
                  labelPointToWorldPoint(&v242, *(v226 + 440), v10);
                  v103 = 0;
                  v229.f64[0] = v104;
                  v229.f64[1] = v105;
                  *&v230 = v106;
                  v107 = (v226 + 1296);
                  do
                  {
                    v108 = 0;
                    v109 = 0.0;
                    v110 = v107;
                    do
                    {
                      v111 = *v110;
                      v110 += 4;
                      v109 = v109 + v229.f64[v108++] * v111;
                    }

                    while (v108 != 3);
                    v236.f64[v103] = *(v88 + 8 * v103 + 96) + v109;
                    ++v103;
                    ++v107;
                  }

                  while (v103 != 4);
                  v102 = vcvt_f32_f64(vmulq_f64(v236, vdivq_f64(v217, vdupq_lane_s64(*(&v237 + 1), 0))));
                }

                v113 = *(v91 + 1);
                v112 = *(v91 + 2);
                v114 = v86;
                v115 = *(v94 + 8 * v86);
                v116 = 24;
                if (v91[2])
                {
                  v116 = 32;
                }

                v82 = v232.f64[1];
                v236.f64[0] = v87;
                v236.f64[1] = v232.f64[1];
                if (*&v232.f64[1])
                {
                  atomic_fetch_add_explicit((*&v232.f64[1] + 8), 1uLL, memory_order_relaxed);
                }

                *&v237 = v115;
                v238 = *&v91[v116];
                v239 = *(*&v87 + 16);
                v118 = v115 + 8;
                v117 = *(v115 + 8);
                v119 = *(v118 + 8) - v117;
                v120 = v117 + 16 * v238;
                if (v238 >= (v119 >> 4))
                {
                  v120 = 0;
                }

                *(&v237 + 1) = v120;
                v230 = 0u;
                v231 = 0u;
                v229 = 0u;
                DWORD2(v231) = 2139095039;
                v228 = 0;
                v121 = md::LabelLinePosition::getLabelPoint(&v236, &v229);
                v122 = 0;
                if (v121)
                {
                  labelPointToWorldPoint(&v229, *(v226 + 440), v10);
                  v123 = 0;
                  v233 = v124;
                  v234 = v125;
                  v235 = v126;
                  v127 = (v226 + 1296);
                  do
                  {
                    v128 = 0;
                    v129 = 0.0;
                    v130 = v127;
                    do
                    {
                      v131 = *v130;
                      v130 += 4;
                      v129 = v129 + *(&v233 + v128) * v131;
                      v128 += 8;
                    }

                    while (v128 != 24);
                    v254.f64[v123] = *(v88 + 8 * v123 + 96) + v129;
                    ++v123;
                    ++v127;
                  }

                  while (v123 != 4);
                  v122 = vcvt_f32_f64(vmulq_f64(v254, vdivq_f64(v217, vdupq_lane_s64(v256, 0))));
                  v228 = v122;
                }

                if (v93 == 2)
                {
                  if (LabelPoint)
                  {
                    v225[1] = v102;
                    ggl::DebugConsole::drawSymbol(v225, *(v92 + 2));
                  }

                  if ((v121 & (v112 != v113)) == 1)
                  {
                    v225[1] = v122;
                    ggl::DebugConsole::drawSymbol(v225, *(v92 + 2));
                  }
                }

                else if ((LabelPoint & v121) == 1)
                {
                  v132 = fabsf(*(v226 + 176) * 5.0) * 0.5;
                  v225[13].f32[0] = v132;
                  v225[1] = v102;
                  ggl::DebugConsole::drawLine(v225, &v228, v132);
                  v225[13].f32[0] = fabsf(*(v226 + 176)) * 0.5;
                }

                v86 = v114;
                v85 = v94;
                if (v82 != 0.0)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*&v82);
                }

                a3 = v225;
                if (*&v245.f64[1])
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*&v245.f64[1]);
                }

                v90 = i;
              }
            }

            std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v251);
            ++v86;
            v85 = *v210;
          }

          while (v86 < (v210[1] - *v210) >> 3);
        }
      }
    }

    if (v82 != 0.0)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v82);
    }

    std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v245, **v213, *(*v213 + 1));
    v133 = v245.f64[1];
    v134 = *v213;
    v135 = v226;
    v136 = *(v226 + 464);
    v137 = md::LabelLineStore::lineSetIndexForZoom(*v213, v136);
    if ((v137 & 0x80000000) == 0)
    {
      v138 = *(v134 + 12);
      if (v138)
      {
        v139 = v138 + 112 * v137;
        v140 = a4[1];
        v142 = v139 + 80;
        v141 = *(v139 + 80);
        if (v140 < (*(v142 + 8) - v141) >> 3)
        {
          v254 = 0uLL;
          v255 = 0;
          v251 = 0;
          v252 = 0;
          v253 = 0;
          md::LineLabelPlacer::populateBlocks(v213, v136, *(v141 + 8 * v140), &v254, &v251);
          a3[12].i32[0] = -16777216;
          a3[4] = vmul_n_f32(0x41A0000041800000, *(v226 + 176));
          v144 = v254.f64[1];
          v143 = v254.f64[0];
          if (*&v254.f64[0] != *&v254.f64[1])
          {
            v145 = v226 + 1296;
            __asm { FMOV            V0.2D, #1.0 }

            v223 = _Q0;
            do
            {
              md::LabelLineResolvedPosition::ensureValidLinePosition((*&v143 + 8), _Q0.f64[0]);
              v147 = *(*&v143 + 16);
              v245.f64[0] = *(*&v143 + 8);
              v245.f64[1] = v147;
              if (v147 != 0.0)
              {
                atomic_fetch_add_explicit((*&v147 + 8), 1uLL, memory_order_relaxed);
              }

              v246 = *(*&v143 + 24);
              v247 = *(*&v143 + 40);
              v248 = *(*&v143 + 48);
              *&v244 = 0;
              v242 = 0u;
              v243 = 0u;
              DWORD2(v244) = 2139095039;
              WORD6(v244) = 0;
              BYTE14(v244) = 0;
              if (md::LabelLinePosition::getLabelPoint(&v245, &v242))
              {
                labelPointToWorldPoint(&v242, *(v226 + 440), v10);
                v148 = 0;
                v229.f64[0] = v149;
                v229.f64[1] = v150;
                *&v230 = v151;
                v152 = (v226 + 1296);
                do
                {
                  v153 = 0;
                  v154 = 0.0;
                  v155 = v152;
                  do
                  {
                    v156 = *v155;
                    v155 += 4;
                    v154 = v154 + v229.f64[v153++] * v156;
                  }

                  while (v153 != 3);
                  v236.f64[v148] = *(v145 + 8 * v148 + 96) + v154;
                  ++v148;
                  ++v152;
                }

                while (v148 != 4);
                a3[1] = vcvt_f32_f64(vmulq_f64(v236, vdivq_f64(v223, vdupq_lane_s64(*(&v237 + 1), 0))));
                ggl::DebugConsole::drawSymbol(a3, 1);
              }

              md::LabelLinePosition::offsetDistance(&v245, 0, *(*&v143 + 184) - *(*&v143 + 176));
              v238 = 0;
              v236 = 0u;
              v237 = 0u;
              v239 = 2139095039;
              v240 = 0;
              v241 = 0;
              if (md::LabelLinePosition::getLabelPoint(&v245, &v236))
              {
                labelPointToWorldPoint(&v236, *(v226 + 440), v10);
                v157 = 0;
                v233 = v158;
                v234 = v159;
                v235 = v160;
                v161 = (v226 + 1296);
                do
                {
                  v162 = 0;
                  v163 = 0.0;
                  v164 = v161;
                  do
                  {
                    v165 = *v164;
                    v164 += 4;
                    v163 = v163 + *(&v233 + v162) * v165;
                    v162 += 8;
                  }

                  while (v162 != 24);
                  v229.f64[v157] = *(v145 + 8 * v157 + 96) + v163;
                  ++v157;
                  ++v161;
                }

                while (v157 != 4);
                a3[1] = vcvt_f32_f64(vmulq_f64(v229, vdivq_f64(v223, vdupq_lane_s64(*(&v230 + 1), 0))));
                ggl::DebugConsole::drawSymbol(a3, 1);
              }

              if (*&v245.f64[1])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&v245.f64[1]);
              }

              *&v143 += 216;
            }

            while (*&v143 != *&v144);
          }

          v135 = v226;
          a3[4] = vmul_n_f32(0x4120000041000000, *(v226 + 176));
          std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v251);
          *&v245.f64[0] = &v254;
          std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v245);
        }
      }
    }

    if (v133 != 0.0)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v133);
    }

    v166 = *v215;
    if (*v215)
    {
      v167 = *a4;
      v168 = v215;
      do
      {
        v169 = *(v166 + 32);
        _CF = v169 >= v167;
        v170 = v169 < v167;
        if (_CF)
        {
          v168 = v166;
        }

        v166 = *(v166 + 8 * v170);
      }

      while (v166);
      if (v168 != v215 && v167 >= *(v168 + 8))
      {
        for (j = 0; j != 4; ++j)
        {
          a3[12].i8[j] = OverlayColorSelected[j];
        }

        a3[13].f32[0] = fabsf(*(v135 + 176) * 4.0) * 0.5;
        v172 = (*(*v168[5] + 56))(v168[5]);
        labelPointToWorldPoint(v172, *(v135 + 440), v10);
        v173 = 0;
        v236.f64[0] = v174;
        v236.f64[1] = v175;
        *&v237 = v176;
        v177 = v135 + 1296;
        v178 = (v135 + 1296);
        do
        {
          v179 = 0;
          v180 = 0.0;
          v181 = v178;
          do
          {
            v182 = *v181;
            v181 += 4;
            v180 = v180 + v236.f64[v179++] * v182;
          }

          while (v179 != 3);
          v245.f64[v173] = *(v177 + 8 * v173 + 96) + v180;
          ++v173;
          ++v178;
        }

        while (v173 != 4);
        __asm { FMOV            V1.2D, #1.0 }

        v224 = _Q1;
        v227 = vmulq_f64(v245, vdivq_f64(_Q1, vdupq_lane_s64(*(&v246 + 1), 0)));
        v184 = md::LabelPoint::mercatorPoint(v172);
        v185 = *v184;
        v186 = *(v184 + 8);
        v187 = 40075017.0;
        if (!*(*v213 + 159))
        {
          v187 = 1.0;
        }

        v188 = *v209 / v187;
        v189 = *(v172 + 10);
        *&v246 = 0;
        v245 = 0uLL;
        *(&v246 + 1) = v188 + v185;
        v247 = v186;
        v248 = v189;
        v249 = 256;
        v250 = 1;
        labelPointToWorldPoint(&v245, *(v135 + 440), v10);
        v190 = 0;
        v229.f64[0] = v191;
        v229.f64[1] = v192;
        *&v230 = v193;
        v194 = (v135 + 1296);
        do
        {
          v195 = 0;
          v196 = 0.0;
          v197 = v194;
          do
          {
            v198 = *v197;
            v197 += 4;
            v196 = v196 + v229.f64[v195++] * v198;
          }

          while (v195 != 3);
          v242.f64[v190] = *(v177 + 8 * v190 + 96) + v196;
          ++v190;
          ++v194;
        }

        while (v190 != 4);
        v199 = vcvt_f32_f64(v227);
        v200 = *(v135 + 176);
        v201 = vsub_f32(vcvt_f32_f64(vmulq_f64(v242, vdivq_f64(v224, vdupq_lane_s64(*(&v243 + 1), 0)))), v199);
        v201.f32[0] = sqrtf(vaddv_f32(vmul_f32(v201, v201)));
        *&v202 = v199.f32[0] + (v200 * 50.0);
        v203 = v199.f32[1] + (v200 * 50.0);
        *&v204 = v201.f32[0] + *&v202;
        *v242.f64 = v201.f32[0] + *&v202;
        *(v242.f64 + 1) = v203;
        a3[1].i32[0] = v202;
        a3[1].f32[1] = v203;
        ggl::DebugConsole::drawLine(a3, &v242, v201.f32[0]);
        v205 = v200 * 10.0;
        *&v206 = v203 - (v200 * 10.0);
        *&v254.f64[0] = __PAIR64__(v206, v202);
        v207 = v203 + v205;
        a3[1].i32[0] = v202;
        a3[1].f32[1] = v207;
        v208 = ggl::DebugConsole::drawLine(a3, &v254, v205);
        v251 = __PAIR64__(v206, v204);
        a3[1].i32[0] = v204;
        a3[1].f32[1] = v207;
        ggl::DebugConsole::drawLine(a3, &v251, v208);
      }
    }
  }
}