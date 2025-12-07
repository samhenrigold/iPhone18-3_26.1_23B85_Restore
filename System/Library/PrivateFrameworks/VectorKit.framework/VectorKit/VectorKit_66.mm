void sub_1B2C25038(_Unwind_Exception *a1)
{
  STACK[0x540] = &unk_1F2A3ED40;

  md::ARWalkingFeatureSet::~ARWalkingFeatureSet(&STACK[0x2F0]);
  _Unwind_Resume(a1);
}

void md::ARWalkingSupport::restyleFeatures(uint64_t *a1, void *a2)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    md::LabelFeatureStyler::restyleFeatures(*(*a1 + 296), a2);
    if (*a2 == a2[1])
    {
      return;
    }

    goto LABEL_22;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v4 = std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::reserve(&v25, 0xAAAAAAAAAAAAAAABLL * ((a1[59] - a1[58]) >> 3));
  v5 = a1[58];
  v6 = a1[59];
  if (v5 == v6)
  {
    v7 = v26;
  }

  else
  {
    v7 = v26;
    do
    {
      v8 = *(v5 + 8);
      if (v7 >= v27)
      {
        v9 = (v7 - v25) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v10 = (v27 - v25) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v27 - v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        v24[4] = v28;
        if (v11)
        {
          v12 = mdm::zone_mallocator::instance(v4);
          v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeature *>(v12, v11);
        }

        else
        {
          v13 = 0;
        }

        v15 = &v13[8 * v11];
        v14 = &v13[8 * v9];
        *v14 = v8;
        v7 = v14 + 8;
        v16 = &v14[-(v26 - v25)];
        memcpy(v16, v25, v26 - v25);
        v17 = v25;
        v18 = v27;
        v25 = v16;
        v26 = v7;
        v27 = v15;
        v24[2] = v17;
        v24[3] = v18;
        v24[0] = v17;
        v24[1] = v17;
        v4 = std::__split_buffer<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator> &>::~__split_buffer(v24);
      }

      else
      {
        *v7 = v8;
        v7 += 8;
      }

      v26 = v7;
      v5 += 24;
    }

    while (v5 != v6);
  }

  v19 = v25;
  md::LabelFeatureStyler::restyleFeatures(*(*a1 + 296), &v25);
  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v25);
  if (v19 != v7)
  {
LABEL_22:
    v20 = *a1;
    *(v20 + 3034) = 1;
    v21 = atomic_load((v20 + 3053));
    if (v21)
    {
      v22 = *(v20 + 136);
      if (v22)
      {
        v23 = *(v22 + 56);
        if (v23)
        {
          std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v23, v20, 9);
        }
      }
    }
  }
}

uint64_t md::ARWalkingFeatureSet::operator=(uint64_t a1, uint64_t a2)
{
  if (geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1, *(a2 + 8)) == a2)
  {
    goto LABEL_222;
  }

  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = v7 - v6;
  v9 = *(a1 + 40);
  if (v9 - v4 < (v7 - v6))
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    if (v4)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 24);
      if (v11 != v4)
      {
        do
        {
          v11 -= 24;
          std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(v11);
        }

        while (v11 != v4);
        v12 = *v5;
      }

      *(a1 + 32) = v4;
      operator delete(v12);
      v9 = 0;
      *v5 = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
    }

    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= v10)
      {
        v14 = v10;
      }

      if (v13 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v14;
      }

      std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__vallocate[abi:nn200100]((a1 + 24), v15);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = *(a1 + 32);
  v17 = v16 - v4;
  if (v16 - v4 >= v8)
  {
    if (v6 != v7)
    {
      do
      {
        std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>::operator=[abi:nn200100](v4, v6);
        v6 += 24;
        v4 += 24;
      }

      while (v6 != v7);
      v16 = *(a1 + 32);
    }

    while (v16 != v4)
    {
      v16 -= 3;
      std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(v16);
    }

    *(a1 + 32) = v4;
  }

  else
  {
    if (v16 != v4)
    {
      v18 = v16 - v4;
      v19 = *(a2 + 24);
      do
      {
        std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>::operator=[abi:nn200100](v4, v19);
        v19 += 24;
        v4 += 24;
        v18 -= 24;
      }

      while (v18);
      v16 = *(a1 + 32);
    }

    *(a1 + 32) = std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>,std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>*,std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>*,std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>*>(&v17[v6], v7, v16);
  }

  v20 = *(a1 + 48);
  v22 = *(a2 + 48);
  v21 = *(a2 + 56);
  v23 = v21 - v22;
  if (*(a1 + 64) - v20 < (v21 - v22))
  {
    std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vdeallocate((a1 + 48));
    if ((v23 >> 3) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v24 = *(a1 + 64) - *(a1 + 48);
    v25 = v24 >> 2;
    if (v24 >> 2 <= (v23 >> 3))
    {
      v25 = v23 >> 3;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      v26 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 48), v26);
    v20 = *(a1 + 56);
    goto LABEL_41;
  }

  v27 = *(a1 + 56);
  v28 = v27 - v20;
  if (v27 - v20 >= v23)
  {
LABEL_41:
    if (v21 != v22)
    {
      memmove(v20, v22, v21 - v22);
    }

    v30 = &v20[v23];
    goto LABEL_44;
  }

  v29 = &v22[v28];
  if (v27 != v20)
  {
    memmove(*(a1 + 48), *(a2 + 48), v28);
    v27 = *(a1 + 56);
  }

  if (v21 != v29)
  {
    memmove(v27, v29, v21 - v29);
  }

  v30 = &v27[v21 - v29];
LABEL_44:
  *(a1 + 56) = v30;
  v32 = (a1 + 80);
  v31 = *(a1 + 80);
  v34 = *(a2 + 80);
  v33 = *(a2 + 88);
  v35 = v33 - v34;
  v36 = *(a1 + 96);
  if (v36 - v31 < (v33 - v34))
  {
    v37 = v35 >> 4;
    if (v31)
    {
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 80));
      v38 = *v32;
      v40 = mdm::zone_mallocator::instance(v39);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(v40, v38);
      v36 = 0;
      *v32 = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
    }

    if (v37 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v41 = v36 >> 3;
    if (v36 >> 3 <= v37)
    {
      v41 = v37;
    }

    if (v36 >= 0x7FFFFFFFFFFFFFF0)
    {
      v42 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = v41;
    }

    std::vector<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 80), v42);
    for (i = *(a1 + 88); v34 != v33; i += 2)
    {
      *i = *v34;
      v44 = *(v34 + 1);
      i[1] = v44;
      if (v44)
      {
        atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
      }

      v34 += 16;
    }

LABEL_63:
    *(a1 + 88) = i;
    goto LABEL_69;
  }

  v45 = *(a1 + 88) - v31;
  if (v45 < v35)
  {
    v46 = &v34[v45];
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 80), &v34[v45], v31);
    for (i = *(a1 + 88); v46 != v33; i += 2)
    {
      *i = *v46;
      v47 = *(v46 + 1);
      i[1] = v47;
      if (v47)
      {
        atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
      }

      v46 += 16;
    }

    goto LABEL_63;
  }

  v48 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 80), *(a2 + 88), v31);
  for (j = *(a1 + 88); j != v48; j -= 2)
  {
    v50 = *(j - 1);
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v50);
    }
  }

  *(a1 + 88) = v48;
LABEL_69:
  v52 = (a1 + 112);
  v51 = *(a1 + 112);
  v54 = *(a2 + 112);
  v53 = *(a2 + 120);
  v55 = v53 - v54;
  v56 = *(a1 + 128);
  if (v56 - v51 < (v53 - v54))
  {
    v57 = v55 >> 4;
    if (v51)
    {
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 112));
      v58 = *v52;
      v60 = mdm::zone_mallocator::instance(v59);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(v60, v58);
      v56 = 0;
      *v52 = 0;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
    }

    if (v57 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v61 = v56 >> 3;
    if (v56 >> 3 <= v57)
    {
      v61 = v57;
    }

    if (v56 >= 0x7FFFFFFFFFFFFFF0)
    {
      v62 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v62 = v61;
    }

    std::vector<std::shared_ptr<md::ARWalkingContinueLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingContinueLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 112), v62);
    for (k = *(a1 + 120); v54 != v53; k += 2)
    {
      *k = *v54;
      v64 = *(v54 + 1);
      k[1] = v64;
      if (v64)
      {
        atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
      }

      v54 += 16;
    }

LABEL_88:
    *(a1 + 120) = k;
    goto LABEL_94;
  }

  v65 = *(a1 + 120) - v51;
  if (v65 < v55)
  {
    v66 = &v54[v65];
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 112), &v54[v65], v51);
    for (k = *(a1 + 120); v66 != v53; k += 2)
    {
      *k = *v66;
      v67 = *(v66 + 1);
      k[1] = v67;
      if (v67)
      {
        atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
      }

      v66 += 16;
    }

    goto LABEL_88;
  }

  v68 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 112), *(a2 + 120), v51);
  for (m = *(a1 + 120); m != v68; m -= 2)
  {
    v70 = *(m - 1);
    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v70);
    }
  }

  *(a1 + 120) = v68;
LABEL_94:
  v72 = (a1 + 144);
  v71 = *(a1 + 144);
  v74 = *(a2 + 144);
  v73 = *(a2 + 152);
  v75 = v73 - v74;
  v76 = *(a1 + 160);
  if (v76 - v71 < (v73 - v74))
  {
    v77 = v75 >> 4;
    if (v71)
    {
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 144));
      v78 = *v72;
      v80 = mdm::zone_mallocator::instance(v79);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(v80, v78);
      v76 = 0;
      *v72 = 0;
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
    }

    if (v77 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v81 = v76 >> 3;
    if (v76 >> 3 <= v77)
    {
      v81 = v77;
    }

    if (v76 >= 0x7FFFFFFFFFFFFFF0)
    {
      v82 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v82 = v81;
    }

    std::vector<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 144), v82);
    for (n = *(a1 + 152); v74 != v73; n += 2)
    {
      *n = *v74;
      v84 = *(v74 + 1);
      n[1] = v84;
      if (v84)
      {
        atomic_fetch_add_explicit((v84 + 8), 1uLL, memory_order_relaxed);
      }

      v74 += 16;
    }

LABEL_113:
    *(a1 + 152) = n;
    goto LABEL_119;
  }

  v85 = *(a1 + 152) - v71;
  if (v85 < v75)
  {
    v86 = &v74[v85];
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 144), &v74[v85], v71);
    for (n = *(a1 + 152); v86 != v73; n += 2)
    {
      *n = *v86;
      v87 = *(v86 + 1);
      n[1] = v87;
      if (v87)
      {
        atomic_fetch_add_explicit((v87 + 8), 1uLL, memory_order_relaxed);
      }

      v86 += 16;
    }

    goto LABEL_113;
  }

  v88 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 144), *(a2 + 152), v71);
  for (ii = *(a1 + 152); ii != v88; ii -= 2)
  {
    v90 = *(ii - 1);
    if (v90)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v90);
    }
  }

  *(a1 + 152) = v88;
LABEL_119:
  v92 = (a1 + 176);
  v91 = *(a1 + 176);
  v94 = *(a2 + 176);
  v93 = *(a2 + 184);
  v95 = v93 - v94;
  v96 = *(a1 + 192);
  if (v96 - v91 >= (v93 - v94))
  {
    v105 = *(a1 + 184) - v91;
    if (v105 >= v95)
    {
      v108 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 176), *(a2 + 184), v91);
      for (jj = *(a1 + 184); jj != v108; jj -= 2)
      {
        v110 = *(jj - 1);
        if (v110)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v110);
        }
      }

      *(a1 + 184) = v108;
      goto LABEL_144;
    }

    v106 = &v94[v105];
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(*(a2 + 176), &v94[v105], v91);
    for (kk = *(a1 + 184); v106 != v93; kk += 2)
    {
      *kk = *v106;
      v107 = *(v106 + 1);
      kk[1] = v107;
      if (v107)
      {
        atomic_fetch_add_explicit((v107 + 8), 1uLL, memory_order_relaxed);
      }

      v106 += 16;
    }
  }

  else
  {
    v97 = v95 >> 4;
    if (v91)
    {
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 176));
      v98 = *v92;
      v100 = mdm::zone_mallocator::instance(v99);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(v100, v98);
      v96 = 0;
      *v92 = 0;
      *(a1 + 184) = 0;
      *(a1 + 192) = 0;
    }

    if (v97 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v101 = v96 >> 3;
    if (v96 >> 3 <= v97)
    {
      v101 = v97;
    }

    if (v96 >= 0x7FFFFFFFFFFFFFF0)
    {
      v102 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v102 = v101;
    }

    std::vector<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 176), v102);
    for (kk = *(a1 + 184); v94 != v93; kk += 2)
    {
      *kk = *v94;
      v104 = *(v94 + 1);
      kk[1] = v104;
      if (v104)
      {
        atomic_fetch_add_explicit((v104 + 8), 1uLL, memory_order_relaxed);
      }

      v94 += 16;
    }
  }

  *(a1 + 184) = kk;
LABEL_144:
  *(a1 + 240) = *(a2 + 240);
  v111 = *(a2 + 224);
  v112 = *(a1 + 216);
  if (v112)
  {
    for (mm = 0; mm != v112; ++mm)
    {
      *(*(a1 + 208) + 8 * mm) = 0;
    }

    v114 = *(a1 + 224);
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    if (v114)
    {
      v115 = v111 == 0;
    }

    else
    {
      v115 = 1;
    }

    if (v115)
    {
      v116 = v114;
    }

    else
    {
      do
      {
        v118 = v111[2];
        v117 = v111[3];
        if (v117)
        {
          atomic_fetch_add_explicit((v117 + 8), 1uLL, memory_order_relaxed);
        }

        v119 = v114[3];
        v114[2] = v118;
        v114[3] = v117;
        if (v119)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v119);
        }

        if (v114 != v111)
        {
          *(v114 + 16) = *(v111 + 16);
          v120 = v111[6];
          v121 = v114[5];
          if (v121)
          {
            for (nn = 0; nn != v121; ++nn)
            {
              *(v114[4] + 8 * nn) = 0;
            }

            v123 = v114[6];
            v114[6] = 0;
            v114[7] = 0;
            if (v123)
            {
              v124 = v120 == 0;
            }

            else
            {
              v124 = 1;
            }

            if (v124)
            {
              v125 = v123;
            }

            else
            {
              do
              {
                *(v123 + 4) = *(v120 + 4);
                v127 = v120[3];
                v126 = v120[4];
                if (v126)
                {
                  atomic_fetch_add_explicit((v126 + 8), 1uLL, memory_order_relaxed);
                }

                v128 = v123[4];
                v123[3] = v127;
                v123[4] = v126;
                if (v128)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v128);
                }

                v125 = *v123;
                v129 = *(v123 + 4);
                v123[1] = v129;
                inserted = std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_prepare((v114 + 4), v129, v123 + 4);
                std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_perform(v114 + 4, v123, inserted);
                v120 = *v120;
                if (!v125)
                {
                  break;
                }

                v123 = v125;
              }

              while (v120);
            }

            std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v125);
          }

          if (v120)
          {
            operator new();
          }
        }

        v116 = *v114;
        std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__node_insert_multi(a1 + 208, v114);
        v111 = *v111;
        if (!v116)
        {
          break;
        }

        v114 = v116;
      }

      while (v111);
    }

    std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>>::__deallocate_node(v116);
  }

  if (v111)
  {
    operator new();
  }

  *(a1 + 280) = *(a2 + 280);
  v131 = *(a2 + 264);
  v132 = *(a1 + 256);
  if (v132)
  {
    for (i1 = 0; i1 != v132; ++i1)
    {
      *(*(a1 + 248) + 8 * i1) = 0;
    }

    v134 = *(a1 + 264);
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    if (v134)
    {
      v135 = v131 == 0;
    }

    else
    {
      v135 = 1;
    }

    if (v135)
    {
      v136 = v134;
    }

    else
    {
      do
      {
        v138 = v131[2];
        v137 = v131[3];
        if (v137)
        {
          atomic_fetch_add_explicit((v137 + 8), 1uLL, memory_order_relaxed);
        }

        v139 = v134[3];
        v134[2] = v138;
        v134[3] = v137;
        if (v139)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v139);
        }

        v141 = v131[4];
        v140 = v131[5];
        if (v140)
        {
          atomic_fetch_add_explicit((v140 + 8), 1uLL, memory_order_relaxed);
        }

        v142 = v134[5];
        v134[4] = v141;
        v134[5] = v140;
        if (v142)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v142);
        }

        v136 = *v134;
        std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__node_insert_multi(a1 + 248, v134);
        v131 = *v131;
        if (!v136)
        {
          break;
        }

        v134 = v136;
      }

      while (v131);
    }

    std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v136);
  }

  if (v131)
  {
    operator new();
  }

  if (a1 != a2)
  {
    v143 = *(a2 + 296) - *(a2 + 288);
    v144 = v143 >> 3;
    v145 = *(a1 + 288);
    v146 = *(a1 + 296);
    v147 = (v146 - v145) >> 3;
    if (v143 >> 3 <= v147)
    {
      if (v144 < v147)
      {
        v152 = v145 + v143;
        while (v146 != v152)
        {
          v153 = *(v146 - 8);
          v146 -= 8;
        }

        *(a1 + 296) = v152;
      }
    }

    else
    {
      v148 = v144 - v147;
      v149 = *(a1 + 304);
      if (v144 - v147 > (v149 - v146) >> 3)
      {
        if (!(v144 >> 61))
        {
          v150 = v149 - v145;
          if (v150 >> 2 > v144)
          {
            v144 = v150 >> 2;
          }

          if (v150 >= 0x7FFFFFFFFFFFFFF8)
          {
            v151 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v151 = v144;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v151);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(a1 + 296), 8 * v148);
      *(a1 + 296) = v146 + 8 * v148;
    }

    v154 = *(a2 + 288);
    v155 = *(a2 + 296);
    if (v154 != v155)
    {
      v156 = *(a1 + 288);
      do
      {
        v157 = *v154++;
        objc_storeStrong(v156++, v157);
      }

      while (v154 != v155);
    }
  }

LABEL_222:
  v158 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 312) = v158;
  return a1;
}

void sub_1B2C26868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::pair<std::shared_ptr<md::ARWalkingContinueLabelFeature> const,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>::pair[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = (a1 + 16);
  *(a1 + 48) = *(a2 + 48);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1 + 16, *(a2 + 24));
  for (i = *(a2 + 32); i; i = *i)
  {
    v7 = *(i + 4);
    v8 = *(a1 + 24);
    if (!*&v8)
    {
      goto LABEL_20;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = *(i + 4);
      if (*&v8 <= v7)
      {
        v10 = v7 % v8.i32[0];
      }
    }

    else
    {
      v10 = (v8.i32[0] - 1) & v7;
    }

    v11 = *(*v5 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v9.u32[0] > 1uLL)
      {
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_20;
      }

LABEL_19:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    if (*(v12 + 4) != v7)
    {
      goto LABEL_19;
    }
  }

  return a1;
}

void sub_1B2C26B68(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = *(v18 + 8);
    if (v16.u32[0] > 1uLL)
    {
      v22 = *(v18 + 8);
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && *(v18 + 16) == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

char *std::vector<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[16 * a2];
  return result;
}

char *std::vector<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[16 * a2];
  return result;
}

char *std::vector<std::shared_ptr<md::ARWalkingContinueLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingContinueLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[16 * a2];
  return result;
}

char *std::vector<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[16 * a2];
  return result;
}

uint64_t std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return a1;
}

void *std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>,std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>*,std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>*,std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>*>(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      v8 = *(v5 + 8);
      v7 = *(v5 + 16);
      *a3 = v6;
      a3[1] = v8;
      a3[2] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v5 += 24;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__shared_ptr_emplace<md::ARWalkingContinueLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3CF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::ARWalkingManeuverLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::ARWalkingStorefrontLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3CB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::ARWalkingArrivalLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3C80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *result, void *a2)
{
  if (result)
  {
    result = a2[3];
    if (result)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](result);
    }
  }

  else if (!a2)
  {
    return;
  }

  v3 = mdm::zone_mallocator::instance(result);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>>(v3, a2);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x20uLL, 0x10200404161829EuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *>(uint64_t a1, uint64_t a2)
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

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *>(v3, v2);
  }
}

void md::ARWalkingSupport::setShouldUse3DArrival(md::ARWalkingSupport *this, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 10) != a2)
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "Should use 3d arrival:%d", v5, 8u);
    }

    *(this + 10) = a2;
    md::ARWalkingSupport::setARWalkingFeatures(this, *(this + 56), 1);
  }
}

void md::ARWalkingSupport::setPerpendicularLayoutEnabled(md::ARWalkingSupport *this, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 11) != a2)
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "Should use perpendicular layout:%d", v5, 8u);
    }

    *(this + 11) = a2;
    md::ARWalkingSupport::setARWalkingFeatures(this, *(this + 56), 1);
  }
}

void sub_1B2C27988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v18 - 72);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C28C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B2C28E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<VKPolylineGroupOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E3D60;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKPolylineGroupOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E3D60;

  return a1;
}

uint64_t std::__shared_ptr_pointer<ggl::Device *,std::shared_ptr<ggl::Device>::__shared_ptr_default_delete<ggl::Device,ggl::Device>,std::allocator<ggl::Device>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::Device *,std::shared_ptr<ggl::Device>::__shared_ptr_default_delete<ggl::Device,ggl::Device>,std::allocator<ggl::Device>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VSLibraryBundleMTLData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FlyoverLibraryBundleMTLData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3DF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardLibraryBundleMTLData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3DB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::CommonLibraryMTLData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3D80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::MetalSurface>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::MetalSwapchain>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3ED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

double md::FlyoverTileDataRequester::resolveTile@<D0>(md::FlyoverTileDataRequester *this@<X0>, const geo::QuadTile *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 19);
  if (*(v5 + 712))
  {
    os_unfair_lock_lock((v5 + 632));
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
        if (v5 + 688 == geo::LRUPolicy<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>,geo::QuadTileHash>::get(v5 + 688, (v5 + 648), a3))
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

    os_unfair_lock_unlock((v5 + 632));
  }

  else
  {
    result = *(a2 + 4);
    *(a3 + 4) = result;
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 2);
    *(a3 + 24) = *(a2 + 24);
  }

  return result;
}

void md::FlyoverTileDataRequester::requestDataKeys(md::FlyoverTileDataRequester *this, const gdc::SelectionContext *a2, int a3)
{
  v4 = *(this + 12);
  v5 = v4 == 50 || v4 == 20;
  v6 = 8;
  if (v5)
  {
    v6 = 144;
  }

  v83 = *(this + v6);
  if (!v83)
  {
    return;
  }

  v8 = *(a2 + 1);
  v9 = (*(*v83 + 24))(v83);
  if ((v10 & 1) == 0)
  {
    return;
  }

  v79 = HIDWORD(v9);
  if (*(this + 32) == 1)
  {
    LODWORD(v9) = *(this + 7);
  }

  v11 = *(a2 + 8);
  if (*(this + 40) == 1)
  {
    LODWORD(v79) = *(this + 9);
  }

  v82 = v9;
  if ((a3 & 1) != 0 || *(a2 + 82) == 1)
  {
    v12 = 0x100000001;
  }

  else
  {
    v12 = *(this + 4) | 0x100000000;
  }

  v13 = *(v11 + 3);
  if (!v13)
  {
    return;
  }

  v85 = v8;
  v80 = *v11;
  do
  {
    v14 = (v13 + 2);
    v15 = *(v13 + 17);
    v16 = (*(v13 + 5) % (1 << v15) + (1 << v15)) % (1 << v15);
    v17 = *(v13 + 6) % (1 << v15) + (1 << v15);
    LOBYTE(v106) = *(v13 + 16);
    BYTE1(v106) = v15;
    HIDWORD(v106) = v16;
    v107 = v17 % (1 << v15);
    v108 = 0;
    v109 = 1;
    md::FlyoverSelectionContext::adjustTile(v100, *(a2 + 17), &v106, v83);
    if (v105 != 1)
    {
      goto LABEL_24;
    }

    v84 = v13;
    if (v104 == 2)
    {
      v18 = 4;
    }

    else
    {
      v18 = *(this + 12);
    }

    v19 = v100[1];
    v20 = v101;
    __p = v100[0];
    v21 = v102;
    v22 = v103;
    v23 = BYTE1(v106);
    v24 = (*(*v83 + 32))(v83, v18);
    if ((v24 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    v25 = v24;
    v26 = 0;
    if (v80)
    {
      v27 = v24;
      if (v24)
      {
        if (v24 >= v80)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          do
          {
            ++v26;
            v27 *= 2;
          }

          while (v27 < v80);
        }

        v28 = v80;
        if (v27 > v80)
        {
          do
          {
            --v26;
            v29 = v27 > 2 * v28;
            v28 *= 2;
          }

          while (v29);
        }
      }
    }

    if (v19)
    {
      v21 = 0;
      v30 = -v26 & ~(-v26 >> 31);
      if (v30 >= (v23 - v82))
      {
        LOBYTE(v30) = v23 - v82;
      }

      v31 = v30;
      if (v19 < v30)
      {
        v31 = v19;
      }

      v32 = v19 - v31;
      v20 = vshl_s32(v20, vneg_s32(vdup_n_s32(v31)));
      v33 = (v19 - v31);
      v22 = 1;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    v96[1] = v32;
    v97 = v20;
    v96[0] = __p;
    v98 = v21;
    v99 = v22;
    if (v82 > v33)
    {
      goto LABEL_23;
    }

    if (v79 < v33)
    {
      goto LABEL_23;
    }

    *(this + 16) = *(this + 15);
    v78 = v78 & 0xFFFFFFFFFF000000 | *(this + 22) | (*(this + 46) << 16);
    md::TileAdjustmentHelpers::adjustTileForSizeAndResourceType(v80, v24, v18, v83, v96, v78, this + 120);
    v34 = *(this + 15);
    v86 = *(this + 16);
    if (v34 == v86)
    {
      goto LABEL_23;
    }

    if (a3)
    {
      v35 = 0;
    }

    else
    {
      v35 = v25;
    }

    v87 = v35;
    do
    {
      (*(*this + 80))(v92, this, v34);
      v88 = v34;
      if (*(*(this + 19) + 712) != 1)
      {
        goto LABEL_88;
      }

      v36 = *(v34 + 1);
      v37 = *(v84 + 17);
      if (HIBYTE(v92[0]) >= v36 && HIBYTE(v92[0]) >= v37)
      {
        goto LABEL_88;
      }

      v39 = v36 <= v37 ? v14 : v34;
      v118 = *(v39 + 4);
      v117[0] = *v39;
      v119 = *(v39 + 2);
      v120 = *(v39 + 24);
      v40 = *(a2 + 20);
      if (!v40)
      {
        goto LABEL_88;
      }

      v41 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>>>::find<geo::QuadTile>(v40, v92);
      if (v41)
      {
        goto LABEL_87;
      }

      v42 = *(a2 + 20);
      v122 = 0;
      v123 = 0;
      LODWORD(v124) = 1065353216;
      *(&v110 + 4) = v93;
      LOWORD(v110) = v92[0];
      v43 = v94;
      v111 = v94;
      v112[0] = v95;
      v121[1] = 0;
      v121[0] = 0;
      v113 = 0uLL;
      v114 = 0;
      v115 = 0;
      v116 = 1065353216;
      if (v95 == 1)
      {
        v44 = LOBYTE(v92[0]) - 0x61C8864680B583EBLL;
        v45 = (v93 - 0x61C8864680B583EBLL + ((((v44 << 6) - 0x61C8864680B583EBLL + (v44 >> 2) + HIBYTE(v92[0])) ^ v44) << 6) + ((((v44 << 6) - 0x61C8864680B583EBLL + (v44 >> 2) + HIBYTE(v92[0])) ^ v44) >> 2)) ^ ((v44 << 6) - 0x61C8864680B583EBLL + (v44 >> 2) + HIBYTE(v92[0])) ^ v44;
        v43 = (SHIDWORD(v93) - 0x61C8864680B583EBLL + (v45 << 6) + (v45 >> 2)) ^ v45;
        v111 = v43;
        v112[0] = 0;
      }

      v46 = v42[1];
      if (!*&v46)
      {
        goto LABEL_86;
      }

      v47 = vcnt_s8(v46);
      v47.i16[0] = vaddlv_u8(v47);
      v48 = v47.u32[0];
      if (v47.u32[0] > 1uLL)
      {
        v49 = v43;
        if (v43 >= *&v46)
        {
          v49 = v43 % *&v46;
        }
      }

      else
      {
        v49 = (*&v46 - 1) & v43;
      }

      v50 = *(*v42 + 8 * v49);
      if (!v50 || (__pa = v49, (v41 = *v50) == 0))
      {
LABEL_86:
        operator new();
      }

      v51 = v43;
      while (1)
      {
        v52 = *(v41 + 1);
        if (v52 == v43)
        {
          break;
        }

        if (v48 > 1)
        {
          if (v52 >= *&v46)
          {
            v52 %= *&v46;
          }
        }

        else
        {
          v52 &= *&v46 - 1;
        }

        if (v52 != __pa)
        {
          goto LABEL_86;
        }

LABEL_81:
        v41 = *v41;
        if (!v41)
        {
          goto LABEL_86;
        }
      }

      if (v41[40] == 1)
      {
        geo::QuadTile::computeHash(v41 + 16);
        v41[40] = 0;
        v53 = *(v41 + 4);
        if (v112[0])
        {
          v54 = (BYTE1(v110) - 0x61C8864680B583EBLL + ((v110 - 0x61C8864680B583EBLL) << 6) + ((v110 - 0x61C8864680B583EBLL) >> 2)) ^ (v110 - 0x61C8864680B583EBLL);
          v55 = (SDWORD1(v110) - 0x61C8864680B583EBLL + (v54 << 6) + (v54 >> 2)) ^ v54;
          v51 = ((SDWORD2(v110) - 0x61C8864680B583EBLL + (v55 << 6) + (v55 >> 2)) ^ v55);
          v111 = v51;
          v112[0] = 0;
        }

        else
        {
          v51 = v111;
        }
      }

      else
      {
        v53 = *(v41 + 4);
      }

      if (v53 != v51 || __PAIR64__(v41[17], v41[16]) != __PAIR64__(BYTE1(v110), v110) || *(v41 + 20) != *(&v110 + 4))
      {
        goto LABEL_81;
      }

      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v113);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v121);
LABEL_87:
      std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(v41 + 6, v117, v117);
LABEL_88:
      if (*(this + 13))
      {
        v56 = *(this + 12);
        if (v56)
        {
          do
          {
            v57 = *v56;
            operator delete(v56);
            v56 = v57;
          }

          while (v57);
        }

        *(this + 12) = 0;
        v58 = *(this + 11);
        if (v58)
        {
          for (i = 0; i != v58; ++i)
          {
            *(*(this + 10) + 8 * i) = 0;
          }
        }

        *(this + 13) = 0;
      }

      memset(&v134, 0, sizeof(v134));
      md::FlyoverMetaData::tileCacheLookup(&v110, *(a2 + 17), v92, 0, 0);
      if (v115)
      {
        v60 = *(&v113 + 1);
      }

      else
      {
        v60 = 0;
      }

      v61 = md::FlyoverMetaData::tileType(*(a2 + 17), v92, 0);
      if ((v61 & 0xFF00) != 0)
      {
        v62 = v61;
      }

      else
      {
        v62 = 2;
      }

      md::FlyoverMetaData::heightIndices(***(a2 + 17), v92, &v134);
      begin = v134.__begin_;
      end = v134.__end_;
      __pb = v134.__begin_;
      if (v134.__begin_ == v134.__end_)
      {
        *(&v110 + 4) = v93;
        LOWORD(v110) = v92[0];
        v111 = v94;
        v112[0] = v95;
        LOBYTE(v113) = v62;
        *(&v113 + 4) = v60 & 0xFFFFFFFFFFLL;
        HIDWORD(v113) = 0;
        if (v62)
        {
          std::__hash_table<md::FlyoverOctile,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,std::allocator<md::FlyoverOctile>>::__emplace_unique_key_args<md::FlyoverOctile,md::FlyoverOctile const&>(this + 20, &v110, &v110);
        }
      }

      else
      {
        v65 = v60 & 0xFFFFFFFFFFLL;
        do
        {
          v66 = *begin;
          v67 = md::FlyoverMetaData::tileType(*(a2 + 17), v92, v66);
          v68 = v67;
          if (v67 >= 0x100u)
          {
            md::FlyoverMetaData::elevationBoundsForHeightTile(v133, ***(a2 + 17), v92, v66);
            if (v133[16] == 1)
            {
              v69 = a2 + 168;
              if (*(a2 + 82) != 1)
              {
                v69 = *(a2 + 18);
              }

              if (gdc::ToCoordinateSystem(*v69))
              {
                v127 = v93;
                v126[0] = v92[0];
                v128 = v94;
                v129 = v95;
                v130 = v68;
                v131 = v65;
                v132 = v66;
                md::FlyoverSelectionContext::getTileBound(v121, a2, v126, v133);
                if (v125[24] == 1)
                {
                  geo::RigidTransform<double,double>::inverse(v117, v121);
                  geo::Frustum<double>::transformed(&v110, (v69 + 984), v117);
                  v70 = 0;
                  while (1)
                  {
                    v71 = 0;
                    v72 = *(&v110 + v70 + 16);
                    v135 = *(&v110 + v70);
                    v136 = v72;
                    v73 = v125;
                    do
                    {
                      v74 = v73 - 24;
                      if (*(&v135 + v71) >= 0.0)
                      {
                        v74 = v73;
                      }

                      *&v137[8 * v71++] = *v74;
                      v73 += 8;
                    }

                    while (v71 != 3);
                    v75 = 0;
                    v76 = 0.0;
                    do
                    {
                      v76 = v76 + *(&v110 + v70 + v75) * *&v137[v75];
                      v75 += 8;
                    }

                    while (v75 != 24);
                    if (*&v112[v70] + v76 < 0.0)
                    {
                      break;
                    }

                    v70 += 32;
                    if (v70 == 192)
                    {
                      goto LABEL_121;
                    }
                  }
                }

                else
                {
LABEL_121:
                  md::FlyoverSelectionContext::selectBestFitOctiles(a2, v126, this + 20, v87);
                }
              }

              else
              {
                *(&v110 + 4) = v93;
                LOWORD(v110) = v92[0];
                v111 = v94;
                v112[0] = v95;
                LOBYTE(v113) = v68;
                *(&v113 + 4) = v65;
                HIDWORD(v113) = v66;
                if (v68)
                {
                  std::__hash_table<md::FlyoverOctile,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,std::allocator<md::FlyoverOctile>>::__emplace_unique_key_args<md::FlyoverOctile,md::FlyoverOctile const&>(this + 20, &v110, &v110);
                }
              }
            }
          }

          ++begin;
        }

        while (begin != end);
      }

      if (__pb)
      {
        operator delete(__pb);
      }

      for (j = *(this + 12); j; j = *j)
      {
        md::FlyoverCommon::encodeFlyoverKey(&v110, j + 16, 0, v12);
        gdc::LayerDataCollector::addDataKey(v85, &v110, v14);
        if (geo::codec::VectorTile::hasComputedJunctions(*(this + 20)))
        {
          md::FlyoverCommon::encodeFlyoverKey(v121, j + 16, 1, v12);
          gdc::LayerDataCollector::addDataKey(v85, v121, v14);
          if (v122 != v124)
          {
            free(v122);
          }
        }

        if (v111 != v113)
        {
          free(v111);
        }
      }

      v34 = (v88 + 32);
    }

    while ((v88 + 32) != v86);
LABEL_23:
    v13 = v84;
LABEL_24:
    v13 = *v13;
  }

  while (v13);
}

void sub_1B2C2A9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void md::FlyoverTileDataRequester::~FlyoverTileDataRequester(md::FlyoverTileDataRequester *this)
{
  *this = &unk_1F29E3F08;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 80);
  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E3F08;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 80);
  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);
}

uint64_t std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void non-virtual thunk toggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E40B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::CommonMesh::Pos2Mesh::~Pos2Mesh(ggl::CommonMesh::Pos2Mesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::CommonMesh::Pos2Mesh::~Pos2Mesh(ggl::CommonMesh::Pos2Mesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::CommonMesh::BufferPos2>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

ggl::CommonMesh::Pos2Mesh *ggl::CommonMesh::Pos2Mesh::Pos2Mesh(ggl::CommonMesh::Pos2Mesh *this, const char *a2)
{
  ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::typedReflection();
  *(this + 1) = a2;
  ggl::RenderDataHolder::RenderDataHolder(this + 16);
  *(this + 7) = &ggl::MeshTyped<ggl::CommonMesh::BufferPos2>::typedReflection(void)::r;
  *(this + 8) = 0;
  v4 = this + 64;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 15) = 0;
  *(this + 17) = 0;
  *(this + 14) = this + 120;
  *this = &unk_1F29E4070;
  *(this + 2) = &unk_1F29E4090;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::resize((this + 64), qword_1ED66A6B0);
  *this = &unk_1F29E3F70;
  *(this + 2) = &unk_1F29E3F90;
  if (!a2)
  {
    a2 = "/VertexData";
  }

  v6 = ggl::zone_mallocator::instance(v5);
  v7 = pthread_rwlock_rdlock((v6 + 32));
  if (v7)
  {
    geo::read_write_lock::logFailure(v7, "read lock", v8);
  }

  v9 = malloc_type_zone_malloc(*v6, 0x100uLL, 0x1081040D98108EAuLL);
  atomic_fetch_add((v6 + 24), 1u);
  geo::read_write_lock::unlock((v6 + 32));
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_1F29E40B0;
  v10 = ggl::VertexData::VertexData((v9 + 4), a2, &ggl::CommonMesh::bufferPos2Reflection, 0, 6, 0);
  v9[4] = &unk_1F2A5BD40;
  v9[29] = &unk_1F2A5BD60;
  *&v11 = v10;
  *(&v11 + 1) = v9;
  v12 = *(*v4 + 8);
  **v4 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  return this;
}

void std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData> const*,std::shared_ptr<ggl::VertexData> const*>(uint64_t **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__vdeallocate(a1);
    v9 = a1[2] - *a1;
    v10 = v9 >> 3;
    if (v9 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__vallocate[abi:nn200100](a1, v11);
    for (i = a1[1]; v6 != a3; i += 2)
    {
      v13 = v6[1];
      *i = *v6;
      i[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v6 += 2;
    }

LABEL_17:
    a1[1] = i;
    return;
  }

  v14 = a1[1] - v8;
  if (a4 > v14 >> 4)
  {
    v15 = (a2 + v14);
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(a2, (a2 + v14), v8);
    for (i = a1[1]; v15 != a3; i += 2)
    {
      v16 = v15[1];
      *i = *v15;
      i[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v15 += 2;
    }

    goto LABEL_17;
  }

  v17 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(a2, a3, v8);
  for (j = a1[1]; j != v17; j -= 16)
  {
    v19 = *(j - 8);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }
  }

  a1[1] = v17;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F2028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::CommonMesh::Pos4Mesh::~Pos4Mesh(ggl::CommonMesh::Pos4Mesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::CommonMesh::Pos4Mesh::~Pos4Mesh(ggl::CommonMesh::Pos4Mesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::CommonMesh::BufferPos4>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t **ggl::CommonMesh::Pos4Mesh::Pos4Mesh(uint64_t **a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::typedReflection();
  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::CommonMesh::BufferPos4>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = (a1 + 15);
  *a1 = &unk_1F29E40E8;
  a1[2] = &unk_1F29E4108;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData> const*,std::shared_ptr<ggl::VertexData> const*>(a1 + 8, &v13, &v15, 1uLL);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[13];
  a1[12] = v10;
  a1[13] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  *a1 = &unk_1F29E3FB0;
  a1[2] = &unk_1F29E3FD0;
  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::CommonMesh::BufferPos2UV>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2UV>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2UV>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2UV>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E4168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::CommonMesh::Pos2UVMesh::~Pos2UVMesh(ggl::CommonMesh::Pos2UVMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void non-virtual thunk toggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos2UV>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::CommonMesh::BufferPos4UV>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4UV>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::CommonMesh::Pos4UVMesh::~Pos4UVMesh(ggl::CommonMesh::Pos4UVMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::CommonMesh::Pos4UVMesh::~Pos4UVMesh(ggl::CommonMesh::Pos4UVMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t **ggl::CommonMesh::Pos4UVMesh::Pos4UVMesh(uint64_t **a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::typedReflection();
  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::CommonMesh::BufferPos4UV>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = (a1 + 15);
  *a1 = &unk_1F29E41A0;
  a1[2] = &unk_1F29E41C0;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData> const*,std::shared_ptr<ggl::VertexData> const*>(a1 + 8, &v13, &v15, 1uLL);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[13];
  a1[12] = v10;
  a1[13] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  *a1 = &unk_1F29E4030;
  a1[2] = &unk_1F29E4050;
  return a1;
}

BOOL edgeRejectsConvexHull(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  for (i = 0; i != 3; ++i)
  {
    v12[0].f64[i] = *(a1 + i * 8) - *(a2 + i * 8);
  }

  v4 = *a3;
  if (v4 < 1)
  {
    return 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = vextq_s8(v12[0], v12[0], 8uLL);
    v8 = a3 + 2;
    do
    {
      for (j = 0; j != 6; j += 2)
      {
        v12[0].f64[j / 2] = *&v8[j] - *(a1 + j * 4);
      }

      v10 = vmulq_f64(v12[0], v7);
      if ((vmovn_s64(vcgtq_f64(v10, vdupq_laneq_s64(v10, 1))).u8[0] & 1) == 0)
      {
        break;
      }

      ++v5;
      v8 += 6;
      v6 = v5 >= v4;
    }

    while (v5 != v4);
  }

  return v6;
}

void md::Logic<md::CollectRenderablesLogic<(md::MapDataType)33,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)33>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)33>>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void cleanup(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  v6 = gdc::ServiceLocator::resolve<md::VKMRenderResourcesStore>(a1, a2);
  v7 = a4;
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::BaseMapTileHandle>(a3);
  v9 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v8, a4, HIWORD(a4));
  if (v9 == v8[5])
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v8[7] + ((((v9 - v8[4]) >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((2 * (v9 - v8[4])) & 0x1F8);
  }

  v11 = ecs2::BasicRegistry<void>::storage<md::ls::RegisterHandle>(a3);
  v12 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v11, a4, HIWORD(a4));
  if (v12 == v11[5])
  {
    v13 = 0;
  }

  else
  {
    v13 = (*(v11[7] + ((((v12 - v11[4]) >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((2 * (v12 - v11[4])) & 0x1F8));
  }

  v14 = ecs2::BasicRegistry<void>::get_if<md::ls::AssociationTileHandle>(a3, a4);
  if (v14)
  {
    v15 = v14;
    v129 = v10;
    v16 = v13;
    AssociationItemStorage = md::VKMRenderResourcesStore::getAssociationItemStorage(v6, *v14, 0);
    v18 = AssociationItemStorage[1];
    v19 = AssociationItemStorage[2];
    while (v18 != v19)
    {
      v20 = *v18++;
      v10 = v10 & 0xFFFFFFFF00000000 | v20;
      ecs2::BasicRegistry<void>::add<md::ls::RenderItemPendingDeletion>(a3, v10);
    }

    v21 = AssociationItemStorage[4];
    v22 = AssociationItemStorage[5];
    if (v21 != v22)
    {
      do
      {
        v23 = *v21++;
        v10 = v10 & 0xFFFFFFFF00000000 | v23;
        ecs2::BasicRegistry<void>::add<md::ls::PendingDeletion>(a3, v10);
      }

      while (v21 != v22);
      v21 = AssociationItemStorage[4];
    }

    AssociationItemStorage[2] = AssociationItemStorage[1];
    AssociationItemStorage[5] = v21;
    ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::erase(v6 + 1716, v15);
    util::id_pool<geo::handle<md::AssociationItem>>::push((v6 + 1736), *v15);
    md::VKMRenderResourcesStore::clearRenderItemGroup(v6, v15, 1);
    v13 = v16;
    v7 = a4;
    v10 = v129;
  }

  v24 = ecs2::BasicRegistry<void>::storage<md::ls::TileViewConstantDataHandle>(a3);
  v25 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v24, a4, HIWORD(a4));
  if (v25 != v24[5])
  {
    v26 = v25 - v24[4];
    v27 = *(v24[7] + (((v26 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v27)
    {
      v28 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 851, *(v27 + 8 * (v26 >> 2)));
      if (v28 != v6[856])
      {
        v29 = (*(v6[858] + ((((v28 - v6[855]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v28 - v6[855]) >> 3) & 0x3F));
        v30 = v29[1];
        if (!v30 || (v31 = v30 - 1, (v29[1] = v31) == 0))
        {
          *v29 = 0;
        }
      }
    }
  }

  v32 = ecs2::BasicRegistry<void>::storage<md::ls::TileTransformConstantDataHandle>(a3);
  v33 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v32, a4, HIWORD(a4));
  if (v33 != v32[5])
  {
    v34 = v33 - v32[4];
    v35 = *(v32[7] + (((v34 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v35)
    {
      v36 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 825, *(v35 + 8 * (v34 >> 2)));
      if (v36 != v6[830])
      {
        v37 = (*(v6[832] + ((((v36 - v6[829]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v36 - v6[829]) >> 3) & 0x3F));
        v38 = v37[1];
        if (!v38 || (v39 = v38 - 1, (v37[1] = v39) == 0))
        {
          *v37 = 0;
        }
      }
    }
  }

  v40 = ecs2::BasicRegistry<void>::get_if<md::ls::AssociationTileHandle>(a3, v7);
  if (v40)
  {
    v41 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 1716, *v40);
    if (v41 != v6[1721])
    {
      v42 = (*(v6[1723] + ((((v41 - v6[1720]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v41 - v6[1720]) >> 3) & 0x3F));
      v43 = v42[1];
      if (!v43 || (v44 = v43 - 1, (v42[1] = v44) == 0))
      {
        *v42 = 0;
      }
    }
  }

  v45 = ecs2::BasicRegistry<void>::storage<md::ls::TileShadowConstantDataHandle>(a3);
  v46 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v45, a4, HIWORD(a4));
  if (v46 != v45[5])
  {
    v47 = v46 - v45[4];
    v48 = *(v45[7] + (((v47 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v48)
    {
      md::VKMRenderResourcesStore::_disconnect<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>>(v6, *(v48 + 8 * (v47 >> 2)));
    }
  }

  v49 = ecs2::BasicRegistry<void>::storage<md::ls::TilePrepassShadowConstantDataHandle>(a3);
  v50 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v49, a4, HIWORD(a4));
  if (v50 != v49[5])
  {
    v51 = v50 - v49[4];
    v52 = *(v49[7] + (((v51 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v52)
    {
      md::VKMRenderResourcesStore::_disconnect<geo::handle<md::ConstantDataResource<ggl::DaVinci::Shadow>>>(v6, *(v52 + 8 * (v51 >> 2)));
    }
  }

  v53 = ecs2::BasicRegistry<void>::storage<md::ls::TilePrepassConstantDataHandle>(a3);
  v54 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v53, a4, HIWORD(a4));
  if (v54 != v53[5])
  {
    v55 = v54 - v53[4];
    v56 = *(v53[7] + (((v55 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v56)
    {
      v57 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 877, *(v56 + 8 * (v55 >> 2)));
      if (v57 != v6[882])
      {
        v58 = (*(v6[884] + ((((v57 - v6[881]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v57 - v6[881]) >> 3) & 0x3F));
        v59 = v58[1];
        if (!v59 || (v60 = v59 - 1, (v58[1] = v60) == 0))
        {
          *v58 = 0;
        }
      }
    }
  }

  v61 = ecs2::BasicRegistry<void>::storage<md::ls::TileClippingConstantDataHandle>(a3);
  v62 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v61, a4, HIWORD(a4));
  if (v62 != v61[5])
  {
    v63 = v62 - v61[4];
    v64 = *(v61[7] + (((v63 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v64)
    {
      v65 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 903, *(v64 + 8 * (v63 >> 2)));
      if (v65 != v6[908])
      {
        v66 = (*(v6[910] + ((((v65 - v6[907]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v65 - v6[907]) >> 3) & 0x3F));
        v67 = v66[1];
        if (!v67 || (v68 = v67 - 1, (v66[1] = v68) == 0))
        {
          *v66 = 0;
        }
      }
    }
  }

  v69 = ecs2::BasicRegistry<void>::storage<md::ls::TileStyleCameraConstantDataHandle>(a3);
  v70 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v69, a4, HIWORD(a4));
  if (v70 != v69[5])
  {
    v71 = v70 - v69[4];
    v72 = *(v69[7] + (((v71 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v72)
    {
      v73 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 1171, *(v72 + 8 * (v71 >> 2)));
      if (v73 != v6[1176])
      {
        v74 = (*(v6[1178] + ((((v73 - v6[1175]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v73 - v6[1175]) >> 3) & 0x3F));
        v75 = v74[1];
        if (!v75 || (v76 = v75 - 1, (v74[1] = v76) == 0))
        {
          *v74 = 0;
        }
      }
    }
  }

  v77 = ecs2::BasicRegistry<void>::storage<md::ls::TileStyleDataKeyHandle>(a3);
  v78 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v77, a4, HIWORD(a4));
  if (v78 != v77[5])
  {
    v79 = v78 - v77[4];
    v80 = *(v77[7] + (((v79 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v80)
    {
      v81 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 177, *(v80 + 8 * (v79 >> 2)));
      if (v81 != v6[182])
      {
        v82 = (*(v6[184] + ((((v81 - v6[181]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v81 - v6[181]) >> 3) & 0x3F));
        v83 = v82[1];
        if (!v83 || (v84 = v83 - 1, (v82[1] = v84) == 0))
        {
          *v82 = 0;
        }
      }
    }
  }

  v85 = ecs2::BasicRegistry<void>::storage<md::ls::TileMatrix>(a3);
  v86 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v85, a4, HIWORD(a4));
  if (v86 != v85[5])
  {
    v87 = v86 - v85[4];
    v88 = *(v85[7] + (((v87 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v88)
    {
      v89 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 1586, *(v88 + 8 * (v87 >> 2)));
      if (v89 != v6[1591])
      {
        v90 = (*(v6[1593] + ((((v89 - v6[1590]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v89 - v6[1590]) >> 3) & 0x3F));
        v91 = v90[1];
        if (!v91 || (v92 = v91 - 1, (v90[1] = v92) == 0))
        {
          *v90 = 0;
        }
      }
    }
  }

  v93 = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableDataHandle>(a3);
  v94 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v93, a4, HIWORD(a4));
  if (v94 != v93[5])
  {
    v95 = v94 - v93[4];
    v96 = *(v93[7] + (((v95 >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (v96)
    {
      v97 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 1612, *(v96 + 8 * (v95 >> 2)));
      if (v97 != v6[1617])
      {
        v98 = (*(v6[1619] + ((((v97 - v6[1616]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((v97 - v6[1616]) >> 3) & 0x3F));
        v99 = v98[1];
        if (!v99 || (v100 = v99 - 1, (v98[1] = v100) == 0))
        {
          *v98 = 0;
        }
      }
    }
  }

  if (v10)
  {
    v101 = *v10;
    v130 = v101;
    v102 = v101 >> 6;
    v103 = v6[1691];
    if (v102 < (v6[1692] - v103) >> 3)
    {
      v104 = *(v103 + 8 * v102);
      if (v104)
      {
        if (*(v104 + 16 * (v101 & 0x3F)) == HIDWORD(v101))
        {
          ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::erase(v6 + 1690, &v130);
          util::id_pool<geo::handle<md::AssociationItem>>::push((v6 + 1710), v101);
        }
      }
    }
  }

  if (v13)
  {
    v105 = *v13;
    v106 = *v13 >> 6;
    v107 = v6[1665];
    if (v106 < (v6[1666] - v107) >> 3)
    {
      v108 = *(v107 + 8 * v106);
      if (v108)
      {
        v109 = *v13 & 0x3FLL;
        if (*(v108 + 16 * v109) == HIDWORD(v105))
        {
          v110 = *(v108 + 16 * v109 + 8);
          v111 = v110 & 0x3F;
          v112 = v6[1671];
          v113 = (v110 >> 3) & 0x1FFFFFFFFFFFFFF8;
          v114 = *(v112 + v113) + 24 * v111;
          v115 = ((v6[1669] - v6[1668]) >> 3) - 1;
          v116 = *(v112 + ((v115 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v115 & 0x3F);
          v117 = *v114;
          v118 = *(v114 + 16);
          LOWORD(v115) = *(v116 + 16);
          *v114 = *v116;
          *(v114 + 16) = v115;
          *(v116 + 16) = v118;
          *v116 = v117;
          v119 = v6[1677];
          v120 = *(v119 + v113);
          v121 = ((v6[1669] - v6[1668]) >> 3) - 1;
          v122 = v121 & 0x3F;
          v123 = *(v119 + ((v121 >> 3) & 0x1FFFFFFFFFFFFFF8));
          v124 = *(v120 + 8 * v111);
          *(v120 + 8 * v111) = *(v123 + 8 * v122);
          *(v123 + 8 * v122) = v124;
          v125 = v6[1665];
          if (v106 < (v6[1666] - v125) >> 3)
          {
            v126 = *(v125 + 8 * v106);
            if (v126)
            {
              if (*(v126 + 16 * (v105 & 0x3F)) == HIDWORD(v105))
              {
                ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(v6 + 1664, (v6[1668] + 8 * *(v126 + 16 * v109 + 8)));
              }
            }
          }

          v127 = v6[1687];
          if (v105 < ((v6[1688] - v127) >> 3))
          {
            v128 = *(v127 + 8 * v105);
            if (!((v128 ^ v105) >> 32))
            {
              v130 = v105;
              *(v127 + 8 * v105) = v128 + 0x100000000;
              std::vector<unsigned long>::push_back[abi:nn200100]((v6 + 1684), &v130);
            }
          }
        }
      }
    }
  }
}

void std::invoke[abi:nn200100]<void md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>&)#1} &,ecs2::Entity&,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>&>(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 2;
    if ((v6 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v9);
    }

    v10 = (4 * v6);
    *v10 = a2;
    v5 = 4 * v6 + 4;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19TileRenderableTypeTINS6_23DaVinciGroundRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>();
    *algn_1EB83D018 = 0xC0EF30C6D6B08313;
    qword_1EB83D020 = "md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>]";
    qword_1EB83D028 = 56;
  }
}

void std::function<void ()(ecs2::Entity)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v3);
  }

  else
  {
    v2 = std::__throw_bad_function_call[abi:nn200100]();
    _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19TileRenderableTypeTINS6_23DaVinciGroundRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE18destroy_deallocateEv(v2);
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40C80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A60B38;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40104B78CFLL);
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

void ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::function<void ()(ecs2::Entity)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40C80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void std::vector<ecs2::Entity>::reserve(void *a1)
{
  if (a1[2] - *a1 <= 0xFFuLL)
  {
    operator new();
  }
}

void std::vector<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *,std::allocator<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *>>::resize(const void **a1, unint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v4[8 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v3) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v4;
        v9 = (v7 - v4) >> 2;
        if (v9 <= a2)
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

        if (!(v10 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0;
    v13 = *a3;
    v14 = (v6 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v15 = vdupq_n_s64(v14);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_1B33B0560)));
      if (v16.i8[0])
      {
        *&v3[8 * v12] = v13;
      }

      if (v16.i8[4])
      {
        *&v3[8 * v12 + 8] = v13;
      }

      v12 += 2;
    }

    while (v14 - ((v6 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    v11 = &v3[8 * v6];
  }

  a1[1] = v11;
}

void std::vector<std::span<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,18446744073709551615ul>>::resize(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = (v3 + 16 * a2);
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = &v7[-v3];
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = &v4[16 * v6];
  }

  a1[1] = v11;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E46E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29E4708;
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

void ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E46E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,64ul>::~storage(a1);
}

void geo::Pool<md::DaVinciGroundRenderable>::construct<std::shared_ptr<md::MapTileData> &,signed char,BOOL const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> &>(uint64_t *a1, uint64_t *a2, char *a3, char *a4, void *a5)
{
  v10 = a1[5];
  if (!v10)
  {
    v11 = malloc_type_malloc(824 * a1[3], 0x10A20405B62D6D9uLL);
    v13 = v11;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v11, &v13);
    v10 = a1[5];
    v12 = &v11[103 * a1[3] - 103];
    if (v12 >= v11)
    {
      do
      {
        *v12 = v10;
        v10 = v12;
        v12 -= 103;
      }

      while (v12 >= v11);
      v10 = v12 + 103;
    }

    a1[5] = v10;
  }

  a1[5] = *v10;
  md::MapTileDataRenderable<md::MapTileData>::MapTileDataRenderable(v10, a2, *a3, *a4, a5);
}

void sub_1B2C2DC64(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = 0;
  while (1)
  {
    v5 = *(v1 + v4 + 432);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v4 -= 16;
    if (v4 == -32)
    {
      md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(v1);
      _Unwind_Resume(a1);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void ecs2::BasicRegistry<void>::add<md::ls::RegisterHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RegisterHandle>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::MapDataTypeV>(uint64_t a1, unint64_t a2, _WORD *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeV>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 2 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 2 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::CheckIfReadyToProcess>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::CheckIfReadyToProcess>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderablesCount>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v47 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>(void)::metadata;
  v46 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablesCount>(a1);
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
    v41 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 32 * (v14 & 0x3F);
    *v41 = *a3;
    v42 = *(v41 + 8);
    if (v42)
    {
      *(v41 + 16) = v42;
      operator delete(v42);
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
    }

    *(v41 + 8) = *(a3 + 8);
    *(v41 + 24) = *(a3 + 24);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v47);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v44 = v6;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    v43 = v16;
    v45 = v18 - v19;
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

      goto LABEL_45;
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

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v16);
      *(v8 + 88) = v31 + 16 * v16;
      LOBYTE(v16) = v43;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    v6 = v44;
    if (v45 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  v37 = *(v19 + 8 * v17) + 32 * (v16 & 0x3F);
  *v37 = *a3;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 8) = 0;
  *(v37 + 8) = *(a3 + 8);
  *(v37 + 24) = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(v46 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>();
  *(v46 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>(void)::metadata) = *(v46 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::WillEnterView>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::WillEnterView>(a1);
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
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::BaseMapTileHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BaseMapTileHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BaseMapTileHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::BaseMapTileHandle>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BaseMapTileHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BaseMapTileHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(a1);
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
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileType>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileType>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileType>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TileType>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileType>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileType>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileTransformConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileTransformConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileTransformConstantDataHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TileTransformConstantDataHandle>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileTransformConstantDataHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileTransformConstantDataHandle>(void)::metadata) = *(a1 + 4096);
}

void std::__hash_table<std::__hash_value_type<md::VKMRenderResourcesStore::VKMSplineKey,geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>>,std::__unordered_map_hasher<md::VKMRenderResourcesStore::VKMSplineKey,std::__hash_value_type<md::VKMRenderResourcesStore::VKMSplineKey,geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>>,md::VKMRenderResourcesStore::VKMSplineKeyHash,std::equal_to<md::VKMRenderResourcesStore::VKMSplineKey>,true>,std::__unordered_map_equal<md::VKMRenderResourcesStore::VKMSplineKey,std::__hash_value_type<md::VKMRenderResourcesStore::VKMSplineKey,geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>>,std::equal_to<md::VKMRenderResourcesStore::VKMSplineKey>,md::VKMRenderResourcesStore::VKMSplineKeyHash,true>,std::allocator<std::__hash_value_type<md::VKMRenderResourcesStore::VKMSplineKey,geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>>>>::__emplace_unique_key_args<md::VKMRenderResourcesStore::VKMSplineKey,std::pair<md::VKMRenderResourcesStore::VKMSplineKey,geo::handle<md::ConstantDataResource<ggl::Tile::Transform>>>>(float *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
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
    v8 = *(a2 + 24);
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

  if (!md::VKMRenderResourcesStore::VKMSplineKey::operator==((v10 + 2), a2))
  {
    goto LABEL_17;
  }
}

void ecs2::BasicRegistry<void>::add<md::ls::AssociationTileHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationTileHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationTileHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationTileHandle>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationTileHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationTileHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileUnitsPerMeter>(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v48 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileUnitsPerMeter>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileUnitsPerMeter>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TileUnitsPerMeter>(a1);
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
    v42 = 0;
    v43 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 12 * (v14 & 0x3F);
    do
    {
      *(v43 + v42) = *(a3 + v42);
      v42 += 4;
    }

    while (v42 != 12);
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
    v44 = v6;
    v45 = v16;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    v46 = v18 - v19;
    v47 = v16 >> 6;
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

      goto LABEL_44;
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

LABEL_44:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v16);
      v17 = v47;
      *(v8 + 88) = v31 + 16 * v16;
      LOBYTE(v16) = v45;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    v6 = v44;
    if (v46 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  v37 = *(v19 + 8 * v17) + 12 * (v16 & 0x3F);
  v38 = *a3;
  *(v37 + 8) = *(a3 + 2);
  *v37 = v38;
  v39 = *(v8 + 152);
  for (i = *(v8 + 160); v39 != i; v39 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v39 + 24), a2);
  }

LABEL_41:
  v41 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v41 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileUnitsPerMeter>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileUnitsPerMeter>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::SupportsShadows>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsShadows>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsShadows>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsShadows>(a1);
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
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsShadows>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsShadows>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::SupportsStylizedShading>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsStylizedShading>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsStylizedShading>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsStylizedShading>(a1);
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
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsStylizedShading>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsStylizedShading>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileShadowConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TileShadowConstantDataHandle>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TilePrepassShadowConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TilePrepassShadowConstantDataHandle>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TilePrepassConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TilePrepassConstantDataHandle>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::SupportsFragmentClip>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsFragmentClip>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsFragmentClip>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsFragmentClip>(a1);
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
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsFragmentClip>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsFragmentClip>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileClippingConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TileClippingConstantDataHandle>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileStyleCameraConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TileStyleCameraConstantDataHandle>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileStyleDataKeyHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleDataKeyHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleDataKeyHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TileStyleDataKeyHandle>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleDataKeyHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleDataKeyHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>(a1);
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
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>(a1);
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
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileViewConstantDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TileViewConstantDataHandle>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::NeedsTileRenderableDataHandleUpdate>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v48 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsTileRenderableDataHandleUpdate>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsTileRenderableDataHandleUpdate>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsTileRenderableDataHandleUpdate>(a1);
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
    v42 = 0;
    v43 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 32 * (v14 & 0x3F);
    do
    {
      *(v43 + v42) = *(a3 + v42);
      v42 += 8;
    }

    while (v42 != 24);
    *(v43 + 24) = *(a3 + 24);
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
    v44 = v6;
    v45 = v16;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    v46 = v18 - v19;
    v47 = v16 >> 6;
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

      goto LABEL_44;
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

LABEL_44:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v16);
      v17 = v47;
      *(v8 + 88) = v31 + 16 * v16;
      LOBYTE(v16) = v45;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    v6 = v44;
    if (v46 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  v37 = (*(v19 + 8 * v17) + 32 * (v16 & 0x3F));
  v38 = *(a3 + 16);
  *v37 = *a3;
  v37[1] = v38;
  v39 = *(v8 + 152);
  for (i = *(v8 + 160); v39 != i; v39 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v39 + 24), a2);
  }

LABEL_41:
  v41 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v41 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsTileRenderableDataHandleUpdate>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsTileRenderableDataHandleUpdate>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::BoundsWidth>(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BoundsWidth>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BoundsWidth>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::BoundsWidth>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 4 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 4 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BoundsWidth>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BoundsWidth>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileBounds>(uint64_t a1, unint64_t a2, void *a3)
{
  v47 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileBounds>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileBounds>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TileBounds>(a1);
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
    v44 = (*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 32 * (v14 & 0x3F));
    *v44 = *a3;
    v44[1] = a3[1];
    v44[2] = a3[2];
    v44[3] = a3[3];
    goto LABEL_41;
  }

  v46 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v47);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v45 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_42;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v45;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 32 * (v16 & 0x3F));
  v6 = v46;
  v40 = *(a3 + 1);
  *v39 = *a3;
  v39[1] = v40;
  v41 = *(v8 + 152);
  for (i = *(v8 + 160); v41 != i; v41 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v41 + 24), a2);
  }

LABEL_41:
  v43 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v43 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileBounds>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileBounds>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileMatrix>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileMatrix>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileMatrix>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TileMatrix>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileMatrix>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileMatrix>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileRenderableDataHandle>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableDataHandle>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableDataHandle>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableDataHandle>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableDataHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableDataHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TransferStyleAttributeRasterSet>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransferStyleAttributeRasterSet>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransferStyleAttributeRasterSet>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::TransferStyleAttributeRasterSet>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransferStyleAttributeRasterSet>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransferStyleAttributeRasterSet>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::LayerDataReference>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v48 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LayerDataReference>();
  i = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LayerDataReference>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::LayerDataReference>(a1);
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
    v43 = *(v8[7] + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F);
    v44 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    v45 = *(v43 + 8);
    *v43 = v44;
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    *(v43 + 16) = *(a3 + 16);
    goto LABEL_41;
  }

  v47 = i;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>((v8 + 4), &v48);
  v16 = ((v8[5] - v8[4]) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = v8[7];
  v18 = v8[8];
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = v8[9];
    v46 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    v8[8] = v18 + 8 * v22;
    v31 = v8[10];
    v32 = v8[11];
    v33 = &v32[-v31] >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = v8[12];
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(v32, 16 * v34);
      v8[11] = &v32[16 * v34];
      a1 = v46;
    }

    else if (v21 < v33)
    {
      v8[11] = v31 + 16 * v21;
    }

    v19 = v8[7];
    if (v20 < (v8[8] - v19))
    {
      operator new();
    }
  }

  v39 = *(v19 + 8 * v17) + 24 * (v16 & 0x3F);
  *v39 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  *(v39 + 16) = *(a3 + 16);
  v40 = v8[19];
  v41 = v8[20];
  for (i = v47; v40 != v41; v40 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v40 + 24), a2);
  }

LABEL_41:
  v42 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v42 + ((i >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << i;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LayerDataReference>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LayerDataReference>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::SupportsRebuildingRenderables>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsRebuildingRenderables>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsRebuildingRenderables>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsRebuildingRenderables>(a1);
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
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsRebuildingRenderables>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsRebuildingRenderables>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(uint64_t a1, unint64_t a2, void *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
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

      goto LABEL_42;
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
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 8 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(void)::metadata) = *(a1 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls38RequireTypedRenderableForLegacyReasonsINS6_23DaVinciGroundRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A3CFB8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A3CFD8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A3CFB8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29SupportsRebuildingRenderablesEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsRebuildingRenderables>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsRebuildingRenderables>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsRebuildingRenderables>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsRebuildingRenderables>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsRebuildingRenderables>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsRebuildingRenderables,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1ABD8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsRebuildingRenderables,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1ABD8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18LayerDataReferenceEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LayerDataReference>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LayerDataReference>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::LayerDataReference>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v19 = *v17;
        v18 = *(v17 + 8);
        *v17 = 0;
        *(v17 + 8) = 0;
        v23 = *(v17 + 16);
        v20 = *v16;
        *v16 = 0;
        *(v16 + 8) = 0;
        v21 = *(v17 + 8);
        *v17 = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        }

        *(v17 + 16) = *(v16 + 16);
        v22 = *(v16 + 8);
        *v16 = v19;
        *(v16 + 8) = v18;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
          v18 = *(v16 + 8);
        }

        *(v16 + 16) = v23;
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LayerDataReference>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LayerDataReference>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::LayerDataReference,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F4F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::LayerDataReference,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::LayerDataReference,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F4FB0;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
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

void ecs2::storage<ecs2::Entity,md::ls::LayerDataReference,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::LayerDataReference,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::LayerDataReference,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F4F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::LayerDataReference,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31TransferStyleAttributeRasterSetEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransferStyleAttributeRasterSet>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransferStyleAttributeRasterSet>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TransferStyleAttributeRasterSet>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransferStyleAttributeRasterSet>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransferStyleAttributeRasterSet>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TransferStyleAttributeRasterSet,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40CE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TransferStyleAttributeRasterSet,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TransferStyleAttributeRasterSet,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A40D08;
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

void ecs2::storage<ecs2::Entity,md::ls::TransferStyleAttributeRasterSet,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TransferStyleAttributeRasterSet,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TransferStyleAttributeRasterSet,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40CE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TransferStyleAttributeRasterSet,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls24TileRenderableDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileRenderableDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40F08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TileRenderableDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TileRenderableDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A40F28;
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

void ecs2::storage<ecs2::Entity,md::ls::TileRenderableDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TileRenderableDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileRenderableDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40F08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TileRenderableDataHandle,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileMatrix>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileMatrix>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileMatrix>();
    unk_1EB83DBD0 = 0xBCC33905201D8160;
    qword_1EB83DBD8 = "md::ls::TileMatrix]";
    qword_1EB83DBE0 = 18;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10TileMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileMatrix>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileMatrix>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileMatrix>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53700;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TileMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TileMatrix,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A53720;
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

void ecs2::storage<ecs2::Entity,md::ls::TileMatrix,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TileMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53700;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TileMatrix,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10TileBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileBounds>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileBounds>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileBounds>(v3);
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
        v16 = (*(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v14 & 0x3F));
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F);
        v18 = *v17;
        v19 = *(v17 + 16);
        *v17 = *v16;
        *(v17 + 8) = v16[1];
        *(v17 + 16) = v16[2];
        *(v17 + 24) = v16[3];
        *v16 = v18;
        *(v16 + 1) = v19;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileBounds>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileBounds>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1F5A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TileBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TileBounds,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1F5C8;
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

void ecs2::storage<ecs2::Entity,md::ls::TileBounds,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TileBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1F5A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TileBounds,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls11BoundsWidthEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BoundsWidth>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BoundsWidth>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::BoundsWidth>(v3);
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
        v20 = *(v19 + 4 * v18);
        *(v19 + 4 * v18) = *(v17 + 4 * v15);
        *(v17 + 4 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BoundsWidth>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BoundsWidth>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BoundsWidth,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1F4D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::BoundsWidth,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::BoundsWidth,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1F4F8;
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

void ecs2::storage<ecs2::Entity,md::ls::BoundsWidth,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::BoundsWidth,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BoundsWidth,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1F4D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::BoundsWidth,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsTileRenderableDataHandleUpdate>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsTileRenderableDataHandleUpdate>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsTileRenderableDataHandleUpdate>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsTileRenderableDataHandleUpdate>(void)::localId;
    unk_1EB82D670 = 0xF37331D7CF44CB11;
    qword_1EB82D678 = "md::ls::NeedsTileRenderableDataHandleUpdate]";
    qword_1EB82D680 = 43;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::NeedsTileRenderableDataHandleUpdate>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsTileRenderableDataHandleUpdate>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsTileRenderableDataHandleUpdate>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsTileRenderableDataHandleUpdate>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls35NeedsTileRenderableDataHandleUpdateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsTileRenderableDataHandleUpdate>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsTileRenderableDataHandleUpdate>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsTileRenderableDataHandleUpdate>(v3);
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

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 32 * (v14 & 0x3F);
        v20 = *v18;
        v21 = *(v18 + 16);
        v19 = *(v18 + 24);
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 8;
        }

        while (v13 != 24);
        *(v18 + 24) = *(v17 + 24);
        *v17 = v20;
        *(v17 + 16) = v21;
        *(v17 + 24) = v19;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsTileRenderableDataHandleUpdate>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsTileRenderableDataHandleUpdate>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls35NeedsTileRenderableDataHandleUpdateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E48A0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsTileRenderableDataHandleUpdate,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4860;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::NeedsTileRenderableDataHandleUpdate,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::NeedsTileRenderableDataHandleUpdate,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29E4880;
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

void ecs2::storage<ecs2::Entity,md::ls::NeedsTileRenderableDataHandleUpdate,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::NeedsTileRenderableDataHandleUpdate,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsTileRenderableDataHandleUpdate,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4860;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::NeedsTileRenderableDataHandleUpdate,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26TileViewConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileViewConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileViewConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A535F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TileViewConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TileViewConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A53610;
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

void ecs2::storage<ecs2::Entity,md::ls::TileViewConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TileViewConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileViewConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A535F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TileViewConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19TileProjectionTypeTILNS7_18TileProjectionTypeE1EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29EFD28;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29EFD28;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19TileProjectionTypeTILNS7_18TileProjectionTypeE0EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29EFC30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29EFC30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22TileStyleDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleDataKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleDataKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileStyleDataKeyHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleDataKeyHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleDataKeyHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileStyleDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TileStyleDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TileStyleDataKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A40FB0;
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

void ecs2::storage<ecs2::Entity,md::ls::TileStyleDataKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TileStyleDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileStyleDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40F90;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TileStyleDataKeyHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls33TileStyleCameraConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileStyleCameraConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileStyleCameraConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41018;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TileStyleCameraConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TileStyleCameraConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41038;
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

void ecs2::storage<ecs2::Entity,md::ls::TileStyleCameraConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TileStyleCameraConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileStyleCameraConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41018;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TileStyleCameraConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30TileClippingConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileClippingConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileClippingConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40E80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TileClippingConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TileClippingConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A40EA0;
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

void ecs2::storage<ecs2::Entity,md::ls::TileClippingConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TileClippingConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileClippingConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40E80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TileClippingConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20SupportsFragmentClipEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsFragmentClip>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsFragmentClip>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsFragmentClip>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsFragmentClip>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsFragmentClip>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsFragmentClip,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F5018;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsFragmentClip,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F5018;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29TilePrepassConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TilePrepassConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}