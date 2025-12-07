void geo::_retain_ptr<VKRouteContextObserverThunk * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1BCC0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKRouteContextObserverThunk * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1BCC0;

  return a1;
}

void geo::_retain_ptr<VKRouteLineObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1BCE0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKRouteLineObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1BCE0;

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::LabelTransitRoute>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 336);
  std::vector<std::shared_ptr<md::RouteWaypointLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteWaypointLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 328);
  *(a1 + 328) = 0;
  if (v2)
  {
    std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 6));
    v4 = v2;
    std::vector<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
    MEMORY[0x1B8C62190](v2, 0x60C40DCD2FBCELL);
  }

  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 296));
  std::vector<geo::Mercator2<double>,geo::allocator_adapter<geo::Mercator2<double>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 264));
  std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*(a1 + 184));
  v4 = (a1 + 112);
  std::vector<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::NodeInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (a1 + 80);
  std::vector<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelTransitRoute::LegInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  *(a1 + 48) = &unk_1F2A4C308;

  *(a1 + 24) = &unk_1F2A580E8;
  v3 = *(a1 + 32);
}

void std::__shared_ptr_emplace<md::LabelTransitRoute>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1BD48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelTransitSupport::findColorForTransitLine(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  v9 = *(a2 + 40);
  v10 = v9 ^ a4;
  v11 = *(a1 + 376);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = v9 ^ a4;
      if (v10 >= *&v11)
      {
        v13 = v10 % *&v11;
      }
    }

    else
    {
      v13 = (*&v11 - 1) & v10;
    }

    v14 = *(*(a1 + 368) + 8 * v13);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (i[2] == v9 && *(i + 24) == a4)
          {
            for (j = 0; j != 4; ++j)
            {
              *(a3 + j) = *(i + j + 32);
            }

            return;
          }
        }

        else
        {
          if (v12.u32[0] > 1uLL)
          {
            if (v16 >= *&v11)
            {
              v16 %= *&v11;
            }
          }

          else
          {
            v16 &= *&v11 - 1;
          }

          if (v16 != v13)
          {
            break;
          }
        }
      }
    }
  }

  if (*(a1 + 408) >= 0x7D0uLL)
  {
    std::__hash_table<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,md::LabelTransitSupport::TransitLineColorKeyHash,std::equal_to<std::pair<unsigned long long,BOOL>>,true>,std::__unordered_map_equal<std::pair<unsigned long long,BOOL>,std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,std::equal_to<std::pair<unsigned long long,BOOL>>,md::LabelTransitSupport::TransitLineColorKeyHash,true>,geo::allocator_adapter<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,mdm::zone_mallocator>>::clear(a1 + 368);
  }

  if (a4)
  {
    std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,FeatureStyleAttributes const&,0>(&v82, *(a2 + 24));
  }

  md::LabelStyleCache::styleQueryForFeatureAttributes(&v82, (*(*(a1 + 16) + 336) + 184), (a2 + 24), 0);
  v18 = v82;
  v19 = *(&v82 + 1);
  if (*(&v82 + 1))
  {
    atomic_fetch_add_explicit((*(&v82 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v81 = *(&v18 + 1);
  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v82, v18, *(&v18 + 1));
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (v84 != 1)
  {
    goto LABEL_55;
  }

  v79 = *(a1 + 16);
  v20 = *(*(v79 + 424) + 29);
  v4 = *(v82 + 24);
  if (v20 >= 0x17)
  {
    v21 = 23;
  }

  else
  {
    v21 = *(*(v79 + 424) + 29);
  }

  v80 = v21;
  v22 = *(v4 + 12);
  if (v22 == 2)
  {
    v23 = *(v4 + 16);
    if (v23)
    {
      v24 = *(v23 + 72);
      if (v24)
      {
        v25 = *v24 + 120 * *(v24 + v80 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0x5Cu) != *(v25 + 12))
        {
          goto LABEL_49;
        }
      }

      if (*(v4 + 56))
      {
        v26 = *(v4 + 48);
        v27 = 8 * *(v4 + 56);
        while (1)
        {
          v78 = v27;
          v28 = v26;
          v29 = *(*v26 + 72);
          if (v29)
          {
            v30 = *v29 + 120 * *(v29 + v80 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v30, 0x5Cu) != *(v30 + 12))
            {
              goto LABEL_49;
            }
          }

          v26 = v28 + 8;
          v22 = 1;
          v27 = v78 - 8;
          if (v78 == 8)
          {
            goto LABEL_46;
          }
        }
      }
    }

    v22 = 1;
  }

LABEL_46:
  v32 = *(v4 + 16 * v22 + 16);
  if (!v32)
  {
LABEL_55:
    v38 = (*(*a1 + 16))(&v85, a1, a2);
    *a3 = v85.i32[0];
    goto LABEL_56;
  }

  v33 = *(v32 + 72);
  if (!v33 || (v34 = *v33 + 120 * *(v33 + v80 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v34, 0x5Cu) == *(v34 + 12)))
  {
    v40 = v4 + 16 * v22;
    if (*(v40 + 56))
    {
      v41 = *(v40 + 48);
      v4 = 8 * *(v40 + 56);
      while (1)
      {
        v42 = *(*v41 + 72);
        if (v42)
        {
          v43 = *v42 + 120 * *(v42 + v80 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v43, 0x5Cu) != *(v43 + 12))
          {
            goto LABEL_49;
          }
        }

        v41 += 8;
        v4 -= 8;
        if (!v4)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_49:
  v35 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(v79 + 112), *(*(v79 + 112) + 8));
  md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(&v85, v35, &v82, v20, 1u, v36, v37);
  v39 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v85, vdupq_n_s32(0x437F0000u))));
  *a3 = vuzp1_s8(v39, v39).u32[0];
LABEL_56:
  v44 = *(a1 + 376);
  if (!v44)
  {
    goto LABEL_77;
  }

  v45 = vcnt_s8(v44);
  v45.i16[0] = vaddlv_u8(v45);
  if (v45.u32[0] > 1uLL)
  {
    v4 = v10;
    if (v10 >= v44)
    {
      v4 = v10 % v44;
    }
  }

  else
  {
    v4 = (v44 - 1) & v10;
  }

  v46 = *(*(a1 + 368) + 8 * v4);
  if (!v46 || (v47 = *v46) == 0)
  {
LABEL_77:
    v50 = mdm::zone_mallocator::instance(v38);
    v51 = pthread_rwlock_rdlock((v50 + 32));
    if (v51)
    {
      geo::read_write_lock::logFailure(v51, "read lock", v52);
    }

    v47 = malloc_type_zone_malloc(*v50, 0x28uLL, 0x102004057DAB957uLL);
    atomic_fetch_add((v50 + 24), 1u);
    geo::read_write_lock::unlock((v50 + 32));
    *v47 = 0;
    *(v47 + 1) = v10;
    *(v47 + 2) = v9;
    v47[24] = 0;
    *(v47 + 7) = *&v86[3];
    *(v47 + 25) = *v86;
    v54 = (*(a1 + 408) + 1);
    v55 = *(a1 + 416);
    if (v44 && (v55 * v44) >= v54)
    {
LABEL_125:
      v73 = *(a1 + 368);
      v74 = *(v73 + 8 * v4);
      if (v74)
      {
        *v47 = *v74;
        v77 = v81;
      }

      else
      {
        *v47 = *(a1 + 392);
        *(a1 + 392) = v47;
        *(v73 + 8 * v4) = a1 + 392;
        v77 = v81;
        if (!*v47)
        {
LABEL_134:
          ++*(a1 + 408);
          goto LABEL_135;
        }

        v75 = *(*v47 + 8);
        if ((v44 & (v44 - 1)) != 0)
        {
          if (v75 >= v44)
          {
            v75 %= v44;
          }
        }

        else
        {
          v75 &= v44 - 1;
        }

        v74 = (*(a1 + 368) + 8 * v75);
      }

      *v74 = v47;
      goto LABEL_134;
    }

    v56 = v44 < 3 || (v44 & (v44 - 1)) != 0;
    v57 = v56 | (2 * v44);
    v58 = vcvtps_u32_f32(v54 / v55);
    if (v57 <= v58)
    {
      v59 = v58;
    }

    else
    {
      v59 = v57;
    }

    if (v59 == 1)
    {
      v59 = 2;
    }

    else if ((v59 & (v59 - 1)) != 0)
    {
      prime = std::__next_prime(v59);
      v59 = prime;
    }

    v44 = *(a1 + 376);
    if (v59 > v44)
    {
      goto LABEL_92;
    }

    if (v59 < v44)
    {
      prime = vcvtps_u32_f32(*(a1 + 408) / *(a1 + 416));
      if (v44 < 3 || (v68 = vcnt_s8(v44), v68.i16[0] = vaddlv_u8(v68), v68.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v69 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v69;
        }
      }

      if (v59 <= prime)
      {
        v59 = prime;
      }

      if (v59 >= v44)
      {
        v44 = *(a1 + 376);
      }

      else
      {
        if (v59)
        {
LABEL_92:
          v60 = mdm::zone_mallocator::instance(prime);
          v61 = pthread_rwlock_rdlock((v60 + 32));
          if (v61)
          {
            geo::read_write_lock::logFailure(v61, "read lock", v62);
          }

          v63 = malloc_type_zone_malloc(*v60, 8 * v59, 0x2004093837F09uLL);
          atomic_fetch_add((v60 + 24), 1u);
          geo::read_write_lock::unlock((v60 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> **,0>((a1 + 368), v63);
          v64 = 0;
          *(a1 + 376) = v59;
          do
          {
            *(*(a1 + 368) + 8 * v64++) = 0;
          }

          while (v59 != v64);
          v65 = *(a1 + 392);
          if (v65)
          {
            v66 = v65[1];
            v67 = vcnt_s8(v59);
            v67.i16[0] = vaddlv_u8(v67);
            if (v67.u32[0] > 1uLL)
            {
              if (v66 >= v59)
              {
                v66 %= v59;
              }
            }

            else
            {
              v66 &= v59 - 1;
            }

            *(*(a1 + 368) + 8 * v66) = a1 + 392;
            v70 = *v65;
            if (*v65)
            {
              do
              {
                v71 = v70[1];
                if (v67.u32[0] > 1uLL)
                {
                  if (v71 >= v59)
                  {
                    v71 %= v59;
                  }
                }

                else
                {
                  v71 &= v59 - 1;
                }

                if (v71 != v66)
                {
                  v72 = *(a1 + 368);
                  if (!*(v72 + 8 * v71))
                  {
                    *(v72 + 8 * v71) = v65;
                    goto LABEL_116;
                  }

                  *v65 = *v70;
                  *v70 = **(v72 + 8 * v71);
                  **(v72 + 8 * v71) = v70;
                  v70 = v65;
                }

                v71 = v66;
LABEL_116:
                v65 = v70;
                v70 = *v70;
                v66 = v71;
              }

              while (v70);
            }
          }

          v44 = v59;
          goto LABEL_120;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> **,0>((a1 + 368), 0);
        v44 = 0;
        *(a1 + 376) = 0;
      }
    }

LABEL_120:
    if ((v44 & (v44 - 1)) != 0)
    {
      if (v10 >= v44)
      {
        v4 = v10 % v44;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v44 - 1) & v10;
    }

    goto LABEL_125;
  }

  while (1)
  {
    v48 = *(v47 + 1);
    if (v48 == v10)
    {
      break;
    }

    if (v45.u32[0] > 1uLL)
    {
      if (v48 >= v44)
      {
        v48 %= v44;
      }
    }

    else
    {
      v48 &= v44 - 1;
    }

    if (v48 != v4)
    {
      goto LABEL_77;
    }

LABEL_76:
    v47 = *v47;
    if (!v47)
    {
      goto LABEL_77;
    }
  }

  if (*(v47 + 2) != v9 || v47[24] != 0)
  {
    goto LABEL_76;
  }

  v77 = v81;
LABEL_135:
  for (k = 0; k != 4; ++k)
  {
    v47[k + 32] = *(a3 + k);
  }

  if (v84 == 1)
  {
    (*(*v82 + 56))(v82);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v83);
  }

  if (*(&v82 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v82 + 1));
  }

  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v77);
  }
}

void sub_1B2F78304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, char a19)
{
  geo::read_write_lock::unlock((v20 + 32));
  v23 = mdm::zone_mallocator::instance(v22);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *>>(v23, v19);
  if (a19 == 1)
  {
    (*(*a15 + 56))(a15);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(a1);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::pair<unsigned long long,BOOL>,geo::Color<unsigned char,4,(geo::ColorSpace)0>>,void *> *> *>(v3, v2);
  }
}

int8x8_t md::LabelTransitSupport::baseTransitLineColor@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>, uint8x8_t a4@<D0>)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (v6 && (md::createFeatureAttributeSet(v14, (a2 + 24)), ColorOverrideForAttributes = md::DataOverrideManager::getColorOverrideForAttributes(v6, v14, &v13), std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v14), ColorOverrideForAttributes))
  {
    v8 = vdupq_n_s32(0x437F0000u);
    v9 = v13;
  }

  else
  {
    a4.i32[0] = *(a2 + 76);
    v12 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a4))), vdupq_n_s32(0x3B808081u));
    geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(v14, &v12);
    v8 = vdupq_n_s32(0x437F0000u);
    v9 = v14[0];
  }

  v10 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v9, v8)));
  result = vuzp1_s8(v10, v10);
  *a3 = result.i32[0];
  return result;
}

void md::LabelTransitSupport::setExternalTransitNodeFeatures(void *a1, uint64_t **a2, uint64_t a3)
{
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](a1 + 16);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::clear(a1 + 20);
  atomic_load((a1[2] + 3426));
  v6 = *a2;
  if (*a2 != a2[1])
  {
    (*(**v6 + 16))();
    v7 = *(*v6 + 32);
    v8 = *(*v6 + 40);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      v9 = *(v7 + 33);
      if (*(v7 + 33))
      {
        v10 = *v7;
        if (*v10 == 42)
        {
          v11 = 0;
LABEL_8:
          if (LOWORD(v10[2 * v11 + 1]))
          {
            v41.__vftable = *(*v6 + 16);
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned long long,unsigned long long>((a1 + 20), v41.__vftable, &v41);
          }

          goto LABEL_14;
        }

        v11 = 0;
        v12 = v10 + 2;
        do
        {
          if (v9 - 1 == v11)
          {
            goto LABEL_14;
          }

          v13 = *v12;
          v12 += 2;
          ++v11;
        }

        while (v13 != 42);
        if (v11 < v9)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_14:
    operator new();
  }

  v14 = a1[17];
  v16 = *a3;
  v15 = *(a3 + 8);
  v17 = v15 - *a3;
  if (v17 >> 4 >= 1)
  {
    v18 = a1[18];
    if (v18 - v14 >= v17)
    {
      for (; v16 != v15; v14 += 2)
      {
        *v14 = *v16;
        v26 = v16[1];
        v14[1] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v16 += 2;
      }

      a1[17] = v14;
    }

    else
    {
      v19 = a1[16];
      v20 = (v17 >> 4) + ((v14 - v19) >> 4);
      if (v20 >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = (v14 - v19) >> 4;
      v22 = v18 - v19;
      if (v22 >> 3 > v20)
      {
        v20 = v22 >> 3;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF0)
      {
        v23 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v20;
      }

      v43 = a1 + 19;
      if (v23)
      {
        v24 = mdm::zone_mallocator::instance(v5);
        v25 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelFeature>>(v24, v23);
      }

      else
      {
        v25 = 0;
      }

      v27 = &v25[16 * v21];
      v42 = &v25[16 * v23];
      v28 = &v27[v17];
      v29 = v27;
      do
      {
        *v29 = *v16;
        v30 = v16[1];
        *(v29 + 1) = v30;
        if (v30)
        {
          atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
        }

        v29 += 16;
        v16 += 2;
      }

      while (v29 != v28);
      memcpy(&v27[v17], v14, a1[17] - v14);
      v31 = a1[16];
      v32 = &v28[a1[17] - v14];
      a1[17] = v14;
      v33 = &v27[-(v14 - v31)];
      memcpy(v33, v31, v14 - v31);
      v34 = a1[16];
      a1[16] = v33;
      a1[17] = v32;
      v35 = a1[18];
      a1[18] = v42;
      v41.__shared_weak_owners_ = v34;
      v42 = v35;
      v41.__vftable = v34;
      v41.__shared_owners_ = v34;
      std::__split_buffer<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(&v41);
      v14 = a1[17];
    }
  }

  v36 = a1[2];
  if (a1[16] != v14)
  {
    md::LabelFeatureStyler::styleExternalFeatures(*(v36 + 296), a1 + 16);
    v36 = a1[2];
  }

  *(v36 + 3034) = 1;
  v37 = atomic_load((v36 + 3053));
  if (v37)
  {
    v38 = *(v36 + 136);
    if (v38)
    {
      v39 = *(v38 + 56);
      if (v39)
      {
        std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v39, v36, 9);
      }
    }
  }
}

void sub_1B2F78A74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2F78AA4()
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v2);
  if (!v0)
  {
    JUMPOUT(0x1B2F78A9CLL);
  }

  JUMPOUT(0x1B2F78A94);
}

void sub_1B2F78B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelTransitSupport::routeContextStateDidChange(void)::$_0,std::allocator<md::LabelTransitSupport::routeContextStateDidChange(void)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  *(v1 + 112) = 1;
  v2 = *(v1 + 16);
  *(v2 + 3038) = 1;
  *(v2 + 3040) = 1;
  LOBYTE(v1) = atomic_load((v2 + 3053));
  if (v1)
  {
    v3 = *(v2 + 136);
    if (v3)
    {
      result = *(v3 + 56);
      if (result)
      {
        return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(result, v2, 9);
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<md::LabelTransitSupport::routeContextStateDidChange(void)::$_0,std::allocator<md::LabelTransitSupport::routeContextStateDidChange(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1BD00;
  a2[1] = v2;
  return result;
}

void sub_1B2F78CE0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VKRouteContextObserverThunk;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

std::__shared_weak_count *std::__split_buffer<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelFeature>>(v5, v4);
  }

  return v1;
}

void std::__shared_ptr_emplace<md::TransitNodeLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1BE20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelTransitSupport::setExternalTransitShieldFeatures(void *a1, uint64_t **a2)
{
  v49[4] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 27);
  if (a1 + 27 == a2)
  {
    j = a1[28];
  }

  else
  {
    v5 = *a2;
    v4 = a2[1];
    v6 = v4 - *a2;
    v7 = a1[29];
    v8 = a1[27];
    if (v7 - v8 < v6)
    {
      v9 = v6 >> 4;
      if (v8)
      {
        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](a1 + 27);
        operator delete(*v3);
        v7 = 0;
        *v3 = 0;
        v3[1] = 0;
        v3[2] = 0;
      }

      if (!(v9 >> 60))
      {
        v10 = v7 >> 3;
        if (v7 >> 3 <= v9)
        {
          v10 = v9;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (!(v11 >> 60))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v11);
        }
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = a1[28] - v8;
    if (v13 >= v6)
    {
      j = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*a2, a2[1], v8);
      for (i = a1[28]; i != j; i -= 2)
      {
        v17 = *(i - 1);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v17);
        }
      }
    }

    else
    {
      v14 = (v5 + v13);
      std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*a2, (v5 + v13), v8);
      for (j = a1[28]; v14 != v4; j += 2)
      {
        *j = *v14;
        v15 = v14[1];
        j[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v14 += 2;
      }
    }

    a1[28] = j;
  }

  memset(v49, 0, 24);
  v48 = 0;
  v46 = v47;
  v47[0] = 0;
  if (*v3 != j)
  {
    atomic_load((a1[2] + 3426));
    v18 = a1[27];
    v44 = a1[28];
    if (v18 != v44)
    {
      v19 = a1 + 35;
      v42 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v43 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      do
      {
        v20 = *v19;
        if (!*v19)
        {
          goto LABEL_38;
        }

        v21 = *v18;
        v22 = a1 + 35;
        do
        {
          v23 = md::LabelExternalRoadFeatureLess::operator()(*(v20 + 32), v21);
          if (v23)
          {
            v24 = 8;
          }

          else
          {
            v24 = 0;
          }

          if (!v23)
          {
            v22 = v20;
          }

          v20 = *(v20 + v24);
        }

        while (v20);
        if (v22 == v19 || (v25 = md::LabelExternalRoadFeatureLess::operator()(v21, v22[4]), (v25 & 1) != 0))
        {
LABEL_38:
          operator new();
        }

        v26 = v22[6];
        v27 = v47[0];
        k = v47;
        v29 = v47;
        if (v47[0])
        {
          v30 = v47[0];
          do
          {
            v31 = v30[4];
            if (v26 >= v31)
            {
              if (v31 >= v26)
              {
                goto LABEL_58;
              }

              ++v30;
            }

            v30 = *v30;
          }

          while (v30);
          for (k = v47; ; v27 = *k)
          {
            v29 = k;
            if (!v27)
            {
              break;
            }

            while (1)
            {
              k = v27;
              v32 = v27[4];
              if (v26 < v32)
              {
                break;
              }

              if (v32 >= v26)
              {
                goto LABEL_57;
              }

              v27 = k[1];
              if (!v27)
              {
                v29 = k + 1;
                goto LABEL_54;
              }
            }
          }
        }

LABEL_54:
        v33 = mdm::zone_mallocator::instance(v25);
        v34 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<md::LabelFeature *,void *>>(v33);
        v34[4] = v26;
        *v34 = 0;
        v34[1] = 0;
        v34[2] = k;
        *v29 = v34;
        if (*v46)
        {
          v46 = *v46;
          v34 = *v29;
        }

        v25 = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v47[0], v34);
        ++v48;
LABEL_57:
        v35 = *(v26 + 192);
        v36 = mdm::zone_mallocator::instance(v25);
        v37 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v36);
        *v37 = 4;
        *(v37 + 8) = 0u;
        *(v37 + 24) = 0u;
        *(v37 + 40) = 0u;
        *(v37 + 56) = 0u;
        *(v37 + 72) = 0u;
        *(v37 + 11) = 0;
        *(v37 + 104) = 0u;
        *(v37 + 120) = 0u;
        *(v37 + 17) = 0;
        *(v37 + 72) = 255;
        *(v37 + 37) = 0;
        *(v37 + 38) = 0;
        *(v37 + 20) = 0;
        v37[168] = 1;
        *(v37 + 22) = 0;
        *(v37 + 23) = 0;
        *(v37 + 12) = v43;
        *(v37 + 13) = v42;
        v37[224] = 0;
        *(v37 + 57) = 0;
        *(v37 + 116) = 256;
        v37[234] = 0;
        *(v37 + 30) = 0;
        *(v37 + 31) = 0;
        v45 = v37;
        md::LabelLineStore::queueWorkUnit(v35, &v45);
        std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v45, 0);
LABEL_58:
        md::LabelLineStore::addExternalRoadFeature(*(v26 + 192), v18);
        v18 += 2;
      }

      while (v18 != v44);
    }

    md::LabelFeatureStyler::styleExternalFeatures(*(a1[2] + 296), v49);
  }

  v38 = a1[2];
  *(v38 + 3034) = 1;
  v39 = atomic_load((v38 + 3053));
  if (v39)
  {
    v40 = *(v38 + 136);
    if (v40)
    {
      v41 = *(v40 + 56);
      if (v41)
      {
        std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v41, v38, 9);
      }
    }
  }

  std::__tree<md::LabelFeature *,std::less<md::LabelFeature *>,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::destroy(v47[0]);
  v45 = v49;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v45);
}

void sub_1B2F796E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27, void *a28)
{
  std::__tree<md::LabelFeature *,std::less<md::LabelFeature *>,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::destroy(a28);
  a27 = (v28 - 128);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a27);
  _Unwind_Resume(a1);
}

void sub_1B2F797FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelTransitSupport::updateRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelTransitSupport::updateRouteLine(VKRouteLine *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[43];
  if (v2)
  {
    memset(v3, 0, sizeof(v3));
    md::LabelTransitRouteLine::generateTransitShieldFeatures(v2, v1[2], v3);
    md::LabelTransitSupport::setExternalTransitShieldFeatures(v1, v3);
    v4 = v3;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v4);
  }
}

void sub_1B2F7987C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelTransitSupport::updateRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelTransitSupport::updateRouteLine(VKRouteLine *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1BDD8;
  a2[1] = v2;
  return result;
}

void sub_1B2F7998C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKRouteLineObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelTransitRouteLine>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 48) = &unk_1F2A45FC0;

  *(a1 + 24) = &unk_1F2A4C308;
  v2 = *(a1 + 32);
}

void std::__shared_ptr_emplace<md::LabelTransitRouteLine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1BDA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__tree<md::LabelFeature *,std::less<md::LabelFeature *>,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<md::LabelFeature *,std::less<md::LabelFeature *>,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::destroy(*result);
    v2 = std::__tree<md::LabelFeature *,std::less<md::LabelFeature *>,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::destroy(result[1]);
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<md::LabelFeature *,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x28uLL, 0x1020040FAE78CE4uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

BOOL md::LabelExternalRoadFeatureLess::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v5 = a1[23];
  v4 = a1[24];
  v6 = (v4 - v5) >> 4;
  v7 = a2[23];
  v8 = a2[24] - v7;
  if (v6 == v8 >> 4)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if (v6 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = (v4 - v5) >> 4;
    }

    while (1)
    {
      v10 = *v5;
      v11 = *(*v5 + 48);
      v12 = *v7;
      v13 = *(*v7 + 48);
      v14 = v11 >= v13;
      if (v11 != v13)
      {
        break;
      }

      v15 = *(v10 + 31);
      if (v15 >= 0)
      {
        v16 = *(v10 + 31);
      }

      else
      {
        v16 = *(v10 + 16);
      }

      v17 = *(v12 + 31);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v12 + 16);
      }

      if (v16 != v17)
      {
        return (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v10 + 8), (v12 + 8)) & 0x80u) != 0;
      }

      v19 = v15 >= 0 ? (v10 + 8) : *(v10 + 8);
      v20 = v18 >= 0 ? (v12 + 8) : *(v12 + 8);
      if (memcmp(v19, v20, v16))
      {
        return (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v10 + 8), (v12 + 8)) & 0x80u) != 0;
      }

      if (*(v10 + 56) != *(v12 + 56))
      {
        if (*(v10 + 56) >= *(v12 + 56))
        {
          return 0;
        }

        v22 = 0;
        do
        {
          v23 = v22;
          if (v22 == 3)
          {
            break;
          }

          v24 = *(v10 + 57 + v22);
          v25 = *(v12 + 57 + v22++);
        }

        while (v24 < v25);
        return v23 > 2;
      }

      v7 += 2;
      v5 += 2;
      if (!--v9)
      {
        return 0;
      }
    }
  }

  else
  {
    v14 = v6 >= v8 >> 4;
  }

  return !v14;
}

void std::__shared_ptr_emplace<md::UniLineLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A46090;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninMapEngineMode::applyRenderLayerSettings(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 41936);
  v4 = *v3;
  v5 = v3[1];
  while (v4 != v5)
  {
    if (*v4 == 9)
    {
      if (v4 != v5)
      {
        if (*(v4 + 8))
        {
          std::__hash_table<std::__hash_value_type<unsigned char,md::DataRequirement>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,md::DataRequirement>>>::__erase_unique<unsigned char>(a3, 3u);
        }
      }

      return;
    }

    v4 += 16;
  }
}

void md::MuninMapEngineMode::~MuninMapEngineMode(md::MuninMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t **md::MuninMapEngineMode::MuninMapEngineMode(uint64_t **this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = md::MapEngineMode::MapEngineMode(this, 17);
  *v2 = &unk_1F2A1BE58;
  *(v2 + 49) = 1;
  *(v2 + 52) = 21;
  *(v2 + 224) = 259;
  *(v2 + 56) = 0x3FF4F1A6C638D03FLL;
  LODWORD(v8) = 67305985;
  md::MapEngineMode::addRequiredRenderLayers(v2, &v8, 4);
  gdc::LogicExecutionGraphBuilder::addLogic<md::CameraLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::ElevationLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::GeometryLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::GridLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LabelsLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::MapZoomLevelStyleLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LayerDataLogic>((this + 29));
  v7[0] = 0x669A8EDAC04FCBF1;
  v7[1] = "md::MuninSceneLogic]";
  v7[2] = 19;
  v5[0] = 0xC83717EF586624DCLL;
  v5[1] = "md::MuninSceneContext]";
  v5[2] = 21;
  v6 = 1;
  v10[1] = unk_1E7B37F58;
  v10[2] = xmmword_1E7B37F68;
  v10[3] = unk_1E7B37F78;
  *(&v8 + 1) = v10;
  v9 = 3;
  *&v8 = &unk_1F2A4B5F0;
  v11 = 25;
  v10[0] = xmmword_1E7B37F48;
  v4[1] = v5;
  v4[2] = 0;
  v4[0] = &unk_1F2A4C258;
  gdc::LogicExecutionGraphBuilder::addLogic((this + 29), v7, v5, 0, &v8, v4);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SettingsLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::SharedResourcesLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::StyleLogic>((this + 29));
  LODWORD(v8) = 36;
  md::MapEngineMode::addRequiredMapDataTypes(this, &v8, 1);
  v8 = xmmword_1B33B1530;
  md::MapEngineMode::addOptionalMapDataTypes(this, &v8, 4);
  return this;
}

void sub_1B2F7A64C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B2F7B38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  v37 = *(v35 - 232);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_64c39_ZTSN3geo12Coordinate3DINS_7RadiansEdEE88c44_ZTSN3geo4UnitINS_20MeterUnitDescriptionEdEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  return result;
}

__n128 __copy_helper_block_ea8_56c39_ZTSN3geo12Coordinate3DINS_7RadiansEdEE(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[1] = a2[3].n128_u64[1];
  result = a2[4];
  a1[4] = result;
  return result;
}

void sub_1B2F7C058(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::GlobeStars::StarVertex>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::GlobeStars::StarVertex>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::GlobeStars::StarVertex>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::GlobeStars::StarVertex>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::GlobeStars::StarVertex>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::GlobeStars::StarVertex>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1C020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::GlobeStars::StarsMesh::~StarsMesh(ggl::GlobeStars::StarsMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::GlobeStars::StarsMesh::~StarsMesh(ggl::GlobeStars::StarsMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::GlobeStars::StarVertex>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::GlobeStars::StarVertex>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::GlobeStars::StarsPipelineSetup::~StarsPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1DBB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1DBD0;
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

void ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1DBB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1DAE0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1DB00;
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

void ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1DAE0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1DA10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1DA30;
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

void ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1DA10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::erq::EncodeRenderQueue>,std::allocator<ecs2::ForwardToExecute<md::erq::EncodeRenderQueue>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1C098;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::FlyoverMetaLayerDataSource::createLayerData(void x0_0, const gdc::LayerDataRequestKey **a1, unsigned __int16 **a2)
{
  gdc::LayerDataSource::getResourceFromMap(__p, 49, *a2, a2[1]);
  v4 = __p[0];
  v3 = __p[1];
  if (__p[1])
  {
    atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  if (v4)
  {
    if (v4[18])
    {
      operator new();
    }
  }

  operator new();
}

void sub_1B2F7D094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v13);
  operator delete(v15);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::FlyoverMetaTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1C210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::FlyoverMetaLayerDataSource::constructRequests(uint64_t a1, char **a2, char **a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      v6 = **v4;
      v7 = *(*v4 + 2);
      v13[0] = gdc::ResourceKey::getInt32(v7, 0);
      v13[1] = gdc::ResourceKey::getInt32(v7, 1u);
      v13[2] = gdc::ResourceKey::getInt32(v7, 2u);
      v13[3] = gdc::ResourceKey::getInt32(v7, 3u);
      v13[4] = gdc::ResourceKey::getInt32(v7, 4u);
      if ((*(v5 + 12) & 0x100000000) != 0)
      {
        v8 = *(v5 + 12);
      }

      else
      {
        v8 = 2147483646;
      }

      gdc::ResourceKey::ResourceKey(v10, v6, 49, v13, 5, *(v5 + 14), v8);
      v9 = *v4;
      v4 += 2;
      gdc::LayerDataRequest::request(v9, v10, 0);
      if (v11 != v12)
      {
        free(v11);
      }
    }

    while (v4 != a3);
  }
}

void md::FlyoverMetaLayerDataSource::~FlyoverMetaLayerDataSource(md::FlyoverMetaLayerDataSource *this)
{
  *this = &unk_1F2A1C170;
  *(this + 74) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1C170;
  *(this + 74) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);
}

void md::Logic<md::SkyLogic,md::SkyLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

double md::SkyLogic::defaultDayFillColor(md::SkyLogic *this)
{
  {
    v3 = this;
    this = v3;
    if (v2)
    {
      geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::SkyLogic::defaultDayFillColor(void)::skyDayDefaultFillColor, &md::kSkyDayDefaultFillColor);
      this = v3;
    }
  }

  result = *&md::SkyLogic::defaultDayFillColor(void)::skyDayDefaultFillColor;
  *this = md::SkyLogic::defaultDayFillColor(void)::skyDayDefaultFillColor;
  return result;
}

double md::SkyLogic::defaultDayHorizonColor(md::SkyLogic *this)
{
  {
    v3 = this;
    this = v3;
    if (v2)
    {
      geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::SkyLogic::defaultDayHorizonColor(void)::skyDayDefaultHorizonColor, &md::kSkyDayDefaultHorizonColor);
      this = v3;
    }
  }

  result = *&md::SkyLogic::defaultDayHorizonColor(void)::skyDayDefaultHorizonColor;
  *this = md::SkyLogic::defaultDayHorizonColor(void)::skyDayDefaultHorizonColor;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN2md8SkyLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextENS2_17StyleLogicContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15SkyLogicContextEE3__0NS_9allocatorISK_EEFvNS2_17StyleManagerEventEEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1C3B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::Logic<md::SkyLogic,md::SkyLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x7C7EC6C7C111B0D0 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext>(*(a2 + 8));
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

uint64_t gdc::ObjectHolder<md::SkyLogicContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::SkyLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A1C400;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1000C40AACD1071);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::SkyLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A1C400;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AACD1071);
  }

  return a1;
}

void md::SkyLogic::~SkyLogic(md::SkyLogic *this)
{
  md::SkyLogic::~SkyLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1C248;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void geo::_retain_ptr<NSObject  {objcproto17OS_dispatch_queue}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1C428;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSObject  {objcproto17OS_dispatch_queue}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto17OS_dispatch_queue}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1C428;

  return a1;
}

void geo::_retain_ptr<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1C970;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1C970;

  return a1;
}

void geo::_retain_ptr<NSObject  {objcproto20OS_dispatch_workloop}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto20OS_dispatch_workloop}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1C448;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSObject  {objcproto20OS_dispatch_workloop}* {__strong},geo::_retain_dispatch_arc<NSObject  {objcproto20OS_dispatch_workloop}* {__strong}>,geo::_release_dispatch_arc,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1C448;

  return a1;
}

void std::__shared_ptr_emplace<md::TaskContext>::__on_zero_shared(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 134217984;
    v4 = a1 + 24;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "Destroy TaskContext:%p", &v3, 0xCu);
  }

  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 168), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 160), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 152), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 144), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 136), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 128), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 120), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 112), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 104), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 96), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 88), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 80), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 72), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 64), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 56), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 48), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 40), 0);
  std::unique_ptr<geo::TaskQueue>::reset[abi:nn200100]((a1 + 32), 0);
}

void std::__shared_ptr_emplace<md::TaskContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A21808;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TaskContext::flushTileDecodeQueues(md::TaskContext *this)
{
  v12[4] = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "flushTileDecodeQueues Start", v8, 2u);
  }

  v3 = *(this + 3);
  v12[0] = &unk_1F2A1C468;
  v12[3] = v12;
  geo::TaskQueue::barrierSync(v3, v12);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v12);
  v4 = *(this + 14);
  v11[0] = &unk_1F2A1C4B0;
  v11[3] = v11;
  geo::TaskQueue::barrierSync(v4, v11);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v11);
  v5 = *(this + 5);
  v10[0] = &unk_1F2A1C4F8;
  v10[3] = v10;
  geo::TaskQueue::barrierSync(v5, v10);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v10);
  v6 = *(this + 16);
  v9[0] = &unk_1F2A1C540;
  v9[3] = v9;
  geo::TaskQueue::barrierSync(v6, v9);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v9);
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v7 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "flushTileDecodeQueues Finish", v8, 2u);
  }
}

void sub_1B2F7DECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

float altitude::util::computeLocalClipPlanes(uint64_t a1, uint64_t a2, double a3)
{
  v48[24] = *MEMORY[0x1E69E9840];
  gm::Box<double,3>::operator*(v47, a1, a3);
  gm::Box<double,3>::corners(v47, v48);
  for (i = 0; i != 3; ++i)
  {
    v5 = *&v48[i + 21];
    v43[i] = v5;
  }

  for (j = 0; j != 3; ++j)
  {
    v7 = *&v48[j + 15];
    v42[j] = v7;
  }

  for (k = 0; k != 3; ++k)
  {
    v9 = *&v48[k + 3];
    v41[k] = v9;
  }

  gm::Plane3<float>::Plane3(&v44, v43, v42, v41);
  v10 = 0;
  *a2 = v44;
  *(a2 + 8) = v45;
  *(a2 + 12) = v46;
  do
  {
    v11 = *&v48[v10 + 15];
    v43[v10++] = v11;
  }

  while (v10 != 3);
  for (m = 0; m != 3; ++m)
  {
    v13 = *&v48[m + 12];
    v42[m] = v13;
  }

  for (n = 0; n != 3; ++n)
  {
    v15 = *&v48[n];
    v41[n] = v15;
  }

  gm::Plane3<float>::Plane3(&v44, v43, v42, v41);
  v16 = 0;
  *(a2 + 16) = v44;
  *(a2 + 24) = v45;
  *(a2 + 28) = v46;
  do
  {
    v17 = *&v48[v16 + 12];
    v43[v16++] = v17;
  }

  while (v16 != 3);
  for (ii = 0; ii != 3; ++ii)
  {
    v19 = *&v48[ii + 18];
    v42[ii] = v19;
  }

  for (jj = 0; jj != 3; ++jj)
  {
    v21 = *&v48[jj + 6];
    v41[jj] = v21;
  }

  gm::Plane3<float>::Plane3(&v44, v43, v42, v41);
  v22 = 0;
  *(a2 + 32) = v44;
  *(a2 + 40) = v45;
  *(a2 + 44) = v46;
  do
  {
    v23 = *&v48[v22 + 18];
    v43[v22++] = v23;
  }

  while (v22 != 3);
  for (kk = 0; kk != 3; ++kk)
  {
    v25 = *&v48[kk + 21];
    v42[kk] = v25;
  }

  for (mm = 0; mm != 3; ++mm)
  {
    v27 = *&v48[mm + 9];
    v41[mm] = v27;
  }

  gm::Plane3<float>::Plane3(&v44, v43, v42, v41);
  v28 = 0;
  *(a2 + 48) = v44;
  *(a2 + 56) = v45;
  *(a2 + 60) = v46;
  do
  {
    v29 = *&v48[v28 + 9];
    v43[v28++] = v29;
  }

  while (v28 != 3);
  for (nn = 0; nn != 3; ++nn)
  {
    v31 = *&v48[nn + 3];
    v42[nn] = v31;
  }

  for (i1 = 0; i1 != 3; ++i1)
  {
    v33 = *&v48[i1];
    v41[i1] = v33;
  }

  gm::Plane3<float>::Plane3(&v44, v43, v42, v41);
  v34 = 0;
  *(a2 + 64) = v44;
  *(a2 + 72) = v45;
  *(a2 + 76) = v46;
  do
  {
    v35 = *&v48[v34 + 21];
    v43[v34++] = v35;
  }

  while (v34 != 3);
  for (i2 = 0; i2 != 3; ++i2)
  {
    v37 = *&v48[i2 + 18];
    v42[i2] = v37;
  }

  for (i3 = 0; i3 != 3; ++i3)
  {
    v39 = *&v48[i3 + 12];
    v41[i3] = v39;
  }

  gm::Plane3<float>::Plane3(&v44, v43, v42, v41);
  *(a2 + 80) = v44;
  *(a2 + 88) = v45;
  result = v46;
  *(a2 + 92) = v46;
  return result;
}

void md::MuninRoadNetworkData::~MuninRoadNetworkData(md::MuninRoadNetworkData *this)
{
  md::MuninRoadNetworkData::~MuninRoadNetworkData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1C588;
  *(this + 80) = &unk_1F2A1C5C8;
  v2 = *(this + 104);
  if (v2)
  {
    *(this + 105) = v2;
    operator delete(v2);
  }

  v3 = *(this + 101);
  if (v3)
  {
    *(this + 102) = v3;
    operator delete(v3);
  }

  v4 = *(this + 98);
  if (v4)
  {
    *(this + 99) = v4;
    operator delete(v4);
  }

  v5 = *(this + 95);
  if (v5)
  {
    *(this + 96) = v5;
    operator delete(v5);
  }

  v6 = *(this + 94);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  std::unique_ptr<geo::Pool<md::MuninRoadEdge>>::reset[abi:nn200100]((this + 736), 0);
  std::unique_ptr<geo::Pool<md::MuninJunction>>::reset[abi:nn200100](this + 91, 0);

  md::MapTileData::~MapTileData(this);
}

mdm::zone_mallocator *std::unique_ptr<geo::Pool<md::MuninRoadEdge>>::reset[abi:nn200100](mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v26 = 0;
    v27 = 0;
    v25 = &v26;
    v4 = (v2 + 40);
    v3 = *(v2 + 40);
    if (v3)
    {
      do
      {
        result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v25, v3, (v2 + 40));
        v3 = **v4;
        *v4 = v3;
      }

      while (v3);
      v5 = v27;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v2 + 24);
    v7 = *v2;
    v8 = (v2 + 8);
    v9 = v5 == *(v2 + 16) * v6 || v7 == v8;
    if (!v9)
    {
      v10 = *(v2 + 24);
      do
      {
        if (v10)
        {
          v11 = 0;
          v12 = v7[4];
          do
          {
            v13 = v12 + 120 * v11;
            v14 = v26;
            if (!v26)
            {
              goto LABEL_23;
            }

            v15 = &v26;
            do
            {
              v16 = v14;
              v17 = v15;
              v18 = v14[4];
              if (v18 >= v13)
              {
                v15 = v14;
              }

              v14 = v14[v18 < v13];
            }

            while (v14);
            if (v15 == &v26)
            {
              goto LABEL_23;
            }

            if (v18 < v13)
            {
              v16 = v17;
            }

            if (v13 < v16[4])
            {
LABEL_23:
              if (*(v13 + 39) < 0)
              {
                v19 = *(v13 + 16);
                v20 = mdm::zone_mallocator::instance(result);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v20, v19);
                v6 = *(v2 + 24);
              }
            }

            ++v11;
            v10 = v6;
          }

          while (v11 < v6);
        }

        v21 = v7[1];
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
            v22 = v7[2];
            v9 = *v22 == v7;
            v7 = v22;
          }

          while (!v9);
        }

        v7 = v22;
      }

      while (v22 != v8);
      v7 = *v2;
    }

    if (v7 != v8)
    {
      do
      {
        free(v7[4]);
        v23 = v7[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v7[2];
            v9 = *v24 == v7;
            v7 = v24;
          }

          while (!v9);
        }

        v7 = v24;
      }

      while (v24 != v8);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 8));
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = v8;
    *(v2 + 40) = 0;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v26);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 8));

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B2F7E8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<geo::Pool<md::MuninJunction>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v24 = 0;
    v25 = 0;
    v23 = &v24;
    v4 = (v2 + 40);
    v3 = *(v2 + 40);
    if (v3)
    {
      do
      {
        std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v23, v3, (v2 + 40));
        v3 = **v4;
        *v4 = v3;
      }

      while (v3);
      v5 = v25;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v2 + 24);
    v7 = *v2;
    v8 = (v2 + 8);
    v9 = v5 == *(v2 + 16) * v6 || v7 == v8;
    if (!v9)
    {
      v10 = *(v2 + 24);
      do
      {
        if (v10)
        {
          v11 = 0;
          v12 = v7[4];
          do
          {
            v13 = (v12 + 72 * v11);
            v14 = v24;
            if (!v24)
            {
              goto LABEL_23;
            }

            v15 = &v24;
            do
            {
              v16 = v14;
              v17 = v15;
              v18 = v14[4];
              if (v18 >= v13)
              {
                v15 = v14;
              }

              v14 = v14[v18 < v13];
            }

            while (v14);
            if (v15 == &v24)
            {
              goto LABEL_23;
            }

            if (v18 < v13)
            {
              v16 = v17;
            }

            if (v13 < v16[4])
            {
LABEL_23:
              (**v13)(v13);
              v6 = *(v2 + 24);
            }

            ++v11;
            v10 = v6;
          }

          while (v11 < v6);
        }

        v19 = v7[1];
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
            v20 = v7[2];
            v9 = *v20 == v7;
            v7 = v20;
          }

          while (!v9);
        }

        v7 = v20;
      }

      while (v20 != v8);
      v7 = *v2;
    }

    if (v7 != v8)
    {
      do
      {
        free(v7[4]);
        v21 = v7[1];
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
            v22 = v7[2];
            v9 = *v22 == v7;
            v7 = v22;
          }

          while (!v9);
        }

        v7 = v22;
      }

      while (v22 != v8);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 8));
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = v8;
    *(v2 + 40) = 0;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v24);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 8));

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B2F7EAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

void *std::vector<md::MuninJunction *>::vector[abi:nn200100](void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  v3 = v2 - *a2;
  if (v2 != *a2)
  {
    if (!((v3 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v3 >> 3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::__unordered_map_hasher<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::hash<std::bitset<4ul>>,std::equal_to<std::bitset<4ul>>,true>,std::__unordered_map_equal<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::equal_to<std::bitset<4ul>>,std::hash<std::bitset<4ul>>,true>,std::allocator<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>>>::__emplace_unique_key_args<std::bitset<4ul>,std::piecewise_construct_t const&,std::tuple<std::bitset<4ul> const&>,std::tuple<>>(float *a1, unint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *(a1 + 2);
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *a2;
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
    v11 = v10[1];
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

  if ((std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,4ul>,true,true>(v10 + 2, 0, (v10 + 2), 4u, a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_1B2F7EFB0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t geo::Pool<md::MuninJunction>::construct<std::shared_ptr<geo::codec::VectorTile> const&,GeoCodecsConnectivityJunction *&>(uint64_t *a1, geo::codec::VectorTile **a2, uint64_t *a3)
{
  v6 = a1[5];
  if (!v6)
  {
    geo::Pool<md::MuninJunction>::allocateSlab(a1);
    v6 = a1[5];
  }

  a1[5] = *v6;
  v7 = *a3;
  *v6 = &unk_1F2A46FB8;
  *(v6 + 8) = v7;
  geo::codec::VectorTile::key(*a2);
  GEOTileKeyMake();
  GEOMapRectForGEOTileKey();
  v25 = v9;
  v26 = v8;
  v23 = v11;
  v24 = v10;
  v12.f32[0] = md::VectorTileUtils::tileCoordinateForJunction(*(*a2 + 4), *(*a2 + 90), *(v7 + 4));
  v13 = *(MEMORY[0x1E69A1688] + 16);
  v14.f64[0] = v24;
  v14.f64[1] = v23;
  v15.f64[0] = v26;
  v15.f64[1] = v25;
  v16 = v15;
  v17 = vdivq_f64(vaddq_f64(v14, v15), v13);
  v15.f64[0] = 1.0 - v17.f64[1];
  v18 = vdivq_f64(v16, v13);
  v19 = vsubq_f64(v17, v18);
  v12.i32[1] = v20;
  v18.f64[1] = v15.f64[0];
  *(v6 + 16) = vmlaq_f64(v18, vcvtq_f64_f32(v12), v19);
  *(v6 + 32) = md::VectorTileUtils::tileCoordinateForJunction(*(*a2 + 4), *(*a2 + 90), *(v7 + 4));
  *(v6 + 36) = v21;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 40) = 0;
  *(v6 + 62) = 0;
  return v6;
}

void *std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,std::allocator<std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>>>::__emplace_unique_key_args<GeoCodecsConnectivityJunction *,std::piecewise_construct_t const&,std::tuple<GeoCodecsConnectivityJunction * const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
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

void *std::__function::__func<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1,std::allocator<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1>,void ()(GeoCodecsRoadFeature const*)>::operator()(uint64_t a1, std::__shared_weak_count **a2)
{
  v158 = *a2;
  v3 = v158;
  v4 = *(a1 + 32);
  result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(*(a1 + 8), v158);
  if (result)
  {
    return result;
  }

  v157 = 0;
  v6 = geo::codec::multiSectionFeaturePoints(v158, 0, &v157);
  v155 = 0;
  v156 = 0;
  v7 = geo::codec::VectorTile::key(**(a1 + 16));
  v8 = *(v7 + 10);
  v9 = *(v7 + 8);
  *&v150[0] = *v7;
  WORD4(v150[0]) = v9;
  BYTE10(v150[0]) = v8;
  v155 = GEOTileKeyMake();
  v156 = v10;
  GEOMapRectForGEOTileKey();
  v11 = &v6[v157];
  v12 = *(MEMORY[0x1E69A1688] + 16);
  v14.f64[1] = v13;
  v16.f64[1] = v15;
  v17 = vdivq_f64(vaddq_f64(v14, v16), v12);
  v18 = 1.0 - v17.f64[1];
  v19 = vdivq_f64(v16, v12);
  v20 = *v6;
  v21 = vsubq_f64(v17, v19);
  v19.f64[1] = v18;
  v154 = vmlaq_f64(v19, vcvtq_f64_f32(*v6), v21);
  v22 = &v11[-1];
  v153 = vmlaq_f64(v19, vcvtq_f64_f32(v11[-1]), v21);
  if (v20.f32[0] >= 0.001)
  {
    if (v20.f32[0] <= 0.999)
    {
      v23 = 0;
    }

    else
    {
      v23 = 2;
    }
  }

  else
  {
    v23 = 1;
  }

  if (v20.f32[1] >= 0.001)
  {
    if (v20.f32[1] > 0.999)
    {
      v23 |= 4uLL;
    }
  }

  else
  {
    v23 |= 8uLL;
  }

  v152 = v23;
  v149 = v3;
  if (*v22 >= 0.001)
  {
    if (*v22 <= 0.999)
    {
      v24 = 0;
    }

    else
    {
      v24 = 2;
    }
  }

  else
  {
    v24 = 1;
  }

  v25 = v11[-1].f32[1];
  if (v25 >= 0.001)
  {
    if (v25 > 0.999)
    {
      v24 |= 4uLL;
    }
  }

  else
  {
    v24 |= 8uLL;
  }

  v151 = v24;
  if (v23)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  if (v24)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  v28 = *(a1 + 24);
  LODWORD(v150[0]) = v26;
  v29 = *v28;
  geo::Pool<md::MuninJunction>::construct<geo::Mercator2<double> const&,gm::Matrix<float,2,1> const&,md::JunctionType &>(*(*v28 + 728), &v154, v6, v150);
  v31 = v29[102];
  v32 = v29[103];
  if (v31 >= v32)
  {
    v35 = v29[101];
    v36 = (v31 - v35) >> 3;
    if ((v36 + 1) >> 61)
    {
      goto LABEL_127;
    }

    v33 = v30;
    v37 = v32 - v35;
    v38 = v37 >> 2;
    if (v37 >> 2 <= (v36 + 1))
    {
      v38 = v36 + 1;
    }

    if (v37 >= 0x7FFFFFFFFFFFFFF8)
    {
      v39 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v38;
    }

    if (v39)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v39);
    }

    *(8 * v36) = v33;
    v34 = 8 * v36 + 8;
    v40 = v29[101];
    v41 = v29[102] - v40;
    v42 = (8 * v36 - v41);
    memcpy(v42, v40, v41);
    v43 = v29[101];
    v29[101] = v42;
    v29[102] = v34;
    v29[103] = 0;
    if (v43)
    {
      operator delete(v43);
    }
  }

  else
  {
    v33 = v30;
    *v31 = v30;
    v34 = (v31 + 1);
  }

  v29[102] = v34;
  v44 = *(a1 + 24);
  LODWORD(v150[0]) = v27;
  v45 = *v44;
  geo::Pool<md::MuninJunction>::construct<geo::Mercator2<double> const&,gm::Matrix<float,2,1> const&,md::JunctionType &>(*(*v44 + 728), &v153, v22, v150);
  v47 = v46;
  v48 = v45[102];
  v49 = v45[103];
  if (v48 < v49)
  {
    *v48 = v46;
    v50 = (v48 + 1);
    goto LABEL_50;
  }

  v51 = v45[101];
  v52 = (v48 - v51) >> 3;
  if ((v52 + 1) >> 61)
  {
LABEL_127:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v53 = v49 - v51;
  v54 = v53 >> 2;
  if (v53 >> 2 <= (v52 + 1))
  {
    v54 = v52 + 1;
  }

  if (v53 >= 0x7FFFFFFFFFFFFFF8)
  {
    v55 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v55 = v54;
  }

  if (v55)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v55);
  }

  *(8 * v52) = v47;
  v50 = 8 * v52 + 8;
  v56 = v45[101];
  v57 = v45[102] - v56;
  v58 = (8 * v52 - v57);
  memcpy(v58, v56, v57);
  v59 = v45[101];
  v45[101] = v58;
  v45[102] = v50;
  v45[103] = 0;
  if (v59)
  {
    operator delete(v59);
  }

LABEL_50:
  v45[102] = v50;
  if ((v152 & 0xF) != 0)
  {
    v60 = *(v4 + 840);
    v61 = *(v4 + 848);
    if (v60 >= v61)
    {
      v63 = *(v4 + 832);
      v64 = (v60 - v63) >> 3;
      if ((v64 + 1) >> 61)
      {
        goto LABEL_126;
      }

      v65 = v61 - v63;
      v66 = v65 >> 2;
      if (v65 >> 2 <= (v64 + 1))
      {
        v66 = v64 + 1;
      }

      if (v65 >= 0x7FFFFFFFFFFFFFF8)
      {
        v67 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v67 = v66;
      }

      if (v67)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v67);
      }

      *(8 * v64) = v33;
      v62 = 8 * v64 + 8;
      v68 = *(v4 + 832);
      v69 = *(v4 + 840) - v68;
      v70 = (8 * v64 - v69);
      memcpy(v70, v68, v69);
      v71 = *(v4 + 832);
      *(v4 + 832) = v70;
      *(v4 + 840) = v62;
      *(v4 + 848) = 0;
      if (v71)
      {
        operator delete(v71);
      }
    }

    else
    {
      *v60 = v33;
      v62 = (v60 + 1);
    }

    *(v4 + 840) = v62;
    *&v150[0] = &v152;
    v72 = std::__hash_table<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::__unordered_map_hasher<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::hash<std::bitset<4ul>>,std::equal_to<std::bitset<4ul>>,true>,std::__unordered_map_equal<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::equal_to<std::bitset<4ul>>,std::hash<std::bitset<4ul>>,true>,std::allocator<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>>>::__emplace_unique_key_args<std::bitset<4ul>,std::piecewise_construct_t const&,std::tuple<std::bitset<4ul> const&>,std::tuple<>>((v4 + 856), &v152, v150);
    v73 = v72;
    v75 = v72[4];
    v74 = v72[5];
    if (v75 >= v74)
    {
      v77 = v72[3];
      v78 = (v75 - v77) >> 3;
      if ((v78 + 1) >> 61)
      {
        goto LABEL_126;
      }

      v79 = v74 - v77;
      v80 = v79 >> 2;
      if (v79 >> 2 <= (v78 + 1))
      {
        v80 = v78 + 1;
      }

      if (v79 >= 0x7FFFFFFFFFFFFFF8)
      {
        v81 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v81 = v80;
      }

      if (v81)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v81);
      }

      *(8 * v78) = v33;
      v76 = 8 * v78 + 8;
      v82 = v73[3];
      v83 = v73[4] - v82;
      v84 = (8 * v78 - v83);
      memcpy(v84, v82, v83);
      v85 = v73[3];
      v73[3] = v84;
      v73[4] = v76;
      v73[5] = 0;
      if (v85)
      {
        operator delete(v85);
      }
    }

    else
    {
      *v75 = v33;
      v76 = (v75 + 1);
    }

    v73[4] = v76;
  }

  if (v24)
  {
    v86 = *(v4 + 840);
    v87 = *(v4 + 848);
    if (v86 >= v87)
    {
      v89 = *(v4 + 832);
      v90 = (v86 - v89) >> 3;
      if ((v90 + 1) >> 61)
      {
        goto LABEL_126;
      }

      v91 = v87 - v89;
      v92 = v91 >> 2;
      if (v91 >> 2 <= (v90 + 1))
      {
        v92 = v90 + 1;
      }

      if (v91 >= 0x7FFFFFFFFFFFFFF8)
      {
        v93 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v93 = v92;
      }

      if (v93)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v93);
      }

      *(8 * v90) = v47;
      v88 = 8 * v90 + 8;
      v94 = *(v4 + 832);
      v95 = *(v4 + 840) - v94;
      v96 = (8 * v90 - v95);
      memcpy(v96, v94, v95);
      v97 = *(v4 + 832);
      *(v4 + 832) = v96;
      *(v4 + 840) = v88;
      *(v4 + 848) = 0;
      if (v97)
      {
        operator delete(v97);
      }
    }

    else
    {
      *v86 = v47;
      v88 = (v86 + 1);
    }

    *(v4 + 840) = v88;
    *&v150[0] = &v151;
    v98 = std::__hash_table<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::__unordered_map_hasher<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::hash<std::bitset<4ul>>,std::equal_to<std::bitset<4ul>>,true>,std::__unordered_map_equal<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::equal_to<std::bitset<4ul>>,std::hash<std::bitset<4ul>>,true>,std::allocator<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>>>::__emplace_unique_key_args<std::bitset<4ul>,std::piecewise_construct_t const&,std::tuple<std::bitset<4ul> const&>,std::tuple<>>((v4 + 856), &v151, v150);
    v99 = v98;
    v101 = v98[4];
    v100 = v98[5];
    if (v101 < v100)
    {
      *v101 = v47;
      v102 = (v101 + 1);
LABEL_101:
      v99[4] = v102;
      goto LABEL_102;
    }

    v103 = v98[3];
    v104 = (v101 - v103) >> 3;
    if (!((v104 + 1) >> 61))
    {
      v105 = v100 - v103;
      v106 = v105 >> 2;
      if (v105 >> 2 <= (v104 + 1))
      {
        v106 = v104 + 1;
      }

      if (v105 >= 0x7FFFFFFFFFFFFFF8)
      {
        v107 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v107 = v106;
      }

      if (v107)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v107);
      }

      *(8 * v104) = v47;
      v102 = 8 * v104 + 8;
      v108 = v99[3];
      v109 = v99[4] - v108;
      v110 = (8 * v104 - v109);
      memcpy(v110, v108, v109);
      v111 = v99[3];
      v99[3] = v110;
      v99[4] = v102;
      v99[5] = 0;
      if (v111)
      {
        operator delete(v111);
      }

      goto LABEL_101;
    }

LABEL_126:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_102:
  v112 = *(a1 + 16);
  v159 = 0;
  v113 = geo::codec::multiSectionFeaturePoints(v149, 0, &v159);
  v114 = geo::codec::VectorTile::key(*v112);
  v115 = *(v114 + 10);
  v116 = *(v114 + 8);
  *&v150[0] = *v114;
  WORD4(v150[0]) = v116;
  BYTE10(v150[0]) = v115;
  *&v150[0] = GEOTileKeyMake();
  *(&v150[0] + 1) = v117;
  GEOMapRectForGEOTileKey();
  v122 = v159;
  if (v159)
  {
    v124 = *(MEMORY[0x1E69A1688] + 16);
    v123 = *(MEMORY[0x1E69A1688] + 24);
    v125 = (v121 + v119) / v123;
    v127.f64[0] = v118 / v124;
    v126.f64[0] = (v120 + v118) / v124;
    v126.f64[1] = v125;
    v127.f64[1] = v119 / v123;
    v128 = vsubq_f64(v126, v127);
    v129 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v130 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    do
    {
      v131 = v113->__vftable;
      v113 = (v113 + 8);
      v127.f64[1] = 1.0 - v125;
      v132 = vmlaq_f64(v127, vcvtq_f64_f32(v131), v128);
      v130 = vminnmq_f64(v132, v130);
      v129 = vmaxnmq_f64(v129, v132);
      v122 = (v122 - 1);
    }

    while (v122);
  }

  else
  {
    v129 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v130 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  v150[0] = v130;
  v150[1] = v129;
  v133 = *(v4 + 736);
  v134 = *(v133 + 40);
  if (!v134)
  {
    geo::Pool<md::MuninRoadEdge>::allocateSlab(*(v4 + 736));
    v134 = *(v133 + 40);
  }

  *(v133 + 40) = *v134;
  v159 = 0;
  geo::codec::multiSectionFeaturePoints(v149, 0, &v159);
  if (v159)
  {
    v135 = v159 - 1;
  }

  else
  {
    v135 = 0;
  }

  md::MuninRoadEdge::MuninRoadEdge(v134, v149, v150, 0, v135, v33, v47);
  v136 = *(v4 + 768);
  v137 = *(v4 + 776);
  if (v136 >= v137)
  {
    v139 = *(v4 + 760);
    v140 = (v136 - v139) >> 3;
    if ((v140 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v141 = v137 - v139;
    v142 = v141 >> 2;
    if (v141 >> 2 <= (v140 + 1))
    {
      v142 = v140 + 1;
    }

    if (v141 >= 0x7FFFFFFFFFFFFFF8)
    {
      v143 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v143 = v142;
    }

    if (v143)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v143);
    }

    *(8 * v140) = v134;
    v138 = 8 * v140 + 8;
    v144 = *(v4 + 760);
    v145 = *(v4 + 768) - v144;
    v146 = (8 * v140 - v145);
    memcpy(v146, v144, v145);
    v147 = *(v4 + 760);
    *(v4 + 760) = v146;
    *(v4 + 768) = v138;
    *(v4 + 776) = 0;
    if (v147)
    {
      operator delete(v147);
    }
  }

  else
  {
    *v136 = v134;
    v138 = (v136 + 1);
  }

  *(v4 + 768) = v138;
  v148 = *(a1 + 8);
  v159 = &v158;
  result = std::__hash_table<std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::__unordered_map_hasher<GeoCodecsRoadFeature const*,std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::hash<GeoCodecsRoadFeature const*>,std::equal_to<GeoCodecsRoadFeature const*>,true>,std::__unordered_map_equal<GeoCodecsRoadFeature const*,std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::equal_to<GeoCodecsRoadFeature const*>,std::hash<GeoCodecsRoadFeature const*>,true>,std::allocator<std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>>>::__emplace_unique_key_args<GeoCodecsRoadFeature const*,std::piecewise_construct_t const&,std::tuple<GeoCodecsRoadFeature const* const&>,std::tuple<>>(v148, v149, &v159);
  result[3] = v134;
  return result;
}

__n128 geo::Pool<md::MuninJunction>::construct<geo::Mercator2<double> const&,gm::Matrix<float,2,1> const&,md::JunctionType &>(uint64_t *a1, __n128 *a2, unint64_t *a3, unsigned __int32 *a4)
{
  v8 = a1[5];
  if (!v8)
  {
    geo::Pool<md::MuninJunction>::allocateSlab(a1);
    v8 = a1[5];
  }

  a1[5] = v8->n128_u64[0];
  v9 = *a4;
  v8->n128_u64[0] = &unk_1F2A46FB8;
  v8->n128_u64[1] = 0;
  result = *a2;
  v8[1] = *a2;
  v11 = *a3;
  v8[3].n128_u64[0] = 0;
  v8[3].n128_u64[1] = 0;
  v8[2].n128_u64[0] = v11;
  v8[2].n128_u64[1] = 0;
  v8[4].n128_u32[0] = v9;
  v8[4].n128_u16[2] = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::__unordered_map_hasher<GeoCodecsRoadFeature const*,std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::hash<GeoCodecsRoadFeature const*>,std::equal_to<GeoCodecsRoadFeature const*>,true>,std::__unordered_map_equal<GeoCodecsRoadFeature const*,std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::equal_to<GeoCodecsRoadFeature const*>,std::hash<GeoCodecsRoadFeature const*>,true>,std::allocator<std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>>>::__emplace_unique_key_args<GeoCodecsRoadFeature const*,std::piecewise_construct_t const&,std::tuple<GeoCodecsRoadFeature const* const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
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

uint64_t *geo::Pool<md::MuninRoadEdge>::allocateSlab(uint64_t *a1)
{
  v2 = malloc_type_malloc(120 * a1[3], 0x10720407B5CA0FCuLL);
  v7 = v2;
  result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v2, &v7);
  v4 = a1[5];
  v5 = &v2[15 * a1[3] - 15];
  if (v5 >= v2)
  {
    do
    {
      v6 = v5;
      *v5 = v4;
      v5 -= 15;
      v4 = v6;
    }

    while (v5 >= v2);
    v4 = (v5 + 15);
  }

  a1[5] = v4;
  return result;
}

uint64_t *geo::Pool<md::MuninJunction>::allocateSlab(uint64_t *a1)
{
  v2 = malloc_type_malloc(72 * a1[3], 0x10A2040BA2E7380uLL);
  v7 = v2;
  result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v2, &v7);
  v4 = a1[5];
  v5 = &v2[9 * a1[3] - 9];
  if (v5 >= v2)
  {
    do
    {
      v6 = v5;
      *v5 = v4;
      v5 -= 9;
      v4 = v6;
    }

    while (v5 >= v2);
    v4 = (v5 + 9);
  }

  a1[5] = v4;
  return result;
}

__n128 std::__function::__func<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1,std::allocator<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1>,void ()(GeoCodecsRoadFeature const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1C628;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0,std::allocator<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0>,void ()(GeoCodecsRoadEdge *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = *(a1 + 40);
  if ((*a2)[5] != (*a2)[6] && ((*&v142[0] = 0, v5 = geo::codec::multiSectionFeaturePoints(*v3, 0, v142), v6 = *&v142[0] - 1, v8 = *(v3 + 8), v7 = *(v3 + 16), v8) ? (v9 = v8 == v6) : (v9 = 1), !v9 ? (v10 = v7 == 0) : (v10 = 1), !v10 ? (v11 = v7 == v6) : (v11 = 1), v11))
  {
    if (v6 < v8)
    {
      v8 = *&v142[0] - 1;
    }

    v12 = (&v5->__vftable + v8);
    if (v6 >= v7)
    {
      v6 = *(v3 + 16);
    }

    v13 = (&v5->__vftable + v6);
    if (*v12 >= 0.001)
    {
      if (*v12 <= 0.999)
      {
        v14 = 0;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 1;
    }

    v16 = v12[1];
    if (v16 >= 0.001)
    {
      if (v16 > 0.999)
      {
        v14 |= 4uLL;
      }
    }

    else
    {
      v14 |= 8uLL;
    }

    if (*v13 >= 0.001)
    {
      if (*v13 <= 0.999)
      {
        v17 = 0;
      }

      else
      {
        v17 = 2;
      }
    }

    else
    {
      v17 = 1;
    }

    v18 = v13[1];
    if (v18 >= 0.001)
    {
      if (v18 > 0.999)
      {
        v17 |= 4uLL;
      }
    }

    else
    {
      v17 |= 8uLL;
    }

    v15 = v17 | v14;
  }

  else
  {
    v15 = 0;
  }

  v147 = v15;
  v19 = *v3;
  v146 = v19;
  v20 = **(a1 + 8);
  result = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(*(a1 + 16), v19);
  if (!result)
  {
    v22 = *(v3 + 48);
    v23 = MEMORY[0x1E69A1688];
    v141 = v20;
    if (v22)
    {
      v24 = *(a1 + 24);
      v143.f64[0] = *(v3 + 48);
      v25 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(*v24, v22);
      if (v25)
      {
        v26 = v25[3];
        if (!v26)
        {
          goto LABEL_55;
        }

LABEL_103:
        v140 = v26;
        v100 = *(a1 + 48);
        v143.f64[0] = 0.0;
        v101 = geo::codec::multiSectionFeaturePoints(v19, 0, &v143);
        v102 = v23;
        v104 = *(v3 + 8);
        v103 = *(v3 + 16);
        if (v104 <= v103)
        {
          v105 = *(v3 + 16);
        }

        else
        {
          v105 = *(v3 + 8);
        }

        v106 = *&v143.f64[0] - 1;
        if (*&v143.f64[0] - 1 >= v105)
        {
          v107 = v105;
        }

        else
        {
          v107 = *&v143.f64[0] - 1;
        }

        v108 = geo::codec::VectorTile::key(*v100);
        v109 = *(v108 + 10);
        v110 = *(v108 + 8);
        *&v142[0] = *v108;
        WORD4(v142[0]) = v110;
        BYTE10(v142[0]) = v109;
        *&v142[0] = GEOTileKeyMake();
        *(&v142[0] + 1) = v111;
        GEOMapRectForGEOTileKey();
        if (v103 >= v104)
        {
          v116 = v104;
        }

        else
        {
          v116 = v103;
        }

        if (v106 < v116)
        {
          v116 = v106;
        }

        v114.f64[1] = v115;
        v117 = v102[1];
        v112.f64[1] = v113;
        v118 = vdivq_f64(vaddq_f64(v114, v112), v117);
        v119 = 1.0 - v118.f64[1];
        v121 = vdivq_f64(v112, v117);
        v120 = vsubq_f64(v118, v121);
        v121.f64[1] = v119;
        v122 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v123 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        do
        {
          v124 = vmlaq_f64(v121, vcvtq_f64_f32(*(&v101->__vftable + v116)), v120);
          v122 = vminnmq_f64(v124, v122);
          v123 = vmaxnmq_f64(v123, v124);
          ++v116;
        }

        while (v116 <= v107);
        v142[0] = v122;
        v142[1] = v123;
        v125 = *(v4 + 736);
        v126 = *(v125 + 40);
        if (!v126)
        {
          geo::Pool<md::MuninRoadEdge>::allocateSlab(*(v4 + 736));
          v126 = *(v125 + 40);
        }

        *(v125 + 40) = *v126;
        md::MuninRoadEdge::MuninRoadEdge(v126, *v3, v142, *(v3 + 8), *(v3 + 16), v141, v140);
        v127 = *(v4 + 768);
        v128 = *(v4 + 776);
        if (v127 >= v128)
        {
          v130 = *(v4 + 760);
          v131 = (v127 - v130) >> 3;
          if ((v131 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v132 = v128 - v130;
          v133 = v132 >> 2;
          if (v132 >> 2 <= (v131 + 1))
          {
            v133 = v131 + 1;
          }

          if (v132 >= 0x7FFFFFFFFFFFFFF8)
          {
            v134 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v134 = v133;
          }

          if (v134)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v134);
          }

          *(8 * v131) = v126;
          v129 = 8 * v131 + 8;
          v135 = *(v4 + 760);
          v136 = *(v4 + 768) - v135;
          v137 = (8 * v131 - v136);
          memcpy(v137, v135, v136);
          v138 = *(v4 + 760);
          *(v4 + 760) = v137;
          *(v4 + 768) = v129;
          *(v4 + 776) = 0;
          if (v138)
          {
            operator delete(v138);
          }
        }

        else
        {
          *v127 = v126;
          v129 = (v127 + 1);
        }

        *(v4 + 768) = v129;
        v139 = *(a1 + 16);
        *&v143.f64[0] = &v146;
        result = std::__hash_table<std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::__unordered_map_hasher<GeoCodecsRoadFeature const*,std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::hash<GeoCodecsRoadFeature const*>,std::equal_to<GeoCodecsRoadFeature const*>,true>,std::__unordered_map_equal<GeoCodecsRoadFeature const*,std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>,std::equal_to<GeoCodecsRoadFeature const*>,std::hash<GeoCodecsRoadFeature const*>,true>,std::allocator<std::__hash_value_type<GeoCodecsRoadFeature const*,md::MuninRoadEdge *>>>::__emplace_unique_key_args<GeoCodecsRoadFeature const*,std::piecewise_construct_t const&,std::tuple<GeoCodecsRoadFeature const* const&>,std::tuple<>>(v139, v146, &v143);
        result[3] = v126;
        return result;
      }

      v27 = v24[1];
      v28 = geo::Pool<md::MuninJunction>::construct<std::shared_ptr<geo::codec::VectorTile> const&,GeoCodecsConnectivityJunction *&>(*(v27 + 91), v24[2], &v143);
      v26 = v28;
      v29 = *(v27 + 99);
      v30 = *(v27 + 100);
      if (v29 >= v30)
      {
        v32 = *(v27 + 98);
        v33 = (v29 - v32) >> 3;
        if ((v33 + 1) >> 61)
        {
          goto LABEL_133;
        }

        v34 = v30 - v32;
        v35 = v34 >> 2;
        if (v34 >> 2 <= (v33 + 1))
        {
          v35 = v33 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        if (v36)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v36);
        }

        *(8 * v33) = v26;
        v31 = 8 * v33 + 8;
        v37 = *(v27 + 98);
        v38 = *(v27 + 99) - v37;
        v39 = (8 * v33 - v38);
        memcpy(v39, v37, v38);
        v40 = *(v27 + 98);
        *(v27 + 98) = v39;
        *(v27 + 99) = v31;
        *(v27 + 100) = 0;
        if (v40)
        {
          operator delete(v40);
        }
      }

      else
      {
        *v29 = v28;
        v31 = (v29 + 1);
      }

      *(v27 + 99) = v31;
      v41 = *v24;
      *&v142[0] = &v143;
      std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,std::allocator<std::__hash_value_type<GeoCodecsConnectivityJunction *,md::MuninJunction *>>>::__emplace_unique_key_args<GeoCodecsConnectivityJunction *,std::piecewise_construct_t const&,std::tuple<GeoCodecsConnectivityJunction * const&>,std::tuple<>>(v41, *&v143.f64[0], v142)[3] = v26;
      v19 = *v3;
      v23 = MEMORY[0x1E69A1688];
      if (v26)
      {
        goto LABEL_103;
      }
    }

LABEL_55:
    v145 = 0;
    v42 = geo::codec::multiSectionFeaturePoints(v19, 0, &v145);
    v142[0] = 0uLL;
    v43 = *v3;
    v44 = *(*v3 + 8);
    if (v44)
    {
      v44 = std::__shared_weak_count::lock(v44);
      v45 = v44;
      if (v44)
      {
        v44 = v43->__vftable;
      }
    }

    else
    {
      v45 = 0;
    }

    v46 = geo::codec::VectorTile::key(v44);
    v47 = *(v46 + 10);
    v48 = *(v46 + 8);
    v143.f64[0] = *v46;
    LOWORD(v143.f64[1]) = v48;
    BYTE2(v143.f64[1]) = v47;
    *&v142[0] = GEOTileKeyMake();
    *(&v142[0] + 1) = v49;
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    GEOMapRectForGEOTileKey();
    v144 = *(&v42->__vftable + *(v3 + 16));
    v50 = v23[1];
    v52.f64[1] = v51;
    v54.f64[1] = v53;
    v55 = vdivq_f64(vaddq_f64(v52, v54), v50);
    v52.f64[0] = 1.0 - v55.f64[1];
    v56 = vdivq_f64(v54, v50);
    v57 = vsubq_f64(v55, v56);
    v56.f64[1] = v52.f64[0];
    v143 = vmlaq_f64(v56, vcvtq_f64_f32(v144), v57);
    v58 = *(a1 + 32);
    if (v15)
    {
      v59 = 2;
    }

    else
    {
      v59 = 1;
    }

    LODWORD(v148) = v59;
    v60 = *v58;
    geo::Pool<md::MuninJunction>::construct<geo::Mercator2<double> const&,gm::Matrix<float,2,1> const&,md::JunctionType &>(*(*v58 + 728), &v143, &v144, &v148);
    v26 = v61;
    v62 = v60[102];
    v63 = v60[103];
    if (v62 < v63)
    {
      *v62 = v61;
      v64 = (v62 + 1);
      goto LABEL_76;
    }

    v65 = v60[101];
    v66 = (v62 - v65) >> 3;
    if (!((v66 + 1) >> 61))
    {
      v67 = v63 - v65;
      v68 = v67 >> 2;
      if (v67 >> 2 <= (v66 + 1))
      {
        v68 = v66 + 1;
      }

      if (v67 >= 0x7FFFFFFFFFFFFFF8)
      {
        v69 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v69 = v68;
      }

      if (v69)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v69);
      }

      *(8 * v66) = v26;
      v64 = 8 * v66 + 8;
      v70 = v60[101];
      v71 = v60[102] - v70;
      v72 = (8 * v66 - v71);
      memcpy(v72, v70, v71);
      v73 = v60[101];
      v60[101] = v72;
      v60[102] = v64;
      v60[103] = 0;
      if (v73)
      {
        operator delete(v73);
      }

LABEL_76:
      v60[102] = v64;
      if (!v15)
      {
LABEL_102:
        v19 = *v3;
        goto LABEL_103;
      }

      v74 = *(v4 + 840);
      v75 = *(v4 + 848);
      if (v74 >= v75)
      {
        v77 = *(v4 + 832);
        v78 = (v74 - v77) >> 3;
        if ((v78 + 1) >> 61)
        {
          goto LABEL_134;
        }

        v79 = v75 - v77;
        v80 = v79 >> 2;
        if (v79 >> 2 <= (v78 + 1))
        {
          v80 = v78 + 1;
        }

        if (v79 >= 0x7FFFFFFFFFFFFFF8)
        {
          v81 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v81 = v80;
        }

        if (v81)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v81);
        }

        *(8 * v78) = v26;
        v76 = 8 * v78 + 8;
        v82 = *(v4 + 832);
        v83 = *(v4 + 840) - v82;
        v84 = (8 * v78 - v83);
        memcpy(v84, v82, v83);
        v85 = *(v4 + 832);
        *(v4 + 832) = v84;
        *(v4 + 840) = v76;
        *(v4 + 848) = 0;
        if (v85)
        {
          operator delete(v85);
        }
      }

      else
      {
        *v74 = v26;
        v76 = (v74 + 1);
      }

      *(v4 + 840) = v76;
      v148 = &v147;
      v86 = std::__hash_table<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::__unordered_map_hasher<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::hash<std::bitset<4ul>>,std::equal_to<std::bitset<4ul>>,true>,std::__unordered_map_equal<std::bitset<4ul>,std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>,std::equal_to<std::bitset<4ul>>,std::hash<std::bitset<4ul>>,true>,std::allocator<std::__hash_value_type<std::bitset<4ul>,std::vector<md::MuninJunction const*>>>>::__emplace_unique_key_args<std::bitset<4ul>,std::piecewise_construct_t const&,std::tuple<std::bitset<4ul> const&>,std::tuple<>>((v4 + 856), &v147, &v148);
      v87 = v86;
      v89 = v86[4];
      v88 = v86[5];
      if (v89 < v88)
      {
        *v89 = v26;
        v90 = (v89 + 1);
LABEL_101:
        v87[4] = v90;
        goto LABEL_102;
      }

      v91 = v86[3];
      v92 = (v89 - v91) >> 3;
      if (!((v92 + 1) >> 61))
      {
        v93 = v88 - v91;
        v94 = v93 >> 2;
        if (v93 >> 2 <= (v92 + 1))
        {
          v94 = v92 + 1;
        }

        if (v93 >= 0x7FFFFFFFFFFFFFF8)
        {
          v95 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v95 = v94;
        }

        if (v95)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v95);
        }

        *(8 * v92) = v26;
        v90 = 8 * v92 + 8;
        v96 = v87[3];
        v97 = v87[4] - v96;
        v98 = (8 * v92 - v97);
        memcpy(v98, v96, v97);
        v99 = v87[3];
        v87[3] = v98;
        v87[4] = v90;
        v87[5] = 0;
        if (v99)
        {
          operator delete(v99);
        }

        goto LABEL_101;
      }

LABEL_134:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

LABEL_133:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void sub_1B2F80CBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0,std::allocator<md::MuninRoadNetworkData::MuninRoadNetworkData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0>,void ()(GeoCodecsRoadEdge *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1C5E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *md::MuninRoadNetworkData::junctionsOnTileEdge(int8x8_t *a1, unint64_t *a2)
{
  v2 = a1[108];
  if (!*&v2)
  {
    return &md::MuninRoadNetworkData::junctionsOnTileEdge(std::bitset<4ul> const&)const::kSentinel;
  }

  v4 = *a2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*&a1[107] + 8 * v7);
  if (!v8)
  {
    return &md::MuninRoadNetworkData::junctionsOnTileEdge(std::bitset<4ul> const&)const::kSentinel;
  }

  v9 = *v8;
  if (!*v8)
  {
    return &md::MuninRoadNetworkData::junctionsOnTileEdge(std::bitset<4ul> const&)const::kSentinel;
  }

  do
  {
    v10 = v9[1];
    if (v4 == v10)
    {
      if (std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,4ul>,true,true>(v9 + 2, 0, (v9 + 2), 4u, a2))
      {
        break;
      }
    }

    else
    {
      if (v6 > 1)
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
        return &md::MuninRoadNetworkData::junctionsOnTileEdge(std::bitset<4ul> const&)const::kSentinel;
      }
    }

    v9 = *v9;
  }

  while (v9);
  if (v9)
  {
    return v9 + 3;
  }

  else
  {
    return &md::MuninRoadNetworkData::junctionsOnTileEdge(std::bitset<4ul> const&)const::kSentinel;
  }
}

__n128 std::__function::__func<md::ita::PrepareRenderableData::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle &,md::ls::BaseMapTileHandle const&>,ecs2::Query<md::ls::TileMatrix const&,md::ls::WillEnterView const&,md::ls::TileRenderableDataHandle &>)::$_0,std::allocator<md::ita::PrepareRenderableData::operator()(ecs2::Query<md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle &,md::ls::BaseMapTileHandle const&>,ecs2::Query<md::ls::TileMatrix const&,md::ls::WillEnterView const&,md::ls::TileRenderableDataHandle &>)::$_0>,void ()(md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle &,md::ls::BaseMapTileHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1C670;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup::~CompressedMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F81E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  std::mutex::unlock((v18 + 1776));
  _Unwind_Resume(a1);
}

VKImage *VKCreateRoadSignImageWithSignType(uint64_t a1, const md::RoadSignPartMetrics *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a2;
  if (v8 <= 0x10 && ((0x10001u >> v8) & 1) != 0 || (v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0])) == 0)
  {
LABEL_40:
    v14 = 0;
    goto LABEL_41;
  }

  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = CGBitmapContextCreate(0, v10, v11, 8uLL, 0, v9, 0x2002u);
  v13 = v12;
  if (!v12)
  {
    v14 = 0;
    CGColorSpaceRelease(v9);
    goto LABEL_41;
  }

  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = v10;
  v45.size.height = v11;
  CGContextClearRect(v12, v45);
  if (*a3 == 1)
  {
    v39 = CGColorCreate(v9, (a3 + 8));
  }

  else
  {
    v39 = 0;
  }

  if (*(a3 + 3) == 1)
  {
    v15 = CGColorCreate(v9, (a3 + 104));
  }

  else
  {
    v15 = 0;
  }

  if (*(a3 + 4) == 1)
  {
    v16 = CGColorCreate(v9, (a3 + 136));
  }

  else
  {
    v16 = 0;
  }

  if (*(a3 + 5) != 1 || (color = CGColorCreate(v9, (a3 + 168))) == 0)
  {
    v21 = 0;
    color = 0;
    if (!v15)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  CGContextSaveGState(v13);
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = vrndaq_f64(vmulq_n_f64(*(a1 + 56), v18 * v17));
  height = v19.height;
  CGContextSetShadowWithColor(v13, v19, round(v17 * *(a1 + 72) * v18), color);
  generateRoadSignPath(v13, a1, a2);
  CGContextFillPath(v13);
  CGContextRestoreGState(v13);
  v21 = 1;
  if (v15)
  {
LABEL_20:
    CGContextSaveGState(v13);
    v22 = round(*(a1 + 8) * *(a1 + 80) * *(a1 + 16));
    CGContextSetLineWidth(v13, v22 + v22);
    CGContextSetStrokeColorWithColor(v13, v15);
    generateRoadSignPath(v13, a1, a2);
    CGContextStrokePath(v13);
    CGContextRestoreGState(v13);
  }

LABEL_21:
  if (v39)
  {
    CGContextSaveGState(v13);
    CGContextSetFillColorWithColor(v13, v39);
    v23 = v21 ^ 1;
    if (v15)
    {
      v23 = 0;
    }

    if ((v23 & 1) == 0)
    {
      CGContextSetBlendMode(v13, kCGBlendModeCopy);
    }

    generateRoadSignPath(v13, a1, a2);
    CGContextFillPath(v13);
    CGContextRestoreGState(v13);
  }

  if (*(a3 + 1) == 1)
  {
    CGContextSaveGState(v13);
    generateRoadSignPath(v13, a1, a2);
    PathBoundingBox = CGContextGetPathBoundingBox(v13);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    v27 = PathBoundingBox.size.height;
    MidX = CGRectGetMidX(PathBoundingBox);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = v27;
    MidY = CGRectGetMidY(v47);
    CGContextClip(v13);
    if (*(a3 + 1))
    {
      v30 = (a3 + 40);
    }

    else
    {
      v30 = 0;
    }

    v31 = CGGradientCreateWithColorComponents(v9, v30, 0, 2uLL);
    v43.y = v27 * 0.5 + MidY;
    v44.y = MidY - v27 * 0.5;
    v43.x = MidX;
    v44.x = MidX;
    CGContextDrawLinearGradient(v13, v31, v43, v44, 0);
    CFRelease(v31);
    CGContextRestoreGState(v13);
  }

  if (v16)
  {
    CGContextSaveGState(v13);
    CGContextSetBlendMode(v13, kCGBlendModeNormal);
    v32 = round(*(a1 + 8) * *(a1 + 88) * *(a1 + 16));
    CGContextSetLineWidth(v13, v32 + v32);
    CGContextSetStrokeColorWithColor(v13, v16);
    CGContextResetClip(v13);
    generateRoadSignPath(v13, a1, a2);
    CGContextClip(v13);
    generateRoadSignPath(v13, a1, a2);
    CGContextStrokePath(v13);
    CGContextResetClip(v13);
    CGContextRestoreGState(v13);
  }

  Image = CGBitmapContextCreateImage(v13);
  CGColorSpaceRelease(v9);
  CGContextRelease(v13);
  CGColorRelease(v39);
  CGColorRelease(v15);
  CGColorRelease(color);
  CGColorRelease(v16);
  if (!Image)
  {
    goto LABEL_40;
  }

  v34 = [VKImage alloc];
  v35 = *(a1 + 16);
  v36 = a4[1];
  v40 = *a4;
  v41 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = [(VKImage *)v34 initWithCGImage:Image scale:&v40 resourceStore:v35, color];
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  CGImageRelease(Image);
  [(VKImage *)v14 size];
LABEL_41:

  return v14;
}

void sub_1B2F8247C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  _Unwind_Resume(exception_object);
}

id md::LabelIcon::image(md::LabelIcon *this)
{
  v2 = atomic_load(this + 143);
  if (v2)
  {
    v3 = *(this + 2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

CGColorSpaceRef ___ZL11_colorSpacev_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  _colorSpace(void)::colorspace = result;
  return result;
}

uint64_t md::RegistryLogic::debugConsoleString@<X0>(void *a1@<X0>, md::LayoutContext *a2@<X1>, _BYTE *a3@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v27);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "\n=== RegistryLogic ===\n", 23);
  v5 = a1[15];
  if (v5[48] != v5[49])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "Active:", 7);
    v6 = MEMORY[0x1B8C61CB0](&v27, (*(a1[15] + 392) - *(a1[15] + 384)) >> 3);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, "\n", 1);
    _ZN2md15DebugOutputUtil14printContainerINSt3__16vectorIPN3gdc8RegistryENS2_9allocatorIS6_EEEEZNKS_13RegistryLogic18debugConsoleStringERKNS_13LayoutContextERKNS_17LogicDependenciesIJNS4_8TypeListIJNS_12SceneContextEEEENSF_IJEEEEE20ResolvedDependenciesERNS_15RegistryContextEE3__0EEvRNS2_19basic_ostringstreamIcNS2_11char_traitsIcEENS7_IcEEEERKT_T0_jj(&v27, *(a1[15] + 384), *(a1[15] + 392));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "\n", 1);
    v5 = a1[15];
  }

  if (v5[60] != v5[61])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "Cached:", 7);
    v7 = MEMORY[0x1B8C61CB0](&v27, (*(a1[15] + 488) - *(a1[15] + 480)) >> 3);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "\n", 1);
    _ZN2md15DebugOutputUtil14printContainerINSt3__16vectorIPN3gdc8RegistryENS2_9allocatorIS6_EEEEZNKS_13RegistryLogic18debugConsoleStringERKNS_13LayoutContextERKNS_17LogicDependenciesIJNS4_8TypeListIJNS_12SceneContextEEEENSF_IJEEEEE20ResolvedDependenciesERNS_15RegistryContextEE3__0EEvRNS2_19basic_ostringstreamIcNS2_11char_traitsIcEENS7_IcEEEERKT_T0_jj(&v27, *(a1[15] + 480), *(a1[15] + 488));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "\n", 1);
  }

  if (a1[19])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "Recently Destroyed(<=30s):", 26);
    v8 = MEMORY[0x1B8C61CB0](&v27, a1[19]);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "{\n", 2);
    v9 = a1[17];
    if (v9 != (a1 + 18))
    {
      do
      {
        md::LayoutContext::frameState(a2);
        v11 = *(v10 + 88);
        v12 = v9[4];
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "  ", 2);
        v13 = MEMORY[0x1B8C61C80](&v27, (v11 - v12));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, ":", 1);
        v15 = *(v9 + 5);
        v14 = *(v9 + 6);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "[", 1);
        v16 = &v27 + *(v27 - 24);
        if ((v16[32] & 5) != 0)
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v57 = -1;
        }

        else
        {
          (*(**(v16 + 5) + 32))(&v49);
        }

        if (v15 != v14)
        {
          while (1)
          {
            v15 += 8;
            v17 = &v27 + *(v27 - 24);
            if ((v17[32] & 5) != 0)
            {
              memset(v47, 0, sizeof(v47));
              v48 = -1;
            }

            else
            {
              (*(**(v17 + 5) + 32))(v47);
            }

            MEMORY[0x1B8C61CF0](&v27, *(v15 - 8));
            v18 = &v27 + *(v27 - 24);
            if ((v18[32] & 5) != 0)
            {
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v46 = -1;
            }

            else
            {
              (*(**(v18 + 5) + 32))(&v38);
            }

            if (v15 == v14)
            {
              break;
            }

            if (v46 > v48)
            {
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, ",", 1);
              if (v46 - v57 >= 41)
              {
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "\n", 1);
                v37 = 3;
                LODWORD(__p) = 2105376;
                std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, &__p, 3);
                if (v37 < 0)
                {
                  operator delete(__p);
                }

                v55 = v44;
                v56 = v45;
                v57 = v46;
                v51 = v40;
                v52 = v41;
                v53 = v42;
                v54 = v43;
                v49 = v38;
                v50 = v39;
              }
            }
          }
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "]", 1);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "\n", 1);
        v19 = *(v9 + 1);
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
            v20 = *(v9 + 2);
            v21 = *v20 == v9;
            v9 = v20;
          }

          while (!v21);
        }

        v9 = v20;
      }

      while (v20 != (a1 + 18));
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "}\n", 2);
  }

  if ((v34 & 0x10) != 0)
  {
    v23 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v23 = v30;
    }

    locale = v29[4].__locale_;
  }

  else
  {
    if ((v34 & 8) == 0)
    {
      v22 = 0;
      a3[23] = 0;
      goto LABEL_43;
    }

    locale = v29[1].__locale_;
    v23 = v29[3].__locale_;
  }

  v22 = v23 - locale;
  if ((v23 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v22 >= 0x17)
  {
    operator new();
  }

  a3[23] = v22;
  if (v22)
  {
    memmove(a3, locale, v22);
  }

LABEL_43:
  a3[v22] = 0;
  v27 = *MEMORY[0x1E69E54E8];
  *(&v27 + *(v27 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v28 = MEMORY[0x1E69E5548] + 16;
  if (v32 < 0)
  {
    operator delete(v31);
  }

  v28 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v29);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v35);
}

void *_ZN2md15DebugOutputUtil14printContainerINSt3__16vectorIPN3gdc8RegistryENS2_9allocatorIS6_EEEEZNKS_13RegistryLogic18debugConsoleStringERKNS_13LayoutContextERKNS_17LogicDependenciesIJNS4_8TypeListIJNS_12SceneContextEEEENSF_IJEEEEE20ResolvedDependenciesERNS_15RegistryContextEE3__0EEvRNS2_19basic_ostringstreamIcNS2_11char_traitsIcEENS7_IcEEEERKT_T0_jj(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "[", 1);
  v7 = v6 + *(*v6 - 24);
  if ((v7[32] & 5) != 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v33 = -1;
  }

  else
  {
    (*(**(v7 + 5) + 32))(&v25);
  }

  if (a2 != a3)
  {
    for (i = a2 + 8; ; i += 8)
    {
      v9 = a1 + *(*a1 - 24);
      if ((v9[32] & 5) != 0)
      {
        memset(v23, 0, sizeof(v23));
        v24 = -1;
      }

      else
      {
        (*(**(v9 + 5) + 32))(v23);
      }

      MEMORY[0x1B8C61CD0](a1, *(*(i - 8) + 40));
      v10 = a1 + *(*a1 - 24);
      if ((v10[32] & 5) != 0)
      {
        v21 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
        v22 = -1;
      }

      else
      {
        (*(**(v10 + 5) + 32))(&v14);
      }

      if (i == a3)
      {
        break;
      }

      if (v22 > v24)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, ",", 1);
        if (v22 - v33 >= 41)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "\n", 1);
          v13 = 2;
          strcpy(__p, "  ");
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, __p, 2);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }

          v31 = v20;
          v32 = v21;
          v33 = v22;
          v27 = v16;
          v28 = v17;
          v29 = v18;
          v30 = v19;
          v25 = v14;
          v26 = v15;
        }
      }
    }
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, "]", 1);
}

void sub_1B2F83544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__tree<std::__value_type<double,std::vector<unsigned long long>>,std::__map_value_compare<double,std::__value_type<double,std::vector<unsigned long long>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::vector<unsigned long long>>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double &&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, double a3)
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
      v5 = *(v3 + 4);
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
      return v3;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<unsigned long long>::emplace_back<unsigned short &>(uint64_t a1, unsigned __int16 *a2)
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

uint64_t *std::__tree<std::__value_type<double,std::vector<unsigned long long>>,std::__map_value_compare<double,std::__value_type<double,std::vector<unsigned long long>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::vector<unsigned long long>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = a2[5];
  if (v8)
  {
    a2[6] = v8;
    operator delete(v8);
  }

  operator delete(a2);
  return v4;
}

uint64_t md::Logic<md::RegistryLogic,md::RegistryContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFBD83FDA8879FF7ELL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
    v9 = v7;
    return (*(*v6 + 160))(v6, a2, &v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::RegistryContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::RegistryContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A1C8D8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x60C4044C4A2DFLL);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::RegistryContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A1C8D8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x60C4044C4A2DFLL);
  }

  return a1;
}

void md::RegistryLogic::didBecomeInactive(md::RegistryLogic *this)
{
  v1 = (this + 144);
  std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::destroy(*(this + 18));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

void md::RegistryLogic::~RegistryLogic(md::RegistryLogic *this)
{
  md::RegistryLogic::~RegistryLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1C730;
  std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::destroy(*(this + 18));
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::RegistryManager::~RegistryManager(md::RegistryManager *this)
{
  v2 = *(this + 114);
  if (v2)
  {
    *(this + 115) = v2;
    operator delete(v2);
  }

  v3 = *(this + 111);
  if (v3)
  {
    *(this + 112) = v3;
    operator delete(v3);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 109));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 106));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 103));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 776);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 736);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 696);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 85));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 82));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 79));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 584);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 544);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 504);
  v4 = *(this + 60);
  if (v4)
  {
    *(this + 61) = v4;
    operator delete(v4);
  }

  v5 = *(this + 57);
  if (v5)
  {
    *(this + 58) = v5;
    operator delete(v5);
  }

  v6 = *(this + 54);
  if (v6)
  {
    *(this + 55) = v6;
    operator delete(v6);
  }

  v7 = *(this + 51);
  if (v7)
  {
    *(this + 52) = v7;
    operator delete(v7);
  }

  v8 = *(this + 48);
  if (v8)
  {
    *(this + 49) = v8;
    operator delete(v8);
  }

  v10 = (this + 352);
  std::vector<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v10 = (this + 328);
  std::vector<std::unique_ptr<gdc::Registry>>::__destroy_vector::operator()[abi:nn200100](&v10);
  std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::destroy(*(this + 39));
  for (i = 288; i != 240; i -= 24)
  {
    std::__tree<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>::destroy(*(this + i));
  }

  do
  {
    std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::destroy(*(this + i));
    i -= 24;
  }

  while (i != 192);
  std::mutex::~mutex((this + 144));
  std::mutex::~mutex((this + 80));
  std::__hash_table<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>>>::~__hash_table(this + 40);

  std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned int>,std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::hash<std::pair<unsigned long,unsigned int>>,std::equal_to<std::pair<unsigned long,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned int>,std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::hash<std::pair<unsigned long,unsigned int>>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>>>::~__hash_table(this);
}

md::RegistryManager *std::__shared_ptr_pointer<md::RegistryManager *,std::shared_ptr<md::RegistryManager>::__shared_ptr_default_delete<md::RegistryManager,md::RegistryManager>,std::allocator<md::RegistryManager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::RegistryManager::~RegistryManager(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::RegistryManager *,std::shared_ptr<md::RegistryManager>::__shared_ptr_default_delete<md::RegistryManager,md::RegistryManager>,std::allocator<md::RegistryManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::RegistryLogic,md::RegistryContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

uint64_t md::TileAdjustmentHelpers::adjustTileForSize(unsigned int a1, unsigned int a2, unsigned __int8 *a3, void *a4)
{
  LOBYTE(v4) = 0;
  if (!a1 || !a2)
  {
    goto LABEL_11;
  }

  v5 = a1;
  v6 = a2;
  if (a2 >= a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      ++v4;
      v6 *= 2;
    }

    while (v6 < a1);
  }

  if (v6 > a1)
  {
    do
    {
      --v4;
      v7 = v6 > 2 * v5;
      v5 *= 2;
    }

    while (v7);
  }

  if (v4 >= 1)
  {
    v8 = a3[1];
    v10 = *(a3 + 1);
    v9 = *(a3 + 2);
    v11 = *a3;
    if (v4 <= 0x1Eu)
    {
      v12 = v8 + v4;
      v13 = v10 << v4;
      v14 = v9 << v4;
      v15 = *a3;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = -1;
    }

    v35 = *(a3 + 2);
    v34 = a3[24];
    v23 = 1 << v4;
    v24 = v23 << v4;
    if (v23 << v4 >= (2 << v4))
    {
      v33 = 0;
      v25 = 0;
      v26 = 0;
      v27 = -1;
    }

    else
    {
      v33 = v8 + v4;
      v25 = (v10 << v4) + v24 / v23;
      v26 = (v9 << v4) + v24 % v23;
      v27 = v11;
    }

    v50 = v8;
    v51 = __PAIR64__(v9, v10);
    v49 = v11;
    v52 = v35;
    v53 = v34;
    v54 = v4;
    v55 = 0;
    HIBYTE(v56) = v12;
    v57 = __PAIR64__(v14, v13);
    LOBYTE(v56) = v15;
    v58 = 0;
    v59 = 1;
    while (1)
    {
      v28 = v8;
      v37[1] = v8;
      v29 = v10;
      v38 = __PAIR64__(v9, v10);
      v30 = v9;
      v31 = v11;
      v37[0] = v11;
      v39 = v35;
      v40 = v34;
      v41 = v4;
      v32 = v24;
      v42 = v24;
      v44 = v33;
      v45 = v25;
      v46 = v26;
      v43 = v27;
      v47 = 0;
      v48 = 1;
      result = geo::QuadTileIterator::operator!=(&v49, v37);
      if ((result & 1) == 0)
      {
        break;
      }

      v38 = v57;
      *v37 = v56;
      v39 = v58;
      v40 = v59;
      std::vector<geo::QuadTile>::push_back[abi:nn200100](a4, v37);
      ++v55;
      LOBYTE(v56) = v49;
      HIBYTE(v56) = v50 + v54;
      LODWORD(v57) = (v51 << v54) + v55 / (1 << v54);
      HIDWORD(v57) = (HIDWORD(v51) << v54) + v55 % (1 << v54);
      v58 = 0;
      v59 = 1;
      v8 = v28;
      v10 = v29;
      v9 = v30;
      v11 = v31;
      v24 = v32;
    }
  }

  else
  {
LABEL_11:
    v16 = a3[1];
    if (a3[1])
    {
      v17 = 0;
      if (v16 >= -v4)
      {
        v18 = -v4;
      }

      else
      {
        v18 = a3[1];
      }

      LOBYTE(v16) = v16 - v18;
      v19 = vshl_s32(*(a3 + 4), vneg_s32(vdup_n_s32(v18)));
      v20 = 1;
    }

    else
    {
      v19 = *(a3 + 4);
      v17 = *(a3 + 2);
      v20 = a3[24];
    }

    v21 = *a3;
    v50 = v16;
    v51 = v19;
    v49 = v21;
    v52 = v17;
    v53 = v20;
    return std::vector<geo::QuadTile>::push_back[abi:nn200100](a4, &v49);
  }

  return result;
}

uint64_t geo::QuadTile::begin(geo::QuadTile *this, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 4);
  v4[0] = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  return geo::QuadTileIterator::QuadTileIterator(this, v4, a3, 0);
}

uint64_t geo::QuadTile::end(geo::QuadTile *this, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 4);
  v4[0] = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  return geo::QuadTileIterator::QuadTileIterator(this, v4, a3, (1 << a3) << a3);
}

void *md::TileAdjustmentHelpers::enumerateResourceTilesWithZAdjustment(int,unsigned short,gdc::ResourceManifestInformer const*,geo::QuadTile const&,std::optional<gm::Range<unsigned char>>,std::vector<geo::QuadTile> &)::$_0::operator()(uint64_t a1, char *a2)
{
  result = (*(**a1 + 16))(v18);
  if (v19 == 1)
  {
    v5 = *(a1 + 24);
    v6 = a2[1];
    if (v6 >= HIBYTE(**(a1 + 16)))
    {
      v7 = HIBYTE(**(a1 + 16));
    }

    else
    {
      v7 = a2[1];
    }

    v8 = (v6 >= **(a1 + 16)) & ((**(a1 + 16) | (*(*(a1 + 16) + 2) << 16)) >> 16);
    if (!v8)
    {
      v7 = 0;
    }

    if (v8 == 1 && v7 > BYTE1(v18[0]))
    {
      if (a2[1])
      {
        v10 = 0;
        LOBYTE(v7) = v6 - v7;
        if (v6 >= v7)
        {
          v7 = v7;
        }

        else
        {
          v7 = a2[1];
        }

        LOBYTE(v6) = v6 - v7;
        v11 = vshl_s32(*(a2 + 4), vneg_s32(vdup_n_s32(v7)));
        v12 = 1;
      }

      else
      {
        v11 = *(a2 + 4);
        v10 = *(a2 + 2);
        v12 = a2[24];
      }

      v13 = *a2;
      v14[1] = v6;
      v15 = v11;
      v14[0] = v13;
      v16 = v10;
      v17 = v12;
      return std::vector<geo::QuadTile>::emplace_back<geo::QuadTile>(v5, v14);
    }

    else
    {
      return std::vector<geo::QuadTile>::push_back[abi:nn200100](v5, v18);
    }
  }

  return result;
}

uint64_t geo::QuadTileIterator::QuadTileIterator(uint64_t result, char *a2, char a3, unint64_t a4)
{
  *(result + 24) = 0;
  v4 = a2[1];
  *(result + 1) = v4;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  *(result + 4) = v5;
  *(result + 8) = v6;
  v7 = *a2;
  *result = *a2;
  *(result + 16) = *(a2 + 2);
  *(result + 24) = a2[24];
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = 255;
  *(result + 52) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 1;
  if ((2 << a3) > a4)
  {
    *(result + 48) = v7;
    *(result + 49) = v4 + a3;
    *(result + 52) = (v5 << a3) + a4 / (1 << a3);
    *(result + 56) = (v6 << a3) + a4 % (1 << a3);
  }

  return result;
}

uint64_t std::__function::__func<gdc::LayerDataRequestKey (*)(gdc::RequestType,unsigned short,geo::QuadTile const&),std::allocator<gdc::LayerDataRequestKey (*)(gdc::RequestType,unsigned short,geo::QuadTile const&)>,gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1C900;
  a2[1] = v2;
  return result;
}

double md::SceneContext::renderData(md::SceneContext *this, uint64_t a2, int a3)
{
  v6 = 0;
  while (1)
  {
    v8 = *(a2 + 112);
    v7 = *(a2 + 120);
    while (v8 != v7)
    {
      if (*v8 == v6)
      {
        v7 = v8;
        break;
      }

      v8 += 56;
    }

    gdc::LayerDataCollector::data(this, *(*(v7 + 13) + 24), *(*(v7 + 13) + 32), a3);
    v9 = 0;
    v10 = *(this + 2);
    v14 = *this;
    for (i = v14; gdc::DataKeyIterator::operator!=(i, v10); i = v14)
    {
      ++v9;
      gdc::DataIterator::operator++(&v14);
    }

    if (v9)
    {
      return result;
    }

    if (v6++ > 7)
    {
      return gdc::LayerDataCollector::data(this, *(*(*(a2 + 112) + 104) + 24), *(*(*(a2 + 112) + 104) + 32), a3);
    }
  }
}

void sub_1B2F852F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::destroy(STACK[0x538]);
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(STACK[0x210], v67);
  std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::destroy(STACK[0x228]);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::__emplace_unique_key_args<VKLabelNavJunction * {__strong},VKLabelNavJunction * const {__strong}&>(uint64_t *result, unint64_t a2, id *a3)
{
  v4 = result;
  v6 = result + 1;
  v5 = result[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 32);
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        break;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = result + 1;
LABEL_9:
    v9 = mdm::zone_mallocator::instance(result);
    v10 = pthread_rwlock_rdlock((v9 + 32));
    if (v10)
    {
      geo::read_write_lock::logFailure(v10, "read lock", v11);
    }

    v12 = malloc_type_zone_malloc(*v9, 0x28uLL, 0x10A0040AE65CA53uLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v12[4] = *a3;
    *v12 = 0;
    v12[1] = 0;
    v12[2] = v7;
    *v6 = v12;
    v13 = **v4;
    if (v13)
    {
      *v4 = v13;
      v12 = *v6;
    }

    result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v4[1], v12);
    ++v4[3];
  }

  return result;
}

void std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::destroy(*result);
    std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::destroy(result[1]);

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

void std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::destroy(*a1);
    std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<std::pair<GEOComposedRouteSection * const {__strong},std::vector<std::pair<int,int>>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<GEOComposedRouteSection * const {__strong},std::vector<std::pair<int,int>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  v3 = *a1;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,-[LabelNavRouteLabeler(Debug) drawNavOverlayDebugView:navContext:]::$_0 &,gm::Range<double> *,0>(__n128 *a1, __n128 *a2, double *a3, _OWORD *a4, unint64_t *a5, __n128 result)
{
  v6 = a2->n128_f64[0];
  v7 = *a3;
  if (a2->n128_f64[0] >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_f64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_f64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u64[0] = *a4;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_f64[0] = *a3;
      if (*a3 < a2->n128_f64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u64[0] = a2->n128_u64[0];
        if (a2->n128_f64[0] < a1->n128_f64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,-[LabelNavRouteLabeler(Debug) drawNavOverlayDebugView:navContext:]::$_0 &,gm::Range<double> *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v8 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v9 = *&v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_f64[0] >= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v41 = *a1;
        *a1 = *v6;
        *v6 = v41;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,-[LabelNavRouteLabeler(Debug) drawNavOverlayDebugView:navContext:]::$_0 &,gm::Range<double> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_f64[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v38 = *a1;
      *a1 = *v6;
      *v6 = v38;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_f64[0] >= v18->n128_f64[0])
    {
      return 1;
    }

    v39 = *v18;
    *v18 = *v20;
    *v20 = v39;
    if (v18->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v40 = *v6;
    *v6 = *v18;
    *v18 = v40;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_f64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_f64[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v30->n128_f64[0];
    if (v30->n128_f64[0] < v11->n128_f64[0])
    {
      v34 = v30->n128_u64[1];
      v35 = v31;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = *(a1 + v35 + 16);
        v35 -= 16;
        if (v33 >= v36)
        {
          v37 = a1 + v35 + 48;
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v33;
      *(v37 + 8) = v34;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

uint64_t md::LabelManager::clearSystemCaches(md::LabelManager *this)
{
  v6 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = this;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "MDL:LabelManager:%p Clearing System Caches", &v4, 0xCu);
  }

  CTFontRemoveFromCaches();
  CGFontDBGetLocal();
  CGFontDBPurgeAllFonts();
  CGFontCacheGetLocalCache();
  return CGFontCacheReset();
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>>(uint64_t a1, void *a2)
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

uint64_t md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::geoObjectWithRetainingTile(void *a1, void *a2)
{
  v4 = a1[8];
  v3 = a1[9];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1[7];
}

void md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A579A0;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4 = (a1 + 24);
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A579A0;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v5 = (a1 + 24);
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(uint64_t a1, void *a2)
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

uint64_t md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::geoObjectWithRetainingTile(void *a1, void *a2)
{
  v4 = a1[8];
  v3 = a1[9];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1[7];
}

void md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57A08;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4 = (a1 + 24);
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57A08;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v5 = (a1 + 24);
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(uint64_t a1, void *a2)
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

void std::vector<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void (__cdecl ***result)(std::__shared_weak_count *__hidden this))
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1->~__shared_weak_count_0;
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        result = *(v3 - 1);
        if (result)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](result);
        }

        v3 = (v3 - 24);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>>(v6, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>>(uint64_t a1, void *a2)
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

uint64_t md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>::geoObjectWithRetainingTile(void *a1, void *a2)
{
  v4 = a1[8];
  v3 = a1[9];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1[7];
}

void md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57A70;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4 = (a1 + 24);
  std::vector<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57A70;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v5 = (a1 + 24);
  std::vector<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *> *> *>(uint64_t a1, void *a2)
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

void std::vector<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,geo::allocator_adapter<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void (__cdecl ***result)(std::__shared_weak_count *__hidden this))
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1->~__shared_weak_count_0;
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        result = *(v3 - 1);
        if (result)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](result);
        }

        v3 = (v3 - 24);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>>(v6, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>>(uint64_t a1, void *a2)
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

void md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57C88;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4 = (a1 + 24);
  std::vector<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,geo::allocator_adapter<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57C88;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v5 = (a1 + 24);
  std::vector<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,geo::allocator_adapter<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(uint64_t a1, void *a2)
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

uint64_t md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::enumerateGEOVectorObjects(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  for (i = *(result + 32); v2 != i; result = std::function<void ()(GeoCodecsFeature const*)>::operator()(*(a2 + 24), v5))
  {
    v5 = *v2;
    v2 += 3;
  }

  return result;
}

void md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57B40;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4 = (a1 + 24);
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57B40;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v5 = (a1 + 24);
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(uint64_t a1, void *a2)
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

void std::vector<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void (__cdecl ***result)(std::__shared_weak_count *__hidden this))
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1->~__shared_weak_count_0;
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        result = *(v3 - 1);
        if (result)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](result);
        }

        v3 = (v3 - 24);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>>(v6, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>>(uint64_t a1, void *a2)
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

uint64_t md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>::geoObjectWithRetainingTile(void *a1, void *a2)
{
  v4 = a1[8];
  v3 = a1[9];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1[7];
}

void md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57AD8;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4 = (a1 + 24);
  std::vector<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>::~LabelFeatureThunk(uint64_t a1)
{
  *a1 = &unk_1F2A57AD8;
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v5 = (a1 + 24);
  std::vector<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,md::LabelFeaturePool::RemovedVersionInfo>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long long,md::LabelFeaturePool::RemovedVersionInfo>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelSourceTile>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *> *> *>(uint64_t a1, void *a2)
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

void std::allocator_traits<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *>,mdm::zone_mallocator>>::destroy[abi:nn200100]<std::pair<std::string const,std::unique_ptr<md::FontTrackingScaleInfo>>,void,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C4000248CA0);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelCollider::GridNode>(uint64_t a1, void *a2)
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

void md::LabelManager::updateTileZBias(md::LabelManager *this)
{
  v2 = atomic_load(this + 3045);
  if (v2)
  {
    atomic_store(0, this + 3368);
  }

  else
  {
    v3 = +[VKPlatform sharedPlatform];
    atomic_store(-[v3 tileZBias], this + 3368);
  }
}

void *md::LabelManager::setNeedsDisplay(void *this)
{
  v1 = this[17];
  if (v1)
  {
    v2 = this;
    this = *(v1 + 24);
    if (this)
    {
      v4 = v2;
      v3 = 9;
      return (*(*this + 48))(this, &v4, &v3);
    }
  }

  return this;
}

void std::__function::__func<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0,std::allocator<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void *std::__function::__func<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0,std::allocator<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F2A1CAB0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[3];
  *(a2 + 29) = *(result + 29);
  *(a2 + 24) = v4;
  *(a2 + 37) = 0;
  *(a2 + 39) = 0;
  return result;
}

void std::__function::__func<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0,std::allocator<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A1CAB0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0,std::allocator<md::LabelManager::evaluateUpdateOperation(BOOL &,BOOL &)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A1CAB0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<md::LabelManager::grabStateFromContext(md::LayoutContext const&)::$_0,std::allocator<md::LabelManager::grabStateFromContext(md::LayoutContext const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 3034) = 1;
  return md::LabelManager::queueRestyle(v1, 0);
}

uint64_t std::__function::__func<md::LabelManager::grabStateFromContext(md::LayoutContext const&)::$_0,std::allocator<md::LabelManager::grabStateFromContext(md::LayoutContext const&)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1CA68;
  a2[1] = v2;
  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::BuildingFlatStroke::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::BuildingFlatStroke::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::BuildingFlatStroke::BuildingFlatStrokeMesh::~BuildingFlatStrokeMesh(ggl::BuildingFlatStroke::BuildingFlatStrokeMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::BuildingFlatStroke::BuildingFlatStrokeMesh::~BuildingFlatStrokeMesh(ggl::BuildingFlatStroke::BuildingFlatStrokeMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::BuildingFlatStroke::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::BuildingFlatStroke::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup::~BuildingFlatStrokePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F893F0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&>,std::tuple<>>::containsAll<md::ls::RegisterHandle const,md::ls::EnteringView const,md::ls::BaseMapTileHandle const,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const,md::ls::MapDataTypeV const,md::ls::AssociationTileHandle const,md::ls::GlobeMatrixData const,md::ls::TileMatrix const,md::ls::TileTransformConstantDataHandle const,md::ls::TileViewConstantDataHandle const,md::ls::FlyoverOctileKey const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0 && *(v13 + 4 * (a3 & 0x3F)) == a2 && (v14 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v14) >> 3) && (v15 = *(v14 + 8 * v3)) != 0 && *(v15 + 4 * (a3 & 0x3F)) == a2 && (v16 = *(a1[8] + 8), v3 < (*(a1[8] + 16) - v16) >> 3) && (v17 = *(v16 + 8 * v3)) != 0 && *(v17 + 4 * (a3 & 0x3F)) == a2 && (v18 = *(a1[9] + 8), v3 < (*(a1[9] + 16) - v18) >> 3) && (v19 = *(v18 + 8 * v3)) != 0 && *(v19 + 4 * (a3 & 0x3F)) == a2 && (v20 = *(a1[10] + 8), v3 < (*(a1[10] + 16) - v20) >> 3) && (v21 = *(v20 + 8 * v3)) != 0 && *(v21 + 4 * (a3 & 0x3F)) == a2 && (v22 = *(a1[11] + 8), v3 < (*(a1[11] + 16) - v22) >> 3) && (v23 = *(v22 + 8 * v3)) != 0 && *(v23 + 4 * (a3 & 0x3F)) == a2 && (v24 = *(a1[12] + 8), v3 < (*(a1[12] + 16) - v24) >> 3) && (v25 = *(v24 + 8 * v3)) != 0)
  {
    return *(v25 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<md::ita::CollectFlyoverMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&>)::$_0,std::allocator<md::ita::CollectFlyoverMeshRenderables::operator()(ecs2::Query<md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&>)::$_0>,void ()(md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::FlyoverRenderable> const&,md::ls::MapDataTypeV const&,md::ls::AssociationTileHandle const&,md::ls::GlobeMatrixData const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::FlyoverOctileKey const&)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, _OWORD *a8, void *a9, void *a10, void *a11, uint64_t a12)
{
  v13 = a1;
  v168 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 16);
  v15 = **(a1 + 8);
  BaseMapTileDataRenderable = md::VKMRenderResourcesStore::getBaseMapTileDataRenderable(v15, *a4);
  v16 = a8[5];
  v162 = a8[4];
  v163 = v16;
  v17 = a8[7];
  v164 = a8[6];
  v165 = v17;
  v18 = a8[1];
  *v159 = *a8;
  *&v159[16] = v18;
  v19 = a8[3];
  v160 = a8[2];
  v161 = v19;
  v20 = *(v15 + 12648);
  v21 = *(v15 + 12664);
  v151 = v13;
  if (*(v15 + 12640) == v20)
  {
    v22 = ((*(v15 + 12672) - v21) >> 3) | 0x100000000;
    *v166 = v22;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v15 + 12664, v166);
  }

  else
  {
    v22 = *(v21 + 8 * *(v20 - 8));
    *(v15 + 12648) = v20 - 8;
  }

  *v158 = v22;
  *v166 = xmmword_1B33B09D0;
  *&v166[16] = 0;
  v149 = v22;
  v23 = v22 >> 6;
  v24 = *(v15 + 12496);
  v25 = *(v15 + 12488);
  if (v23 >= (v24 - v25) >> 3)
  {
    v26 = v23 + 1;
    v27 = v23 + 1 - ((v24 - v25) >> 3);
    v28 = *(v15 + 12504);
    if (v27 > (v28 - v24) >> 3)
    {
      v29 = v28 - v25;
      if (v29 >> 2 > v26)
      {
        v26 = v29 >> 2;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v26;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v30);
    }

    bzero(*(v15 + 12496), 8 * v27);
    *(v15 + 12496) = v24 + 8 * v27;
    v25 = *(v15 + 12488);
  }

  v31 = *(v25 + 8 * v23);
  if (!v31)
  {
    operator new();
  }

  v32 = (v31 + 16 * (v149 & 0x3F));
  if (*v32 == -1 && v32[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v15 + 12512, v158);
    v34 = ((*(v15 + 12520) - *(v15 + 12512)) >> 3) - 1;
    *v32 = HIDWORD(v149);
    v32[1] = v34;
    *&v155 = v159;
    v35 = v34 & 0x3F;
    v36 = *(*(v15 + 12536) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((v15 + 12536), v34)) + 24 * v35;
    *v36 = *v166;
    *(v36 + 16) = *&v166[16];
    v37 = v155;
    v38 = v34 >> 6;
    v39 = *(v15 + 12592);
    v40 = *(v15 + 12584);
    v41 = v39 - v40;
    if (v34 >> 6 >= (v39 - v40) >> 3)
    {
      v42 = v38 + 1;
      v43 = v38 + 1 - (v41 >> 3);
      v44 = *(v15 + 12600);
      v153 = v35;
      if (v43 > (v44 - v39) >> 3)
      {
        v45 = v44 - v40;
        v46 = (v44 - v40) >> 2;
        if (v46 <= v42)
        {
          v46 = v38 + 1;
        }

        if (v45 >= 0x7FFFFFFFFFFFFFF8)
        {
          v47 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = v46;
        }

        if (!(v47 >> 61))
        {
          operator new();
        }

        goto LABEL_156;
      }

      v48 = 0;
      v49 = (v43 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v50 = vdupq_n_s64(v49);
      do
      {
        v51 = vmovn_s64(vcgeq_u64(v50, vorrq_s8(vdupq_n_s64(v48), xmmword_1B33B0560)));
        if (v51.i8[0])
        {
          *(v39 + 8 * v48) = 0;
        }

        if (v51.i8[4])
        {
          *(v39 + 8 * v48 + 8) = 0;
        }

        v48 += 2;
      }

      while (v49 - ((v43 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v48);
      *(v15 + 12592) = v39 + 8 * v43;
      v52 = *(v15 + 12616);
      v53 = *(v15 + 12608);
      v54 = (v52 - v53) >> 4;
      if (v54 <= v38)
      {
        v55 = v42 - v54;
        v56 = *(v15 + 12624);
        if (v55 > (v56 - v52) >> 4)
        {
          v57 = v56 - v53;
          v58 = v57 >> 3;
          if (v57 >> 3 <= v42)
          {
            v58 = v38 + 1;
          }

          if (v57 >= 0x7FFFFFFFFFFFFFF0)
          {
            v58 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v58 >> 60))
          {
            operator new();
          }

          goto LABEL_156;
        }

        bzero(*(v15 + 12616), 16 * v55);
        *(v15 + 12616) = v52 + 16 * v55;
        v35 = v153;
      }

      else if (v42 < v54)
      {
        *(v15 + 12616) = v53 + 16 * v42;
      }

      v40 = *(v15 + 12584);
      if (v41 < (*(v15 + 12592) - v40))
      {
        operator new();
      }
    }

    v59 = (*(v40 + 8 * v38) + (v35 << 7));
    v60 = *v37;
    v61 = v37[1];
    v62 = v37[3];
    v59[2] = v37[2];
    v59[3] = v62;
    *v59 = v60;
    v59[1] = v61;
    v63 = v37[4];
    v64 = v37[5];
    v65 = v37[7];
    v59[6] = v37[6];
    v59[7] = v65;
    v59[4] = v63;
    v59[5] = v64;
    v13 = v151;
  }

  v66 = *(v13 + 8);
  if (*(BaseMapTileDataRenderable + 24) == 255)
  {
    goto LABEL_135;
  }

  v67 = *v66;
  memset(v159, 0, 24);
  *v158 = 0;
  v68 = *(v67 + 8720);
  v69 = *(v67 + 8736);
  if (*(v67 + 8712) == v68)
  {
    v148 = ((*(v67 + 8744) - v69) >> 3) | 0x100000000;
    *v166 = v148;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v67 + 8736, v166);
  }

  else
  {
    v148 = *(v69 + 8 * *(v68 - 8));
    *(v67 + 8720) = v68 - 8;
  }

  *&v155 = v148;
  v70 = v148 >> 6;
  v71 = *(v67 + 8520);
  v72 = *(v67 + 8512);
  if (v70 >= (v71 - v72) >> 3)
  {
    v73 = v70 + 1;
    v74 = v70 + 1 - ((v71 - v72) >> 3);
    v75 = *(v67 + 8528);
    if (v74 > (v75 - v71) >> 3)
    {
      v76 = v75 - v72;
      if (v76 >> 2 > v73)
      {
        v73 = v76 >> 2;
      }

      if (v76 >= 0x7FFFFFFFFFFFFFF8)
      {
        v77 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v77 = v73;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v77);
    }

    bzero(*(v67 + 8520), 8 * v74);
    *(v67 + 8520) = v71 + 8 * v74;
    v72 = *(v67 + 8512);
  }

  v78 = *(v72 + 8 * v70);
  if (!v78)
  {
    operator new();
  }

  v79 = (v78 + 16 * (v148 & 0x3F));
  if (*v79 != -1 || v79[1] != 0)
  {
    v81 = *v158;
    *v158 = 0;
    if (v81)
    {
      (*(*v81 + 8))(v81);
    }

    goto LABEL_132;
  }

  std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v67 + 8536, &v155);
  v82 = ((*(v67 + 8544) - *(v67 + 8536)) >> 3) - 1;
  *v79 = HIDWORD(v148);
  v79[1] = v82;
  v83 = v82 & 0x3F;
  v84 = *(*(v67 + 8560) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((v67 + 8560), v82)) + 24 * v83;
  *v84 = xmmword_1B33B09D0;
  *(v84 + 16) = 0;
  v85 = v82 >> 6;
  v86 = *(v67 + 8616);
  v87 = *(v67 + 8608);
  v88 = v86 - v87;
  if (v82 >> 6 >= (v86 - v87) >> 3)
  {
    v89 = v85 + 1;
    v90 = v85 + 1 - (v88 >> 3);
    v91 = *(v67 + 8624);
    if (v90 > (v91 - v86) >> 3)
    {
      v92 = v91 - v87;
      v93 = (v91 - v87) >> 2;
      if (v93 <= v89)
      {
        v93 = v85 + 1;
      }

      if (v92 >= 0x7FFFFFFFFFFFFFF8)
      {
        v94 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v94 = v93;
      }

      if (!(v94 >> 61))
      {
        operator new();
      }

      goto LABEL_156;
    }

    v95 = 0;
    v96 = (v90 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v97 = vdupq_n_s64(v96);
    do
    {
      v98 = vmovn_s64(vcgeq_u64(v97, vorrq_s8(vdupq_n_s64(v95), xmmword_1B33B0560)));
      if (v98.i8[0])
      {
        *(v86 + 8 * v95) = 0;
      }

      if (v98.i8[4])
      {
        *(v86 + 8 * v95 + 8) = 0;
      }

      v95 += 2;
    }

    while (v96 - ((v90 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v95);
    *(v67 + 8616) = v86 + 8 * v90;
    v99 = *(v67 + 8640);
    v100 = *(v67 + 8632);
    v101 = (v99 - v100) >> 4;
    if (v101 <= v85)
    {
      v103 = v89 - v101;
      v104 = *(v67 + 8648);
      if (v103 > (v104 - v99) >> 4)
      {
        v105 = v104 - v100;
        v106 = v105 >> 3;
        if (v105 >> 3 <= v89)
        {
          v106 = v85 + 1;
        }

        if (v105 >= 0x7FFFFFFFFFFFFFF0)
        {
          v107 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v107 = v106;
        }

        if (!(v107 >> 60))
        {
          operator new();
        }

        goto LABEL_156;
      }

      bzero(*(v67 + 8640), 16 * v103);
      v102 = v99 + 16 * v103;
    }

    else
    {
      if (v89 >= v101)
      {
        goto LABEL_99;
      }

      v102 = v100 + 16 * v89;
    }

    *(v67 + 8640) = v102;
LABEL_99:
    v87 = *(v67 + 8608);
    if (v88 < (*(v67 + 8616) - v87))
    {
      operator new();
    }
  }

  v108 = *(v87 + 8 * v85) + 24 * v83;
  *v108 = *v159;
  *(v108 + 16) = *&v159[16];
  *&v159[8] = 0;
  *&v159[16] = 0;
  v109 = *(v67 + 8664);
  v110 = *(v67 + 8656);
  v111 = v109 - v110;
  if (v85 >= (v109 - v110) >> 3)
  {
    v112 = v85 + 1;
    v113 = v85 + 1 - (v111 >> 3);
    v114 = *(v67 + 8672);
    if (v113 > (v114 - v109) >> 3)
    {
      v115 = v114 - v110;
      v116 = (v114 - v110) >> 2;
      if (v116 <= v112)
      {
        v116 = v85 + 1;
      }

      if (v115 >= 0x7FFFFFFFFFFFFFF8)
      {
        v117 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v117 = v116;
      }

      if (!(v117 >> 61))
      {
        operator new();
      }

      goto LABEL_156;
    }

    v118 = 0;
    v119 = (v113 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v120 = vdupq_n_s64(v119);
    do
    {
      v121 = vmovn_s64(vcgeq_u64(v120, vorrq_s8(vdupq_n_s64(v118), xmmword_1B33B0560)));
      if (v121.i8[0])
      {
        *(v109 + 8 * v118) = 0;
      }

      if (v121.i8[4])
      {
        *(v109 + 8 * v118 + 8) = 0;
      }

      v118 += 2;
    }

    while (v119 - ((v113 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v118);
    *(v67 + 8664) = v109 + 8 * v113;
    v122 = *(v67 + 8688);
    v123 = *(v67 + 8680);
    v124 = (v122 - v123) >> 4;
    if (v124 > v85)
    {
      if (v112 >= v124)
      {
        goto LABEL_129;
      }

      v125 = v123 + 16 * v112;
LABEL_128:
      *(v67 + 8688) = v125;
LABEL_129:
      v110 = *(v67 + 8656);
      if (v111 < (*(v67 + 8664) - v110))
      {
        operator new();
      }

      goto LABEL_131;
    }

    v126 = v112 - v124;
    v127 = *(v67 + 8696);
    if (v126 <= (v127 - v122) >> 4)
    {
      bzero(*(v67 + 8688), 16 * v126);
      v125 = v122 + 16 * v126;
      goto LABEL_128;
    }

    v128 = v127 - v123;
    v129 = v128 >> 3;
    if (v128 >> 3 <= v112)
    {
      v129 = v85 + 1;
    }

    if (v128 >= 0x7FFFFFFFFFFFFFF0)
    {
      v130 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v130 = v129;
    }

    if (!(v130 >> 60))
    {
      operator new();
    }

LABEL_156:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_131:
  v131 = *(v110 + 8 * v85);
  v132 = *v158;
  *v158 = 0;
  *(v131 + 8 * v83) = v132;
LABEL_132:
  v133 = *&v159[16];
  if (*&v159[16])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v159[16]);
  }

  v134 = *v14;
  v135 = ecs2::ExecutionTaskContext::currentEntity(v133);
  ecs2::addComponent<md::ls::FlyoverCommonS2TransformHandle>(v134, v135, v148);
  v13 = v151;
  v66 = *(v151 + 8);
LABEL_135:
  Registry = md::VKMRenderResourcesStore::getRegistry(*v66, *a2);
  md::FlyoverCompleteTileDataContext::getOctileInstances(&v156, **(v13 + 24), a12, *(BaseMapTileDataRenderable + 56));
  v136 = v156;
  v147 = v157;
  if (v156 != v157)
  {
    do
    {
      if (*(v136 + 160) == 1)
      {
        v137 = *(v151 + 24);
        v138 = *v137;
        v139 = *(*v137 + 16);
        if (v139)
        {
          *&v159[4] = *(a12 + 4);
          *v159 = *a12;
          *&v159[16] = *(a12 + 16);
          v159[24] = *(a12 + 24);
          v160 = *(a12 + 32);
          *(&v161 + 4) = *(v136 + 4);
          LOWORD(v161) = *v136;
          *&v162 = v136[2];
          BYTE8(v162) = *(v136 + 24);
          v163 = *(v136 + 2);
          v140 = std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>>>::find<std::pair<md::FlyoverOctile,md::FlyoverOctile>>(v139, v159);
          if (v140)
          {
            v141 = v140;
            v142 = *(v138 + 8);
            *&v159[4] = *(a12 + 4);
            *v159 = *a12;
            *&v159[16] = *(a12 + 16);
            v159[24] = *(a12 + 24);
            v160 = *(a12 + 32);
            *(&v161 + 4) = *(v136 + 4);
            LOWORD(v161) = *v136;
            *&v162 = v136[2];
            BYTE8(v162) = *(v136 + 24);
            v163 = *(v136 + 2);
            geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::find(v142, v159);
            v143 = (v141 + 112);
          }

          else
          {
            v143 = &md::LogicManager::executionOrder(void)const::empty;
          }
        }

        else
        {
          v143 = &md::LogicManager::executionOrder(void)const::empty;
        }
      }

      else
      {
        v143 = md::MeshRenderableContext::renderablesForRegistry(**(v151 + 32), Registry);
      }

      if (v143[1] != *v143)
      {
        __n = ecs2::ExecutionTaskContext::createEntity(*(*v14 + 8));
        *v166 = &unk_1F2A1CDB8;
        *&v166[8] = __n << 32;
        v167 = v166;
        *&v159[24] = v159;
        *v159 = &unk_1F2A1CDB8;
        *&v159[8] = __n << 32;
        LODWORD(v160) = 0;
        ecs2::Runtime::queueCommand();
        if (v160 != -1)
        {
          (off_1F2A1CD80[v160])(&v155, v159);
        }

        LODWORD(v160) = -1;
        std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v166);
        v144 = (*(***v143 + 24))(**v143);
        *v166 = &unk_1F2A1CE00;
        *&v166[8] = v144;
        *&v166[16] = __n;
        v167 = v166;
        *&v159[24] = v159;
        *v159 = &unk_1F2A1CE00;
        *&v159[8] = *&v166[8];
        *&v159[20] = 0;
        LODWORD(v160) = 0;
        ecs2::Runtime::queueCommand();
        if (v160 != -1)
        {
          (off_1F2A1CD80[v160])(&v155, v159);
        }

        LODWORD(v160) = -1;
        std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v166);
        *v166 = &unk_1F2A1CE48;
        *&v166[8] = __n << 32;
        v167 = v166;
        *&v159[24] = v159;
        *v159 = &unk_1F2A1CE48;
        *&v159[8] = __n << 32;
        LODWORD(v160) = 0;
        ecs2::Runtime::queueCommand();
        if (v160 != -1)
        {
          (off_1F2A1CD80[v160])(&v155, v159);
        }

        LODWORD(v160) = -1;
        std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v166);
        v145 = *(BaseMapTileDataRenderable + 80);
        *v159 = *(BaseMapTileDataRenderable + 64);
        *&v159[16] = v145;
        operator new();
      }

      v136 += 22;
    }

    while (v136 != v147);
    v136 = v156;
  }

  if (v136)
  {
    operator delete(v136);
  }
}

void sub_1B2F8DDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a57)
  {
    (*(*a57 + 8))(a57, a2, a3, a4, a5, a6, a7, a8);
  }

  if (STACK[0x210])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x210]);
  }

  _Unwind_Resume(a1);
}

uint64_t ecs2::addComponent<md::ls::FlyoverCommonS2TransformHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A52228;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A52228;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::SharedTileMatrix>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A538E0;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A538E0;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::ViewConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A508C8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A508C8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::TransformConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A50998;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A50998;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::FlyoverInstance>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F6E8;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A4F6E8;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A1CD80[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void ecs2::addComponent<md::BoundData>(uint64_t a1, int a2, __int128 *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v4 = *(a3 + 2);
  operator new();
}

uint64_t ecs2::addComponent<md::ls::MeshLayerTypeV>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A431F8;
  v6 = a3 | (a2 << 32);
  v7 = &v5;
  v8[3] = v8;
  v8[0] = &unk_1F2A431F8;
  v8[1] = v6;
  v9 = 0;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A1CD80[v9])(&v4, v8);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void ecs2::addComponent<md::ls::AssociationHandle>(uint64_t a1, int a2, __int128 *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v4 = *(a3 + 2);
  operator new();
}

uint64_t ecs2::addComponent<md::ls::IsMercator>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F9E8;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A4F9E8;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A1CD80[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void mre::GGLResourceStore::addTextureHandleToCache(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[9];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = a2;
    if (a2 >= *&v5)
    {
      v7 = a2 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & a2;
  }

  v8 = *(a1[8] + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == a2)
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
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  v9[4] = a4;
  *(v9 + 40) = a5;
  v11 = (a4 + ((a5 - 0x61C8864680B583EBLL) << 6) - 0x3A3AA7D820E2E4E6) ^ (a5 - 0x61C8864680B583EBLL);
  v12 = a1[4];
  if (!*&v12)
  {
    goto LABEL_40;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = (a4 + ((a5 - 0x61C8864680B583EBLL) << 6) - 0x3A3AA7D820E2E4E6) ^ (a5 - 0x61C8864680B583EBLL);
    if (v11 >= *&v12)
    {
      v14 = v11 % *&v12;
    }
  }

  else
  {
    v14 = v11 & (*&v12 - 1);
  }

  v15 = *(a1[3] + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_40:
    operator new();
  }

  while (2)
  {
    v17 = v16[1];
    if (v17 != v11)
    {
      if (v13.u32[0] > 1uLL)
      {
        if (v17 >= *&v12)
        {
          v17 %= *&v12;
        }
      }

      else
      {
        v17 &= *&v12 - 1;
      }

      if (v17 != v14)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (v16[2] != a4 || *(v16 + 24) != a5)
    {
LABEL_39:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v16[4] = a2;
  *(v16 + 40) = a3;
}

void ecs2::addComponent<md::ls::TextureHandleForType<Flyover::NightTexture>>(uint64_t a1, int a2, __int128 *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  operator new();
}

void ecs2::addComponent<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(uint64_t a1, int a2, __int128 *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  operator new();
}

uint64_t ecs2::addComponent<md::ls::FlyoverCommonTransformConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A52158;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A52158;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::FlyoverClipConstantDataHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A52498;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A52498;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::FlyoverCommonMaterialHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A523C8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A523C8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::FlyoverCommonTexcoordsHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A522F8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A522F8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::PredefinedRenderState>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A4F868;
  v6 = a3 | (a2 << 32);
  v7 = &v5;
  v8[3] = v8;
  v8[0] = &unk_1F2A4F868;
  v8[1] = v6;
  v9 = 0;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A1CD80[v9])(&v4, v8);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::NormalsHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A51018;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A51018;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::ElevationHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A51288;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A51288;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::UVsHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A511B8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A511B8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void ecs2::addComponent<md::ls::IndexRange>(uint64_t a1, int a2, __int128 *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  operator new();
}

uint64_t ecs2::addComponent<md::ls::IntendedSceneLayer>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A1D3A0;
  v6 = a3 | (a2 << 32);
  v7 = &v5;
  v8[3] = v8;
  v8[0] = &unk_1F2A1D3A0;
  v8[1] = v6;
  v9 = 0;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F2A1CD80[v9])(&v4, v8);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::InstanceCount>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A51638;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A51638;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t ecs2::addComponent<md::ls::HasMeshHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A507F8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A507F8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A1CD80[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::HasMeshHandle>(ecs2::Entity,md::ls::HasMeshHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>(void)::metadata;
  HasMesh = ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(a2);
  v7 = HasMesh;
  v8 = v4 >> 22;
  v10 = (HasMesh + 8);
  v9 = *(HasMesh + 8);
  if (v4 >> 22 >= (*(HasMesh + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((HasMesh + 8), v8 + 1);
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
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
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
    v55 = a2;
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
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMeshHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::HasMeshHandle>(ecs2::Entity,md::ls::HasMeshHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A507F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::BoundsWidth>(ecs2::Entity,md::ls::BoundsWidth &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1D508;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::PrimitiveType>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PrimitiveType>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>(void)::metadata) = *(v55 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PrimitiveType>(ecs2::Entity,md::ls::PrimitiveType &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1D4C0;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderableMeshVertexFormat>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshVertexFormat>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>(void)::metadata) = *(v55 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderableMeshVertexFormat>(ecs2::Entity,md::ls::RenderableMeshVertexFormat &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1D478;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderableMeshType>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshType>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata) = *(v55 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableMeshType>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableMeshType>(void)::localId;
    unk_1EB82D830 = 0xDF7A13395BE275BCLL;
    qword_1EB82D838 = "md::ls::RenderableMeshType]";
    qword_1EB82D840 = 26;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshType>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18RenderableMeshTypeEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshType>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshType>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18RenderableMeshTypeEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41EA0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41E60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41E80;
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

void ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41E60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderableMeshType,64ul>::~storage(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RenderableMeshType>(ecs2::Entity,md::ls::RenderableMeshType &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1D430;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::BasicRegistry<void>::add<md::ls::InstanceDataV>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceDataV>(a1);
  v8 = v7;
  v9 = a2 >> 22;
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
    v56 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 16 * (v14 & 0x3F);
    v57 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    v58 = *(v56 + 8);
    *v56 = v57;
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v58);
    }

    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  v60 = v6;
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2;
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2;
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v59 = a1;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_58;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v47 = v33 - v45;
      v48 = *(v8 + 96);
      if (v47 > (v48 - v44) >> 4)
      {
        v49 = v48 - v43;
        v50 = v49 >> 3;
        if (v49 >> 3 <= v33)
        {
          v50 = v29 + 1;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFF0)
        {
          v51 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v50;
        }

        if (!(v51 >> 60))
        {
          operator new();
        }

LABEL_58:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v47);
      v46 = v44 + 16 * v47;
    }

    else
    {
      if (v33 >= v45)
      {
        goto LABEL_50;
      }

      v46 = v43 + 16 * v33;
    }

    *(v8 + 88) = v46;
LABEL_50:
    v31 = *(v8 + 56);
    a1 = v59;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  v52 = *(v31 + 8 * v29);
  v6 = v60;
  *(v52 + 16 * (v28 & 0x3F)) = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v53 = *(v8 + 152);
  for (i = *(v8 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), a2);
  }

LABEL_54:
  v55 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v55 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>(void)::metadata) = *(a1 + 4096);
}