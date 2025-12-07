void sub_186709304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v33 = *(v31 - 104);
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33, a2, a3, a4, a5, a6, a7, a8);
    std::__shared_weak_count::__release_weak(v33);
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  *(v31 - 128) = v30;
  *(v31 - 112) = v31 - 128;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((a28 + 1920), v31 - 128, (v31 - 112)) + 4) = ((rep - v29) / 1000) * 0.001;
  if (v28)
  {
    if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t geo::codec::_readVenues(geo::codec::zone_mallocator *a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  while (*(*a1 + 16 * v5) != 137)
  {
    v5 = ++v6;
    if (v3 <= v6)
    {
      return 1;
    }
  }

  v7 = geo::codec::chapterAt(a1, v6, 137, (*a3 + 1920));
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = a3[1];
  v819 = *a3;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v818 = v9;
  v10.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  rep = v10.__d_.__rep_;
  v11 = v8[6];
  v12 = v8[7];
  v13 = v12 - v11;
  if (v12 < v11)
  {
    v14 = 3298;
LABEL_17:
    v25 = fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v14);
    v15 = 0;
    goto LABEL_18;
  }

  v17 = *a3;
  v18 = *(*a3 + 864);
  v19 = *(*a3 + 872);
  v20 = (v8[5] + v11);
  v8[1] = v20;
  *(v8 + 32) = 1;
  v8[3] = 0;
  v21 = v8 + 3;
  v8[2] = v13;
  v22 = 8 * v13;
  if (!v22)
  {
    v14 = 3302;
    goto LABEL_17;
  }

  v23 = *v20;
  *v21 = 5;
  v24 = v23 >> 3;
  if (v24 + 6 > v22)
  {
    v14 = 3305;
    goto LABEL_17;
  }

  v815 = (v8 + 1);
  LODWORD(v30) = 0;
  v806 = v18;
  v807 = v19 - v18;
  v31 = v24 + 1;
  v32 = 5;
  v808 = v24 + 1;
  do
  {
    v33 = 8 - (v32 & 7);
    if (v31 < v33)
    {
      v33 = v31;
    }

    v30 = (v20[v32 >> 3] >> (8 - (v32 & 7) - v33)) & ~(-1 << v33) | (v30 << v33);
    v32 += v33;
    *v21 = v32;
    v31 -= v33;
  }

  while (v31);
  v34 = *(v17 + 184);
  v35 = *(v17 + 192);
  v36 = v35 - v34;
  v37 = 0x8E38E38E38E38E39 * ((v35 - v34) >> 4);
  v38 = v30 - v37;
  if (v30 <= v37)
  {
    if (v30 >= v37)
    {
      goto LABEL_62;
    }

    for (i = v34 + 144 * v30; v35 != i; v35 -= 144)
    {
      v64 = *(v35 - 112);
      if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v64->__on_zero_shared)(v64);
        std::__shared_weak_count::__release_weak(v64);
      }

      v10.__d_.__rep_ = *(v35 - 136);
      if (v10.__d_.__rep_)
      {
        std::__shared_weak_count::__release_weak(v10.__d_.__rep_);
      }
    }

    goto LABEL_58;
  }

  v39 = *(v17 + 200);
  if (0x8E38E38E38E38E39 * ((v39 - v35) >> 4) >= v38)
  {
    bzero(*(v17 + 192), 144 * ((144 * v38 - 144) / 0x90) + 144);
    i = v35 + 144 * ((144 * v38 - 144) / 0x90) + 144;
LABEL_58:
    *(v17 + 192) = i;
    goto LABEL_62;
  }

  v40 = 0x8E38E38E38E38E39 * ((v39 - v34) >> 4);
  v41 = 2 * v40;
  if (2 * v40 <= v30)
  {
    v41 = v30;
  }

  if (v40 >= 0xE38E38E38E38E3)
  {
    v42 = 0x1C71C71C71C71C7;
  }

  else
  {
    v42 = v41;
  }

  v43 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
  v44 = pthread_rwlock_rdlock((v43 + 32));
  if (v44)
  {
    geo::read_write_lock::logFailure(v44, "read lock", v45);
  }

  v46 = malloc_type_zone_malloc(*v43, 144 * v42, 0x1070040C292435FuLL);
  atomic_fetch_add((v43 + 24), 1u);
  v47 = pthread_rwlock_unlock((v43 + 32));
  if (v47)
  {
    geo::read_write_lock::logFailure(v47, "unlock", v48);
  }

  v49 = &v46[v36];
  v50 = &v46[144 * v42];
  bzero(v49, 144 * ((144 * v38 - 144) / 0x90) + 144);
  v51 = &v49[144 * ((144 * v38 - 144) / 0x90) + 144];
  v52 = *(v17 + 184);
  v53 = *(v17 + 192);
  v54 = &v49[v52 - v53];
  if (v53 != v52)
  {
    v811 = v51;
    v813 = v50;
    v55 = *(v17 + 184);
    v56 = v54;
    do
    {
      *v56 = *v55;
      *v55 = 0;
      *(v55 + 8) = 0;
      *(v56 + 1) = *(v55 + 16);
      *(v56 + 4) = *(v55 + 32);
      *(v55 + 24) = 0;
      *(v55 + 32) = 0;
      v57 = *(v55 + 40);
      v58 = *(v55 + 56);
      *(v56 + 18) = *(v55 + 72);
      *(v56 + 56) = v58;
      *(v56 + 40) = v57;
      v59 = *(v55 + 76);
      *(v56 + 92) = *(v55 + 92);
      *(v56 + 76) = v59;
      v60 = *(v55 + 104);
      v61 = *(v55 + 120);
      *(v56 + 17) = *(v55 + 136);
      *(v56 + 120) = v61;
      *(v56 + 104) = v60;
      v55 += 144;
      v56 += 144;
    }

    while (v55 != v53);
    do
    {
      v62 = v52[4];
      if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v62->__on_zero_shared)(v62);
        std::__shared_weak_count::__release_weak(v62);
      }

      v10.__d_.__rep_ = v52[1];
      if (v10.__d_.__rep_)
      {
        std::__shared_weak_count::__release_weak(v10.__d_.__rep_);
      }

      v52 += 18;
    }

    while (v52 != v53);
    v52 = *(v17 + 184);
    v51 = v811;
    v50 = v813;
  }

  *(v17 + 184) = v54;
  *(v17 + 192) = v51;
  *(v17 + 200) = v50;
  if (v52)
  {
    v65 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVenueFeature>(v65, v52);
  }

LABEL_62:
  v67 = *(*a3 + 184);
  v66 = *(*a3 + 192);
  v68 = geo::codec::zone_mallocator::instance(v10.__d_.__rep_);
  v69 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<long long>(v68, 0x8E38E38E38E38E39 * ((v66 - v67) >> 4));
  v71 = *(*a3 + 184);
  v70 = *(*a3 + 192);
  v72 = geo::codec::zone_mallocator::instance(v69);
  v73 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<long long>(v72, 0x8E38E38E38E38E39 * ((v70 - v71) >> 4));
  v74 = v73;
  if (!v69)
  {
    v25 = fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 3309);
    v15 = 0;
    v107 = 0;
    v108 = 0;
    goto LABEL_139;
  }

  v812 = v69;
  v814 = v73;
  if (!v73)
  {
    v809 = 0;
    v108 = 0;
    v109 = 3310;
    goto LABEL_137;
  }

  if (v30)
  {
    v75 = 0;
    while (1)
    {
      v77 = *a3;
      v78 = a3[1];
      v79 = *(*a3 + 184);
      if (v78)
      {
        atomic_fetch_add_explicit((v78 + 16), 1uLL, memory_order_relaxed);
      }

      v80 = (v79 + 144 * v75);
      v81 = v80[1];
      *v80 = v77;
      v80[1] = v78;
      if (v81)
      {
        std::__shared_weak_count::__release_weak(v81);
      }

      v82 = v8[3];
      v83 = 8 * v8[2];
      if (v82 + 64 > v83)
      {
        v809 = 0;
        v108 = 0;
        v109 = 3317;
        goto LABEL_137;
      }

      v84 = 0;
      v85 = *v815;
      v86 = 64;
      do
      {
        v87 = 8 - (v82 & 7);
        if (v86 < v87)
        {
          v87 = v86;
        }

        v84 = (*(v85 + (v82 >> 3)) >> (8 - (v82 & 7) - v87)) & ~(-1 << v87) | (v84 << v87);
        v82 += v87;
        *v21 = v82;
        v86 -= v87;
      }

      while (v86);
      v80[13] = v84;
      if (v82 + 5 > v83)
      {
        goto LABEL_122;
      }

      v88 = 0;
      v89 = 5;
      do
      {
        v90 = 8 - (v82 & 7);
        if (v89 < v90)
        {
          v90 = v89;
        }

        v88 = (*(v85 + (v82 >> 3)) >> (8 - (v82 & 7) - v90)) & ~(-1 << v90) | (v88 << v90);
        v82 += v90;
        *v21 = v82;
        v89 -= v90;
      }

      while (v89);
      v91 = (v88 + 1);
      if (v82 + v91 > v83)
      {
LABEL_122:
        v809 = 0;
        v108 = 0;
        v109 = 3320;
        goto LABEL_137;
      }

      if (v88 == -1)
      {
        goto LABEL_94;
      }

      v92 = 0;
      do
      {
        v93 = 8 - (v82 & 7);
        if (v91 < v93)
        {
          v93 = v91;
        }

        v92 = (*(v85 + (v82 >> 3)) >> (8 - (v82 & 7) - v93)) & ~(-1 << v93) | (v92 << v93);
        v82 += v93;
        *v21 = v82;
        v91 -= v93;
      }

      while (v91);
      if (!v92)
      {
LABEL_94:
        v97 = 0;
      }

      else
      {
        v94 = v82 + 1;
        if (v82 + 1 > v83)
        {
          goto LABEL_122;
        }

        v95 = *(v85 + (v82 >> 3));
        *v21 = v94;
        v96 = ((v95 >> (~v82 & 7)) & 1) != 0 ? -v92 : v92;
        v97 = v96;
        v82 = v94;
      }

      if (v82 + 5 > v83)
      {
        break;
      }

      v98 = 0;
      v99 = 5;
      do
      {
        v100 = 8 - (v82 & 7);
        if (v99 < v100)
        {
          v100 = v99;
        }

        v98 = (*(v85 + (v82 >> 3)) >> (8 - (v82 & 7) - v100)) & ~(-1 << v100) | (v98 << v100);
        v82 += v100;
        *v21 = v82;
        v99 -= v100;
      }

      while (v99);
      v101 = (v98 + 1);
      if (v82 + v101 > v83)
      {
        break;
      }

      if (v98 == -1)
      {
        goto LABEL_66;
      }

      v102 = 0;
      do
      {
        v103 = 8 - (v82 & 7);
        if (v101 < v103)
        {
          v103 = v101;
        }

        v102 = (*(v85 + (v82 >> 3)) >> (8 - (v82 & 7) - v103)) & ~(-1 << v103) | (v102 << v103);
        v82 += v103;
        *v21 = v82;
        v101 -= v103;
      }

      while (v101);
      if (!v102)
      {
LABEL_66:
        v76 = 0;
      }

      else
      {
        v104 = v82 + 1;
        if (v82 + 1 > v83)
        {
          break;
        }

        v105 = *(v85 + (v82 >> 3));
        *v21 = v104;
        if ((v105 >> (~v82 & 7)))
        {
          v106 = -v102;
        }

        else
        {
          v106 = v102;
        }

        v76 = v106;
        v82 = v104;
      }

      *(v812 + v75) = v97;
      v814[v75++] = v76;
      if (v75 == v30)
      {
        goto LABEL_115;
      }
    }

    v809 = 0;
    v108 = 0;
    v109 = 3321;
    goto LABEL_137;
  }

  v82 = v8[3];
  v83 = 8 * v8[2];
LABEL_115:
  if (v82 + 5 > v83)
  {
    goto LABEL_121;
  }

  v110 = 0;
  v111 = *v815;
  v112 = 5;
  do
  {
    v113 = 8 - (v82 & 7);
    if (v112 < v113)
    {
      v113 = v112;
    }

    v110 = (*(v111 + (v82 >> 3)) >> (8 - (v82 & 7) - v113)) & ~(-1 << v113) | (v110 << v113);
    v82 += v113;
    *v21 = v82;
    v112 -= v113;
  }

  while (v112);
  v114 = (v110 + 1);
  if (v82 + v114 > v83)
  {
LABEL_121:
    v809 = 0;
    v108 = 0;
    v109 = 3327;
    goto LABEL_137;
  }

  v115 = 0;
  if (v114)
  {
    do
    {
      v116 = 8 - (v82 & 7);
      if (v114 < v116)
      {
        v116 = v114;
      }

      v115 = (*(v111 + (v82 >> 3)) >> (8 - (v82 & 7) - v116)) & ~(-1 << v116) | (v115 << v116);
      v82 += v116;
      *v21 = v82;
      v114 -= v116;
    }

    while (v114);
  }

  if (v82 + 5 > v83)
  {
    v809 = 0;
    v108 = 0;
    v109 = 3330;
    goto LABEL_137;
  }

  v117 = 0;
  v118 = 5;
  do
  {
    v119 = 8 - (v82 & 7);
    if (v118 < v119)
    {
      v119 = v118;
    }

    v117 = (*(v111 + (v82 >> 3)) >> (8 - (v82 & 7) - v119)) & ~(-1 << v119) | (v117 << v119);
    v82 += v119;
    *v21 = v82;
    v118 -= v119;
  }

  while (v118);
  if (v82 + 5 > v83)
  {
    v809 = 0;
    v108 = 0;
    v109 = 3332;
    goto LABEL_137;
  }

  v125 = 0;
  v126 = (v117 + 1);
  v127 = 5;
  do
  {
    v128 = 8 - (v82 & 7);
    if (v127 < v128)
    {
      v128 = v127;
    }

    v125 = (*(v111 + (v82 >> 3)) >> (8 - (v82 & 7) - v128)) & ~(-1 << v128) | (v125 << v128);
    v82 += v128;
    *v21 = v82;
    v127 -= v128;
  }

  while (v127);
  if (v115)
  {
    for (j = 0; j != v115; ++j)
    {
      v130 = v8[3];
      v131 = 8 * v8[2];
      if (v130 + v808 > v131)
      {
        v809 = 0;
        v108 = 0;
        v109 = 3338;
        goto LABEL_137;
      }

      LODWORD(v132) = 0;
      v133 = *v815;
      v134 = v808;
      do
      {
        v135 = 8 - (v130 & 7);
        if (v134 < v135)
        {
          v135 = v134;
        }

        v132 = (*(v133 + (v130 >> 3)) >> (8 - (v130 & 7) - v135)) & ~(-1 << v135) | (v132 << v135);
        v130 += v135;
        *v21 = v130;
        v134 -= v135;
      }

      while (v134);
      if (v130 + v126 > v131)
      {
        v809 = 0;
        v108 = 0;
        v109 = 3339;
        goto LABEL_137;
      }

      v136 = 0;
      if (v126)
      {
        v137 = *v815;
        v138 = v126;
        do
        {
          v139 = 8 - (v130 & 7);
          if (v138 < v139)
          {
            v139 = v138;
          }

          v136 = (*(v137 + (v130 >> 3)) >> (8 - (v130 & 7) - v139)) & ~(-1 << v139) | (v136 << v139);
          v130 += v139;
          *v21 = v130;
          v138 -= v139;
        }

        while (v138);
      }

      v140 = *a3;
      v141 = *(*a3 + 184);
      if (0x8E38E38E38E38E39 * ((*(*a3 + 192) - v141) >> 4) <= v132)
      {
        v809 = 0;
        v108 = 0;
        v109 = 3340;
        goto LABEL_137;
      }

      v143 = v140 + 504;
      v142 = *(v140 + 504);
      if (0x6DB6DB6DB6DB6DB7 * ((*(v143 + 8) - v142) >> 5) <= v136)
      {
        v809 = 0;
        v108 = 0;
        v109 = 3341;
        goto LABEL_137;
      }

      v128 = v142 + 224 * v136;
      v144 = v141 + 144 * v132;
      *(v128 + 120) = *(v144 + 104);
      *(v144 + 112) = *(v128 + 88);
    }

    v82 = v8[3];
    v83 = 8 * v8[2];
  }

  if (v82 + 5 > v83)
  {
    v809 = 0;
    v108 = 0;
    v109 = 3350;
    goto LABEL_137;
  }

  v803 = v126;
  v145 = 0;
  v801 = (v125 + 1);
  v146 = *v815;
  v147 = 5;
  do
  {
    v148 = 8 - (v82 & 7);
    if (v147 < v148)
    {
      v148 = v147;
    }

    v145 = (*(v146 + (v82 >> 3)) >> (8 - (v82 & 7) - v148)) & ~(-1 << v148) | (v145 << v148);
    v82 += v148;
    *v21 = v82;
    v147 -= v148;
  }

  while (v147);
  v149 = (v145 + 1);
  if (v82 + v149 > v83)
  {
    v809 = 0;
    v108 = 0;
    v109 = 3353;
    goto LABEL_137;
  }

  v802 = v149;
  v150 = 0;
  if (v149)
  {
    v151 = v149;
    do
    {
      v152 = 8 - (v82 & 7);
      if (v151 < v152)
      {
        v152 = v151;
      }

      v150 = (*(v146 + (v82 >> 3)) >> (8 - (v82 & 7) - v152)) & ~(-1 << v152) | (v150 << v152);
      v82 += v152;
      *v21 = v82;
      v151 -= v152;
    }

    while (v151);
  }

  v153 = *a3;
  v154 = v150;
  v155 = *(*a3 + 216);
  v156 = *(*a3 + 224);
  v157 = v156 - v155;
  v158 = 0x86BCA1AF286BCA1BLL * ((v156 - v155) >> 3);
  v159 = v154 - v158;
  if (v154 > v158)
  {
    v160 = v153[29];
    if (0x86BCA1AF286BCA1BLL * ((v160 - v156) >> 3) < v159)
    {
      v161 = 0x86BCA1AF286BCA1BLL * ((v160 - v155) >> 3);
      if (2 * v161 > v154)
      {
        v154 = 2 * v161;
      }

      if (v161 >= 0xD79435E50D7943)
      {
        v162 = 0x1AF286BCA1AF286;
      }

      else
      {
        v162 = v154;
      }

      v163 = geo::codec::zone_mallocator::instance(v128);
      v164 = pthread_rwlock_rdlock((v163 + 32));
      if (v164)
      {
        geo::read_write_lock::logFailure(v164, "read lock", v165);
      }

      v166 = malloc_type_zone_malloc(*v163, 152 * v162, 0x1070040FAAA1E57uLL);
      atomic_fetch_add((v163 + 24), 1u);
      v167 = pthread_rwlock_unlock((v163 + 32));
      if (v167)
      {
        geo::read_write_lock::logFailure(v167, "unlock", v168);
      }

      v169 = &v166[v157];
      v810 = &v166[152 * v162];
      bzero(&v166[v157], 152 * ((152 * v159 - 152) / 0x98) + 152);
      v170 = &v166[152 * ((152 * v159 - 152) / 0x98) + 152 + v157];
      v171 = v153[27];
      v172 = v153[28];
      v173 = &v169[v171 - v172];
      if (v172 != v171)
      {
        v174 = v153[27];
        v175 = &v169[v171 - v172];
        do
        {
          *v175 = *v174;
          *v174 = 0;
          *(v174 + 8) = 0;
          *(v175 + 1) = *(v174 + 16);
          *(v175 + 4) = *(v174 + 32);
          *(v174 + 24) = 0;
          *(v174 + 32) = 0;
          v176 = *(v174 + 40);
          v177 = *(v174 + 56);
          *(v175 + 18) = *(v174 + 72);
          *(v175 + 56) = v177;
          *(v175 + 40) = v176;
          v178 = *(v174 + 76);
          *(v175 + 92) = *(v174 + 92);
          *(v175 + 76) = v178;
          v179 = *(v174 + 104);
          v180 = *(v174 + 120);
          *(v175 + 136) = *(v174 + 136);
          *(v175 + 120) = v180;
          *(v175 + 104) = v179;
          v174 += 152;
          v175 += 152;
        }

        while (v174 != v172);
        do
        {
          v181 = *(v171 + 4);
          if (v181 && !atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v181->__on_zero_shared)(v181);
            std::__shared_weak_count::__release_weak(v181);
          }

          v128 = *(v171 + 1);
          if (v128)
          {
            std::__shared_weak_count::__release_weak(v128);
          }

          v171 += 152;
        }

        while (v171 != v172);
        v171 = v153[27];
      }

      v153[27] = v173;
      v153[28] = v170;
      v153[29] = v810;
      if (v171)
      {
        v184 = geo::codec::zone_mallocator::instance(v128);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVenueBuildingFeature>(v184, v171);
      }

      goto LABEL_218;
    }

    bzero(*(*a3 + 224), 152 * ((152 * v159 - 152) / 0x98) + 152);
    k = v156 + 152 * ((152 * v159 - 152) / 0x98) + 152;
    goto LABEL_214;
  }

  if (v154 < v158)
  {
    for (k = v155 + 152 * v154; v156 != k; v156 -= 152)
    {
      v183 = *(v156 - 120);
      if (v183 && !atomic_fetch_add(&v183->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v183->__on_zero_shared)(v183);
        std::__shared_weak_count::__release_weak(v183);
      }

      v128 = *(v156 - 144);
      if (v128)
      {
        std::__shared_weak_count::__release_weak(v128);
      }
    }

LABEL_214:
    v153[28] = k;
  }

LABEL_218:
  v186 = *(*a3 + 216);
  v185 = *(*a3 + 224);
  v187 = geo::codec::zone_mallocator::instance(v128);
  v188 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v187, 0x86BCA1AF286BCA1BLL * ((v185 - v186) >> 3));
  v190 = *(*a3 + 216);
  v189 = *(*a3 + 224);
  v191 = geo::codec::zone_mallocator::instance(v188);
  v192 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v191, 0x86BCA1AF286BCA1BLL * ((v189 - v190) >> 3));
  v108 = v192;
  v809 = v188;
  v193 = *a3;
  v194 = *(*a3 + 216);
  if (*(*a3 + 224) == v194)
  {
    v198 = v8[3];
    v200 = 8 * v8[2];
  }

  else
  {
    v195 = 0;
    v804 = 0;
    do
    {
      v196 = a3[1];
      if (v196)
      {
        atomic_fetch_add_explicit((v196 + 16), 1uLL, memory_order_relaxed);
      }

      v197 = v194 + 152 * v195;
      v192 = *(v197 + 8);
      *v197 = v193;
      *(v197 + 8) = v196;
      if (v192)
      {
        std::__shared_weak_count::__release_weak(v192);
      }

      v198 = v8[3];
      v199 = v808;
      v200 = 8 * v8[2];
      if (v198 + v808 > v200)
      {
        v109 = 3364;
        goto LABEL_137;
      }

      LODWORD(v201) = 0;
      v202 = *v815;
      do
      {
        v203 = 8 - (v198 & 7);
        if (v199 < v203)
        {
          v203 = v199;
        }

        v201 = (*(v202 + (v198 >> 3)) >> (8 - (v198 & 7) - v203)) & ~(-1 << v203) | (v201 << v203);
        v198 += v203;
        *v21 = v198;
        v199 -= v203;
      }

      while (v199);
      *(v197 + 144) = v201;
      if (v198 + 64 > v200)
      {
        v109 = 3367;
        goto LABEL_137;
      }

      v204 = 0;
      v205 = *v815;
      v206 = 64;
      do
      {
        v207 = 8 - (v198 & 7);
        if (v206 < v207)
        {
          v207 = v206;
        }

        v204 = (*(v205 + (v198 >> 3)) >> (8 - (v198 & 7) - v207)) & ~(-1 << v207) | (v204 << v207);
        v198 += v207;
        *v21 = v198;
        v206 -= v207;
      }

      while (v206);
      *(v197 + 104) = v204;
      if (v198 + 64 > v200)
      {
        v109 = 3368;
        goto LABEL_137;
      }

      v208 = 0;
      v209 = 64;
      do
      {
        v210 = 8 - (v198 & 7);
        if (v209 < v210)
        {
          v210 = v209;
        }

        v208 = (*(v205 + (v198 >> 3)) >> (8 - (v198 & 7) - v210)) & ~(-1 << v210) | (v208 << v210);
        v198 += v210;
        *v21 = v198;
        v209 -= v210;
      }

      while (v209);
      *(v197 + 112) = v208;
      if (v198 + 5 > v200)
      {
        goto LABEL_284;
      }

      v211 = 0;
      v212 = 5;
      do
      {
        v213 = 8 - (v198 & 7);
        if (v212 < v213)
        {
          v213 = v212;
        }

        v211 = (*(v205 + (v198 >> 3)) >> (8 - (v198 & 7) - v213)) & ~(-1 << v213) | (v211 << v213);
        v198 += v213;
        *v21 = v198;
        v212 -= v213;
      }

      while (v212);
      v214 = (v211 + 1);
      if (v198 + v214 > v200)
      {
LABEL_284:
        v109 = 3370;
        goto LABEL_137;
      }

      v215 = 0;
      if (v214)
      {
        do
        {
          v216 = 8 - (v198 & 7);
          if (v214 < v216)
          {
            v216 = v214;
          }

          v215 = (*(v205 + (v198 >> 3)) >> (8 - (v198 & 7) - v216)) & ~(-1 << v216) | (v215 << v216);
          v198 += v216;
          *v21 = v198;
          v214 -= v216;
        }

        while (v214);
        if (v215)
        {
          if (v198 + 1 > v200)
          {
            goto LABEL_284;
          }

          v217 = *(v205 + (v198 >> 3));
          *v21 = v198 + 1;
          if ((v217 >> (~v198 & 7)))
          {
            v215 = -v215;
          }

          ++v198;
          if (v215 > 32766)
          {
            v109 = 3371;
            goto LABEL_137;
          }
        }
      }

      *(v197 + 120) = v215;
      if (v198 + 5 > v200)
      {
        goto LABEL_285;
      }

      v218 = 0;
      v219 = 5;
      do
      {
        v220 = 8 - (v198 & 7);
        if (v219 < v220)
        {
          v220 = v219;
        }

        v218 = (*(v205 + (v198 >> 3)) >> (8 - (v198 & 7) - v220)) & ~(-1 << v220) | (v218 << v220);
        v198 += v220;
        *v21 = v198;
        v219 -= v220;
      }

      while (v219);
      v221 = (v218 + 1);
      if (v198 + v221 > v200)
      {
LABEL_285:
        v109 = 3373;
        goto LABEL_137;
      }

      v222 = 0;
      if (v221)
      {
        do
        {
          v223 = 8 - (v198 & 7);
          if (v221 < v223)
          {
            v223 = v221;
          }

          v222 = (*(v205 + (v198 >> 3)) >> (8 - (v198 & 7) - v223)) & ~(-1 << v223) | (v222 << v223);
          v198 += v223;
          *v21 = v198;
          v221 -= v223;
        }

        while (v221);
      }

      *(v809 + v195) = v222;
      if (v198 + 5 > v200)
      {
        goto LABEL_310;
      }

      v224 = 0;
      v225 = 5;
      do
      {
        v226 = 8 - (v198 & 7);
        if (v225 < v226)
        {
          v226 = v225;
        }

        v224 = (*(v205 + (v198 >> 3)) >> (8 - (v198 & 7) - v226)) & ~(-1 << v226) | (v224 << v226);
        v198 += v226;
        *v21 = v198;
        v225 -= v226;
      }

      while (v225);
      v227 = (v224 + 1);
      if (v198 + v227 > v200)
      {
LABEL_310:
        v109 = 3374;
        goto LABEL_137;
      }

      v228 = 0;
      if (v227)
      {
        do
        {
          v229 = 8 - (v198 & 7);
          if (v227 < v229)
          {
            v229 = v227;
          }

          v228 = (*(v205 + (v198 >> 3)) >> (8 - (v198 & 7) - v229)) & ~(-1 << v229) | (v228 << v229);
          v198 += v229;
          *v21 = v198;
          v227 -= v229;
        }

        while (v227);
      }

      v108[v195] = v228;
      v193 = *a3;
      v194 = *(*a3 + 216);
      v195 = ++v804;
    }

    while (0x86BCA1AF286BCA1BLL * ((*(*a3 + 224) - v194) >> 3) > v804);
  }

  if (v198 + 5 > v200)
  {
    goto LABEL_283;
  }

  v230 = 0;
  v231 = *v815;
  v232 = 5;
  do
  {
    v233 = 8 - (v198 & 7);
    if (v232 < v233)
    {
      v233 = v232;
    }

    v230 = (*(v231 + (v198 >> 3)) >> (8 - (v198 & 7) - v233)) & ~(-1 << v233) | (v230 << v233);
    v198 += v233;
    *v21 = v198;
    v232 -= v233;
  }

  while (v232);
  v234 = (v230 + 1);
  if (v198 + v234 > v200)
  {
LABEL_283:
    v109 = 3378;
    goto LABEL_137;
  }

  if (v234)
  {
    v235 = 0;
    do
    {
      v236 = 8 - (v198 & 7);
      if (v234 < v236)
      {
        v236 = v234;
      }

      v235 = (*(v231 + (v198 >> 3)) >> (8 - (v198 & 7) - v236)) & ~(-1 << v236) | (v235 << v236);
      v198 += v236;
      *v21 = v198;
      v234 -= v236;
    }

    while (v234);
    if (v235)
    {
      v237 = 0;
      v238 = *a3;
      v192 = 8;
      do
      {
        if (v198 + v802 > v200)
        {
          v109 = 3383;
          goto LABEL_137;
        }

        v239 = v802;
        if (v802)
        {
          v239 = 0;
          v240 = v802;
          do
          {
            v241 = 8 - (v198 & 7);
            if (v240 < v241)
            {
              v241 = v240;
            }

            v239 = (*(v231 + (v198 >> 3)) >> (8 - (v198 & 7) - v241)) & ~(-1 << v241) | (v239 << v241);
            v198 += v241;
            *v21 = v198;
            v240 -= v241;
          }

          while (v240);
        }

        if (v198 + v803 > v200)
        {
          v109 = 3384;
          goto LABEL_137;
        }

        v242 = v803;
        if (v803)
        {
          v242 = 0;
          v243 = v803;
          do
          {
            v244 = 8 - (v198 & 7);
            if (v243 < v244)
            {
              v244 = v243;
            }

            v242 = (*(v231 + (v198 >> 3)) >> (8 - (v198 & 7) - v244)) & ~(-1 << v244) | (v242 << v244);
            v198 += v244;
            *v21 = v198;
            v243 -= v244;
          }

          while (v243);
        }

        v245 = v238[27];
        if (0x86BCA1AF286BCA1BLL * ((v238[28] - v245) >> 3) <= v239)
        {
          v109 = 3385;
          goto LABEL_137;
        }

        v246 = v238[63];
        if (0x6DB6DB6DB6DB6DB7 * ((v238[64] - v246) >> 5) <= v242)
        {
          v109 = 3386;
          goto LABEL_137;
        }

        v247 = v246 + 224 * v242;
        v248 = v245 + 152 * v239;
        *(v247 + 128) = *(v248 + 104);
        *(v247 + 120) = *(v238[23] + 144 * *(v248 + 144) + 104);
        ++v237;
      }

      while (v237 != v235);
    }
  }

  if (v198 + 5 > v200)
  {
    v109 = 3394;
    goto LABEL_137;
  }

  v249 = 0;
  v250 = 5;
  do
  {
    v251 = 8 - (v198 & 7);
    if (v250 < v251)
    {
      v251 = v250;
    }

    v249 = (*(v231 + (v198 >> 3)) >> (8 - (v198 & 7) - v251)) & ~(-1 << v251) | (v249 << v251);
    v198 += v251;
    *v21 = v198;
    v250 -= v251;
  }

  while (v250);
  v805 = (v249 + 1);
  if (v198 + v805 > v200)
  {
    v109 = 3398;
    goto LABEL_137;
  }

  if (v249 == -1)
  {
    v252 = 0;
    v255 = 0;
  }

  else
  {
    v252 = 0;
    v253 = (v249 + 1);
    do
    {
      v254 = 8 - (v198 & 7);
      if (v253 < v254)
      {
        v254 = v253;
      }

      v252 = (*(v231 + (v198 >> 3)) >> (8 - (v198 & 7) - v254)) & ~(-1 << v254) | (v252 << v254);
      v198 += v254;
      *v21 = v198;
      v253 -= v254;
    }

    while (v253);
    if (v198 + v805 > v200)
    {
      v109 = 3399;
      goto LABEL_137;
    }

    v255 = 0;
    v256 = v805;
    do
    {
      v257 = 8 - (v198 & 7);
      if (v256 < v257)
      {
        v257 = v256;
      }

      v255 = (*(v231 + (v198 >> 3)) >> (8 - (v198 & 7) - v257)) & ~(-1 << v257) | (v255 << v257);
      v198 += v257;
      *v21 = v198;
      v256 -= v257;
    }

    while (v256);
  }

  v258 = v255 + v252;
  *(*a3 + 248) = v258;
  v259 = geo::codec::zone_mallocator::instance(v192);
  v260 = pthread_rwlock_rdlock((v259 + 32));
  if (v260)
  {
    geo::read_write_lock::logFailure(v260, "read lock", v261);
  }

  v262 = malloc_type_zone_calloc(*v259, v258, 0x40uLL, 0x10500401EF3B0E0uLL);
  atomic_fetch_add((v259 + 24), 1u);
  v263 = pthread_rwlock_unlock((v259 + 32));
  if (v263)
  {
    geo::read_write_lock::logFailure(v263, "unlock", v264);
  }

  *(*a3 + 256) = v262;
  if (!v262)
  {
    v109 = 3402;
    goto LABEL_137;
  }

  v265 = v8[3];
  v266 = 8 * v8[2];
  if (v265 + 5 > v266)
  {
    v109 = 3404;
    goto LABEL_137;
  }

  v267 = 0;
  v268 = *v815;
  v269 = 5;
  do
  {
    v270 = 8 - (v265 & 7);
    if (v269 < v270)
    {
      v270 = v269;
    }

    v267 = (*(v268 + (v265 >> 3)) >> (8 - (v265 & 7) - v270)) & ~(-1 << v270) | (v267 << v270);
    v265 += v270;
    *v21 = v265;
    v269 -= v270;
  }

  while (v269);
  v800 = (v267 + 1);
  if (v252)
  {
    v271 = 0;
    v272 = v252;
    v273 = *a3;
    v274 = *(*a3 + 256);
    v263 = -1;
    do
    {
      if (v265 + v808 > v266)
      {
        v109 = 3411;
        goto LABEL_137;
      }

      LODWORD(v275) = 0;
      v276 = v274 + (v271 << 6);
      v277 = v808;
      do
      {
        v278 = 8 - (v265 & 7);
        if (v277 < v278)
        {
          v278 = v277;
        }

        v275 = (*(v268 + (v265 >> 3)) >> (8 - (v265 & 7) - v278)) & ~(-1 << v278) | (v275 << v278);
        v265 += v278;
        *v21 = v265;
        v277 -= v278;
      }

      while (v277);
      if (0x8E38E38E38E38E39 * ((*(v273 + 192) - *(v273 + 184)) >> 4) <= v275)
      {
        v109 = 3412;
        goto LABEL_137;
      }

      *(v276 + 48) = v275;
      *(v276 + 13) = 1;
      if (v265 + 64 > v266)
      {
        v109 = 3416;
        goto LABEL_137;
      }

      v279 = 0;
      v280 = 64;
      do
      {
        v281 = 8 - (v265 & 7);
        if (v280 < v281)
        {
          v281 = v280;
        }

        v279 = (*(v268 + (v265 >> 3)) >> (8 - (v265 & 7) - v281)) & ~(-1 << v281) | (v279 << v281);
        v265 += v281;
        *v21 = v265;
        v280 -= v281;
      }

      while (v280);
      *v276 = v279;
      if (v265 + 5 > v266)
      {
        goto LABEL_459;
      }

      v282 = 0;
      v283 = 5;
      do
      {
        v284 = 8 - (v265 & 7);
        if (v283 < v284)
        {
          v284 = v283;
        }

        v282 = (*(v268 + (v265 >> 3)) >> (8 - (v265 & 7) - v284)) & ~(-1 << v284) | (v282 << v284);
        v265 += v284;
        *v21 = v265;
        v283 -= v284;
      }

      while (v283);
      v285 = (v282 + 1);
      if (v265 + v285 > v266)
      {
LABEL_459:
        v109 = 3418;
        goto LABEL_137;
      }

      v286 = 0;
      if (v285)
      {
        do
        {
          v287 = 8 - (v265 & 7);
          if (v285 < v287)
          {
            v287 = v285;
          }

          v286 = (*(v268 + (v265 >> 3)) >> (8 - (v265 & 7) - v287)) & ~(-1 << v287) | (v286 << v287);
          v265 += v287;
          *v21 = v265;
          v285 -= v287;
        }

        while (v285);
        if (v286)
        {
          if (v265 + 1 > v266)
          {
            goto LABEL_459;
          }

          v288 = *(v268 + (v265 >> 3));
          *v21 = v265 + 1;
          if ((v288 >> (~v265 & 7)))
          {
            v286 = -v286;
          }

          ++v265;
          if (v286 > 32766)
          {
            v109 = 3419;
            goto LABEL_137;
          }
        }
      }

      *(v276 + 8) = v286;
      v289 = v265 + 1;
      if (v265 + 1 > v266)
      {
        v109 = 3423;
        goto LABEL_137;
      }

      v290 = *(v268 + (v265 >> 3));
      *v21 = v289;
      if ((v290 >> (~v265 & 7)))
      {
        if (v289 + v800 > v266)
        {
          v109 = 3427;
          goto LABEL_137;
        }

        v291 = v800;
        if (v800)
        {
          v291 = 0;
          v292 = v800;
          do
          {
            v293 = 8 - (v289 & 7);
            if (v292 < v293)
            {
              v293 = v292;
            }

            v291 = (*(v268 + (v289 >> 3)) >> (8 - (v289 & 7) - v293)) & ~(-1 << v293) | (v291 << v293);
            v289 += v293;
            *v21 = v289;
            v292 -= v293;
          }

          while (v292);
          if (v289 + v800 > v266)
          {
            v109 = 3428;
            goto LABEL_137;
          }

          v294 = 0;
          v295 = v800;
          do
          {
            v296 = 8 - (v289 & 7);
            if (v295 < v296)
            {
              v296 = v295;
            }

            v294 = (*(v268 + (v289 >> 3)) >> (8 - (v289 & 7) - v296)) & ~(-1 << v296) | (v294 << v296);
            v289 += v296;
            *v21 = v289;
            v295 -= v296;
          }

          while (v295);
        }

        else
        {
          v294 = 0;
        }

        if (v807 <= v291)
        {
          v109 = 3429;
          goto LABEL_137;
        }

        if (v807 <= v294)
        {
          v109 = 3430;
          goto LABEL_137;
        }

        *(v276 + 32) = v806 + v291;
        v297 = (v806 + v294);
      }

      else
      {
        *(v276 + 32) = "";
        v297 = "";
      }

      v265 = v289;
      *(v276 + 24) = v297;
      ++v271;
    }

    while (v271 != v252);
  }

  else
  {
    v272 = 0;
  }

  v298 = *a3;
  v299 = *(*a3 + 248);
  if (v299 <= v272)
  {
    v317 = v265;
  }

  else
  {
    v300 = v298[32];
    v263 = -1;
    do
    {
      if (v265 + v802 > v266)
      {
        v109 = 3441;
        goto LABEL_137;
      }

      if (v802)
      {
        v301 = 0;
        v302 = v802;
        do
        {
          v303 = 8 - (v265 & 7);
          if (v302 < v303)
          {
            v303 = v302;
          }

          v301 = (*(v268 + (v265 >> 3)) >> (8 - (v265 & 7) - v303)) & ~(-1 << v303) | (v301 << v303);
          v265 += v303;
          *v21 = v265;
          v302 -= v303;
        }

        while (v302);
      }

      else
      {
        v301 = 0;
      }

      v304 = v301;
      v305 = v298[27];
      if (0x86BCA1AF286BCA1BLL * ((v298[28] - v305) >> 3) <= v304)
      {
        v109 = 3442;
        goto LABEL_137;
      }

      v306 = v300 + (v272 << 6);
      *(v306 + 56) = v304;
      *(v306 + 48) = *(v305 + 152 * v304 + 144);
      *(v306 + 13) = 0;
      if (v265 + 64 > v266)
      {
        v109 = 3447;
        goto LABEL_137;
      }

      v307 = 0;
      v308 = 64;
      do
      {
        v309 = 8 - (v265 & 7);
        if (v308 < v309)
        {
          v309 = v308;
        }

        v307 = (*(v268 + (v265 >> 3)) >> (8 - (v265 & 7) - v309)) & ~(-1 << v309) | (v307 << v309);
        v265 += v309;
        *v21 = v265;
        v308 -= v309;
      }

      while (v308);
      *v306 = v307;
      if (v265 + 5 > v266)
      {
        goto LABEL_495;
      }

      v310 = 0;
      v311 = 5;
      do
      {
        v312 = 8 - (v265 & 7);
        if (v311 < v312)
        {
          v312 = v311;
        }

        v310 = (*(v268 + (v265 >> 3)) >> (8 - (v265 & 7) - v312)) & ~(-1 << v312) | (v310 << v312);
        v265 += v312;
        *v21 = v265;
        v311 -= v312;
      }

      while (v311);
      v313 = (v310 + 1);
      if (v265 + v313 > v266)
      {
LABEL_495:
        v109 = 3449;
        goto LABEL_137;
      }

      v314 = 0;
      if (v313)
      {
        do
        {
          v315 = 8 - (v265 & 7);
          if (v313 < v315)
          {
            v315 = v313;
          }

          v314 = (*(v268 + (v265 >> 3)) >> (8 - (v265 & 7) - v315)) & ~(-1 << v315) | (v314 << v315);
          v265 += v315;
          *v21 = v265;
          v313 -= v315;
        }

        while (v313);
        if (v314)
        {
          if (v265 + 1 > v266)
          {
            goto LABEL_495;
          }

          v316 = *(v268 + (v265 >> 3));
          *v21 = v265 + 1;
          if ((v316 >> (~v265 & 7)))
          {
            v314 = -v314;
          }

          ++v265;
          if (v314 > 32766)
          {
            v109 = 3450;
            goto LABEL_137;
          }
        }
      }

      *(v306 + 8) = v314;
      v317 = v265 + 1;
      if (v265 + 1 > v266)
      {
        v109 = 3454;
        goto LABEL_137;
      }

      v318 = *(v268 + (v265 >> 3));
      *v21 = v317;
      if ((v318 >> (~v265 & 7)))
      {
        if (v317 + v800 > v266)
        {
          v109 = 3458;
          goto LABEL_137;
        }

        v319 = v800;
        if (v800)
        {
          v319 = 0;
          v320 = v800;
          do
          {
            v321 = 8 - (v317 & 7);
            if (v320 < v321)
            {
              v321 = v320;
            }

            v319 = (*(v268 + (v317 >> 3)) >> (8 - (v317 & 7) - v321)) & ~(-1 << v321) | (v319 << v321);
            v317 += v321;
            *v21 = v317;
            v320 -= v321;
          }

          while (v320);
          if (v317 + v800 > v266)
          {
            v109 = 3459;
            goto LABEL_137;
          }

          v322 = 0;
          v323 = v800;
          do
          {
            v324 = 8 - (v317 & 7);
            if (v323 < v324)
            {
              v324 = v323;
            }

            v322 = (*(v268 + (v317 >> 3)) >> (8 - (v317 & 7) - v324)) & ~(-1 << v324) | (v322 << v324);
            v317 += v324;
            *v21 = v317;
            v323 -= v324;
          }

          while (v323);
        }

        else
        {
          v322 = 0;
        }

        if (v807 <= v319)
        {
          v109 = 3460;
          goto LABEL_137;
        }

        if (v807 <= v322)
        {
          v109 = 3461;
          goto LABEL_137;
        }

        *(v306 + 32) = v806 + v319;
        v325 = (v806 + v322);
      }

      else
      {
        *(v306 + 32) = "";
        v325 = "";
      }

      *(v306 + 24) = v325;
      v265 = v317;
      v272 = ++v252;
    }

    while (v299 > v252);
  }

  if (v317 + 5 > v266)
  {
    goto LABEL_458;
  }

  v326 = 0;
  v327 = 5;
  do
  {
    v328 = 8 - (v317 & 7);
    if (v327 < v328)
    {
      v328 = v327;
    }

    v326 = (*(v268 + (v317 >> 3)) >> (8 - (v317 & 7) - v328)) & ~(-1 << v328) | (v326 << v328);
    v317 += v328;
    *v21 = v317;
    v327 -= v328;
  }

  while (v327);
  v329 = (v326 + 1);
  if (v317 + v329 > v266)
  {
LABEL_458:
    v109 = 3471;
    goto LABEL_137;
  }

  if (v326 != -1)
  {
    v330 = 0;
    do
    {
      v331 = 8 - (v317 & 7);
      if (v329 < v331)
      {
        v331 = v329;
      }

      v330 = (*(v268 + (v317 >> 3)) >> (8 - (v317 & 7) - v331)) & ~(-1 << v331) | (v330 << v331);
      v317 += v331;
      *v21 = v317;
      v329 -= v331;
    }

    while (v329);
    if (v330)
    {
      v332 = 0;
      v333 = *a3;
      do
      {
        if (v317 + v805 > v266)
        {
          v109 = 3474;
          goto LABEL_137;
        }

        v263 = v805;
        if (v805)
        {
          LODWORD(v263) = 0;
          v334 = v805;
          do
          {
            v335 = 8 - (v317 & 7);
            if (v334 < v335)
            {
              v335 = v334;
            }

            v263 = (*(v268 + (v317 >> 3)) >> (8 - (v317 & 7) - v335)) & ~(-1 << v335) | (v263 << v335);
            v317 += v335;
            *v21 = v317;
            v334 -= v335;
          }

          while (v334);
        }

        if (v333[31] <= v263)
        {
          v109 = 3475;
          goto LABEL_137;
        }

        if (v317 + v801 > v266)
        {
          v109 = 3477;
          goto LABEL_137;
        }

        if (v801)
        {
          v336 = 0;
          v337 = v801;
          do
          {
            v338 = 8 - (v317 & 7);
            if (v337 < v338)
            {
              v338 = v337;
            }

            v336 = (*(v268 + (v317 >> 3)) >> (8 - (v317 & 7) - v338)) & ~(-1 << v338) | (v336 << v338);
            v317 += v338;
            *v21 = v317;
            v337 -= v338;
          }

          while (v337);
        }

        else
        {
          v336 = 0;
        }

        v339 = v336;
        v340 = v333[12];
        if (v339 >= (v333[13] - v340) >> 7)
        {
          v109 = 3478;
          goto LABEL_137;
        }

        v341 = v333[32] + (v263 << 6);
        *(v341 + 12) = 1;
        *(v341 + 16) = v339;
        v342 = v340 + (v339 << 7);
        *(v342 + 123) = 3;
        *(v342 + 116) = v263;
        ++v332;
      }

      while (v332 != v330);
    }
  }

  if (v317 + 5 > v266)
  {
    goto LABEL_494;
  }

  v343 = 0;
  v344 = 5;
  do
  {
    v345 = 8 - (v317 & 7);
    if (v344 < v345)
    {
      v345 = v344;
    }

    v343 = (*(v268 + (v317 >> 3)) >> (8 - (v317 & 7) - v345)) & ~(-1 << v345) | (v343 << v345);
    v317 += v345;
    *v21 = v317;
    v344 -= v345;
  }

  while (v344);
  v346 = (v343 + 1);
  if (v317 + v346 > v266)
  {
LABEL_494:
    v109 = 3487;
    goto LABEL_137;
  }

  if (v343 != -1)
  {
    v347 = 0;
    do
    {
      v348 = 8 - (v317 & 7);
      if (v346 < v348)
      {
        v348 = v346;
      }

      v347 = (*(v268 + (v317 >> 3)) >> (8 - (v317 & 7) - v348)) & ~(-1 << v348) | (v347 << v348);
      v317 += v348;
      *v21 = v317;
      v346 -= v348;
    }

    while (v346);
    if (v347)
    {
      v349 = 0;
      v350 = *a3;
      v263 = 8;
      do
      {
        if (v317 + v805 > v266)
        {
          v109 = 3490;
          goto LABEL_137;
        }

        if (v805)
        {
          v351 = 0;
          v352 = v805;
          do
          {
            v353 = 8 - (v317 & 7);
            if (v352 < v353)
            {
              v353 = v352;
            }

            v351 = (*(v268 + (v317 >> 3)) >> (8 - (v317 & 7) - v353)) & ~(-1 << v353) | (v351 << v353);
            v317 += v353;
            *v21 = v317;
            v352 -= v353;
          }

          while (v352);
        }

        else
        {
          v351 = 0;
        }

        v354 = v351;
        if (v350[31] <= v351)
        {
          v109 = 3491;
          goto LABEL_137;
        }

        if (v317 + v803 > v266)
        {
          v109 = 3493;
          goto LABEL_137;
        }

        if (v803)
        {
          v355 = 0;
          v356 = v803;
          do
          {
            v357 = 8 - (v317 & 7);
            if (v356 < v357)
            {
              v357 = v356;
            }

            v355 = (*(v268 + (v317 >> 3)) >> (8 - (v317 & 7) - v357)) & ~(-1 << v357) | (v355 << v357);
            v317 += v357;
            *v21 = v317;
            v356 -= v357;
          }

          while (v356);
        }

        else
        {
          v355 = 0;
        }

        v358 = v355;
        v359 = v350[63];
        if (0x6DB6DB6DB6DB6DB7 * ((v350[64] - v359) >> 5) <= v358)
        {
          v109 = 3494;
          goto LABEL_137;
        }

        v360 = v359 + 224 * v358;
        v361 = v350[32] + (v354 << 6);
        v362 = v350[27] + 152 * *(v361 + 56);
        *(v360 + 136) = *v361;
        *(v360 + 152) = *(v361 + 8);
        *(v360 + 128) = *(v362 + 104);
        *(v360 + 120) = *(v350[23] + 144 * *(v362 + 144) + 104);
        ++v349;
      }

      while (v349 != v347);
    }
  }

  if (v317 + 5 > v266)
  {
    goto LABEL_540;
  }

  v363 = 0;
  v364 = 5;
  do
  {
    v365 = 8 - (v317 & 7);
    if (v364 < v365)
    {
      v365 = v364;
    }

    v363 = (*(v268 + (v317 >> 3)) >> (8 - (v317 & 7) - v365)) & ~(-1 << v365) | (v363 << v365);
    v317 += v365;
    *v21 = v317;
    v364 -= v365;
  }

  while (v364);
  v366 = (v363 + 1);
  if (v317 + v366 > v266)
  {
LABEL_540:
    v109 = 3506;
    goto LABEL_137;
  }

  if (v363 == -1)
  {
    v367 = 0;
  }

  else
  {
    LODWORD(v367) = 0;
    do
    {
      v368 = 8 - (v317 & 7);
      if (v366 < v368)
      {
        v368 = v366;
      }

      v367 = (*(v268 + (v317 >> 3)) >> (8 - (v317 & 7) - v368)) & ~(-1 << v368) | (v367 << v368);
      v317 += v368;
      *v21 = v317;
      v366 -= v368;
    }

    while (v366);
  }

  *(*a3 + 264) = v367;
  v369 = geo::codec::zone_mallocator::instance(v263);
  v370 = pthread_rwlock_rdlock((v369 + 32));
  if (v370)
  {
    geo::read_write_lock::logFailure(v370, "read lock", v371);
  }

  v372 = malloc_type_zone_calloc(*v369, v367, 0x38uLL, 0x1000040160D141BuLL);
  atomic_fetch_add((v369 + 24), 1u);
  v373 = pthread_rwlock_unlock((v369 + 32));
  if (v373)
  {
    geo::read_write_lock::logFailure(v373, "unlock", v374);
  }

  *(*a3 + 272) = v372;
  v375 = v8[3];
  v376 = 8 * v8[2];
  if (v375 + 5 > v376)
  {
    v109 = 3513;
    goto LABEL_137;
  }

  v377 = 0;
  v378 = *v815;
  v379 = 5;
  do
  {
    v380 = 8 - (v375 & 7);
    if (v379 < v380)
    {
      v380 = v379;
    }

    v377 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v380)) & ~(-1 << v380) | (v377 << v380);
    v375 += v380;
    *v21 = v375;
    v379 -= v380;
  }

  while (v379);
  v381 = (v377 + 1);
  if (v375 + v381 > v376)
  {
    v109 = 3516;
    goto LABEL_137;
  }

  LODWORD(v382) = 0;
  if (v381)
  {
    v383 = v381;
    do
    {
      v384 = 8 - (v375 & 7);
      if (v383 < v384)
      {
        v384 = v383;
      }

      v382 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v384)) & ~(-1 << v384) | (v382 << v384);
      v375 += v384;
      *v21 = v375;
      v383 -= v384;
    }

    while (v383);
    if (v382)
    {
      v385 = 0;
      v386 = *a3;
      do
      {
        if (v375 + v805 > v376)
        {
          v109 = 3519;
          goto LABEL_137;
        }

        if (v805)
        {
          v387 = 0;
          v388 = v805;
          do
          {
            v389 = 8 - (v375 & 7);
            if (v388 < v389)
            {
              v389 = v388;
            }

            v387 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v389)) & ~(-1 << v389) | (v387 << v389);
            v375 += v389;
            *v21 = v375;
            v388 -= v389;
          }

          while (v388);
        }

        else
        {
          v387 = 0;
        }

        if (v386[31] <= v387)
        {
          v109 = 3520;
          goto LABEL_137;
        }

        if (v386[33] <= v385)
        {
          v109 = 3521;
          goto LABEL_137;
        }

        v390 = v386[34] + 56 * v385;
        *(v390 + 8) = 1;
        *(v390 + 48) = v387;
        *(v390 + 32) = 0;
        if (v375 + 64 > v376)
        {
          v109 = 3526;
          goto LABEL_137;
        }

        v391 = 0;
        v392 = 64;
        do
        {
          v393 = 8 - (v375 & 7);
          if (v392 < v393)
          {
            v393 = v392;
          }

          v391 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v393)) & ~(-1 << v393) | (v391 << v393);
          v375 += v393;
          *v21 = v375;
          v392 -= v393;
        }

        while (v392);
        *v390 = v391;
        ++v385;
      }

      while (v385 != v382);
    }
  }

  if (v375 + 5 > v376)
  {
    goto LABEL_599;
  }

  v394 = 0;
  v395 = 5;
  do
  {
    v396 = 8 - (v375 & 7);
    if (v395 < v396)
    {
      v396 = v395;
    }

    v394 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v396)) & ~(-1 << v396) | (v394 << v396);
    v375 += v396;
    *v21 = v375;
    v395 -= v396;
  }

  while (v395);
  v397 = (v394 + 1);
  if (v375 + v397 > v376)
  {
LABEL_599:
    v109 = 3530;
    goto LABEL_137;
  }

  if (v394 != -1)
  {
    v398 = 0;
    do
    {
      v399 = 8 - (v375 & 7);
      if (v397 < v399)
      {
        v399 = v397;
      }

      v398 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v399)) & ~(-1 << v399) | (v398 << v399);
      v375 += v399;
      *v21 = v375;
      v397 -= v399;
    }

    while (v397);
    if (v398)
    {
      v400 = 0;
      v401 = *a3;
      do
      {
        if (v375 + v381 > v376)
        {
          v109 = 3535;
          goto LABEL_137;
        }

        v402 = 0;
        if (v381)
        {
          v403 = v381;
          do
          {
            v404 = 8 - (v375 & 7);
            if (v403 < v404)
            {
              v404 = v403;
            }

            v402 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v404)) & ~(-1 << v404) | (v402 << v404);
            v375 += v404;
            *v21 = v375;
            v403 -= v404;
          }

          while (v403);
        }

        if (v375 + v801 > v376)
        {
          v109 = 3536;
          goto LABEL_137;
        }

        v405 = v801;
        if (v801)
        {
          v405 = 0;
          v406 = v801;
          do
          {
            v407 = 8 - (v375 & 7);
            if (v406 < v407)
            {
              v407 = v406;
            }

            v405 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v407)) & ~(-1 << v407) | (v405 << v407);
            v375 += v407;
            *v21 = v375;
            v406 -= v407;
          }

          while (v406);
        }

        if (v402 >= v382)
        {
          v109 = 3537;
          goto LABEL_137;
        }

        v408 = *(v401 + 96);
        if (v405 >= ((*(v401 + 104) - v408) >> 7))
        {
          v109 = 3538;
          goto LABEL_137;
        }

        v409 = v408 + (v405 << 7);
        *(v409 + 123) = 2;
        *(v409 + 116) = v402;
        ++v400;
      }

      while (v400 != v398);
    }
  }

  if (v375 + 5 > v376)
  {
    v109 = 3545;
    goto LABEL_137;
  }

  v410 = 0;
  v411 = 5;
  do
  {
    v412 = 8 - (v375 & 7);
    if (v411 < v412)
    {
      v412 = v411;
    }

    v410 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v412)) & ~(-1 << v412) | (v410 << v412);
    v375 += v412;
    *v21 = v375;
    v411 -= v412;
  }

  while (v411);
  v413 = (v410 + 1);
  if (v375 + v413 > v376)
  {
    v109 = 3548;
    goto LABEL_137;
  }

  v414 = 0;
  if (!v413)
  {
    goto LABEL_658;
  }

  v415 = v413;
  do
  {
    v416 = 8 - (v375 & 7);
    if (v415 < v416)
    {
      v416 = v415;
    }

    v414 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v416)) & ~(-1 << v416) | (v414 << v416);
    v375 += v416;
    *v21 = v375;
    v415 -= v416;
  }

  while (v415);
  if (v414)
  {
    v417 = 0;
    v418 = *a3;
    v419 = v382;
    do
    {
      if (v375 + v805 > v376)
      {
        v109 = 3551;
        goto LABEL_137;
      }

      if (v805)
      {
        v420 = 0;
        v421 = v805;
        do
        {
          v422 = 8 - (v375 & 7);
          if (v421 < v422)
          {
            v422 = v421;
          }

          v420 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v422)) & ~(-1 << v422) | (v420 << v422);
          v375 += v422;
          *v21 = v375;
          v421 -= v422;
        }

        while (v421);
      }

      else
      {
        v420 = 0;
      }

      if (v418[31] <= v420)
      {
        v109 = 3552;
        goto LABEL_137;
      }

      if (v418[33] <= v419)
      {
        v109 = 3553;
        goto LABEL_137;
      }

      v423 = v418[34] + 56 * v419;
      *(v423 + 8) = 2;
      *(v423 + 48) = v420;
      *(v423 + 32) = 0;
      if (v375 + 64 > v376)
      {
        v109 = 3558;
        goto LABEL_137;
      }

      v424 = 0;
      v425 = 64;
      do
      {
        v426 = 8 - (v375 & 7);
        if (v425 < v426)
        {
          v426 = v425;
        }

        v424 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v426)) & ~(-1 << v426) | (v424 << v426);
        v375 += v426;
        *v21 = v375;
        v425 -= v426;
      }

      while (v425);
      *v423 = v424;
      ++v417;
      ++v419;
    }

    while (v417 != v414);
  }

  else
  {
LABEL_658:
    v419 = v382;
  }

  if (v375 + 5 > v376)
  {
    goto LABEL_665;
  }

  v427 = 0;
  v428 = 5;
  do
  {
    v429 = 8 - (v375 & 7);
    if (v428 < v429)
    {
      v429 = v428;
    }

    v427 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v429)) & ~(-1 << v429) | (v427 << v429);
    v375 += v429;
    *v21 = v375;
    v428 -= v429;
  }

  while (v428);
  v430 = (v427 + 1);
  if (v375 + v430 > v376)
  {
LABEL_665:
    v109 = 3562;
    goto LABEL_137;
  }

  if (v427 != -1)
  {
    v431 = 0;
    do
    {
      v432 = 8 - (v375 & 7);
      if (v430 < v432)
      {
        v432 = v430;
      }

      v431 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v432)) & ~(-1 << v432) | (v431 << v432);
      v375 += v432;
      *v21 = v375;
      v430 -= v432;
    }

    while (v430);
    if (v431)
    {
      v433 = 0;
      v434 = *a3;
      do
      {
        if (v375 + v413 > v376)
        {
          v109 = 3567;
          goto LABEL_137;
        }

        v435 = 0;
        if (v413)
        {
          v436 = v413;
          do
          {
            v437 = 8 - (v375 & 7);
            if (v436 < v437)
            {
              v437 = v436;
            }

            v435 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v437)) & ~(-1 << v437) | (v435 << v437);
            v375 += v437;
            *v21 = v375;
            v436 -= v437;
          }

          while (v436);
        }

        if (v375 + v803 > v376)
        {
          v109 = 3568;
          goto LABEL_137;
        }

        if (v803)
        {
          v438 = 0;
          v439 = v803;
          do
          {
            v440 = 8 - (v375 & 7);
            if (v439 < v440)
            {
              v440 = v439;
            }

            v438 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v440)) & ~(-1 << v440) | (v438 << v440);
            v375 += v440;
            *v21 = v375;
            v439 -= v440;
          }

          while (v439);
        }

        else
        {
          v438 = 0;
        }

        if (v435 >= v414)
        {
          v109 = 3569;
          goto LABEL_137;
        }

        v441 = v434[63];
        if (0x6DB6DB6DB6DB6DB7 * ((v434[64] - v441) >> 5) <= v438)
        {
          v109 = 3570;
          goto LABEL_137;
        }

        v442 = v434[34] + 56 * v382 + 56 * v435;
        *(v442 + 32) = 1;
        *(v442 + 40) = v438;
        v443 = v434[32] + (*(v442 + 48) << 6);
        v444 = v434[27] + 152 * *(v443 + 56);
        v445 = v441 + 224 * v438;
        *(v445 + 120) = *(v434[23] + 144 * *(v444 + 144) + 104);
        *(v445 + 128) = *(v444 + 104);
        *(v445 + 136) = *v443;
        *(v445 + 144) = *v442;
        *(v445 + 152) = *(v443 + 8);
        *(v445 + 156) = 2;
        ++v433;
      }

      while (v433 != v431);
    }
  }

  if (v375 + 5 > v376)
  {
    goto LABEL_700;
  }

  v446 = 0;
  v447 = 5;
  do
  {
    v448 = 8 - (v375 & 7);
    if (v447 < v448)
    {
      v448 = v447;
    }

    v446 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v448)) & ~(-1 << v448) | (v446 << v448);
    v375 += v448;
    *v21 = v375;
    v447 -= v448;
  }

  while (v447);
  v449 = (v446 + 1);
  if (v375 + v449 > v376)
  {
LABEL_700:
    v109 = 3587;
    goto LABEL_137;
  }

  if (v446 != -1)
  {
    v450 = 0;
    do
    {
      v451 = 8 - (v375 & 7);
      if (v449 < v451)
      {
        v451 = v449;
      }

      v450 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v451)) & ~(-1 << v451) | (v450 << v451);
      v375 += v451;
      *v21 = v375;
      v449 -= v451;
    }

    while (v449);
    if (v450)
    {
      v452 = 0;
      v453 = *a3;
      do
      {
        if (v375 + v413 > v376)
        {
          v109 = 3592;
          goto LABEL_137;
        }

        v454 = 0;
        if (v413)
        {
          v455 = v413;
          do
          {
            v456 = 8 - (v375 & 7);
            if (v455 < v456)
            {
              v456 = v455;
            }

            v454 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v456)) & ~(-1 << v456) | (v454 << v456);
            v375 += v456;
            *v21 = v375;
            v455 -= v456;
          }

          while (v455);
        }

        if (v375 + v801 > v376)
        {
          v109 = 3593;
          goto LABEL_137;
        }

        v457 = v801;
        if (v801)
        {
          v457 = 0;
          v458 = v801;
          do
          {
            v459 = 8 - (v375 & 7);
            if (v458 < v459)
            {
              v459 = v458;
            }

            v457 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v459)) & ~(-1 << v459) | (v457 << v459);
            v375 += v459;
            *v21 = v375;
            v458 -= v459;
          }

          while (v458);
        }

        if (v454 >= v414)
        {
          v109 = 3594;
          goto LABEL_137;
        }

        v460 = *(v453 + 96);
        if (v457 >= ((*(v453 + 104) - v460) >> 7))
        {
          v109 = 3595;
          goto LABEL_137;
        }

        v461 = v460 + (v457 << 7);
        *(v461 + 123) = 2;
        *(v461 + 116) = v454 + v382;
        ++v452;
      }

      while (v452 != v450);
    }
  }

  if (v375 + 5 > v376)
  {
    v109 = 3602;
    goto LABEL_137;
  }

  v462 = 0;
  v463 = 5;
  do
  {
    v464 = 8 - (v375 & 7);
    if (v463 < v464)
    {
      v464 = v463;
    }

    v462 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v464)) & ~(-1 << v464) | (v462 << v464);
    v375 += v464;
    *v21 = v375;
    v463 -= v464;
  }

  while (v463);
  v465 = (v462 + 1);
  if (v375 + v465 > v376)
  {
    v109 = 3605;
    goto LABEL_137;
  }

  v466 = 0;
  if (!v465)
  {
    goto LABEL_763;
  }

  v467 = v465;
  do
  {
    v468 = 8 - (v375 & 7);
    if (v467 < v468)
    {
      v468 = v467;
    }

    v466 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v468)) & ~(-1 << v468) | (v466 << v468);
    v375 += v468;
    *v21 = v375;
    v467 -= v468;
  }

  while (v467);
  if (v466)
  {
    v469 = 0;
    v470 = *a3;
    v471 = v419;
    do
    {
      if (v375 + v805 > v376)
      {
        v109 = 3608;
        goto LABEL_137;
      }

      if (v805)
      {
        v472 = 0;
        v473 = v805;
        do
        {
          v474 = 8 - (v375 & 7);
          if (v473 < v474)
          {
            v474 = v473;
          }

          v472 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v474)) & ~(-1 << v474) | (v472 << v474);
          v375 += v474;
          *v21 = v375;
          v473 -= v474;
        }

        while (v473);
      }

      else
      {
        v472 = 0;
      }

      if (v470[31] <= v472)
      {
        v109 = 3609;
        goto LABEL_137;
      }

      if (v470[33] <= v471)
      {
        v109 = 3610;
        goto LABEL_137;
      }

      v475 = v470[34] + 56 * v471;
      *(v475 + 8) = 3;
      *(v475 + 48) = v472;
      *(v475 + 32) = 0;
      if (v375 + 64 > v376)
      {
        v109 = 3615;
        goto LABEL_137;
      }

      v476 = 0;
      v477 = 64;
      do
      {
        v478 = 8 - (v375 & 7);
        if (v477 < v478)
        {
          v478 = v477;
        }

        v476 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v478)) & ~(-1 << v478) | (v476 << v478);
        v375 += v478;
        *v21 = v375;
        v477 -= v478;
      }

      while (v477);
      *v475 = v476;
      ++v469;
      ++v471;
    }

    while (v469 != v466);
  }

  else
  {
LABEL_763:
    v471 = v419;
  }

  if (v375 + 5 > v376)
  {
    goto LABEL_770;
  }

  v479 = 0;
  v480 = 5;
  do
  {
    v481 = 8 - (v375 & 7);
    if (v480 < v481)
    {
      v481 = v480;
    }

    v479 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v481)) & ~(-1 << v481) | (v479 << v481);
    v375 += v481;
    *v21 = v375;
    v480 -= v481;
  }

  while (v480);
  v482 = (v479 + 1);
  if (v375 + v482 > v376)
  {
LABEL_770:
    v109 = 3619;
    goto LABEL_137;
  }

  if (v479 != -1)
  {
    v483 = 0;
    do
    {
      v484 = 8 - (v375 & 7);
      if (v482 < v484)
      {
        v484 = v482;
      }

      v483 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v484)) & ~(-1 << v484) | (v483 << v484);
      v375 += v484;
      *v21 = v375;
      v482 -= v484;
    }

    while (v482);
    if (v483)
    {
      v485 = 0;
      v486 = *a3;
      do
      {
        if (v375 + v465 > v376)
        {
          v109 = 3624;
          goto LABEL_137;
        }

        v487 = 0;
        if (v465)
        {
          v488 = v465;
          do
          {
            v489 = 8 - (v375 & 7);
            if (v488 < v489)
            {
              v489 = v488;
            }

            v487 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v489)) & ~(-1 << v489) | (v487 << v489);
            v375 += v489;
            *v21 = v375;
            v488 -= v489;
          }

          while (v488);
        }

        if (v375 + v803 > v376)
        {
          v109 = 3625;
          goto LABEL_137;
        }

        if (v803)
        {
          v490 = 0;
          v491 = v803;
          do
          {
            v492 = 8 - (v375 & 7);
            if (v491 < v492)
            {
              v492 = v491;
            }

            v490 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v492)) & ~(-1 << v492) | (v490 << v492);
            v375 += v492;
            *v21 = v375;
            v491 -= v492;
          }

          while (v491);
        }

        else
        {
          v490 = 0;
        }

        if (v487 >= v466)
        {
          v109 = 3626;
          goto LABEL_137;
        }

        v493 = v486[63];
        if (0x6DB6DB6DB6DB6DB7 * ((v486[64] - v493) >> 5) <= v490)
        {
          v109 = 3627;
          goto LABEL_137;
        }

        v494 = v486[34] + 56 * v419 + 56 * v487;
        *(v494 + 32) = 1;
        *(v494 + 40) = v490;
        v495 = v486[32] + (*(v494 + 48) << 6);
        v496 = v486[27] + 152 * *(v495 + 56);
        v497 = v493 + 224 * v490;
        *(v497 + 120) = *(v486[23] + 144 * *(v496 + 144) + 104);
        *(v497 + 128) = *(v496 + 104);
        *(v497 + 136) = *v495;
        *(v497 + 144) = *v494;
        *(v497 + 152) = *(v495 + 8);
        *(v497 + 156) = 3;
        ++v485;
      }

      while (v485 != v483);
    }
  }

  if (v375 + 5 > v376)
  {
    goto LABEL_805;
  }

  v498 = 0;
  v499 = 5;
  do
  {
    v500 = 8 - (v375 & 7);
    if (v499 < v500)
    {
      v500 = v499;
    }

    v498 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v500)) & ~(-1 << v500) | (v498 << v500);
    v375 += v500;
    *v21 = v375;
    v499 -= v500;
  }

  while (v499);
  v501 = (v498 + 1);
  if (v375 + v501 > v376)
  {
LABEL_805:
    v109 = 3644;
    goto LABEL_137;
  }

  if (v498 != -1)
  {
    v502 = 0;
    do
    {
      v503 = 8 - (v375 & 7);
      if (v501 < v503)
      {
        v503 = v501;
      }

      v502 = (*(v378 + (v375 >> 3)) >> (8 - (v375 & 7) - v503)) & ~(-1 << v503) | (v502 << v503);
      v375 += v503;
      *v21 = v375;
      v501 -= v503;
    }

    while (v501);
    if (v502)
    {
      v504 = 0;
      v505 = *a3;
      do
      {
        if (v375 + v465 > v376)
        {
          v109 = 3649;
          goto LABEL_137;
        }

        v506 = 0;
        if (v465)
        {
          v507 = *v815;
          v508 = v465;
          do
          {
            v509 = 8 - (v375 & 7);
            if (v508 < v509)
            {
              v509 = v508;
            }

            v506 = (*(v507 + (v375 >> 3)) >> (8 - (v375 & 7) - v509)) & ~(-1 << v509) | (v506 << v509);
            v375 += v509;
            *v21 = v375;
            v508 -= v509;
          }

          while (v508);
        }

        if (v375 + v801 > 8 * v8[2])
        {
          v109 = 3650;
          goto LABEL_137;
        }

        v510 = v801;
        if (v801)
        {
          v510 = 0;
          v511 = *v815;
          v512 = v801;
          do
          {
            v513 = 8 - (v375 & 7);
            if (v512 < v513)
            {
              v513 = v512;
            }

            v510 = (*(v511 + (v375 >> 3)) >> (8 - (v375 & 7) - v513)) & ~(-1 << v513) | (v510 << v513);
            v375 += v513;
            *v21 = v375;
            v512 -= v513;
          }

          while (v512);
        }

        if (v506 >= v466)
        {
          v109 = 3651;
          goto LABEL_137;
        }

        v514 = *(v505 + 96);
        if (v510 >= ((*(v505 + 104) - v514) >> 7))
        {
          v109 = 3652;
          goto LABEL_137;
        }

        v515 = v514 + (v510 << 7);
        *(v515 + 123) = 2;
        *(v515 + 116) = v506 + v419;
        ++v504;
      }

      while (v504 != v502);
      v376 = 8 * v8[2];
    }
  }

  if (v375 + 5 > v376)
  {
    v109 = 3659;
    goto LABEL_137;
  }

  v516 = 0;
  v517 = *v815;
  v518 = 5;
  do
  {
    v519 = 8 - (v375 & 7);
    if (v518 < v519)
    {
      v519 = v518;
    }

    v516 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v519)) & ~(-1 << v519) | (v516 << v519);
    v375 += v519;
    *v21 = v375;
    v518 -= v519;
  }

  while (v518);
  v520 = (v516 + 1);
  if (v375 + v520 > v376)
  {
    v109 = 3662;
    goto LABEL_137;
  }

  v521 = 0;
  if (v520)
  {
    v522 = v520;
    do
    {
      v523 = 8 - (v375 & 7);
      if (v522 < v523)
      {
        v523 = v522;
      }

      v521 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v523)) & ~(-1 << v523) | (v521 << v523);
      v375 += v523;
      *v21 = v375;
      v522 -= v523;
    }

    while (v522);
    if (v521)
    {
      v524 = 0;
      v525 = 8 * v8[2];
      v526 = *a3;
      v527 = v471;
      do
      {
        if (v375 + v805 > v525)
        {
          v109 = 3665;
          goto LABEL_137;
        }

        if (v805)
        {
          v528 = 0;
          v529 = v805;
          do
          {
            v530 = 8 - (v375 & 7);
            if (v529 < v530)
            {
              v530 = v529;
            }

            v528 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v530)) & ~(-1 << v530) | (v528 << v530);
            v375 += v530;
            *v21 = v375;
            v529 -= v530;
          }

          while (v529);
        }

        else
        {
          v528 = 0;
        }

        if (v526[31] <= v528)
        {
          v109 = 3666;
          goto LABEL_137;
        }

        if (v526[33] <= v527)
        {
          v109 = 3667;
          goto LABEL_137;
        }

        v531 = v526[34] + 56 * v527;
        *(v531 + 8) = 4;
        *(v531 + 48) = v528;
        *(v531 + 32) = 0;
        if (v375 + 64 > v525)
        {
          v109 = 3672;
          goto LABEL_137;
        }

        v532 = 0;
        v533 = 64;
        do
        {
          v534 = 8 - (v375 & 7);
          if (v533 < v534)
          {
            v534 = v533;
          }

          v532 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v534)) & ~(-1 << v534) | (v532 << v534);
          v375 += v534;
          *v21 = v375;
          v533 -= v534;
        }

        while (v533);
        *v531 = v532;
        ++v524;
        ++v527;
      }

      while (v524 != v521);
    }
  }

  v535 = 8 * v8[2];
  if (v375 + 5 > v535)
  {
    goto LABEL_878;
  }

  v536 = 0;
  v537 = 5;
  do
  {
    v538 = 8 - (v375 & 7);
    if (v537 < v538)
    {
      v538 = v537;
    }

    v536 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v538)) & ~(-1 << v538) | (v536 << v538);
    v375 += v538;
    *v21 = v375;
    v537 -= v538;
  }

  while (v537);
  v539 = (v536 + 1);
  if (v375 + v539 > v535)
  {
LABEL_878:
    v109 = 3676;
    goto LABEL_137;
  }

  if (v536 != -1)
  {
    v540 = 0;
    do
    {
      v541 = 8 - (v375 & 7);
      if (v539 < v541)
      {
        v541 = v539;
      }

      v540 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v541)) & ~(-1 << v541) | (v540 << v541);
      v375 += v541;
      *v21 = v375;
      v539 -= v541;
    }

    while (v539);
    if (v540)
    {
      v542 = 0;
      v543 = *a3;
      do
      {
        if (v375 + v520 > v535)
        {
          v109 = 3681;
          goto LABEL_137;
        }

        v544 = 0;
        if (v520)
        {
          v545 = v520;
          do
          {
            v546 = 8 - (v375 & 7);
            if (v545 < v546)
            {
              v546 = v545;
            }

            v544 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v546)) & ~(-1 << v546) | (v544 << v546);
            v375 += v546;
            *v21 = v375;
            v545 -= v546;
          }

          while (v545);
        }

        if (v375 + v803 > v535)
        {
          v109 = 3682;
          goto LABEL_137;
        }

        if (v803)
        {
          v547 = 0;
          v548 = v803;
          do
          {
            v549 = 8 - (v375 & 7);
            if (v548 < v549)
            {
              v549 = v548;
            }

            v547 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v549)) & ~(-1 << v549) | (v547 << v549);
            v375 += v549;
            *v21 = v375;
            v548 -= v549;
          }

          while (v548);
        }

        else
        {
          v547 = 0;
        }

        if (v544 >= v521)
        {
          v109 = 3683;
          goto LABEL_137;
        }

        v550 = v543[63];
        if (0x6DB6DB6DB6DB6DB7 * ((v543[64] - v550) >> 5) <= v547)
        {
          v109 = 3684;
          goto LABEL_137;
        }

        v551 = v543[34] + 56 * v471 + 56 * v544;
        *(v551 + 32) = 1;
        *(v551 + 40) = v547;
        v552 = v543[32] + (*(v551 + 48) << 6);
        v553 = v543[27] + 152 * *(v552 + 56);
        v554 = v550 + 224 * v547;
        *(v554 + 120) = *(v543[23] + 144 * *(v553 + 144) + 104);
        *(v554 + 128) = *(v553 + 104);
        *(v554 + 136) = *v552;
        *(v554 + 144) = *v551;
        *(v554 + 152) = *(v552 + 8);
        *(v554 + 156) = 4;
        ++v542;
      }

      while (v542 != v540);
    }
  }

  if (v375 + 5 > v535)
  {
    goto LABEL_913;
  }

  v555 = 0;
  v556 = 5;
  do
  {
    v557 = 8 - (v375 & 7);
    if (v556 < v557)
    {
      v557 = v556;
    }

    v555 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v557)) & ~(-1 << v557) | (v555 << v557);
    v375 += v557;
    *v21 = v375;
    v556 -= v557;
  }

  while (v556);
  v558 = (v555 + 1);
  if (v375 + v558 > v535)
  {
LABEL_913:
    v109 = 3701;
    goto LABEL_137;
  }

  if (v555 == -1)
  {
    goto LABEL_941;
  }

  v559 = 0;
  do
  {
    v560 = 8 - (v375 & 7);
    if (v558 < v560)
    {
      v560 = v558;
    }

    v559 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v560)) & ~(-1 << v560) | (v559 << v560);
    v375 += v560;
    *v21 = v375;
    v558 -= v560;
  }

  while (v558);
  if (!v559)
  {
LABEL_941:
    v562 = *a3;
  }

  else
  {
    v561 = 0;
    v562 = *a3;
    do
    {
      if (v375 + v520 > v535)
      {
        v109 = 3706;
        goto LABEL_137;
      }

      v563 = 0;
      if (v520)
      {
        v564 = v520;
        do
        {
          v565 = 8 - (v375 & 7);
          if (v564 < v565)
          {
            v565 = v564;
          }

          v563 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v565)) & ~(-1 << v565) | (v563 << v565);
          v375 += v565;
          *v21 = v375;
          v564 -= v565;
        }

        while (v564);
      }

      if (v375 + v801 > v535)
      {
        v109 = 3707;
        goto LABEL_137;
      }

      v566 = v801;
      if (v801)
      {
        v566 = 0;
        v567 = v801;
        do
        {
          v568 = 8 - (v375 & 7);
          if (v567 < v568)
          {
            v568 = v567;
          }

          v566 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v568)) & ~(-1 << v568) | (v566 << v568);
          v375 += v568;
          *v21 = v375;
          v567 -= v568;
        }

        while (v567);
      }

      if (v563 >= v521)
      {
        v109 = 3708;
        goto LABEL_137;
      }

      v569 = v562[12];
      if (v566 >= ((v562[13] - v569) >> 7))
      {
        v109 = 3709;
        goto LABEL_137;
      }

      v570 = v569 + (v566 << 7);
      *(v570 + 123) = 2;
      *(v570 + 116) = v563 + v471;
      ++v561;
    }

    while (v561 != v559);
  }

  if (v562[24] == v562[23])
  {
    v572 = 0;
  }

  else
  {
    v571 = 0;
    v572 = 0;
    v573 = 0;
    v562 = *a3;
    do
    {
      if (v375 + 5 > v535)
      {
        goto LABEL_956;
      }

      v574 = 0;
      v575 = 5;
      do
      {
        v576 = 8 - (v375 & 7);
        if (v575 < v576)
        {
          v576 = v575;
        }

        v574 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v576)) & ~(-1 << v576) | (v574 << v576);
        v375 += v576;
        *v21 = v375;
        v575 -= v576;
      }

      while (v575);
      v577 = (v574 + 1);
      if (v375 + v577 > v535)
      {
LABEL_956:
        v109 = 3716;
        goto LABEL_137;
      }

      v578 = 0;
      if (v577)
      {
        do
        {
          v579 = 8 - (v375 & 7);
          if (v577 < v579)
          {
            v579 = v577;
          }

          v578 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v579)) & ~(-1 << v579) | (v578 << v579);
          v375 += v579;
          *v21 = v375;
          v577 -= v579;
        }

        while (v577);
      }

      v580 = v562[23];
      v581 = v580 + 144 * v571;
      *(v581 + 92) = v572;
      *(v581 + 96) = v578;
      v572 += v578;
      v571 = ++v573;
    }

    while (0x8E38E38E38E38E39 * ((v562[24] - v580) >> 4) > v573);
  }

  if (v562[28] != v562[27])
  {
    v582 = 0;
    v583 = 0;
    v562 = *a3;
    do
    {
      if (v375 + 5 > v535)
      {
        goto LABEL_1064;
      }

      v584 = 0;
      v585 = 5;
      do
      {
        v586 = 8 - (v375 & 7);
        if (v585 < v586)
        {
          v586 = v585;
        }

        v584 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v586)) & ~(-1 << v586) | (v584 << v586);
        v375 += v586;
        *v21 = v375;
        v585 -= v586;
      }

      while (v585);
      v587 = (v584 + 1);
      if (v375 + v587 > v535)
      {
LABEL_1064:
        v109 = 3723;
        goto LABEL_137;
      }

      v588 = 0;
      if (v587)
      {
        do
        {
          v589 = 8 - (v375 & 7);
          if (v587 < v589)
          {
            v589 = v587;
          }

          v588 = (*(v517 + (v375 >> 3)) >> (8 - (v375 & 7) - v589)) & ~(-1 << v589) | (v588 << v589);
          v375 += v589;
          *v21 = v375;
          v587 -= v589;
        }

        while (v587);
      }

      v590 = v562[27];
      v591 = v590 + 152 * v582;
      *(v591 + 92) = v572;
      *(v591 + 96) = v588;
      v572 += v588;
      v582 = ++v583;
    }

    while (0x86BCA1AF286BCA1BLL * ((v562[28] - v590) >> 3) > v583);
  }

  v120 = geo::codec::decodeSectionEncoding(v815, (v562 + 106), 0, a2, 0);
  if (!v120)
  {
    v109 = 3729;
    goto LABEL_137;
  }

  v592 = *a3;
  v594 = *(*a3 + 184);
  v593 = *(*a3 + 192);
  v595 = 0x8E38E38E38E38E39 * ((v593 - v594) >> 4);
  if (v593 != v594)
  {
    v596 = 0;
    v597 = 1;
    do
    {
      if (*(v592[106] + 40) < (*(v594 + 144 * v596 + 96) + *(v594 + 144 * v596 + 92)))
      {
        v109 = 3732;
        goto LABEL_137;
      }

      v596 = v597++;
    }

    while (v595 > v596);
  }

  v598 = v592[27];
  v599 = v592[28];
  if (v599 != v598)
  {
    v600 = 0;
    v601 = 1;
    v120 = 152;
    do
    {
      if (*(v592[106] + 40) < (*(v598 + 152 * v600 + 96) + *(v598 + 152 * v600 + 92)))
      {
        v109 = 3735;
        goto LABEL_137;
      }

      v600 = v601++;
    }

    while (0x86BCA1AF286BCA1BLL * ((v599 - v598) >> 3) > v600);
  }

  if (v593 != v594)
  {
    v602 = 0;
    v603 = v592[106];
    if (v595 <= 1)
    {
      v595 = 1;
    }

    v604 = 1.0 / ~(-1 << *v603);
    while (1)
    {
      v605 = v594 + 144 * v602;
      v120 = *(v605 + 96);
      if (v120)
      {
        break;
      }

LABEL_1013:
      if (++v602 == v595)
      {
        goto LABEL_1014;
      }
    }

    v606 = *(v605 + 92);
    v120 += v606;
    *&v607 = v814[v602] * v604;
    v609.f32[0] = *(v812 + v602) * v604;
    v608.i64[0] = __PAIR64__(v607, v609.u32[0]);
    v608.i64[1] = __PAIR64__(v607, v609.u32[0]);
    v609.i32[1] = v607;
    v610 = *(v603 + 40);
    v611 = *a3;
    if (v610 <= v606)
    {
      v610 = v606;
    }

    while (1)
    {
      if (v606 == v610 || *(*(v603 + 32) + 16 * v606) >= *(v603 + 16))
      {
        v109 = 3751;
        goto LABEL_137;
      }

      v612 = *(v611 + 848);
      if (!v612)
      {
        goto LABEL_1012;
      }

      v613 = v612[4];
      if (!v613)
      {
        goto LABEL_1012;
      }

      if (v612[5] <= v606)
      {
        goto LABEL_1012;
      }

      v614 = *(v613 + 16 * v606);
      if (v614 >= v612[2])
      {
        goto LABEL_1012;
      }

      v615 = *(v613 + 16 * v606 + 8);
      if (!v615)
      {
        goto LABEL_1012;
      }

      v616 = v612[1];
      if (v615 >= 0xC && ((v617 = (v616 + 8 * v614), v618 = v615 - 1, v619 = v617 + v618 * 8, v620 = &v617->u64[v618] + 4, v619 >= v617) ? (v621 = v620 >= v617->u64 + 4) : (v621 = 0), v621 ? (v622 = (v615 - 1) >> 61 == 0) : (v622 = 0), v622))
      {
        v623 = v615 & 0x3FFFFFFFFFFFFFF8;
        v624 = v617 + 2;
        v625 = v615 & 0x3FFFFFFFFFFFFFF8;
        do
        {
          v626 = *v624;
          v627 = v624[1];
          v628 = vaddq_f32(v624[-1], v608);
          v624[-2] = vaddq_f32(v624[-2], v608);
          v624[-1] = v628;
          *v624 = vaddq_f32(v626, v608);
          v624[1] = vaddq_f32(v627, v608);
          v624 += 4;
          v625 -= 8;
        }

        while (v625);
        if (v615 == v623)
        {
          goto LABEL_1012;
        }
      }

      else
      {
        v623 = 0;
      }

      v629 = v615 - v623;
      v630 = (v616 + 8 * v623 + 8 * v614);
      do
      {
        *v630 = vadd_f32(*v630, v609);
        ++v630;
        --v629;
      }

      while (v629);
LABEL_1012:
      if (++v606 >= v120)
      {
        goto LABEL_1013;
      }
    }
  }

LABEL_1014:
  if (v599 == v598)
  {
    goto LABEL_1041;
  }

  v631 = 0;
  v632 = *a3;
  v633 = 1.0 / ~(-1 << **(*a3 + 848));
  v634 = *(*a3 + 216);
  v635 = 0x86BCA1AF286BCA1BLL * ((*(*a3 + 224) - v634) >> 3);
  if (v635 <= 1)
  {
    v635 = 1;
  }

  do
  {
    v636 = v598 + 152 * v631;
    v637 = *(v636 + 144);
    v120 = v814;
    v638 = *(v812 + v637);
    v639 = v814[v637];
    v640 = *(v636 + 96);
    if (v640)
    {
      v120 = *(v636 + 92);
      *&v641 = v633 * v639;
      v644.f32[0] = v638 / ~(-1 << *v592[106]);
      v642.i64[0] = __PAIR64__(v641, v644.u32[0]);
      v642.i64[1] = __PAIR64__(v641, v644.u32[0]);
      v643 = v640 + v120;
      v644.i32[1] = v641;
      v645 = v632[106];
      do
      {
        if (!v645)
        {
          goto LABEL_1038;
        }

        v646 = v645[4];
        if (!v646)
        {
          goto LABEL_1038;
        }

        if (v645[5] <= v120)
        {
          goto LABEL_1038;
        }

        v647 = *(v646 + 16 * v120);
        if (v647 >= v645[2])
        {
          goto LABEL_1038;
        }

        v648 = *(v646 + 16 * v120 + 8);
        if (!v648)
        {
          goto LABEL_1038;
        }

        v649 = v645[1];
        if (v648 > 0xB && ((v650 = (v649 + 8 * v647), v651 = v648 - 1, v652 = v650 + v651 * 8, v653 = &v650->u64[v651] + 4, v652 >= v650) ? (v654 = v653 >= v650->u64 + 4) : (v654 = 0), v654 ? (v655 = (v648 - 1) >> 61 == 0) : (v655 = 0), v655))
        {
          v656 = v648 & 0x3FFFFFFFFFFFFFF8;
          v657 = v650 + 2;
          v658 = v648 & 0x3FFFFFFFFFFFFFF8;
          do
          {
            v659 = *v657;
            v660 = v657[1];
            v661 = vaddq_f32(v657[-1], v642);
            v657[-2] = vaddq_f32(v657[-2], v642);
            v657[-1] = v661;
            *v657 = vaddq_f32(v659, v642);
            v657[1] = vaddq_f32(v660, v642);
            v657 += 4;
            v658 -= 8;
          }

          while (v658);
          if (v648 == v656)
          {
            goto LABEL_1038;
          }
        }

        else
        {
          v656 = 0;
        }

        v662 = v648 - v656;
        v663 = (v649 + 8 * v656 + 8 * v647);
        do
        {
          *v663 = vadd_f32(*v663, v644);
          ++v663;
          --v662;
        }

        while (v662);
LABEL_1038:
        ++v120;
      }

      while (v120 < v643);
    }

    v664 = v633 * (v638 + *(v809 + v631));
    v665 = v633 * (v639 + v108[v631]);
    *(v636 + 124) = v664;
    *(v636 + 128) = v665;
    ++v631;
    v598 = v634;
    v592 = v632;
  }

  while (v631 != v635);
  v666 = v632 + 23;
  v594 = v632[23];
  v593 = v666[1];
LABEL_1041:
  v667 = v8[3];
  v668 = 8 * v8[2];
  if (v593 != v594)
  {
    v669 = 0;
    v670 = *a3;
    do
    {
      v671 = v667 + 1;
      if (v667 + 1 > v668)
      {
        v109 = 3792;
        goto LABEL_137;
      }

      v672 = *v815;
      v120 = *(*v815 + (v667 >> 3));
      *v21 = v671;
      if ((v120 >> (~v667 & 7)))
      {
        if (v671 + v800 > v668)
        {
          v109 = 3795;
          goto LABEL_137;
        }

        if (v800)
        {
          v673 = 0;
          v674 = v800;
          do
          {
            v675 = 8 - (v671 & 7);
            if (v674 < v675)
            {
              v675 = v674;
            }

            v673 = (*(v672 + (v671 >> 3)) >> (8 - (v671 & 7) - v675)) & ~(-1 << v675) | (v673 << v675);
            v671 += v675;
            *v21 = v671;
            v674 -= v675;
          }

          while (v674);
        }

        else
        {
          v673 = 0;
        }

        if (v807 <= v673)
        {
          v109 = 3796;
          goto LABEL_137;
        }

        v677 = v806 + v673;
        v676 = *(v670 + 184);
        v120 = v676 + 144 * v669;
        *(v120 + 128) = v677;
      }

      else
      {
        v676 = *(v670 + 184);
      }

      v667 = v671;
      ++v669;
    }

    while (v669 < 0x8E38E38E38E38E39 * ((*(v670 + 192) - v676) >> 4));
  }

  if (v667 + 5 > v668)
  {
    goto LABEL_1063;
  }

  v678 = 0;
  v679 = *v815;
  v680 = 5;
  do
  {
    v681 = 8 - (v667 & 7);
    if (v680 < v681)
    {
      v681 = v680;
    }

    v678 = (*(v679 + (v667 >> 3)) >> (8 - (v667 & 7) - v681)) & ~(-1 << v681) | (v678 << v681);
    v667 += v681;
    *v21 = v667;
    v680 -= v681;
  }

  while (v680);
  v682 = (v678 + 1);
  if (v667 + v682 > v668)
  {
LABEL_1063:
    v109 = 3802;
    goto LABEL_137;
  }

  if (v682)
  {
    v683 = 0;
    do
    {
      v684 = 8 - (v667 & 7);
      if (v682 < v684)
      {
        v684 = v682;
      }

      v683 = (*(v679 + (v667 >> 3)) >> (8 - (v667 & 7) - v684)) & ~(-1 << v684) | (v683 << v684);
      v667 += v684;
      *v21 = v667;
      v682 -= v684;
    }

    while (v682);
    if (v683)
    {
      v685 = 0;
      v686 = *a3;
      do
      {
        if (v667 + v805 > v668)
        {
          v109 = 3806;
          goto LABEL_137;
        }

        v687 = v805;
        if (v805)
        {
          v687 = 0;
          v688 = v805;
          do
          {
            v689 = 8 - (v667 & 7);
            if (v688 < v689)
            {
              v689 = v688;
            }

            v687 = (*(v679 + (v667 >> 3)) >> (8 - (v667 & 7) - v689)) & ~(-1 << v689) | (v687 << v689);
            v667 += v689;
            *v21 = v667;
            v688 -= v689;
          }

          while (v688);
        }

        if (v686[31] <= v687)
        {
          v109 = 3807;
          goto LABEL_137;
        }

        if (v667 + v801 > v668)
        {
          v109 = 3808;
          goto LABEL_137;
        }

        if (v801)
        {
          v690 = 0;
          v691 = v801;
          do
          {
            v692 = 8 - (v667 & 7);
            if (v691 < v692)
            {
              v692 = v691;
            }

            v690 = (*(v679 + (v667 >> 3)) >> (8 - (v667 & 7) - v692)) & ~(-1 << v692) | (v690 << v692);
            v667 += v692;
            *v21 = v667;
            v691 -= v692;
          }

          while (v691);
        }

        else
        {
          v690 = 0;
        }

        v693 = v690;
        v694 = v686[12];
        if (v693 >= (v686[13] - v694) >> 7)
        {
          v109 = 3809;
          goto LABEL_137;
        }

        v120 = v694 + (v693 << 7);
        *(v120 + 123) = 3;
        *(v120 + 116) = v687;
        ++v685;
      }

      while (v685 != v683);
    }
  }

  v695 = *(v8 + 16);
  if (v695 < 0x3C)
  {
    goto LABEL_1289;
  }

  v696 = *a3;
  v698 = *(*a3 + 184);
  v697 = *(*a3 + 192);
  if (v697 == v698)
  {
    v698 = *(*a3 + 192);
  }

  else
  {
    v699 = 0;
    v120 = 144;
    do
    {
      v700 = v667 + 1;
      if (v667 + 1 > v668)
      {
        v109 = 3817;
        goto LABEL_137;
      }

      v701 = *(v679 + (v667 >> 3));
      *v21 = v700;
      if ((v701 >> (~v667 & 7)))
      {
        if (v700 + v800 > v668)
        {
          v109 = 3820;
          goto LABEL_137;
        }

        if (v800)
        {
          v702 = 0;
          v703 = v800;
          do
          {
            v704 = 8 - (v700 & 7);
            if (v703 < v704)
            {
              v704 = v703;
            }

            v702 = (*(v679 + (v700 >> 3)) >> (8 - (v700 & 7) - v704)) & ~(-1 << v704) | (v702 << v704);
            v700 += v704;
            *v21 = v700;
            v703 -= v704;
          }

          while (v703);
        }

        else
        {
          v702 = 0;
        }

        if (v807 <= v702)
        {
          v109 = 3821;
          goto LABEL_137;
        }

        *(v698 + 144 * v699 + 136) = v806 + v702;
      }

      v667 = v700;
      ++v699;
    }

    while (v699 < 0x8E38E38E38E38E39 * ((v697 - v698) >> 4));
  }

  if (v695 == 60)
  {
    goto LABEL_1289;
  }

  if (v697 != v698)
  {
    v705 = 0;
    v696 = *a3;
    v120 = -1;
    do
    {
      v706 = v667 + 1;
      if (v667 + 1 > v668)
      {
        v109 = 3830;
        goto LABEL_137;
      }

      v707 = *(v679 + (v667 >> 3));
      *v21 = v706;
      v708 = v696[23];
      if ((v707 >> (~v667 & 7)))
      {
        v709 = v708 + 144 * v705;
        *(v709 + 75) = 1;
        if (v667 + 65 > v668)
        {
          v109 = 3834;
          goto LABEL_137;
        }

        v710 = 0;
        v711 = 64;
        do
        {
          v712 = 8 - (v706 & 7);
          if (v711 < v712)
          {
            v712 = v711;
          }

          v710 = (*(v679 + (v706 >> 3)) >> (8 - (v706 & 7) - v712)) & ~(-1 << v712) | (v710 << v712);
          v706 += v712;
          *v21 = v706;
          v711 -= v712;
        }

        while (v711);
        *(v709 + 48) = v710;
      }

      v667 = v706;
      ++v705;
    }

    while (v705 < 0x8E38E38E38E38E39 * ((v696[24] - v708) >> 4));
  }

  if (v696[28] != v696[27])
  {
    v713 = 0;
    v714 = *a3;
    v120 = 8;
    while (1)
    {
      v715 = v667 + 1;
      if (v667 + 1 > v668)
      {
        v109 = 3840;
        goto LABEL_137;
      }

      v716 = *(v679 + (v667 >> 3));
      *v21 = v715;
      v717 = *(v714 + 216);
      if ((v716 >> (~v667 & 7)))
      {
        v718 = v717 + 152 * v713;
        *(v718 + 75) = 1;
        if (v667 + 65 > v668)
        {
          v109 = 3844;
          goto LABEL_137;
        }

        v719 = 0;
        v720 = 64;
        do
        {
          v721 = 8 - (v715 & 7);
          if (v720 < v721)
          {
            v721 = v720;
          }

          v719 = (*(v679 + (v715 >> 3)) >> (8 - (v715 & 7) - v721)) & ~(-1 << v721) | (v719 << v721);
          v715 += v721;
          *v21 = v715;
          v720 -= v721;
        }

        while (v720);
        *(v718 + 48) = v719;
      }

      ++v713;
      v667 = v715;
      if (v713 >= 0x86BCA1AF286BCA1BLL * ((*(v714 + 224) - v717) >> 3))
      {
        goto LABEL_1148;
      }
    }
  }

  v715 = v667;
LABEL_1148:
  if (v695 < 0x43)
  {
LABEL_1289:
    v15 = 1;
    goto LABEL_138;
  }

  if (v715 + 5 > v668)
  {
    goto LABEL_1155;
  }

  v722 = 0;
  v723 = 5;
  do
  {
    v120 = 8 - (v715 & 7);
    if (v723 < v120)
    {
      v120 = v723;
    }

    v722 = (*(v679 + (v715 >> 3)) >> (8 - (v715 & 7) - v120)) & ~(-1 << v120) | (v722 << v120);
    v715 += v120;
    *v21 = v715;
    v723 -= v120;
  }

  while (v723);
  v724 = (v722 + 1);
  if (v715 + v724 > v668)
  {
LABEL_1155:
    v109 = 3851;
    goto LABEL_137;
  }

  if (v722 == -1)
  {
    goto LABEL_1190;
  }

  v725 = 0;
  do
  {
    v120 = 8 - (v715 & 7);
    if (v724 < v120)
    {
      v120 = v724;
    }

    v725 = (*(v679 + (v715 >> 3)) >> (8 - (v715 & 7) - v120)) & ~(-1 << v120) | (v725 << v120);
    v715 += v120;
    *v21 = v715;
    v724 -= v120;
  }

  while (v724);
  if (!v725)
  {
LABEL_1190:
    if (v695 >= 0x45)
    {
      v741 = v715 + 1;
      if (v715 + 1 > v668)
      {
        v109 = 3868;
        goto LABEL_137;
      }

      v742 = *(v679 + (v715 >> 3));
      *v21 = v741;
      if ((v742 >> (~v715 & 7)))
      {
        if (v715 + 6 > v668)
        {
          goto LABEL_1204;
        }

        v743 = 0;
        v744 = 5;
        do
        {
          v745 = 8 - (v741 & 7);
          if (v744 < v745)
          {
            v745 = v744;
          }

          v743 = (*(v679 + (v741 >> 3)) >> (8 - (v741 & 7) - v745)) & ~(-1 << v745) | (v743 << v745);
          v741 += v745;
          *v21 = v741;
          v744 -= v745;
        }

        while (v744);
        v746 = (v743 + 1);
        if (v741 + v746 > v668)
        {
LABEL_1204:
          v109 = 3871;
          goto LABEL_137;
        }

        if (v743 == -1)
        {
          v749 = 0.0;
        }

        else
        {
          v747 = 0;
          do
          {
            v748 = 8 - (v741 & 7);
            if (v746 < v748)
            {
              v748 = v746;
            }

            v747 = (*(v679 + (v741 >> 3)) >> (8 - (v741 & 7) - v748)) & ~(-1 << v748) | (v747 << v748);
            v741 += v748;
            *v21 = v741;
            v746 -= v748;
          }

          while (v746);
          v749 = v747;
        }

        v750 = *a3;
        v751 = *(*a3 + 184);
        v752 = *(*a3 + 192) - v751;
        if (v752)
        {
          v753 = 0;
          v754 = 0;
          v755 = 0x8E38E38E38E38E39 * (v752 >> 4);
          v120 = 1;
          while (1)
          {
            v756 = v741 + 1;
            if (v741 + 1 > v668)
            {
              break;
            }

            v757 = *(v679 + (v741 >> 3));
            *v21 = v756;
            if ((v757 >> (~v741 & 7)))
            {
              v758 = v751 + 144 * v753;
              *(v758 + 120) = 1;
              if (v741 + 6 > v668)
              {
                goto LABEL_1236;
              }

              v759 = 0;
              v760 = 5;
              do
              {
                v761 = 8 - (v756 & 7);
                if (v760 < v761)
                {
                  v761 = v760;
                }

                v759 = (*(v679 + (v756 >> 3)) >> (8 - (v756 & 7) - v761)) & ~(-1 << v761) | (v759 << v761);
                v756 += v761;
                *v21 = v756;
                v760 -= v761;
              }

              while (v760);
              v762 = (v759 + 1);
              if (v756 + v762 > v668)
              {
LABEL_1236:
                v109 = 3880;
                goto LABEL_137;
              }

              v763 = 0.0;
              if (v759 != -1)
              {
                v764 = 0;
                do
                {
                  v765 = 8 - (v756 & 7);
                  if (v762 < v765)
                  {
                    v765 = v762;
                  }

                  v764 = (*(v679 + (v756 >> 3)) >> (8 - (v756 & 7) - v765)) & ~(-1 << v765) | (v764 << v765);
                  v756 += v765;
                  *v21 = v756;
                  v762 -= v765;
                }

                while (v762);
                if (v764)
                {
                  v766 = v756 + 1;
                  if (v756 + 1 > v668)
                  {
                    goto LABEL_1236;
                  }

                  v767 = *(v679 + (v756 >> 3));
                  *v21 = v766;
                  if ((v767 >> (~v756 & 7)))
                  {
                    v768 = -v764;
                  }

                  else
                  {
                    v768 = v764;
                  }

                  v763 = v768;
                  v756 = v766;
                }
              }

              *(v758 + 124) = v763 * (1.0 / v749);
            }

            v741 = v756;
            v753 = ++v754;
            if (v755 <= v754)
            {
              goto LABEL_1238;
            }
          }

          v109 = 3874;
          goto LABEL_137;
        }

        v756 = v741;
LABEL_1238:
        if (v750[28] != v750[27])
        {
          v769 = 0;
          v750 = *a3;
          while (1)
          {
            v770 = v756 + 1;
            if (v756 + 1 > v668)
            {
              break;
            }

            v771 = *(v679 + (v756 >> 3));
            *v21 = v770;
            v772 = v750[27];
            if ((v771 >> (~v756 & 7)))
            {
              v773 = v772 + 152 * v769;
              *(v773 + 132) = 1;
              if (v756 + 6 > v668)
              {
                goto LABEL_1285;
              }

              v774 = 0;
              v775 = 5;
              do
              {
                v776 = 8 - (v770 & 7);
                if (v775 < v776)
                {
                  v776 = v775;
                }

                v774 = (*(v679 + (v770 >> 3)) >> (8 - (v770 & 7) - v776)) & ~(-1 << v776) | (v774 << v776);
                v770 += v776;
                *v21 = v770;
                v775 -= v776;
              }

              while (v775);
              v777 = (v774 + 1);
              if (v770 + v777 > v668)
              {
LABEL_1285:
                v109 = 3893;
                goto LABEL_137;
              }

              v778 = 0.0;
              if (v774 != -1)
              {
                v779 = 0;
                do
                {
                  v780 = 8 - (v770 & 7);
                  if (v777 < v780)
                  {
                    v780 = v777;
                  }

                  v779 = (*(v679 + (v770 >> 3)) >> (8 - (v770 & 7) - v780)) & ~(-1 << v780) | (v779 << v780);
                  v770 += v780;
                  *v21 = v770;
                  v777 -= v780;
                }

                while (v777);
                if (v779)
                {
                  v781 = v770 + 1;
                  if (v770 + 1 > v668)
                  {
                    goto LABEL_1285;
                  }

                  v782 = *(v679 + (v770 >> 3));
                  *v21 = v781;
                  if ((v782 >> (~v770 & 7)))
                  {
                    v783 = -v779;
                  }

                  else
                  {
                    v783 = v779;
                  }

                  v778 = v783;
                  v770 = v781;
                }
              }

              *(v773 + 136) = v778 * (1.0 / v749);
            }

            v756 = v770;
            ++v769;
            v120 = 0x86BCA1AF286BCA1BLL * ((v750[28] - v772) >> 3);
            if (v769 >= v120)
            {
              goto LABEL_1261;
            }
          }

          v109 = 3887;
          goto LABEL_137;
        }

LABEL_1261:
        if (v750[31])
        {
          v120 = 0;
          v784 = 0;
          v785 = *a3;
          v786 = 1.0 / v749;
          v15 = 1;
          while (1)
          {
            v787 = v756 + 1;
            if (v756 + 1 > v668)
            {
              break;
            }

            v788 = *(v679 + (v756 >> 3));
            *v21 = v787;
            if ((v788 >> (~v756 & 7)))
            {
              v789 = *(v785 + 256) + (v120 << 6);
              *(v789 + 40) = 1;
              if (v756 + 6 > v668)
              {
                goto LABEL_1286;
              }

              v790 = 0;
              v791 = 5;
              do
              {
                v792 = 8 - (v787 & 7);
                if (v791 < v792)
                {
                  v792 = v791;
                }

                v790 = (*(v679 + (v787 >> 3)) >> (8 - (v787 & 7) - v792)) & ~(-1 << v792) | (v790 << v792);
                v787 += v792;
                *v21 = v787;
                v791 -= v792;
              }

              while (v791);
              v793 = (v790 + 1);
              if (v787 + v793 > v668)
              {
LABEL_1286:
                v109 = 3906;
                goto LABEL_137;
              }

              v794 = 0.0;
              if (v790 != -1)
              {
                v795 = 0;
                do
                {
                  v796 = 8 - (v787 & 7);
                  if (v793 < v796)
                  {
                    v796 = v793;
                  }

                  v795 = (*(v679 + (v787 >> 3)) >> (8 - (v787 & 7) - v796)) & ~(-1 << v796) | (v795 << v796);
                  v787 += v796;
                  *v21 = v787;
                  v793 -= v796;
                }

                while (v793);
                if (v795)
                {
                  v797 = v787 + 1;
                  if (v787 + 1 > v668)
                  {
                    goto LABEL_1286;
                  }

                  v798 = *(v679 + (v787 >> 3));
                  *v21 = v797;
                  if ((v798 >> (~v787 & 7)))
                  {
                    v799 = -v795;
                  }

                  else
                  {
                    v799 = v795;
                  }

                  v794 = v799;
                  v787 = v797;
                }
              }

              *(v789 + 44) = v794 * v786;
            }

            v756 = v787;
            v120 = ++v784;
            if (*(v785 + 248) <= v784)
            {
              goto LABEL_138;
            }
          }

          v109 = 3900;
          goto LABEL_137;
        }
      }
    }

    goto LABEL_1289;
  }

  v726 = 0;
  v727 = *a3;
  v120 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v715 + v803 > v668)
    {
      v109 = 3854;
      goto LABEL_137;
    }

    if (v803)
    {
      v728 = 0;
      v729 = v803;
      do
      {
        v730 = 8 - (v715 & 7);
        if (v729 < v730)
        {
          v730 = v729;
        }

        v728 = (*(v679 + (v715 >> 3)) >> (8 - (v715 & 7) - v730)) & ~(-1 << v730) | (v728 << v730);
        v715 += v730;
        *v21 = v715;
        v729 -= v730;
      }

      while (v729);
    }

    else
    {
      v728 = 0;
    }

    v731 = v728;
    v732 = *(v727 + 504);
    if (0x6DB6DB6DB6DB6DB7 * ((*(v727 + 512) - v732) >> 5) <= v728)
    {
      v109 = 3855;
      goto LABEL_137;
    }

    if (v715 + 5 > v668)
    {
      goto LABEL_1193;
    }

    v733 = 0;
    v734 = v732 + 224 * v731;
    v735 = 5;
    do
    {
      v736 = 8 - (v715 & 7);
      if (v735 < v736)
      {
        v736 = v735;
      }

      v733 = (*(v679 + (v715 >> 3)) >> (8 - (v715 & 7) - v736)) & ~(-1 << v736) | (v733 << v736);
      v715 += v736;
      *v21 = v715;
      v735 -= v736;
    }

    while (v735);
    v737 = (v733 + 1);
    if (v715 + v737 > v668)
    {
LABEL_1193:
      v109 = 3859;
      goto LABEL_137;
    }

    v738 = 0;
    if (v737)
    {
      do
      {
        v739 = 8 - (v715 & 7);
        if (v737 < v739)
        {
          v739 = v737;
        }

        v738 = (*(v679 + (v715 >> 3)) >> (8 - (v715 & 7) - v739)) & ~(-1 << v739) | (v738 << v739);
        v715 += v739;
        *v21 = v715;
        v737 -= v739;
      }

      while (v737);
      if (v738)
      {
        if (v715 + 1 > v668)
        {
          goto LABEL_1193;
        }

        v740 = *(v679 + (v715 >> 3));
        *v21 = v715 + 1;
        if ((v740 >> (~v715 & 7)))
        {
          v738 = -v738;
        }

        ++v715;
        if ((v738 + 0x7FFF) > 0xFFFD)
        {
          break;
        }
      }
    }

    *(v734 + 154) = v738;
    *(v734 + 216) = 1;
    if (++v726 == v725)
    {
      goto LABEL_1190;
    }
  }

  v109 = 3860;
LABEL_137:
  v120 = fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v109);
  v15 = 0;
LABEL_138:
  v121 = geo::codec::zone_mallocator::instance(v120);
  v74 = v814;
  v107 = v809;
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<long long>(v121, v812);
LABEL_139:
  if (v74)
  {
    v122 = geo::codec::zone_mallocator::instance(v25);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<long long>(v122, v74);
  }

  if (v107)
  {
    v123 = geo::codec::zone_mallocator::instance(v25);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v123, v107);
  }

  if (v108)
  {
    v124 = geo::codec::zone_mallocator::instance(v25);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v124, v108);
  }

LABEL_18:
  if (*v8)
  {
    v26 = v8[5];
    v27 = geo::codec::zone_mallocator::instance(v25);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v27, v26);
  }

  v28 = geo::codec::zone_mallocator::instance(v25);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v28, v8);
  v29 = std::chrono::steady_clock::now().__d_.__rep_;
  v820 = 137;
  v821 = &v820;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v819 + 1920), &v820, &v821) + 4) = ((v29 - rep) / 1000) * 0.001;
  if (v818 && !atomic_fetch_add(&v818->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v818->__on_zero_shared)(v818);
    std::__shared_weak_count::__release_weak(v818);
  }

  return v15;
}

void sub_18670EA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v28 = pthread_rwlock_unlock((v25 + 32));
  if (v28)
  {
    geo::read_write_lock::logFailure(v28, "unlock", v29);
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  *(v26 - 104) = 137;
  *(v26 - 96) = v26 - 104;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((*(v26 - 112) + 1920), v26 - 104, (v26 - 96)) + 4) = ((rep - a25) / 1000) * 0.001;
  if (*(v26 - 120))
  {
    if (!atomic_fetch_add((*(v26 - 120) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v31 = *(v26 - 120);
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t geo::codec::_readPolygonsofType(geo::codec::zone_mallocator *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v112 = 0;
  v113 = 0;
  v6 = *a3;
  v7 = *(a1 + 1);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (*(*a1 + 16 * v8) != v4)
    {
      v8 = ++v9;
      if (v7 <= v9)
      {
        goto LABEL_5;
      }
    }

    v10 = geo::codec::chapterAt(a1, v9, v4, (v6 + 1920));
    v6 = *a3;
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  v105 = v4;
  v11 = a3[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v104.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (!v10)
  {
    v16 = 1;
    goto LABEL_38;
  }

  v110 = 0;
  v111 = 0;
  v109 = 0uLL;
  v108 = 0;
  v102 = v6;
  if ((geo::codec::chapterReadVarUint32(v10, &v111 + 1) & 1) == 0)
  {
    v17 = *MEMORY[0x1E69E9848];
    v18 = 2599;
LABEL_20:
    v19 = fprintf(v17, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v18);
    v103 = 0;
    goto LABEL_21;
  }

  if ((geo::codec::chapterReadVarUint32(v10, &v111) & 1) == 0)
  {
    v17 = *MEMORY[0x1E69E9848];
    v18 = 2600;
    goto LABEL_20;
  }

  v12 = *a3;
  v13 = a3[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v103 = geo::codec::chapterAt(a1, HIDWORD(v111), 20, (*a3 + 1920));
  if (!v103)
  {
    v45 = 2605;
LABEL_44:
    fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v45);
    v15 = 6;
    goto LABEL_45;
  }

  if ((geo::codec::decodeVertices(v103, &v113, &v112, *(v103 + 16) > 0x43u) & 1) == 0)
  {
    v45 = 2607;
    goto LABEL_44;
  }

  v15 = 0;
LABEL_45:
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v106 = 20;
  *&v107 = &v106;
  v19 = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v12 + 1920), &v106, &v107);
  *(v19 + 4) = ((rep - v14.__d_.__rep_) / 1000) * 0.001;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v15 != 6)
  {
    if (v4 != 32)
    {
      goto LABEL_59;
    }

    v48 = *a3;
    v47 = a3[1];
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v99.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (geo::codec::decodePointCharacteristics(a1, 52, (*a3 + 1224), (*a3 + 1232), (*a3 + 1256), (*a3 + 1264), (*a3 + 1920)))
    {
      v49 = 0;
    }

    else
    {
      fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 2612);
      v49 = 6;
    }

    v50 = std::chrono::steady_clock::now().__d_.__rep_;
    v106 = 32;
    *&v107 = &v106;
    v19 = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v48 + 1920), &v106, &v107);
    *(v19 + 4) = ((v50 - v99.__d_.__rep_) / 1000) * 0.001;
    if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }

    if (v49 != 6)
    {
LABEL_59:
      v51 = v113;
      if (v113 || (v51 = v112) != 0)
      {
        v52 = *(v51 + 5);
      }

      else
      {
        v52 = 0;
      }

      if (geo::codec::chapterReadVarUint32(v10, &v110 + 1))
      {
        if (HIDWORD(v110) >= 0x10000)
        {
          v80 = *MEMORY[0x1E69E9848];
          v81 = 2625;
        }

        else if (geo::codec::_makeSpaceForLabels(HIDWORD(v110), &v108, a3))
        {
          VarUint32 = geo::codec::chapterReadVarUint32(v10, &v110);
          if (VarUint32)
          {
            v54 = v110;
            if (v110 >= 0x10000)
            {
              v80 = *MEMORY[0x1E69E9848];
              v81 = 2631;
            }

            else
            {
              if (v4 == 32)
              {
                v55 = *a3;
                v56 = *(*a3 + 96);
                v57 = *(*a3 + 104);
                v58 = &v57[-v56];
                v59 = &v57[-v56] >> 7;
                v60 = v110 - v59;
                if (v110 <= v59)
                {
                  if (v110 >= v59)
                  {
                    goto LABEL_126;
                  }

                  v101 = *a3;
                  for (i = (v56 + (v110 << 7)); v57 != i; v57 -= 128)
                  {
                    v89 = *(v57 - 12);
                    if (v89 && !atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v89->__on_zero_shared)(v89);
                      std::__shared_weak_count::__release_weak(v89);
                    }

                    v90 = *(v57 - 15);
                    if (v90)
                    {
                      std::__shared_weak_count::__release_weak(v90);
                    }
                  }
                }

                else
                {
                  v61 = v55[14];
                  if (v60 > (v61 - v57) >> 7)
                  {
                    v62 = v61 - v56;
                    if (v62 >> 6 > v110)
                    {
                      v54 = v62 >> 6;
                    }

                    if (v62 >= 0x7FFFFFFFFFFFFF80)
                    {
                      v54 = 0x1FFFFFFFFFFFFFFLL;
                    }

                    v100 = v54;
                    v63 = geo::codec::zone_mallocator::instance(VarUint32);
                    v64 = pthread_rwlock_rdlock((v63 + 32));
                    if (v64)
                    {
                      geo::read_write_lock::logFailure(v64, "read lock", v65);
                    }

                    v97 = malloc_type_zone_malloc(*v63, v100 << 7, 0x1070040B38A93C1uLL);
                    atomic_fetch_add((v63 + 24), 1u);
                    v66 = pthread_rwlock_unlock((v63 + 32));
                    if (v66)
                    {
                      geo::read_write_lock::logFailure(v66, "unlock", v67);
                    }

                    v68 = &v58[v97];
                    v98 = v97 + 128 * v100;
                    bzero(v68, v60 << 7);
                    v70 = &v68[128 * v60];
                    v72 = v55[12];
                    v71 = v55[13];
                    v73 = &v68[v72 - v71];
                    if (v71 != v72)
                    {
                      v95 = &v68[v72 - v71];
                      v96 = v70;
                      v74 = v55[12];
                      v75 = v95;
                      do
                      {
                        *v75 = *v74;
                        *v74 = 0;
                        *(v74 + 8) = 0;
                        *(v75 + 1) = *(v74 + 16);
                        *(v75 + 4) = *(v74 + 32);
                        *(v74 + 24) = 0;
                        *(v74 + 32) = 0;
                        v76 = *(v74 + 40);
                        v77 = *(v74 + 56);
                        *(v75 + 18) = *(v74 + 72);
                        *(v75 + 56) = v77;
                        *(v75 + 40) = v76;
                        v78 = *(v74 + 76);
                        *(v75 + 92) = *(v74 + 92);
                        *(v75 + 76) = v78;
                        v79 = *(v74 + 100);
                        *(v75 + 116) = *(v74 + 116);
                        *(v75 + 100) = v79;
                        v74 += 128;
                        v75 += 128;
                      }

                      while (v74 != v71);
                      do
                      {
                        v82 = *(v72 + 4);
                        if (v82 && !atomic_fetch_add(&v82->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v82->__on_zero_shared)(v82);
                          std::__shared_weak_count::__release_weak(v82);
                        }

                        v69 = *(v72 + 1);
                        if (v69)
                        {
                          std::__shared_weak_count::__release_weak(v69);
                        }

                        v72 += 128;
                      }

                      while (v72 != v71);
                      v72 = v55[12];
                      v73 = v95;
                      v70 = v96;
                    }

                    v55[12] = v73;
                    v55[13] = v70;
                    v55[14] = v98;
                    if (v72)
                    {
                      v94 = geo::codec::zone_mallocator::instance(v69);
                      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPolygonFeature>(v94, v72);
                    }

LABEL_126:
                    geo::codec::attributesForFeatureType(&v107, 2);
                  }

                  v101 = *a3;
                  bzero(v57, v60 << 7);
                  i = &v57[128 * v60];
                }

                *(v101 + 104) = i;
                goto LABEL_126;
              }

              if (v52)
              {
                v83 = *a3;
                v84 = *(*a3 + 280);
                v85 = *(*a3 + 288);
                v86 = 0xF0F0F0F0F0F0F0F1 * ((v85 - v84) >> 3);
                v87 = v110 - v86;
                if (v110 <= v86)
                {
                  if (v110 < v86)
                  {
                    v91 = v84 + 136 * v110;
                    while (v85 != v91)
                    {
                      v92 = *(v85 - 104);
                      if (v92 && !atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v92->__on_zero_shared)(v92, v87);
                        std::__shared_weak_count::__release_weak(v92);
                      }

                      v93 = *(v85 - 128);
                      if (v93)
                      {
                        std::__shared_weak_count::__release_weak(v93);
                      }

                      v85 -= 136;
                    }

                    *(v83 + 288) = v91;
                  }
                }

                else
                {
                  std::vector<GeoCodecsBuildingFootprintFeature,geo::allocator_adapter<GeoCodecsBuildingFootprintFeature,geo::codec::zone_mallocator>>::__append((v83 + 280), v87);
                }

                if (*(*a3 + 312))
                {
                  geo::codec::attributesForFeatureType(&v107, 4);
                }

                v80 = *MEMORY[0x1E69E9848];
                v81 = 2641;
              }

              else
              {
                v80 = *MEMORY[0x1E69E9848];
                v81 = 2636;
              }
            }
          }

          else
          {
            v80 = *MEMORY[0x1E69E9848];
            v81 = 2629;
          }
        }

        else
        {
          v80 = *MEMORY[0x1E69E9848];
          v81 = 2626;
        }
      }

      else
      {
        v80 = *MEMORY[0x1E69E9848];
        v81 = 2622;
      }

      v19 = fprintf(v80, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v81);
    }
  }

LABEL_21:
  v16 = 0;
  if (v113)
  {
    v20 = *(v113 + 1);
    v21 = geo::codec::zone_mallocator::instance(v19);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsTileCurveVertex>(v21, v20);
    v22 = v113;
    v23 = *(v113 + 4);
    v25 = geo::codec::zone_mallocator::instance(v24);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsRange>(v25, v23);
    v27 = geo::codec::zone_mallocator::instance(v26);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsCurveVertexPool>(v27, v22);
  }

  v28 = v112;
  if (v112)
  {
    v29 = *(v112 + 1);
    v30 = geo::codec::zone_mallocator::instance(v19);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVectorTilePoint>(v30, v29);
    v31 = *(v28 + 4);
    v33 = geo::codec::zone_mallocator::instance(v32);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsRange>(v33, v31);
    v35 = geo::codec::zone_mallocator::instance(v34);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVertexPool>(v35, v28);
  }

  if (a1 && v103)
  {
    if (*v103)
    {
      v36 = v103[5];
      v37 = geo::codec::zone_mallocator::instance(v19);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v37, v36);
    }

    v38 = geo::codec::zone_mallocator::instance(v19);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v38, v103);
    goto LABEL_31;
  }

  if (a1)
  {
LABEL_31:
    if (*v10)
    {
      v39 = v10[5];
      v40 = geo::codec::zone_mallocator::instance(v19);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v40, v39);
    }

    v41 = geo::codec::zone_mallocator::instance(v19);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v41, v10);
  }

  v42 = *(&v109 + 1);
  if (*(&v109 + 1) && !atomic_fetch_add((*(&v109 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  v6 = v102;
LABEL_38:
  v43 = std::chrono::steady_clock::now().__d_.__rep_;
  *&v107 = v105;
  *&v109 = &v107;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v6 + 1920), &v107, &v109) + 4) = ((v43 - v104.__d_.__rep_) / 1000) * 0.001;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  return v16 & 1;
}

void sub_186710874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v36 = *(v34 - 152);
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36, a2, a3, a4, a5, a6, a7, a8);
    std::__shared_weak_count::__release_weak(v36);
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  a33 = a30;
  *(v34 - 160) = &a33;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((a27 + 1920), &a33, (v34 - 160)) + 4) = ((rep - a29) / 1000) * 0.001;
  if (v33)
  {
    if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t geo::codec::_readLines(geo::codec::zone_mallocator *a1, uint64_t *a2)
{
  v4 = *a2;
  v58 = 0;
  *v59 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v5 = *(a1 + 1);
  if (!v5)
  {
LABEL_5:
    v8 = 0;
    v9 = a2[1];
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = 0;
  v7 = 0;
  while (*(*a1 + 16 * v6) != 31)
  {
    v6 = ++v7;
    if (v5 <= v7)
    {
      goto LABEL_5;
    }
  }

  v8 = geo::codec::chapterAt(a1, v7, 31, (v4 + 1920));
  v4 = *a2;
  v9 = a2[1];
  if (v9)
  {
LABEL_6:
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  v51.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (!v8)
  {
    v15 = 1;
    goto LABEL_81;
  }

  v54 = 0uLL;
  v50 = v8;
  if ((geo::codec::chapterReadVarUint32(v8, &v57) & 1) == 0)
  {
    v16 = fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 1978);
    v49 = 0;
    goto LABEL_71;
  }

  v10 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v13 = geo::codec::chapterAt(a1, v57, 20, (*a2 + 1920));
  v49 = v13;
  if (!v13)
  {
    v17 = 1982;
LABEL_20:
    fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v17);
    v14 = 6;
    goto LABEL_21;
  }

  if ((geo::codec::decodeVertices(v13, (*a2 + 776), (*a2 + 800), *(v13 + 16) > 0x43u) & 1) == 0)
  {
    v17 = 1984;
    goto LABEL_20;
  }

  v14 = 0;
LABEL_21:
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  __p[0] = 20;
  *&v53 = __p;
  v16 = std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v10 + 1920), __p, &v53);
  *(v16 + 4) = ((rep - v12.__d_.__rep_) / 1000) * 0.001;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (v14 == 6)
    {
      goto LABEL_71;
    }
  }

  else if (v14 == 6)
  {
    goto LABEL_71;
  }

  if ((geo::codec::decodePointCharacteristics(a1, 51, (*a2 + 1208), (*a2 + 1216), (*a2 + 1240), (*a2 + 1248), (*a2 + 1920)) & 1) == 0)
  {
    v34 = *MEMORY[0x1E69E9848];
    v35 = 1987;
LABEL_70:
    v16 = fprintf(v34, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v35);
    goto LABEL_71;
  }

  if ((geo::codec::chapterReadVarUint32(v50, &v58) & 1) == 0)
  {
    v34 = *MEMORY[0x1E69E9848];
    v35 = 1989;
    goto LABEL_70;
  }

  if ((geo::codec::chapterReadVarUint32(v50, &v59[1]) & 1) == 0)
  {
    v34 = *MEMORY[0x1E69E9848];
    v35 = 1992;
    goto LABEL_70;
  }

  if ((geo::codec::chapterReadVarUint32(v50, v59) & 1) == 0)
  {
    v34 = *MEMORY[0x1E69E9848];
    v35 = 1993;
    goto LABEL_70;
  }

  if ((geo::codec::chapterReadVarUint32(v50, &v58 + 1) & 1) == 0)
  {
    v34 = *MEMORY[0x1E69E9848];
    v35 = 1994;
    goto LABEL_70;
  }

  if (v59[1] >= 0x10000)
  {
    v34 = *MEMORY[0x1E69E9848];
    v35 = 1997;
    goto LABEL_70;
  }

  v19 = v59[0];
  if (v59[0] >= 0x10000)
  {
    v34 = *MEMORY[0x1E69E9848];
    v35 = 1998;
    goto LABEL_70;
  }

  v20 = HIDWORD(v58);
  if (HIDWORD(v58) >= 0x10000)
  {
    v34 = *MEMORY[0x1E69E9848];
    v35 = 1999;
    goto LABEL_70;
  }

  if ((geo::codec::_makeSpaceForLabels(v59[1], &v56, a2) & 1) == 0)
  {
    v34 = *MEMORY[0x1E69E9848];
    v35 = 2002;
    goto LABEL_70;
  }

  SpaceForShields = geo::codec::_makeSpaceForShields(v19, &v55, a2);
  if ((SpaceForShields & 1) == 0)
  {
    v34 = *MEMORY[0x1E69E9848];
    v35 = 2003;
    goto LABEL_70;
  }

  if (!v20)
  {
    goto LABEL_40;
  }

  v22 = geo::codec::zone_mallocator::instance(SpaceForShields);
  v23 = pthread_rwlock_rdlock((v22 + 32));
  if (v23)
  {
    geo::read_write_lock::logFailure(v23, "read lock", v24);
  }

  v25 = malloc_type_zone_calloc(*v22, v20, 0x18uLL, 0x1000040504FFAC1uLL);
  atomic_fetch_add((v22 + 24), 1u);
  v26 = pthread_rwlock_unlock((v22 + 32));
  if (v26)
  {
    geo::read_write_lock::logFailure(v26, "unlock", v27);
  }

  v28 = *a2;
  *(v28 + 760) = v25;
  *(v28 + 768) = v20;
  if (v25)
  {
LABEL_40:
    if (geo::codec::chapterReadVarUint32(v50, &v57 + 1))
    {
      if (HIDWORD(v57) < 0x10000)
      {
        v29 = *a2;
        v30 = *(*a2 + 32);
        v31 = *(*a2 + 40);
        v32 = 0xCF3CF3CF3CF3CF3DLL * ((v31 - v30) >> 3);
        v33 = HIDWORD(v57) - v32;
        if (HIDWORD(v57) <= v32)
        {
          if (HIDWORD(v57) < v32)
          {
            v36 = v30 + 168 * HIDWORD(v57);
            while (v31 != v36)
            {
              v37 = *(v31 - 136);
              if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v37->__on_zero_shared)(v37, v33);
                std::__shared_weak_count::__release_weak(v37);
              }

              v38 = *(v31 - 160);
              if (v38)
              {
                std::__shared_weak_count::__release_weak(v38);
              }

              v31 -= 168;
            }

            *(v29 + 40) = v36;
          }
        }

        else
        {
          std::vector<GeoCodecsRoadFeature,geo::allocator_adapter<GeoCodecsRoadFeature,geo::codec::zone_mallocator>>::__append((*a2 + 32), v33);
        }

        geo::codec::attributesForFeatureType(&v53, 1);
      }

      v34 = *MEMORY[0x1E69E9848];
      v35 = 2016;
    }

    else
    {
      v34 = *MEMORY[0x1E69E9848];
      v35 = 2013;
    }

    goto LABEL_70;
  }

  v16 = fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 2010);
LABEL_71:
  v15 = 0;
  if (a1)
  {
    if (*v50)
    {
      v39 = v50[5];
      v40 = geo::codec::zone_mallocator::instance(v16);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v40, v39);
    }

    v41 = geo::codec::zone_mallocator::instance(v16);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v41, v50);
    if (v49)
    {
      if (*v49)
      {
        v42 = v49[5];
        v43 = geo::codec::zone_mallocator::instance(v16);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v43, v42);
      }

      v44 = geo::codec::zone_mallocator::instance(v16);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v44, v49);
    }
  }

  v45 = geo::codec::zone_mallocator::instance(v16);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsConnectivityPointOnRoad>(v45, 0);
  v46 = *(&v54 + 1);
  if (*(&v54 + 1) && !atomic_fetch_add((*(&v54 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

LABEL_81:
  v47 = std::chrono::steady_clock::now().__d_.__rep_;
  __p[0] = 31;
  *&v53 = __p;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v4 + 1920), __p, &v53) + 4) = ((v47 - v51.__d_.__rep_) / 1000) * 0.001;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  return v15 & 1;
}

void sub_186713FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t __p, uint64_t a38, uint64_t a39, void **a40)
{
  operator delete(v42);
  v45 = a40;
  if (a40)
  {
    v49 = *a40;
    *a40 = 0;
    if (v49)
    {
      v50 = *v49;
      *v49 = 0;
      if (v50)
      {
        v51 = v50[13];
        if (v51)
        {
          v50[14] = v51;
          operator delete(v51);
        }

        v52 = v50[10];
        if (v52)
        {
          v50[11] = v52;
          operator delete(v52);
        }

        MEMORY[0x18CFD1E40](v50, 0x1070C40ADA6D0DELL);
      }

      MEMORY[0x18CFD1E40](v49, 0x20C4093837F09);
    }

    MEMORY[0x18CFD1E40](v45, 0x20C4093837F09);
    v46 = __p;
    if (!__p)
    {
LABEL_3:
      v47 = *(v43 - 184);
      if (!v47)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v46 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v46);
  v47 = *(v43 - 184);
  if (!v47)
  {
LABEL_4:
    v48 = *(v43 - 208);
    if (!v48)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_16:
  v53 = *v47;
  *v47 = 0;
  if (v53)
  {
    v54 = *v53;
    *v53 = 0;
    if (v54)
    {
      v55 = v54[13];
      if (v55)
      {
        v54[14] = v55;
        operator delete(v55);
      }

      v56 = v54[10];
      if (v56)
      {
        v54[11] = v56;
        operator delete(v56);
      }

      MEMORY[0x18CFD1E40](v54, 0x1070C40ADA6D0DELL);
    }

    MEMORY[0x18CFD1E40](v53, 0x20C4093837F09);
  }

  MEMORY[0x18CFD1E40](v47, 0x20C4093837F09);
  v48 = *(v43 - 208);
  if (!v48)
  {
LABEL_26:
    v57 = *(v43 - 152);
    if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v57->__on_zero_shared)(v57);
      std::__shared_weak_count::__release_weak(v57);
    }

    rep = std::chrono::steady_clock::now().__d_.__rep_;
    __p = 31;
    *(v43 - 208) = &__p;
    *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v41 + 1920), &__p, (v43 - 208)) + 4) = ((rep - a34) / 1000) * 0.001;
    if (v40)
    {
      if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v40->__on_zero_shared)(v40);
        std::__shared_weak_count::__release_weak(v40);
      }
    }

    _Unwind_Resume(a1);
  }

LABEL_25:
  operator delete(v48);
  goto LABEL_26;
}

uint64_t geo::codec::_readTransitNetwork(geo::codec::zone_mallocator *a1, uint64_t a2, uint64_t *a3)
{
  v1242 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1);
  if (!v3)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  while (*(*a1 + 16 * v5) != 129)
  {
    v5 = ++v6;
    if (v3 <= v6)
    {
      return 1;
    }
  }

  v8 = geo::codec::chapterAt(a1, v6, 129, (*a3 + 1920));
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v14 = v9[6];
  v13 = v9[7];
  v15 = v13 - v14;
  if (v13 >= v14)
  {
    v16 = 0;
    *(v9 + 32) = 1;
    v19 = v9[5] + v14;
    v9[2] = v15;
    v9[3] = 0;
    v9[1] = v19;
  }

  else
  {
    v15 = v9[2];
    v16 = v9[3];
  }

  v20 = 8 * v15;
  if (v16 + 5 > 8 * v15)
  {
    goto LABEL_20;
  }

  v21 = 0;
  v22 = v9[1];
  v23 = 5;
  do
  {
    v24 = 8 - (v16 & 7);
    if (v23 < v24)
    {
      v24 = v23;
    }

    v21 = (*(v22 + (v16 >> 3)) >> (8 - (v16 & 7) - v24)) & ~(-1 << v24) | (v21 << v24);
    v16 += v24;
    v9[3] = v16;
    v23 -= v24;
  }

  while (v23);
  v25 = (v21 + 1);
  if (v16 + v25 > v20)
  {
LABEL_20:
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4380;
    goto LABEL_21;
  }

  v33 = 0;
  if (v21 != -1)
  {
    do
    {
      v34 = 8 - (v16 & 7);
      if (v25 < v34)
      {
        v34 = v25;
      }

      v33 = (*(v22 + (v16 >> 3)) >> (8 - (v16 & 7) - v34)) & ~(-1 << v34) | (v33 << v34);
      v16 += v34;
      v9[3] = v16;
      v25 -= v34;
    }

    while (v25);
  }

  if (v16 + 5 > v20)
  {
    goto LABEL_36;
  }

  v35 = 0;
  v36 = 5;
  do
  {
    v37 = 8 - (v16 & 7);
    if (v36 < v37)
    {
      v37 = v36;
    }

    v35 = (*(v22 + (v16 >> 3)) >> (8 - (v16 & 7) - v37)) & ~(-1 << v37) | (v35 << v37);
    v16 += v37;
    v9[3] = v16;
    v36 -= v37;
  }

  while (v36);
  v38 = (v35 + 1);
  if (v16 + v38 > v20)
  {
LABEL_36:
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4381;
    goto LABEL_21;
  }

  v39 = 0;
  if (v35 != -1)
  {
    do
    {
      v40 = 8 - (v16 & 7);
      if (v38 < v40)
      {
        v40 = v38;
      }

      v39 = (*(v22 + (v16 >> 3)) >> (8 - (v16 & 7) - v40)) & ~(-1 << v40) | (v39 << v40);
      v16 += v40;
      v9[3] = v16;
      v38 -= v40;
    }

    while (v38);
  }

  if ((geo::codec::decodeSectionEncoding((v9 + 1), *a3 + 1408, 1, a2, 0) & 1) == 0)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4383;
    goto LABEL_21;
  }

  v41 = v9[3];
  v42 = 8 * v9[2];
  if (v41 + 5 > v42)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4386;
    goto LABEL_21;
  }

  v43 = 0;
  v44 = v9[1];
  v45 = 5;
  do
  {
    v46 = 8 - (v41 & 7);
    if (v45 < v46)
    {
      v46 = v45;
    }

    v43 = (*(v44 + (v41 >> 3)) >> (8 - (v41 & 7) - v46)) & ~(-1 << v46) | (v43 << v46);
    v41 += v46;
    v9[3] = v41;
    v45 -= v46;
  }

  while (v45);
  if (v41 + 5 > v42)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4388;
    goto LABEL_21;
  }

  v47 = 0;
  v48 = (v43 + 1);
  v49 = 5;
  do
  {
    v50 = 8 - (v41 & 7);
    if (v49 < v50)
    {
      v50 = v49;
    }

    v47 = (*(v44 + (v41 >> 3)) >> (8 - (v41 & 7) - v50)) & ~(-1 << v50) | (v47 << v50);
    v41 += v50;
    v9[3] = v41;
    v49 -= v50;
  }

  while (v49);
  if (v41 + 5 > v42)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4390;
    goto LABEL_21;
  }

  v51 = 0;
  v52 = 5;
  do
  {
    v53 = 8 - (v41 & 7);
    if (v52 < v53)
    {
      v53 = v52;
    }

    v51 = (*(v44 + (v41 >> 3)) >> (8 - (v41 & 7) - v53)) & ~(-1 << v53) | (v51 << v53);
    v41 += v53;
    v9[3] = v41;
    v52 -= v53;
  }

  while (v52);
  v1213 = (v47 + 1);
  v1214 = v48;
  v1222 = (v51 + 1);
  if (!v33)
  {
    v85 = 0;
    goto LABEL_81;
  }

  v54 = *a3;
  v55 = *(*a3 + 1360);
  v56 = *(*a3 + 1352);
  v57 = &v55[-v56];
  v58 = 0xD37A6F4DE9BD37A7 * (&v55[-v56] >> 3);
  v1216 = v33;
  v59 = v33 >= v58;
  v60 = v33 - v58;
  if (v60 == 0 || !v59)
  {
    if (v59)
    {
      goto LABEL_123;
    }

    v123 = (v56 + 184 * v1216);
    while (v55 != v123)
    {
      v124 = *(v55 - 22);
      if (v124)
      {
        std::__shared_weak_count::__release_weak(v124);
      }

      v55 -= 184;
    }

    goto LABEL_109;
  }

  v61 = v54[171];
  if (0xD37A6F4DE9BD37A7 * ((v61 - v55) >> 3) >= v60)
  {
    v125 = 184 * ((184 * v60 - 184) / 0xB8) + 184;
    bzero(v55, v125);
    v123 = &v55[v125];
LABEL_109:
    v54[170] = v123;
    goto LABEL_123;
  }

  v62 = 0xD37A6F4DE9BD37A7 * ((v61 - v56) >> 3);
  v63 = 2 * v62;
  if (2 * v62 <= v1216)
  {
    v63 = v1216;
  }

  v59 = v62 >= 0xB21642C8590B21;
  v64 = 0x1642C8590B21642;
  if (!v59)
  {
    v64 = v63;
  }

  count = v64;
  v65 = geo::codec::zone_mallocator::instance(v48);
  v66 = pthread_rwlock_rdlock((v65 + 32));
  if (v66)
  {
    geo::read_write_lock::logFailure(v66, "read lock", v67);
  }

  v1194 = malloc_type_zone_malloc(*v65, 184 * count, 0x1020040E6603EAFuLL);
  atomic_fetch_add((v65 + 24), 1u);
  v68 = pthread_rwlock_unlock((v65 + 32));
  if (v68)
  {
    geo::read_write_lock::logFailure(v68, "unlock", v69);
  }

  v70 = &v57[v1194];
  counta = v1194 + 184 * count;
  bzero(v70, 184 * ((184 * v60 - 184) / 0xB8) + 184);
  v1195 = &v70[184 * ((184 * v60 - 184) / 0xB8) + 184];
  v72 = v54[170];
  v73 = v54[169];
  v74 = &v70[v73 - v72];
  if (v72 != v73)
  {
    v75 = v54[169];
    v76 = v74;
    do
    {
      *v76 = *v75;
      *v75 = 0;
      *(v75 + 8) = 0;
      v77 = *(v75 + 112);
      v79 = *(v75 + 64);
      v78 = *(v75 + 80);
      *(v76 + 6) = *(v75 + 96);
      *(v76 + 7) = v77;
      *(v76 + 4) = v79;
      *(v76 + 5) = v78;
      v81 = *(v75 + 144);
      v80 = *(v75 + 160);
      v82 = *(v75 + 128);
      *(v76 + 22) = *(v75 + 176);
      *(v76 + 9) = v81;
      *(v76 + 10) = v80;
      *(v76 + 8) = v82;
      v83 = *(v75 + 48);
      v84 = *(v75 + 16);
      *(v76 + 2) = *(v75 + 32);
      *(v76 + 3) = v83;
      *(v76 + 1) = v84;
      v75 += 184;
      v76 += 184;
    }

    while (v75 != v72);
    do
    {
      v71 = *(v73 + 1);
      if (v71)
      {
        std::__shared_weak_count::__release_weak(v71);
      }

      v73 += 184;
    }

    while (v73 != v72);
    v73 = v54[169];
  }

  v54[169] = v74;
  v54[170] = v1195;
  v54[171] = counta;
  if (v73)
  {
    v132 = geo::codec::zone_mallocator::instance(v71);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsTransitLink>(v132, v73);
  }

LABEL_123:
  v133 = v9[3];
  v134 = 8 * v9[2];
  if (v133 + 5 > v134)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4396;
    goto LABEL_21;
  }

  v135 = 0;
  v136 = v9[1];
  v137 = 5;
  do
  {
    v138 = 8 - (v133 & 7);
    if (v137 < v138)
    {
      v138 = v137;
    }

    v135 = (*(v136 + (v133 >> 3)) >> (8 - (v133 & 7) - v138)) & ~(-1 << v138) | (v135 << v138);
    v133 += v138;
    v9[3] = v133;
    v137 -= v138;
  }

  while (v137);
  if (v133 + 5 > v134)
  {
    v27 = 4398;
    goto LABEL_261;
  }

  v139 = 0;
  v140 = 5;
  do
  {
    v141 = 8 - (v133 & 7);
    if (v140 < v141)
    {
      v141 = v140;
    }

    v139 = (*(v136 + (v133 >> 3)) >> (8 - (v133 & 7) - v141)) & ~(-1 << v141) | (v139 << v141);
    v133 += v141;
    v9[3] = v133;
    v140 -= v141;
  }

  while (v140);
  v142 = 0;
  v143 = (v135 + 1);
  v144 = (v139 + 1);
  v145 = *a3;
  do
  {
    if (v133 + v143 > v134)
    {
      v27 = 4402;
      goto LABEL_261;
    }

    v147 = 0;
    if (v143)
    {
      v148 = v143;
      do
      {
        v149 = 8 - (v133 & 7);
        if (v148 < v149)
        {
          v149 = v148;
        }

        v147 = ((*(v136 + (v133 >> 3)) >> (8 - (v133 & 7) - v149)) & ~(-1 << v149) | (v147 << v149));
        v133 += v149;
        v9[3] = v133;
        v148 -= v149;
      }

      while (v148);
    }

    v146 = *(v145 + 1352) + 184 * v140;
    *(v146 + 16) = v142;
    *(v146 + 20) = v147;
    v142 += v147;
    ++v140;
  }

  while (v140 != v1216);
  countc = v142;
  if (v133 + v144 > v134)
  {
    v27 = 4409;
    goto LABEL_261;
  }

  if (v144)
  {
    LODWORD(v150) = 0;
    do
    {
      v151 = 8 - (v133 & 7);
      if (v144 < v151)
      {
        v151 = v144;
      }

      v150 = (*(v136 + (v133 >> 3)) >> (8 - (v133 & 7) - v151)) & ~(-1 << v151) | (v150 << v151);
      v133 += v151;
      v9[3] = v133;
      v144 -= v151;
    }

    while (v144);
    *(*a3 + 1400) = v150;
    if (v150)
    {
      v152 = *(*a3 + 1400);
      v153 = geo::codec::zone_mallocator::instance(v147);
      v154 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsPBTransitLineKey>(v153, v152);
      *(*a3 + 1384) = v154;
      if (!v154)
      {
        v27 = 4414;
        goto LABEL_261;
      }
    }
  }

  else
  {
    *(*a3 + 1400) = 0;
  }

  v197 = 0;
  v198 = 0;
  v199 = *(*a3 + 1352);
  do
  {
    v201 = *a3;
    v200 = a3[1];
    if (v200)
    {
      atomic_fetch_add_explicit((v200 + 16), 1uLL, memory_order_relaxed);
    }

    v202 = (v199 + 184 * v197);
    v48 = v202[1];
    *v202 = v201;
    v202[1] = v200;
    if (v48)
    {
      std::__shared_weak_count::__release_weak(v48);
    }

    v203 = v9[3];
    v204 = 8 * v9[2];
    if (v203 + v1214 > v204)
    {
      v27 = 4422;
      goto LABEL_261;
    }

    if (v1214)
    {
      v205 = 0;
      v206 = v9[1];
      v207 = v1214;
      do
      {
        v208 = 8 - (v203 & 7);
        if (v207 < v208)
        {
          v208 = v207;
        }

        v205 = (*(v206 + (v203 >> 3)) >> (8 - (v203 & 7) - v208)) & ~(-1 << v208) | (v205 << v208);
        v203 += v208;
        v9[3] = v203;
        v207 -= v208;
      }

      while (v207);
      if (v205)
      {
        v209 = v205 + v198;
        v210 = *a3;
        if (v1213)
        {
          v211 = v198;
          while (v203 + v1213 <= v204)
          {
            v212 = 0;
            v213 = v1213;
            do
            {
              v214 = 8 - (v203 & 7);
              if (v213 < v214)
              {
                v214 = v213;
              }

              v48 = (-1 << v214);
              v212 = (*(v206 + (v203 >> 3)) >> (8 - (v203 & 7) - v214)) & ~v48 | (v212 << v214);
              v203 += v214;
              v9[3] = v203;
              v213 -= v214;
            }

            while (v213);
            v215 = *(v210 + 1384);
            *(v215 + 8 * v211) = v212;
            if (v203 + v1222 > v204)
            {
              goto LABEL_260;
            }

            v216 = 0;
            if (v1222)
            {
              v217 = v1222;
              do
              {
                v218 = 8 - (v203 & 7);
                if (v217 < v218)
                {
                  v218 = v217;
                }

                v48 = (*(v206 + (v203 >> 3)) >> (8 - (v203 & 7) - v218)) & ~(-1 << v218);
                v216 = v48 | (v216 << v218);
                v203 += v218;
                v9[3] = v203;
                v217 -= v218;
              }

              while (v217);
            }

            *(v215 + 8 * v211++ + 4) = v216;
            if (v209 == v211)
            {
              goto LABEL_243;
            }
          }
        }

        else
        {
          v211 = v198;
          while (v203 <= v204)
          {
            v220 = *(v210 + 1384);
            *(v220 + 8 * v211) = 0;
            v48 = v1222;
            if (v203 + v1222 > v204)
            {
LABEL_260:
              v27 = 4428;
              goto LABEL_261;
            }

            v221 = 0;
            if (v1222)
            {
              v222 = v1222;
              do
              {
                v223 = 8 - (v203 & 7);
                if (v222 < v223)
                {
                  v223 = v222;
                }

                v48 = (*(v206 + (v203 >> 3)) >> (8 - (v203 & 7) - v223)) & ~(-1 << v223);
                v221 = v48 | (v221 << v223);
                v203 += v223;
                v9[3] = v203;
                v222 -= v223;
              }

              while (v222);
            }

            *(v220 + 8 * v211++ + 4) = v221;
            if (v209 == v211)
            {
              goto LABEL_243;
            }
          }
        }

        v27 = 4426;
        goto LABEL_261;
      }
    }

    v205 = 0;
    v210 = *a3;
    v211 = v198;
LABEL_243:
    v199 = *(v210 + 1352);
    v219 = v199 + 184 * v197;
    *(v219 + 24) = v198;
    *(v219 + 32) = v211 - v198;
    if (v211 - v198 != v205)
    {
      v27 = 4433;
      goto LABEL_261;
    }

    ++v197;
    v198 = v211;
  }

  while (v197 != v1216);
  v85 = countc;
LABEL_81:
  countb = v85;
  v86 = *a3;
  if (!v39)
  {
    v126 = v86[178];
    v127 = v86[177];
    goto LABEL_191;
  }

  v87 = v39;
  v88 = v86[178];
  v89 = v86[177];
  v90 = &v88[-v89];
  v91 = 0x82FA0BE82FA0BE83 * (&v88[-v89] >> 3);
  v92 = v39 - v91;
  v1217 = *a3;
  if (v39 <= v91)
  {
    if (v39 >= v91)
    {
      goto LABEL_160;
    }

    v128 = (v89 + 344 * v39);
    if (v88 != v128)
    {
      v129 = (v88 - 336);
      do
      {
        v131 = v129[3];
        if (v131 && !atomic_fetch_add(&v131->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v131->__on_zero_shared)(v131);
          std::__shared_weak_count::__release_weak(v131);
        }

        if (*v129)
        {
          std::__shared_weak_count::__release_weak(*v129);
        }

        v130 = (v129 - 1);
        v129 -= 43;
      }

      while (v130 != v128);
    }

    goto LABEL_148;
  }

  v93 = v86[179];
  if (0x82FA0BE82FA0BE83 * ((v93 - v88) >> 3) >= v92)
  {
    bzero(v88, 344 * ((344 * v92 - 344) / 0x158) + 344);
    v128 = &v88[344 * ((344 * v92 - 344) / 0x158) + 344];
LABEL_148:
    v1217[178] = v128;
    goto LABEL_160;
  }

  v94 = 0x82FA0BE82FA0BE83 * ((v93 - v89) >> 3);
  v95 = 2 * v94;
  if (2 * v94 <= v39)
  {
    v95 = v39;
  }

  v59 = v94 >= 0x5F417D05F417D0;
  v96 = 0xBE82FA0BE82FA0;
  if (!v59)
  {
    v96 = v95;
  }

  v1196 = v96;
  v97 = geo::codec::zone_mallocator::instance(v48);
  v98 = pthread_rwlock_rdlock((v97 + 32));
  if (v98)
  {
    geo::read_write_lock::logFailure(v98, "read lock", v99);
  }

  v1183 = malloc_type_zone_malloc(*v97, 344 * v1196, 0x10700400EA5F130uLL);
  atomic_fetch_add((v97 + 24), 1u);
  v100 = pthread_rwlock_unlock((v97 + 32));
  if (v100)
  {
    geo::read_write_lock::logFailure(v100, "unlock", v101);
  }

  v102 = &v90[v1183];
  v1184 = v1183 + 344 * v1196;
  bzero(v102, 344 * ((344 * v92 - 344) / 0x158) + 344);
  v1176 = &v102[344 * ((344 * v92 - 344) / 0x158) + 344];
  v104 = v1217[178];
  v105 = v1217[177];
  v1197 = &v102[v105 - v104];
  if (v104 != v105)
  {
    v106 = v1217[177];
    v107 = &v102[v105 - v104];
    do
    {
      *v107 = *v106;
      *v106 = 0;
      *(v106 + 8) = 0;
      *(v107 + 1) = *(v106 + 16);
      *(v107 + 4) = *(v106 + 32);
      *(v106 + 24) = 0;
      *(v106 + 32) = 0;
      v108 = *(v106 + 40);
      v109 = *(v106 + 56);
      *(v107 + 18) = *(v106 + 72);
      *(v107 + 56) = v109;
      *(v107 + 40) = v108;
      v110 = *(v106 + 144);
      v112 = *(v106 + 96);
      v111 = *(v106 + 112);
      *(v107 + 8) = *(v106 + 128);
      *(v107 + 9) = v110;
      *(v107 + 6) = v112;
      *(v107 + 7) = v111;
      v114 = *(v106 + 176);
      v113 = *(v106 + 192);
      v115 = *(v106 + 160);
      *(v107 + 201) = *(v106 + 201);
      *(v107 + 11) = v114;
      *(v107 + 12) = v113;
      *(v107 + 10) = v115;
      *(v107 + 5) = *(v106 + 80);
      v116 = *(v106 + 224);
      v117 = *(v106 + 240);
      v118 = *(v106 + 272);
      *(v107 + 16) = *(v106 + 256);
      *(v107 + 17) = v118;
      *(v107 + 14) = v116;
      *(v107 + 15) = v117;
      v119 = *(v106 + 288);
      v120 = *(v106 + 304);
      v121 = *(v106 + 320);
      *(v107 + 42) = *(v106 + 336);
      *(v107 + 19) = v120;
      *(v107 + 20) = v121;
      *(v107 + 18) = v119;
      v106 += 344;
      v107 += 344;
    }

    while (v106 != v104);
    do
    {
      v122 = *(v105 + 4);
      if (v122 && !atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v122->__on_zero_shared)(v122);
        std::__shared_weak_count::__release_weak(v122);
      }

      v103 = *(v105 + 1);
      if (v103)
      {
        std::__shared_weak_count::__release_weak(v103);
      }

      v105 += 344;
    }

    while (v105 != v104);
    v105 = v1217[177];
  }

  v1217[177] = v1197;
  v1217[178] = v1176;
  v1217[179] = v1184;
  if (v105)
  {
    v155 = geo::codec::zone_mallocator::instance(v103);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsTransitNodeFeature>(v155, v105);
  }

LABEL_160:
  v156 = 0;
  v157 = countb;
  do
  {
    v158 = v9[3];
    if (v158 + 1 > 8 * v9[2])
    {
      v26 = *MEMORY[0x1E69E9848];
      v27 = 4446;
      goto LABEL_21;
    }

    v159 = *(v9[1] + (v158 >> 3));
    v9[3] = v158 + 1;
    v160 = ~v158 & 7;
    v161 = *a3;
    if ((v159 >> v160))
    {
      v162 = 16 * v157;
      *(*(v161 + 1416) + v156 + 88) = *(*(*(v161 + 1408) + 8) + 8 * *(*(*(v161 + 1408) + 32) + v162));
      v161 = *a3;
      if (*(*(*(*a3 + 1408) + 32) + v162 + 8) != 1)
      {
        v26 = *MEMORY[0x1E69E9848];
        v27 = 4449;
        goto LABEL_21;
      }

      ++v157;
      v163 = *(v161 + 1416);
    }

    else
    {
      v163 = *(v161 + 1416);
      *(v163 + v156 + 321) = 1;
    }

    v164 = a3[1];
    if (v164)
    {
      atomic_fetch_add_explicit((v164 + 16), 1uLL, memory_order_relaxed);
    }

    v165 = (v163 + v156);
    v166 = v165[1];
    *v165 = v161;
    v165[1] = v164;
    if (v166)
    {
      std::__shared_weak_count::__release_weak(v166);
    }

    v156 += 344;
    --v87;
  }

  while (v87);
  if ((geo::codec::decodeAttributeSet<GeoCodecsFeature>(3, v9 + 1, v39, *a3 + 1120, *(*a3 + 1416), 344) & 1) == 0)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4457;
    goto LABEL_21;
  }

  v127 = *(*a3 + 1416);
  v126 = *(*a3 + 1424);
  if (v126 != v127)
  {
    v167 = 0;
    v168 = 0x82FA0BE82FA0BE83 * ((v126 - v127) >> 3);
    if (v168 <= 1)
    {
      v168 = 1;
    }

    v169 = *(*a3 + 1416);
    while (1)
    {
      v171 = *(v169 + 24);
      v172 = *(v171 + 33);
      if (*(v171 + 33))
      {
        v173 = *v171;
        if (*v173 == 42)
        {
          v174 = 0;
LABEL_182:
          v170 = v173[2 * v174 + 1];
          goto LABEL_178;
        }

        v174 = 0;
        v175 = v173 + 2;
        while (v172 - 1 != v174)
        {
          v176 = *v175;
          v175 += 2;
          ++v174;
          if (v176 == 42)
          {
            if (v174 >= v172)
            {
              break;
            }

            goto LABEL_182;
          }
        }
      }

      LOBYTE(v170) = -1;
LABEL_178:
      *(v169 + 272) = v170;
      ++v167;
      v169 += 344;
      if (v167 == v168)
      {
        goto LABEL_191;
      }
    }
  }

  v126 = *(*a3 + 1416);
LABEL_191:
  Point = geo::codec::_decodeTransitLabelsFromStream(v9 + 1, 0x82FA0BE82FA0BE83 * ((v126 - v127) >> 3), v127, 344, a3);
  if ((Point & 1) == 0)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4470;
    goto LABEL_21;
  }

  v178 = v9[2];
  v179 = v9[3];
  v180 = v179 + 1;
  v181 = 8 * v178;
  if (v179 + 1 > 8 * v178)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4473;
    goto LABEL_21;
  }

  v182 = v9[1];
  v183 = *(v182 + (v179 >> 3));
  v9[3] = v180;
  if ((v183 >> (~v179 & 7)))
  {
    if (v179 + 7 > v181)
    {
      v26 = *MEMORY[0x1E69E9848];
      v27 = 4476;
      goto LABEL_21;
    }

    v184 = 0;
    v185 = 6;
    do
    {
      Point = 8 - (v180 & 7);
      if (v185 < Point)
      {
        Point = v185;
      }

      v184 = (*(v182 + (v180 >> 3)) >> (8 - (v180 & 7) - Point)) & ~(-1 << Point) | (v184 << Point);
      v180 += Point;
      v9[3] = v180;
      v185 -= Point;
    }

    while (v185);
    v186 = *(*a3 + 1424);
    v187 = *(*a3 + 1416);
    v188 = v186 - v187;
    if (v186 != v187)
    {
      v189 = 0;
      v190 = (v184 + 1);
      v191 = 0x82FA0BE82FA0BE83 * (v188 >> 3);
      Point = 8;
      do
      {
        if (v180 + v190 > v181)
        {
          v26 = *MEMORY[0x1E69E9848];
          v27 = 4478;
          goto LABEL_21;
        }

        v193 = 0;
        if (v190)
        {
          v194 = v190;
          do
          {
            v195 = 8 - (v180 & 7);
            if (v194 < v195)
            {
              v195 = v194;
            }

            v193 = (*(v182 + (v180 >> 3)) >> (8 - (v180 & 7) - v195)) & ~(-1 << v195) | (v193 << v195);
            v180 += v195;
            v9[3] = v180;
            v194 -= v195;
          }

          while (v194);
        }

        *(v187 + 344 * v189 + 40) = v193;
        v192 = v187 + 344 * v189;
        *(v192 + 75) = 1;
        *(v192 + 48) = *(v192 + 40);
        ++v189;
      }

      while (v189 < v191);
    }
  }

  v196 = v180 + 1;
  if (v180 + 1 > v181)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4486;
    goto LABEL_21;
  }

  v224 = *(v182 + (v180 >> 3));
  v9[3] = v196;
  if ((v224 >> (~v180 & 7)))
  {
    if (v180 + 7 > v181)
    {
      v26 = *MEMORY[0x1E69E9848];
      v27 = 4489;
      goto LABEL_21;
    }

    v225 = 0;
    v226 = 6;
    do
    {
      v227 = 8 - (v196 & 7);
      if (v226 < v227)
      {
        v227 = v226;
      }

      v225 = (*(v182 + (v196 >> 3)) >> (8 - (v196 & 7) - v227)) & ~(-1 << v227) | (v225 << v227);
      v196 += v227;
      v9[3] = v196;
      v226 -= v227;
    }

    while (v226);
    if (v196 + 5 > v181)
    {
      v26 = *MEMORY[0x1E69E9848];
      v27 = 4491;
      goto LABEL_21;
    }

    v228 = 0;
    v1218 = (v225 + 1);
    v229 = 5;
    do
    {
      v230 = 8 - (v196 & 7);
      if (v229 < v230)
      {
        v230 = v229;
      }

      v228 = (*(v182 + (v196 >> 3)) >> (8 - (v196 & 7) - v230)) & ~(-1 << v230) | (v228 << v230);
      v196 += v230;
      v9[3] = v196;
      v229 -= v230;
    }

    while (v229);
    if (v196 + 5 > v181)
    {
      goto LABEL_281;
    }

    v231 = 0;
    v232 = (v228 + 1);
    v233 = 5;
    do
    {
      v234 = 8 - (v196 & 7);
      if (v233 < v234)
      {
        v234 = v233;
      }

      v231 = (*(v182 + (v196 >> 3)) >> (8 - (v196 & 7) - v234)) & ~(-1 << v234) | (v231 << v234);
      v196 += v234;
      v9[3] = v196;
      v233 -= v234;
    }

    while (v233);
    v235 = (v231 + 1);
    if (v196 + v235 > v181)
    {
LABEL_281:
      v27 = 4494;
      goto LABEL_261;
    }

    if (v231 == -1)
    {
      goto LABEL_290;
    }

    LODWORD(v236) = 0;
    do
    {
      v237 = 8 - (v196 & 7);
      if (v235 < v237)
      {
        v237 = v235;
      }

      v236 = (*(v182 + (v196 >> 3)) >> (8 - (v196 & 7) - v237)) & ~(-1 << v237) | (v236 << v237);
      v196 += v237;
      v9[3] = v196;
      v235 -= v237;
    }

    while (v235);
    if (!v236)
    {
LABEL_290:
      v239 = *a3;
    }

    else
    {
      v238 = geo::codec::zone_mallocator::instance(Point);
      Point = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(v238, v236);
      v239 = *a3;
      v239[209] = Point;
      v239[210] = v236;
      if (!Point)
      {
        v27 = 4498;
        goto LABEL_261;
      }
    }

    v240 = v239[175];
    if (v240)
    {
      v241 = geo::codec::zone_mallocator::instance(Point);
      v242 = pthread_rwlock_rdlock((v241 + 32));
      v244 = 16 * v240;
      if (v242)
      {
        geo::read_write_lock::logFailure(v242, "read lock", v243);
      }

      v245 = malloc_type_zone_malloc(*v241, v244, 0x10040436913F5uLL);
      atomic_fetch_add((v241 + 24), 1u);
      Point = pthread_rwlock_unlock((v241 + 32));
      if (Point)
      {
        geo::read_write_lock::logFailure(Point, "unlock", v246);
      }

      v247 = *a3;
      v247[211] = v245;
      v248 = v247[175];
      v247[212] = 2 * v248;
      if (!v245)
      {
        v27 = 4505;
        goto LABEL_261;
      }
    }

    else
    {
      v248 = 0;
    }

    v249 = geo::codec::zone_mallocator::instance(Point);
    v250 = pthread_rwlock_rdlock((v249 + 32));
    if (v250)
    {
      geo::read_write_lock::logFailure(v250, "read lock", v251);
    }

    v252 = malloc_type_zone_malloc(*v249, 2 * v248, 0x100004077774924uLL);
    atomic_fetch_add((v249 + 24), 1u);
    Point = pthread_rwlock_unlock((v249 + 32));
    if (Point)
    {
      geo::read_write_lock::logFailure(Point, "unlock", v253);
    }

    v254 = *a3;
    *(*a3 + 1776) = v252;
    if (!v252)
    {
      v27 = 4510;
      goto LABEL_261;
    }

    v1198 = 0;
    v255 = 0;
    v256 = 0;
    v1177 = 0;
    v1185 = *a3;
    while (v255 < 0xD37A6F4DE9BD37A7 * ((v254[170] - v254[169]) >> 3))
    {
      v257 = v9[3];
      v258 = v257 + 1;
      v259 = 8 * v9[2];
      if (v257 + 1 > v259)
      {
        v27 = 4521;
        goto LABEL_261;
      }

      v260 = v1185[169];
      v261 = (v260 + 184 * v255);
      v262 = v9[1];
      v263 = *(v262 + (v257 >> 3));
      v9[3] = v258;
      if ((v263 >> (~v257 & 7)))
      {
        if (v258 + v232 > v259)
        {
          v27 = 4524;
          goto LABEL_261;
        }

        v264 = 0;
        if (v232)
        {
          v265 = v232;
          do
          {
            v266 = 8 - (v258 & 7);
            if (v265 < v266)
            {
              v266 = v265;
            }

            v264 = (*(v262 + (v258 >> 3)) >> (8 - (v258 & 7) - v266)) & ~(-1 << v266) | (v264 << v266);
            v258 += v266;
            v9[3] = v258;
            v265 -= v266;
          }

          while (v265);
        }

        v267 = v264;
        v268 = v1185[177];
        if (0x82FA0BE82FA0BE83 * ((v1185[178] - v268) >> 3) <= v267)
        {
          v27 = 4525;
          goto LABEL_261;
        }

        v269 = v268 + 344 * v267;
        v261[7] = *(v269 + 40);
        v261[5] = v269;
      }

      else
      {
        if (v258 + v1218 > v259)
        {
          v27 = 4533;
          goto LABEL_261;
        }

        if (v1218)
        {
          v270 = 0;
          v271 = v1218;
          do
          {
            v272 = 8 - (v258 & 7);
            if (v271 < v272)
            {
              v272 = v271;
            }

            v270 = (*(v262 + (v258 >> 3)) >> (8 - (v258 & 7) - v272)) & ~(-1 << v272) | (v270 << v272);
            v258 += v272;
            v9[3] = v258;
            v271 -= v272;
          }

          while (v271);
        }

        else
        {
          v270 = 0;
        }

        v273 = v260 + 184 * v255;
        *(v273 + 56) = v270;
        *(v273 + 40) = 0;
      }

      v274 = v258 + 1;
      if (v258 + 1 > v259)
      {
        v27 = 4538;
        goto LABEL_261;
      }

      v275 = *(v262 + (v258 >> 3));
      v9[3] = v274;
      Point = ~v258 & 7;
      if ((v275 >> (~v258 & 7)))
      {
        if (v274 + v232 > v259)
        {
          v27 = 4541;
          goto LABEL_261;
        }

        v276 = 0;
        if (v232)
        {
          v277 = v232;
          do
          {
            v278 = 8 - (v274 & 7);
            if (v277 < v278)
            {
              v278 = v277;
            }

            v276 = (*(v262 + (v274 >> 3)) >> (8 - (v274 & 7) - v278)) & ~(-1 << v278) | (v276 << v278);
            v274 += v278;
            v9[3] = v274;
            v277 -= v278;
          }

          while (v277);
        }

        v279 = v276;
        v280 = v1185[177];
        if (0x82FA0BE82FA0BE83 * ((v1185[178] - v280) >> 3) <= v279)
        {
          v27 = 4542;
          goto LABEL_261;
        }

        v281 = v280 + 344 * v279;
        Point = *(v281 + 40);
        v261[8] = Point;
        v261[6] = v281;
      }

      else
      {
        if (v274 + v1218 > v259)
        {
          v27 = 4550;
          goto LABEL_261;
        }

        if (v1218)
        {
          v282 = 0;
          v283 = v1218;
          do
          {
            v284 = 8 - (v274 & 7);
            if (v283 < v284)
            {
              v284 = v283;
            }

            Point = (*(v262 + (v274 >> 3)) >> (8 - (v274 & 7) - v284)) & ~(-1 << v284);
            v282 = Point | (v282 << v284);
            v274 += v284;
            v9[3] = v274;
            v283 -= v284;
          }

          while (v283);
        }

        else
        {
          v282 = 0;
        }

        v285 = v260 + 184 * v255;
        *(v285 + 64) = v282;
        *(v285 + 48) = 0;
      }

      v261[13] = v1198;
      v286 = v261[4];
      if (v286)
      {
        v287 = 0;
        v254 = *a3;
        v288 = v1198;
        while (1)
        {
          v289 = v274 + 1;
          if (v274 + 1 > v259)
          {
            v27 = 4557;
            goto LABEL_261;
          }

          v290 = *(v262 + (v274 >> 3));
          v9[3] = v289;
          v291 = (v254[222] + v256);
          *v291 = (v290 >> (~v274 & 7)) & 1;
          v292 = v274 + 2;
          if (v274 + 2 > v259)
          {
            v27 = 4559;
            goto LABEL_261;
          }

          v293 = *(v262 + (v289 >> 3));
          v9[3] = v292;
          v291[1] = (v293 >> (~v289 & 7)) & 1;
          v294 = v274 + 3;
          if (v274 + 3 > v259)
          {
            v27 = 4563;
            goto LABEL_261;
          }

          v295 = *(v262 + (v292 >> 3));
          v9[3] = v294;
          if ((v295 >> (~v292 & 7)))
          {
            v296 = v274 + 4;
            if (v274 + 4 > v259)
            {
              v27 = 4566;
              goto LABEL_261;
            }

            v297 = *(v262 + (v294 >> 3));
            v9[3] = v296;
            if ((v297 >> (~v294 & 7)))
            {
              if (v296 + v232 > v259)
              {
                v27 = 4569;
                goto LABEL_261;
              }

              v298 = 0;
              if (v232)
              {
                v299 = v232;
                do
                {
                  v300 = 8 - (v296 & 7);
                  if (v299 < v300)
                  {
                    v300 = v299;
                  }

                  v298 = (*(v262 + (v296 >> 3)) >> (8 - (v296 & 7) - v300)) & ~(-1 << v300) | (v298 << v300);
                  v296 += v300;
                  v9[3] = v296;
                  v299 -= v300;
                }

                while (v299);
              }

              v301 = (v254[177] + 344 * v298 + 40);
            }

            else
            {
              if (v296 + v1218 > v259)
              {
                v27 = 4572;
                goto LABEL_261;
              }

              v302 = v254[209];
              if (v1218)
              {
                v303 = 0;
                v304 = v1218;
                do
                {
                  v305 = 8 - (v296 & 7);
                  if (v304 < v305)
                  {
                    v305 = v304;
                  }

                  v303 = (*(v262 + (v296 >> 3)) >> (8 - (v296 & 7) - v305)) & ~(-1 << v305) | (v303 << v305);
                  v296 += v305;
                  v9[3] = v296;
                  v304 -= v305;
                }

                while (v304);
              }

              else
              {
                v303 = 0;
              }

              v301 = (v302 + 8 * v1177);
              *v301 = v303;
              ++v1177;
            }

            v294 = v296;
          }

          else
          {
            v301 = v261 + 7;
          }

          v306 = (v254[211] + 8 * v288);
          *v306 = v301;
          v274 = v294 + 1;
          if (v294 + 1 > v259)
          {
            v27 = 4580;
            goto LABEL_261;
          }

          v307 = *(v262 + (v294 >> 3));
          v9[3] = v274;
          if ((v307 >> (~v294 & 7)))
          {
            v308 = v294 + 2;
            if (v308 > v259)
            {
              v27 = 4583;
              goto LABEL_261;
            }

            v309 = *(v262 + (v274 >> 3));
            v9[3] = v308;
            if ((v309 >> (~v274 & 7)))
            {
              if (v308 + v232 > v259)
              {
                v27 = 4586;
                goto LABEL_261;
              }

              v310 = 0;
              if (v232)
              {
                v311 = v232;
                do
                {
                  v312 = 8 - (v308 & 7);
                  if (v311 < v312)
                  {
                    v312 = v311;
                  }

                  v310 = (*(v262 + (v308 >> 3)) >> (8 - (v308 & 7) - v312)) & ~(-1 << v312) | (v310 << v312);
                  v308 += v312;
                  v9[3] = v308;
                  v311 -= v312;
                }

                while (v311);
              }

              Point = v254[177] + 344 * v310 + 40;
            }

            else
            {
              if (v308 + v1218 > v259)
              {
                v27 = 4589;
                goto LABEL_261;
              }

              v313 = v254[209];
              if (v1218)
              {
                v314 = 0;
                v315 = v1218;
                do
                {
                  v316 = 8 - (v308 & 7);
                  if (v315 < v316)
                  {
                    v316 = v315;
                  }

                  v314 = (*(v262 + (v308 >> 3)) >> (8 - (v308 & 7) - v316)) & ~(-1 << v316) | (v314 << v316);
                  v308 += v316;
                  v9[3] = v308;
                  v315 -= v316;
                }

                while (v315);
              }

              else
              {
                v314 = 0;
              }

              Point = v313 + 8 * v1177;
              *Point = v314;
              ++v1177;
            }

            v274 = v308;
          }

          else
          {
            Point = (v261 + 8);
          }

          v256 += 2;
          v306[1] = Point;
          v288 += 2;
          if (++v287 == v286)
          {
            goto LABEL_394;
          }
        }
      }

      v254 = v1185;
      v288 = v1198;
LABEL_394:
      v261[14] = v288 - v1198;
      ++v255;
      v1198 = v288;
    }

    v178 = v9[2];
    v196 = v9[3];
    v181 = 8 * v178;
  }

  v317 = v196 + 1;
  if (v196 + 1 > v181)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4602;
    goto LABEL_21;
  }

  v318 = v9[1];
  v319 = *(v318 + (v196 >> 3));
  v9[3] = v317;
  if ((v319 >> (~v196 & 7)))
  {
    if (v196 + 6 > v181)
    {
      v26 = *MEMORY[0x1E69E9848];
      v27 = 4605;
      goto LABEL_21;
    }

    v320 = 0;
    v321 = 5;
    do
    {
      v322 = 8 - (v317 & 7);
      if (v321 < v322)
      {
        v322 = v321;
      }

      v320 = (*(v318 + (v317 >> 3)) >> (8 - (v317 & 7) - v322)) & ~(-1 << v322) | (v320 << v322);
      v317 += v322;
      v9[3] = v317;
      v321 -= v322;
    }

    while (v321);
    if (v317 + 5 > v181)
    {
      v26 = *MEMORY[0x1E69E9848];
      v27 = 4607;
      goto LABEL_21;
    }

    v323 = 0;
    v324 = (v320 + 1);
    v325 = 5;
    do
    {
      v326 = 8 - (v317 & 7);
      if (v325 < v326)
      {
        v326 = v325;
      }

      v323 = (*(v318 + (v317 >> 3)) >> (8 - (v317 & 7) - v326)) & ~(-1 << v326) | (v323 << v326);
      v317 += v326;
      v9[3] = v317;
      v325 -= v326;
    }

    while (v325);
    if (v317 + 5 > v181)
    {
      v26 = *MEMORY[0x1E69E9848];
      v27 = 4609;
      goto LABEL_21;
    }

    v327 = 0;
    v328 = (v323 + 1);
    v329 = 5;
    do
    {
      v330 = 8 - (v317 & 7);
      if (v329 < v330)
      {
        v330 = v329;
      }

      v327 = (*(v318 + (v317 >> 3)) >> (8 - (v317 & 7) - v330)) & ~(-1 << v330) | (v327 << v330);
      v317 += v330;
      v9[3] = v317;
      v329 -= v330;
    }

    while (v329);
    v331 = (v327 + 1);
    if (v317 + v331 > v181)
    {
      v27 = 4612;
      goto LABEL_261;
    }

    if (v327 == -1)
    {
      v334 = *a3;
      *(*a3 + 1456) = 0;
    }

    else
    {
      LODWORD(v332) = 0;
      do
      {
        v333 = 8 - (v317 & 7);
        if (v331 < v333)
        {
          v333 = v331;
        }

        v332 = (*(v318 + (v317 >> 3)) >> (8 - (v317 & 7) - v333)) & ~(-1 << v333) | (v332 << v333);
        v317 += v333;
        v9[3] = v317;
        v331 -= v333;
      }

      while (v331);
      v334 = *a3;
      *(*a3 + 1456) = v332;
      if (v332)
      {
        v335 = geo::codec::zone_mallocator::instance(Point);
        v336 = pthread_rwlock_rdlock((v335 + 32));
        if (v336)
        {
          geo::read_write_lock::logFailure(v336, "read lock", v337);
        }

        v338 = malloc_type_zone_calloc(*v335, v332, 8uLL, 0x100004000313F17uLL);
        atomic_fetch_add((v335 + 24), 1u);
        Point = pthread_rwlock_unlock((v335 + 32));
        if (Point)
        {
          geo::read_write_lock::logFailure(Point, "unlock", v339);
        }

        v334 = *a3;
        *(*a3 + 1448) = v338;
        if (!v338)
        {
          v27 = 4617;
          goto LABEL_261;
        }
      }
    }

    if (*(v334 + 1424) != *(v334 + 1416))
    {
      v340 = 0;
      v341 = 0;
      v342 = *a3;
      do
      {
        v343 = v9[3];
        if (v343 + v324 > 8 * v9[2])
        {
          v27 = 4623;
          goto LABEL_261;
        }

        if (v324)
        {
          LODWORD(v344) = 0;
          v345 = v9[1];
          v346 = v324;
          do
          {
            v347 = 8 - (v343 & 7);
            if (v346 < v347)
            {
              v347 = v346;
            }

            Point = (*(v345 + (v343 >> 3)) >> (8 - (v343 & 7) - v347)) & ~(-1 << v347);
            v344 = Point | (v344 << v347);
            v343 += v347;
            v9[3] = v343;
            v346 -= v347;
          }

          while (v346);
          v348 = *(v342 + 1416);
          *(v348 + 344 * v340 + 224) = v341;
          if (v344)
          {
            v349 = v344 + v341;
            v350 = *a3;
            do
            {
              v351 = v9[3];
              if (v351 + v328 > 8 * v9[2])
              {
                v27 = 4627;
                goto LABEL_261;
              }

              v352 = 0;
              if (v328)
              {
                v353 = v328;
                do
                {
                  v354 = 8 - (v351 & 7);
                  if (v353 < v354)
                  {
                    v354 = v353;
                  }

                  v352 = (*(v345 + (v351 >> 3)) >> (8 - (v351 & 7) - v354)) & ~(-1 << v354) | (v352 << v354);
                  v351 += v354;
                  v9[3] = v351;
                  v353 -= v354;
                }

                while (v353);
              }

              Point = v341 + 1;
              *(v350[181] + 8 * v341) = v352;
              v341 = Point;
            }

            while (v349 != Point);
            v348 = v350[177];
            v341 = Point;
          }

          else
          {
            v344 = 0;
            v350 = v342;
          }
        }

        else
        {
          v344 = 0;
          v348 = *(v342 + 1416);
          *(v348 + 344 * v340 + 224) = v341;
          v350 = v342;
        }

        v355 = v348 + 344 * v340;
        *(v355 + 232) = v344;
        if ((*(v355 + 224) + v344) > v350[182])
        {
          v27 = 4631;
          goto LABEL_261;
        }

        ++v340;
      }

      while (v340 < 0x82FA0BE82FA0BE83 * ((v350[178] - v348) >> 3));
    }

    v178 = v9[2];
    v317 = v9[3];
  }

  if (*(v9 + 16) >= 9u)
  {
    if (v317 + 1 > 8 * v178)
    {
      v27 = 4642;
      goto LABEL_261;
    }

    v356 = *(v9[1] + (v317 >> 3));
    v9[3] = v317 + 1;
    v357 = v356 >> (~v317++ & 7);
    if (v357)
    {
      v358 = *(*a3 + 1400);
      v359 = geo::codec::zone_mallocator::instance(Point);
      v360 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v359, v358);
      *(*a3 + 1536) = v360;
      if (!v360)
      {
        v27 = 4645;
        goto LABEL_261;
      }

      v178 = v9[2];
      v317 = v9[3];
      if (v317 + 5 > 8 * v178)
      {
        v27 = 4648;
        goto LABEL_261;
      }

      v361 = 0;
      v362 = v9[1];
      v363 = 5;
      do
      {
        v364 = 8 - (v317 & 7);
        if (v363 < v364)
        {
          v364 = v363;
        }

        v361 = (*(v362 + (v317 >> 3)) >> (8 - (v317 & 7) - v364)) & ~(-1 << v364) | (v361 << v364);
        v317 += v364;
        v9[3] = v317;
        v363 -= v364;
      }

      while (v363);
      v365 = 0;
      v366 = (v361 + 1);
      v367 = *a3;
      v368 = *(*a3 + 1352);
      v369 = 0xD37A6F4DE9BD37A7 * ((*(*a3 + 1360) - v368) >> 3);
      Point = 184;
      while (v365 != v369)
      {
        v370 = *(v368 + 184 * v365 + 32);
        if (v370)
        {
          v371 = *(v367 + 1536);
          v372 = v363 + v370;
          do
          {
            if (v317 + v366 > 8 * v178)
            {
              v27 = 4655;
              goto LABEL_261;
            }

            v373 = 0;
            if (v366)
            {
              v374 = v366;
              do
              {
                v375 = 8 - (v317 & 7);
                if (v374 < v375)
                {
                  v375 = v374;
                }

                v373 = (*(v362 + (v317 >> 3)) >> (8 - (v317 & 7) - v375)) & ~(-1 << v375) | (v373 << v375);
                v317 += v375;
                v9[3] = v317;
                v374 -= v375;
              }

              while (v374);
            }

            *(v371 + 4 * v363++) = v373;
          }

          while (v363 != v372);
        }

        ++v365;
      }

      if (v363 != *(v367 + 1400))
      {
        v27 = 4658;
        goto LABEL_261;
      }
    }
  }

  if (*(*a3 + 1360) != *(*a3 + 1352))
  {
    if (v317 + 1 > 8 * v178)
    {
      v27 = 4664;
      goto LABEL_261;
    }

    v376 = *(v9[1] + (v317 >> 3));
    v9[3] = v317 + 1;
    v377 = v376 >> (~v317++ & 7);
    if (v377)
    {
      v27 = 4665;
      goto LABEL_261;
    }
  }

  if (*(v9 + 16) < 0xCu)
  {
    v1219 = 0;
    goto LABEL_512;
  }

  v378 = v317 + 1;
  v379 = 8 * v178;
  if (v317 + 1 > 8 * v178)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4671;
    goto LABEL_21;
  }

  v384 = v9[1];
  v385 = *(v384 + (v317 >> 3));
  v9[3] = v378;
  if (((v385 >> (~v317 & 7)) & 1) == 0)
  {
    v1219 = 0;
    ++v317;
    goto LABEL_512;
  }

  if (v317 + 6 > v379)
  {
    goto LABEL_524;
  }

  v386 = 0;
  v387 = 5;
  do
  {
    v388 = 8 - (v378 & 7);
    if (v387 < v388)
    {
      v388 = v387;
    }

    v386 = (*(v384 + (v378 >> 3)) >> (8 - (v378 & 7) - v388)) & ~(-1 << v388) | (v386 << v388);
    v378 += v388;
    v9[3] = v378;
    v387 -= v388;
  }

  while (v387);
  v389 = (v386 + 1);
  if (v378 + v389 > v379)
  {
LABEL_524:
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4674;
    goto LABEL_21;
  }

  v401 = 0;
  if (v389)
  {
    do
    {
      v402 = 8 - (v378 & 7);
      if (v389 < v402)
      {
        v402 = v389;
      }

      v401 = (*(v384 + (v378 >> 3)) >> (8 - (v378 & 7) - v402)) & ~(-1 << v402) | (v401 << v402);
      v378 += v402;
      v9[3] = v378;
      v389 -= v402;
    }

    while (v389);
  }

  v403 = v401;
  v404 = *(*a3 + 1576);
  v1220 = *a3;
  v405 = *(*a3 + 1568);
  v406 = &v404[-v405];
  v407 = 0xEF7BDEF7BDEF7BDFLL * (&v404[-v405] >> 3);
  v1199 = v403;
  v408 = v403 - v407;
  if (v403 > v407)
  {
    v409 = v1220[198];
    if (0xEF7BDEF7BDEF7BDFLL * ((v409 - v404) >> 3) < v408)
    {
      v410 = 0xEF7BDEF7BDEF7BDFLL * ((v409 - v405) >> 3);
      v411 = 2 * v410;
      if (2 * v410 <= v403)
      {
        v411 = v403;
      }

      v59 = v410 >= 0x84210842108421;
      v412 = 0x108421084210842;
      if (!v59)
      {
        v412 = v411;
      }

      v1186 = v412;
      v413 = geo::codec::zone_mallocator::instance(Point);
      v414 = pthread_rwlock_rdlock((v413 + 32));
      if (v414)
      {
        geo::read_write_lock::logFailure(v414, "read lock", v415);
      }

      v416 = malloc_type_zone_malloc(*v413, 248 * v1186, 0x1070040AD5DF82CuLL);
      atomic_fetch_add((v413 + 24), 1u);
      v417 = pthread_rwlock_unlock((v413 + 32));
      if (v417)
      {
        geo::read_write_lock::logFailure(v417, "unlock", v418);
      }

      v419 = &v406[v416];
      v1178 = v416 + 248 * v1186;
      bzero(v419, 248 * ((248 * v408 - 248) / 0xF8) + 248);
      v1171 = &v419[248 * ((248 * v408 - 248) / 0xF8) + 248];
      v421 = v1220[197];
      v422 = v1220[196];
      v1187 = &v419[v422 - v421];
      if (v421 != v422)
      {
        v423 = v1220[196];
        v424 = &v419[v422 - v421];
        do
        {
          *v424 = *v423;
          *v423 = 0;
          *(v423 + 8) = 0;
          *(v424 + 1) = *(v423 + 16);
          *(v424 + 4) = *(v423 + 32);
          *(v423 + 24) = 0;
          *(v423 + 32) = 0;
          v425 = *(v423 + 40);
          v426 = *(v423 + 56);
          *(v424 + 18) = *(v423 + 72);
          *(v424 + 56) = v426;
          *(v424 + 40) = v425;
          v427 = *(v423 + 144);
          v429 = *(v423 + 96);
          v428 = *(v423 + 112);
          *(v424 + 8) = *(v423 + 128);
          *(v424 + 9) = v427;
          *(v424 + 6) = v429;
          *(v424 + 7) = v428;
          v431 = *(v423 + 176);
          v430 = *(v423 + 192);
          v432 = *(v423 + 160);
          *(v424 + 201) = *(v423 + 201);
          *(v424 + 11) = v431;
          *(v424 + 12) = v430;
          *(v424 + 10) = v432;
          *(v424 + 5) = *(v423 + 80);
          v433 = *(v423 + 224);
          *(v424 + 120) = *(v423 + 240);
          *(v424 + 14) = v433;
          v423 += 248;
          v424 += 248;
        }

        while (v423 != v421);
        do
        {
          v434 = *(v422 + 4);
          if (v434 && !atomic_fetch_add(&v434->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v434->__on_zero_shared)(v434);
            std::__shared_weak_count::__release_weak(v434);
          }

          v420 = *(v422 + 1);
          if (v420)
          {
            std::__shared_weak_count::__release_weak(v420);
          }

          v422 += 248;
        }

        while (v422 != v421);
        v422 = v1220[196];
      }

      v1220[196] = v1187;
      v1220[197] = v1171;
      v1220[198] = v1178;
      if (v422)
      {
        v471 = geo::codec::zone_mallocator::instance(v420);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPBTransitAccessPointFeature>(v471, v422);
      }

      goto LABEL_631;
    }

    bzero(v404, 248 * ((248 * v408 - 248) / 0xF8) + 248);
    i = &v404[248 * ((248 * v408 - 248) / 0xF8) + 248];
    goto LABEL_595;
  }

  if (v403 < v407)
  {
    for (i = (v405 + 248 * v403); v404 != i; v404 -= 248)
    {
      v436 = *(v404 - 27);
      if (v436 && !atomic_fetch_add(&v436->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v436->__on_zero_shared)(v436);
        std::__shared_weak_count::__release_weak(v436);
      }

      v437 = *(v404 - 30);
      if (v437)
      {
        std::__shared_weak_count::__release_weak(v437);
      }
    }

LABEL_595:
    v1220[197] = i;
  }

LABEL_631:
  v472 = v9[3];
  v473 = 8 * v9[2];
  if (v472 + 6 > v473)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4678;
    goto LABEL_21;
  }

  v474 = 0;
  v475 = v9[1];
  v476 = 6;
  do
  {
    v477 = 8 - (v472 & 7);
    if (v476 < v477)
    {
      v477 = v476;
    }

    v474 = (*(v475 + (v472 >> 3)) >> (8 - (v472 & 7) - v477)) & ~(-1 << v477) | (v474 << v477);
    v472 += v477;
    v9[3] = v472;
    v476 -= v477;
  }

  while (v476);
  if (v472 + 5 > v473)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4681;
    goto LABEL_21;
  }

  v478 = 0;
  v479 = (v474 + 1);
  v480 = 5;
  do
  {
    v481 = 8 - (v472 & 7);
    if (v480 < v481)
    {
      v481 = v480;
    }

    v478 = (*(v475 + (v472 >> 3)) >> (8 - (v472 & 7) - v481)) & ~(-1 << v481) | (v478 << v481);
    v472 += v481;
    v9[3] = v472;
    v480 -= v481;
  }

  while (v480);
  if (v472 + 6 > v473)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4684;
    goto LABEL_21;
  }

  v482 = 0;
  v483 = (v478 + 1);
  v484 = 6;
  do
  {
    v485 = 8 - (v472 & 7);
    if (v484 < v485)
    {
      v485 = v484;
    }

    v482 = (*(v475 + (v472 >> 3)) >> (8 - (v472 & 7) - v485)) & ~(-1 << v485) | (v482 << v485);
    v472 += v485;
    v9[3] = v472;
    v484 -= v485;
  }

  while (v484);
  if (v472 + 5 > v473)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4687;
    goto LABEL_21;
  }

  v493 = 0;
  v1188 = (v482 + 1);
  v494 = 5;
  do
  {
    v495 = 8 - (v472 & 7);
    if (v494 < v495)
    {
      v495 = v494;
    }

    v493 = (*(v475 + (v472 >> 3)) >> (8 - (v472 & 7) - v495)) & ~(-1 << v495) | (v493 << v495);
    v472 += v495;
    v9[3] = v472;
    v494 -= v495;
  }

  while (v494);
  __p[0] = 0;
  if ((geo::codec::decodeSectionEncoding((v9 + 1), __p, 0, 0, 0) & 1) == 0)
  {
    v27 = 4690;
    goto LABEL_261;
  }

  v496 = __p[0];
  if (!__p[0] || !*(__p[0] + 1) || (v497 = *(*a3 + 1568), *(__p[0] + 2) != 0xEF7BDEF7BDEF7BDFLL * ((*(*a3 + 1576) - v497) >> 3)))
  {
    v27 = 4691;
    goto LABEL_261;
  }

  Point = geo::codec::decodeAttributeSet<GeoCodecsFeature>(3, v9 + 1, v1199, *a3 + 1120, v497, 248);
  if (!Point)
  {
    v27 = 4692;
    goto LABEL_261;
  }

  v1219 = *v496;
  v498 = *(*a3 + 1568);
  if (*(*a3 + 1576) == v498)
  {
    goto LABEL_736;
  }

  v1200 = 0;
  do
  {
    *(v498 + 248 * v1200 + 88) = *(*(__p[0] + 1) + 8 * v1200);
    v499 = *a3;
    v500 = a3[1];
    v501 = *(*a3 + 1568);
    if (v500)
    {
      atomic_fetch_add_explicit((v500 + 16), 1uLL, memory_order_relaxed);
    }

    v502 = (v501 + 248 * v1200);
    v503 = v502[1];
    *v502 = v499;
    v502[1] = v500;
    if (v503)
    {
      std::__shared_weak_count::__release_weak(v503);
    }

    v504 = v9[3];
    v505 = 8 * v9[2];
    if (v504 + v479 > v505)
    {
      v27 = 4698;
      goto LABEL_261;
    }

    v506 = *(*a3 + 1568);
    v507 = 0;
    if (v479)
    {
      v508 = v9[1];
      v509 = v479;
      do
      {
        v510 = 8 - (v504 & 7);
        if (v509 < v510)
        {
          v510 = v509;
        }

        v507 = (*(v508 + (v504 >> 3)) >> (8 - (v504 & 7) - v510)) & ~(-1 << v510) | (v507 << v510);
        v504 += v510;
        v9[3] = v504;
        v509 -= v510;
      }

      while (v509);
    }

    *(v506 + 248 * v1200 + 40) = v507;
    Point = 248;
    v511 = *(*a3 + 1568) + 248 * v1200;
    *(v511 + 75) = 1;
    *(v511 + 48) = *(v511 + 40);
    v512 = v504 + 1;
    if (v504 + 1 > v505)
    {
      v27 = 4703;
      goto LABEL_261;
    }

    v513 = v9[1];
    v514 = *(v513 + (v504 >> 3));
    v9[3] = v512;
    if ((v514 >> (~v504 & 7)))
    {
      if (v512 + v483 > v505)
      {
        v27 = 4706;
        goto LABEL_261;
      }

      v515 = 0;
      if (v483)
      {
        v516 = v483;
        do
        {
          v517 = 8 - (v512 & 7);
          if (v516 < v517)
          {
            v517 = v516;
          }

          v515 = (*(v513 + (v512 >> 3)) >> (8 - (v512 & 7) - v517)) & ~(-1 << v517) | (v515 << v517);
          v512 += v517;
          v9[3] = v512;
          v516 -= v517;
        }

        while (v516);
      }

      v518 = *(*a3 + 1416);
      if (0x82FA0BE82FA0BE83 * ((*(*a3 + 1424) - v518) >> 3) <= v515)
      {
        v27 = 4707;
        goto LABEL_261;
      }

      *(*(*a3 + 1568) + 248 * v1200 + 224) = *(v518 + 344 * v515 + 40);
    }

    else
    {
      if (v512 + v1188 > v505)
      {
        v27 = 4710;
        goto LABEL_261;
      }

      v519 = *(*a3 + 1568) + 248 * v1200;
      if (v1188)
      {
        v520 = 0;
        v521 = v1188;
        do
        {
          v522 = 8 - (v512 & 7);
          if (v521 < v522)
          {
            v522 = v521;
          }

          v520 = (*(v513 + (v512 >> 3)) >> (8 - (v512 & 7) - v522)) & ~(-1 << v522) | (v520 << v522);
          v512 += v522;
          v9[3] = v512;
          v521 -= v522;
        }

        while (v521);
        *(v519 + 224) = v520;
      }

      else
      {
        *(v519 + 224) = 0;
      }
    }

    v523 = v512 + 1;
    if (v512 + 1 > v505)
    {
      v27 = 4713;
      goto LABEL_261;
    }

    v524 = *(v513 + (v512 >> 3));
    v9[3] = v523;
    v525 = v512 + 2;
    if (v512 + 2 > v505)
    {
      v27 = 4714;
      goto LABEL_261;
    }

    v526 = ~v512 & 7;
    v527 = *(v513 + (v523 >> 3));
    v9[3] = v525;
    if ((v524 >> v526))
    {
      v528 = *(*a3 + 1568) + 248 * v1200;
      *(v528 + 232) |= 1u;
    }

    if (((1 << (~v523 & 7)) & v527) != 0)
    {
      v529 = *(*a3 + 1568) + 248 * v1200;
      *(v529 + 232) |= 2u;
    }

    if (v525 + (v493 + 1) > v505)
    {
      v27 = 4720;
      goto LABEL_261;
    }

    if (v493 == -1)
    {
      v530 = 0;
    }

    else
    {
      v530 = 0;
      v531 = (v493 + 1);
      do
      {
        v532 = 8 - (v525 & 7);
        if (v531 < v532)
        {
          v532 = v531;
        }

        v530 = (*(v513 + (v525 >> 3)) >> (8 - (v525 & 7) - v532)) & ~(-1 << v532) | (v530 << v532);
        v525 += v532;
        v9[3] = v525;
        v531 -= v532;
      }

      while (v531);
    }

    *(*(*a3 + 1568) + 248 * v1200 + 236) = v530 * 0.1;
    v533 = v525 + 1;
    if (v525 + 1 > v505)
    {
      v27 = 4723;
      goto LABEL_261;
    }

    v534 = *(v513 + (v525 >> 3));
    v9[3] = v533;
    if ((v534 >> (~v525 & 7)))
    {
      if (v525 + 5 > v505)
      {
        v27 = 4726;
        goto LABEL_261;
      }

      v535 = 0;
      v536 = 4;
      do
      {
        v537 = 8 - (v533 & 7);
        if (v536 < v537)
        {
          v537 = v536;
        }

        v535 = (*(v513 + (v533 >> 3)) >> (8 - (v533 & 7) - v537)) & ~(-1 << v537) | (v535 << v537);
        v533 += v537;
        v9[3] = v533;
        v536 -= v537;
      }

      while (v536);
      v538 = (v535 + 1);
      if (v533 + v538 > v505)
      {
        v27 = 4729;
        goto LABEL_261;
      }

      v539 = 0;
      if (v538)
      {
        do
        {
          v540 = 8 - (v533 & 7);
          if (v538 < v540)
          {
            v540 = v538;
          }

          v539 = (*(v513 + (v533 >> 3)) >> (8 - (v533 & 7) - v540)) & ~(-1 << v540) | (v539 << v540);
          v533 += v540;
          v9[3] = v533;
          v538 -= v540;
        }

        while (v538);
      }

      v541 = *a3;
      v498 = *(*a3 + 1568);
      *(v498 + 248 * v1200 + 240) = v539;
    }

    else
    {
      v541 = *a3;
      v498 = *(*a3 + 1568);
    }

    ++v1200;
  }

  while (v1200 < 0xEF7BDEF7BDEF7BDFLL * ((*(v541 + 1576) - v498) >> 3));
  v496 = __p[0];
  if (__p[0])
  {
LABEL_736:
    v542 = v496[1];
    if (v542)
    {
      v543 = geo::codec::zone_mallocator::instance(Point);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVectorTilePoint>(v543, v542);
    }

    v544 = v496[4];
    if (v544)
    {
      v545 = geo::codec::zone_mallocator::instance(Point);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsRange>(v545, v544);
    }

    v546 = geo::codec::zone_mallocator::instance(Point);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVertexPool>(v546, v496);
  }

  v178 = v9[2];
  v317 = v9[3];
LABEL_512:
  v380 = v317 + 1;
  v381 = 8 * v178;
  if (v317 + 1 > 8 * v178)
  {
    v27 = 4747;
    goto LABEL_261;
  }

  v382 = v9[1];
  v383 = *(v382 + (v317 >> 3));
  v9[3] = v380;
  if ((v383 >> (~v317 & 7)))
  {
    if (v317 + 7 > v381)
    {
      v27 = 4750;
      goto LABEL_261;
    }

    v390 = 0;
    v391 = 6;
    do
    {
      v392 = 8 - (v380 & 7);
      if (v391 < v392)
      {
        v392 = v391;
      }

      v390 = (*(v382 + (v380 >> 3)) >> (8 - (v380 & 7) - v392)) & ~(-1 << v392) | (v390 << v392);
      v380 += v392;
      v9[3] = v380;
      v391 -= v392;
    }

    while (v391);
    if (v380 + 5 > v381)
    {
      v27 = 4753;
      goto LABEL_261;
    }

    v393 = 0;
    v394 = (v390 + 1);
    v395 = 5;
    do
    {
      v396 = 8 - (v380 & 7);
      if (v395 < v396)
      {
        v396 = v395;
      }

      v393 = (*(v382 + (v380 >> 3)) >> (8 - (v380 & 7) - v396)) & ~(-1 << v396) | (v393 << v396);
      v380 += v396;
      v9[3] = v380;
      v395 -= v396;
    }

    while (v395);
    if (v380 + 5 > v381)
    {
      goto LABEL_542;
    }

    v397 = 0;
    v398 = (v393 + 1);
    v399 = 5;
    do
    {
      Point = 8 - (v380 & 7);
      if (v399 < Point)
      {
        Point = v399;
      }

      v397 = (*(v382 + (v380 >> 3)) >> (8 - (v380 & 7) - Point)) & ~(-1 << Point) | (v397 << Point);
      v380 += Point;
      v9[3] = v380;
      v399 -= Point;
    }

    while (v399);
    v400 = (v397 + 1);
    if (v380 + v400 > v381)
    {
LABEL_542:
      v27 = 4756;
      goto LABEL_261;
    }

    if (v397 != -1)
    {
      LODWORD(v438) = 0;
      do
      {
        v439 = 8 - (v380 & 7);
        if (v400 < v439)
        {
          v439 = v400;
        }

        v438 = (*(v382 + (v380 >> 3)) >> (8 - (v380 & 7) - v439)) & ~(-1 << v439) | (v438 << v439);
        v380 += v439;
        v9[3] = v380;
        v400 -= v439;
      }

      while (v400);
      if (v438)
      {
        v440 = geo::codec::zone_mallocator::instance(Point);
        Point = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(v440, v438);
        v441 = *a3;
        *(v441 + 1552) = Point;
        *(v441 + 1560) = v438;
        if (!Point)
        {
          v27 = 4760;
          goto LABEL_261;
        }

        v442 = 0;
        v443 = *(*a3 + 1552);
        v178 = v9[2];
        v380 = v9[3];
        do
        {
          if (v380 + v394 > 8 * v178)
          {
            v27 = 4762;
            goto LABEL_261;
          }

          v444 = 0;
          if (v394)
          {
            v445 = v9[1];
            v446 = v394;
            do
            {
              v447 = 8 - (v380 & 7);
              if (v446 < v447)
              {
                v447 = v446;
              }

              Point = (*(v445 + (v380 >> 3)) >> (8 - (v380 & 7) - v447)) & ~(-1 << v447);
              v444 = Point | (v444 << v447);
              v380 += v447;
              v9[3] = v380;
              v446 -= v447;
            }

            while (v446);
          }

          *(v443 + 8 * v442++) = v444;
        }

        while (v442 != v438);
      }
    }

    v448 = *a3;
    v449 = *(*a3 + 1424);
    v450 = *(*a3 + 1416);
    v451 = v449 - v450;
    if (v449 != v450)
    {
      v452 = 0;
      v381 = 8 * v178;
      Point = 0xFFFFFFFFLL;
      while (1)
      {
        v453 = v380 + 1;
        if (v380 + 1 > v381)
        {
          v27 = 4767;
          goto LABEL_261;
        }

        v454 = v9[1];
        v455 = *(v454 + (v380 >> 3));
        v9[3] = v453;
        if (((v455 >> (~v380 & 7)) & 1) == 0)
        {
          goto LABEL_598;
        }

        v456 = v380 + 2;
        if (v456 > v381)
        {
          v27 = 4770;
          goto LABEL_261;
        }

        v457 = *(v454 + (v453 >> 3));
        v9[3] = v456;
        if (v456 + v398 > v381)
        {
          v27 = 4772;
          goto LABEL_261;
        }

        v458 = 0;
        if (v398)
        {
          v459 = v398;
          do
          {
            v460 = 8 - (v456 & 7);
            if (v459 < v460)
            {
              v460 = v459;
            }

            v458 = (*(v454 + (v456 >> 3)) >> (8 - (v456 & 7) - v460)) & ~(-1 << v460) | (v458 << v460);
            v456 += v460;
            v9[3] = v456;
            v459 -= v460;
          }

          while (v459);
        }

        if (((1 << (~v453 & 7)) & v457) != 0)
        {
          v461 = v450 + 344 * v458;
          v462 = v450 + 344 * v452;
          *(v462 + 248) = v461;
          *(v462 + 256) = v461 + 40;
        }

        else
        {
          v463 = *(v448 + 1552);
          if (v463)
          {
            *(v450 + 344 * v452 + 256) = v463 + 8 * v458;
          }
        }

        v453 = v456 + 1;
        if (v456 + 1 > v381)
        {
          v27 = 4781;
          goto LABEL_261;
        }

        v464 = *(v454 + (v456 >> 3));
        v9[3] = v453;
        if ((v464 >> (~v456 & 7)))
        {
          v380 = v456 + 2;
          if (v380 > v381)
          {
            v27 = 4784;
            goto LABEL_261;
          }

          v465 = *(v454 + (v453 >> 3));
          v9[3] = v380;
          if (v380 + v398 > v381)
          {
            v27 = 4786;
            goto LABEL_261;
          }

          v466 = 0;
          if (v398)
          {
            v467 = v398;
            do
            {
              v468 = 8 - (v380 & 7);
              if (v467 < v468)
              {
                v468 = v467;
              }

              v466 = (*(v454 + (v380 >> 3)) >> (8 - (v380 & 7) - v468)) & ~(-1 << v468) | (v466 << v468);
              v380 += v468;
              v9[3] = v380;
              v467 -= v468;
            }

            while (v467);
          }

          if (((1 << (~v453 & 7)) & v465) != 0)
          {
            v469 = v450 + 344 * v466 + 40;
LABEL_626:
            *(v450 + 344 * v452 + 264) = v469;
            goto LABEL_599;
          }

          v470 = *(v448 + 1552);
          if (v470)
          {
            v469 = v470 + 8 * v466;
            goto LABEL_626;
          }
        }

        else
        {
LABEL_598:
          v380 = v453;
        }

LABEL_599:
        if (++v452 >= 0x82FA0BE82FA0BE83 * (v451 >> 3))
        {
          goto LABEL_652;
        }
      }
    }

    v381 = 8 * v178;
  }

LABEL_652:
  if (v380 + 1 > v381)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4801;
    goto LABEL_21;
  }

  v486 = *(v9[1] + (v380 >> 3));
  v9[3] = v380 + 1;
  if ((v486 >> (~v380 & 7)))
  {
    v487 = *(*a3 + 1424) - *(*a3 + 1416);
    if (v487)
    {
      v1240[0] = &unk_1EF7F1F10;
      v1240[1] = a3;
      v1241 = v1240;
      geo::codec::decodeZoomRanks(v9 + 1, 0x82FA0BE82FA0BE83 * (v487 >> 3), v1240);
      Point = v1241;
      if (v1241 == v1240)
      {
        Point = (*(*v1241 + 32))(v1241);
      }

      else if (v1241)
      {
        Point = (*(*v1241 + 40))();
      }
    }
  }

  if (*(v9 + 16) < 0x11u)
  {
    goto LABEL_888;
  }

  v488 = v9[3];
  v489 = v488 + 1;
  v490 = 8 * v9[2];
  if (v488 + 1 > v490)
  {
    v27 = 4816;
    goto LABEL_261;
  }

  v491 = v9[1];
  v492 = *(v491 + (v488 >> 3));
  v9[3] = v489;
  if (((v492 >> (~v488 & 7)) & 1) == 0)
  {
    goto LABEL_888;
  }

  if (*(*a3 + 1464) || *(*a3 + 1472) != *(*a3 + 1480))
  {
    v27 = 4819;
    goto LABEL_261;
  }

  if (v488 + 6 > v490)
  {
    v27 = 4821;
    goto LABEL_261;
  }

  v547 = 0;
  v548 = 5;
  do
  {
    v549 = 8 - (v489 & 7);
    if (v548 < v549)
    {
      v549 = v548;
    }

    v547 = (*(v491 + (v489 >> 3)) >> (8 - (v489 & 7) - v549)) & ~(-1 << v549) | (v547 << v549);
    v489 += v549;
    v9[3] = v489;
    v548 -= v549;
  }

  while (v548);
  if (v489 + 5 > v490)
  {
    v27 = 4824;
    goto LABEL_261;
  }

  v550 = 0;
  v1201 = (v547 + 1);
  v551 = 5;
  do
  {
    v552 = 8 - (v489 & 7);
    if (v551 < v552)
    {
      v552 = v551;
    }

    v550 = (*(v491 + (v489 >> 3)) >> (8 - (v489 & 7) - v552)) & ~(-1 << v552) | (v550 << v552);
    v489 += v552;
    v9[3] = v489;
    v551 -= v552;
  }

  while (v551);
  if (v489 + 6 > v490)
  {
    v27 = 4827;
    goto LABEL_261;
  }

  v553 = 0;
  v1172 = (v550 + 1);
  v554 = 6;
  do
  {
    v555 = 8 - (v489 & 7);
    if (v554 < v555)
    {
      v555 = v554;
    }

    v553 = (*(v491 + (v489 >> 3)) >> (8 - (v489 & 7) - v555)) & ~(-1 << v555) | (v553 << v555);
    v489 += v555;
    v9[3] = v489;
    v554 -= v555;
  }

  while (v554);
  if (v489 + 5 > v490)
  {
    v27 = 4830;
    goto LABEL_261;
  }

  v556 = 0;
  v1179 = (v553 + 1);
  v557 = 5;
  do
  {
    v558 = 8 - (v489 & 7);
    if (v557 < v558)
    {
      v558 = v557;
    }

    v556 = (*(v491 + (v489 >> 3)) >> (8 - (v489 & 7) - v558)) & ~(-1 << v558) | (v556 << v558);
    v489 += v558;
    v9[3] = v489;
    v557 -= v558;
  }

  while (v557);
  if (v489 + 5 > v490)
  {
    goto LABEL_783;
  }

  v559 = 0;
  v1189 = (v556 + 1);
  v560 = 5;
  do
  {
    v561 = 8 - (v489 & 7);
    if (v560 < v561)
    {
      v561 = v560;
    }

    v559 = (*(v491 + (v489 >> 3)) >> (8 - (v489 & 7) - v561)) & ~(-1 << v561) | (v559 << v561);
    v489 += v561;
    v9[3] = v489;
    v560 -= v561;
  }

  while (v560);
  v562 = (v559 + 1);
  if (v489 + v562 > v490)
  {
LABEL_783:
    v27 = 4833;
    goto LABEL_261;
  }

  v563 = 0;
  if (v559 != -1)
  {
    do
    {
      v564 = 8 - (v489 & 7);
      if (v562 < v564)
      {
        v564 = v562;
      }

      v563 = (*(v491 + (v489 >> 3)) >> (8 - (v489 & 7) - v564)) & ~(-1 << v564) | (v563 << v564);
      v489 += v564;
      v9[3] = v489;
      v562 -= v564;
    }

    while (v562);
  }

  v565 = *(*a3 + 1480);
  v1164 = v563;
  v1167 = *a3;
  v566 = *(*a3 + 1472);
  v567 = &v565[-v566];
  v568 = 0x4EC4EC4EC4EC4EC5 * (&v565[-v566] >> 3);
  v569 = v563 - v568;
  if (v563 > v568)
  {
    v570 = v1167[62].__vftable;
    if (0x4EC4EC4EC4EC4EC5 * ((v570 - v565) >> 3) < v569)
    {
      v571 = 0x4EC4EC4EC4EC4EC5 * ((v570 - v566) >> 3);
      v572 = 2 * v571;
      if (2 * v571 <= v563)
      {
        v572 = v563;
      }

      v59 = v571 >= 0x13B13B13B13B13BLL;
      v573 = 0x276276276276276;
      if (!v59)
      {
        v573 = v572;
      }

      v1160 = v573;
      v574 = geo::codec::zone_mallocator::instance(Point);
      v575 = pthread_rwlock_rdlock((v574 + 32));
      if (v575)
      {
        geo::read_write_lock::logFailure(v575, "read lock", v576);
      }

      v577 = malloc_type_zone_malloc(*v574, 104 * v1160, 0x107004008EEA279uLL);
      atomic_fetch_add((v574 + 24), 1u);
      v578 = pthread_rwlock_unlock((v574 + 32));
      if (v578)
      {
        geo::read_write_lock::logFailure(v578, "unlock", v579);
      }

      v580 = &v567[v577];
      v1157 = (v577 + 104 * v1160);
      bzero(v580, 104 * ((104 * v569 - 104) / 0x68) + 104);
      v1155 = &v580[104 * ((104 * v569 - 104) / 0x68) + 104];
      shared_weak_owners = v1167[61].__shared_weak_owners_;
      shared_owners = v1167[61].__shared_owners_;
      v1161 = &v580[shared_owners - shared_weak_owners];
      if (shared_weak_owners != shared_owners)
      {
        v584 = v1167[61].__shared_owners_;
        v585 = &v580[shared_owners - shared_weak_owners];
        do
        {
          *v585 = *v584;
          *v584 = 0;
          *(v584 + 8) = 0;
          *(v585 + 1) = *(v584 + 16);
          *(v585 + 4) = *(v584 + 32);
          *(v584 + 24) = 0;
          *(v584 + 32) = 0;
          v586 = *(v584 + 40);
          v587 = *(v584 + 56);
          *(v585 + 18) = *(v584 + 72);
          *(v585 + 56) = v587;
          *(v585 + 40) = v586;
          v588 = *(v584 + 80);
          *(v585 + 24) = *(v584 + 96);
          *(v585 + 5) = v588;
          v584 += 104;
          v585 += 104;
        }

        while (v584 != shared_weak_owners);
        do
        {
          v589 = *(shared_owners + 4);
          if (v589 && !atomic_fetch_add(&v589->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v589->__on_zero_shared)(v589);
            std::__shared_weak_count::__release_weak(v589);
          }

          v581 = *(shared_owners + 1);
          if (v581)
          {
            std::__shared_weak_count::__release_weak(v581);
          }

          shared_owners += 104;
        }

        while (shared_owners != shared_weak_owners);
        shared_owners = v1167[61].__shared_owners_;
      }

      v1167[61].__shared_owners_ = v1161;
      v1167[61].__shared_weak_owners_ = v1155;
      v1167[62].__vftable = v1157;
      if (shared_owners)
      {
        v593 = geo::codec::zone_mallocator::instance(v581);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPBTransitStationTransfer>(v593, shared_owners);
      }

      goto LABEL_832;
    }

    bzero(v565, 104 * ((104 * v569 - 104) / 0x68) + 104);
    j = &v565[104 * ((104 * v569 - 104) / 0x68) + 104];
    goto LABEL_825;
  }

  if (v563 < v568)
  {
    for (j = (v566 + 104 * v563); v565 != j; v565 -= 104)
    {
      v591 = *(v565 - 9);
      if (v591 && !atomic_fetch_add(&v591->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v591->__on_zero_shared)(v591);
        std::__shared_weak_count::__release_weak(v591);
      }

      v592 = *(v565 - 12);
      if (v592)
      {
        std::__shared_weak_count::__release_weak(v592);
      }
    }

LABEL_825:
    v1167[61].__shared_weak_owners_ = j;
  }

LABEL_832:
  v594 = *a3;
  v595 = *(*a3 + 1472);
  if (*(*a3 + 1480) != v595)
  {
    v596 = 0;
    LODWORD(v597) = 0;
    while (1)
    {
      v601 = *a3;
      v600 = a3[1];
      if (v600)
      {
        atomic_fetch_add_explicit((v600 + 16), 1uLL, memory_order_relaxed);
      }

      v602 = (v595 + 104 * v596);
      v603 = v602[1];
      *v602 = v601;
      v602[1] = v600;
      if (v603)
      {
        std::__shared_weak_count::__release_weak(v603);
      }

      v604 = v9[3];
      v605 = 8 * v9[2];
      if (v604 + v1201 > v605)
      {
        v27 = 4839;
        goto LABEL_261;
      }

      v606 = v1201;
      if (v1201)
      {
        v606 = 0;
        v607 = v9[1];
        v608 = v1201;
        do
        {
          v609 = 8 - (v604 & 7);
          if (v608 < v609)
          {
            v609 = v608;
          }

          v606 = (*(v607 + (v604 >> 3)) >> (8 - (v604 & 7) - v609)) & ~(-1 << v609) | (v606 << v609);
          v604 += v609;
          v9[3] = v604;
          v608 -= v609;
        }

        while (v608);
      }

      if (v604 + v1172 > v605)
      {
        v27 = 4841;
        goto LABEL_261;
      }

      v610 = v1172;
      if (v1172)
      {
        v610 = 0;
        v611 = v9[1];
        v612 = v1172;
        do
        {
          v613 = 8 - (v604 & 7);
          if (v612 < v613)
          {
            v613 = v612;
          }

          v610 = (*(v611 + (v604 >> 3)) >> (8 - (v604 & 7) - v613)) & ~(-1 << v613) | (v610 << v613);
          v604 += v613;
          v9[3] = v604;
          v612 -= v613;
        }

        while (v612);
      }

      v594 = *a3;
      v595 = *(*a3 + 1472);
      v614 = v595 + 104 * v596;
      *(v614 + 80) = v597;
      *(v614 + 88) = v610;
      if (v606)
      {
        break;
      }

LABEL_841:
      v597 = v610 + v597;
      if (++v596 >= (0x4EC4EC4EC4EC4EC5 * ((*(v594 + 1480) - v595) >> 3)))
      {
        goto LABEL_835;
      }
    }

    v615 = 0;
    while (1)
    {
      v616 = v604 + 1;
      if (v604 + 1 > v605)
      {
        v27 = 4847;
        goto LABEL_261;
      }

      v617 = *(v9[1] + (v604 >> 3));
      v9[3] = v616;
      if ((v617 >> (~v604 & 7)))
      {
        if (v616 + v1189 > v605)
        {
          v27 = 4850;
          goto LABEL_261;
        }

        if (!v1189)
        {
          goto LABEL_861;
        }

        v618 = v1189;
        do
        {
          v619 = 8 - (v616 & 7);
          if (v618 < v619)
          {
            v619 = v618;
          }

          v616 += v619;
          v618 -= v619;
        }

        while (v618);
      }

      else
      {
        if (v616 + v1179 > v605)
        {
          v27 = 4853;
          goto LABEL_261;
        }

        if (!v1179)
        {
          goto LABEL_861;
        }

        v620 = v1179;
        do
        {
          v621 = 8 - (v616 & 7);
          if (v620 < v621)
          {
            v621 = v620;
          }

          v616 += v621;
          v620 -= v621;
        }

        while (v620);
      }

      v9[3] = v616;
LABEL_861:
      ++v615;
      v604 = v616;
      if (v615 == v606)
      {
        v594 = *a3;
        v595 = *(*a3 + 1472);
        goto LABEL_841;
      }
    }
  }

  v597 = 0;
LABEL_835:
  Point = geo::codec::decodeSectionEncoding((v9 + 1), v594 + 1464, 0, 0, 0);
  if ((Point & 1) == 0)
  {
    v27 = 4857;
    goto LABEL_261;
  }

  v598 = *(*a3 + 1464);
  if (!v598 || *(v598 + 40) != v597)
  {
    v27 = 4858;
    goto LABEL_261;
  }

  v599 = v9[3];
  if (v599 + 1 > 8 * v9[2])
  {
    v27 = 4861;
    goto LABEL_261;
  }

  v622 = *(v9[1] + (v599 >> 3));
  v9[3] = v599 + 1;
  if ((v622 >> (~v599 & 7)))
  {
    Point = geo::codec::decodeAttributeSet<GeoCodecsFeature>(1, v9 + 1, v1164, *a3 + 1120, *(*a3 + 1472), 104);
    if ((Point & 1) == 0)
    {
      v27 = 4863;
      goto LABEL_261;
    }
  }

LABEL_888:
  v623 = *a3;
  v624 = *(*a3 + 1352);
  v625 = *(*a3 + 1360);
  if (v624 != v625)
  {
    v626 = 0;
    *__p = 0u;
    *v1224 = 0u;
    v1225 = 1065353216;
    v627 = 56;
    while (v626 < 0xD37A6F4DE9BD37A7 * ((v625 - v624) >> 3))
    {
      v628 = v624 + v627 - 56;
      __key = v624 + v627;
      v1227 = v628;
      v629 = std::__hash_table<std::__hash_value_type<unsigned long long,JunctionInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,JunctionInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,JunctionInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,JunctionInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(__p, *(v624 + v627), &__key);
      std::__hash_table<GeoCodecsTransitLink *,std::hash<GeoCodecsTransitLink *>,std::equal_to<GeoCodecsTransitLink *>,std::allocator<GeoCodecsTransitLink *>>::__emplace_unique_key_args<GeoCodecsTransitLink *,GeoCodecsTransitLink *&>(v629 + 16, v628, &v1227);
      v630 = v1227;
      v631 = *(v1227 + 64);
      __key = v1227 + 64;
      v632 = std::__hash_table<std::__hash_value_type<unsigned long long,JunctionInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,JunctionInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,JunctionInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,JunctionInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(__p, v631, &__key);
      std::__hash_table<GeoCodecsTransitLink *,std::hash<GeoCodecsTransitLink *>,std::equal_to<GeoCodecsTransitLink *>,std::allocator<GeoCodecsTransitLink *>>::__emplace_unique_key_args<GeoCodecsTransitLink *,GeoCodecsTransitLink *&>(v632 + 6, v630, &v1227);
      ++v626;
      v623 = *a3;
      v625 = *(*a3 + 1360);
      v624 = *(*a3 + 1352);
      v627 += 184;
    }

    v1180 = 1;
    v1190 = v1224[0];
    if (v1224[0])
    {
      v1165 = 0;
      v1168 = 0;
      v633 = 1.0 / (1 << **(v623 + 1408));
      while (2)
      {
        v1190[104] = 1;
        v634 = *(v1190 + 6);
        if (v634)
        {
          v635 = *(v1190 + 5);
          v1173 = v1190 + 40;
          v636 = *(v635[2] + 48);
          v637 = v635 == 0;
LABEL_898:
          v639 = v635;
          do
          {
            if (*(v639[2] + 48) != v636)
            {
              goto LABEL_1004;
            }

            v639 = *v639;
          }

          while (v639);
          v638 = *(v1190 + 10);
          v1162 = v1190 + 80;
          v640 = v638 == 0;
          if (v638)
          {
            goto LABEL_904;
          }

LABEL_907:
          if (v636)
          {
            if (*(v636 + 321) == 1)
            {
              v1190[104] = 0;
              if (!v637)
              {
                do
                {
                  *(v635[2] + 48) = 0;
                  v635 = *v635;
                }

                while (v635);
              }

              if (!v640)
              {
                do
                {
                  *(v638[2] + 40) = 0;
                  v638 = *v638;
                }

                while (v638);
              }

              goto LABEL_989;
            }
          }

          else
          {
            if (!v634)
            {
              Point = geo::codec::transitLinkFirstPoint(v638[2]);
              v1158 = Point;
              goto LABEL_932;
            }

            v642 = v635[2];
            v643 = *(v642 + 20);
            if (v643)
            {
              v644 = 16 * v643;
              while (1)
              {
                if (*(v642 + 20))
                {
                  Point = *(v642 + 8);
                  if (Point)
                  {
                    Point = std::__shared_weak_count::lock(Point);
                    if (Point)
                    {
                      v645 = Point;
                      if (*v642 && (v646 = *(*v642 + 1408)) != 0)
                      {
                        v647 = *(v646 + 32) + 16 * *(v642 + 16) + v644;
                        v648 = *(v647 - 8);
                        v1202 = *(v646 + 8) + 8 * *(v647 - 16);
                      }

                      else
                      {
                        v648 = 0;
                        v1202 = 0;
                      }

                      if (!atomic_fetch_add((Point + 8), 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (*(*Point + 16))(Point);
                        std::__shared_weak_count::__release_weak(v645);
                      }

                      if (v648)
                      {
                        break;
                      }
                    }
                  }
                }

                v644 -= 16;
                if (!v644)
                {
                  v1158 = 0;
                  goto LABEL_932;
                }
              }

              v1158 = (v1202 + 8 * v648 - 8);
            }

            else
            {
              v1158 = 0;
            }

LABEL_932:
            while (1)
            {
              v1173 = *v1173;
              if (!v1173)
              {
                break;
              }

              v1203 = v1173[2];
              if (!*(v1203 + 20))
              {
                goto LABEL_985;
              }

              Point = *(v1203 + 8);
              if (!Point)
              {
                goto LABEL_985;
              }

              v649 = 8;
              v650 = 1;
LABEL_937:
              Point = std::__shared_weak_count::lock(Point);
              if (!Point)
              {
                v654 = *(v1203 + 20);
                goto LABEL_947;
              }

              v651 = Point;
              v653 = !*v1203 || (v652 = *(*v1203 + 1408)) == 0 || *(*(v652 + 32) + 16 * *(v1203 + 16) + v649) == 0;
              if (!atomic_fetch_add((Point + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (*(*Point + 16))(Point);
                std::__shared_weak_count::__release_weak(v651);
              }

              v654 = *(v1203 + 20);
              if (v653)
              {
LABEL_947:
                while (v650 < v654)
                {
                  Point = *(v1203 + 8);
                  ++v650;
                  v649 += 16;
                  if (Point)
                  {
                    goto LABEL_937;
                  }
                }

LABEL_985:
                v1190[104] = 0;
                goto LABEL_989;
              }

              if (*(v1203 + 20))
              {
                v655 = 16 * v654;
                while (1)
                {
                  if (*(v1203 + 20))
                  {
                    Point = *(v1203 + 8);
                    if (Point)
                    {
                      Point = std::__shared_weak_count::lock(Point);
                      if (Point)
                      {
                        v656 = Point;
                        if (*v1203 && (v657 = *(*v1203 + 1408)) != 0)
                        {
                          v658 = *(v657 + 32) + 16 * *(v1203 + 16) + v655;
                          v659 = *(v658 - 8);
                          v660 = *(v657 + 8) + 8 * *(v658 - 16);
                        }

                        else
                        {
                          v659 = 0;
                          v660 = 0;
                        }

                        if (!atomic_fetch_add((Point + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (*(*Point + 16))(Point);
                          std::__shared_weak_count::__release_weak(v656);
                        }

                        if (v659)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v655 -= 16;
                  if (!v655)
                  {
                    v654 = 0;
                    goto LABEL_963;
                  }
                }

                v654 = v660 + 8 * v659 - 8;
              }

LABEL_963:
              if (vabds_f32(*v654, *v1158) >= v633 || vabds_f32(*(v654 + 4), v1158[1]) >= v633)
              {
                goto LABEL_985;
              }
            }

            if ((v1190[104] & 1) == 0)
            {
              goto LABEL_989;
            }

            while (1)
            {
              v1162 = *v1162;
              if (!v1162)
              {
                break;
              }

              v661 = v1162[2];
              if (!*(v661 + 20))
              {
                goto LABEL_985;
              }

              Point = *(v661 + 8);
              if (!Point)
              {
                goto LABEL_985;
              }

              v662 = 8;
              v663 = 1;
LABEL_973:
              Point = std::__shared_weak_count::lock(Point);
              if (!Point)
              {
                goto LABEL_981;
              }

              v664 = Point;
              v666 = !*v661 || (v665 = *(*v661 + 1408)) == 0 || *(*(v665 + 32) + 16 * *(v661 + 16) + v662) == 0;
              v1204 = v666;
              if (!atomic_fetch_add((Point + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (*(*Point + 16))(Point);
                std::__shared_weak_count::__release_weak(v664);
              }

              if (v1204)
              {
LABEL_981:
                while (v663 < *(v661 + 20))
                {
                  Point = *(v661 + 8);
                  ++v663;
                  v662 += 16;
                  if (Point)
                  {
                    goto LABEL_973;
                  }
                }

                goto LABEL_985;
              }

              Point = geo::codec::transitLinkFirstPoint(v661);
              if (vabds_f32(*Point, *v1158) >= v633 || vabds_f32(*(Point + 4), v1158[1]) >= v633)
              {
                goto LABEL_985;
              }
            }

            if ((v1190[104] & 1) == 0)
            {
              goto LABEL_989;
            }

            v634 = *(v1190 + 6);
          }

          v1165 += v634 + *(v1190 + 11);
          v1168 = (v1168 + 1);
LABEL_989:
          v1190 = *v1190;
          if (v1190)
          {
            continue;
          }

          v1180 = 1;
          if (v1168 && v1165)
          {
            v667 = *a3;
            *(v667 + 1512) = v1168;
            *(v667 + 1528) = v1165;
            v668 = geo::codec::zone_mallocator::instance(Point);
            v669 = pthread_rwlock_rdlock((v668 + 32));
            if (v669)
            {
              geo::read_write_lock::logFailure(v669, "read lock", v670);
            }

            v671 = malloc_type_zone_malloc(*v668, 32 * v1168, 0x1020040D49128EBuLL);
            atomic_fetch_add((v668 + 24), 1u);
            v672 = pthread_rwlock_unlock((v668 + 32));
            if (v672)
            {
              geo::read_write_lock::logFailure(v672, "unlock", v673);
            }

            v674 = *a3;
            *(v674 + 1504) = v671;
            v675 = *(v674 + 1528);
            v676 = geo::codec::zone_mallocator::instance(v672);
            v677 = pthread_rwlock_rdlock((v676 + 32));
            if (v677)
            {
              geo::read_write_lock::logFailure(v677, "read lock", v678);
            }

            v679 = malloc_type_zone_malloc(*v676, 16 * v675, 0x1000040451B5BE8uLL);
            atomic_fetch_add((v676 + 24), 1u);
            v680 = pthread_rwlock_unlock((v676 + 32));
            if (v680)
            {
              geo::read_write_lock::logFailure(v680, "unlock", v681);
            }

            v1180 = 0;
            v682 = *a3;
            v682[190] = v679;
            if (v682[188])
            {
              if (v679)
              {
                v1174 = v1224[0];
                if (v1224[0])
                {
                  v683 = 0;
                  v1205 = 0;
                  do
                  {
                    if (*(v1174 + 104) == 1)
                    {
                      v710 = *(*a3 + 1504) + 32 * v1205;
                      v1174[14] = v710;
                      *(v710 + 8) = 0;
                      v1192 = v710;
                      *(v710 + 4) = v683;
                      for (k = v1174[5]; k; ++v683)
                      {
                        v718 = *a3;
                        v719 = (*(*a3 + 1520) + 16 * v683);
                        *v719 = v1205;
                        v720 = k[2];
                        v719[1] = -373475417 * ((v720 - *(v718 + 1352)) >> 3);
                        LODWORD(v718) = *(v720 + 20);
                        v1182 = (v718 - 1);
                        v719[2] = v1182;
                        if (v718 && (v721 = *(v720 + 8)) != 0 && (v722 = std::__shared_weak_count::lock(v721)) != 0)
                        {
                          if (*v720 && (v723 = *(*v720 + 1408)) != 0)
                          {
                            v717 = *(*(v723 + 32) + 16 * *(v720 + 16) + 16 * v1182 + 8);
                          }

                          else
                          {
                            LODWORD(v717) = 0;
                          }

                          if (!atomic_fetch_add(&v722->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            v1169 = v722;
                            (v722->__on_zero_shared)(v722);
                            std::__shared_weak_count::__release_weak(v1169);
                          }
                        }

                        else
                        {
                          LODWORD(v717) = 0;
                        }

                        v719[3] = v717 - 1;
                        *(k[2] + 48) = v1192;
                        k = *k;
                      }

                      v712 = v1174[10];
                      if (v712)
                      {
                        v713 = *(*a3 + 1520);
                        v714 = *(*a3 + 1352);
                        do
                        {
                          v715 = v713 + 16 * v683;
                          *v715 = v1205;
                          v716 = v712[2];
                          ++v683;
                          *(v715 + 8) = 0;
                          *(v715 + 4) = -373475417 * ((v716 - v714) >> 3);
                          *(v716 + 40) = v1192;
                          v712 = *v712;
                        }

                        while (v712);
                      }

                      *v1192 = v683 - v1192[1];
                      ++v1205;
                    }

                    v1174 = *v1174;
                  }

                  while (v1174);
                  v682 = *a3;
                }

                v735 = v682[178];
                v736 = v682[177];
                v737 = v735 - v736;
                if (v735 == v736 || (v738 = __p[1]) == 0)
                {
                  v1180 = 1;
                }

                else
                {
                  v739 = 0;
                  v740 = 0x82FA0BE82FA0BE83 * (v737 >> 3);
                  v741 = vcnt_s8(__p[1]);
                  v741.i16[0] = vaddlv_u8(v741);
                  v742 = __p[1] - 1;
                  v743 = __p[0];
                  if (v740 <= 1)
                  {
                    v740 = 1;
                  }

                  do
                  {
                    v744 = v736 + 344 * v739;
                    v745 = *(v744 + 40);
                    if (v741.u32[0] > 1uLL)
                    {
                      v746 = *(v744 + 40);
                      if (v745 >= v738)
                      {
                        v746 = v745 % v738;
                      }
                    }

                    else
                    {
                      v746 = v742 & v745;
                    }

                    v747 = v743[v746];
                    if (v747)
                    {
                      v748 = *v747;
                      if (v748)
                      {
                        if (v741.u32[0] < 2uLL)
                        {
                          while (1)
                          {
                            v749 = v748[1];
                            if (v749 == v745)
                            {
                              if (v748[2] == v745)
                              {
                                goto LABEL_1115;
                              }
                            }

                            else if ((v749 & v742) != v746)
                            {
                              goto LABEL_1094;
                            }

                            v748 = *v748;
                            if (!v748)
                            {
                              goto LABEL_1094;
                            }
                          }
                        }

                        do
                        {
                          v750 = v748[1];
                          if (v750 == v745)
                          {
                            if (v748[2] == v745)
                            {
LABEL_1115:
                              if (*(v748 + 104) == 1)
                              {
                                *(v744 + 240) = v748[14];
                              }

                              break;
                            }
                          }

                          else
                          {
                            if (v750 >= v738)
                            {
                              v750 %= v738;
                            }

                            if (v750 != v746)
                            {
                              break;
                            }
                          }

                          v748 = *v748;
                        }

                        while (v748);
                      }
                    }

LABEL_1094:
                    ++v739;
                    v1180 = 1;
                  }

                  while (v739 != v740);
                }
              }
            }
          }

          goto LABEL_1005;
        }

        break;
      }

      v635 = *(v1190 + 5);
      v1173 = v1190 + 40;
      v638 = *(v1190 + 10);
      v636 = *(v638[2] + 40);
      if (v635)
      {
        v637 = 0;
        goto LABEL_898;
      }

      v1162 = v1190 + 80;
      v640 = v638 == 0;
      v637 = 1;
LABEL_904:
      v641 = v638;
      while (*(v641[2] + 40) == v636)
      {
        v641 = *v641;
        if (!v641)
        {
          goto LABEL_907;
        }
      }

LABEL_1004:
      v1180 = 0;
LABEL_1005:
      v684 = v1224[0];
      if (v1224[0])
      {
        do
        {
          v688 = *v684;
          v689 = v684[10];
          if (v689)
          {
            do
            {
              v690 = *v689;
              operator delete(v689);
              v689 = v690;
            }

            while (v690);
          }

          v691 = v684[8];
          v684[8] = 0;
          if (v691)
          {
            operator delete(v691);
          }

          v692 = v684[5];
          if (v692)
          {
            do
            {
              v693 = *v692;
              operator delete(v692);
              v692 = v693;
            }

            while (v693);
          }

          v694 = v684[3];
          v684[3] = 0;
          if (v694)
          {
            operator delete(v694);
          }

          operator delete(v684);
          v684 = v688;
        }

        while (v688);
      }
    }

    Point = __p[0];
    __p[0] = 0;
    if (Point)
    {
      operator delete(Point);
    }

    if ((v1180 & 1) == 0)
    {
      v26 = *MEMORY[0x1E69E9848];
      v27 = 4868;
      goto LABEL_21;
    }
  }

  v685 = v9[3];
  v686 = v685 + 1;
  v687 = 8 * v9[2];
  if (v685 + 1 > v687)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 4898;
    goto LABEL_21;
  }

  v695 = v9[1];
  v696 = *(v695 + (v685 >> 3));
  v9[3] = v686;
  if ((v696 >> (~v685 & 7)))
  {
    if (v685 + 6 > v687)
    {
      v26 = *MEMORY[0x1E69E9848];
      v27 = 4901;
      goto LABEL_21;
    }

    v697 = 0;
    v698 = 5;
    do
    {
      v699 = 8 - (v686 & 7);
      if (v698 < v699)
      {
        v699 = v698;
      }

      v697 = (*(v695 + (v686 >> 3)) >> (8 - (v686 & 7) - v699)) & ~(-1 << v699) | (v697 << v699);
      v686 += v699;
      v9[3] = v686;
      v698 -= v699;
    }

    while (v698);
    if (v686 + 5 > v687)
    {
      v26 = *MEMORY[0x1E69E9848];
      v27 = 4904;
      goto LABEL_21;
    }

    v700 = 0;
    v1206 = (v697 + 1);
    v701 = 5;
    do
    {
      v702 = 8 - (v686 & 7);
      if (v701 < v702)
      {
        v702 = v701;
      }

      v700 = (*(v695 + (v686 >> 3)) >> (8 - (v686 & 7) - v702)) & ~(-1 << v702) | (v700 << v702);
      v686 += v702;
      v9[3] = v686;
      v701 -= v702;
    }

    while (v701);
    if (v686 + 5 > v687)
    {
      v26 = *MEMORY[0x1E69E9848];
      v27 = 4907;
      goto LABEL_21;
    }

    v703 = 0;
    v1191 = (v700 + 1);
    v704 = 5;
    do
    {
      v705 = 8 - (v686 & 7);
      if (v704 < v705)
      {
        v705 = v704;
      }

      v703 = (*(v695 + (v686 >> 3)) >> (8 - (v686 & 7) - v705)) & ~(-1 << v705) | (v703 << v705);
      v686 += v705;
      v9[3] = v686;
      v704 -= v705;
    }

    while (v704);
    if (v686 + 5 > v687)
    {
      goto LABEL_1046;
    }

    v706 = 0;
    v1181 = (v703 + 1);
    v707 = 5;
    do
    {
      v708 = 8 - (v686 & 7);
      if (v707 < v708)
      {
        v708 = v707;
      }

      v706 = (*(v695 + (v686 >> 3)) >> (8 - (v686 & 7) - v708)) & ~(-1 << v708) | (v706 << v708);
      v686 += v708;
      v9[3] = v686;
      v707 -= v708;
    }

    while (v707);
    v709 = (v706 + 1);
    if (v686 + v709 > v687)
    {
LABEL_1046:
      v26 = *MEMORY[0x1E69E9848];
      v27 = 4910;
      goto LABEL_21;
    }

    if (v706 == -1)
    {
      v724 = 0;
    }

    else
    {
      LODWORD(v724) = 0;
      do
      {
        v725 = 8 - (v686 & 7);
        if (v709 < v725)
        {
          v725 = v709;
        }

        v724 = ((*(v695 + (v686 >> 3)) >> (8 - (v686 & 7) - v725)) & ~(-1 << v725) | (v724 << v725));
        v686 += v725;
        v9[3] = v686;
        v709 -= v725;
      }

      while (v709);
    }

    if (v686 + 5 > v687)
    {
      goto LABEL_1079;
    }

    v726 = 0;
    v727 = 5;
    do
    {
      v728 = 8 - (v686 & 7);
      if (v727 < v728)
      {
        v728 = v727;
      }

      v726 = (*(v695 + (v686 >> 3)) >> (8 - (v686 & 7) - v728)) & ~(-1 << v728) | (v726 << v728);
      v686 += v728;
      v9[3] = v686;
      v727 -= v728;
    }

    while (v727);
    v729 = (v726 + 1);
    if (v686 + v729 > v687)
    {
LABEL_1079:
      v27 = 4913;
      goto LABEL_261;
    }

    if (v726 == -1)
    {
      v732 = *a3;
      *(*a3 + 1640) = 0;
    }

    else
    {
      LODWORD(v730) = 0;
      do
      {
        v731 = 8 - (v686 & 7);
        if (v729 < v731)
        {
          v731 = v729;
        }

        v730 = (*(v695 + (v686 >> 3)) >> (8 - (v686 & 7) - v731)) & ~(-1 << v731) | (v730 << v731);
        v686 += v731;
        v9[3] = v686;
        v729 -= v731;
      }

      while (v729);
      v732 = *a3;
      *(*a3 + 1640) = v730;
      if (v730)
      {
        v733 = geo::codec::zone_mallocator::instance(Point);
        v734 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsPBTransitLineKey>(v733, v730);
        v732 = *a3;
        *(*a3 + 1624) = v734;
        if (!v734)
        {
          v27 = 4918;
          goto LABEL_261;
        }
      }
    }

    v1170 = *(v732 + 864);
    v751 = *(v732 + 872);
    __p[0] = 0;
    Point = geo::codec::_makeSpaceForLabels(v724, __p, a3);
    if (!Point)
    {
      v27 = 4925;
      goto LABEL_261;
    }

    if (v39)
    {
      v1159 = 0;
      v1163 = v751 - v1170;
      v1166 = 0;
      v752 = __p[0];
      v753 = v9[2];
      v754 = v9[3];
      v1156 = v39;
      do
      {
        v755 = 8 * v753;
        if (v754 + 2 > 8 * v753)
        {
          v27 = 4933;
          goto LABEL_261;
        }

        v756 = 0;
        v1175 = *(*a3 + 1416) + 344 * v1166;
        v757 = v9[1];
        v758 = 2;
        do
        {
          v759 = 8 - (v754 & 7);
          if (v758 < v759)
          {
            v759 = v758;
          }

          v756 = (*(v757 + (v754 >> 3)) >> (8 - (v754 & 7) - v759)) & ~(-1 << v759) | (v756 << v759);
          v754 += v759;
          v9[3] = v754;
          v758 -= v759;
        }

        while (v758);
        *(v1175 + 273) = v756;
        v760 = v754 + 1;
        if (v754 + 1 > v755)
        {
          v27 = 4939;
          goto LABEL_261;
        }

        v761 = *(v757 + (v754 >> 3));
        v9[3] = v760;
        if ((v761 >> (~v754 & 7)))
        {
          *(v1175 + 280) = v752;
          if (v760 + v1206 > v755)
          {
            v27 = 4944;
            __p[0] = v752;
            goto LABEL_261;
          }

          if (v1206)
          {
            v762 = 0;
            v763 = v1206;
            do
            {
              v764 = 8 - (v760 & 7);
              if (v763 < v764)
              {
                v764 = v763;
              }

              v762 = (*(v757 + (v760 >> 3)) >> (8 - (v760 & 7) - v764)) & ~(-1 << v764) | (v762 << v764);
              v760 += v764;
              v9[3] = v760;
              v763 -= v764;
            }

            while (v763);
          }

          else
          {
            v762 = 0;
          }

          v765 = v762;
          if (v1163 <= v762)
          {
            v27 = 4945;
            __p[0] = v752;
            goto LABEL_261;
          }

          if (v760 + v1206 > v755)
          {
            v27 = 4948;
            __p[0] = v752;
            goto LABEL_261;
          }

          if (v1206)
          {
            v766 = 0;
            v767 = v1206;
            do
            {
              v768 = 8 - (v760 & 7);
              if (v767 < v768)
              {
                v768 = v767;
              }

              v766 = (*(v757 + (v760 >> 3)) >> (8 - (v760 & 7) - v768)) & ~(-1 << v768) | (v766 << v768);
              v760 += v768;
              v9[3] = v760;
              v767 -= v768;
            }

            while (v767);
          }

          else
          {
            v766 = 0;
          }

          v769 = v766;
          if (v1163 <= v766)
          {
            v27 = 4949;
            __p[0] = v752;
            goto LABEL_261;
          }

          if (v760 + v1206 > v755)
          {
            v27 = 4952;
            __p[0] = v752;
            goto LABEL_261;
          }

          if (v1206)
          {
            v770 = 0;
            v771 = v1206;
            do
            {
              v772 = 8 - (v760 & 7);
              if (v771 < v772)
              {
                v772 = v771;
              }

              v770 = (*(v757 + (v760 >> 3)) >> (8 - (v760 & 7) - v772)) & ~(-1 << v772) | (v770 << v772);
              v760 += v772;
              v9[3] = v760;
              v771 -= v772;
            }

            while (v771);
          }

          else
          {
            v770 = 0;
          }

          v773 = v770;
          if (v1163 <= v770)
          {
            v27 = 4953;
            __p[0] = v752;
            goto LABEL_261;
          }

          v774 = *a3;
          v775 = *(*a3 + 1056) + 24 * v752;
          *v775 = v765 + v1170;
          *(v775 + 16) = 0;
          v776 = *(v774 + 896);
          v777 = *(v774 + 904);
          __key = v765;
          v778 = bsearch(&__key, v776, v777, 0x18uLL, geo::codec::findLabelLanguageLocal);
          if (v778)
          {
            v779 = v778[2];
          }

          else
          {
            v779 = 0;
          }

          v780 = *a3;
          v781 = *(*a3 + 1056) + 24 * v752;
          *(v781 + 8) = v779;
          *(v781 + 24) = v769 + v1170;
          *(v781 + 40) = 0;
          v782 = *(v780 + 896);
          v783 = *(v780 + 904);
          __key = v769;
          v784 = bsearch(&__key, v782, v783, 0x18uLL, geo::codec::findLabelLanguageLocal);
          if (v784)
          {
            v785 = v784[2];
          }

          else
          {
            v785 = 0;
          }

          v786 = *a3;
          v787 = *(*a3 + 1056);
          *(v787 + 24 * (v752 + 1) + 8) = v785;
          v788 = v787 + 24 * (v752 + 2);
          *v788 = v773 + v1170;
          *(v788 + 16) = 0;
          v789 = *(v786 + 896);
          v790 = *(v786 + 904);
          __key = v773;
          Point = bsearch(&__key, v789, v790, 0x18uLL, geo::codec::findLabelLanguageLocal);
          if (Point)
          {
            v791 = *(Point + 16);
          }

          else
          {
            v791 = 0;
          }

          *(*(*a3 + 1056) + 24 * (v752 + 2) + 8) = v791;
          v753 = v9[2];
          v760 = v9[3];
          v755 = 8 * v753;
        }

        else
        {
          *(v1175 + 280) = 255;
        }

        v752 = v752 + 3;
        if (v760 + v1191 > v755)
        {
          v27 = 4976;
          __p[0] = v752;
          goto LABEL_261;
        }

        v792 = v1191;
        if (v1191)
        {
          v792 = 0;
          v793 = v9[1];
          v794 = v1191;
          do
          {
            v795 = 8 - (v760 & 7);
            if (v794 < v795)
            {
              v795 = v794;
            }

            v792 = (*(v793 + (v760 >> 3)) >> (8 - (v760 & 7) - v795)) & ~(-1 << v795) | (v792 << v795);
            v760 += v795;
            v9[3] = v760;
            v794 -= v795;
          }

          while (v794);
        }

        *(v1175 + 292) = v1159;
        *(v1175 + 274) = v792;
        if (*(*a3 + 1640) < (v792 + v1159))
        {
          v27 = 4981;
          __p[0] = v752;
          goto LABEL_261;
        }

        if (v792)
        {
          v796 = 0;
          v797 = (*(*a3 + 1624) + 8 * v1159);
          do
          {
            if (v760 + v1213 > v755)
            {
              v27 = 4985;
              __p[0] = v752;
              goto LABEL_261;
            }

            if (v1213)
            {
              v799 = 0;
              v800 = v9[1];
              v801 = v1213;
              do
              {
                v802 = 8 - (v760 & 7);
                if (v801 < v802)
                {
                  v802 = v801;
                }

                Point = (*(v800 + (v760 >> 3)) >> (8 - (v760 & 7) - v802)) & ~(-1 << v802);
                v799 = Point | (v799 << v802);
                v760 += v802;
                v9[3] = v760;
                v801 -= v802;
              }

              while (v801);
            }

            else
            {
              v799 = 0;
            }

            *v797 = v799;
            if (v760 + v1222 > v755)
            {
              v27 = 4986;
              __p[0] = v752;
              goto LABEL_261;
            }

            if (v1222)
            {
              v798 = 0;
              v803 = v9[1];
              v804 = v1222;
              do
              {
                v805 = 8 - (v760 & 7);
                if (v804 < v805)
                {
                  v805 = v804;
                }

                Point = (*(v803 + (v760 >> 3)) >> (8 - (v760 & 7) - v805)) & ~(-1 << v805);
                v798 = Point | (v798 << v805);
                v760 += v805;
                v9[3] = v760;
                v804 -= v805;
              }

              while (v804);
            }

            else
            {
              v798 = 0;
            }

            v797[1] = v798;
            ++v796;
            v797 += 2;
          }

          while (v796 != v792);
          v1159 += v792;
        }

        v754 = v760 + 1;
        if (v760 + 1 > v755)
        {
          __p[0] = v752;
          v27 = 4990;
          goto LABEL_261;
        }

        v806 = v9[1];
        v807 = *(v806 + (v760 >> 3));
        v9[3] = v754;
        if ((v807 >> (~v760 & 7)))
        {
          if (v754 + v1181 > v755)
          {
            __p[0] = v752;
            v27 = 4993;
            goto LABEL_261;
          }

          v808 = v1181;
          if (v1181)
          {
            v808 = 0;
            v809 = v1181;
            do
            {
              v810 = 8 - (v754 & 7);
              if (v809 < v810)
              {
                v810 = v809;
              }

              v808 = (*(v806 + (v754 >> 3)) >> (8 - (v754 & 7) - v810)) & ~(-1 << v810) | (v808 << v810);
              v754 += v810;
              v9[3] = v754;
              v809 -= v810;
            }

            while (v809);
          }

          if (v754 + v1191 > 8 * v753)
          {
            __p[0] = v752;
            v27 = 4996;
            goto LABEL_261;
          }

          LOBYTE(v811) = v1191;
          if (v1191)
          {
            v811 = 0;
            v812 = v1191;
            do
            {
              v813 = 8 - (v754 & 7);
              if (v812 < v813)
              {
                v813 = v812;
              }

              v811 = (*(v806 + (v754 >> 3)) >> (8 - (v754 & 7) - v813)) & ~(-1 << v813) | (v811 << v813);
              v754 += v813;
              v9[3] = v754;
              v812 -= v813;
            }

            while (v812);
          }

          *(v1175 + 296) = v808;
        }

        else
        {
          *(v1175 + 296) = -1;
          LOBYTE(v811) = -1;
        }

        *(v1175 + 275) = v811;
        ++v1166;
      }

      while (v1166 != v1156);
      v814 = v1159;
    }

    else
    {
      v814 = 0;
    }

    if (*(*a3 + 1640) != v814)
    {
      v27 = 5006;
      goto LABEL_261;
    }

    v686 = v9[3];
    v687 = 8 * v9[2];
  }

  v815 = v686 + 1;
  if (v686 + 1 > v687)
  {
    v27 = 5013;
    goto LABEL_261;
  }

  v816 = v9[1];
  v817 = *(v816 + (v686 >> 3));
  v9[3] = v815;
  if ((v817 >> (~v686 & 7)))
  {
    if (v686 + 6 > v687)
    {
      goto LABEL_1225;
    }

    v818 = 0;
    v819 = 5;
    do
    {
      v820 = 8 - (v815 & 7);
      if (v819 < v820)
      {
        v820 = v819;
      }

      v818 = (*(v816 + (v815 >> 3)) >> (8 - (v815 & 7) - v820)) & ~(-1 << v820) | (v818 << v820);
      v815 += v820;
      v9[3] = v815;
      v819 -= v820;
    }

    while (v819);
    v821 = (v818 + 1);
    if (v815 + v821 > v687)
    {
LABEL_1225:
      v27 = 5017;
      goto LABEL_261;
    }

    LODWORD(v822) = 0;
    if (v818 != -1)
    {
      do
      {
        v823 = 8 - (v815 & 7);
        if (v821 < v823)
        {
          v823 = v821;
        }

        v822 = (*(v816 + (v815 >> 3)) >> (8 - (v815 & 7) - v823)) & ~(-1 << v823) | (v822 << v823);
        v815 += v823;
        v9[3] = v815;
        v821 -= v823;
      }

      while (v821);
      if (v822)
      {
        v824 = geo::codec::zone_mallocator::instance(Point);
        v825 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long>(v824, v822);
        v826 = *a3;
        *(*a3 + 1648) = v825;
        if (!v825)
        {
          v27 = 5021;
          goto LABEL_261;
        }

        *(v826 + 1656) = v822;
      }
    }

    v827 = 0;
    v828 = 0;
    v829 = *(*a3 + 1352);
    v830 = 0xD37A6F4DE9BD37A7 * ((*(*a3 + 1360) - v829) >> 3);
    if (!v830)
    {
LABEL_1255:
      if (v827 != v822)
      {
        v27 = 5043;
        goto LABEL_261;
      }

      goto LABEL_1256;
    }

    while (1)
    {
      v831 = v9[3];
      v832 = v831 + 1;
      v833 = 8 * v9[2];
      if (v831 + 1 > v833)
      {
        v27 = 5028;
        goto LABEL_261;
      }

      v834 = v9[1];
      v835 = *(v834 + (v831 >> 3));
      v9[3] = v832;
      if (((v835 >> (~v831 & 7)) & 1) == 0)
      {
        goto LABEL_1236;
      }

      if (v832 + v1214 > v833)
      {
        v27 = 5031;
        goto LABEL_261;
      }

      if (v1214)
      {
        LODWORD(v836) = 0;
        v837 = v1214;
        do
        {
          v838 = 8 - (v832 & 7);
          if (v837 < v838)
          {
            v838 = v837;
          }

          v836 = (*(v834 + (v832 >> 3)) >> (8 - (v832 & 7) - v838)) & ~(-1 << v838) | (v836 << v838);
          v832 += v838;
          v9[3] = v832;
          v837 -= v838;
        }

        while (v837);
        v839 = v829 + 184 * v828;
        *(v839 + 88) = v827;
        *(v839 + 96) = v836;
        if (v836)
        {
          v840 = v827 + v836;
          v841 = *a3;
          do
          {
            v842 = v9[3];
            if (v842 + v1214 > 8 * v9[2])
            {
              v27 = 5038;
              goto LABEL_261;
            }

            v843 = 0;
            v844 = v1214;
            do
            {
              v845 = 8 - (v842 & 7);
              if (v844 < v845)
              {
                v845 = v844;
              }

              v843 = (*(v834 + (v842 >> 3)) >> (8 - (v842 & 7) - v845)) & ~(-1 << v845) | (v843 << v845);
              v842 += v845;
              v9[3] = v842;
              v844 -= v845;
            }

            while (v844);
            *(*(v841 + 1648) + 8 * v827++) = v843;
          }

          while (v827 != v840);
          v827 = v840;
        }

LABEL_1236:
        if (++v828 == v830)
        {
          goto LABEL_1255;
        }
      }

      else
      {
        v846 = v829 + 184 * v828;
        *(v846 + 88) = v827;
        *(v846 + 96) = 0;
        if (++v828 == v830)
        {
          goto LABEL_1255;
        }
      }
    }
  }

LABEL_1256:
  v847 = 0x82FA0BE82FA0BE83 * ((*(*a3 + 1424) - *(*a3 + 1416)) >> 3);
  v1238[0] = &unk_1EF7F1F90;
  v1238[1] = a3;
  v1239 = v1238;
  v848 = geo::codec::decodeZoomRanks(v9 + 1, v847, v1238);
  if (v1239 == v1238)
  {
    (*(*v1239 + 32))(v1239);
  }

  else if (v1239)
  {
    (*(*v1239 + 40))();
  }

  if ((v848 & 1) == 0)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 5051;
    goto LABEL_21;
  }

  v849 = v9[3];
  v850 = v849 + 1;
  v851 = 8 * v9[2];
  if (v849 + 1 > v851)
  {
    v27 = 5057;
    goto LABEL_261;
  }

  v852 = *(v9[1] + (v849 >> 3));
  v9[3] = v850;
  if ((v852 >> (~v849 & 7)))
  {
    v853 = *a3;
    v854 = *(*a3 + 1400);
    if (v854)
    {
      v855 = geo::codec::zone_mallocator::instance(v850);
      v856 = pthread_rwlock_rdlock((v855 + 32));
      if (v856)
      {
        geo::read_write_lock::logFailure(v856, "read lock", v857);
      }

      v858 = malloc_type_zone_calloc(*v855, v854, 1uLL, 0x100004077774924uLL);
      atomic_fetch_add((v855 + 24), 1u);
      v859 = pthread_rwlock_unlock((v855 + 32));
      if (v859)
      {
        geo::read_write_lock::logFailure(v859, "unlock", v860);
      }

      v861 = *a3;
      *(*a3 + 1664) = v858;
      if (!v858)
      {
        v27 = 5061;
        goto LABEL_261;
      }

      v853 = *a3;
    }

    else
    {
      v861 = *a3;
    }

    for (m = 0; ; ++m)
    {
      v850 = v9[3];
      if (m >= 0xD37A6F4DE9BD37A7 * ((v861[170] - v861[169]) >> 3))
      {
        break;
      }

      v863 = 8 * v9[2];
      if (v850 + 1 > v863)
      {
        v27 = 5065;
        goto LABEL_261;
      }

      v864 = v9[1];
      v865 = *(v864 + (v850 >> 3));
      v9[3] = v850 + 1;
      v861 = v853;
      if ((v865 >> (~v850 & 7)))
      {
        v866 = *(v853 + 1352) + 184 * m;
        v867 = *(v866 + 32);
        v861 = v853;
        if (v867)
        {
          v868 = 0;
          v861 = *a3;
          v869 = (v863 - v850) >> 1;
          v870 = (v850 + 3);
          do
          {
            if (v869 == v868)
            {
              v27 = 5070;
              goto LABEL_261;
            }

            v871 = *(v864 + ((v870 - 2) >> 3));
            v9[3] = (v870 - 1);
            if (v870 > v863)
            {
              v27 = 5071;
              goto LABEL_261;
            }

            v872 = *(v864 + ((v870 - 1) >> 3));
            v9[3] = v870;
            v873 = (1 << (-v870 & 7)) & v872;
            if ((v871 >> (~(v870 - 2) & 7)))
            {
              v874 = v861[208] + *(v866 + 24);
              if (v873)
              {
                *(v874 + v868) = 0;
              }

              else
              {
                *(v874 + v868) = 1;
              }
            }

            else
            {
              if (!v873)
              {
                v27 = 5072;
                goto LABEL_261;
              }

              *(v861[208] + *(v866 + 24) + v868) = 2;
            }

            ++v868;
            v870 += 2;
          }

          while (v867 != v868);
        }
      }
    }

    v851 = 8 * v9[2];
  }

  if (v850 + 1 > v851)
  {
    v27 = 5104;
    goto LABEL_261;
  }

  v875 = *(v9[1] + (v850 >> 3));
  v9[3] = v850 + 1;
  if ((v875 >> (~v850 & 7)))
  {
    v876 = geo::codec::zone_mallocator::instance(v850);
    v877 = pthread_rwlock_rdlock((v876 + 32));
    if (v877)
    {
      geo::read_write_lock::logFailure(v877, "read lock", v878);
    }

    v879 = malloc_type_zone_calloc(*v876, countb, 8uLL, 0x100004000313F17uLL);
    atomic_fetch_add((v876 + 24), 1u);
    v880 = pthread_rwlock_unlock((v876 + 32));
    if (v880)
    {
      geo::read_write_lock::logFailure(v880, "unlock", v881);
    }

    v882 = *a3;
    *(v882 + 1704) = v879;
    *(v882 + 1712) = countb;
    if (!v879)
    {
      v27 = 5108;
      goto LABEL_261;
    }

    if (countb)
    {
      if (countb == 1)
      {
        v883 = 0;
LABEL_1315:
        v886 = countb - v883;
        v887 = &v879[8 * v883 + 4];
        do
        {
          *v887 = 1065353216;
          v887 += 8;
          --v886;
        }

        while (v886);
        goto LABEL_1317;
      }

      v883 = countb & 0xFFFFFFFE;
      v884 = v879 + 12;
      v885 = v883;
      do
      {
        *(v884 - 2) = 1065353216;
        *v884 = 1065353216;
        v884 += 4;
        v885 -= 2;
      }

      while (v885);
      if (v883 != countb)
      {
        goto LABEL_1315;
      }
    }

LABEL_1317:
    v888 = v9[3];
    v889 = 8 * v9[2];
    if (v888 + 5 > v889)
    {
      v27 = 5114;
      goto LABEL_261;
    }

    v890 = 0;
    v891 = v9[1];
    v892 = 5;
    do
    {
      v893 = 8 - (v888 & 7);
      if (v892 < v893)
      {
        v893 = v892;
      }

      v890 = (*(v891 + (v888 >> 3)) >> (8 - (v888 & 7) - v893)) & ~(-1 << v893) | (v890 << v893);
      v888 += v893;
      v9[3] = v888;
      v892 -= v893;
    }

    while (v892);
    v894 = (v890 + 1);
    v895 = __exp10f(floorf(v894 * 0.30103));
    v896 = 0;
    v897 = *a3;
    v898 = *(*a3 + 1352);
    v899 = 0xD37A6F4DE9BD37A7 * ((*(*a3 + 1360) - v898) >> 3);
    v900 = 1.0 / v895;
    while (v896 != v899)
    {
      v901 = v888 + 1;
      if (v888 + 1 > v889)
      {
        v27 = 5121;
        goto LABEL_261;
      }

      v902 = *(v891 + (v888 >> 3));
      v9[3] = v901;
      if ((v902 >> (~v888 & 7)))
      {
        v903 = v898 + 184 * v896;
        v904 = *(v903 + 16);
        v905 = *(v903 + 20);
        if (v905 + v904 > countb)
        {
          v27 = 5124;
          goto LABEL_261;
        }

        if (v905)
        {
          v906 = 0;
          v907 = (*(v897 + 1704) + 8 * v904);
          do
          {
            v908 = v901 + 1;
            if (v901 + 1 > v889)
            {
              v27 = 5128;
              goto LABEL_261;
            }

            v909 = *(v891 + (v901 >> 3));
            v9[3] = v908;
            if ((v909 >> (~v901 & 7)))
            {
              if (v908 + v894 > v889)
              {
                v27 = 5131;
                goto LABEL_261;
              }

              v910 = 0;
              if (v894)
              {
                v911 = v894;
                do
                {
                  v912 = 8 - (v908 & 7);
                  if (v911 < v912)
                  {
                    v912 = v911;
                  }

                  v910 = (*(v891 + (v908 >> 3)) >> (8 - (v908 & 7) - v912)) & ~(-1 << v912) | (v910 << v912);
                  v908 += v912;
                  v9[3] = v908;
                  v911 -= v912;
                }

                while (v911);
              }

              *v907 = v900 * v910;
            }

            v901 = v908 + 1;
            if (v908 + 1 > v889)
            {
              v27 = 5135;
              goto LABEL_261;
            }

            v913 = *(v891 + (v908 >> 3));
            v9[3] = v901;
            if ((v913 >> (~v908 & 7)))
            {
              if (v901 + v894 > v889)
              {
                v27 = 5138;
                goto LABEL_261;
              }

              v914 = 0;
              if (v894)
              {
                v915 = v894;
                do
                {
                  v916 = 8 - (v901 & 7);
                  if (v915 < v916)
                  {
                    v916 = v915;
                  }

                  v914 = (*(v891 + (v901 >> 3)) >> (8 - (v901 & 7) - v916)) & ~(-1 << v916) | (v914 << v916);
                  v901 += v916;
                  v9[3] = v901;
                  v915 -= v916;
                }

                while (v915);
              }

              v907[1] = v900 * v914;
            }

            ++v906;
            v907 += 2;
          }

          while (v906 != v905);
        }
      }

      ++v896;
      v888 = v901;
    }
  }

  if ((geo::codec::_decodeTransitLabelsFromStream(v9 + 1, 0xEF7BDEF7BDEF7BDFLL * ((*(*a3 + 1576) - *(*a3 + 1568)) >> 3), *(*a3 + 1568), 248, a3) & 1) == 0)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 5149;
    goto LABEL_21;
  }

  v917 = *(*a3 + 1408);
  if (v917)
  {
    v918 = *v917;
  }

  else
  {
    v918 = 0;
  }

  if ((geo::codec::_decodeLabelTextPlacementsFromStream((v9 + 1), 0x82FA0BE82FA0BE83 * ((*(*a3 + 1424) - *(*a3 + 1416)) >> 3), *(*a3 + 1416), 344, v918, a3) & 1) == 0)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 5155;
    goto LABEL_21;
  }

  SpaceForShields = geo::codec::_decodeLabelTextPlacementsFromStream((v9 + 1), 0xEF7BDEF7BDEF7BDFLL * ((*(*a3 + 1576) - *(*a3 + 1568)) >> 3), *(*a3 + 1568), 248, v1219, a3);
  if ((SpaceForShields & 1) == 0)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 5160;
    goto LABEL_21;
  }

  if (*(v9 + 16) >= 0x1Fu)
  {
    v919 = 0x4EC4EC4EC4EC4EC5 * ((*(*a3 + 1480) - *(*a3 + 1472)) >> 3);
    v1236[0] = &unk_1EF7F2010;
    v1236[1] = a3;
    v1237 = v1236;
    geo::codec::decodeZoomRanks(v9 + 1, v919, v1236);
    if (v1237 == v1236)
    {
      (*(*v1237 + 32))(v1237);
    }

    else if (v1237)
    {
      (*(*v1237 + 40))();
    }

    v920 = 0x4EC4EC4EC4EC4EC5 * ((*(*a3 + 1480) - *(*a3 + 1472)) >> 3);
    v1234[0] = &unk_1EF7F2090;
    v1234[1] = a3;
    v1235 = v1234;
    geo::codec::decodeZoomRanks(v9 + 1, v920, v1234);
    SpaceForShields = v1235;
    if (v1235 == v1234)
    {
      SpaceForShields = (*(*v1235 + 32))(v1235);
    }

    else if (v1235)
    {
      SpaceForShields = (*(*v1235 + 40))();
    }

    if (*(v9 + 16) >= 0x20u)
    {
      v921 = 0xEF7BDEF7BDEF7BDFLL * ((*(*a3 + 1576) - *(*a3 + 1568)) >> 3);
      v1232[0] = &unk_1EF7F2110;
      v1232[1] = a3;
      v1233 = v1232;
      geo::codec::decodeZoomRanks(v9 + 1, v921, v1232);
      if (v1233 == v1232)
      {
        (*(*v1233 + 32))(v1233);
      }

      else if (v1233)
      {
        (*(*v1233 + 40))();
      }

      v922 = 0xEF7BDEF7BDEF7BDFLL * ((*(*a3 + 1576) - *(*a3 + 1568)) >> 3);
      v1230[0] = &unk_1EF7F2190;
      v1230[1] = a3;
      v1231 = v1230;
      geo::codec::decodeZoomRanks(v9 + 1, v922, v1230);
      SpaceForShields = v1231;
      if (v1231 == v1230)
      {
        SpaceForShields = (*(*v1231 + 32))(v1231);
      }

      else if (v1231)
      {
        SpaceForShields = (*(*v1231 + 40))();
      }
    }
  }

  v923 = v9[3];
  v924 = v923 + 1;
  v925 = 8 * v9[2];
  if (v923 + 1 > v925)
  {
    v27 = 5183;
    goto LABEL_261;
  }

  v926 = v9[1];
  v927 = *(v926 + (v923 >> 3));
  v9[3] = v924;
  if (((v927 >> (~v923 & 7)) & 1) != 0 && (v928 = *(*a3 + 1416), (v929 = *(*a3 + 1424) - v928) != 0))
  {
    v930 = 0;
    v931 = 0x82FA0BE82FA0BE83 * (v929 >> 3);
    v932 = (v928 + 320);
    do
    {
      if (v925 == v924)
      {
        v27 = 5186;
        goto LABEL_261;
      }

      v933 = v924 + 1;
      v934 = *(v926 + (v924 >> 3));
      v9[3] = v924 + 1;
      *v932 = (v934 >> (~v924 & 7)) & 1;
      ++v930;
      v932 += 344;
      ++v924;
    }

    while (v930 < v931);
  }

  else
  {
    v933 = v923 + 1;
  }

  v935 = v933 + 1;
  if (v933 + 1 > v925)
  {
    v26 = *MEMORY[0x1E69E9848];
    v27 = 5194;
    goto LABEL_21;
  }

  v936 = *(v926 + (v933 >> 3));
  v9[3] = v935;
  if ((v936 >> (~v933 & 7)))
  {
    if (v933 + 6 > v925)
    {
      v26 = *MEMORY[0x1E69E9848];
      v27 = 5197;
      goto LABEL_21;
    }

    v937 = 0;
    v938 = 5;
    do
    {
      v939 = 8 - (v935 & 7);
      if (v938 < v939)
      {
        v939 = v938;
      }

      v937 = (*(v926 + (v935 >> 3)) >> (8 - (v935 & 7) - v939)) & ~(-1 << v939) | (v937 << v939);
      v935 += v939;
      v9[3] = v935;
      v938 -= v939;
    }

    while (v938);
    if (v935 + 5 > v925)
    {
      v26 = *MEMORY[0x1E69E9848];
      v27 = 5200;
      goto LABEL_21;
    }

    v940 = 0;
    v1221 = (v937 + 1);
    v941 = 5;
    do
    {
      v942 = 8 - (v935 & 7);
      if (v941 < v942)
      {
        v942 = v941;
      }

      v940 = (*(v926 + (v935 >> 3)) >> (8 - (v935 & 7) - v942)) & ~(-1 << v942) | (v940 << v942);
      v935 += v942;
      v9[3] = v935;
      v941 -= v942;
    }

    while (v941);
    if (v935 + 5 > v925)
    {
      goto LABEL_1432;
    }

    v943 = 0;
    v1215 = (v940 + 1);
    v944 = 5;
    do
    {
      v945 = 8 - (v935 & 7);
      if (v944 < v945)
      {
        v945 = v944;
      }

      v943 = (*(v926 + (v935 >> 3)) >> (8 - (v935 & 7) - v945)) & ~(-1 << v945) | (v943 << v945);
      v935 += v945;
      v9[3] = v935;
      v944 -= v945;
    }

    while (v944);
    v946 = (v943 + 1);
    if (v935 + v946 > v925)
    {
LABEL_1432:
      v27 = 5203;
      goto LABEL_261;
    }

    if (v943 == -1)
    {
      goto LABEL_1487;
    }

    LODWORD(v947) = 0;
    do
    {
      v948 = 8 - (v935 & 7);
      if (v946 < v948)
      {
        v948 = v946;
      }

      v947 = ((*(v926 + (v935 >> 3)) >> (8 - (v935 & 7) - v948)) & ~(-1 << v948) | (v947 << v948));
      v935 += v948;
      v9[3] = v935;
      v946 -= v948;
    }

    while (v946);
    if (!v947)
    {
LABEL_1487:
      v27 = 5204;
      goto LABEL_261;
    }

    v1193 = *(*a3 + 864);
    v949 = *(*a3 + 872);
    __p[0] = 0;
    SpaceForShields = geo::codec::_makeSpaceForShields(v947, __p, a3);
    if ((SpaceForShields & 1) == 0)
    {
      v27 = 5209;
      goto LABEL_261;
    }

    v950 = __p[0];
    v951 = *a3;
    v952 = *(*a3 + 1568);
    if (*(*a3 + 1576) != v952)
    {
      for (countd = 0; countd < 0xEF7BDEF7BDEF7BDFLL * ((*(*a3 + 1576) - *(*a3 + 1568)) >> 3); ++countd)
      {
        v953 = v9[3];
        v954 = v953 + 1;
        v955 = 8 * v9[2];
        if (v953 + 1 > v955)
        {
          v27 = 5213;
          goto LABEL_261;
        }

        v956 = v9[1];
        v957 = *(v956 + (v953 >> 3));
        v9[3] = v954;
        if ((v957 >> (~v953 & 7)))
        {
          if (v954 + v1221 > v955)
          {
            v27 = 5216;
            goto LABEL_261;
          }

          v958 = v1221;
          if (v1221)
          {
            v958 = 0;
            v959 = v1221;
            do
            {
              v960 = 8 - (v954 & 7);
              if (v959 < v960)
              {
                v960 = v959;
              }

              v958 = (*(v956 + (v954 >> 3)) >> (8 - (v954 & 7) - v960)) & ~(-1 << v960) | (v958 << v960);
              v954 += v960;
              v9[3] = v954;
              v959 -= v960;
            }

            while (v959);
          }

          v961 = *a3;
          if (v950 >= *(*a3 + 1080))
          {
            v27 = 5217;
            goto LABEL_261;
          }

          *(v952 + 72) = 1;
          *(v952 + 60) = v950;
          *(*(v961 + 1072) + 32 * v950 + 24) = v958;
          v1207 = (v950 + 1);
          v962 = v954 + 1;
          if (v954 + 1 > v955)
          {
            __p[0] = (v950 + 1);
            v27 = 5224;
            goto LABEL_261;
          }

          v963 = *(v956 + (v954 >> 3));
          v9[3] = v962;
          if ((v963 >> (~v954 & 7)))
          {
            if (v962 + v1215 > v955)
            {
              v27 = 5227;
LABEL_1506:
              __p[0] = v1207;
              goto LABEL_261;
            }

            if (v1215)
            {
              v964 = 0;
              v965 = v1215;
              do
              {
                v966 = 8 - (v962 & 7);
                if (v965 < v966)
                {
                  v966 = v965;
                }

                v964 = (*(v956 + (v962 >> 3)) >> (8 - (v962 & 7) - v966)) & ~(-1 << v966) | (v964 << v966);
                v962 += v966;
                v9[3] = v962;
                v965 -= v966;
              }

              while (v965);
            }

            else
            {
              v964 = 0;
            }

            if (v949 - v1193 <= v964)
            {
              v27 = 5228;
              goto LABEL_1506;
            }

            v967 = v950;
            v968 = *a3;
            *(*(*a3 + 1072) + 32 * v950) = v1193 + v964;
            v969 = *(v968 + 896);
            v970 = *(v968 + 904);
            __key = v964;
            SpaceForShields = bsearch(&__key, v969, v970, 0x18uLL, geo::codec::findLabelLanguageLocal);
            if (SpaceForShields)
            {
              v971 = *(SpaceForShields + 16);
            }

            else
            {
              v971 = 0;
            }

            *(*(*a3 + 1072) + 32 * v967 + 8) = v971;
          }

          v950 = v1207;
        }

        v952 += 248;
        v951 = *a3;
      }
    }

    if (v950 != *(v951 + 1080))
    {
      v27 = 5235;
      goto LABEL_261;
    }

    v935 = v9[3];
    v925 = 8 * v9[2];
  }

  v972 = v935 + 1;
  if (v935 + 1 > v925)
  {
    v27 = 5260;
    goto LABEL_261;
  }

  v973 = v9[1];
  v974 = *(v973 + (v935 >> 3));
  v9[3] = v972;
  if ((v974 >> (~v935 & 7)))
  {
    if (v935 + 7 > v925)
    {
      v27 = 5263;
      goto LABEL_261;
    }

    v975 = 0;
    v976 = 6;
    do
    {
      v977 = 8 - (v972 & 7);
      if (v976 < v977)
      {
        v977 = v976;
      }

      v975 = (*(v973 + (v972 >> 3)) >> (8 - (v972 & 7) - v977)) & ~(-1 << v977) | (v975 << v977);
      v972 += v977;
      v9[3] = v972;
      v976 -= v977;
    }

    while (v976);
    if (v972 + 5 > v925)
    {
      v27 = 5266;
      goto LABEL_261;
    }

    v978 = 0;
    v979 = (v975 + 1);
    v980 = 5;
    do
    {
      v981 = 8 - (v972 & 7);
      if (v980 < v981)
      {
        v981 = v980;
      }

      v978 = (*(v973 + (v972 >> 3)) >> (8 - (v972 & 7) - v981)) & ~(-1 << v981) | (v978 << v981);
      v972 += v981;
      v9[3] = v972;
      v980 -= v981;
    }

    while (v980);
    if (v972 + 6 > v925)
    {
      v27 = 5269;
      goto LABEL_261;
    }

    v982 = 0;
    v983 = (v978 + 1);
    v984 = 6;
    do
    {
      v985 = 8 - (v972 & 7);
      if (v984 < v985)
      {
        v985 = v984;
      }

      v982 = (*(v973 + (v972 >> 3)) >> (8 - (v972 & 7) - v985)) & ~(-1 << v985) | (v982 << v985);
      v972 += v985;
      v9[3] = v972;
      v984 -= v985;
    }

    while (v984);
    if (v972 + 5 > v925)
    {
      goto LABEL_1498;
    }

    v986 = 0;
    v987 = (v982 + 1);
    v988 = 5;
    do
    {
      v989 = 8 - (v972 & 7);
      if (v988 < v989)
      {
        v989 = v988;
      }

      v986 = (*(v973 + (v972 >> 3)) >> (8 - (v972 & 7) - v989)) & ~(-1 << v989) | (v986 << v989);
      v972 += v989;
      v9[3] = v972;
      v988 -= v989;
    }

    while (v988);
    v990 = (v986 + 1);
    if (v972 + v990 > v925)
    {
LABEL_1498:
      v27 = 5272;
      goto LABEL_261;
    }

    v991 = 0;
    if (v986 != -1)
    {
      do
      {
        v992 = 8 - (v972 & 7);
        if (v990 < v992)
        {
          v992 = v990;
        }

        v991 = (*(v973 + (v972 >> 3)) >> (8 - (v972 & 7) - v992)) & ~(-1 << v992) | (v991 << v992);
        v972 += v992;
        v9[3] = v972;
        v990 -= v992;
      }

      while (v990);
    }

    if (v972 + 5 > v925)
    {
      goto LABEL_1518;
    }

    v993 = 0;
    v994 = 5;
    do
    {
      v995 = 8 - (v972 & 7);
      if (v994 < v995)
      {
        v995 = v994;
      }

      v993 = (*(v973 + (v972 >> 3)) >> (8 - (v972 & 7) - v995)) & ~(-1 << v995) | (v993 << v995);
      v972 += v995;
      v9[3] = v972;
      v994 -= v995;
    }

    while (v994);
    v996 = (v993 + 1);
    if (v972 + v996 > v925)
    {
LABEL_1518:
      v27 = 5275;
      goto LABEL_261;
    }

    if (v993 == -1)
    {
      v997 = 0;
    }

    else
    {
      LODWORD(v997) = 0;
      do
      {
        v998 = 8 - (v972 & 7);
        if (v996 < v998)
        {
          v998 = v996;
        }

        v997 = (*(v973 + (v972 >> 3)) >> (8 - (v972 & 7) - v998)) & ~(-1 << v998) | (v997 << v998);
        v972 += v998;
        v9[3] = v972;
        v996 -= v998;
      }

      while (v996);
    }

    v999 = geo::codec::zone_mallocator::instance(SpaceForShields);
    SpaceForShields = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(v999, v997);
    v1000 = *a3;
    *(*a3 + 1760) = SpaceForShields;
    if (!SpaceForShields)
    {
      v27 = 5278;
      goto LABEL_261;
    }

    *(v1000 + 1768) = v997;
    v972 = v9[3];
    v925 = 8 * v9[2];
    if (v991)
    {
      v1001 = 0;
      v1002 = 0;
      v1003 = *a3;
      do
      {
        if (v972 + v983 > v925)
        {
          v27 = 5285;
          goto LABEL_261;
        }

        v1004 = 0;
        if (v983)
        {
          v1005 = v9[1];
          v1006 = v983;
          do
          {
            v1007 = 8 - (v972 & 7);
            if (v1006 < v1007)
            {
              v1007 = v1006;
            }

            v1004 = (*(v1005 + (v972 >> 3)) >> (8 - (v972 & 7) - v1007)) & ~(-1 << v1007) | (v1004 << v1007);
            v972 += v1007;
            v9[3] = v972;
            v1006 -= v1007;
          }

          while (v1006);
        }

        if (v972 + v987 > v925)
        {
          v27 = 5287;
          goto LABEL_261;
        }

        v1008 = 0;
        if (v987)
        {
          v1009 = v9[1];
          v1010 = v987;
          do
          {
            v1011 = 8 - (v972 & 7);
            if (v1010 < v1011)
            {
              v1011 = v1010;
            }

            v1008 = (*(v1009 + (v972 >> 3)) >> (8 - (v972 & 7) - v1011)) & ~(-1 << v1011) | (v1008 << v1011);
            v972 += v1011;
            v9[3] = v972;
            v1010 -= v1011;
          }

          while (v1010);
        }

        v1012 = *(v1003 + 1416);
        if (0x82FA0BE82FA0BE83 * ((*(v1003 + 1424) - v1012) >> 3) <= v1004)
        {
          v27 = 5288;
          goto LABEL_261;
        }

        SpaceForShields = v1012 + 344 * v1004;
        *(SpaceForShields + 328) = v1002;
        *(SpaceForShields + 336) = v1008;
        if (v1008)
        {
          SpaceForShields = v1002 + v1008;
          v1013 = *a3;
          do
          {
            v1014 = v972 + 1;
            if (v972 + 1 > v925)
            {
              v27 = 5294;
              goto LABEL_261;
            }

            v1015 = v9[1];
            v1016 = *(v1015 + (v972 >> 3));
            v9[3] = v1014;
            if ((v1016 >> (~v972 & 7)))
            {
              if (v1014 + v983 > v925)
              {
                v27 = 5297;
                goto LABEL_261;
              }

              v1017 = 0;
              if (v983)
              {
                v1018 = v983;
                do
                {
                  v1019 = 8 - (v1014 & 7);
                  if (v1018 < v1019)
                  {
                    v1019 = v1018;
                  }

                  v1017 = (*(v1015 + (v1014 >> 3)) >> (8 - (v1014 & 7) - v1019)) & ~(-1 << v1019) | (v1017 << v1019);
                  v1014 += v1019;
                  v9[3] = v1014;
                  v1018 -= v1019;
                }

                while (v1018);
              }

              v1020 = v1013[177];
              if (0x82FA0BE82FA0BE83 * ((v1013[178] - v1020) >> 3) <= v1017)
              {
                v27 = 5298;
                goto LABEL_261;
              }

              *(v1013[220] + 8 * v1002) = *(v1020 + 344 * v1017 + 40);
            }

            else
            {
              if (v1014 + v979 > v925)
              {
                v27 = 5301;
                goto LABEL_261;
              }

              v1021 = v1013[220];
              if (v979)
              {
                v1022 = 0;
                v1023 = v979;
                do
                {
                  v1024 = 8 - (v1014 & 7);
                  if (v1023 < v1024)
                  {
                    v1024 = v1023;
                  }

                  v1022 = (*(v1015 + (v1014 >> 3)) >> (8 - (v1014 & 7) - v1024)) & ~(-1 << v1024) | (v1022 << v1024);
                  v1014 += v1024;
                  v9[3] = v1014;
                  v1023 -= v1024;
                }

                while (v1023);
                *(v1021 + 8 * v1002) = v1022;
              }

              else
              {
                *(v1021 + 8 * v1002) = 0;
              }
            }

            v972 = v1014;
            ++v1002;
          }

          while (v1002 != SpaceForShields);
          v1002 = SpaceForShields;
        }

        ++v1001;
      }

      while (v1001 != v991);
    }
  }

  v1025 = v972 + 1;
  if (v972 + 1 > v925)
  {
    v27 = 5322;
    goto LABEL_261;
  }

  v1026 = v9[1];
  v1027 = *(v1026 + (v972 >> 3));
  v9[3] = v1025;
  if (((v1027 >> (~v972 & 7)) & 1) == 0)
  {
LABEL_1632:
    v1060 = v1025 + 1;
    if (v1025 + 1 > v925)
    {
      v27 = 5367;
      goto LABEL_261;
    }

    v1061 = v9[1];
    v1062 = *(v1061 + (v1025 >> 3));
    v9[3] = v1060;
    if ((v1062 >> (~v1025 & 7)))
    {
      v1063 = *(*a3 + 1416);
      v1064 = *(*a3 + 1424) - v1063;
      if (v1064)
      {
        v1065 = 0;
        v1066 = 0x82FA0BE82FA0BE83 * (v1064 >> 3);
        v1067 = (v1063 + 322);
        while (v925 != v1060)
        {
          v1068 = v1060 + 1;
          v1069 = *(v1061 + (v1060 >> 3));
          v9[3] = v1060 + 1;
          *v1067 = ((v1069 >> (~v1060 & 7)) & 1) == 0;
          ++v1065;
          v1067 += 344;
          ++v1060;
          if (v1065 >= v1066)
          {
            goto LABEL_1646;
          }
        }

        v27 = 5371;
        goto LABEL_261;
      }
    }

    v1068 = v1025 + 1;
LABEL_1646:
    v1070 = *(v9 + 16);
    if (v1070 >= 0x32)
    {
      v1071 = v1068 + 1;
      if (v1068 + 1 > v925)
      {
        v27 = 5404;
        goto LABEL_261;
      }

      v1072 = *(v1061 + (v1068 >> 3));
      v9[3] = v1071;
      if ((v1072 >> (~v1068 & 7)))
      {
        if (v1068 + 6 <= v925)
        {
          v1073 = 0;
          v1074 = 5;
          do
          {
            v1075 = 8 - (v1071 & 7);
            if (v1074 < v1075)
            {
              v1075 = v1074;
            }

            v1073 = (*(v1061 + (v1071 >> 3)) >> (8 - (v1071 & 7) - v1075)) & ~(-1 << v1075) | (v1073 << v1075);
            v1071 += v1075;
            v9[3] = v1071;
            v1074 -= v1075;
          }

          while (v1074);
          if (v1071 + 5 <= v925)
          {
            v1076 = 0;
            v1077 = (v1073 + 1);
            v1078 = 5;
            do
            {
              v1079 = 8 - (v1071 & 7);
              if (v1078 < v1079)
              {
                v1079 = v1078;
              }

              v1076 = (*(v1061 + (v1071 >> 3)) >> (8 - (v1071 & 7) - v1079)) & ~(-1 << v1079) | (v1076 << v1079);
              v1071 += v1079;
              v9[3] = v1071;
              v1078 -= v1079;
            }

            while (v1078);
            if (v1071 + 6 <= v925)
            {
              v1080 = 0;
              v1081 = (v1076 + 1);
              v1082 = 6;
              do
              {
                v1083 = 8 - (v1071 & 7);
                if (v1082 < v1083)
                {
                  v1083 = v1082;
                }

                v1080 = (*(v1061 + (v1071 >> 3)) >> (8 - (v1071 & 7) - v1083)) & ~(-1 << v1083) | (v1080 << v1083);
                v1071 += v1083;
                v9[3] = v1071;
                v1082 -= v1083;
              }

              while (v1082);
              if (v1071 + 5 > v925)
              {
                goto LABEL_1675;
              }

              v1084 = 0;
              v1085 = (v1080 + 1);
              v1086 = 5;
              do
              {
                v1087 = 8 - (v1071 & 7);
                if (v1086 < v1087)
                {
                  v1087 = v1086;
                }

                v1084 = (*(v1061 + (v1071 >> 3)) >> (8 - (v1071 & 7) - v1087)) & ~(-1 << v1087) | (v1084 << v1087);
                v1071 += v1087;
                v9[3] = v1071;
                v1086 -= v1087;
              }

              while (v1086);
              v1088 = (v1084 + 1);
              if (v1071 + v1088 <= v925)
              {
                if (v1084 == -1)
                {
                  v1089 = 0;
                }

                else
                {
                  LODWORD(v1089) = 0;
                  do
                  {
                    v1090 = 8 - (v1071 & 7);
                    if (v1088 < v1090)
                    {
                      v1090 = v1088;
                    }

                    v1089 = (*(v1061 + (v1071 >> 3)) >> (8 - (v1071 & 7) - v1090)) & ~(-1 << v1090) | (v1089 << v1090);
                    v1071 += v1090;
                    v9[3] = v1071;
                    v1088 -= v1090;
                  }

                  while (v1088);
                }

                *(*a3 + 1792) = v1089;
                if (v1071 + 5 > v925)
                {
                  goto LABEL_1689;
                }

                v1091 = 0;
                v1092 = 5;
                do
                {
                  v1093 = 8 - (v1071 & 7);
                  if (v1092 < v1093)
                  {
                    v1093 = v1092;
                  }

                  v1091 = (*(v1061 + (v1071 >> 3)) >> (8 - (v1071 & 7) - v1093)) & ~(-1 << v1093) | (v1091 << v1093);
                  v1071 += v1093;
                  v9[3] = v1071;
                  v1092 -= v1093;
                }

                while (v1092);
                v1094 = (v1091 + 1);
                if (v1071 + v1094 <= v925)
                {
                  if (v1091 == -1)
                  {
                    v1095 = 0;
                  }

                  else
                  {
                    LODWORD(v1095) = 0;
                    do
                    {
                      v1096 = 8 - (v1071 & 7);
                      if (v1094 < v1096)
                      {
                        v1096 = v1094;
                      }

                      v1095 = (*(v1061 + (v1071 >> 3)) >> (8 - (v1071 & 7) - v1096)) & ~(-1 << v1096) | (v1095 << v1096);
                      v1071 += v1096;
                      v9[3] = v1071;
                      v1094 -= v1096;
                    }

                    while (v1094);
                  }

                  v1097 = *a3;
                  *(v1097 + 1808) = v1095;
                  v1098 = *(v1097 + 1792);
                  v1099 = geo::codec::zone_mallocator::instance(SpaceForShields);
                  v1100 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long>(v1099, v1098);
                  v1101 = *a3;
                  *(v1101 + 1784) = v1100;
                  v1102 = *(v1101 + 1808);
                  v1103 = geo::codec::zone_mallocator::instance(v1100);
                  v1104 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(v1103, v1102);
                  v1105 = 0;
                  v1106 = 0;
                  v1107 = 0;
                  v1108 = *a3;
                  *(*a3 + 1800) = v1104;
                  v1109 = *a3;
LABEL_1698:
                  while (1)
                  {
                    SpaceForShields = 0xD37A6F4DE9BD37A7 * ((v1108[170] - v1108[169]) >> 3);
                    if (v1107 >= SpaceForShields)
                    {
                      break;
                    }

                    v1110 = v9[3];
                    v1111 = v1110 + 1;
                    v1112 = 8 * v9[2];
                    if (v1110 + 1 > v1112)
                    {
                      v27 = 5432;
                      goto LABEL_261;
                    }

                    v1113 = v9[1];
                    v1114 = *(v1113 + (v1110 >> 3));
                    v9[3] = v1111;
                    if ((v1114 >> (~v1110 & 7)))
                    {
                      if (v1111 + v1081 > v1112)
                      {
                        goto LABEL_1760;
                      }

                      if (v1081)
                      {
                        v1115 = 0;
                        v1116 = v1081;
                        do
                        {
                          v1117 = 8 - (v1111 & 7);
                          if (v1116 < v1117)
                          {
                            v1117 = v1116;
                          }

                          v1115 = (*(v1113 + (v1111 >> 3)) >> (8 - (v1111 & 7) - v1117)) & ~(-1 << v1117) | (v1115 << v1117);
                          v1111 += v1117;
                          v9[3] = v1111;
                          v1116 -= v1117;
                        }

                        while (v1116);
                        v1118 = (*(v1109 + 1352) + 184 * v1107);
                        v1118[15] = v1105;
                        v1118[19] = v1106;
                        if (v1115)
                        {
                          v1119 = 0;
                          v1120 = *a3;
                          while (1)
                          {
                            v1121 = v9[3];
                            v1122 = v1121 + 1;
                            v1123 = 8 * v9[2];
                            if (v1121 + 1 > v1123)
                            {
                              goto LABEL_1761;
                            }

                            v1124 = *(v1113 + (v1121 >> 3));
                            v9[3] = v1122;
                            if ((v1124 >> (~v1121 & 7)))
                            {
                              if (v1122 + v1077 > v1123)
                              {
LABEL_1762:
                                v27 = 5451;
                                goto LABEL_261;
                              }

                              v1125 = 0;
                              if (v1077)
                              {
                                v1126 = v1077;
                                do
                                {
                                  v1127 = 8 - (v1122 & 7);
                                  if (v1126 < v1127)
                                  {
                                    v1127 = v1126;
                                  }

                                  v1125 = (*(v1113 + (v1122 >> 3)) >> (8 - (v1122 & 7) - v1127)) & ~(-1 << v1127) | (v1125 << v1127);
                                  v1122 += v1127;
                                  v9[3] = v1122;
                                  v1126 -= v1127;
                                }

                                while (v1126);
                              }

                              if (v1105 >= v1120[224])
                              {
LABEL_1763:
                                v27 = 5452;
                                goto LABEL_261;
                              }

                              *(v1120[223] + 8 * v1105++) = v1125;
                              v1128 = (v1120[169] + 184 * v1107 + 128);
                            }

                            else
                            {
                              if (v1122 + v1085 > v1123)
                              {
LABEL_1764:
                                v27 = 5459;
                                goto LABEL_261;
                              }

                              v1129 = 0;
                              if (v1085)
                              {
                                v1130 = v1085;
                                do
                                {
                                  v1131 = 8 - (v1122 & 7);
                                  if (v1130 < v1131)
                                  {
                                    v1131 = v1130;
                                  }

                                  v1129 = (*(v1113 + (v1122 >> 3)) >> (8 - (v1122 & 7) - v1131)) & ~(-1 << v1131) | (v1129 << v1131);
                                  v1122 += v1131;
                                  v9[3] = v1122;
                                  v1130 -= v1131;
                                }

                                while (v1130);
                              }

                              if (v1106 >= v1120[226])
                              {
LABEL_1765:
                                v27 = 5460;
                                goto LABEL_261;
                              }

                              *(v1120[225] + 8 * v1106++) = v1129;
                              v1128 = (v1120[169] + 184 * v1107 + 160);
                            }

                            ++*v1128;
                            if (++v1119 == v1115)
                            {
                              v1111 = v9[3];
                              v1112 = 8 * v9[2];
                              break;
                            }
                          }
                        }

                        if (v1111 + v1081 > v1112)
                        {
                          goto LABEL_1760;
                        }

                        v1132 = 0;
                        v1133 = v1081;
                        do
                        {
                          v1134 = 8 - (v1111 & 7);
                          if (v1133 < v1134)
                          {
                            v1134 = v1133;
                          }

                          v1132 = (*(v1113 + (v1111 >> 3)) >> (8 - (v1111 & 7) - v1134)) & ~(-1 << v1134) | (v1132 << v1134);
                          v1111 += v1134;
                          v9[3] = v1111;
                          v1133 -= v1134;
                        }

                        while (v1133);
                        v1118[17] = v1105;
                        v1118[21] = v1106;
                        if (v1132)
                        {
                          v1135 = 0;
                          v1108 = *a3;
                          while (1)
                          {
                            v1136 = v9[3];
                            v1137 = v1136 + 1;
                            v1138 = 8 * v9[2];
                            if (v1136 + 1 > v1138)
                            {
                              break;
                            }

                            v1139 = *(v1113 + (v1136 >> 3));
                            v9[3] = v1137;
                            if ((v1139 >> (~v1136 & 7)))
                            {
                              if (v1137 + v1077 > v1138)
                              {
                                goto LABEL_1762;
                              }

                              v1140 = 0;
                              if (v1077)
                              {
                                v1141 = v1077;
                                do
                                {
                                  v1142 = 8 - (v1137 & 7);
                                  if (v1141 < v1142)
                                  {
                                    v1142 = v1141;
                                  }

                                  v1140 = (*(v1113 + (v1137 >> 3)) >> (8 - (v1137 & 7) - v1142)) & ~(-1 << v1142) | (v1140 << v1142);
                                  v1137 += v1142;
                                  v9[3] = v1137;
                                  v1141 -= v1142;
                                }

                                while (v1141);
                              }

                              if (v1105 >= v1108[224])
                              {
                                goto LABEL_1763;
                              }

                              *(v1108[223] + 8 * v1105++) = v1140;
                              v1143 = (v1108[169] + 184 * v1107 + 144);
                            }

                            else
                            {
                              if (v1137 + v1085 > v1138)
                              {
                                goto LABEL_1764;
                              }

                              v1144 = 0;
                              if (v1085)
                              {
                                v1145 = v1085;
                                do
                                {
                                  v1146 = 8 - (v1137 & 7);
                                  if (v1145 < v1146)
                                  {
                                    v1146 = v1145;
                                  }

                                  v1144 = (*(v1113 + (v1137 >> 3)) >> (8 - (v1137 & 7) - v1146)) & ~(-1 << v1146) | (v1144 << v1146);
                                  v1137 += v1146;
                                  v9[3] = v1137;
                                  v1145 -= v1146;
                                }

                                while (v1145);
                              }

                              if (v1106 >= v1108[226])
                              {
                                goto LABEL_1765;
                              }

                              *(v1108[225] + 8 * v1106++) = v1144;
                              v1143 = (v1108[169] + 184 * v1107 + 176);
                            }

                            ++*v1143;
                            if (++v1135 == v1132)
                            {
                              ++v1107;
                              goto LABEL_1698;
                            }
                          }

LABEL_1761:
                          v27 = 5447;
                          goto LABEL_261;
                        }

                        v1108 = v1109;
                        ++v1107;
                      }

                      else
                      {
                        v1147 = (*(v1109 + 1352) + 184 * v1107);
                        v1147[15] = v1105;
                        v1147[19] = v1106;
                        if (v1111 + v1081 > v1112)
                        {
LABEL_1760:
                          v27 = 5440;
                          goto LABEL_261;
                        }

                        v1147[17] = v1105;
                        v1147[21] = v1106;
                        v1108 = v1109;
                        ++v1107;
                      }
                    }

                    else
                    {
                      v1108 = v1109;
                      ++v1107;
                    }
                  }

                  if (v1105 == *(*a3 + 1792))
                  {
                    if (v1106 == *(*a3 + 1808))
                    {
                      v1070 = *(v9 + 16);
                      v1071 = v9[3];
                      goto LABEL_1769;
                    }

                    v27 = 5470;
                  }

                  else
                  {
                    v27 = 5469;
                  }
                }

                else
                {
LABEL_1689:
                  v27 = 5421;
                }
              }

              else
              {
LABEL_1675:
                v27 = 5417;
              }
            }

            else
            {
              v27 = 5414;
            }
          }

          else
          {
            v27 = 5411;
          }
        }

        else
        {
          v27 = 5408;
        }

        goto LABEL_261;
      }

LABEL_1769:
      if (v1070 < 0x40)
      {
        v1068 = v1071;
      }

      else
      {
        if (v1071 + 1 > 8 * v9[2])
        {
          v27 = 5479;
          goto LABEL_261;
        }

        v1148 = *(v9[1] + (v1071 >> 3));
        v9[3] = v1071 + 1;
        if ((v1148 >> (~v1071 & 7)))
        {
          v1149 = *(*a3 + 1400);
          v1150 = geo::codec::zone_mallocator::instance(SpaceForShields);
          v1151 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<float>(v1150, v1149);
          v1152 = *a3;
          *(*a3 + 1544) = v1151;
          if (!v1151)
          {
            v27 = 5482;
            goto LABEL_261;
          }

          v1153 = *(v1152 + 1400);
          v1228[0] = &unk_1EF7F2210;
          v1228[1] = a3;
          v1229 = v1228;
          geo::codec::decodeZoomRanks(v9 + 1, v1153, v1228);
          SpaceForShields = v1229;
          if (v1229 == v1228)
          {
            SpaceForShields = (*(*v1229 + 32))(v1229);
          }

          else if (v1229)
          {
            SpaceForShields = (*(*v1229 + 40))();
          }
        }

        v1068 = v9[3];
      }
    }

    v1154 = v9[6] + (v1068 >> 3);
    if ((v1068 & 7) != 0)
    {
      ++v1154;
    }

    v9[6] = v1154;
    *(v9 + 32) = 0;
    v17 = 1;
    if (*v9)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v972 + 6 > v925)
  {
    v27 = 5325;
    goto LABEL_261;
  }

  v1028 = 0;
  v1029 = 5;
  do
  {
    v1030 = 8 - (v1025 & 7);
    if (v1029 < v1030)
    {
      v1030 = v1029;
    }

    v1028 = (*(v1026 + (v1025 >> 3)) >> (8 - (v1025 & 7) - v1030)) & ~(-1 << v1030) | (v1028 << v1030);
    v1025 += v1030;
    v9[3] = v1025;
    v1029 -= v1030;
  }

  while (v1029);
  if (v1025 + 5 > v925)
  {
    goto LABEL_1588;
  }

  v1031 = 0;
  v1032 = (v1028 + 1);
  v1033 = 5;
  do
  {
    v1034 = 8 - (v1025 & 7);
    if (v1033 < v1034)
    {
      v1034 = v1033;
    }

    v1031 = (*(v1026 + (v1025 >> 3)) >> (8 - (v1025 & 7) - v1034)) & ~(-1 << v1034) | (v1031 << v1034);
    v1025 += v1034;
    v9[3] = v1025;
    v1033 -= v1034;
  }

  while (v1033);
  v1035 = (v1031 + 1);
  if (v1025 + v1035 > v925)
  {
LABEL_1588:
    v27 = 5328;
    goto LABEL_261;
  }

  LODWORD(v1036) = 0;
  if (v1031 == -1)
  {
    v1038 = *a3;
    *(*a3 + 1616) = 0;
  }

  else
  {
    do
    {
      v1037 = 8 - (v1025 & 7);
      if (v1035 < v1037)
      {
        v1037 = v1035;
      }

      v1036 = (*(v1026 + (v1025 >> 3)) >> (8 - (v1025 & 7) - v1037)) & ~(-1 << v1037) | (v1036 << v1037);
      v1025 += v1037;
      v9[3] = v1025;
      v1035 -= v1037;
    }

    while (v1035);
    v1038 = *a3;
    *(*a3 + 1616) = v1036;
    if (v1036)
    {
      v1039 = geo::codec::zone_mallocator::instance(SpaceForShields);
      SpaceForShields = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsPBTransitLineKey>(v1039, v1036);
      v1038 = *a3;
      *(*a3 + 1600) = SpaceForShields;
      if (!SpaceForShields)
      {
        v27 = 5333;
        goto LABEL_261;
      }
    }
  }

  v1040 = v1038[177];
  if (v1038[178] == v1040)
  {
    v1042 = 0;
LABEL_1630:
    if (v1042 != v1036)
    {
      v27 = 5355;
      goto LABEL_261;
    }

    v1025 = v9[3];
    v925 = 8 * v9[2];
    goto LABEL_1632;
  }

  v1041 = 0;
  v1042 = 0;
  v1043 = v1038[200];
  SpaceForShields = v9[3];
  v1044 = 8 * v9[2];
  v1045 = *a3;
  while (1)
  {
    v1046 = SpaceForShields + 1;
    if (SpaceForShields + 1 > v1044)
    {
      v27 = 5342;
      goto LABEL_261;
    }

    v1047 = v9[1];
    v1048 = *(v1047 + (SpaceForShields >> 3));
    v9[3] = v1046;
    if ((v1048 >> (~SpaceForShields & 7)))
    {
      if (v1046 + v1032 > v1044)
      {
        v27 = 5344;
        goto LABEL_261;
      }

      if (!v1032)
      {
        if (v1042 > v1036)
        {
          goto LABEL_1628;
        }

        *(v1040 + 288) = v1042;
        *(v1040 + 276) = 0;
        goto LABEL_1626;
      }

      v1049 = 0;
      v1050 = v1032;
      do
      {
        v1051 = 8 - (v1046 & 7);
        if (v1050 < v1051)
        {
          v1051 = v1050;
        }

        v1049 = (*(v1047 + (v1046 >> 3)) >> (8 - (v1046 & 7) - v1051)) & ~(-1 << v1051) | (v1049 << v1051);
        v1046 += v1051;
        v9[3] = v1046;
        v1050 -= v1051;
      }

      while (v1050);
      v1052 = v1049 + v1042;
      if (v1049 + v1042 > v1036)
      {
LABEL_1628:
        v27 = 5345;
        goto LABEL_261;
      }

      *(v1040 + 288) = v1042;
      *(v1040 + 276) = v1049;
      if (v1049)
      {
        break;
      }
    }

LABEL_1626:
    ++v1041;
    v1040 += 344;
    SpaceForShields = v1046;
    if (v1041 >= 0x82FA0BE82FA0BE83 * ((*(v1045 + 1424) - *(v1045 + 1416)) >> 3))
    {
      goto LABEL_1630;
    }
  }

  v1053 = 0;
  while (1)
  {
    if (v1046 + v1213 > v1044)
    {
      v27 = 5350;
      goto LABEL_261;
    }

    v1054 = v1213;
    if (v1213)
    {
      v1054 = 0;
      v1055 = v1213;
      do
      {
        v1056 = 8 - (v1046 & 7);
        if (v1055 < v1056)
        {
          v1056 = v1055;
        }

        v1054 = (*(v1047 + (v1046 >> 3)) >> (8 - (v1046 & 7) - v1056)) & ~(-1 << v1056) | (v1054 << v1056);
        v1046 += v1056;
        v9[3] = v1046;
        v1055 -= v1056;
      }

      while (v1055);
    }

    *v1043 = v1054;
    if (v1046 + v1222 > v1044)
    {
      break;
    }

    v1057 = v1222;
    if (v1222)
    {
      v1057 = 0;
      v1058 = v1222;
      do
      {
        v1059 = 8 - (v1046 & 7);
        if (v1058 < v1059)
        {
          v1059 = v1058;
        }

        v1057 = (*(v1047 + (v1046 >> 3)) >> (8 - (v1046 & 7) - v1059)) & ~(-1 << v1059) | (v1057 << v1059);
        v1046 += v1059;
        v9[3] = v1046;
        v1058 -= v1059;
      }

      while (v1058);
    }

    v1043[1] = v1057;
    ++v1053;
    v1043 += 2;
    if (v1053 == v1049)
    {
      v1042 = v1052;
      goto LABEL_1626;
    }
  }

  v27 = 5351;
LABEL_261:
  v26 = *MEMORY[0x1E69E9848];
LABEL_21:
  SpaceForShields = fprintf(v26, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v27);
  v17 = 0;
  if (*v9)
  {
LABEL_22:
    v29 = v9[5];
    v30 = geo::codec::zone_mallocator::instance(SpaceForShields);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v30, v29);
  }

LABEL_23:
  v31 = geo::codec::zone_mallocator::instance(SpaceForShields);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v31, v9);
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v1227 = 129;
  __p[0] = &v1227;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v11 + 1920), &v1227, __p) + 4) = ((rep - v12.__d_.__rep_) / 1000) * 0.001;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return v17;
}