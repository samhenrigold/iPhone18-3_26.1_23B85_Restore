void md::LabelTransitRoute::refreshNodePositionState(mdm::zone_mallocator *a1, uint64_t a2)
{
  v155 = *MEMORY[0x1E69E9840];
  v144 = 0uLL;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v4 = *(a2 + 101);
  if (v4 != 1)
  {
    if (v4 != 3)
    {
      if (v4 != 2)
      {
        v154 = &v149;
        v20 = mdm::zone_mallocator::instance(a1);
        v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v20, 1);
        *v21 = 0x200010010;
        v22 = (v21 + 1);
        v23 = v21 - (v147 - v146);
        memcpy(v23, v146, v147 - v146);
        v24 = v146;
        v25 = v148;
        v146 = v23;
        v147 = v22;
        v148 = v22;
LABEL_63:
        v152 = v24;
        v153 = v25;
        v150 = v24;
        v151 = v24;
        std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
        goto LABEL_64;
      }

      v5 = [*(a2 + 8) hasStyleAttributes];
      if (v5)
      {
        v6 = objc_alloc(MEMORY[0x1E69A1DB0]);
        v7 = objc_msgSend_styleAttributes(*(a2 + 8));
        v8 = [v6 initWithGEOStyleAttributes:v7];

        v9 = [v8 featureStyleAttributesPtr];
        goto LABEL_9;
      }

      v34 = (v147 - v146) >> 3;
      if ((v34 + 1) >> 61)
      {
        goto LABEL_156;
      }

      v35 = (v148 - v146) >> 2;
      if (v35 <= v34 + 1)
      {
        v35 = v34 + 1;
      }

      if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
      {
        v36 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v35;
      }

      v154 = &v149;
      if (v36)
      {
        v37 = mdm::zone_mallocator::instance(v5);
        v38 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v37, v36);
      }

      else
      {
        v38 = 0;
      }

      v47 = &v38[8 * v36];
      v46 = &v38[8 * v34];
      *v46 = 0x30000002ALL;
      v41 = v46 + 8;
      v48 = &v46[-(v147 - v146)];
      memcpy(v48, v146, v147 - v146);
      v49 = v146;
      v50 = v148;
      v146 = v48;
      v148 = v47;
      v152 = v49;
      v153 = v50;
      v150 = v49;
      v151 = v49;
      v14 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
      v147 = v41;
      if (v41 < v47)
      {
        goto LABEL_52;
      }

      v26 = (v41 - v146) >> 3;
      if ((v26 + 1) >> 61)
      {
        goto LABEL_156;
      }

      v51 = (v148 - v146) >> 2;
      if (v51 <= v26 + 1)
      {
        v51 = v26 + 1;
      }

      if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v51;
      }

      v154 = &v149;
      if (v28)
      {
        goto LABEL_60;
      }

LABEL_61:
      v53 = 0;
      goto LABEL_62;
    }

    v154 = &v149;
    v10 = mdm::zone_mallocator::instance(a1);
    v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v10, 1);
    *v11 = 0x10000002ALL;
    memcpy(v11 - (v147 - v146), v146, v147 - v146);
    v12 = v146;
    v13 = v148;
    v146 = v11 - (v147 - v146);
    v148 = v11 + 1;
    v152 = v12;
    v153 = v13;
    v150 = v12;
    v151 = v12;
    v14 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
    v147 = (v11 + 1);
    v26 = ((v11 + 1) - v146) >> 3;
    if ((v26 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v27 = (v148 - v146) >> 2;
    if (v27 <= v26 + 1)
    {
      v27 = v26 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v28 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v27;
    }

    v154 = &v149;
    if (!v28)
    {
      goto LABEL_61;
    }

LABEL_60:
    v52 = mdm::zone_mallocator::instance(v14);
    v53 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v52, v28);
LABEL_62:
    v55 = &v53[8 * v28];
    v54 = &v53[8 * v26];
    *v54 = 0x2BC00000025;
    v22 = v54 + 8;
    v56 = &v54[-(v147 - v146)];
    memcpy(v56, v146, v147 - v146);
    v24 = v146;
    v25 = v148;
    v146 = v56;
    v147 = v22;
    v148 = v55;
    goto LABEL_63;
  }

  v15 = [*a2 hasStyleAttributes];
  if (!v15)
  {
    v29 = (v147 - v146) >> 3;
    if ((v29 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v30 = (v148 - v146) >> 2;
    if (v30 <= v29 + 1)
    {
      v30 = v29 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v31 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v30;
    }

    v154 = &v149;
    if (v31)
    {
      v32 = mdm::zone_mallocator::instance(v15);
      v33 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v32, v31);
    }

    else
    {
      v33 = 0;
    }

    v40 = &v33[8 * v31];
    v39 = &v33[8 * v29];
    *v39 = 42;
    v41 = v39 + 8;
    v42 = &v39[-(v147 - v146)];
    memcpy(v42, v146, v147 - v146);
    v43 = v146;
    v44 = v148;
    v146 = v42;
    v148 = v40;
    v152 = v43;
    v153 = v44;
    v150 = v43;
    v151 = v43;
    v14 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
    v147 = v41;
    if (v41 < v40)
    {
LABEL_52:
      *v41 = 0x2BC00000025;
      v22 = v41 + 8;
LABEL_64:
      v147 = v22;
      goto LABEL_65;
    }

    v26 = (v41 - v146) >> 3;
    if ((v26 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v45 = (v148 - v146) >> 2;
    if (v45 <= v26 + 1)
    {
      v45 = v26 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v28 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v45;
    }

    v154 = &v149;
    if (!v28)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v16 = objc_alloc(MEMORY[0x1E69A1DB0]);
  v17 = objc_msgSend_styleAttributes(*a2);
  v8 = [v16 initWithGEOStyleAttributes:v17];

  v9 = [v8 featureStyleAttributesPtr];
LABEL_9:
  v19 = *v9;
  v18 = v9[1];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *&v144 = v19;
  *(&v144 + 1) = v18;

  if (!v19)
  {
LABEL_65:
    *&v145 = 0xE100000006;
    std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,geo::mallocator>>::vector[abi:nn200100](&v150, &v145, 1uLL);
    std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,geo::mallocator>> &,0>(&v145, &v150);
  }

  v57 = *(a2 + 48);
  v58 = *(a1 + 7);
  v59 = *(v58 + 8 * v57);
  if (v59)
  {
    v60 = v59 + 8;
  }

  else
  {
    v60 = 0;
  }

  v61 = *(v60 + 8);
  md::LabelExternalPointFeature::incident(v61);
  v62 = [objc_claimAutoreleasedReturnValue() type] == 6;

  if (v62)
  {
    v64 = *(v58 + 8 * v57);
    if (v64)
    {
      v65 = v64 + 8;
    }

    else
    {
      v65 = 0;
    }

    v66 = *(v65 + 8);
    md::LabelExternalPointFeature::incident(v66);
    v67 = [objc_claimAutoreleasedReturnValue() transitSystem];
    MergeTransitSystemStylesWithStyle(v67, &v144);
  }

  v68 = v147;
  if (v147 >= v148)
  {
    v70 = (v147 - v146) >> 3;
    if ((v70 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v71 = (v148 - v146) >> 2;
    if (v71 <= v70 + 1)
    {
      v71 = v70 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v72 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v72 = v71;
    }

    v154 = &v149;
    if (v72)
    {
      v73 = mdm::zone_mallocator::instance(v63);
      v74 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v73, v72);
    }

    else
    {
      v74 = 0;
    }

    v76 = &v74[8 * v72];
    v75 = &v74[8 * v70];
    *v75 = 0x300000005;
    v69 = (v75 + 8);
    v77 = &v75[-(v147 - v146)];
    memcpy(v77, v146, v147 - v146);
    v78 = v146;
    v79 = v148;
    v146 = v77;
    v147 = v69;
    v148 = v76;
    v152 = v78;
    v153 = v79;
    v150 = v78;
    v151 = v78;
    v63 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
  }

  else
  {
    *v147 = 0x300000005;
    v69 = (v68 + 8);
  }

  v147 = v69;
  if (v69 >= v148)
  {
    v81 = (v69 - v146) >> 3;
    if ((v81 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v82 = (v148 - v146) >> 2;
    if (v82 <= v81 + 1)
    {
      v82 = v81 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v83 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v83 = v82;
    }

    v154 = &v149;
    if (v83)
    {
      v84 = mdm::zone_mallocator::instance(v63);
      v85 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v84, v83);
    }

    else
    {
      v85 = 0;
    }

    v87 = &v85[8 * v83];
    v86 = &v85[8 * v81];
    *v86 = 0x100010007;
    v80 = (v86 + 8);
    v88 = &v86[-(v147 - v146)];
    memcpy(v88, v146, v147 - v146);
    v89 = v146;
    v90 = v148;
    v146 = v88;
    v147 = v80;
    v148 = v87;
    v152 = v89;
    v153 = v90;
    v150 = v89;
    v151 = v89;
    v63 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
  }

  else
  {
    *v69 = 0x100010007;
    v80 = v69 + 1;
  }

  v147 = v80;
  if (v80 >= v148)
  {
    v92 = (v80 - v146) >> 3;
    if ((v92 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v93 = (v148 - v146) >> 2;
    if (v93 <= v92 + 1)
    {
      v93 = v92 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v94 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v94 = v93;
    }

    v154 = &v149;
    if (v94)
    {
      v95 = mdm::zone_mallocator::instance(v63);
      v96 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v95, v94);
    }

    else
    {
      v96 = 0;
    }

    v98 = &v96[8 * v94];
    v97 = &v96[8 * v92];
    *v97 = 0x100010002;
    v91 = (v97 + 8);
    v99 = &v97[-(v147 - v146)];
    memcpy(v99, v146, v147 - v146);
    v100 = v146;
    v101 = v148;
    v146 = v99;
    v147 = v91;
    v148 = v98;
    v152 = v100;
    v153 = v101;
    v150 = v100;
    v151 = v100;
    v63 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
  }

  else
  {
    *v80 = 0x100010002;
    v91 = v80 + 1;
  }

  v147 = v91;
  v102 = *(a2 + 60);
  if (v91 >= v148)
  {
    v104 = (v91 - v146) >> 3;
    if ((v104 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v105 = (v148 - v146) >> 2;
    if (v105 <= v104 + 1)
    {
      v105 = v104 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v106 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v106 = v105;
    }

    v154 = &v149;
    if (v106)
    {
      v107 = mdm::zone_mallocator::instance(v63);
      v108 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v107, v106);
    }

    else
    {
      v108 = 0;
    }

    v110 = &v108[8 * v106];
    v109 = &v108[8 * v104];
    *v109 = (v102 << 32) | 0x2C;
    v103 = v109 + 1;
    v111 = v109 - (v147 - v146);
    memcpy(v111, v146, v147 - v146);
    v112 = v146;
    v113 = v148;
    v146 = v111;
    v147 = v103;
    v148 = v110;
    v152 = v112;
    v153 = v113;
    v150 = v112;
    v151 = v112;
    v63 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
  }

  else
  {
    *v91 = (v102 << 32) | 0x2C;
    v103 = v91 + 1;
  }

  v147 = v103;
  v114 = *(a2 + 100);
  if (v103 >= v148)
  {
    v116 = (v103 - v146) >> 3;
    if ((v116 + 1) >> 61)
    {
      goto LABEL_156;
    }

    v117 = (v148 - v146) >> 2;
    if (v117 <= v116 + 1)
    {
      v117 = v116 + 1;
    }

    if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
    {
      v118 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v118 = v117;
    }

    v154 = &v149;
    if (v118)
    {
      v119 = mdm::zone_mallocator::instance(v63);
      v120 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v119, v118);
    }

    else
    {
      v120 = 0;
    }

    v122 = &v120[8 * v118];
    v121 = &v120[8 * v116];
    *v121 = (v114 << 32) | 0x10009;
    v115 = v121 + 1;
    v123 = v121 - (v147 - v146);
    memcpy(v123, v146, v147 - v146);
    v124 = v146;
    v125 = v148;
    v146 = v123;
    v147 = v115;
    v148 = v122;
    v152 = v124;
    v153 = v125;
    v150 = v124;
    v151 = v124;
    v63 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
  }

  else
  {
    *v103 = (v114 << 32) | 0x10009;
    v115 = v103 + 1;
  }

  v147 = v115;
  v126 = *(*(a1 + 7) + 8 * *(a2 + 48));
  if (v126)
  {
    v127 = v126 + 8;
  }

  else
  {
    v127 = 0;
  }

  v128 = *(v127 + 68);
  if (v115 < v148)
  {
    *v115 = ((v128 << 32) | 0x10009) + 11;
    v129 = (v115 + 1);
    goto LABEL_149;
  }

  v130 = (v115 - v146) >> 3;
  if ((v130 + 1) >> 61)
  {
LABEL_156:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v131 = (v148 - v146) >> 2;
  if (v131 <= v130 + 1)
  {
    v131 = v130 + 1;
  }

  if ((v148 - v146) >= 0x7FFFFFFFFFFFFFF8)
  {
    v132 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v132 = v131;
  }

  v154 = &v149;
  if (v132)
  {
    v133 = mdm::zone_mallocator::instance(v63);
    v134 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v133, v132);
  }

  else
  {
    v134 = 0;
  }

  v136 = &v134[8 * v132];
  v135 = &v134[8 * v130];
  *v135 = ((v128 << 32) | 0x10009) + 11;
  v129 = v135 + 8;
  v137 = &v135[-(v147 - v146)];
  memcpy(v137, v146, v147 - v146);
  v138 = v146;
  v139 = v148;
  v146 = v137;
  v147 = v129;
  v148 = v136;
  v152 = v138;
  v153 = v139;
  v150 = v138;
  v151 = v138;
  std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v150);
LABEL_149:
  v147 = v129;
  v140 = v144;
  FeatureStyleAttributes::replaceAttributes(v144, v146, (v129 - v146) >> 3);
  v141 = *(a2 + 72);
  v142 = *(&v144 + 1);
  if (*(&v144 + 1))
  {
    atomic_fetch_add_explicit((*(&v144 + 1) + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v143 = *(v141 + 40);
  *(v141 + 32) = v140;
  *(v141 + 40) = v142;
  if (v143)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v143);
  }

  if (v142)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v142);
    std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v146);
    std::__shared_weak_count::__release_shared[abi:nn200100](v142);
  }

  else
  {
    std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v146);
  }
}

void sub_1B2E05710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a15);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

void md::LabelExternalPointFeature::addPlacementInfo(void *a1, uint64_t a2)
{
  v5 = a1[48];
  v4 = a1[49];
  if (v5 >= v4)
  {
    v8 = a1[47];
    v9 = (v5 - v8) >> 5;
    if ((v9 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v8;
    v11 = v10 >> 4;
    if (v10 >> 4 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24 = a1 + 47;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::LabelFeaturePlacementInfo>>(v12);
    }

    v13 = 32 * v9;
    v21 = 0;
    v22 = v13;
    v23 = v13;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    std::vector<md::LabelPlacement>::__init_with_size[abi:nn200100]<md::LabelPlacement*,md::LabelPlacement*>(v13, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * (*(a2 + 8) - *a2));
    v14 = *(a2 + 24);
    *(v13 + 26) = *(a2 + 26);
    *(v13 + 24) = v14;
    *&v23 = v23 + 32;
    v15 = a1[47];
    v16 = a1[48];
    v17 = v22 + v15 - v16;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::LabelFeaturePlacementInfo>,md::LabelFeaturePlacementInfo*>(v15, v16, v17);
    v18 = a1[47];
    a1[47] = v17;
    v19 = a1[49];
    v20 = v23;
    *(a1 + 24) = v23;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v21 = v18;
    v22 = v18;
    std::__split_buffer<md::LabelFeaturePlacementInfo>::~__split_buffer(&v21);
    v7 = v20;
  }

  else
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    std::vector<md::LabelPlacement>::__init_with_size[abi:nn200100]<md::LabelPlacement*,md::LabelPlacement*>(v5, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * (*(a2 + 8) - *a2));
    v6 = *(a2 + 24);
    *(v5 + 26) = *(a2 + 26);
    *(v5 + 24) = v6;
    v7 = v5 + 32;
    a1[48] = v5 + 32;
  }

  a1[48] = v7;
}

void sub_1B2E05944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<md::LabelFeaturePlacementInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void md::LabelTransitRoute::addTransferSubtitleToNode(md::LabelTransitRoute::NodeInfo &)::$_1::operator()(std::__shared_weak_count **a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a2;
  operator new();
}

void sub_1B2E05D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);

  _Unwind_Resume(a1);
}

void md::LabelTransitRoute::addTransferSubtitleToNode(md::LabelTransitRoute::NodeInfo &)::$_2::operator()(std::__shared_weak_count **a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a2;
  operator new();
}

void sub_1B2E0614C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);

  _Unwind_Resume(a1);
}

void sub_1B2E0665C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v9);

  _Unwind_Resume(a1);
}

void CreateTransitLineDataElementGroup(void *a1, int a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_1B2E06ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v16);

  _Unwind_Resume(a1);
}

void *md::LabelExternalPointFeature::addDataElement(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[54];
  v4 = result[55];
  if (v3 >= v4)
  {
    v7 = result[53];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
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

    v19[4] = v2 + 53;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = v2[53];
    v15 = v2[54] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    v17 = v2[53];
    v2[53] = v16;
    v2[54] = v6;
    v18 = v2[55];
    v2[55] = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(v19);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[54] = v6;
  return result;
}

void std::__shared_ptr_emplace<md::LabelExternalDataElement>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<md::LabelExternalDataElement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelExternalDataElementGroup>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v3 -= 16;
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<md::LabelExternalDataElementGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelTransferGroup>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (*(a1 + 24))
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 24));
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<md::LabelTransferGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A030B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelAnnotationElementGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelAnnotationElement>::__on_zero_shared(uint64_t result)
{
  if (*(result + 55) < 0)
  {
    v2 = *(result + 32);
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }
}

void std::__shared_ptr_emplace<md::LabelAnnotationElement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A46170;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,geo::mallocator>>::vector[abi:nn200100](void *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v6 = 8 * a3;
    v7 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
    *a1 = v7;
    a1[1] = v7;
    a1[2] = &v7[a3];
    do
    {
      v8 = *a2++;
      *v7++ = v8;
      v6 -= 8;
    }

    while (v6);
    a1[1] = v7;
  }

  return a1;
}

void MergeTransitSystemStylesWithStyle(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v10 = v3;
    v4 = [MEMORY[0x1E69A25E0] attributesForTransitSystem:v3];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithGEOStyleAttributes:v4];
      v6 = [v5 featureStyleAttributesPtr];
      v8 = *v6;
      v7 = v6[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      FeatureStyleAttributes::replaceAttributes(v8, **a2, *(*a2 + 33));
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(a2 + 8);
      *a2 = v8;
      *(a2 + 8) = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }

    v3 = v10;
  }
}

void sub_1B2E071E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,unsigned int>(uint64_t *result, unsigned int a2, _DWORD *a3)
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
        v8 = *(v5 + 28);
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
    v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<unsigned int,void *>>(v9);
    v10[7] = *a3;
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = v7;
    *v6 = v10;
    v11 = **v4;
    if (v11)
    {
      *v4 = v11;
      v12 = *v6;
    }

    else
    {
      v12 = v10;
    }

    result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v4[1], v12);
    ++v4[3];
  }

  return result;
}

void std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::destroy(*result);
    v2 = std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::destroy(result[1]);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<unsigned int,void *>>(v3, result);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<unsigned int,void *>>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<unsigned int,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x20uLL, 0x1020040B8A0C786uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

uint64_t md::LabelTransitRoute::findStopHeadingRange(uint64_t a1, float64x2_t *a2, _DWORD *a3, int a4, char *a5)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0xFFFFFFFFLL;
  v17 = 4;
  while (1)
  {
    v18 = (v10 + *a3);
    if (v10 + *a3 < 0)
    {
      break;
    }

    v19 = *(a1 + 240);
    if (v18 >= (*(a1 + 248) - v19) >> 4)
    {
      break;
    }

    v20 = vsubq_f64(*(v19 + 16 * v18), *a2);
    v21 = vaddvq_f64(vmulq_f64(v20, v20));
    if (v21 <= *(a1 + 232))
    {
      if (v15)
      {
        if (v11)
        {
          v33 = *a5;
          v34 = (v13 - *a5);
          v35 = v14 - *a5;
          if (v34 <= v35)
          {
            if (v34 <= (a5[1] - *a5))
            {
              v15 = 0;
              v38 = (a5[1] - *a5);
              if (v38 <= v35)
              {
                LOBYTE(v38) = v14 - *a5;
              }

              a5[1] = v38 + v33;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
            v36 = (a5[1] - *a5);
            if (v36 <= v35)
            {
              LOBYTE(v36) = v14 - *a5;
            }

            a5[1] = v36 + v33;
            *a5 = v13;
          }
        }

        else
        {
          v15 = 0;
          *a5 = v13 | (v14 << 8);
        }

        v11 = 1;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      if (v21 > *(a1 + 224))
      {
        LODWORD(v18) = v16;
        goto LABEL_45;
      }

      if (v21 <= *(a1 + 216))
      {
        v18 = v16;
      }

      else
      {
        v42 = v13;
        v43 = v11;
        v41 = v14;
        v22 = v20.f64[1];
        v23 = v20.f64[0];
        v24 = atan2f(v22, v23) * 0.159154943;
        v25 = vcvts_n_s32_f32(v24 - floorf(v24), 8uLL);
        if (v15)
        {
          v26 = (v12 - v25);
          v27 = v26 <= 0;
          if (v26 <= 0)
          {
            v28 = v12;
          }

          else
          {
            v28 = v25;
          }

          if (v27)
          {
            v29 = v25;
          }

          else
          {
            v29 = v12;
          }

          v14 = v41;
          v13 = v42;
          v30 = (v28 - v42);
          v31 = v29 - v42;
          if (v30 <= v31)
          {
            if (v30 <= (v41 - v42))
            {
              v37 = v31;
              if ((v41 - v42) > v31)
              {
                v37 = (v41 - v42);
              }

              v14 = v37 + v42;
            }

            v15 = 1;
          }

          else
          {
            v32 = (v41 - v42);
            if (v32 <= v31)
            {
              v32 = v31;
            }

            v14 = v32 + v42;
            v15 = 1;
            v13 = v28;
          }
        }

        else
        {
          v15 = 1;
          v14 = v25;
          v13 = v25;
        }

        v12 = v25;
        v18 = v16;
        v11 = v43;
      }
    }

    v10 += a4;
    v16 = v18;
    if (!--v17)
    {
      goto LABEL_45;
    }
  }

  v39 = v10 + *a3;
  LODWORD(v18) = v16;
  if (!(v11 & 1 | ((v15 & 1) == 0)))
  {
    *a5 = v13 | (v14 << 8);
    LOBYTE(v11) = 1;
    LODWORD(v18) = v39;
  }

LABEL_45:
  if (v18 == -1)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    *a3 = v18 + a4;
  }

  return v11 & 1;
}

void std::vector<md::LabelAngleRange,geo::allocator_adapter<md::LabelAngleRange,mdm::zone_mallocator>>::emplace_back<md::LabelAngleRange&>(mdm::zone_mallocator *result, char *a2)
{
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    v7 = &v4[-*result] >> 1;
    if (v7 <= -2)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v5 - *result;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = pthread_rwlock_rdlock((v11 + 32));
      if (v12)
      {
        geo::read_write_lock::logFailure(v12, "read lock", v13);
      }

      v14 = malloc_type_zone_malloc(*v11, 2 * v10, 0x1000040BDFB0063uLL);
      atomic_fetch_add((v11 + 24), 1u);
      geo::read_write_lock::unlock((v11 + 32));
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[2 * v7];
    *v15 = *a2;
    v15[1] = a2[1];
    v6 = v15 + 2;
    v17 = *result;
    v16 = *(result + 1);
    v18 = &v15[*result - v16];
    if (*result != v16)
    {
      v19 = v18;
      do
      {
        *v19 = *v17;
        v19[1] = v17[1];
        v17 += 2;
        v19 += 2;
      }

      while (v17 != v16);
      v17 = *result;
    }

    *result = v18;
    *(result + 1) = v6;
    *(result + 2) = &v14[2 * v10];
    if (v17)
    {
      v20 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAngleRange>(v20, v17);
    }
  }

  else
  {
    *v4 = *a2;
    v4[1] = a2[1];
    v6 = v4 + 2;
    *(result + 1) = v4 + 2;
  }

  *(result + 1) = v6;
}

uint64_t md::LabelTransitRoute::findRouteHeadingRange(uint64_t a1, float64x2_t *a2, int a3, int a4, char *a5)
{
  v8 = 0;
  v9 = 0;
  v10 = a4;
  v11 = a3;
  v12 = 10;
  v13 = -a4;
  do
  {
    if (v11 < 0)
    {
      break;
    }

    v14 = *(a1 + 240);
    v15 = v11 + v10;
    if (v13 + v11 + v10 >= ((*(a1 + 248) - v14) >> 4))
    {
      break;
    }

    v16 = vsubq_f64(*(v14 + 16 * v11), *a2);
    v17 = vaddvq_f64(vmulq_f64(v16, v16));
    if (v17 > *(a1 + 184))
    {
      v18 = v16.f64[1];
      v19 = v16.f64[0];
      v20 = atan2f(v18, v19) * 0.159154943;
      v21 = vcvts_n_s32_f32(v20 - floorf(v20), 8uLL);
      if (v8)
      {
        v22 = (v9 - v21);
        v23 = v22 <= 0 ? v9 : v21;
        v24 = v22 <= 0 ? v21 : v9;
        v25 = *a5;
        v26 = (v23 - *a5);
        v27 = v24 - *a5;
        if (v26 <= v27)
        {
          if (v26 <= (a5[1] - *a5))
          {
            v29 = v27;
            if ((a5[1] - *a5) > v27)
            {
              v29 = a5[1] - *a5;
            }

            a5[1] = v29 + v25;
          }
        }

        else
        {
          v28 = (a5[1] - *a5);
          if (v28 <= v27)
          {
            LOBYTE(v28) = v27;
          }

          a5[1] = v28 + v25;
          *a5 = v23;
        }
      }

      else
      {
        *a5 = v21 | (v21 << 8);
      }

      v8 = 1;
      v9 = v21;
      if (v17 > *(a1 + 192))
      {
        break;
      }
    }

    v11 = v15;
    --v12;
  }

  while (v12);
  return v8 & 1;
}

unsigned __int8 *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *,false>(unsigned __int8 *result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 1;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v76 = *v9;
        if (*v8 < v76)
        {
          v77 = v9[1];
          *v9 = *v8;
          v78 = v76 | (v77 << 8);
          goto LABEL_186;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9[2];
      v83 = *v9;
      v84 = v9[4];
      if (v82 >= v83)
      {
        if (v84 < v82)
        {
          v132 = *(v9 + 2);
          v133 = v9[3];
          *(v9 + 1) = v132;
          *(v9 + 2) = v82 | (v133 << 8);
          if (v83 > v132)
          {
            v134 = v9[1];
            *v9 = v132;
            *(v9 + 1) = v83 | (v134 << 8);
          }

          v84 = v82;
        }
      }

      else
      {
        v85 = v83 | (v9[1] << 8);
        if (v84 < v82)
        {
          *v9 = *(v9 + 2);
          goto LABEL_189;
        }

        *v9 = *(v9 + 1);
        *(v9 + 1) = v85;
        if (v84 < v83)
        {
          *(v9 + 1) = *(v9 + 2);
LABEL_189:
          *(v9 + 2) = v85;
          v84 = v83;
        }
      }

      if (*v8 >= v84)
      {
        return result;
      }

      v141 = v9[5];
      *(v9 + 2) = *v8;
      *v8 = v84 | (v141 << 8);
      v142 = v9[2];
      if (v9[4] >= v142)
      {
        return result;
      }

      v143 = *(v9 + 2);
      v144 = v9[3];
      *(v9 + 1) = v143;
      *(v9 + 2) = v142 | (v144 << 8);
      v145 = *v9;
      if (v145 <= v143)
      {
        return result;
      }

      v146 = v9[1];
      *v9 = v143;
      v131 = v145 | (v146 << 8);
LABEL_194:
      *(v9 + 1) = v131;
      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v86 = (v9 + 2);
      v88 = v9 == a2 || v86 == a2;
      if (a4)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v9;
          do
          {
            v91 = v86;
            v92 = v90[2];
            if (v92 < *v90)
            {
              v93 = v90[3];
              v94 = v89;
              while (1)
              {
                *&v9[v94 + 2] = *&v9[v94];
                if (!v94)
                {
                  break;
                }

                v95 = v9[v94 - 2];
                v94 -= 2;
                if (v92 >= v95)
                {
                  v96 = &v9[v94 + 2];
                  goto LABEL_127;
                }
              }

              v96 = v9;
LABEL_127:
              *v96 = v92 | (v93 << 8);
            }

            v86 = v91 + 2;
            v89 += 2;
            v90 = v91;
          }

          while (v91 + 2 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v135 = v86;
          v136 = v7[2];
          if (v136 < *v7)
          {
            v137 = v7[3];
            v138 = v135;
            do
            {
              v139 = v138;
              v140 = *(v138 - 1);
              v138 -= 2;
              *v139 = v140;
            }

            while (v136 < *(v139 - 4));
            *v138 = v136 | (v137 << 8);
          }

          v86 = v135 + 2;
          v7 = v135;
        }

        while (v135 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v97 = (v10 - 2) >> 1;
      v98 = v97;
      do
      {
        v99 = v98;
        if (v97 >= v98)
        {
          v100 = (2 * v98) | 1;
          v101 = &v9[2 * v100];
          if (2 * v99 + 2 >= v10)
          {
            v103 = *v101;
          }

          else
          {
            v102 = *v101;
            v103 = v101[2];
            v104 = v102 >= v103;
            if (v102 > v103)
            {
              v103 = *v101;
            }

            if (!v104)
            {
              v101 += 2;
              v100 = 2 * v99 + 2;
            }
          }

          v105 = &v9[2 * v99];
          v106 = *v105;
          if (v103 >= v106)
          {
            v107 = v105[1];
            do
            {
              v108 = v105;
              v105 = v101;
              *v108 = *v101;
              if (v97 < v100)
              {
                break;
              }

              v109 = (2 * v100) | 1;
              v101 = &v9[2 * v109];
              v100 = 2 * v100 + 2;
              if (v100 >= v10)
              {
                v110 = *v101;
                v100 = v109;
              }

              else
              {
                v110 = *v101;
                result = v101 + 2;
                v111 = v101[2];
                v112 = v110 >= v111;
                if (v110 <= v111)
                {
                  v110 = v101[2];
                }

                if (v112)
                {
                  v100 = v109;
                }

                else
                {
                  v101 += 2;
                }
              }
            }

            while (v110 >= v106);
            *v105 = v106 | (v107 << 8);
          }
        }

        v98 = v99 - 1;
      }

      while (v99);
      while (2)
      {
        v113 = 0;
        LOWORD(v114) = *v9;
        v115 = v9[1];
        v116 = v9;
        do
        {
          v117 = &v116[2 * v113];
          v118 = v117 + 2;
          v119 = (2 * v113) | 1;
          v113 = 2 * v113 + 2;
          if (v113 >= v10)
          {
            v113 = v119;
          }

          else
          {
            v121 = v117[4];
            v120 = v117 + 4;
            result = *(v120 - 2);
            if (result >= v121)
            {
              v113 = v119;
            }

            else
            {
              v118 = v120;
            }
          }

          *v116 = *v118;
          v116 = v118;
        }

        while (v113 <= ((v10 - 2) >> 1));
        a2 -= 2;
        if (v118 == a2)
        {
LABEL_166:
          *v118 = v114 | (v115 << 8);
        }

        else
        {
          *v118 = *a2;
          *a2 = v114 | (v115 << 8);
          v122 = (v118 - v9 + 2) >> 1;
          v123 = v122 < 2;
          v124 = v122 - 2;
          if (!v123)
          {
            v125 = v124 >> 1;
            v126 = &v9[2 * (v124 >> 1)];
            v114 = *v118;
            if (*v126 < v114)
            {
              v115 = v118[1];
              do
              {
                v127 = v118;
                v118 = v126;
                *v127 = *v126;
                if (!v125)
                {
                  break;
                }

                v125 = (v125 - 1) >> 1;
                v126 = &v9[2 * v125];
              }

              while (*v126 < v114);
              goto LABEL_166;
            }
          }
        }

        v123 = v10-- <= 2;
        if (v123)
        {
          return result;
        }

        continue;
      }
    }

    v11 = &v9[2 * (v10 >> 1)];
    v12 = v11;
    v13 = *v8;
    if (v10 >= 0x81)
    {
      v14 = *v11;
      v15 = *v9;
      if (v14 >= v15)
      {
        if (v13 < v14)
        {
          v20 = v11[1];
          *v11 = *v8;
          *v8 = v14 | (v20 << 8);
          v21 = *v9;
          if (*v11 < v21)
          {
            v22 = v9[1];
            *v9 = *v11;
            *v11 = v21 | (v22 << 8);
          }
        }
      }

      else
      {
        v16 = v15 | (v9[1] << 8);
        if (v13 < v14)
        {
          *v9 = *v8;
          goto LABEL_27;
        }

        *v9 = *v11;
        *v11 = v16;
        if (*v8 < v15)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v16;
        }
      }

      v26 = v11 - 2;
      v27 = *(v11 - 2);
      v28 = v9[2];
      v29 = *(a2 - 4);
      if (v27 >= v28)
      {
        if (v29 < v27)
        {
          v31 = *(v11 - 1);
          *v26 = *(a2 - 2);
          *(a2 - 2) = v27 | (v31 << 8);
          v32 = v9[2];
          if (*v26 < v32)
          {
            v33 = v9[3];
            *(v9 + 1) = *v26;
            *v26 = v32 | (v33 << 8);
          }
        }
      }

      else
      {
        v30 = v28 | (v9[3] << 8);
        if (v29 < v27)
        {
          *(v9 + 1) = *(a2 - 2);
          goto LABEL_39;
        }

        *(v9 + 1) = *v26;
        *v26 = v30;
        if (*(a2 - 4) < v28)
        {
          *v26 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v36 = v11[2];
      v34 = v11 + 2;
      v35 = v36;
      v37 = v9[4];
      v38 = *(a2 - 6);
      if (v36 >= v37)
      {
        if (v38 < v35)
        {
          v40 = v34[1];
          *v34 = *(a2 - 3);
          *(a2 - 3) = v35 | (v40 << 8);
          v41 = v9[4];
          if (*v34 < v41)
          {
            v42 = v9[5];
            *(v9 + 2) = *v34;
            *v34 = v41 | (v42 << 8);
          }
        }
      }

      else
      {
        v39 = v37 | (v9[5] << 8);
        if (v38 < v35)
        {
          *(v9 + 2) = *(a2 - 3);
          goto LABEL_48;
        }

        *(v9 + 2) = *v34;
        *v34 = v39;
        if (*(a2 - 6) < v37)
        {
          *v34 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v39;
        }
      }

      v43 = *v12;
      v44 = *v26;
      v45 = *v34;
      if (v43 >= v44)
      {
        if (v45 < v43)
        {
          v47 = *v34;
          v48 = v12[1];
          *v12 = *v34;
          *v34 = v43 | (v48 << 8);
          if (v44 > v47)
          {
            v49 = v26[1];
            *v26 = v47;
            *v12 = v44 | (v49 << 8);
          }
        }
      }

      else
      {
        v46 = v44 | (v26[1] << 8);
        if (v45 < v43)
        {
          *v26 = *v34;
          goto LABEL_57;
        }

        *v26 = *v12;
        *v12 = v46;
        if (v45 < v44)
        {
          *v12 = *v34;
LABEL_57:
          *v34 = v46;
        }
      }

      v50 = *v9;
      *v9 = *v12;
      *v12 = v50;
      goto LABEL_59;
    }

    v17 = *v9;
    v18 = *v12;
    if (v17 >= v18)
    {
      if (v13 < v17)
      {
        v23 = v9[1];
        *v9 = *v8;
        *v8 = v17 | (v23 << 8);
        v24 = *v12;
        if (*v9 < v24)
        {
          v25 = v12[1];
          *v12 = *v9;
          *v9 = v24 | (v25 << 8);
        }
      }

      goto LABEL_59;
    }

    v19 = v18 | (v12[1] << 8);
    if (v13 >= v17)
    {
      *v12 = *v9;
      *v9 = v19;
      if (*v8 >= v18)
      {
        goto LABEL_59;
      }

      *v9 = *v8;
    }

    else
    {
      *v12 = *v8;
    }

    *v8 = v19;
LABEL_59:
    --a3;
    v51 = *v9;
    if ((a4 & 1) != 0 || *(v9 - 2) < v51)
    {
      v52 = v9[1];
      v53 = v9;
      do
      {
        v54 = v53;
        v56 = v53[2];
        v53 += 2;
        v55 = v56;
      }

      while (v56 < v51);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *(v57 - 2);
          v57 -= 2;
        }

        while (v59 >= v51);
      }

      else
      {
        do
        {
          v58 = *(v57 - 2);
          v57 -= 2;
        }

        while (v58 >= v51);
      }

      if (v53 < v57)
      {
        v60 = v53;
        v61 = v57;
        do
        {
          v62 = v60[1];
          *v60 = *v61;
          *v61 = v55 | (v62 << 8);
          do
          {
            v54 = v60;
            v63 = v60[2];
            v60 += 2;
            v55 = v63;
          }

          while (v63 < v51);
          do
          {
            v64 = *(v61 - 2);
            v61 -= 2;
          }

          while (v64 >= v51);
        }

        while (v60 < v61);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51 | (v52 << 8);
      if (v53 < v57)
      {
        goto LABEL_80;
      }

      v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *>(v9, v54);
      v9 = v54 + 2;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *>(v54 + 2, a2);
      if (result)
      {
        a2 = v54;
        if (v65)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v65)
      {
LABEL_80:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *,false>(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 2;
      }
    }

    else
    {
      if (v51 >= *v8)
      {
        v67 = (v9 + 2);
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v67 += 2;
        }

        while (v51 >= *v9);
      }

      else
      {
        do
        {
          v66 = v9[2];
          v9 += 2;
        }

        while (v51 >= v66);
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *(v68 - 2);
          v68 -= 2;
        }

        while (v51 < v69);
      }

      v70 = v7[1];
      if (v9 < v68)
      {
        v71 = *v9;
        do
        {
          v72 = v9[1];
          *v9 = *v68;
          *v68 = v71 | (v72 << 8);
          do
          {
            v73 = v9[2];
            v9 += 2;
            v71 = v73;
          }

          while (v51 >= v73);
          do
          {
            v74 = *(v68 - 2);
            v68 -= 2;
          }

          while (v51 < v74);
        }

        while (v9 < v68);
      }

      v75 = v9 - 2;
      if (v9 - 2 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v51 | (v70 << 8);
    }
  }

  v79 = v9[2];
  v80 = *v9;
  v81 = *v8;
  if (v79 >= v80)
  {
    if (v81 >= v79)
    {
      return result;
    }

    v128 = v9[3];
    *(v9 + 1) = *v8;
    *v8 = v79 | (v128 << 8);
    v129 = *v9;
    if (v9[2] >= v129)
    {
      return result;
    }

    v130 = v9[1];
    *v9 = *(v9 + 1);
    v131 = v129 | (v130 << 8);
    goto LABEL_194;
  }

  v78 = v80 | (v9[1] << 8);
  if (v81 >= v79)
  {
    *v9 = *(v9 + 1);
    *(v9 + 1) = v78;
    if (*v8 >= v80)
    {
      return result;
    }

    *(v9 + 1) = *v8;
  }

  else
  {
    *v9 = *v8;
  }

LABEL_186:
  *v8 = v78;
  return result;
}

mdm::zone_mallocator *populatePlacementsInArc(mdm::zone_mallocator *result, uint64_t a2, float a3)
{
  v5 = result;
  while (a3 >= 75.0)
  {
    v6 = vcvts_n_s32_f32((a3 * 0.0013889) - floorf(a3 * 0.0013889), 8uLL);
    a3 = a3 * 0.5;
    v7 = (v6 + v5);
    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    if (v9 >= v8)
    {
      v11 = (v9 - *a2) >> 3;
      v12 = v11 + 1;
      if ((v11 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = v8 - *a2;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = mdm::zone_mallocator::instance(result);
        v16 = pthread_rwlock_rdlock((v15 + 32));
        if (v16)
        {
          geo::read_write_lock::logFailure(v16, "read lock", v17);
        }

        v18 = malloc_type_zone_malloc(*v15, 8 * v14, 0x10000404A09149AuLL);
        atomic_fetch_add((v15 + 24), 1u);
        geo::read_write_lock::unlock((v15 + 32));
      }

      else
      {
        v18 = 0;
      }

      v19 = &v18[8 * v11];
      v20 = &v18[8 * v14];
      *v19 = v7;
      v19[1] = a3;
      v10 = (v19 + 2);
      v21 = *(a2 + 8) - *a2;
      v22 = v19 - v21;
      v23 = memcpy(v19 - v21, *a2, v21);
      v24 = *a2;
      *a2 = v22;
      *(a2 + 8) = v10;
      *(a2 + 16) = v20;
      if (v24)
      {
        v25 = mdm::zone_mallocator::instance(v23);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<LabelPlacementRegion>(v25, v24);
      }
    }

    else
    {
      *v9 = v7;
      *(v9 + 4) = a3;
      v10 = (v9 + 8);
    }

    *(a2 + 8) = v10;
    result = populatePlacementsInArc(v5, a2, a3);
    v5 = v7;
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,false>(uint64_t result, float *a2, char **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 2;
  j = v9;
  while (1)
  {
    v9 = j;
    v12 = (a2 - j) >> 3;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(j, j + 2, a2 - 2, a3);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(j, j + 2, j + 4, (a2 - 2), a3);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(j, j + 2, j + 4, j + 6, a2 - 2, a3);
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v73 = *(a2 - 1);
        v74 = j[1];
        if (vabds_f32(v73, v74) <= 10.0)
        {
          v152 = **a3;
          v153 = (*v10 - v152);
          if (v153 < 0)
          {
            v153 = -v153;
          }

          v154 = (*j - v152);
          if (v154 < 0)
          {
            v154 = -v154;
          }

          if (v153 >= v154)
          {
            return result;
          }
        }

        else if (v73 <= v74)
        {
          return result;
        }

        v155 = *j;
        *j = *v10;
        *v10 = v155;
        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (j == a2)
      {
        return result;
      }

      v94 = (v12 - 2) >> 1;
      v95 = v94;
      while (1)
      {
        v96 = v95;
        if (v94 < v95)
        {
          goto LABEL_239;
        }

        v97 = (2 * v95) | 1;
        v98 = &j[2 * v97];
        if (2 * v96 + 2 < v12)
        {
          v99 = v98[1];
          v100 = v98[3];
          if (vabds_f32(v99, v100) <= 10.0)
          {
            v101 = **a3;
            v102 = (*v98 - v101);
            if (v102 < 0)
            {
              v102 = -v102;
            }

            v103 = (*(v98 + 8) - v101);
            if (v103 < 0)
            {
              v103 = -v103;
            }

            if (v102 < v103)
            {
LABEL_208:
              v98 += 2;
              v97 = 2 * v96 + 2;
            }
          }

          else if (v99 > v100)
          {
            goto LABEL_208;
          }
        }

        v104 = &j[2 * v96];
        v105 = v98[1];
        v106 = v104[1];
        if (vabds_f32(v105, v106) <= 10.0)
        {
          v107 = **a3;
          v108 = (*v98 - v107);
          if (v108 < 0)
          {
            v108 = -v108;
          }

          v109 = (*v104 - v107);
          if (v109 < 0)
          {
            v109 = -v109;
          }

          if (v108 >= v109)
          {
LABEL_217:
            v110 = *v104;
            *v104 = *v98;
            if (v94 < v97)
            {
LABEL_218:
              v111 = v98;
LABEL_238:
              *v111 = v110;
              v111[1] = v106;
              goto LABEL_239;
            }

            while (2)
            {
              v112 = 2 * v97;
              v97 = (2 * v97) | 1;
              v111 = &j[2 * v97];
              v113 = v112 + 2;
              if (v113 < v12)
              {
                v114 = v111[1];
                v115 = v111[3];
                if (vabds_f32(v114, v115) <= 10.0)
                {
                  v116 = **a3;
                  v117 = (*v111 - v116);
                  if (v117 < 0)
                  {
                    v117 = -v117;
                  }

                  result = *(v111 + 8);
                  v118 = (result - v116);
                  if (v118 < 0)
                  {
                    v118 = -v118;
                  }

                  if (v117 >= v118)
                  {
                    goto LABEL_229;
                  }
                }

                else if (v114 <= v115)
                {
                  goto LABEL_229;
                }

                v111 += 2;
                v97 = v113;
              }

LABEL_229:
              v119 = v111[1];
              if (vabds_f32(v119, v106) <= 10.0)
              {
                v120 = **a3;
                v121 = (*v111 - v120);
                if (v121 < 0)
                {
                  v121 = -v121;
                }

                v122 = (v110 - v120);
                if (v122 < 0)
                {
                  v122 = -v122;
                }

                if (v121 < v122)
                {
                  goto LABEL_218;
                }
              }

              else if (v119 > v106)
              {
                goto LABEL_218;
              }

              *v98 = *v111;
              v98 = v111;
              if (v94 < v97)
              {
                goto LABEL_238;
              }

              continue;
            }
          }
        }

        else if (v105 <= v106)
        {
          goto LABEL_217;
        }

LABEL_239:
        v95 = v96 - 1;
        if (!v96)
        {
          while (1)
          {
            v123 = 0;
            v124 = *j;
            v125 = j;
            do
            {
              v126 = v125;
              v127 = &v125[2 * v123];
              v125 = v127 + 2;
              v128 = 2 * v123;
              v123 = (2 * v123) | 1;
              v129 = v128 + 2;
              if (v129 >= v12)
              {
                goto LABEL_251;
              }

              v130 = v127[3];
              v131 = v127[5];
              if (vabds_f32(v130, v131) <= 10.0)
              {
                v132 = **a3;
                v133 = (*(v127 + 8) - v132);
                if (v133 < 0)
                {
                  v133 = -v133;
                }

                result = *(v127 + 16);
                v134 = (result - v132);
                if (v134 < 0)
                {
                  v134 = -v134;
                }

                if (v133 < v134)
                {
LABEL_250:
                  v125 = v127 + 4;
                  v123 = v129;
                }
              }

              else if (v130 > v131)
              {
                goto LABEL_250;
              }

LABEL_251:
              *v126 = *v125;
            }

            while (v123 <= ((v12 - 2) >> 1));
            a2 -= 2;
            if (v125 == a2)
            {
              *v125 = v124;
              goto LABEL_275;
            }

            *v125 = *a2;
            *a2 = v124;
            v135 = (v125 - j + 8) >> 3;
            v136 = v135 - 2;
            if (v135 < 2)
            {
              goto LABEL_275;
            }

            v137 = v136 >> 1;
            v138 = &j[2 * (v136 >> 1)];
            v139 = v138[1];
            v140 = v125[1];
            if (vabds_f32(v139, v140) <= 10.0)
            {
              v141 = **a3;
              v142 = (*v138 - v141);
              if (v142 < 0)
              {
                v142 = -v142;
              }

              v143 = (*v125 - v141);
              if (v143 < 0)
              {
                v143 = -v143;
              }

              if (v142 < v143)
              {
                goto LABEL_263;
              }
            }

            else
            {
              if (v139 <= v140)
              {
                goto LABEL_275;
              }

LABEL_263:
              v144 = *v125;
              *v125 = *v138;
              if (v136 >= 2)
              {
                while (1)
                {
                  v146 = v137 - 1;
                  v137 = (v137 - 1) >> 1;
                  v145 = &j[2 * v137];
                  v147 = v145[1];
                  if (vabds_f32(v147, v140) <= 10.0)
                  {
                    v148 = **a3;
                    v149 = (*v145 - v148);
                    if (v149 < 0)
                    {
                      v149 = -v149;
                    }

                    v150 = (LOBYTE(v144) - v148);
                    if (v150 < 0)
                    {
                      v150 = -v150;
                    }

                    if (v149 >= v150)
                    {
                      break;
                    }
                  }

                  else if (v147 <= v140)
                  {
                    break;
                  }

                  *v138 = *v145;
                  v138 = &j[2 * v137];
                  if (v146 <= 1)
                  {
                    goto LABEL_274;
                  }
                }
              }

              v145 = v138;
LABEL_274:
              *v145 = v144;
              v145[1] = v140;
            }

LABEL_275:
            if (v12-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v13 = v12 >> 1;
    v14 = &j[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(&v9[2 * (v12 >> 1)], v9, a2 - 2, a3);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(v9, &v9[2 * (v12 >> 1)], a2 - 2, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(v9 + 2, v14 - 2, a2 - 4, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(v9 + 4, &v9[2 * v13 + 2], a2 - 6, a3);
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(v14 - 2, v14, &v9[2 * v13 + 2], a3);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
    }

    --a4;
    if (a5)
    {
      v16 = v9[1];
LABEL_19:
      v18 = (v9 + 2);
      v19 = *v9;
      v20 = *a3;
      while (1)
      {
        v21 = *(v18 + 4);
        if (vabds_f32(v21, v16) <= 10.0)
        {
          break;
        }

        if (v21 <= v16)
        {
          goto LABEL_29;
        }

LABEL_28:
        v18 += 8;
      }

      v22 = (*v18 - *v20);
      if (v22 < 0)
      {
        v22 = -v22;
      }

      v23 = (LOBYTE(v19) - *v20);
      if (v23 < 0)
      {
        v23 = -v23;
      }

      if (v22 < v23)
      {
        goto LABEL_28;
      }

LABEL_29:
      i = a2 - 2;
      if ((v18 - 8) != v9)
      {
        while (1)
        {
          v25 = i[1];
          if (vabds_f32(v25, v16) <= 10.0)
          {
            v26 = (*i - *v20);
            if (v26 < 0)
            {
              v26 = -v26;
            }

            v27 = (LOBYTE(v19) - *v20);
            if (v27 < 0)
            {
              v27 = -v27;
            }

            if (v26 < v27)
            {
              goto LABEL_57;
            }
          }

          else if (v25 > v16)
          {
            goto LABEL_57;
          }

          i -= 2;
        }
      }

      i = a2;
      if (v18 < a2)
      {
        for (i = a2 - 2; ; i -= 2)
        {
          v28 = i[1];
          if (vabds_f32(v28, v16) <= 10.0)
          {
            v30 = (*i - *v20);
            if (v30 < 0)
            {
              v30 = -v30;
            }

            v31 = (LOBYTE(v19) - *v20);
            if (v31 < 0)
            {
              v31 = -v31;
            }

            if (v30 < v31 || v18 >= i)
            {
              break;
            }
          }

          else if (v28 > v16 || v18 >= i)
          {
            break;
          }
        }
      }

LABEL_57:
      j = v18;
      if (v18 >= i)
      {
        goto LABEL_77;
      }

      j = v18;
      v33 = i;
      while (2)
      {
        v34 = *j;
        *j = *v33;
        j += 2;
        *v33 = v34;
        v35 = *a3;
        while (2)
        {
          v36 = j[1];
          if (vabds_f32(v36, v16) > 10.0)
          {
            if (v36 <= v16)
            {
              goto LABEL_74;
            }

            goto LABEL_68;
          }

          v37 = (*j - *v35);
          if (v37 < 0)
          {
            v37 = -v37;
          }

          v38 = (LOBYTE(v19) - *v35);
          if (v38 < 0)
          {
            v38 = -v38;
          }

          if (v37 < v38)
          {
LABEL_68:
            j += 2;
            continue;
          }

          break;
        }

        do
        {
LABEL_74:
          while (1)
          {
            v33 -= 2;
            v41 = v33[1];
            if (vabds_f32(v41, v16) <= 10.0)
            {
              break;
            }

            if (v41 > v16)
            {
              goto LABEL_76;
            }
          }

          v39 = (*v33 - *v35);
          if (v39 < 0)
          {
            v39 = -v39;
          }

          v40 = (LOBYTE(v19) - *v35);
          if (v40 < 0)
          {
            v40 = -v40;
          }
        }

        while (v39 >= v40);
LABEL_76:
        if (j < v33)
        {
          continue;
        }

        break;
      }

LABEL_77:
      if (j - 2 != v9)
      {
        *v9 = *(j - 1);
      }

      *(j - 2) = v19;
      *(j - 1) = v16;
      if (v18 < i)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,false>(v9, j - 2, a3, a4, a5 & 1);
        a5 = 0;
      }

      else
      {
        v42 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *>(v9, j - 2, a3);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *>(j, a2, a3);
        if (result)
        {
          a2 = j - 2;
          if (v42)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v42)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      v17 = *(v9 - 1);
      v16 = v9[1];
      if (vabds_f32(v17, v16) <= 10.0)
      {
        v43 = **a3;
        v44 = (*(v9 - 8) - v43);
        if (v44 < 0)
        {
          v44 = -v44;
        }

        v45 = (*v9 - v43);
        if (v45 < 0)
        {
          v45 = -v45;
        }

        if (v44 < v45)
        {
          goto LABEL_19;
        }
      }

      else if (v17 > v16)
      {
        goto LABEL_19;
      }

      v46 = *v9;
      v47 = *(a2 - 1);
      if (vabds_f32(v16, v47) <= 10.0)
      {
        v48 = *a3;
        v49 = **a3;
        v50 = (LOBYTE(v46) - v49);
        if (v50 < 0)
        {
          v50 = -v50;
        }

        v51 = (*v10 - v49);
        if (v51 < 0)
        {
          v51 = -v51;
        }

        if (v50 < v51)
        {
          goto LABEL_96;
        }
      }

      else if (v47 < v16)
      {
        v48 = *a3;
LABEL_96:
        for (j = v9 + 2; ; j += 2)
        {
          v52 = j[1];
          if (vabds_f32(v16, v52) <= 10.0)
          {
            v53 = (LOBYTE(v46) - *v48);
            if (v53 < 0)
            {
              v53 = -v53;
            }

            v54 = (*j - *v48);
            if (v54 < 0)
            {
              v54 = -v54;
            }

            if (v53 < v54)
            {
              goto LABEL_116;
            }
          }

          else if (v52 < v16)
          {
            goto LABEL_116;
          }
        }
      }

      for (j = v9 + 2; j < a2; j += 2)
      {
        v55 = j[1];
        if (vabds_f32(v16, v55) <= 10.0)
        {
          v56 = **a3;
          v57 = (LOBYTE(v46) - v56);
          if (v57 < 0)
          {
            v57 = -v57;
          }

          v58 = (*j - v56);
          if (v58 < 0)
          {
            v58 = -v58;
          }

          if (v57 < v58)
          {
            break;
          }
        }

        else if (v55 < v16)
        {
          break;
        }
      }

LABEL_116:
      v59 = a2;
      if (j >= a2)
      {
        goto LABEL_145;
      }

      v60 = a2 - 3;
      while (vabds_f32(v16, v47) > 10.0)
      {
        if (v47 >= v16)
        {
          goto LABEL_127;
        }

LABEL_126:
        v64 = *v60;
        v60 -= 2;
        v47 = v64;
      }

      v61 = **a3;
      v62 = (LOBYTE(v46) - v61);
      if (v62 < 0)
      {
        v62 = -v62;
      }

      v63 = (*(v60 + 4) - v61);
      if (v63 < 0)
      {
        v63 = -v63;
      }

      if (v62 < v63)
      {
        goto LABEL_126;
      }

LABEL_127:
      v59 = v60 + 1;
LABEL_145:
      if (j < v59)
      {
        v65 = *j;
        *j = *v59;
        j += 2;
        *v59 = v65;
        v66 = *a3;
        while (1)
        {
          v67 = j[1];
          if (vabds_f32(v16, v67) <= 10.0)
          {
            v68 = (LOBYTE(v46) - *v66);
            if (v68 < 0)
            {
              v68 = -v68;
            }

            v69 = (*j - *v66);
            if (v69 < 0)
            {
              v69 = -v69;
            }

            if (v68 < v69)
            {
              do
              {
LABEL_143:
                while (1)
                {
                  v59 -= 2;
                  v72 = v59[1];
                  if (vabds_f32(v16, v72) <= 10.0)
                  {
                    break;
                  }

                  if (v72 >= v16)
                  {
                    goto LABEL_145;
                  }
                }

                v70 = (LOBYTE(v46) - *v66);
                if (v70 < 0)
                {
                  v70 = -v70;
                }

                v71 = (*v59 - *v66);
                if (v71 < 0)
                {
                  v71 = -v71;
                }
              }

              while (v70 < v71);
              goto LABEL_145;
            }
          }

          else if (v67 < v16)
          {
            goto LABEL_143;
          }

          j += 2;
        }
      }

      if (j - 2 != v9)
      {
        *v9 = *(j - 1);
      }

      a5 = 0;
      *(j - 2) = v46;
      *(j - 1) = v16;
    }
  }

  v75 = j + 2;
  v77 = j == a2 || v75 == a2;
  if ((a5 & 1) == 0)
  {
    if (v77)
    {
      return result;
    }

    while (1)
    {
      v156 = v9;
      v9 = v75;
      v157 = v156[3];
      v158 = v156[1];
      if (vabds_f32(v157, v158) <= 10.0)
      {
        v159 = **a3;
        v160 = (*v75 - v159);
        if (v160 < 0)
        {
          v160 = -v160;
        }

        v161 = (*v156 - v159);
        if (v161 < 0)
        {
          v161 = -v161;
        }

        if (v160 >= v161)
        {
          goto LABEL_303;
        }
      }

      else if (v157 <= v158)
      {
        goto LABEL_303;
      }

      v162 = *v75;
      do
      {
        while (1)
        {
          v163 = v156;
          *(v156 + 1) = *v156;
          v156 -= 2;
          v164 = *(v163 - 1);
          if (vabds_f32(v157, v164) <= 10.0)
          {
            break;
          }

          if (v164 >= v157)
          {
            goto LABEL_302;
          }
        }

        v165 = **a3;
        v166 = (v162 - v165);
        if (v166 < 0)
        {
          v166 = -v166;
        }

        v167 = (*v156 - v165);
        if (v167 < 0)
        {
          v167 = -v167;
        }
      }

      while (v166 < v167);
LABEL_302:
      *v163 = v162;
      v163[1] = v157;
LABEL_303:
      v75 = v9 + 2;
      if (v9 + 2 == a2)
      {
        return result;
      }
    }
  }

  if (v77)
  {
    return result;
  }

  v78 = 0;
  v79 = j;
  while (2)
  {
    v80 = v79;
    v79 = v75;
    v81 = v80[3];
    v82 = v80[1];
    if (vabds_f32(v81, v82) <= 10.0)
    {
      v83 = **a3;
      v84 = (*v79 - v83);
      if (v84 < 0)
      {
        v84 = -v84;
      }

      v85 = (*v80 - v83);
      if (v85 < 0)
      {
        v85 = -v85;
      }

      if (v84 >= v85)
      {
        goto LABEL_194;
      }
    }

    else if (v81 <= v82)
    {
      goto LABEL_194;
    }

    v86 = *(v80 + 2);
    *(v80 + 1) = *v80;
    v87 = j;
    if (v80 == j)
    {
      goto LABEL_193;
    }

    v88 = v78;
    while (2)
    {
      v89 = (j + v88);
      v90 = *(j + v88 - 4);
      if (vabds_f32(v81, v90) > 10.0)
      {
        if (v90 >= v81)
        {
          v87 = (j + v88);
          goto LABEL_193;
        }

LABEL_190:
        v80 -= 2;
        *v89 = *(v89 - 1);
        v88 -= 8;
        if (!v88)
        {
          v87 = j;
          goto LABEL_193;
        }

        continue;
      }

      break;
    }

    v91 = **a3;
    v92 = (v86 - v91);
    if (v92 < 0)
    {
      v92 = -v92;
    }

    v93 = (*(v89 - 8) - v91);
    if (v93 < 0)
    {
      v93 = -v93;
    }

    if (v92 < v93)
    {
      goto LABEL_190;
    }

    v87 = v80;
LABEL_193:
    *v87 = v86;
    v87[1] = v81;
LABEL_194:
    v75 = v79 + 2;
    v78 += 8;
    if (v79 + 2 != a2)
    {
      continue;
    }

    return result;
  }
}

void std::vector<LabelPlacementRegion,geo::allocator_adapter<LabelPlacementRegion,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<LabelPlacementRegion>(v2, v1);
  }
}

void std::vector<md::LabelAngleRange,geo::allocator_adapter<md::LabelAngleRange,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAngleRange>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAngleRange>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<LabelPlacementRegion>(uint64_t a1, void *a2)
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

float *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(float *result, float *a2, float *a3, char **a4)
{
  v4 = a2[1];
  v5 = result[1];
  if (vabds_f32(v4, v5) <= 10.0)
  {
    v7 = **a4;
    v8 = (*a2 - v7);
    if (v8 < 0)
    {
      v8 = -v8;
    }

    v9 = (*result - v7);
    if (v9 < 0)
    {
      v9 = -v9;
    }

    if (v8 >= v9)
    {
      goto LABEL_3;
    }

LABEL_11:
    v10 = a3[1];
    if (vabds_f32(v10, v4) <= 10.0)
    {
      v19 = **a4;
      v20 = (*a3 - v19);
      if (v20 < 0)
      {
        v20 = -v20;
      }

      v21 = (*a2 - v19);
      if (v21 < 0)
      {
        v21 = -v21;
      }

      if (v20 >= v21)
      {
        goto LABEL_13;
      }
    }

    else if (v10 <= v4)
    {
LABEL_13:
      v11 = *result;
      *result = *a2;
      *a2 = v11;
      v12 = a3[1];
      if (vabds_f32(v12, *(&v11 + 1)) <= 10.0)
      {
        v22 = **a4;
        v23 = (*a3 - v22);
        if (v23 < 0)
        {
          v23 = -v23;
        }

        v24 = (v11 - v22);
        if (v24 < 0)
        {
          v24 = -v24;
        }

        if (v23 >= v24)
        {
          return result;
        }
      }

      else if (v12 <= *(&v11 + 1))
      {
        return result;
      }

      *a2 = *a3;
LABEL_36:
      *a3 = v11;
      return result;
    }

    v11 = *result;
    *result = *a3;
    goto LABEL_36;
  }

  if (v4 > v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = a3[1];
  if (vabds_f32(v6, v4) <= 10.0)
  {
    v13 = **a4;
    v14 = (*a3 - v13);
    if (v14 < 0)
    {
      v14 = -v14;
    }

    v15 = (*a2 - v13);
    if (v15 < 0)
    {
      v15 = -v15;
    }

    if (v14 >= v15)
    {
      return result;
    }
  }

  else if (v6 <= v4)
  {
    return result;
  }

  v16 = *a2;
  *a2 = *a3;
  *a3 = v16;
  v17 = a2[1];
  v18 = result[1];
  if (vabds_f32(v17, v18) <= 10.0)
  {
    v25 = **a4;
    v26 = (*a2 - v25);
    if (v26 < 0)
    {
      v26 = -v26;
    }

    v27 = (*result - v25);
    if (v27 < 0)
    {
      v27 = -v27;
    }

    if (v26 < v27)
    {
      goto LABEL_42;
    }
  }

  else if (v17 > v18)
  {
LABEL_42:
    v28 = *result;
    *result = *a2;
    *a2 = v28;
  }

  return result;
}

float *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(float *a1, float *a2, float *a3, uint64_t a4, char **a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(a1, a2, a3, a5);
  v11 = *(a4 + 4);
  v12 = a3[1];
  if (vabds_f32(v11, v12) <= 10.0)
  {
    v13 = **a5;
    v14 = (*a4 - v13);
    if (v14 < 0)
    {
      v14 = -v14;
    }

    v15 = (*a3 - v13);
    if (v15 < 0)
    {
      v15 = -v15;
    }

    if (v14 >= v15)
    {
      return result;
    }
  }

  else if (v11 <= v12)
  {
    return result;
  }

  v16 = *a3;
  *a3 = *a4;
  *a4 = v16;
  v17 = a3[1];
  v18 = a2[1];
  if (vabds_f32(v17, v18) <= 10.0)
  {
    v19 = **a5;
    v20 = (*a3 - v19);
    if (v20 < 0)
    {
      v20 = -v20;
    }

    v21 = (*a2 - v19);
    if (v21 < 0)
    {
      v21 = -v21;
    }

    if (v20 >= v21)
    {
      return result;
    }
  }

  else if (v17 <= v18)
  {
    return result;
  }

  v22 = *a2;
  *a2 = *a3;
  *a3 = v22;
  v23 = a2[1];
  v24 = a1[1];
  if (vabds_f32(v23, v24) > 10.0)
  {
    if (v23 <= v24)
    {
      return result;
    }

LABEL_25:
    v28 = *a1;
    *a1 = *a2;
    *a2 = v28;
    return result;
  }

  v25 = **a5;
  v26 = (*a2 - v25);
  if (v26 < 0)
  {
    v26 = -v26;
  }

  v27 = (*a1 - v25);
  if (v27 < 0)
  {
    v27 = -v27;
  }

  if (v26 < v27)
  {
    goto LABEL_25;
  }

  return result;
}

float *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(float *a1, float *a2, float *a3, float *a4, float *a5, char **a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(a1, a2, a3, a4, a6);
  v13 = a5[1];
  v14 = a4[1];
  if (vabds_f32(v13, v14) <= 10.0)
  {
    v15 = **a6;
    v16 = (*a5 - v15);
    if (v16 < 0)
    {
      v16 = -v16;
    }

    v17 = (*a4 - v15);
    if (v17 < 0)
    {
      v17 = -v17;
    }

    if (v16 >= v17)
    {
      return result;
    }
  }

  else if (v13 <= v14)
  {
    return result;
  }

  v18 = *a4;
  *a4 = *a5;
  *a5 = v18;
  v19 = a4[1];
  v20 = a3[1];
  if (vabds_f32(v19, v20) <= 10.0)
  {
    v21 = **a6;
    v22 = (*a4 - v21);
    if (v22 < 0)
    {
      v22 = -v22;
    }

    v23 = (*a3 - v21);
    if (v23 < 0)
    {
      v23 = -v23;
    }

    if (v22 >= v23)
    {
      return result;
    }
  }

  else if (v19 <= v20)
  {
    return result;
  }

  v24 = *a3;
  *a3 = *a4;
  *a4 = v24;
  v25 = a3[1];
  v26 = a2[1];
  if (vabds_f32(v25, v26) <= 10.0)
  {
    v27 = **a6;
    v28 = (*a3 - v27);
    if (v28 < 0)
    {
      v28 = -v28;
    }

    v29 = (*a2 - v27);
    if (v29 < 0)
    {
      v29 = -v29;
    }

    if (v28 >= v29)
    {
      return result;
    }
  }

  else if (v25 <= v26)
  {
    return result;
  }

  v30 = *a2;
  *a2 = *a3;
  *a3 = v30;
  v31 = a2[1];
  v32 = a1[1];
  if (vabds_f32(v31, v32) > 10.0)
  {
    if (v31 <= v32)
    {
      return result;
    }

LABEL_33:
    v36 = *a1;
    *a1 = *a2;
    *a2 = v36;
    return result;
  }

  v33 = **a6;
  v34 = (*a2 - v33);
  if (v34 < 0)
  {
    v34 = -v34;
  }

  v35 = (*a1 - v33);
  if (v35 < 0)
  {
    v35 = -v35;
  }

  if (v34 < v35)
  {
    goto LABEL_33;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *>(float *a1, float *a2, char **a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(a1, a1 + 2, a2 - 2, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(a1, a1 + 2, a1 + 4, (a2 - 2), a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = a1[1];
      if (vabds_f32(v7, v8) <= 10.0)
      {
        v25 = **a3;
        v26 = (*(a2 - 8) - v25);
        if (v26 < 0)
        {
          v26 = -v26;
        }

        v27 = (*a1 - v25);
        if (v27 < 0)
        {
          v27 = -v27;
        }

        if (v26 >= v27)
        {
          return 1;
        }
      }

      else if (v7 <= v8)
      {
        return 1;
      }

      v28 = *a1;
      *a1 = *(a2 - 1);
      *(a2 - 1) = v28;
      return 1;
    }
  }

  v9 = a1 + 4;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelTransitRoute::generateTransitNodeTextPlacements(void)::$_0 &,LabelPlacementRegion *,0>(a1, a1 + 2, a1 + 4, a3);
  v10 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = v10[1];
    v14 = v9[1];
    if (vabds_f32(v13, v14) <= 10.0)
    {
      break;
    }

    if (v13 > v14)
    {
      goto LABEL_22;
    }

LABEL_34:
    v9 = v10;
    v11 += 8;
    v10 += 2;
    if (v10 == a2)
    {
      return 1;
    }
  }

  v15 = **a3;
  v16 = (*v10 - v15);
  if (v16 < 0)
  {
    v16 = -v16;
  }

  v17 = (*v9 - v15);
  if (v17 < 0)
  {
    v17 = -v17;
  }

  if (v16 >= v17)
  {
    goto LABEL_34;
  }

LABEL_22:
  v18 = *v10;
  *v10 = *v9;
  v19 = v11;
  do
  {
    v20 = a1 + v19;
    v21 = *(a1 + v19 + 12);
    if (vabds_f32(v13, v21) <= 10.0)
    {
      v22 = **a3;
      v23 = (LOBYTE(v18) - v22);
      if (v23 < 0)
      {
        v23 = -v23;
      }

      v24 = (v20[8] - v22);
      if (v24 < 0)
      {
        v24 = -v24;
      }

      if (v23 >= v24)
      {
        goto LABEL_33;
      }
    }

    else if (v21 >= v13)
    {
      v9 = (a1 + v19 + 16);
      goto LABEL_33;
    }

    v9 -= 2;
    *(v20 + 2) = *(v20 + 1);
    v19 -= 8;
  }

  while (v19 != -16);
  v9 = a1;
LABEL_33:
  *v9 = v18;
  v9[1] = v13;
  if (++v12 != 8)
  {
    goto LABEL_34;
  }

  return v10 + 2 == a2;
}

unsigned __int8 *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *,0>(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, _WORD *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (v5 >= v6)
  {
    if (v7 < v5)
    {
      v9 = a2[1];
      *a2 = *a3;
      *a3 = v5 | (v9 << 8);
      v10 = *result;
      v7 = v5;
      if (*a2 < v10)
      {
        v11 = result[1];
        *result = *a2;
        *a2 = v10 | (v11 << 8);
        v7 = *a3;
      }
    }
  }

  else
  {
    v8 = v6 | (result[1] << 8);
    if (v7 < v5)
    {
      *result = *a3;
LABEL_9:
      *a3 = v8;
      v7 = v6;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    v7 = *a3;
    if (v7 < v6)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < v7)
  {
    v12 = a3[1];
    *a3 = *a4;
    *a4 = v7 | (v12 << 8);
    v13 = *a2;
    if (*a3 < v13)
    {
      v14 = a2[1];
      *a2 = *a3;
      *a3 = v13 | (v14 << 8);
      v15 = *result;
      if (*a2 < v15)
      {
        v16 = result[1];
        *result = *a2;
        *a2 = v15 | (v16 << 8);
      }
    }
  }

  v17 = *a4;
  if (*a5 < v17)
  {
    v18 = a4[1];
    *a4 = *a5;
    *a5 = v17 | (v18 << 8);
    v19 = *a3;
    if (*a4 < v19)
    {
      v20 = a3[1];
      *a3 = *a4;
      *a4 = v19 | (v20 << 8);
      v21 = *a2;
      if (*a3 < v21)
      {
        v22 = a2[1];
        *a2 = *a3;
        *a3 = v21 | (v22 << 8);
        v23 = *result;
        if (*a2 < v23)
        {
          v24 = result[1];
          *result = *a2;
          *a2 = v23 | (v24 << 8);
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = (a2 - a1) >> 1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 < v7)
      {
        v5 = v7 | (a1[1] << 8);
        if (v8 < v6)
        {
          *a1 = *(a2 - 1);
          goto LABEL_31;
        }

        *a1 = *(a1 + 1);
        *(a1 + 1) = v5;
        if (*(a2 - 2) < v7)
        {
          *(a1 + 1) = *(a2 - 1);
          goto LABEL_31;
        }

        return 1;
      }

      if (v8 >= v6)
      {
        return 1;
      }

      v18 = a1[3];
      *(a1 + 1) = *(a2 - 1);
      *(a2 - 1) = v6 | (v18 << 8);
      v19 = *a1;
      if (a1[2] >= v19)
      {
        return 1;
      }

      v20 = a1[1];
      *a1 = *(a1 + 1);
      v21 = v19 | (v20 << 8);
LABEL_53:
      *(a1 + 1) = v21;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::LabelAngleRange *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 1);
        return 1;
      }

      goto LABEL_13;
    }

    v14 = a1[2];
    v15 = *a1;
    v16 = a1[4];
    if (v14 >= v15)
    {
      if (v16 < v14)
      {
        v25 = *(a1 + 2);
        v26 = a1[3];
        *(a1 + 1) = v25;
        *(a1 + 2) = v14 | (v26 << 8);
        if (v15 > v25)
        {
          v27 = a1[1];
          *a1 = v25;
          *(a1 + 1) = v15 | (v27 << 8);
        }

        v16 = v14;
      }

      goto LABEL_49;
    }

    v17 = v15 | (a1[1] << 8);
    if (v16 >= v14)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v17;
      if (v16 >= v15)
      {
        goto LABEL_49;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v17;
    v16 = v15;
LABEL_49:
    if (*(a2 - 2) >= v16)
    {
      return 1;
    }

    v36 = a1[5];
    *(a1 + 2) = *(a2 - 1);
    *(a2 - 1) = v16 | (v36 << 8);
    v37 = a1[2];
    if (a1[4] >= v37)
    {
      return 1;
    }

    v38 = *(a1 + 2);
    v39 = a1[3];
    *(a1 + 1) = v38;
    *(a1 + 2) = v37 | (v39 << 8);
    v40 = *a1;
    if (v40 <= v38)
    {
      return 1;
    }

    v41 = a1[1];
    *a1 = v38;
    v21 = v40 | (v41 << 8);
    goto LABEL_53;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *a1;
    if (*(a2 - 2) < v3)
    {
      v4 = a1[1];
      *a1 = *(a2 - 1);
      v5 = v3 | (v4 << 8);
LABEL_31:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 4;
  v10 = a1[4];
  v11 = a1[2];
  v12 = *a1;
  if (v11 >= v12)
  {
    if (v10 < v11)
    {
      v22 = *(a1 + 2);
      v23 = a1[3];
      *(a1 + 1) = v22;
      *(a1 + 2) = v11 | (v23 << 8);
      if (v12 > v22)
      {
        v24 = a1[1];
        *a1 = v22;
        *(a1 + 1) = v12 | (v24 << 8);
      }
    }
  }

  else
  {
    v13 = v12 | (a1[1] << 8);
    if (v10 >= v11)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v13;
      if (v10 >= v12)
      {
        goto LABEL_35;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v13;
  }

LABEL_35:
  v28 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    v31 = *v28;
    if (v31 < *v9)
    {
      v32 = v28[1];
      v33 = v29;
      while (1)
      {
        *&a1[v33 + 6] = *&a1[v33 + 4];
        if (v33 == -4)
        {
          break;
        }

        v34 = a1[v33 + 2];
        v33 -= 2;
        if (v31 >= v34)
        {
          v35 = &a1[v33 + 6];
          goto LABEL_43;
        }
      }

      v35 = a1;
LABEL_43:
      *v35 = v31 | (v32 << 8);
      if (++v30 == 8)
      {
        return v28 + 2 == a2;
      }
    }

    v9 = v28;
    v29 += 2;
    v28 += 2;
    if (v28 == a2)
    {
      return 1;
    }
  }
}

void *geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A45FC0;
  a1[1] = v3;
  return a1;
}

void geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A45FC0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A45FC0;

  return a1;
}

void md::LabelTransitRouteLine::generateTransitShieldFeatures(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  __asm { FMOV            V0.2S, #-1.0 }

  v8 = *(a1 + 32);
  v9 = v8;
  if (v8)
  {
    objc_msgSend_sections(v8, a2, a3);
    v11 = v32[0];
    v10 = v32[1];
    *&v34 = v32;
    std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](&v34);
    if (v10 != v11)
    {
      v12 = 0;
      v13 = (v10 - v11) >> 3;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v25 = v13;
      do
      {
        objc_msgSend_sections(v9);
        v28 = v12;
        v14 = *(v32[0] + v12);
        if (v14)
        {
          v15 = v14 + 8;
        }

        else
        {
          v15 = 0;
        }

        *&v34 = v32;
        std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](&v34);
        WeakRetained = objc_loadWeakRetained((v15 + 200));
        v29 = [WeakRetained composedRouteSegment];
        if ([v29 type] == 6)
        {
          v30 = v29;
          [WeakRetained composedRouteStep];
          objc_claimAutoreleasedReturnValue();
          v16 = *(a1 + 8);
          v27 = [v16 stepAtIndex:{objc_msgSend(WeakRetained, "finalStepIndex")}];

          v26 = [v30 boardStep];
          v17 = [v27 transitLine];
          if ([v30 rideOptionsCount] >= 2)
          {
            v18 = [v26 transitLine];
            v19 = [v18 muid];
            v20 = [v27 transitLine];
            v21 = v19 == [v20 muid];

            if (v21)
            {
              [v26 transitLine];
              objc_claimAutoreleasedReturnValue();
            }
          }

          _ZNSt3__115allocate_sharedB8nn200100IN2md24LabelExternalRoadFeatureENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v32);
        }

        ++v12;
      }

      while (v28 + 1 != v25);
    }
  }

  else
  {
    v32[0] = 0;
    v32[1] = 0;
    v33 = 0;
    *&v34 = v32;
    std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__destroy_vector::operator()[abi:nn200100](&v34);
  }
}

void sub_1B2E0AD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48, void *a49, uint64_t a50)
{
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a48);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<md::LabelExternalRoadFeature>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
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
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

uint64_t md::LabelExternalRoadFeature::addSectionInfo(void *a1, uint64_t a2)
{
  v5 = a1[27];
  v4 = a1[28];
  if (v5 >= v4)
  {
    v9 = a1[26];
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v9) >> 5);
    if (v10 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v9) >> 5);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x155555555555555)
    {
      v13 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    v32 = a1 + 29;
    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(a1);
      v15 = pthread_rwlock_rdlock((v14 + 32));
      if (v15)
      {
        geo::read_write_lock::logFailure(v15, "read lock", v16);
      }

      v17 = malloc_type_zone_malloc(*v14, 96 * v13, 0x10A004018E2EA89uLL);
      atomic_fetch_add((v14 + 24), 1u);
      geo::read_write_lock::unlock((v14 + 32));
    }

    else
    {
      v17 = 0;
    }

    v18 = &v17[96 * v10];
    v29 = v17;
    v30 = v18;
    *&v31 = v18;
    *(&v31 + 1) = &v17[96 * v13];
    std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::vector[abi:nn200100](v18, a2);
    std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::vector[abi:nn200100](v18 + 32, a2 + 32);
    v19 = *(a2 + 80);
    *(v18 + 64) = *(a2 + 64);
    *(v18 + 80) = v19;
    *&v31 = v31 + 96;
    v20 = a1[26];
    v21 = a1[27];
    v22 = v30 + v20 - v21;
    if (v20 != v21)
    {
      v23 = a1[26];
      v24 = v30 + v20 - v21;
      do
      {
        *v24 = 0;
        *(v24 + 8) = 0;
        *(v24 + 16) = 0;
        *(v24 + 24) = *(v23 + 24);
        *v24 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *v23 = 0;
        *(v23 + 8) = 0;
        *(v23 + 16) = 0;
        *(v24 + 32) = 0;
        *(v24 + 40) = 0;
        *(v24 + 48) = 0;
        *(v24 + 56) = *(v23 + 56);
        *(v24 + 32) = *(v23 + 32);
        *(v24 + 48) = *(v23 + 48);
        *(v23 + 32) = 0;
        *(v23 + 40) = 0;
        *(v23 + 48) = 0;
        v25 = *(v23 + 80);
        *(v24 + 64) = *(v23 + 64);
        *(v24 + 80) = v25;
        v23 += 96;
        v24 += 96;
      }

      while (v23 != v21);
      do
      {
        std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v20 + 32));
        std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v20);
        v20 += 96;
      }

      while (v20 != v21);
    }

    v26 = a1[26];
    a1[26] = v22;
    v27 = a1[28];
    v28 = v31;
    *(a1 + 27) = v31;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v29 = v26;
    v30 = v26;
    result = std::__split_buffer<md::LabelExternalRoadFeature::SectionInfo,geo::allocator_adapter<md::LabelExternalRoadFeature::SectionInfo,mdm::zone_mallocator> &>::~__split_buffer(&v29);
    v8 = v28;
  }

  else
  {
    std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::vector[abi:nn200100](a1[27], a2);
    result = std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::vector[abi:nn200100](v5 + 32, a2 + 32);
    v7 = *(a2 + 80);
    *(v5 + 64) = *(a2 + 64);
    *(v5 + 80) = v7;
    v8 = v5 + 96;
    a1[27] = v5 + 96;
  }

  a1[27] = v8;
  return result;
}

mdm::zone_mallocator *std::__split_buffer<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,2,1>>(v5, v4);
  }

  return a1;
}

uint64_t std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](a1, (v4 - *a2) >> 3);
    v5 = *(a1 + 8);
    do
    {
      v6 = *v3++;
      *v5++ = v6;
    }

    while (v3 != v4);
    *(a1 + 8) = v5;
  }

  return a1;
}

uint64_t std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    if ((v5 >> 2) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v6 = mdm::zone_mallocator::instance(a1);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<float>(v6, v5 >> 2);
    *a1 = v7;
    *(a1 + 8) = v7;
    v8 = &v7[v5];
    *(a1 + 16) = &v7[v5];
    memmove(v7, v4, v5);
    *(a1 + 8) = v8;
  }

  return a1;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelExternalRoadFeature::SectionInfo,geo::allocator_adapter<md::LabelExternalRoadFeature::SectionInfo,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    v4 = (i - 96);
    *(a1 + 2) = i - 96;
    std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((i - 64));
    std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalRoadFeature::SectionInfo>(v6, v5);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalRoadFeature::SectionInfo>(uint64_t a1, void *a2)
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

void md::LabelExternalRoadFeature::~LabelExternalRoadFeature(md::LabelExternalRoadFeature *this)
{
  md::LabelExternalRoadFeature::~LabelExternalRoadFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A46148;
  if (*(this + 295) < 0)
  {
    v2 = *(this + 34);
    v3 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  if (*(this + 263) < 0)
  {
    v4 = *(this + 30);
    v5 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  v6 = *(this + 26);
  if (v6)
  {
    v7 = *(this + 27);
    v8 = *(this + 26);
    if (v7 != v6)
    {
      do
      {
        v9 = (v7 - 96);
        std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v7 - 64));
        std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v9);
        v7 = v9;
      }

      while (v9 != v6);
      v8 = *(this + 26);
    }

    *(this + 27) = v6;
    v10 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalRoadFeature::SectionInfo>(v10, v8);
  }

  v11 = (this + 184);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v11);

  md::LabelExternalFeature::~LabelExternalFeature(this);
}

void std::__shared_ptr_emplace<md::LabelExternalRoadFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A46110;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = *(v3 - 8);
      if (v4 != -1)
      {
        result = (off_1F2A030E0[v4])(&v5, v3 - 40);
      }

      *(v3 - 8) = -1;
      v3 -= 48;
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 32);
  v4 = *(a2 + 32);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1F2A030E0[v3])(&v6, result, a2);
    *(v2 + 32) = -1;
    return result;
  }

  v5 = result;
  return (off_1F2A031D0[v4])(&v5, result, a2);
}

uint64_t std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__construct_at_end<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>*,std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>*>(uint64_t result, _BYTE *a2, _BYTE *a3)
{
  v3 = result;
  if (a2 == a3)
  {
    v6 = *(result + 8);
  }

  else
  {
    v5 = a2;
    v6 = *(result + 8);
    do
    {
      *v6 = *v5;
      result = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100]((v6 + 8), (v5 + 8));
      v5 += 48;
      v6 += 48;
    }

    while (v5 != a3);
  }

  *(v3 + 8) = v6;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  v3 = *(a2 + 32);
  if (v3 != -1)
  {
    v5 = a1;
    (off_1F2A03158[v3])(&v5);
    *(a1 + 32) = v3;
  }

  return a1;
}

void sub_1B2E0C33C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  v14 = *(v12 + 32);
  if (v14 != -1)
  {
    (off_1F2A030E0[v14])(&a12, v12, a3, a4, a5, a6, a7, a8);
  }

  *(v12 + 32) = -1;
  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm14EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm13EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm12EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm11EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISP_LNS0_6_TraitE1EEEEEvRSQ_OT_EUlSZ_E_JRKNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEEEEEDcSY_DpT0_(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  result = MEMORY[0x1B8C62DA0](*(a2 + 3));
  *(v2 + 24) = result;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm14ELm14EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 14)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 14;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm13ELm13EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 13)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  v4[1].n128_u64[0] = a3[1].n128_u64[0];
  *v4 = result;
  v4[2].n128_u32[0] = 13;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm12ELm12EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 12)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  v4[1].n128_u64[0] = a3[1].n128_u64[0];
  *v4 = result;
  v4[2].n128_u32[0] = 12;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm11ELm11EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 11)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 11;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10ELm10EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 10)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 10;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9ELm9EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 9)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  v4[1].n128_u64[0] = a3[1].n128_u64[0];
  *v4 = result;
  v4[2].n128_u32[0] = 9;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8ELm8EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 8)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 8;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7ELm7EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 7)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 7;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6ELm6EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 6)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 6;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5ELm5EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 5)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  v4[1].n128_u64[0] = a3[1].n128_u64[0];
  *v4 = result;
  v4[2].n128_u32[0] = 5;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 4)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 4;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  if (v5 != -1)
  {
    if (v5 == 3)
    {
      result = *a3;
      v7 = *(a3 + 16);
      *a2 = *a3;
      a2[1] = v7;
      return result;
    }

    (off_1F2A030E0[v5])(&v9, v4);
  }

  *(v4 + 32) = -1;
  result = *a3;
  v8 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v8;
  *(v4 + 32) = 3;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 2)
    {
      result = *a3;
      *a2 = *a3;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  *v4 = *a3;
  v4[2].n128_u32[0] = 2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      result = *a3;
      a2[1].n128_u64[0] = a3[1].n128_u64[0];
      *a2 = result;
      return result;
    }

    (off_1F2A030E0[v5])(&v7, v4);
  }

  v4[2].n128_u32[0] = -1;
  result = *a3;
  v4[1].n128_u64[0] = a3[1].n128_u64[0];
  *v4 = result;
  v4[2].n128_u32[0] = 1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN2md2cc4ZoomENS9_11ZoomToLevelENS9_27StartPinchingWithFocusPointENS9_25UpdatePinchWithFocusPointENS9_26StopPinchingWithFocusPointENS9_19StartPanningAtPointENS9_24UpdatePanWithTranslationENS9_18StopPanningAtPointENS9_27StartRotatingWithFocusPointENS9_28UpdateRotationWithFocusPointENS9_26StopRotatingWithFocusPointENS9_27StartPitchingWithFocusPointENS9_25UpdatePitchWithFocusPointENS9_32updatePitchWithFocusPointDegreesENS9_26StopPitchingWithFocusPointEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISP_LNS0_6_TraitE1EEEEEvOT_EUlRSX_OT0_E_JRNS0_6__baseILST_1EJSA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_EEERKS15_EEEDcSX_DpT0_(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    (off_1F2A030E0[v5])(&v11, v4);
LABEL_7:
    *(v4 + 32) = -1;
    v10 = *a3;
    *(v4 + 16) = *(a3 + 2);
    *v4 = v10;
    *(v4 + 24) = MEMORY[0x1B8C62DA0](*(a3 + 3));
    *(v4 + 32) = 0;
    return;
  }

  v7 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v7;
  v8 = MEMORY[0x1B8C62DA0](*(a3 + 3));
  v9 = *(a2 + 24);
  *(a2 + 24) = v8;
}

void sub_1B2E0D240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B2E0D4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  v3 = *(a2 + 32);
  if (v3 != -1)
  {
    v5 = a1;
    (off_1F2A03248[v3])(&v5);
    *(a1 + 32) = v3;
  }

  return a1;
}

void sub_1B2E0D584(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  v14 = *(v12 + 32);
  if (v14 != -1)
  {
    (off_1F2A030E0[v14])(&a12, v12, a3, a4, a5, a6, a7, a8);
  }

  *(v12 + 32) = -1;
  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](uint64_t *a1, _BYTE *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (&v4[-*a1] >> 4);
    v7 = v6 + 1;
    if (v6 + 1 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>>(v9);
    }

    *(48 * v6) = *a2;
    v5 = 48 * v6 + 48;
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](48 * v6 + 8, (a2 + 8));
    v11 = *a1;
    v10 = a1[1];
    v12 = 48 * v6 - &v10[-*a1];
    if (v10 != *a1)
    {
      v13 = 48 * v6 - 16 * (&v10[-*a1] >> 4) + 8;
      v14 = *a1;
      v15 = *a1;
      do
      {
        v16 = *v15;
        v15 += 48;
        *(v13 - 8) = v16;
        v13 = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v13, (v14 + 8)) + 48;
        v14 = v15;
      }

      while (v15 != v10);
      do
      {
        v17 = *(v11 + 10);
        if (v17 != -1)
        {
          (off_1F2A030E0[v17])(&v19, v11 + 8);
        }

        *(v11 + 10) = -1;
        v11 += 48;
      }

      while (v11 != v10);
    }

    v18 = *a1;
    *a1 = v12;
    *(a1 + 1) = 48 * v6 + 48;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 48);
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100]((v4 + 8), (a2 + 8));
  }

  a1[1] = v5;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  v4 = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = 0;
  v2[1].n128_u64[1] = v4;
  return result;
}

void sub_1B2E0D9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 65, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 65, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0DB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 65, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 65, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0DC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0DDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0DEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 65, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 65, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 65, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 65, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 49, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 49, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0E988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v21 - 65, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v21 - 65, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0EB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A030E0[a19])(v22 - 81, v21 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A030E0[a13])(v22 - 81, &a9);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E0F3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void ***a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, void *a28, id a29)
{
  a28 = &unk_1F2A44148;

  a23 = &a25;
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__destroy_vector::operator()[abi:nn200100](&a23);
  a25 = &a18;
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__destroy_vector::operator()[abi:nn200100](&a25);
  _Unwind_Resume(a1);
}

void geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A44148;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A44148;

  return a1;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A2FF00;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A2FF20;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 48 * (v4 & 0x3F);
      *(v5 + 24) = &unk_1F2A44148;

      v11 = v5;
      std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__destroy_vector::operator()[abi:nn200100](&v11);
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

void ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A2FF00;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::cc::CameraCommands,64ul>::~storage(a1);
}

void sub_1B2E11444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E11ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

double geo::Mercator3<double>::toGeocentric<double>(double *a1, double *a2)
{
  v4 = *a1 * 6.28318531;
  v5 = exp(a1[1] * 6.28318531 + -3.14159265);
  v6 = atan(v5) * 2.0 + -1.57079633;
  v7 = fmod(v4, 6.28318531);
  v8 = fmod(v7 + 6.28318531, 6.28318531) + -3.14159265;
  v9 = a1[2];
  v10 = __sincos_stret(v6);
  v11 = 6378137.0 / sqrt(v10.__sinval * v10.__sinval * -0.00669437999 + 1.0);
  v12 = (v11 + v9) * v10.__cosval;
  v13 = __sincos_stret(v8);
  *a2 = v12 * v13.__cosval;
  a2[1] = v12 * v13.__sinval;
  result = (v9 + v11 * 0.99330562) * v10.__sinval;
  a2[2] = result;
  return result;
}

void md::FlyoverMetaTileData::~FlyoverMetaTileData(md::FlyoverMetaTileData *this)
{
  md::FlyoverMetaTileData::~FlyoverMetaTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A032D0;
  *(this + 80) = &unk_1F2A03310;
  v2 = *(this + 92);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MapTileData::~MapTileData(this);
}

void md::SingleGEOResourceDataRequester::createDebugNode(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (*(*v4 + 24))(v4, *(a1 + 24));
    if (v6)
    {
      v7 = v5;
      std::string::basic_string[abi:nn200100]<0>(&v31, "Download Range");
      gdc::DebugTreeValue::DebugTreeValue(&v32, v7);
      gdc::DebugTreeValue::DebugTreeValue(&v34, HIDWORD(v7));
      memset(v30, 0, sizeof(v30));
      std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v30, &v32, &v35, 2uLL);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "Download Range");
  gdc::DebugTreeValue::DebugTreeValue(v27, "None");
  gdc::DebugTreeNode::addProperty(a2, &v32, v27);
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (*(a1 + 32) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Min");
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_34;
    }

    gdc::DebugTreeValue::DebugTreeValue(v24, *(a1 + 28));
    gdc::DebugTreeNode::addProperty(a2, &v32, v24);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v8 = v25;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Min");
    gdc::DebugTreeValue::DebugTreeValue(v21, "None");
    gdc::DebugTreeNode::addProperty(a2, &v32, v21);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v8 = v22;
  }

  operator delete(v8);
LABEL_15:
  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (*(a1 + 40) == 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Max");
    if (*(a1 + 40))
    {
      gdc::DebugTreeValue::DebugTreeValue(v18, *(a1 + 36));
      gdc::DebugTreeNode::addProperty(a2, &v32, v18);
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v9 = v19;
      goto LABEL_23;
    }

LABEL_34:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "Visible Range Max");
  gdc::DebugTreeValue::DebugTreeValue(v15, "None");
  gdc::DebugTreeNode::addProperty(a2, &v32, v15);
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  v9 = v16;
LABEL_23:
  operator delete(v9);
LABEL_24:
  if (v33 < 0)
  {
    operator delete(v32);
  }

  std::string::basic_string[abi:nn200100]<0>(&v32, "gdc::ResourceType");
  v10 = *(a1 + 24);
  if (v10 > 0x35)
  {
    v11 = "<Invalid>";
  }

  else
  {
    v11 = off_1E7B3C1A8[v10];
  }

  gdc::DebugTreeValue::DebugTreeValue(v12, v11);
  gdc::DebugTreeNode::addProperty(a2, &v32, v12);
  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }
}

void sub_1B2E12618(_Unwind_Exception *a1)
{
  v5 = 0;
  while (1)
  {
    if (*(v2 + v5 + 119) < 0)
    {
      operator delete(*(v2 + v5 + 96));
    }

    v5 -= 64;
    if (v5 == -128)
    {
      if (*(v3 - 193) < 0)
      {
        operator delete(*(v3 - 216));
      }

      *(v3 - 184) = v1 + 72;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v3 - 184));
      *(v3 - 184) = v1 + 48;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v3 - 184));
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
  }
}

void std::function<BOOL ()(geo::QuadTile const&)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    v2();
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    md::SingleGEOResourceDataRequester::~SingleGEOResourceDataRequester(v3);
  }
}

void md::SingleGEOResourceDataRequester::~SingleGEOResourceDataRequester(md::SingleGEOResourceDataRequester *this)
{
  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);
}

uint64_t md::MultiRectRegion::contains(void *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = *(a2 + 8 * v2);
    if (v4 < *&a1[v2 + 3] || v4 >= *&a1[v2 + 5])
    {
      return 0;
    }

    v5 = v3;
    v3 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v8 == v6)
  {
    return 0;
  }

  do
  {
    v9 = 0;
    for (i = 1; ; i = 0)
    {
      v11 = *(a2 + 8 * v9);
      if (v11 < *&v7[v9 + 4] || v11 >= *&v7[v9 + 6])
      {
        break;
      }

      v12 = i;
      v9 = 1;
      if ((v12 & 1) == 0)
      {
        return v9;
      }
    }

    v13 = v7[1];
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = v7[2];
        v15 = *v14 == v7;
        v7 = v14;
      }

      while (!v15);
    }

    v9 = 0;
    v7 = v14;
  }

  while (v14 != v6);
  return v9;
}

void ggl::LandmarkFlat::LandmarkPipelineSetup::~LandmarkPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t **updateFeatureFlag(int a1, float *a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v6 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *&buf[4] = a1;
    v10 = 1024;
    v11 = a3;
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "Updating FeatureFlag:%d - %d", buf, 0xEu);
  }

  v8 = 0;
  *buf = &v8;
  result = std::__hash_table<std::__hash_value_type<md::FeatureFlag,BOOL>,std::__unordered_map_hasher<md::FeatureFlag,std::__hash_value_type<md::FeatureFlag,BOOL>,std::hash<md::FeatureFlag>,std::equal_to<md::FeatureFlag>,true>,std::__unordered_map_equal<md::FeatureFlag,std::__hash_value_type<md::FeatureFlag,BOOL>,std::equal_to<md::FeatureFlag>,std::hash<md::FeatureFlag>,true>,std::allocator<std::__hash_value_type<md::FeatureFlag,BOOL>>>::__emplace_unique_key_args<md::FeatureFlag,std::piecewise_construct_t const&,std::tuple<md::FeatureFlag&&>,std::tuple<>>(a2, 0, buf);
  *(result + 17) = a3;
  return result;
}

uint64_t **___ZN2md19FeatureFlagProviderC2EPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 32);
  **(v4 + 40) = 1;
  return updateFeatureFlag(0, *(v4 + 56), a4);
}

uint64_t **___ZN2md19FeatureFlagProviderC2EPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 32);
  **(v4 + 40) = 1;
  return updateFeatureFlag(1, *(v4 + 56), a4);
}

uint64_t **___ZN2md19FeatureFlagProviderC2EPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 32);
  **(v4 + 40) = 1;
  return updateFeatureFlag(2, *(v4 + 56), a4);
}

void std::__shared_ptr_emplace<std::unordered_map<md::FeatureFlag,BOOL>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 40);
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

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<std::unordered_map<md::FeatureFlag,BOOL>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A033B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::FeatureFlagProvider::~FeatureFlagProvider(md::FeatureFlagProvider *this)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  v2 = (this + 16);
  while (v3 != v4)
  {
    v5 = *v3;
    MapsFeature_RemoveBlockListener();

    ++v3;
  }

  v6 = *(this + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v9 = v2;
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v9);
  v8 = *(this + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_1B2E12C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = v4;

  v7 = v3[8];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = v3[6];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](va);
  v9 = v3[1];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  _Unwind_Resume(a1);
}

void md::LabelAnimator::setupAnimations(uint64_t a1, int a2, _BYTE *a3)
{
  (*(*a3 + 184))(a3);
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::resize((a1 + 24), 0x8E38E38E38E38E39 * ((*(a1 + 32) - *(a1 + 24)) >> 4) + 1);
  a3[563] = 57 * ((*(a1 + 32) - *(a1 + 24)) >> 4) - 1;
  md::LabelAnimator::createLoopingTrack(a1);
}

md::LabelAnimator *md::LabelAnimator::setupBalloonAnimation(md::LabelAnimator *result, uint64_t a2, int *a3, int *a4)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v4 = a2 != 1;
  if (a2 == 1)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  if (a2 == 1)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  v7 = *(v5 + 2);
  if (v7)
  {
    v9 = result;
    v10 = *(v6 + 2);
    result = (*(*v7 + 232))(v7);
    if (result == 7)
    {
      (*(*v7 + 200))(v16, v7);
      v15 = *v16[0];
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v16);
      (*(*v7 + 200))(v16, v7);
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v16);
      (*(*v7 + 200))(v16, v7);
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v16);
      (*(*v7 + 200))(v16, v7);
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v16);
      LODWORD(v16[0]) = 0;
      if (v10)
      {
        v11 = md::LabelAnimator::resolveParams(v9, v4, 0xAu, 0, 0);
        md::LabelAnimator::createMorphAnimation(v9, v10, v15, v4, v11, v16, v12);
      }

      v13 = md::LabelAnimator::resolveParams(v9, a2, 0xBu, 0, 3);
      md::LabelAnimator::createMorphAnimation(v9, v15, 0, a2, v13, v16, v14);
    }
  }

  return result;
}

void md::LabelAnimator::setupIconMorphAnimation(mdm::zone_mallocator *result, char a2, float *a3, char a4, float *a5, uint64_t a6)
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (a2 & 1) != 0 && (a4)
  {
    (*(*a3 + 200))(&v14, a3);
    if (v14 == *(&v14 + 1))
    {
      (*(*a5 + 200))(v19, a5);
      v10 = v19[0];
      v11 = v19[1];
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v19);
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v14);
      if (v10 == v11)
      {
        v12 = md::LabelAnimator::resolveParams(result, 0, 4u, 0, 0);
        v15 = v12[1];
        v16 = v12[2];
        v17 = v12[3];
        if ((a6 & 0x100000000) != 0)
        {
          v13 = *v12;
          v14 = *v12;
          LODWORD(v15) = a6;
          LODWORD(v16) = a6;
          LODWORD(v17) = a6;
          v18 = a6;
        }

        else
        {
          v18 = *(v12 + 16);
          v13 = *v12;
          v14 = *v12;
        }

        md::LabelAnimator::createMorphAnimation(result, a3, a5, 0, &v14, v19, v13);
      }
    }

    else
    {
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v14);
    }
  }
}

void md::LabelAnimator::setupMKBalloonPickAnimations(md::LabelAnimator *this, int a2, const md::LabelPartContent *a3, const md::LabelPartContent *a4)
{
  if (a2)
  {
    if (*(a3 + 2))
    {
LABEL_5:
      md::LabelAnimator::createTrack(this);
    }
  }

  else if (*(a4 + 2))
  {
    goto LABEL_5;
  }
}

void md::LabelAnimator::setupTextMorphAnimation(mdm::zone_mallocator *result, float *a2, float *a3, int a4, int a5, uint64_t a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!(a2 | a3))
  {
    return;
  }

  if (!a2)
  {
    if (!a3)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = a3 != 0;
  (*(*a2 + 200))(&v29, a2);
  v13 = v29;
  v14 = v30;
  if (v29 == v30 && v12)
  {
LABEL_11:
    (*(*a3 + 200))(&v24, a3);
    v17 = v24;
    std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v24);
    if (a2)
    {
      std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v29);
      if (v17 == *(&v17 + 1))
      {
        goto LABEL_13;
      }
    }

    else if (v17 == *(&v17 + 1))
    {
      v21 = md::LabelAnimator::resolveParams(result, 1, 1u, 0, 1);
      v25 = v21[1];
      v26 = v21[2];
      v27 = v21[3];
      if ((a6 & 0x100000000) != 0)
      {
        v22 = *v21;
        v24 = *v21;
        LODWORD(v25) = a6;
        LODWORD(v26) = a6;
        LODWORD(v27) = a6;
        v28 = a6;
      }

      else
      {
        v28 = *(v21 + 16);
        v22 = *v21;
        v24 = *v21;
      }

      md::LabelAnimator::createMorphAnimation(result, a3, 0, 1, &v24, v23, v22);
    }

    return;
  }

  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v29);
  if (v13 == v14)
  {
    if (!a3)
    {
      v16 = 1;
      goto LABEL_19;
    }

LABEL_13:
    if (a5 == 1)
    {
      v18 = 5;
    }

    else
    {
      v18 = 4;
    }

    if (a4 == 1)
    {
      v16 = v18;
    }

    else
    {
      v16 = 3;
    }

LABEL_19:
    v19 = md::LabelAnimator::resolveParams(result, 0, v16, 0, 1);
    v25 = v19[1];
    v26 = v19[2];
    v27 = v19[3];
    if ((a6 & 0x100000000) != 0)
    {
      v20 = *v19;
      v24 = *v19;
      LODWORD(v25) = a6;
      LODWORD(v26) = a6;
      LODWORD(v27) = a6;
      v28 = a6;
    }

    else
    {
      v28 = *(v19 + 16);
      v20 = *v19;
      v24 = *v19;
    }

    md::LabelAnimator::createMorphAnimation(result, a2, a3, 0, &v24, &v29, v20);
  }
}

void sub_1B2E1388C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  if (v19)
  {
    std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  }

  _Unwind_Resume(exception_object);
}

void md::LabelAnimator::setupLocationChangedFadeAnimation(char **result, int a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    v7 = 0;
    v6 = md::LabelAnimator::resolveParams(result, a2, 2u, 1, 0);
    md::LabelAnimator::createFadeAnimation(result, *(a3 + 8), a2, v6, &v7, 0.0);
    *(result + 89) = 1;
  }
}

__n128 geo::small_vector_base<md::LabelAnimation::Property>::push_back(uint64_t a1, __n128 *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = v4 - *a1;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
  v8 = *(a1 + 24);
  if (v8 < v7)
  {
    v9 = *(a1 + 16);
    v10 = (1 << -__clz(v8 + 1));
    if (v8 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v10 = 1;
    }

    if (v10 <= v7)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = malloc_type_malloc(24 * v11, 0x1020040545B2139uLL);
    v13 = v12;
    v14 = *a1;
    v15 = *(a1 + 8);
    if (*a1 != v15)
    {
      v16 = v12;
      do
      {
        v17 = *v14;
        *(v16 + 2) = v14[2];
        *v16 = v17;
        v16 += 24;
        v14 += 3;
      }

      while (v14 != v15);
    }

    if (v5 != v9)
    {
      free(*a1);
    }

    v4 = &v13[v6];
    *a1 = v13;
    *(a1 + 8) = &v13[v6];
    *(a1 + 24) = v11;
  }

  result = *a2;
  v4[1].n128_u64[0] = a2[1].n128_u64[0];
  *v4 = result;
  *(a1 + 8) += 24;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::LabelAnimationTrack>>(uint64_t a1, uint64_t a2)
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

float nextRandomNumber(void)
{
  {
    *(&__token.__r_.__value_.__s + 23) = 12;
    strcpy(&__token, "/dev/urandom");
    std::random_device::random_device(&nextRandomNumber(void)::randomDevice, &__token);
    if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__token.__r_.__value_.__l.__data_);
    }
  }

  {
    v8 = MEMORY[0x1B8C61D10](&nextRandomNumber(void)::randomDevice);
    v9 = v8 + ((v8 / 0x7FFFFFFF) | ((v8 / 0x7FFFFFFF) << 31));
    if (v9 <= 1)
    {
      v9 = 1;
    }

    nextRandomNumber(void)::randomEngine = v9;
  }

  v0 = &unk_1EB82A000;
  {
    v0 = &unk_1EB82A000;
    if (v10)
    {
      nextRandomNumber(void)::generator = 1065353216;
      v0 = &unk_1EB82A000;
    }
  }

  v1 = v0[50];
  v2 = 48271 * (nextRandomNumber(void)::randomEngine % 0xADC8u);
  v3 = 3399 * (nextRandomNumber(void)::randomEngine / 0xADC8u);
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x7FFFFFFF;
  }

  nextRandomNumber(void)::randomEngine = v6 + v5;
  return (v1 * 4.6566e-10) * (v6 + v5 - 1);
}

void non-virtual thunk toggl::TexturedAnimatedRibbon::BaseMesh::~BaseMesh(ggl::TexturedAnimatedRibbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::TexturedAnimatedRibbon::BaseMesh::~BaseMesh(ggl::TexturedAnimatedRibbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::TexturedAnimatedRibbon::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::TexturedAnimatedRibbon::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::TexturedAnimatedRibbon::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Glyph::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Glyph::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Glyph::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Glyph::DefaultVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Glyph::DefaultMesh::~DefaultMesh(ggl::Glyph::DefaultMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Glyph::DefaultMesh::~DefaultMesh(ggl::Glyph::DefaultMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::Glyph::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Glyph::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::TexturedInnerShadowRibbon::PipelineSetup::~PipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E148AC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKAnnotationTrackingCameraController;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void *gdc::Context::get<md::CameraContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x1AF456233693CD46uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x1AF456233693CD46)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void md::DebugRenderLayer::renderTriangulatedLines(uint64_t a1, md::LayoutContext *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, float a8)
{
  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 1), 0x1AF456233693CD46uLL);
  v10 = *(*(a1 + 48) + 104);
  v11 = v10[1];
  if (v11 == *v10)
  {
    v13 = v10[11];
    if (!v13)
    {
      goto LABEL_7;
    }

    v12 = (*(*v13 + 48))(v13);
    *&v19 = v12;
  }

  else
  {
    v12 = *(v11 - 8);
    *&v19 = v12;
    v10[1] = v11 - 8;
  }

  std::vector<ggl::Debug::LineMesh *,geo::allocator_adapter<ggl::Debug::LineMesh *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v10 + 4), &v19);
  v18 = v12;
  v14 = v10[15];
  if (v14)
  {
    (*(*v14 + 48))(v14, &v18);
    v15 = 0xAAAAAAAAAAAAAAACLL * ((a5[1] - *a5) >> 3);
    ggl::BufferData::resize(**(v12 + 64), v15);
    v16 = **(v12 + 64);
    ggl::BufferMemory::BufferMemory(v20);
    ggl::ResourceAccessor::accessIndexData(&v18, 0, v16, 0, v15, 1, 0);
    ggl::BufferMemory::operator=(v20, &v18);
    ggl::BufferMemory::~BufferMemory(&v18);
    operator new();
  }

LABEL_7:
  v17 = std::__throw_bad_function_call[abi:nn200100]();
  ggl::BufferMemory::~BufferMemory(v20);
  _Unwind_Resume(v17);
}

void md::DebugRenderLayer::renderLines(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v13 && (v14 = v13[5], *(v14 + 8) == 0x1AF456233693CD46))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  v16 = ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::pop(*(*(a1 + 48) + 96));
  v17 = 0x5555555555555556 * ((a5[1] - *a5) >> 3);
  ggl::BufferData::resize(**(v16 + 8), v17);
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(v56, **(v16 + 8), 0, v17);
  v18 = *a5;
  v19 = a5[1];
  v20 = v19 - *a5;
  if (v19 != *a5)
  {
    v21 = 0;
    v22 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3);
    v23 = v57;
    if (v22 <= 1)
    {
      v22 = 1;
    }

    v24 = *a5;
    do
    {
      v25 = 0;
      v26 = (v18 + 24 * v21);
      v27 = *(v26 + 2);
      v28 = *v26;
      v29 = v23 + 32 * v21;
      *v29 = v28;
      *(v29 + 8) = v27;
      *(v29 + 12) = 1065353216;
      do
      {
        *(&v52 + v25) = *(v24 + v25 + 12) + *(v24 + v25);
        v25 += 4;
      }

      while (v25 != 12);
      v30 = v23 + ((32 * v21) | 0x10);
      v31 = v53;
      *v30 = v52;
      *(v30 + 8) = v31;
      *(v30 + 12) = 1065353216;
      ++v21;
      v24 += 24;
    }

    while (v21 != v22);
  }

  v32 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(*(a1 + 48) + 112));
  v33 = v32;
  v34 = 0;
  v35 = (v15 + 808);
  do
  {
    v36 = 0;
    v37 = a3;
    do
    {
      v38 = 0;
      v39 = 0.0;
      v40 = v35;
      do
      {
        v41 = *v40;
        v40 += 4;
        v39 = v39 + *(v37 + v38) * v41;
        v38 += 8;
      }

      while (v38 != 32);
      *&(&(&v52)[4 * v36++])[v34] = v39;
      v37 += 32;
    }

    while (v36 != 4);
    ++v34;
    ++v35;
  }

  while (v34 != 4);
  v42 = 0;
  v43 = &v52;
  do
  {
    v45 = *v43;
    v44 = v43[1];
    v43 += 2;
    v55[v42++] = vcvt_hight_f32_f64(vcvt_f32_f64(v45), v44);
  }

  while (v42 != 4);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v52, *(*(v32 + 136) + 16));
  v46 = v54;
  v47 = v55[1];
  *v54 = v55[0];
  v46[1] = v47;
  v48 = v55[3];
  v46[2] = v55[2];
  v46[3] = v48;
  ggl::BufferMemory::~BufferMemory(&v52);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(*(v33 + 136), *(v33 + 232), *a7, a7[1]);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v52, **(v33 + 136));
  v49 = 0;
  v50 = v54;
  do
  {
    *(v50 + v49) = *(a4 + v49);
    v49 += 4;
  }

  while (v49 != 16);
  ggl::BufferMemory::~BufferMemory(&v52);
  v51 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 48) + 160));
  v51[8] = v16;
  v51[4] = v33;
  v51[3] = *(*(a1 + 48) + 168);
  v52 = v51;
  std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a6 + 72), &v52);
  ggl::BufferMemory::~BufferMemory(v56);
}

void md::DebugRenderLayer::renderInstancedBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v11 = a5;
  v16 = md::DebugLayerRenderResources::unitBoxMesh(*(a1 + 48));
  md::DebugRenderLayer::renderInstancedMesh(a1, *(a2 + 8), a3, a4, v11, a6, a7, v16, a8);
}

void md::DebugRenderLayer::renderInstancedQuad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v11 = a5;
  v16 = md::DebugLayerRenderResources::unitQuadMesh(*(a1 + 48));
  md::DebugRenderLayer::renderInstancedMesh(a1, *(a2 + 8), a3, a4, v11, a6, a7, v16, a8);
}

void md::DebugRenderLayer::renderInstancedSphere(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v11 = a5;
  v16 = md::DebugLayerRenderResources::icoSphere(*(a1 + 48));
  md::DebugRenderLayer::renderInstancedMesh(a1, *(a2 + 8), a3, a4, v11, a6, a7, v16, a8);
}

void md::DebugRenderLayer::renderQuadTile(uint64_t a1, md::LayoutContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.%d.%d\n%s", *(a3 + 8), *(a3 + 4), *(a3 + 1), a7, a6];
  objc_claimAutoreleasedReturnValue();
  v10 = *(a2 + 1);
  v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v10, 0x1AF456233693CD46uLL);
  if (v11 && (v12 = v11[5], *(v12 + 8) == 0x1AF456233693CD46))
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  v14 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v10, 0x3070CB6B3C7F21D3uLL);
  if (v14 && (v15 = v14[5], *(v15 + 8) == 0x3070CB6B3C7F21D3))
  {
    v16 = *(v15 + 32);
  }

  else
  {
    v16 = 0;
  }

  v17 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(*(a1 + 48) + 112));
  v18 = (v13 + 808);
  v19 = md::LayoutContext::cameraType(a2);
  v20 = gdc::ToCoordinateSystem(v19);
  md::GeometryLogic::tileMatrix(v36, v20, a3, 0.0, v21);
  v22 = 0;
  while (1)
  {
    v23 = 0;
    v24 = v36;
    do
    {
      v25 = 0;
      v26 = 0.0;
      v27 = v18;
      do
      {
        v28 = *v27;
        v27 += 4;
        v26 = v26 + *&v24[v25] * v28;
        v25 += 8;
      }

      while (v25 != 32);
      *(&v37 + 4 * v23++ + v22) = v26;
      v24 += 32;
    }

    while (v23 != 4);
    ++v22;
    ++v18;
    if (v22 == 4)
    {
      v29 = 0;
      v30 = &v37;
      do
      {
        v32 = *v30;
        v31 = *(v30 + 1);
        v30 += 4;
        v39[v29++] = vcvt_hight_f32_f64(vcvt_f32_f64(v32), v31);
      }

      while (v29 != 4);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v37, *(*(v17 + 136) + 16));
      v33 = v38;
      v34 = v39[1];
      *v38 = v39[0];
      v33[1] = v34;
      v35 = v39[3];
      v33[2] = v39[2];
      v33[3] = v35;
      ggl::BufferMemory::~BufferMemory(&v37);
      md::GeometryContext::transformConstantData(&v37, v16, a3, *(v13 + 3784), -1, 0.0, 0.0);
    }
  }
}

void _drawS2Cell(char *a1, float32x4_t *a2, uint64_t a3, float32x2_t *a4, float a5, float a6)
{
  v9 = 0;
  v75 = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v10 = a1[1];
  v11 = *a1;
  v70 = vrev64_s32(*(a1 + 4));
  v71 = v10;
  v72 = v11;
  v73 = &v75;
  v74 = a3;
  a4[13].i32[0] = 1069547520;
  v12 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(*a2, vdupq_n_s32(0x437F0000u))));
  a4[12].i32[0] = vuzp1_s8(v12, v12).u32[0];
  __asm { FMOV            V0.2S, #1.0 }

  v61 = _D0;
  do
  {
    v18 = (&_drawS2Cell(geo::QuadTile const&,geo::Color<float,4,(geo::ColorSpace)0> const&,gm::Matrix<float,2,1>,gm::Matrix<float,4,4> const&,ggl::DebugConsole *)::corners + 16 * v9);
    v19 = *v18;
    v20 = v18[1];
    v21 = (&_drawS2Cell(geo::QuadTile const&,geo::Color<float,4,(geo::ColorSpace)0> const&,gm::Matrix<float,2,1>,gm::Matrix<float,4,4> const&,ggl::DebugConsole *)::corners + 16 * (++v9 & 3));
    v62 = v19;
    v63 = *v21 - v19;
    v22 = v21[1] - v20;
    v23 = 0.0;
    do
    {
      v24 = v19 + v63 * v23;
      v25 = v20 + v22 * v23;
      v23 = v23 + 0.1;
      v26 = geo::S2CellCoordinates::geocentricFromTileUnit<double>(&v70, v24, v25, 0.0);
      v27 = 0;
      *&v65 = v26;
      *(&v65 + 1) = v28;
      v66 = v29;
      do
      {
        v30 = *(&v65 + v27);
        *(v68 + v27++) = v30;
      }

      while (v27 != 3);
      v31 = v20;
      v32 = v22;
      v33 = v20 + v22 * v23;
      v34 = gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(a3, v68);
      v35 = *&v34;
      v37 = v36;
      v38 = v75;
      v39 = geo::S2CellCoordinates::geocentricFromTileUnit<double>(&v70, v63 * v23 + v19, v33, 0.0);
      v40 = 0;
      *&v65 = v39;
      *(&v65 + 1) = v41;
      v66 = v42;
      do
      {
        v43 = *(&v65 + v40);
        *(v68 + v40++) = v43;
      }

      while (v40 != 3);
      *&v64 = v35 + 1.0;
      v44 = vmul_f32(v38, 0x3F0000003F000000);
      v45 = gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(a3, v68);
      v46.i32[0] = vadd_f32(*&v45, v61).u32[0];
      HIDWORD(v45) = v47;
      v46.i32[1] = vsub_f32(v61, *&v45).i32[1];
      *&v65 = vmul_f32(v44, v46);
      v48 = vmul_f32(v44, __PAIR64__(1.0 - v37, v64));
      a4[1] = v48;
      ggl::DebugConsole::drawLine(a4, &v65, v48.f32[0]);
      v19 = v62;
      v20 = v31;
      v22 = v32;
    }

    while (v23 < 1.0);
  }

  while (v9 != 4);
  v49 = geo::S2CellCoordinates::geocentricFromTileUnit<double>(&v70, 0.5, 0.5, 0.0);
  v50 = 0;
  *&v65 = v49;
  *(&v65 + 1) = v51;
  v66 = v52;
  do
  {
    v53 = *(&v65 + v50);
    *(v68 + v50++) = v53;
  }

  while (v50 != 3);
  v54 = gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(a3, v68);
  v55.i32[0] = vadd_f32(*&v54, v61).u32[0];
  HIDWORD(v54) = v56;
  v55.i32[1] = vsub_f32(v61, *&v54).i32[1];
  a4[1] = vmul_f32(vmul_f32(v75, 0x3F0000003F000000), v55);
  a4[13].i32[0] = 1056964608;
  a4[5] = 0x100000001;
  *(&v65 + 4) = *(a1 + 4);
  LOWORD(v65) = *a1;
  v66 = *(a1 + 2);
  v67 = a1[24];
  md::debugString<geo::QuadTile>(v68, &v65);
  v57 = v69;
  v58 = v68[0];
  if (v69 >= 0)
  {
    v59 = v68;
  }

  else
  {
    v59 = v68[0];
  }

  if (v69 >= 0)
  {
    v60 = v69;
  }

  else
  {
    v60 = v68[1];
  }

  ggl::DebugConsole::drawString(a4, v59, v60);
  if (v57 < 0)
  {
    operator delete(v58);
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](a1 + 128);
  return a1;
}

uint64_t gdc::Registry::each<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_11>(uint64_t result, uint64_t a2, void *a3)
{
  if (a2 != result)
  {
    v3 = (a2 - result) >> 3;
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = (result + 4);
    do
    {
      v5 = *v4;
      v4 += 2;
      if (v5 != -1)
      {
        ++*a3;
      }

      --v3;
    }

    while (v3);
  }

  return result;
}

void md::DebugRenderLayer::renderSolidQuadTile(uint64_t a1, md::LayoutContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.%d.%d\n%s", *(a3 + 8), *(a3 + 4), *(a3 + 1), a7];
  objc_claimAutoreleasedReturnValue();
  v10 = *(a2 + 1);
  v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v10, 0x1AF456233693CD46uLL);
  if (v11 && (v12 = v11[5], *(v12 + 8) == 0x1AF456233693CD46))
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  v14 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v10, 0x3070CB6B3C7F21D3uLL);
  if (v14 && (v15 = v14[5], *(v15 + 8) == 0x3070CB6B3C7F21D3))
  {
    v16 = *(v15 + 32);
  }

  else
  {
    v16 = 0;
  }

  v17 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(*(a1 + 48) + 112));
  v18 = (v13 + 808);
  v19 = md::LayoutContext::cameraType(a2);
  v20 = gdc::ToCoordinateSystem(v19);
  md::GeometryLogic::tileMatrix(v37, v20, a3, 0.0, v21);
  v22 = 0;
  while (1)
  {
    v23 = 0;
    v24 = v37;
    do
    {
      v25 = 0;
      v26 = 0.0;
      v27 = v18;
      do
      {
        v28 = *v27;
        v27 += 4;
        v26 = v26 + *&v24[v25] * v28;
        v25 += 8;
      }

      while (v25 != 32);
      *(&v38 + 4 * v23++ + v22) = v26;
      v24 += 32;
    }

    while (v23 != 4);
    ++v22;
    ++v18;
    if (v22 == 4)
    {
      v29 = 0;
      v30 = &v38;
      do
      {
        v32 = *v30;
        v31 = *(v30 + 1);
        v30 += 4;
        v40[v29++] = vcvt_hight_f32_f64(vcvt_f32_f64(v32), v31);
      }

      while (v29 != 4);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v38, *(*(v17 + 136) + 16));
      v33 = v39;
      v34 = v40[1];
      *v39 = v40[0];
      v33[1] = v34;
      v35 = v40[3];
      v33[2] = v40[2];
      v33[3] = v35;
      ggl::BufferMemory::~BufferMemory(&v38);
      v36 = md::LayoutContext::cameraType(a2);
      md::GeometryContext::transformConstantData(&v38, v16, a3, v36, -1, 0.0, 0.0);
    }
  }
}

void md::DebugRenderLayer::drawMeshErrorsInGroundTile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  *(a3 + 40) = 1;
  v5 = *a1;
  [v5 sizeInPixels];
  v7 = v6;
  [*a1 sizeInPixels];
  v9 = v8;

  v38 = *(a2 + 172);
  v37[0] = *(a2 + 168);
  v39 = *(a2 + 184);
  v40 = *(a2 + 192);
  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a1 + 8), 0x1AF456233693CD46uLL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0x1AF456233693CD46))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = v7;
  v14 = v9;
  v15 = (v12 + 808);
  v16 = md::LayoutContext::cameraType(a1);
  v17 = gdc::ToCoordinateSystem(v16);
  md::GeometryLogic::tileMatrix(&v41, v17, v37, 0.0, v18);
  for (i = 0; i != 4; ++i)
  {
    v20 = 0;
    v21 = &v41;
    do
    {
      v22 = 0;
      v23 = 0.0;
      v24 = v15;
      do
      {
        v25 = *v24;
        v24 += 4;
        v23 = v23 + *(v21 + v22) * v25;
        v22 += 8;
      }

      while (v22 != 32);
      *&v35[4 * v20++ - 1 + i] = v23;
      v21 += 2;
    }

    while (v20 != 4);
    ++v15;
  }

  v26 = 0;
  v27 = &v34;
  do
  {
    v29 = *v27;
    v28 = *(v27 + 1);
    v27 += 4;
    *&v36[v26] = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v28);
    v26 += 16;
  }

  while (v26 != 64);
  v34 = 0x3F0000003F000000;
  LODWORD(v35[0]) = 0;
  v30 = gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(v36, &v34);
  v32 = (*(a3 + 28) * 4.0) + ((1.0 - v31) * (v14 * 0.5));
  *(a3 + 8) = (v13 * 0.5) + (*&v30 * (v13 * 0.5));
  *(a3 + 12) = v32;
  if (*(a2 + 936) != *(a2 + 944))
  {
    v35[0] = 0;
    v35[1] = 0;
    v34 = v35;
    operator new();
  }

  ggl::DebugConsole::drawString(a3, "no mesh errors\n", 0xFuLL);
}

uint64_t md::DrapingContext::debugStateForDrapingKey(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v26);
  for (i = *(*(a2 + 16) + 16); i; i = *i)
  {
    for (j = i[9]; j; j = *j)
    {
      if (j[40] == 1)
      {
        geo::QuadTile::computeHash(j + 16);
        j[40] = 0;
      }

      v7 = *(j + 4);
      if (a3[24])
      {
        v15 = (a3[1] - 0x61C8864680B583EBLL + ((*a3 - 0x61C8864680B583EBLL) << 6) + ((*a3 - 0x61C8864680B583EBLL) >> 2)) ^ (*a3 - 0x61C8864680B583EBLL);
        v16 = (*(a3 + 1) - 0x61C8864680B583EBLL + (v15 << 6) + (v15 >> 2)) ^ v15;
        v8 = (*(a3 + 2) - 0x61C8864680B583EBLL + (v16 << 6) + (v16 >> 2)) ^ v16;
        *(a3 + 2) = v8;
        a3[24] = 0;
      }

      else
      {
        v8 = *(a3 + 2);
      }

      if (v7 == v8 && j[16] == *a3 && j[17] == a3[1] && *(j + 5) == *(a3 + 1) && *(j + 6) == *(a3 + 2) && *(j + 24) == 58)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "\n", 1);
        v21 = *(i + 20);
        *v20 = *(i + 8);
        v22 = i[4];
        v23 = *(i + 40);
        md::debugString<geo::QuadTile>(__p, v20);
        if ((v25 & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        if ((v25 & 0x80u) == 0)
        {
          v10 = v25;
        }

        else
        {
          v10 = __p[1];
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, v9, v10);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, ":", 1);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        v11 = atomic_load(*(j + 9));
        v12 = v11 - 1;
        v13 = "Pending";
        if (v12 <= 2u)
        {
          v13 = off_1E7B346C0[v12];
        }

        v14 = strlen(v13);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, v13, v14);
      }
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a1, v26);
  v26[0] = *MEMORY[0x1E69E54D8];
  v17 = *(MEMORY[0x1E69E54D8] + 72);
  *(v26 + *(v26[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v27 = v17;
  v28 = MEMORY[0x1E69E5548] + 16;
  if (v30 < 0)
  {
    operator delete(v29[7].__locale_);
  }

  v28 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v29);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v31);
}

void sub_1B2E16B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  a20 = *MEMORY[0x1E69E54D8];
  v40 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a20 + *(a20 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a22 = v40;
  a23 = MEMORY[0x1E69E5548] + 16;
  if (a36 < 0)
  {
    operator delete(__p);
  }

  a23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a24);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a39);
  _Unwind_Resume(a1);
}

ggl::zone_mallocator *md::DebugRenderLayer::renderTexturedQuadTile(md::DebugRenderLayer *this, const md::LayoutContext *a2, const geo::QuadTile *a3, ggl::Texture2D *a4, ggl::CommandBuffer *a5, float a6)
{
  v9 = *(a2 + 1);
  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v9, 0x1AF456233693CD46uLL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0x1AF456233693CD46))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v9, 0x3070CB6B3C7F21D3uLL);
  if (v13 && (v14 = v13[5], *(v14 + 8) == 0x3070CB6B3C7F21D3))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(*(this + 6) + 144);
  v17 = v16[1];
  if (v17 == *v16)
  {
    v19 = v16[11];
    if (!v19)
    {
      goto LABEL_23;
    }

    v18 = (*(*v19 + 48))(v19);
    v49[0] = v18;
  }

  else
  {
    v18 = *(v17 - 8);
    v49[0] = v18;
    v16[1] = v17 - 8;
  }

  std::vector<ggl::Textured::Pos2DUVExtendedPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVExtendedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v16 + 4), v49);
  v50 = v18;
  v20 = v16[15];
  if (v20)
  {
    (*(*v20 + 48))(v20, &v50);
    v21 = (v12 + 808);
    v22 = md::LayoutContext::cameraType(a2);
    v23 = gdc::ToCoordinateSystem(v22);
    md::GeometryLogic::tileMatrix(v49, v23, a3, 0.0, v24);
    v25 = 0;
    while (1)
    {
      v26 = 0;
      v27 = v49;
      do
      {
        v28 = 0;
        v29 = 0.0;
        v30 = v21;
        do
        {
          v31 = *v30;
          v30 += 4;
          v29 = v29 + *&v27[v28++] * v31;
        }

        while (v28 != 4);
        *(v51 + 4 * v26++ + v25 + 14) = v29;
        v27 += 4;
      }

      while (v26 != 4);
      ++v25;
      ++v21;
      if (v25 == 4)
      {
        v32 = 0;
        v33 = &v50;
        do
        {
          v35 = *v33;
          v34 = *(v33 + 1);
          v33 += 4;
          v51[v32++] = vcvt_hight_f32_f64(vcvt_f32_f64(v35), v34);
        }

        while (v32 != 4);
        ggl::DataAccess<ggl::Tile::View>::DataAccess(v47, **(v18 + 136), 1);
        v36 = v48;
        v37 = v51[1];
        *v48 = v51[0];
        v36[1] = v37;
        v38 = v51[3];
        v36[2] = v51[2];
        v36[3] = v38;
        ggl::BufferMemory::~BufferMemory(v47);
        md::GeometryContext::transformConstantData(&v50, v15, a3, *(v12 + 3784), -1, 0.0, 0.0);
      }
    }
  }

LABEL_23:
  v39 = std::__throw_bad_function_call[abi:nn200100]();
  return md::DebugRenderLayer::renderScreenTexturedQuad(v39, v40, v41, v42, v43, v44, v45);
}

ggl::zone_mallocator *md::DebugRenderLayer::renderScreenTexturedQuad(uint64_t a1, md::LayoutContext *this, uint64_t a3, uint64_t a4, double a5, float a6, float a7)
{
  md::LayoutContext::camera(this);
  v15 = gdc::Camera::aspectRatio(v13, *(v13 + 46), *(v13 + 47));
  v16 = *(*(a1 + 48) + 152);
  v17 = v16[1];
  if (v17 == *v16)
  {
    v19 = v16[11];
    if (!v19)
    {
      goto LABEL_21;
    }

    v14 = (*(*v19 + 48))(v19);
    v18 = v14;
  }

  else
  {
    v18 = *(v17 - 8);
    v16[1] = v17 - 8;
  }

  v21 = v16[5];
  v20 = v16[6];
  if (v21 >= v20)
  {
    v23 = v16[4];
    v24 = (v21 - v23) >> 3;
    if ((v24 + 1) >> 61)
    {
      goto LABEL_22;
    }

    v25 = v20 - v23;
    v26 = v25 >> 2;
    if (v25 >> 2 <= (v24 + 1))
    {
      v26 = v24 + 1;
    }

    if (v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      v27 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v26;
    }

    v45[4] = v16 + 7;
    if (v27)
    {
      v28 = ggl::zone_mallocator::instance(v14);
      v29 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::ScreenTexturedQuadPipelineSetup *>(v28, v27);
    }

    else
    {
      v29 = 0;
    }

    v31 = &v29[8 * v27];
    v30 = &v29[8 * v24];
    *v30 = v18;
    v22 = v30 + 1;
    v32 = v16[4];
    v33 = v16[5] - v32;
    v34 = v30 - v33;
    memcpy(v30 - v33, v32, v33);
    v35 = v16[4];
    v16[4] = v34;
    v16[5] = v22;
    v36 = v16[6];
    v16[6] = v31;
    v45[2] = v35;
    v45[3] = v36;
    v45[0] = v35;
    v45[1] = v35;
    std::__split_buffer<ggl::Textured::ScreenTexturedQuadPipelineSetup *,geo::allocator_adapter<ggl::Textured::ScreenTexturedQuadPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v45);
  }

  else
  {
    *v21 = v18;
    v22 = v21 + 1;
  }

  v16[5] = v22;
  v45[0] = v18;
  v37 = v16[15];
  if (!v37)
  {
LABEL_21:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_22:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v38 = v15 * a7;
  (*(*v37 + 48))(v37, v45);
  v39 = **(v18 + 17);
  ggl::BufferMemory::BufferMemory(v43);
  ggl::ResourceAccessor::accessConstantData(v45, 0, v39, 1);
  ggl::BufferMemory::operator=(v43, v45);
  ggl::BufferMemory::~BufferMemory(v45);
  v40 = v44;
  *v44 = a5;
  *(v40 + 2) = a6;
  *(v40 + 3) = v38;
  ggl::BufferMemory::~BufferMemory(v43);
  if (!a3)
  {
    a3 = *(*(a1 + 48) + 240);
  }

  **(v18 + 21) = a3;
  v41 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 48) + 160));
  v41[8] = *md::DebugLayerRenderResources::unitTexturedMesh(*(a1 + 48));
  v41[4] = v18;
  v41[3] = *(*(a1 + 48) + 192);
  v45[0] = v41;
  return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a4 + 72), v45);
}

void md::DebugRenderLayer::paintLayerMeshBounds(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, const geo::QuadTile *a7, uint64_t a8)
{
  v37 = 0;
  v38 = 0;
  v39 = 0;
  md::SceneContext::renderData(&v35, a5, a4);
  v34 = v35;
  v8 = v35;
  if (gdc::DataKeyIterator::operator!=(v35, v36))
  {
    v9 = gdc::DataIterator::operator*(v8);
    v38 = v37;
    v10 = gdc::Context::context<md::components::SharedTransformData>(*(*v9 + 1328));
    v11 = *(a6 + 3784);
    v12 = gdc::ToCoordinateSystem(v11);
    v13 = 0;
    v14 = 39;
    if (v12)
    {
      v14 = 23;
    }

    v15 = &v10[v14];
    v16 = *(a6 + 5592);
    if (!v16)
    {
      v16 = a6;
    }

    v17 = v15;
    for (i = (v16 + 808); ; ++i)
    {
      v19 = 0;
      v20 = v17;
      do
      {
        v21 = 0;
        v22 = 0.0;
        v23 = i;
        do
        {
          v24 = *v23;
          v23 += 4;
          v22 = v22 + *&v20[v21++] * v24;
        }

        while (v21 != 4);
        v32[4 * v19++ + v13] = v22;
        v20 += 4;
      }

      while (v19 != 4);
      if (++v13 == 4)
      {
        v25 = 0;
        v26 = v32;
        do
        {
          v28 = *v26;
          v27 = *(v26 + 2);
          v26 += 4;
          *&v33[v25] = vcvt_hight_f32_f64(vcvt_f32_f64(v28), v27);
          v25 += 16;
        }

        while (v25 != 64);
        geo::Frustum<float>::Frustum(v32, v33);
        md::GeometryContext::transformConstantData(&v31, a7, v10, v11, -1, *(v10 + 55), *(v10 + 56));
      }
    }
  }

  if (v37)
  {
    operator delete(v37);
  }
}

void sub_1B2E17808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44)
{
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a44);
  }

  v46 = *(v44 - 216);
  if (v46)
  {
    operator delete(v46);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::view<md::components::Decal const,md::components::MeshInstance const>(uint64_t a1)
{
  v2 = gdc::Registry::storage<md::components::Decal>(a1);
  gdc::Registry::storage<md::components::MeshInstance>(a1);
  return v2;
}

void gdc::RegistryView<md::components::Decal const,md::components::MeshInstance const>::each<md::DebugRenderLayer::layout(md::LayoutContext const&)::$_13>(void *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a1 + 32;
  if (!*a1)
  {
    v5 = 0;
  }

  v6 = v3 + 4;
  if (!v3)
  {
    v6 = 0;
  }

  if (v6[4] - v6[3] >= *(v5 + 32) - *(v5 + 24))
  {
    v6 = v5;
  }

  if (v5 == v6)
  {
    v7 = v4[7];
    v8 = v4[8];
    if (v7 != v8)
    {
      v9 = *a2;
      v88 = a2;
      v90 = a2[1];
      v85 = a2[2];
      v86 = v6;
      v84 = a2[3];
      v10 = v4[10];
      do
      {
        v11 = a1[1];
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v11 + 4, *(v7 + 4));
        v13 = v11[8];
        if (v13 != Index)
        {
          v14 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v11 + 4, *(v7 + 4));
          if (v13 == v14)
          {
            v15 = v11[11];
          }

          else
          {
            v15 = (v11[10] + 112 * ((v14 - v11[7]) >> 3));
          }

          md::GeometryLogic::adjustedMeshBounds(v92, (v15 + 9), *v90);
          v16 = 0;
          v17 = v9;
          while (1)
          {
            v18 = 0;
            v19 = *(v9 + v16 + 8);
            v93 = *(v9 + v16);
            v94 = v19;
            do
            {
              v20 = &v92[v18];
              if (*(&v93 + v18) >= 0.0)
              {
                v20 = &v92[v18 + 12];
              }

              *(&v95 + v18) = *v20;
              v18 += 4;
            }

            while (v18 != 12);
            v21 = 0;
            v22 = 0.0;
            do
            {
              v22 = v22 + (*(v17 + v21) * *(&v95 + v21));
              v21 += 4;
            }

            while (v21 != 12);
            if ((*(v9 + v16 + 12) + v22) < 0.0)
            {
              break;
            }

            v16 += 16;
            v17 += 16;
            if (v16 == 96)
            {
              v24 = v15[9];
              v23 = v15[10];
              v25 = v15[11];
              v26 = v15[12] - v24;
              v27 = v15[13] - v23;
              v28 = v15[14] - v25;
              if (*v10)
              {
                v29 = v85;
              }

              else
              {
                v29 = v84;
              }

              v30 = v29[1];
              v31 = v29[2];
              if (v30 >= v31)
              {
                v33 = (v30 - *v29) >> 6;
                v34 = v33 + 1;
                if ((v33 + 1) >> 58)
                {
LABEL_85:
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v35 = v31 - *v29;
                if (v35 >> 5 > v34)
                {
                  v34 = v35 >> 5;
                }

                if (v35 >= 0x7FFFFFFFFFFFFFC0)
                {
                  v36 = 0x3FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v36 = v34;
                }

                if (v36)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v36);
                }

                v37 = v33 << 6;
                *v37 = v26;
                *(v37 + 12) = 0;
                *(v37 + 4) = 0;
                *(v37 + 20) = v27;
                *(v37 + 24) = 0;
                *(v37 + 32) = 0;
                *(v37 + 40) = v28;
                *(v37 + 44) = 0;
                *(v37 + 48) = v24;
                *(v37 + 52) = v23;
                *(v37 + 56) = v25;
                *(v37 + 60) = 1065353216;
                v38 = *v29;
                v39 = v29[1];
                v40 = (v33 << 6) + *v29 - v39;
                if (v39 != *v29)
                {
                  v41 = (v37 + *v29 - v39);
                  do
                  {
                    v42 = *v38;
                    v43 = v38[1];
                    v44 = v38[3];
                    v41[2] = v38[2];
                    v41[3] = v44;
                    *v41 = v42;
                    v41[1] = v43;
                    v41 += 4;
                    v38 += 4;
                  }

                  while (v38 != v39);
                  v38 = *v29;
                }

                v32 = v37 + 64;
                *v29 = v40;
                v29[1] = v37 + 64;
                v29[2] = 0;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                *v30 = v26;
                *(v30 + 12) = 0;
                *(v30 + 4) = 0;
                *(v30 + 20) = v27;
                *(v30 + 24) = 0;
                *(v30 + 32) = 0;
                *(v30 + 40) = v28;
                *(v30 + 44) = 0;
                *(v30 + 48) = v24;
                *(v30 + 52) = v23;
                *(v30 + 56) = v25;
                v32 = v30 + 64;
                *(v30 + 60) = 1065353216;
              }

              v29[1] = v32;
              break;
            }
          }
        }

        ++v10;
        v7 += 8;
      }

      while (v7 != v8);
      v3 = a1[1];
      v6 = v86;
      a2 = v88;
    }
  }

  v45 = v3 + 4;
  if (!v3)
  {
    v45 = 0;
  }

  if (v45 == v6)
  {
    v46 = v3[7];
    v47 = v3[8];
    if (v46 != v47)
    {
      v48 = *a2;
      v89 = a2[2];
      v91 = a2[1];
      v87 = a2[3];
      v49 = v3[10];
      do
      {
        v50 = *a1;
        v51 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((*a1 + 32), *(v46 + 4));
        v52 = v50[8];
        if (v52 != v51)
        {
          v53 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v50 + 4, *(v46 + 4));
          if (v52 == v53)
          {
            v54 = v50[11];
          }

          else
          {
            v54 = (v50[10] + ((v53 - v50[7]) >> 1));
          }

          md::GeometryLogic::adjustedMeshBounds(v92, (v49 + 9), *v91);
          v55 = 0;
          v56 = v48;
          do
          {
            v57 = 0;
            v58 = *(v48 + v55 + 8);
            v93 = *(v48 + v55);
            v94 = v58;
            do
            {
              v59 = &v92[v57];
              if (*(&v93 + v57) >= 0.0)
              {
                v59 = &v92[v57 + 12];
              }

              *(&v95 + v57) = *v59;
              v57 += 4;
            }

            while (v57 != 12);
            v60 = 0;
            v61 = 0.0;
            do
            {
              v61 = v61 + (*(v56 + v60) * *(&v95 + v60));
              v60 += 4;
            }

            while (v60 != 12);
            if ((*(v48 + v55 + 12) + v61) < 0.0)
            {
              goto LABEL_83;
            }

            v55 += 16;
            v56 += 16;
          }

          while (v55 != 96);
          v63 = v49[9];
          v62 = v49[10];
          v64 = v49[11];
          v65 = v49[12] - v63;
          v66 = v49[13] - v62;
          v67 = v49[14] - v64;
          if (*v54)
          {
            v68 = v89;
          }

          else
          {
            v68 = v87;
          }

          v69 = v68[1];
          v70 = v68[2];
          if (v69 >= v70)
          {
            v72 = (v69 - *v68) >> 6;
            v73 = v72 + 1;
            if ((v72 + 1) >> 58)
            {
              goto LABEL_85;
            }

            v74 = v70 - *v68;
            if (v74 >> 5 > v73)
            {
              v73 = v74 >> 5;
            }

            if (v74 >= 0x7FFFFFFFFFFFFFC0)
            {
              v75 = 0x3FFFFFFFFFFFFFFLL;
            }

            else
            {
              v75 = v73;
            }

            if (v75)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v75);
            }

            v76 = v72 << 6;
            *v76 = v65;
            *(v76 + 12) = 0;
            *(v76 + 4) = 0;
            *(v76 + 20) = v66;
            *(v76 + 24) = 0;
            *(v76 + 32) = 0;
            *(v76 + 40) = v67;
            *(v76 + 44) = 0;
            *(v76 + 48) = v63;
            *(v76 + 52) = v62;
            *(v76 + 56) = v64;
            *(v76 + 60) = 1065353216;
            v77 = *v68;
            v78 = v68[1];
            v79 = (v72 << 6) + *v68 - v78;
            if (v78 != *v68)
            {
              v80 = (v76 + *v68 - v78);
              do
              {
                v81 = *v77;
                v82 = v77[1];
                v83 = v77[3];
                v80[2] = v77[2];
                v80[3] = v83;
                *v80 = v81;
                v80[1] = v82;
                v80 += 4;
                v77 += 4;
              }

              while (v77 != v78);
              v77 = *v68;
            }

            v71 = v76 + 64;
            *v68 = v79;
            v68[1] = v76 + 64;
            v68[2] = 0;
            if (v77)
            {
              operator delete(v77);
            }
          }

          else
          {
            *v69 = v65;
            *(v69 + 12) = 0;
            *(v69 + 4) = 0;
            *(v69 + 20) = v66;
            *(v69 + 24) = 0;
            *(v69 + 32) = 0;
            *(v69 + 40) = v67;
            *(v69 + 44) = 0;
            *(v69 + 48) = v63;
            *(v69 + 52) = v62;
            *(v69 + 56) = v64;
            v71 = v69 + 64;
            *(v69 + 60) = 1065353216;
          }

          v68[1] = v71;
        }

LABEL_83:
        v49 += 28;
        v46 += 8;
      }

      while (v46 != v47);
    }
  }
}

uint64_t ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v10 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v10 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v10);
  v11 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v11);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__tree<std::__value_type<gdc::RequestType,unsigned int>,std::__map_value_compare<gdc::RequestType,std::__value_type<gdc::RequestType,unsigned int>,std::less<gdc::RequestType>,true>,std::allocator<std::__value_type<gdc::RequestType,unsigned int>>>::__emplace_unique_key_args<gdc::RequestType,std::piecewise_construct_t const&,std::tuple<gdc::RequestType&&>,std::tuple<>>(v7, v8, v9);
}

uint64_t *std::__tree<std::__value_type<gdc::RequestType,unsigned int>,std::__map_value_compare<gdc::RequestType,std::__value_type<gdc::RequestType,unsigned int>,std::less<gdc::RequestType>,true>,std::allocator<std::__value_type<gdc::RequestType,unsigned int>>>::__emplace_unique_key_args<gdc::RequestType,std::piecewise_construct_t const&,std::tuple<gdc::RequestType&&>,std::tuple<>>(uint64_t **a1, unsigned __int8 a2, _BYTE **a3)
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
      v5 = *(v3 + 28);
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
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t md::DebugLayerRenderResources::unitRectMesh(md::DebugLayerRenderResources *this)
{
  if (!*(this + 34))
  {
    operator new();
  }

  return this + 272;
}

uint64_t md::DebugLayerRenderResources::cameraBoxMesh(md::DebugLayerRenderResources *this)
{
  if (!*(this + 40))
  {
    v3 = 8;
    v2[2] = 24;
    std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>,std::allocator<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>>,char const(&)[28],unsigned long const&,0>(v2, "/Debug/CameraBox/VertexData", &v3);
  }

  return this + 320;
}

void sub_1B2E18234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  ggl::BufferMemory::~BufferMemory(va);
  ggl::BufferMemory::~BufferMemory(va1);
  v7 = *(v5 - 56);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(v5 - 40);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  _Unwind_Resume(a1);
}

float64x2_t geo::Geocentric<double>::toMercator3<double>(long double *a1, uint64_t a2)
{
  v13 = 0.0;
  v14 = 0uLL;
  geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(a1, &v13);
  v12 = v14;
  v3 = tan(v13 * 0.5 + 0.785398163);
  v4 = log(v3);
  *&v5.f64[0] = v12;
  v5.f64[1] = v4;
  result = vdupq_n_s64(0x3FC45F306DC9C883uLL);
  __asm { FMOV            V2.2D, #0.5 }

  *a2 = vmlaq_f64(_Q2, result, v5);
  *(a2 + 16) = *(&v12 + 1);
  return result;
}

void md::DebugRenderLayer::layout(md::LayoutContext const&)::$_14::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(a3 + 16);
  v10 = *(a2 + 8);
  v11 = 1 << *(a2 + 1);
  v12 = 1.0 / v11;
  v13 = v11 + ~*(a2 + 4);
  v35 = v12 * v10;
  *&v36 = v12 * v13;
  *(&v36 + 1) = v12 + v10 * v12;
  *&v37 = v12 + v13 * v12;
  gdc::GlobeTileUtils::boundsFromMercatorRect(&v58, &v35, v9, v9);
  v14 = md::LayoutContext::cameraType(a1[1]);
  if (gdc::ToCoordinateSystem(v14))
  {
    v49 = v58;
    v51 = v60;
    v50 = v59;
    v52 = v61;
    v53 = v62;
    v54 = v63;
    v55 = v64;
    v56 = v65;
    geo::OrientedBox<double,3u,double,double>::toMatrix(v57, &v49);
  }

  else
  {
    v15 = 1 << *(a2 + 1);
    v16 = 1.0 / v15;
    v17 = v16 * *(a2 + 8);
    v18 = ~*(a2 + 4);
    v37 = 0u;
    v39 = 0;
    v40 = 0u;
    v41 = 0;
    v36 = 0u;
    v43 = 0;
    v35 = v16;
    v38 = v16;
    v42 = v16;
    v44 = v17;
    v45 = v16 * (v15 + v18);
    v46 = xmmword_1B33B0740;
    v19 = *(a3 + 16) / (v16 * 40075017.0);
    v47 = 0uLL;
    v48 = v19;
    gm::Matrix<double,4,4>::affineTranslated<int,void>(v57, &v35, &v47);
  }

  v20 = 0;
  for (i = *a1[2] + 808; ; i += 8)
  {
    v22 = 0;
    v23 = v57;
    do
    {
      v24 = 0;
      v25 = 0.0;
      v26 = i;
      do
      {
        v27 = *v26;
        v26 += 4;
        v25 = v25 + *&v23[v24] * v27;
        v24 += 8;
      }

      while (v24 != 32);
      *(&v35 + 4 * v22++ + v20) = v25;
      v23 += 32;
    }

    while (v22 != 4);
    if (++v20 == 4)
    {
      v28 = 0;
      v29 = &v35;
      do
      {
        v31 = *v29;
        v30 = *(v29 + 2);
        v29 += 4;
        *(&v49 + v28) = vcvt_hight_f32_f64(vcvt_f32_f64(v31), v30);
        v28 += 16;
      }

      while (v28 != 64);
      v32 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(*(v8 + 48) + 112));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v35, *(*(v32 + 136) + 16));
      v33 = 0;
      v34 = v38;
      do
      {
        *(*&v34 + v33) = *(&v49 + v33);
        v33 += 16;
      }

      while (v33 != 64);
      ggl::BufferMemory::~BufferMemory(&v35);
      md::GeometryLogic::createUnitTransformConstantData(&v35);
    }
  }
}

__n128 std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::push_front(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    v6 = a1->i64[1];
    v5 = a1[1].i64[0];
    v7 = 85 * ((v5 - v6) >> 3) - 1;
    v8 = v5 - v6;
    if (v5 == v6)
    {
      v7 = 0;
    }

    if ((v7 - a1[2].i64[1]) < 0x55)
    {
      v9 = a1[1].i64[1];
      v10 = v9 - a1->i64[0];
      if (v8 < v10)
      {
        operator new();
      }

      if (v9 == a1->i64[0])
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v11);
    }

    a1[2].i64[0] = 85;
    v17 = *(v5 - 8);
    a1[1].i64[0] = v5 - 8;
    std::__split_buffer<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *,std::allocator<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *>>::emplace_front<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *&>(a1, &v17);
    v4 = a1[2].u64[0];
  }

  v12 = a1->i64[1];
  v13 = (v12 + 8 * (v4 / 0x55));
  v14 = *v13 - 4080 * (v4 / 0x55) + 48 * v4;
  if (a1[1].i64[0] == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4080;
  }

  *(v14 - 48) = *a2;
  *(v14 - 40) = *(a2 + 8);
  *(v14 - 24) = *(a2 + 24);
  result = *(a2 + 32);
  *(v14 - 16) = result;
  v16 = a1[2].i64[1] + 1;
  a1[2].i64[0] = v4 - 1;
  a1[2].i64[1] = v16;
  return result;
}

void sub_1B2E18D04(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::__maybe_remove_back_spare[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 85 * ((v1 - v2) >> 3) - 1;
  }

  if ((v3 - (a1[5] + a1[4])) >= 0xAA)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }
}

void md::DebugRenderLayer::layout(md::LayoutContext const&)::$_15::operator()(uint64_t *a1, double *a2, uint64_t a3, double *a4, double *a5)
{
  if (*a4 > 0.001)
  {
    v8 = *a1;
    LOBYTE(v93) = vcvtmd_s64_f64(log2(40075017.0 / *a4));
    LOBYTE(v82[0]) = 5;
    LOBYTE(v81[0]) = 30;
    if (qword_1EB8436A0)
    {
      (*(*qword_1EB8436A0 + 48))(&v91);
      v9 = BYTE1(v91);
      v10 = md::LayoutContext::cameraType(a1[1]);
      v11 = gdc::ToCoordinateSystem(v10);
      v12 = *a2;
      if (v11)
      {
        v13 = 1 << SBYTE1(v91);
        v14 = (1 << SBYTE1(v91));
        v15 = cos(v12 + v12) * -559.82 + 111132.92;
        v16 = v15 + cos(v12 * 4.0) * 1.175;
        v17 = v16 + cos(v12 * 6.0) * -0.0023;
        v18 = v12 * 0.5;
        v19 = tan(v18 + 0.78103484);
        v20 = log(v19);
        v21 = tan(v18 + 0.789761487);
        v22 = v17 / (fabs((log(v21) - v20) * 0.159154943) * v14);
      }

      else
      {
        v22 = 40075017.0 / (1 << v9);
        v18 = v12 * 0.5;
        v13 = 1 << SBYTE1(v91);
        v14 = (1 << SBYTE1(v91));
      }

      v23 = *a4;
      v24 = a2[1];
      v25 = *a4 / v22;
      v26 = tan(v18 + 0.785398163);
      v27 = log(v26);
      v28 = 1.0 / v14;
      v29 = v13 + ~HIDWORD(v91);
      v30 = 1.0 / v14 * v92;
      v31 = 1.0 / v14 * v29;
      v32 = (v24 * 0.159154943 + 0.5 - v30) * v14;
      v33 = (v27 * 0.159154943 + 0.5 - v31) * v14;
      v34 = a2[2];
      v93 = v30;
      *&v94 = v31;
      *(&v94 + 1) = v28 + v92 * v28;
      *&v95 = v28 + v29 * v28;
      gdc::GlobeTileUtils::boundsFromMercatorRect(&v83, &v93, v34 - v23 * 0.5, v34 + v23 * 0.5);
      v35 = md::LayoutContext::cameraType(a1[1]);
      if (gdc::ToCoordinateSystem(v35))
      {
        v63 = v84;
        v62 = v83;
        v64 = v85;
        v65 = v86;
        v66 = v87;
        v67 = v88;
        v68 = v89;
        v69 = v90;
        geo::OrientedBox<double,3u,double,double>::toMatrix(&v70, &v62);
      }

      else
      {
        v36 = 1.0 / (1 << SBYTE1(v91));
        v73 = 0u;
        v75 = 0;
        v71 = 0u;
        v72 = 0u;
        v74 = 0u;
        v77 = 0;
        v70 = v36;
        *&v73 = v36;
        v76 = v36;
        v78 = v36 * v92;
        v79 = v36 * ((1 << SBYTE1(v91)) + ~HIDWORD(v91));
        v80 = xmmword_1B33B0740;
      }

      *&v60 = v32;
      *(&v60 + 1) = v33;
      v61 = 0;
      v37 = v81;
      gm::Matrix<double,4,4>::affineTranslated<int,void>(v81, &v70, &v60);
      v38 = 0;
      v100 = 0u;
      v101 = 0u;
      v97 = 0u;
      v98 = 0;
      v95 = 0u;
      v96 = 0u;
      v94 = 0u;
      v102 = 0x3FF0000000000000;
      v99 = 0x3FF0000000000000;
      v93 = v25;
      *&v96 = v25;
      do
      {
        v39 = 0;
        v40 = &v93;
        do
        {
          v41 = 0;
          v42 = 0.0;
          v43 = v37;
          do
          {
            v44 = *v43;
            v43 += 4;
            v42 = v42 + v40[v41++] * v44;
          }

          while (v41 != 4);
          *&v82[4 * v39++ + v38] = v42;
          v40 += 4;
        }

        while (v39 != 4);
        ++v38;
        v37 = (v37 + 8);
      }

      while (v38 != 4);
      v45 = 0;
      for (i = *a1[2] + 808; ; i += 8)
      {
        v47 = 0;
        v48 = v82;
        do
        {
          v49 = 0;
          v50 = 0.0;
          v51 = i;
          do
          {
            v52 = *v51;
            v51 += 4;
            v50 = v50 + *&v48[v49++] * v52;
          }

          while (v49 != 4);
          *(&v93 + 4 * v47++ + v45) = v50;
          v48 += 4;
        }

        while (v47 != 4);
        if (++v45 == 4)
        {
          v53 = 0;
          v54 = &v93;
          do
          {
            v56 = *v54;
            v55 = *(v54 + 2);
            v54 += 4;
            v81[v53++] = vcvt_hight_f32_f64(vcvt_f32_f64(v56), v55);
          }

          while (v53 != 4);
          v57 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(*(v8 + 48) + 112));
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v93, *(*(v57 + 136) + 16));
          v58 = v96;
          *v96 = v81[0];
          v58[1] = v81[1];
          v58[2] = v81[2];
          v58[3] = v81[3];
          ggl::BufferMemory::~BufferMemory(&v93);
          md::GeometryLogic::createUnitTransformConstantData(&v93);
        }
      }
    }

    v59 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v59);
  }
}

void md::DebugRenderLayer::paintModelTiles(md::DebugRenderLayer *this, const md::LayoutContext *a2, float32x2_t *a3, ggl::CommandBuffer *a4)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::clear(this + 96);
  v8 = *(this + 7);
  *(this + 7) = 0;
  v9 = *(this + 12);
  *(this + 12) = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 9);
  *(this + 14) = v10;
  v11 = *(this + 8);
  *(this + 13) = v11;
  *(this + 8) = 0;
  v12 = *(this + 10);
  *(this + 15) = v12;
  *(this + 32) = *(this + 22);
  if (v12)
  {
    v13 = *(v10 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      v15 = v13 >= v11;
      v14 = v13 % v11;
      if (!v15)
      {
        v14 = v13;
      }
    }

    else
    {
      v14 = (v11 - 1) & v13;
    }

    *(*(this + 12) + 8 * v14) = this + 112;
    *(this + 9) = 0;
    *(this + 10) = 0;
  }

  std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::clear(this + 56);
  v16 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 1), 0x99BED48DEFBBD82BLL);
  if (v16 && (v17 = v16[5], *(v17 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v63 = *(v17 + 32);
  }

  else
  {
    v63 = 0;
  }

  v18 = 0;
  do
  {
    v19 = *(&md::DebugRenderLayer::paintModelTiles(md::LayoutContext const&,md::DebugConsole *,ggl::CommandBuffer *)::debugDataTypes + v18);
    v20 = +[VKDebugSettings sharedSettings];
    v67 = [v20 paintTiles];
    v66 = [v20 paintVertices];
    v65 = [v20 paintJunctions];
    v21 = 0;
    v22 = 0;
    v64 = v18;
    if (v19 <= 18)
    {
      if (v19 > 5)
      {
        if (v19 == 6)
        {
          v47 = [v20 paintVenues];
          v22 = 0;
          v23 = 0;
          v21 = 0;
          v24 = 0;
          v39 = v47 == 0;
          v40 = 0x1000000000000;
        }

        else
        {
          if (v19 != 14)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            if (v19 == 16)
            {
              v37 = [v20 drawDebugTransit];
              v21 = [v20 paintLoadReason];
              v22 = 0;
              v24 = 0;
              v25 = 0;
              if (v37)
              {
                v23 = 0x100000000;
              }

              else
              {
                v23 = 0;
              }
            }

            goto LABEL_56;
          }

          v45 = [v20 paintBuildings];
          v21 = [v20 paintLoadReason];
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v39 = v45 == 0;
          v40 = 0x100000000000000;
        }

        goto LABEL_45;
      }

      if (v19 != 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        if (v19 == 2)
        {
          v41 = [v20 paintRoadBoundaries];
          v42 = [v20 paintRoadTiles];
          v62 = [v20 paintLoadReason];
          v29 = v41;

          if (v42)
          {
            v35 = v66;
            v34 = v67;
            v36 = v65;
            v28 = v62;
LABEL_35:
            v24 = 0;
            v30 = 0;
            v31 = 0;
            v33 = 0;
            v32 = 0x10000;
            goto LABEL_57;
          }

          v24 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          goto LABEL_52;
        }

        goto LABEL_56;
      }

LABEL_36:
      v43 = [v20 paintPolygonTiles];
      v44 = [v20 paintCoastlines];
      v21 = [v20 paintLoadReason];
      v23 = 0;
      v24 = 0;
      if (v43)
      {
        v25 = 0x100000000;
      }

      else
      {
        v25 = 0;
      }

      if (v44)
      {
        v22 = 0x1000000;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_56;
    }

    if (v19 > 50)
    {
      if (v19 == 51)
      {
        v48 = [v20 paintDaVinciMetaTiles];
        v22 = 0;
        v23 = 0;
        v21 = 0;
        v25 = 0;
        if (v48)
        {
          v24 = 0x1000000000000;
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_56;
      }

      if (v19 != 57)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        if (v19 == 64)
        {
          v38 = [v20 paintTopographicTiles];
          v22 = 0;
          v23 = 0;
          v21 = 0;
          v24 = 0;
          v39 = v38 == 0;
          v40 = 0x10000000000;
LABEL_45:
          if (v39)
          {
            v25 = 0;
          }

          else
          {
            v25 = v40;
          }
        }

LABEL_56:
        v49 = v21;
        v50 = v23;
        v51 = v25;
        v52 = v20;
        v31 = v22;

        v33 = v51;
        v30 = v50;
        v28 = v49;
        v29 = 0;
        v32 = 0;
        v35 = v66;
        v34 = v67;
        v36 = v65;
        goto LABEL_57;
      }

      goto LABEL_36;
    }

    if (v19 == 19)
    {
      v46 = [v20 paintPointTiles];
      v62 = 0;
LABEL_49:

      v24 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      v32 = 0;
      if (v46)
      {
        v33 = 0x1000000;
      }

      else
      {
        v33 = 0;
      }

LABEL_52:
      v35 = v66;
      v34 = v67;
      v36 = v65;
      v28 = v62;
      goto LABEL_57;
    }

    if (v19 == 20)
    {
      v46 = [v20 paintPoiTiles];
      v62 = [v20 paintLoadReason];
      goto LABEL_49;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (v19 != 44)
    {
      goto LABEL_56;
    }

    v26 = [v20 paintRoadTiles];
    v27 = [v20 paintLoadReason];

    v28 = v27;
    v29 = 0;
    v24 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v35 = v66;
    v34 = v67;
    v36 = v65;
    if (v26)
    {
      goto LABEL_35;
    }

LABEL_57:
    v53 = 256;
    if (v34)
    {
      v54 = 256;
    }

    else
    {
      v54 = 0;
    }

    v55 = v29 | v32 | v33 | v54;
    v56 = 0x10000000000;
    if (!v28)
    {
      v56 = 0;
    }

    v39 = v36 == 0;
    v57 = 0x10000;
    if (v39)
    {
      v57 = 0;
    }

    if (!v35)
    {
      v53 = 0;
    }

    v58 = v57 | v53 | v24 | v56 | v30;
    *v71 = v55;
    v71[14] = BYTE6(v24);
    *&v71[12] = WORD2(v58);
    *&v71[8] = v58 | v31;
    if (v55 | *&v71[7])
    {
      md::SceneContext::renderData(&v69, *v63, v19);
      v68 = v69;
      v59 = v70;
      for (i = v69; gdc::DataKeyIterator::operator!=(i, v59); i = v68)
      {
        v61 = gdc::DataIterator::operator*(i);
        md::DebugRenderLayer::renderTileData(this, a2, v71, *v61, v19, a4, a3);
        gdc::DataIterator::operator++(&v68);
      }
    }

    v18 = v64 + 2;
  }

  while (v64 != 20);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::__unordered_map_hasher<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,true>,std::__unordered_map_equal<std::shared_ptr<geo::codec::VectorTile>,std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>,std::equal_to<std::shared_ptr<geo::codec::VectorTile>>,std::hash<std::shared_ptr<geo::codec::VectorTile>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<geo::codec::VectorTile>,std::shared_ptr<md::ModelTileDebugData>>>>::clear(this + 96);
}