uint64_t geom::anonymous namespace::msdb<float,0>(float a1, float a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (a1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a1;
  }

  if (a2 == 0.0)
  {
    a2 = a1;
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  if ((LODWORD(v4) ^ LODWORD(a2)) < 0)
  {
    return 128;
  }

  if (v4 == 0.0)
  {
    return (LODWORD(a2) >> 23) - 127;
  }

  v5 = (LODWORD(v4) >> 23);
  v6 = (LODWORD(a2) >> 23);
  if (v5 > v6)
  {
    v6 = (LODWORD(v4) >> 23);
  }

  v7 = v6 - 127;
  v8 = v5 - __clz((LODWORD(v4) ^ LODWORD(a2)) & 0x7FFFFF) - 119;
  if (v5 == (LODWORD(a2) >> 23))
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

uint64_t geom::anonymous namespace::msdb<double,0>(double a1, double a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (a1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a1;
  }

  if (a2 == 0.0)
  {
    a2 = a1;
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  if (((*&v4 ^ *&a2) & 0x8000000000000000) != 0)
  {
    return 1024;
  }

  if (v4 == 0.0)
  {
    return ((*&a2 >> 52) & 0x7FF) - 1023;
  }

  v5 = (*&v4 >> 52) & 0x7FFLL;
  v6 = (*&a2 >> 52) & 0x7FFLL;
  if (v5 <= v6)
  {
    v7 = (*&a2 >> 52) & 0x7FF;
  }

  else
  {
    v7 = (*&v4 >> 52) & 0x7FF;
  }

  v8 = v7 - 1023;
  v9 = v5 - __clz((*&v4 ^ *&a2) & 0xFFFFFFFFFFFFFLL) - 1012;
  if (v5 == v6)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

void geom::partitioned_set::split(const void **a1, int *a2, unsigned int a3, std::vector<unsigned int> *this, uint64_t a5)
{
  std::vector<float>::resize(this, 0);
  v10 = a3;
  std::vector<unsigned int>::resize(this, a3, &geom::partitioned_set::null_index);
  v11 = *a2;
  v12 = a1[9];
  v13 = (a1 + 9);
  if (v11 < (a1[10] - v12) >> 3)
  {
    v14 = *(v12 + 8 * v11);
    if (v14 != -1)
    {
      if (!a3)
      {
        goto LABEL_10;
      }

      v15 = 0;
      v16 = 4 * v10;
      do
      {
        v17 = a1[13];
        if (a1[12] == v17)
        {
          v18 = (a1[10] - a1[9]) >> 3;
          v30 = -1;
          _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_((a1 + 9), &v30);
        }

        else
        {
          LODWORD(v18) = *(v17 - 4);
          a1[13] = (v17 - 4);
        }

        this->__begin_[v15 / 4] = v18;
        v15 += 4;
      }

      while (v16 != v15);
      v19 = *v13;
      v14 = *(*v13 + 8 * *a2);
      if (v14 == -1)
      {
        begin = this->__begin_;
      }

      else
      {
LABEL_10:
        v20 = *a1;
        do
        {
          v21 = v20[v14];
          v22 = std::function<unsigned int ()>::operator()(a5, v14);
          begin = this->__begin_;
          v19 = *v13;
          v24 = (*v13 + 8 * this->__begin_[v22]);
          if (*v24 == -1)
          {
            *v24 = v14;
            v24[1] = v14;
            *(a1[3] + v14) = -1;
            v20 = *a1;
          }

          else
          {
            v20 = *a1;
            *(*a1 + v24[1]) = v14;
            *(a1[3] + v14) = v24[1];
            v24[1] = v14;
          }

          v20[v14] = -1;
          v14 = v21;
        }

        while (v21 != -1);
      }

      end = this->__end_;
      if (begin != end)
      {
        do
        {
          v26 = *begin;
          v27 = *v13;
          v28 = *(*v13 + 8 * v26);
          if (v28 == -1)
          {
            std::vector<unsigned int>::push_back[abi:nn200100](a1 + 12, begin);
            *begin = -1;
          }

          else
          {
            v29 = a1[6];
            *(v29 + 4 * v28) = v26;
            *(v29 + 4 * *(v27 + 8 * *begin + 4)) = *begin;
          }

          ++begin;
        }

        while (begin != end);
        v19 = *v13;
      }

      *(v19 + 8 * *a2) = -1;
      *(v19 + 8 * *a2 + 4) = -1;
      std::vector<unsigned int>::push_back[abi:nn200100](a1 + 12, a2);
    }
  }
}

uint64_t std::function<unsigned int ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v7 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v7);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::partitioned_set::merge(v4, v5, v6);
}

uint64_t geom::partitioned_set::merge(uint64_t a1, int *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 4 * a3;
  v6 = 0xFFFFFFFFLL;
  v7 = 0xFFFFFFFFLL;
  v8 = 0xFFFFFFFFLL;
  do
  {
    v9 = *a2;
    v10 = *(a1 + 72);
    if (v9 < (*(a1 + 80) - v10) >> 3)
    {
      v11 = (v10 + 8 * v9);
      v12 = *v11;
      if (v12 != -1)
      {
        if (v8 == -1)
        {
          v8 = v9;
        }

        else
        {
          v8 = v8;
        }

        if (v6 != -1)
        {
          *(*a1 + 4 * v7) = v12;
          *(*(a1 + 24) + 4 * *v11) = v7;
          LODWORD(v9) = *a2;
          v12 = v6;
        }

        v7 = v11[1];
        if (v8 != v9)
        {
          *v11 = -1;
          std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 96), a2);
        }

        v6 = v12;
      }
    }

    ++a2;
    v5 -= 4;
  }

  while (v5);
  result = 0xFFFFFFFFLL;
  if (v7 != 0xFFFFFFFFLL)
  {
    *(*a1 + 4 * v7) = -1;
    *(*(a1 + 24) + 4 * v6) = -1;
    v14 = *(a1 + 48);
    *(v14 + 4 * v6) = v8;
    *(v14 + 4 * v7) = v8;
    v15 = (*(a1 + 72) + 8 * v8);
    *v15 = v6;
    v15[1] = v7;
    return v8;
  }

  return result;
}

uint64_t geom::partitioned_set::extract(geom::partitioned_set *this, unsigned int a2)
{
  v4 = *(*(this + 3) + 4 * a2);
  v5 = *(*this + 4 * a2);
  if (v4 == -1 && v5 == -1)
  {
    return *(*(this + 6) + 4 * a2);
  }

  v7 = *(this + 13);
  if (*(this + 12) == v7)
  {
    v8 = (*(this + 10) - *(this + 9)) >> 3;
    LODWORD(v17) = a2;
    HIDWORD(v17) = a2;
    _ZNSt3__16vectorIZNK4geom3bvhIfLh2EE13closest_pointINS_8functionIFDv2_fjS6_EEEEES6_T_S6_RfRjE5stateNS_9allocatorISC_EEE9push_backB8nn200100EOSC_(this + 72, &v17);
  }

  else
  {
    v8 = *(v7 - 4);
    *(this + 13) = v7 - 4;
    *(*(this + 9) + 8 * v8) = vdup_n_s32(a2);
  }

  if (v4 == -1)
  {
    v11 = *(this + 6);
    v12 = *(v11 + 4 * a2);
    v9 = *this;
    *(v11 + 4 * *(*this + 4 * a2)) = v12;
    v10 = *(v9 + 4 * a2);
    *(*(this + 9) + 8 * v12) = v10;
  }

  else
  {
    v9 = *this;
    v10 = *(*this + 4 * a2);
    *(*this + 4 * *(*(this + 3) + 4 * a2)) = v10;
  }

  if (v5 == -1)
  {
    v14 = *(this + 6);
    v15 = *(v14 + 4 * a2);
    v13 = *(this + 3);
    *(v14 + 4 * *(v13 + 4 * a2)) = v15;
    *(*(this + 9) + 8 * v15 + 4) = *(v13 + 4 * a2);
  }

  else
  {
    v13 = *(this + 3);
    *(v13 + 4 * v10) = *(v13 + 4 * a2);
    v14 = *(this + 6);
  }

  *(v9 + 4 * a2) = -1;
  *(v13 + 4 * a2) = -1;
  *(v14 + 4 * a2) = v8;
  return v8;
}

void geom::partitioned_set::extract(geom::partitioned_set *this, unsigned int a2, unsigned int a3)
{
  v6 = *(this + 3);
  v7 = *(v6 + 4 * a2);
  v8 = *this;
  v9 = *(*this + 4 * a2);
  if (v7 == -1 && v9 == -1)
  {
    v18 = *(*(this + 6) + 4 * a2);
    if (v18 == a3)
    {
      return;
    }

    std::vector<unsigned int>::push_back[abi:nn200100](this + 12, &v18);
    v11 = *(this + 9);
    *(v11 + 8 * v18 + 4) = -1;
    *(v11 + 8 * v18) = -1;
    v6 = *(this + 3);
    v8 = *this;
  }

  else
  {
    if (v7 == -1)
    {
      v12 = *(this + 6);
      v13 = *(v12 + 4 * a2);
      *(v12 + 4 * v9) = v13;
      *(*(this + 9) + 8 * v13) = *(v8 + 4 * a2);
    }

    else
    {
      *(v8 + 4 * v7) = v9;
    }

    if (v9 == -1)
    {
      v14 = *(this + 6);
      v15 = *(v14 + 4 * a2);
      *(v14 + 4 * *(v6 + 4 * a2)) = v15;
      v11 = *(this + 9);
      *(v11 + 8 * v15 + 4) = *(v6 + 4 * a2);
    }

    else
    {
      *(v6 + 4 * *(v8 + 4 * a2)) = *(v6 + 4 * a2);
      v11 = *(this + 9);
    }

    *(v8 + 4 * a2) = -1;
  }

  v16 = v11 + 8 * a3;
  v17 = *(v16 + 4);
  *(v6 + 4 * a2) = v17;
  *(v8 + 4 * v17) = a2;
  *(*(this + 6) + 4 * a2) = a3;
  *(v16 + 4) = a2;
}

void geom::acd<float>::impl::split_clusters_automatically(float32x4_t *a1, unsigned int *a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = a1[8].i64[0];
  if (v4)
  {
    do
    {
      std::vector<unsigned int>::push_back[abi:nn200100](&v23, v4 + 4);
      v4 = *v4;
    }

    while (v4);
    v4 = v23;
    v5 = v24;
  }

  else
  {
    v5 = 0;
  }

  v20 = a1;
  v6 = (v5 - v4) >> 2;
  if (v6 < 2)
  {
    goto LABEL_9;
  }

  v7 = (v6 - 2) >> 1;
  v8 = v4 + v7;
  v9 = v7 + 1;
  do
  {
    std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<float>::impl::split_clusters_automatically(geom::acd<float>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(v4, &v20, v6, v8--);
    --v9;
  }

  while (v9);
  while (1)
  {
    v4 = v23;
    v5 = v24;
LABEL_9:
    if (v4 == v5 || a1[8].i64[1] >= *a2)
    {
      break;
    }

    v10 = *v4;
    v20 = a1;
    v11 = (v5 - v4) >> 2;
    if (v11 >= 2)
    {
      v12 = *v4;
      v13 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<float>::impl::split_clusters_automatically(geom::acd<float>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(v4, &v20, v11);
      v14 = (v5 - 4);
      if ((v5 - 4) == v13)
      {
        *v13 = v12;
      }

      else
      {
        *v13 = *v14;
        *v14 = v12;
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<float>::impl::split_clusters_automatically(geom::acd<float>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(v4, (v13 + 1), &v20, ((v13 + 1) - v4) >> 2);
      }
    }

    v24 = (v24 - 4);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    geom::acd<float>::impl::cut_to_reduce_concavity(a1, v10, &v20, a2);
    v15 = v20;
    v16 = v21;
    if ((v21 - v20) < 5 || v20 == v21)
    {
      if (v20)
      {
        goto LABEL_24;
      }
    }

    else
    {
      do
      {
        v18 = v15->i32[0];
        v15 = (v15 + 4);
        v19 = v18;
        std::vector<unsigned int>::push_back[abi:nn200100](&v23, &v19);
        v26 = a1;
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<float>::impl::split_clusters_automatically(geom::acd<float>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(v23, v24, &v26, (v24 - v23) >> 2);
      }

      while (v15 != v16);
      v15 = v20;
      if (v20)
      {
LABEL_24:
        v21 = v15;
        operator delete(v15);
      }
    }
  }

  if (v4)
  {
    v24 = v4;
    operator delete(v4);
  }
}

void geom::acd<float>::impl::cut_to_reduce_concavity(float32x4_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v155 = *MEMORY[0x277D85DE8];
  v81 = a2;
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(a1[7].i64, &v81);
  v8 = *(v7[3] + 24);
  *(a3 + 8) = *a3;
  std::vector<unsigned int>::push_back[abi:nn200100](a3, &v81);
  if (v8 > 0.00000011921)
  {
    LOBYTE(v136) = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v79 = 0;
    v78 = 0;
    v80 = 0;
    geom::acd<float>::impl::find_best_cut_plane(a1, v7[3], 2u, 4, v135, &v78);
    if (v152 == 1)
    {
      v10 = v7[3];
      v9.n128_f32[0] = ((*(v10 + 24) - *(&v137 + 2)) - v148) / *(v10 + 24);
      if (v9.n128_f32[0] >= *(a4 + 4))
      {
        geom::cluster<float>::deinit(v10, &a1[14]);
        v26 = v7[3];
        v27 = v136;
        v136 = 0uLL;
        v28 = *(v26 + 8);
        *v26 = v27;
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v28);
        }

        v29 = *(v26 + 88);
        *(v26 + 16) = v137;
        v30 = v138;
        v31 = v139;
        v32 = v140;
        *(v26 + 80) = v141;
        *(v26 + 64) = v32;
        *(v26 + 48) = v31;
        *(v26 + 32) = v30;
        if (v29)
        {
          *(v26 + 96) = v29;
          operator delete(v29);
          *(v26 + 88) = 0;
          *(v26 + 96) = 0;
          *(v26 + 104) = 0;
        }

        *(v26 + 88) = v142;
        *(v26 + 104) = v143;
        v142 = 0uLL;
        v143 = 0;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate((v26 + 112));
        *(v26 + 112) = v144;
        *(v26 + 128) = v145;
        v145 = 0;
        v144 = 0uLL;
        *(v26 + 136) = v146;
        operator new();
      }

      if (*(a4 + 12) == 1)
      {
        v40 = a4;
        std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](&v78, v135, v9);
        v69 = 0uLL;
        *&v70 = vneg_f32(0x3F0000003FLL);
        DWORD2(v70) = 2143289344;
        v11.i64[0] = 0x7F0000007FLL;
        v11.i64[1] = 0x7F0000007FLL;
        v71 = vnegq_f32(v11);
        v72 = v11;
        __p = 0u;
        memset(v76, 0, sizeof(v76));
        v77 = 0;
        v60 = 0uLL;
        *&v61 = v70;
        DWORD2(v61) = 2143289344;
        v62 = v71;
        v63 = v11;
        v66 = 0u;
        memset(v67, 0, sizeof(v67));
        v68 = 0;
        v51 = 0uLL;
        *&v52 = v70;
        DWORD2(v52) = 2143289344;
        v53 = v71;
        v54 = v11;
        v57 = 0u;
        memset(v58, 0, sizeof(v58));
        v59 = 0;
        v42 = 0uLL;
        *&v43 = v70;
        DWORD2(v43) = 2143289344;
        v44 = v71;
        v45 = v11;
        *v48 = 0u;
        memset(v49, 0, sizeof(v49));
        v50 = 0;
        memset(v41, 0, sizeof(v41));
        v12 = v78;
        v13 = v79;
        if (v78 != v79)
        {
          v14 = 0.0;
          while (1)
          {
            v15 = &v12[1];
            LOBYTE(v110) = 0;
            v16 = &v12[10];
            v132 = 0;
            v133 = 0;
            v134 = 0;
            LOBYTE(v84) = 0;
            v106 = 0;
            v107 = 0;
            v108 = 0;
            geom::acd<float>::impl::find_best_cut_plane(a1, v12 + 1, 0, 0, v109, v41);
            geom::acd<float>::impl::find_best_cut_plane(a1, v12 + 10, 0, 0, v83, v41);
            if (v132)
            {
              if (v106)
              {
                v17 = ((((*(v7[3] + 24) - *(&v111 + 2)) - *(&v122 + 2)) - *(&v85 + 2)) - *(&v96 + 2)) / *(v7[3] + 24);
                if (v17 <= v14)
                {
                  geom::cluster<float>::deinit(&v110, &a1[14]);
                  geom::cluster<float>::deinit(&v121, &a1[14]);
                  geom::cluster<float>::deinit(&v84, &a1[14]);
                  geom::cluster<float>::deinit(&v95, &a1[14]);
                }

                else
                {
                  geom::cluster<float>::deinit(&v69, &a1[14]);
                  geom::cluster<float>::deinit(&v60, &a1[14]);
                  geom::cluster<float>::deinit(&v51, &a1[14]);
                  geom::cluster<float>::deinit(&v42, &a1[14]);
                  v18 = v110;
                  v110 = 0uLL;
                  v19 = *(&v69 + 1);
                  v69 = v18;
                  if (v19)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
                  }

                  v72 = v113;
                  v73 = v114;
                  v74 = v115;
                  v70 = v111;
                  v71 = v112;
                  if (__p)
                  {
                    *(&__p + 1) = __p;
                    operator delete(__p);
                  }

                  __p = v116;
                  v76[0] = v117;
                  v117 = 0;
                  v116 = 0uLL;
                  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(&v76[1]);
                  *&v76[1] = v118;
                  v76[3] = v119;
                  v119 = 0;
                  v118 = 0uLL;
                  v77 = v120;
                  v20 = v121;
                  v121 = 0uLL;
                  v21 = *(&v60 + 1);
                  v60 = v20;
                  if (v21)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
                  }

                  v63 = v124;
                  v64 = v125;
                  v65 = v126;
                  v61 = v122;
                  v62 = v123;
                  if (v66)
                  {
                    *(&v66 + 1) = v66;
                    operator delete(v66);
                  }

                  v66 = v127;
                  v67[0] = v128;
                  v128 = 0;
                  v127 = 0uLL;
                  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(&v67[1]);
                  *&v67[1] = v129;
                  v67[3] = v130;
                  v130 = 0;
                  v129 = 0uLL;
                  v68 = v131;
                  v22 = v84;
                  v84 = 0uLL;
                  v23 = *(&v51 + 1);
                  v51 = v22;
                  if (v23)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
                  }

                  v54 = v87;
                  v55 = v88;
                  v56 = v89;
                  v52 = v85;
                  v53 = v86;
                  if (v57)
                  {
                    *(&v57 + 1) = v57;
                    operator delete(v57);
                  }

                  v57 = v90;
                  v58[0] = v91;
                  v91 = 0;
                  v90 = 0uLL;
                  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(&v58[1]);
                  *&v58[1] = v92;
                  v58[3] = v93;
                  v93 = 0;
                  v92 = 0uLL;
                  v59 = v94;
                  v24 = v95;
                  v95 = 0uLL;
                  v25 = *(&v42 + 1);
                  v42 = v24;
                  if (v25)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
                  }

                  v45 = v98;
                  v46 = v99;
                  v47 = v100;
                  v43 = v96;
                  v44 = v97;
                  if (v48[0])
                  {
                    v48[1] = v48[0];
                    operator delete(v48[0]);
                  }

                  *v48 = v101;
                  v49[0] = v102;
                  v102 = 0;
                  v101 = 0uLL;
                  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(&v49[1]);
                  *&v49[1] = v103;
                  v49[3] = v104;
                  v104 = 0;
                  v103 = 0uLL;
                  v50 = v105;
                  v14 = v17;
                }
              }

              else
              {
                v15 = &v110;
                v16 = &v121;
              }
            }

            else
            {
              v16 = &v95;
              v15 = &v84;
              if ((v106 & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            geom::cluster<float>::deinit(v15, &a1[14]);
            geom::cluster<float>::deinit(v16, &a1[14]);
LABEL_32:
            if (v106 == 1)
            {
              v82 = &v103;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v82);
              if (v101)
              {
                *(&v101 + 1) = v101;
                operator delete(v101);
              }

              if (*(&v95 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v95 + 1));
              }

              v82 = &v92;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v82);
              if (v90)
              {
                *(&v90 + 1) = v90;
                operator delete(v90);
              }

              if (*(&v84 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v84 + 1));
              }
            }

            if (v132 == 1)
            {
              v83[0] = &v129;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v83);
              if (v127)
              {
                *(&v127 + 1) = v127;
                operator delete(v127);
              }

              if (*(&v121 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v121 + 1));
              }

              v83[0] = &v118;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v83);
              if (v116)
              {
                *(&v116 + 1) = v116;
                operator delete(v116);
              }

              if (*(&v110 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v110 + 1));
              }
            }

            v12 += 21;
            if (v12 == v13)
            {
              goto LABEL_58;
            }
          }
        }

        v14 = 0.0;
LABEL_58:
        if (v14 >= *(v40 + 4))
        {
          geom::cluster<float>::deinit(v7[3], &a1[14]);
          v33 = v7[3];
          v34 = v69;
          v69 = 0uLL;
          v35 = *(v33 + 8);
          *v33 = v34;
          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v35);
          }

          v36 = *(v33 + 88);
          *(v33 + 16) = v70;
          v37 = v71;
          v38 = v72;
          v39 = v73;
          *(v33 + 80) = v74;
          *(v33 + 64) = v39;
          *(v33 + 48) = v38;
          *(v33 + 32) = v37;
          if (v36)
          {
            *(v33 + 96) = v36;
            operator delete(v36);
            *(v33 + 88) = 0;
            *(v33 + 96) = 0;
            *(v33 + 104) = 0;
          }

          *(v33 + 88) = __p;
          *(v33 + 104) = v76[0];
          __p = 0uLL;
          v76[0] = 0;
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate((v33 + 112));
          *(v33 + 112) = *&v76[1];
          *(v33 + 128) = v76[3];
          memset(&v76[1], 0, 24);
          *(v33 + 136) = v77;
          operator new();
        }

        v109[0] = v41;
        std::vector<geom::cut_plane_search_candidate<float>>::__destroy_vector::operator()[abi:nn200100](v109);
        v109[0] = &v49[1];
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v109);
        if (v48[0])
        {
          v48[1] = v48[0];
          operator delete(v48[0]);
        }

        if (*(&v42 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v42 + 1));
        }

        v109[0] = &v58[1];
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v109);
        if (v57)
        {
          *(&v57 + 1) = v57;
          operator delete(v57);
        }

        if (*(&v51 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v51 + 1));
        }

        v109[0] = &v67[1];
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v109);
        if (v66)
        {
          *(&v66 + 1) = v66;
          operator delete(v66);
        }

        if (*(&v60 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v60 + 1));
        }

        v109[0] = &v76[1];
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v109);
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        if (*(&v69 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v69 + 1));
        }
      }
    }

    v109[0] = &v78;
    std::vector<geom::cut_plane_search_candidate<float>>::__destroy_vector::operator()[abi:nn200100](v109);
    if (v152 == 1)
    {
      v109[0] = &v151;
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v109);
      if (v149)
      {
        v150 = v149;
        operator delete(v149);
      }

      if (v147)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v147);
      }

      v109[0] = &v144;
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v109);
      if (v142)
      {
        *(&v142 + 1) = v142;
        operator delete(v142);
      }

      if (*(&v136 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v136 + 1));
      }
    }
  }
}

float geom::acd<float>::impl::cut_plane_cost(float *a1, float *a2, uint64_t a3, uint64_t a4)
{
  v22 = *(a4 + 24);
  v23 = *(a3 + 24);
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a3;
  v7 = *(a3 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *a4;
  v8 = *(a4 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v6[1];
  v20 = *v6;
  v21 = a1[84];
  v11 = v9[1];
  v19 = *v9;
  v12 = *(v4 + 4);
  v13 = a1[85];
  v14 = *(a3 + 20);
  v15 = *(a4 + 20);
  v16 = a2[5];
  v17 = a1[86];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return (v23 + v22) * (((((v21 * vabds_f32(v20, v19)) + (((v10 + v11) - v12) * v13)) + (((v14 + v15) - v16) * v17)) * 0.01) + 1.0);
}

void geom::acd<float>::impl::find_best_cut_plane(float32x4_t *a1, float32x4_t *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v12 = *(a1[17].i64[1] + 4 * a3);
  __p = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  if (v12)
  {
    for (i = 0; i < v12; v21 = i)
    {
      v14 = a1[16].i64[0];
      v15 = *(v14 + 16 * i);
      if (COERCE_FLOAT(*(v14 + 16 * i + 8)) >= 0.00000011921 || *&v15 > -0.00000011921 && (*&v15 < 0.00000011921 ? (v16 = *(&v15 + 1) > -0.00000011921) : (v16 = 1), v16))
      {
        std::vector<unsigned int>::push_back[abi:nn200100](&__p, &v21);
        i = v21;
      }

      ++i;
    }

    v17 = __p;
    v18 = v23;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  geom::acd<float>::impl::search_cut_planes_with_normals(a1, v17, (v18 - v17) >> 2, a2, v8, a5, a6);
  if (*(a5 + 304) == 1)
  {
    v19 = a3 + 1;
    if (v19 < ((a1[18].i64[0] - a1[17].i64[1]) >> 2))
    {
      v20 = 208 * v19;
      do
      {
        v23 = __p;
        geom::triangle_mesh_half_edge_connectivity::get_adjacent_vertices_to_vertex((a1[19].i64[0] + v20), *a5, &__p);
        geom::acd<float>::impl::search_cut_planes_with_normals(a1, __p, (v23 - __p) >> 2, a2, v8, a5, a6);
        ++v19;
        v20 += 208;
      }

      while (v19 < ((a1[18].i64[0] - a1[17].i64[1]) >> 2));
    }
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }
}

uint64_t std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2, __n128 a3)
{
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 16))
  {
    result = std::vector<geom::cut_plane_search_candidate<float>>::__emplace_back_slow_path<geom::cut_plane_search_candidate<float>>(a1, a2, a3);
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    *(v5 + 16) = 0;
    *(v5 + 304) = 0;
    if (*(a2 + 304) == 1)
    {
      std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>>(v5 + 16, (a2 + 2));
    }

    v7 = a2[40];
    *(v5 + 328) = *(a2 + 82);
    *(v5 + 320) = v7;
    result = v5 + 336;
  }

  *(a1 + 8) = result;
  return result;
}

void geom::acd<float>::impl::search_cut_planes_with_normals(float32x4_t *a1, unsigned int *a2, uint64_t a3, float32x4_t *a4, int a5, uint64_t a6, uint64_t a7)
{
  v88 = *MEMORY[0x277D85DE8];
  v58 = a4[3];
  v60 = a4[2];
  v7 = vcgtq_f32(v60, v58);
  v7.i32[3] = v7.i32[2];
  if ((vmaxvq_u32(v7) & 0x80000000) != 0)
  {
    return;
  }

  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v66[0] = a1;
  v66[1] = &v69;
  v66[2] = a7;
  v66[3] = &v68;
  v67 = a5;
  if (a3)
  {
    v12 = v60;
    v12.i32[3] = 0;
    v61 = v12;
    v13 = v58;
    v13.i32[3] = 0;
    v59 = v13;
    v14 = 4 * a3;
    __asm { FMOV            V0.4S, #1.0 }

    v57 = _Q0;
    do
    {
      v19 = *a2;
      v20 = *(a1[16].i64[0] + 16 * v19);
      v21.i64[0] = 0x8000000080000000;
      v21.i64[1] = 0x8000000080000000;
      v22 = vcvtq_s32_f32(vbslq_s8(vorrq_s8(vcltzq_f32(v20), vcgtzq_f32(v20)), vorrq_s8(vandq_s8(v20, v21), v57), 0));
      v22.i32[3] = 0;
      v23 = vcltzq_s32(v22);
      v24 = vbslq_s8(v23, v59, v61);
      v25 = vmulq_f32(v20, vorrq_s8(vbicq_s8(v59, v23), vandq_s8(v23, v61)));
      v26 = vmulq_f32(v20, v24);
      LOBYTE(v76) = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      LODWORD(v75) = v19;
      *v26.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v26, v26, 8uLL)), vadd_f32(vzip1_s32(*v25.i8, *v26.i8), vzip2_s32(*v25.i8, *v26.i8)));
      *v24.f32 = vdup_lane_s32(*v26.i8, 0);
      v24.f32[0] = -*&v26.i32[1];
      *(&v75 + 4) = vmul_f32(vsub_f32(*v24.f32, *v26.i8), 0x3F0000003F000000);
      std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](&v69, &v75);
      if (v85 == 1)
      {
        v63 = &v84;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v63);
        if (__p)
        {
          v83 = __p;
          operator delete(__p);
        }

        if (v81)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v81);
        }

        v63 = &v80;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v63);
        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (*(&v76 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v76 + 1));
        }
      }

      ++a2;
      v14 -= 4;
    }

    while (v14);
    v27 = v69;
    v28 = v70;
    v29 = a1[11];
    v63 = 0;
    v64 = 0;
    v65 = 0;
    if (v69 != v70)
    {
      v62 = v29;
      do
      {
        v30 = vmulq_f32(v62, vabsq_f32(*(a1[16].i64[0] + 16 * *v27)));
        geom::cut_plane_search_candidate<float>::refine_to_new_range(v27, &v63, ((v30.f32[2] + vaddv_f32(*v30.f32)) * 8.0) * 0.5);
        v27 += 84;
      }

      while (v27 != v28);
      v32 = v63;
      v33 = v64;
      if (v63 != v64)
      {
        do
        {
          std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](&v69, v32, v31);
          v32 += 42;
        }

        while (v32 != v33);
        v32 = v63;
        v33 = v64;
      }

      while (v33 != v32)
      {
        v33 -= 84;
        std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(&v63, v33);
      }

      goto LABEL_25;
    }
  }

  else
  {
    v29 = a1[11];
    v63 = 0;
    v64 = 0;
    v65 = 0;
  }

  v62 = v29;
  v32 = 0;
LABEL_25:
  v64 = v32;
  geom::acd<float>::impl::evaluate_candidate_cut_planes<std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(a1, v69, v70, a4, v72);
  v75 = 0u;
  v76 = 0u;
  v77 = 1065353216;
  v34 = v69;
  v35 = v70;
  if (v70 != v69)
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = &v34[84 * v36];
      v39 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(&v75, v38);
      if (v39)
      {
        v34 = v69;
        if (v38[80] < *&v69[336 * *(v39 + 5) + 320])
        {
          *(v39 + 5) = v37;
        }
      }

      else
      {
        v74 = v38;
        *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v75, v38, &std::piecewise_construct, &v74) + 5) = v37;
        v34 = v69;
      }

      v35 = v70;
      v36 = ++v37;
    }

    while (0xCF3CF3CF3CF3CF3DLL * ((v70 - v34) >> 4) > v37);
  }

  if (v35 != v34)
  {
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(&v75, &v34[84 * v40]);
      if (v42 && *(v42 + 5) == v41)
      {
        v34 = v69;
        v35 = v70;
      }

      else
      {
        geom::acd<float>::impl::search_cut_planes_with_normals(geom::slice<unsigned int>,geom::cluster<float> const&,unsigned int,geom::cut_plane_search_candidate<float> &,std::vector<geom::cut_plane_search_candidate<float>> &)::{lambda(unsigned long)#1}::operator()(v66, v40, v43);
        v34 = v69;
        v35 = v70;
        if (0xCF3CF3CF3CF3CF3DLL * ((v70 - v69) >> 4) <= v40)
        {
          --v41;
        }

        else
        {
          v44 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(&v75, &v69[336 * v40]);
          v34 = v69;
          v35 = v70;
          if (v44 && 0xCF3CF3CF3CF3CF3DLL * ((v70 - v69) >> 4) == *(v44 + 5))
          {
            *(v44 + 5) = v41;
          }
        }
      }

      v40 = ++v41;
    }

    while (0xCF3CF3CF3CF3CF3DLL * ((v35 - v34) >> 4) > v41);
  }

  for (i = v62; v34 != v35; v34 += 84)
  {
    v46 = vmulq_f32(i, vabsq_f32(*(a1[16].i64[0] + 16 * *v34)));
    geom::cut_plane_search_candidate<float>::refine_to_new_range(v34, &v63, v46.f32[2] + vaddv_f32(*v46.f32));
    i = v62;
  }

  geom::acd<float>::impl::evaluate_candidate_cut_planes<std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(a1, v63, v64, a4, v72);
  v48 = v63;
  v49 = v64;
  if (v63 != v64)
  {
    do
    {
      std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](&v69, v48, v47);
      v48 += 42;
    }

    while (v48 != v49);
    v48 = v63;
    v49 = v64;
  }

  while (v49 != v48)
  {
    v49 -= 84;
    std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(&v63, v49);
  }

  v64 = v48;
  v50 = v69;
  v51 = v69 + 336;
  if (v69 != v70 && v51 != v70)
  {
    do
    {
      if (*(v51 + 80) < *(v50 + 80))
      {
        v50 = v51;
      }

      v51 += 336;
    }

    while (v51 != v70);
  }

  v53 = *v50;
  *(a6 + 8) = *(v50 + 2);
  *a6 = v53;
  std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>(a6 + 16, (v50 + 16));
  if (*(a6 + 328) == v50[328])
  {
    if (*(a6 + 328))
    {
      *(a6 + 320) = *(v50 + 80);
      *(a6 + 324) = *(v50 + 81);
    }
  }

  else if (*(a6 + 328))
  {
    *(a6 + 328) = 0;
  }

  else
  {
    *(a6 + 320) = *(v50 + 40);
    *(a6 + 328) = 1;
  }

  std::swap[abi:nn200100]<geom::cut_plane_search_candidate<float>>(v50, v70 - 42);
  v54 = (v70 - 336);
  std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(&v69, (v70 - 336));
  v70 = v54;
  v56 = v69;
  if (v69 != v54)
  {
    do
    {
      geom::acd<float>::impl::search_cut_planes_with_normals(geom::slice<unsigned int>,geom::cluster<float> const&,unsigned int,geom::cut_plane_search_candidate<float> &,std::vector<geom::cut_plane_search_candidate<float>> &)::{lambda(unsigned long)#1}::operator()(v66, 0xCF3CF3CF3CF3CF3DLL * ((v54 - v56) >> 4) - 1, v55);
      v56 = v69;
      v54 = v70;
    }

    while (v69 != v70);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(&v75);
  *&v75 = &v63;
  std::vector<geom::cut_plane_search_candidate<float>>::__destroy_vector::operator()[abi:nn200100](&v75);
  *&v75 = &v69;
  std::vector<geom::cut_plane_search_candidate<float>>::__destroy_vector::operator()[abi:nn200100](&v75);
  *&v75 = v72;
  std::vector<geom::cluster_parallel_clipper<float>::clipping_context,std::allocator<geom::cluster_parallel_clipper<float>::clipping_context>>::__destroy_vector::operator()[abi:nn200100](&v75);
}

void *std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<geom::cut_plane_search_candidate<float>>::__emplace_back_slow_path<geom::cut_plane_search_candidate<float> const&>(a1, a2);
  }

  else
  {
    result = (geom::cut_plane_search_candidate<float>::cut_plane_search_candidate(v3, a2) + 336);
  }

  *(a1 + 8) = result;
  return result;
}

void geom::cut_plane_search_candidate<float>::refine_to_new_range(float *a1, uint64_t a2, float a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = vcvtms_s32_f32(a1[2] / a3);
  v7 = -1;
  do
  {
    v8 = v7;
    if (v6 >= 1)
    {
      v9 = v7 * a3;
      v10 = 1;
      v11 = v6;
      do
      {
        v15 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(&v13 + 1) = a1[1] + (v9 * v10);
        v14 = a3;
        *&v13 = *a1;
        std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](a2, &v13);
        if (v24 == 1)
        {
          v12 = &v23;
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v12);
          if (__p)
          {
            v22 = __p;
            operator delete(__p);
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }

          v12 = &v19;
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v12);
          if (v17)
          {
            v18 = v17;
            operator delete(v17);
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v16);
          }
        }

        ++v10;
        --v11;
      }

      while (v11);
    }

    v7 = v8 + 2;
  }

  while (v8 < 0);
}

void geom::acd<float>::impl::evaluate_candidate_cut_planes<std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(uint64_t *a1, char *a2, unsigned int *a3, void *a4, uint64_t *a5)
{
  v8 = a2;
  v23 = 0;
  v24 = a2;
  __p = 0;
  v22 = 0;
  std::vector<geom::general_plane<float,(unsigned char)3>>::reserve(&__p, 0xCF3CF3CF3CF3CF3DLL * ((a3 - a2) >> 4));
  if (a3 == v8)
  {
    v10 = v22;
  }

  else
  {
    v10 = v22;
    do
    {
      v11 = *(a1[32] + 16 * *v8);
      v12 = v8[1];
      if (v10 >= v23)
      {
        v13 = (v10 - __p) >> 5;
        if ((v13 + 1) >> 59)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v14 = (v23 - __p) >> 4;
        if (v14 <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        if (v23 - __p >= 0x7FFFFFFFFFFFFFE0)
        {
          v15 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<geom::general_plane<float,(unsigned char)3>>>(&__p, v15);
        }

        v16 = 32 * v13;
        *v16 = v11;
        *(v16 + 16) = v12;
        v10 = 32 * v13 + 32;
        v17 = (32 * v13 - (v22 - __p));
        memcpy((v16 - (v22 - __p)), __p, v22 - __p);
        v18 = __p;
        __p = v17;
        v22 = v10;
        v23 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v11;
        *(v10 + 16) = v12;
        v10 += 32;
      }

      v22 = v10;
      v8 += 84;
    }

    while (v8 != a3);
  }

  geom::cluster_parallel_clipper<float>::init(a5, a4, (a1 + 28), __p, (v10 - __p) >> 5);
  v19 = a5[5];
  v20 = ((a5[8] + ((v19[12] - v19[11]) >> 3) - 1) / a5[8] + (a5[7] + ((v19[15] - v19[14]) >> 4) - 1) / a5[7]) * a5[4];
  block = MEMORY[0x277D85DD0];
  v26 = 0x40000000;
  v27 = ___ZN4geom14dispatch_applyIZNS_24cluster_parallel_clipperIfE24compute_clipped_clustersEvEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke_0;
  v28 = &__block_descriptor_tmp_2;
  v29 = a5;
  dispatch_apply(v20, 0, &block);
  block = MEMORY[0x277D85DD0];
  v26 = 0x40000000;
  v27 = ___ZN4geom14dispatch_applyIZNS_3acdIfE4impl29evaluate_candidate_cut_planesINSt3__111__wrap_iterIPNS_26cut_plane_search_candidateIfEEEEEEvT_SB_RKNS_7clusterIfEERNS_24cluster_parallel_clipperIfEEEUlmE_Lb1EEEvmP16dispatch_queue_sSB__block_invoke;
  v28 = &__block_descriptor_tmp_2_0;
  v29 = a1;
  v30 = a5;
  v31 = a4;
  v32 = &v24;
  dispatch_apply((v22 - __p) >> 5, 0, &block);
  geom::cluster_parallel_clipper<float>::deinit(a5);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

void geom::acd<float>::impl::search_cut_planes_with_normals(geom::slice<unsigned int>,geom::cluster<float> const&,unsigned int,geom::cut_plane_search_candidate<float> &,std::vector<geom::cut_plane_search_candidate<float>> &)::{lambda(unsigned long)#1}::operator()(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *a1[1] + 336 * a2;
  if (*(v5 + 328) == 1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = a1[2];
      if (0xCF3CF3CF3CF3CF3DLL * ((v7[1] - *v7) >> 4) < v6 || (a3.n128_u32[0] = *(v5 + 324), a3.n128_f32[0] < *(*v7 + 324)))
      {
        std::vector<geom::cut_plane_search_candidate<float>>::push_back[abi:nn200100](v7, v5, a3);
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<float> &,std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(*a1[2], *(a1[2] + 8), &v19, 0xCF3CF3CF3CF3CF3DLL * ((*(a1[2] + 8) - *a1[2]) >> 4));
        v32 = 0u;
        v33 = 0u;
        memset(v31, 0, sizeof(v31));
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        memset(v23, 0, sizeof(v23));
        *v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        memset(v20, 0, sizeof(v20));
        *(v5 + 8) = 0;
        *v5 = 0;
        v8.n128_f64[0] = std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>(v5 + 16, v20);
        if (*(v5 + 328) == BYTE8(v33))
        {
          if (*(v5 + 328))
          {
            *(v5 + 320) = v33;
            v8.n128_u32[0] = DWORD1(v33);
            *(v5 + 324) = DWORD1(v33);
          }
        }

        else if (*(v5 + 328))
        {
          *(v5 + 328) = 0;
        }

        else
        {
          *(v5 + 320) = v33;
          *(v5 + 328) = 1;
        }

        if (v32 == 1)
        {
          v18 = v31;
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v18);
          if (*(&v29 + 1))
          {
            *&v30 = *(&v29 + 1);
            operator delete(*(&v29 + 1));
          }

          if (*(&v24 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v24 + 1));
          }

          v18 = v23;
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v18);
          if (v21[1])
          {
            *&v22 = v21[1];
            operator delete(v21[1]);
          }

          if (*(&v20[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v20[0] + 1));
          }
        }

        v9 = a1[2];
        v10 = v9[1];
        v11 = 0xCF3CF3CF3CF3CF3DLL * ((v10 - *v9) >> 4);
        if (v11 > *(a1 + 8))
        {
          std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<float>,std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(*v9, v10, &v19, v11, v8);
          v12 = a1[2];
          v13 = *(v12 + 8) - 336;
          std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(v12, v13);
          *(v12 + 8) = v13;
        }
      }
    }
  }

  if (*(v5 + 304) == 1)
  {
    geom::cluster<float>::deinit(v5 + 16, v4 + 224);
    geom::cluster<float>::deinit(v5 + 160, v4 + 224);
  }

  v14 = *(a1[1] + 8);
  v15 = *(v14 - 336);
  *(v5 + 8) = *(v14 - 328);
  *v5 = v15;
  std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>(v5 + 16, v14 - 320);
  if (*(v5 + 328) == *(v14 - 8))
  {
    if (*(v5 + 328))
    {
      *(v5 + 320) = *(v14 - 16);
      *(v5 + 324) = *(v14 - 12);
    }
  }

  else if (*(v5 + 328))
  {
    *(v5 + 328) = 0;
  }

  else
  {
    *(v5 + 320) = *(v14 - 16);
    *(v5 + 328) = 1;
  }

  v16 = a1[1];
  v17 = *(v16 + 8) - 336;
  std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(v16, v17);
  *(v16 + 8) = v17;
}

void std::swap[abi:nn200100]<geom::cut_plane_search_candidate<float>>(uint64_t *a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *(a1 + 2);
  v8[0] = 0;
  v17 = 0;
  if (*(a1 + 304) == 1)
  {
    std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>>(v8, (a1 + 2));
  }

  v18 = a1[40];
  v19 = *(a1 + 82);
  v4 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 2) = v4;
  std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>((a1 + 2), (a2 + 2));
  if (*(a1 + 328) == *(a2 + 328))
  {
    if (*(a1 + 328))
    {
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 81) = *(a2 + 81);
    }
  }

  else if (*(a1 + 328))
  {
    *(a1 + 328) = 0;
  }

  else
  {
    a1[40] = a2[40];
    *(a1 + 328) = 1;
  }

  *a2 = v6;
  *(a2 + 2) = v7;
  std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>((a2 + 2), v8);
  if (*(a2 + 328) == v19)
  {
    if (*(a2 + 328))
    {
      a2[40] = v18;
    }
  }

  else if (*(a2 + 328))
  {
    *(a2 + 328) = 0;
  }

  else
  {
    a2[40] = v18;
    *(a2 + 328) = 1;
  }

  if (v17 == 1)
  {
    v5 = &v16;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v5 = &v12;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }
}

void geom::acd<double>::impl::split_clusters_automatically(int *a1, unsigned int *a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v4 = *(a1 + 20);
  if (v4)
  {
    do
    {
      std::vector<unsigned int>::push_back[abi:nn200100](&v23, v4 + 4);
      v4 = *v4;
    }

    while (v4);
    v4 = v23;
    v5 = v24;
  }

  else
  {
    v5 = 0;
  }

  v20 = a1;
  v6 = (v5 - v4) >> 2;
  if (v6 < 2)
  {
    goto LABEL_9;
  }

  v7 = (v6 - 2) >> 1;
  v8 = v4 + v7;
  v9 = v7 + 1;
  do
  {
    std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<double>::impl::split_clusters_automatically(geom::acd<double>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(v4, &v20, v6, v8--);
    --v9;
  }

  while (v9);
  while (1)
  {
    v4 = v23;
    v5 = v24;
LABEL_9:
    if (v4 == v5 || *(a1 + 21) >= *a2)
    {
      break;
    }

    v10 = *v4;
    v20 = a1;
    v11 = (v5 - v4) >> 2;
    if (v11 >= 2)
    {
      v12 = *v4;
      v13 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<double>::impl::split_clusters_automatically(geom::acd<double>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(v4, &v20, v11);
      v14 = (v5 - 4);
      if ((v5 - 4) == v13)
      {
        *v13 = v12;
      }

      else
      {
        *v13 = *v14;
        *v14 = v12;
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<double>::impl::split_clusters_automatically(geom::acd<double>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(v4, (v13 + 1), &v20, ((v13 + 1) - v4) >> 2);
      }
    }

    v24 = (v24 - 4);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    geom::acd<double>::impl::cut_to_reduce_concavity(a1, v10, &v20, a2);
    v15 = v20;
    v16 = v21;
    if ((v21 - v20) < 5 || v20 == v21)
    {
      if (v20)
      {
        goto LABEL_24;
      }
    }

    else
    {
      do
      {
        v18 = *v15++;
        v19 = v18;
        std::vector<unsigned int>::push_back[abi:nn200100](&v23, &v19);
        v26 = a1;
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<double>::impl::split_clusters_automatically(geom::acd<double>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(v23, v24, &v26, (v24 - v23) >> 2);
      }

      while (v15 != v16);
      v15 = v20;
      if (v20)
      {
LABEL_24:
        v21 = v15;
        operator delete(v15);
      }
    }
  }

  if (v4)
  {
    v24 = v4;
    operator delete(v4);
  }
}

void geom::acd<double>::impl::cut_to_reduce_concavity(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v189 = *MEMORY[0x277D85DE8];
  v57 = a2;
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(a1 + 18, &v57);
  v8 = *(v7[3] + 32);
  *(a3 + 8) = *a3;
  std::vector<unsigned int>::push_back[abi:nn200100](a3, &v57);
  v10.n128_u64[0] = 0x3CB0000000000000;
  if (v8 > 2.22044605e-16)
  {
    LOBYTE(v168) = 0;
    v186 = 0;
    v187 = 0;
    v188 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    geom::acd<double>::impl::find_best_cut_plane(a1, v10, v9, v7[3], 2u, 4, v167, &v54);
    if (v186 == 1)
    {
      v11 = v7[3];
      if ((*(v11 + 32) - *&v170 - *&v183) / *(v11 + 32) >= *(a4 + 8))
      {
        geom::cluster<double>::deinit(v11, (a1 + 38));
        v32 = v7[3];
        v33 = v168;
        v168 = 0uLL;
        v34 = *(v32 + 8);
        *v32 = v33;
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v34);
        }

        v35 = v169;
        v36 = v170;
        v37 = v172;
        *(v32 + 48) = v171;
        *(v32 + 64) = v37;
        *(v32 + 16) = v35;
        *(v32 + 32) = v36;
        v38 = v173;
        v39 = v174;
        v40 = v176;
        *(v32 + 112) = v175;
        *(v32 + 128) = v40;
        *(v32 + 80) = v38;
        *(v32 + 96) = v39;
        v41 = *(v32 + 144);
        if (v41)
        {
          *(v32 + 152) = v41;
          operator delete(v41);
          *(v32 + 144) = 0;
          *(v32 + 152) = 0;
          *(v32 + 160) = 0;
        }

        *(v32 + 144) = *v177;
        *(v32 + 160) = v178;
        v177[0] = 0;
        v177[1] = 0;
        v178 = 0;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate((v32 + 168));
        *(v32 + 168) = v179;
        *(v32 + 184) = v180;
        v179 = 0uLL;
        v180 = 0;
        *(v32 + 192) = v181;
        operator new();
      }

      if (*(a4 + 24) == 1)
      {
        v52 = a4;
        std::vector<geom::cut_plane_search_candidate<double>>::push_back[abi:nn200100](&v54, v167);
        v155 = 0uLL;
        v12 = vdupq_n_s64(0x7FF8000000000000uLL);
        v156 = v12;
        v13 = vdupq_n_s64(0x7FF0000000000000uLL);
        *&v157 = 0x7FF8000000000000;
        *&v14 = 0x7FF0000000000000;
        v159 = v14;
        v158 = v13;
        *&v15 = 0xFFF0000000000000;
        v161 = v15;
        v160 = vdupq_n_s64(0xFFF0000000000000);
        *__p = 0u;
        memset(v165, 0, sizeof(v165));
        v166 = 0;
        v143 = 0uLL;
        v144 = v12;
        *&v145 = 0x7FF8000000000000;
        v147 = v14;
        v146 = v13;
        v149 = v15;
        v148 = v160;
        *v152 = 0u;
        memset(v153, 0, sizeof(v153));
        v154 = 0;
        v131 = 0uLL;
        v132 = v12;
        *&v133 = 0x7FF8000000000000;
        v135 = v14;
        v134 = v13;
        v137 = v15;
        v136 = v160;
        *v140 = 0u;
        memset(v141, 0, sizeof(v141));
        v142 = 0;
        v119 = 0uLL;
        v120 = v12;
        *&v121 = 0x7FF8000000000000;
        v123 = v14;
        v122 = v13;
        v125 = v15;
        v124 = v160;
        *v128 = 0u;
        memset(v129, 0, sizeof(v129));
        v130 = 0;
        memset(v53, 0, sizeof(v53));
        v16 = v54;
        v17 = v55;
        if (v54 != v55)
        {
          v18 = 0.0;
          while (1)
          {
            v19 = (v16 + 32);
            LOBYTE(v90[0]) = 0;
            v20 = (v16 + 240);
            v116 = 0;
            v117 = 0;
            v118 = 0;
            LOBYTE(v60[0]) = 0;
            v86 = 0;
            v87 = 0;
            v88 = 0;
            geom::acd<double>::impl::find_best_cut_plane(a1, v12, v13, (v16 + 32), 0, 0, v89, v53);
            geom::acd<double>::impl::find_best_cut_plane(a1, v21, v22, (v16 + 240), 0, 0, v59, v53);
            if (v116)
            {
              if (v86)
              {
                v23 = (*(v7[3] + 32) - *&v91 - *&v104 - *&v61 - *&v74) / *(v7[3] + 32);
                if (v23 <= v18)
                {
                  geom::cluster<double>::deinit(v90, (a1 + 38));
                  geom::cluster<double>::deinit(v103, (a1 + 38));
                  geom::cluster<double>::deinit(v60, (a1 + 38));
                  geom::cluster<double>::deinit(v73, (a1 + 38));
                }

                else
                {
                  geom::cluster<double>::deinit(&v155, (a1 + 38));
                  geom::cluster<double>::deinit(&v143, (a1 + 38));
                  geom::cluster<double>::deinit(&v131, (a1 + 38));
                  geom::cluster<double>::deinit(&v119, (a1 + 38));
                  v24 = v90[0];
                  v90[0] = 0uLL;
                  v25 = *(&v155 + 1);
                  v155 = v24;
                  if (v25)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
                  }

                  v160 = v94;
                  v161 = v95;
                  v162 = v96;
                  v163 = v97;
                  v156 = v90[1];
                  v157 = v91;
                  v158 = v92;
                  v159 = v93;
                  if (__p[0])
                  {
                    __p[1] = __p[0];
                    operator delete(__p[0]);
                  }

                  *__p = *v98;
                  *&v165[0] = v99;
                  v98[1] = 0;
                  v99 = 0;
                  v98[0] = 0;
                  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(v165 + 1);
                  *(v165 + 8) = v100;
                  *(&v165[1] + 1) = v101;
                  v101 = 0;
                  v100 = 0uLL;
                  v166 = v102;
                  v26 = v103[0];
                  v103[0] = 0uLL;
                  v27 = *(&v143 + 1);
                  v143 = v26;
                  if (v27)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
                  }

                  v148 = v107;
                  v149 = v108;
                  v150 = v109;
                  v151 = v110;
                  v144 = v103[1];
                  v145 = v104;
                  v146 = v105;
                  v147 = v106;
                  if (v152[0])
                  {
                    v152[1] = v152[0];
                    operator delete(v152[0]);
                  }

                  *v152 = *v111;
                  *&v153[0] = v112;
                  v111[1] = 0;
                  v112 = 0;
                  v111[0] = 0;
                  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(v153 + 1);
                  *(v153 + 8) = v113;
                  *(&v153[1] + 1) = v114;
                  v114 = 0;
                  v113 = 0uLL;
                  v154 = v115;
                  v28 = v60[0];
                  v60[0] = 0uLL;
                  v29 = *(&v131 + 1);
                  v131 = v28;
                  if (v29)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
                  }

                  v136 = v64;
                  v137 = v65;
                  v138 = v66;
                  v139 = v67;
                  v132 = v60[1];
                  v133 = v61;
                  v134 = v62;
                  v135 = v63;
                  if (v140[0])
                  {
                    v140[1] = v140[0];
                    operator delete(v140[0]);
                  }

                  *v140 = *v68;
                  *&v141[0] = v69;
                  v68[1] = 0;
                  v69 = 0;
                  v68[0] = 0;
                  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(v141 + 1);
                  *(v141 + 8) = v70;
                  *(&v141[1] + 1) = v71;
                  v71 = 0;
                  v70 = 0uLL;
                  v142 = v72;
                  v30 = v73[0];
                  v73[0] = 0uLL;
                  v31 = *(&v119 + 1);
                  v119 = v30;
                  if (v31)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
                  }

                  v124 = v77;
                  v125 = v78;
                  v126 = v79;
                  v127 = v80;
                  v120 = v73[1];
                  v121 = v74;
                  v122 = v75;
                  v123 = v76;
                  if (v128[0])
                  {
                    v128[1] = v128[0];
                    operator delete(v128[0]);
                  }

                  *v128 = *v81;
                  *&v129[0] = v82;
                  v81[1] = 0;
                  v82 = 0;
                  v81[0] = 0;
                  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(v129 + 1);
                  *(v129 + 8) = v83;
                  *(&v129[1] + 1) = v84;
                  v84 = 0;
                  v83 = 0uLL;
                  v130 = v85;
                  v18 = v23;
                }
              }

              else
              {
                v19 = v90;
                v20 = v103;
              }
            }

            else
            {
              v20 = v73;
              v19 = v60;
              if ((v86 & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            geom::cluster<double>::deinit(v19, (a1 + 38));
            geom::cluster<double>::deinit(v20, (a1 + 38));
LABEL_32:
            if (v86 == 1)
            {
              v58 = &v83;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v58);
              if (v81[0])
              {
                v81[1] = v81[0];
                operator delete(v81[0]);
              }

              if (*(&v73[0] + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v73[0] + 1));
              }

              v58 = &v70;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v58);
              if (v68[0])
              {
                v68[1] = v68[0];
                operator delete(v68[0]);
              }

              if (*(&v60[0] + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v60[0] + 1));
              }
            }

            if (v116 == 1)
            {
              v59[0] = &v113;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v59);
              if (v111[0])
              {
                v111[1] = v111[0];
                operator delete(v111[0]);
              }

              if (*(&v103[0] + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v103[0] + 1));
              }

              v59[0] = &v100;
              std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v59);
              if (v98[0])
              {
                v98[1] = v98[0];
                operator delete(v98[0]);
              }

              if (*(&v90[0] + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v90[0] + 1));
              }
            }

            v16 += 496;
            if (v16 == v17)
            {
              goto LABEL_58;
            }
          }
        }

        v18 = 0.0;
LABEL_58:
        if (v18 >= *(v52 + 8))
        {
          geom::cluster<double>::deinit(v7[3], (a1 + 38));
          v42 = v7[3];
          v43 = v155;
          v155 = 0uLL;
          v44 = *(v42 + 8);
          *v42 = v43;
          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v44);
          }

          v45 = v156;
          v46 = v157;
          v47 = v159;
          *(v42 + 48) = v158;
          *(v42 + 64) = v47;
          *(v42 + 16) = v45;
          *(v42 + 32) = v46;
          v48 = v160;
          v49 = v161;
          v50 = v163;
          *(v42 + 112) = v162;
          *(v42 + 128) = v50;
          *(v42 + 80) = v48;
          *(v42 + 96) = v49;
          v51 = *(v42 + 144);
          if (v51)
          {
            *(v42 + 152) = v51;
            operator delete(v51);
            *(v42 + 144) = 0;
            *(v42 + 152) = 0;
            *(v42 + 160) = 0;
          }

          *(v42 + 144) = *__p;
          *(v42 + 160) = *&v165[0];
          __p[0] = 0;
          __p[1] = 0;
          *&v165[0] = 0;
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate((v42 + 168));
          *(v42 + 168) = *(v165 + 8);
          *(v42 + 184) = *(&v165[1] + 1);
          memset(v165 + 8, 0, 24);
          *(v42 + 192) = v166;
          operator new();
        }

        v89[0] = v53;
        std::vector<geom::cut_plane_search_candidate<double>>::__destroy_vector::operator()[abi:nn200100](v89);
        v89[0] = v129 + 1;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v89);
        if (v128[0])
        {
          v128[1] = v128[0];
          operator delete(v128[0]);
        }

        if (*(&v119 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v119 + 1));
        }

        v89[0] = v141 + 1;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v89);
        if (v140[0])
        {
          v140[1] = v140[0];
          operator delete(v140[0]);
        }

        if (*(&v131 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v131 + 1));
        }

        v89[0] = v153 + 1;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v89);
        if (v152[0])
        {
          v152[1] = v152[0];
          operator delete(v152[0]);
        }

        if (*(&v143 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v143 + 1));
        }

        v89[0] = v165 + 1;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v89);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (*(&v155 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v155 + 1));
        }
      }
    }

    v89[0] = &v54;
    std::vector<geom::cut_plane_search_candidate<double>>::__destroy_vector::operator()[abi:nn200100](v89);
    if (v186 == 1)
    {
      v89[0] = &v185;
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v89);
      if (v184[0])
      {
        v184[1] = v184[0];
        operator delete(v184[0]);
      }

      if (*(&v182 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v182 + 1));
      }

      v89[0] = &v179;
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v89);
      if (v177[0])
      {
        v177[1] = v177[0];
        operator delete(v177[0]);
      }

      if (*(&v168 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v168 + 1));
      }
    }
  }
}

double geom::acd<double>::impl::cut_plane_cost(double *a1, double *a2, uint64_t a3, uint64_t a4)
{
  v22 = *(a4 + 32);
  v23 = *(a3 + 32);
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a3;
  v7 = *(a3 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *a4;
  v8 = *(a4 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v6[1];
  v11 = v9[1];
  v20 = *v9;
  v21 = *v6;
  v12 = *(v4 + 8);
  v13 = a1[54];
  v19 = a1[53];
  v14 = *(a3 + 24);
  v15 = *(a4 + 24);
  v16 = a2[3];
  v17 = a1[55];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return (v23 + v22) * ((v19 * vabdd_f64(v21, v20) + (v10 + v11 - v12) * v13 + (v14 + v15 - v16) * v17) * 0.01 + 1.0);
}

void geom::acd<double>::impl::find_best_cut_plane(void *a1, __n128 a2, __n128 a3, _OWORD *a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a6;
  v14 = *(a1[45] + 4 * a5);
  __p = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  if (v14)
  {
    for (i = 0; i < v14; v24 = i)
    {
      v16 = a1[42] + 32 * i;
      if (*(v16 + 16) >= 2.22044605e-16 || (v17 = *v16, *v16 > -2.22044605e-16) && ((*&v18 = vextq_s8(v17, v17, 8uLL).u64[0], *v17.i64 < 2.22044605e-16) ? (v19 = v18 > -2.22044605e-16) : (v19 = 1), v19))
      {
        std::vector<unsigned int>::push_back[abi:nn200100](&__p, &v24);
        i = v24;
      }

      ++i;
    }

    v20 = __p;
    v21 = v26;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  geom::acd<double>::impl::search_cut_planes_with_normals(a1, v20, (v21 - v20) >> 2, a4, v10, a7, a8);
  if (*(a7 + 448) == 1)
  {
    v22 = a5 + 1;
    if (v22 < ((a1[46] - a1[45]) >> 2))
    {
      v23 = 208 * v22;
      do
      {
        v26 = __p;
        geom::triangle_mesh_half_edge_connectivity::get_adjacent_vertices_to_vertex((a1[48] + v23), *a7, &__p);
        geom::acd<double>::impl::search_cut_planes_with_normals(a1, __p, (v26 - __p) >> 2, a4, v10, a7, a8);
        ++v22;
        v23 += 208;
      }

      while (v22 < ((a1[46] - a1[45]) >> 2));
    }
  }

  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

uint64_t std::vector<geom::cut_plane_search_candidate<double>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<geom::cut_plane_search_candidate<double>>::__emplace_back_slow_path<geom::cut_plane_search_candidate<double>>(a1, a2);
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    *(v4 + 32) = 0;
    *(v4 + 448) = 0;
    if (*(a2 + 448) == 1)
    {
      std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>>(v4 + 32, (a2 + 2));
    }

    v6 = a2[29];
    *(v4 + 480) = *(a2 + 60);
    *(v4 + 464) = v6;
    result = v4 + 496;
  }

  *(a1 + 8) = result;
  return result;
}

void geom::acd<double>::impl::search_cut_planes_with_normals(uint64_t a1, unsigned int *a2, uint64_t a3, _OWORD *a4, int a5, uint64_t a6, uint64_t a7)
{
  v91 = *MEMORY[0x277D85DE8];
  v62 = *(a4 + 6);
  v64 = *(a4 + 4);
  v60 = *(a4 + 5);
  v61 = *(a4 + 3);
  v7 = vcgtq_f64(v61, v60);
  if (((v7.i64[0] | vcgtq_f64(v64, v62).u64[0] | v7.i64[1]) & 0x8000000000000000) != 0)
  {
    return;
  }

  v76 = 0;
  v11 = 0uLL;
  memset(v75, 0, sizeof(v75));
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v69[0] = a1;
  v69[1] = &v72;
  v69[2] = a7;
  v69[3] = &v71;
  v70 = a5;
  if (a3)
  {
    v13 = 4 * a3;
    __asm { FMOV            V0.2D, #1.0 }

    v58 = _Q0;
    v59 = vnegq_f64(0);
    __asm { FMOV            V0.2D, #0.5 }

    v57 = _Q0;
    do
    {
      v19 = *a2;
      v20 = *(a1 + 336) + 32 * v19;
      v21 = *(v20 + 16);
      v22 = vcltzq_s64(vcvtq_s64_f64(vbslq_s8(vorrq_s8(vcltzq_f64(v21), vcgtzq_f64(v21)), vorrq_s8(vandq_s8(v21, v59), v58), v11)).u64[0]);
      v23 = vcltzq_s64(vcvtq_s64_f64(vandq_s8(vorrq_s8(vandq_s8(*v20, v59), v58), vorrq_s8(vcltzq_f64(*v20), vcgtzq_f64(*v20)))));
      v24 = vbslq_s8(v23, v60, v61);
      v25 = vmulq_f64(*v20, vbslq_s8(v23, v61, v60));
      v26 = vmulq_f64(*v20, v24);
      LOBYTE(v79) = 0;
      v88 = 0;
      v89 = 0;
      v90 = 0;
      LODWORD(v78[0]) = v19;
      v27 = vaddq_f64(vzip1q_s64(vmulq_f64(v21, vorrq_s8(vbicq_s8(*&v62.f64[0], v22), vandq_s8(v22, *&v64.f64[0]))), vmulq_f64(v21, vbslq_s8(v22, *&v62.f64[0], *&v64.f64[0]))), vpaddq_f64(v25, v26));
      v28 = vdupq_lane_s64(*&v27.f64[0], 0);
      v28.f64[0] = -v27.f64[1];
      *(v78 + 8) = vmulq_f64(vsubq_f64(v28, v27), v57);
      std::vector<geom::cut_plane_search_candidate<double>>::push_back[abi:nn200100](&v72, v78);
      if (v88 == 1)
      {
        v66 = &v87;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v66);
        if (__p)
        {
          v86 = __p;
          operator delete(__p);
        }

        if (v84)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v84);
        }

        v66 = &v83;
        std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v66);
        if (v81)
        {
          v82 = v81;
          operator delete(v81);
        }

        if (v80)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v80);
        }
      }

      ++a2;
      v13 -= 4;
      v11 = 0uLL;
    }

    while (v13);
    v29 = v72;
    v30 = v73;
    v32 = *(a1 + 208);
    v31 = *(a1 + 224);
    v66 = 0;
    v67 = 0;
    v68 = 0;
    if (v72 != v73)
    {
      v63 = v32;
      v65 = v31;
      do
      {
        v33 = (*(a1 + 336) + 32 * *v29);
        geom::cut_plane_search_candidate<double>::refine_to_new_range(v29, &v66, (vmulq_f64(v65, vabsq_f64(v33[1])).f64[0] + vaddvq_f64(vmulq_f64(v63, vabsq_f64(*v33)))) * 8.0 * 0.5);
        v29 += 62;
      }

      while (v29 != v30);
      v34 = v66;
      v35 = v67;
      if (v66 != v67)
      {
        do
        {
          std::vector<geom::cut_plane_search_candidate<double>>::push_back[abi:nn200100](&v72, v34);
          v34 += 31;
        }

        while (v34 != v35);
        v34 = v66;
        v35 = v67;
      }

      while (v35 != v34)
      {
        v35 -= 496;
        std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<double>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<double>,0>(&v66, v35);
      }

      goto LABEL_25;
    }
  }

  else
  {
    v32 = *(a1 + 208);
    v31 = *(a1 + 224);
    v66 = 0;
    v67 = 0;
    v68 = 0;
  }

  v63 = v32;
  v65 = v31;
  v34 = 0;
LABEL_25:
  v67 = v34;
  geom::acd<double>::impl::evaluate_candidate_cut_planes<std::__wrap_iter<geom::cut_plane_search_candidate<double> *>>(a1, v72, v73, a4, v75);
  memset(v78, 0, sizeof(v78));
  v79 = 1065353216;
  v36 = v72;
  v37 = v73;
  if (v73 != v72)
  {
    v38 = 0;
    v39 = 0;
    do
    {
      v40 = &v36[62 * v38];
      v41 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(v78, v40);
      if (v41)
      {
        v36 = v72;
        if (v40[58] < *&v72[496 * *(v41 + 5) + 464])
        {
          *(v41 + 5) = v39;
        }
      }

      else
      {
        v77 = v40;
        *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v78, v40, &std::piecewise_construct, &v77) + 5) = v39;
        v36 = v72;
      }

      v37 = v73;
      v38 = ++v39;
    }

    while (0xEF7BDEF7BDEF7BDFLL * ((v73 - v36) >> 4) > v39);
  }

  if (v37 != v36)
  {
    v42 = 0;
    v43 = 0;
    do
    {
      v44 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(v78, &v36[62 * v42]);
      if (v44 && *(v44 + 5) == v43)
      {
        v36 = v72;
        v37 = v73;
      }

      else
      {
        geom::acd<double>::impl::search_cut_planes_with_normals(geom::slice<unsigned int>,geom::cluster<double> const&,unsigned int,geom::cut_plane_search_candidate<double> &,std::vector<geom::cut_plane_search_candidate<double>> &)::{lambda(unsigned long)#1}::operator()(v69, v42);
        v36 = v72;
        v37 = v73;
        if (0xEF7BDEF7BDEF7BDFLL * ((v73 - v72) >> 4) <= v42)
        {
          --v43;
        }

        else
        {
          v45 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::find<unsigned int>(v78, &v72[496 * v42]);
          v36 = v72;
          v37 = v73;
          if (v45 && 0xEF7BDEF7BDEF7BDFLL * ((v73 - v72) >> 4) == *(v45 + 5))
          {
            *(v45 + 5) = v43;
          }
        }
      }

      v42 = ++v43;
    }

    while (0xEF7BDEF7BDEF7BDFLL * ((v37 - v36) >> 4) > v43);
  }

  v47 = v63;
  for (i = v65; v36 != v37; v36 += 62)
  {
    v48 = (*(a1 + 336) + 32 * *v36);
    geom::cut_plane_search_candidate<double>::refine_to_new_range(v36, &v66, vmulq_f64(i, vabsq_f64(v48[1])).f64[0] + vaddvq_f64(vmulq_f64(v47, vabsq_f64(*v48))));
    v47 = v63;
    i = v65;
  }

  geom::acd<double>::impl::evaluate_candidate_cut_planes<std::__wrap_iter<geom::cut_plane_search_candidate<double> *>>(a1, v66, v67, a4, v75);
  v49 = v66;
  v50 = v67;
  if (v66 != v67)
  {
    do
    {
      std::vector<geom::cut_plane_search_candidate<double>>::push_back[abi:nn200100](&v72, v49);
      v49 += 31;
    }

    while (v49 != v50);
    v49 = v66;
    v50 = v67;
  }

  while (v50 != v49)
  {
    v50 -= 496;
    std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<double>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<double>,0>(&v66, v50);
  }

  v67 = v49;
  v51 = v72;
  v52 = v72 + 496;
  if (v72 != v73 && v52 != v73)
  {
    do
    {
      if (*(v52 + 58) < *(v51 + 58))
      {
        v51 = v52;
      }

      v52 += 496;
    }

    while (v52 != v73);
  }

  v54 = *v51;
  *(a6 + 16) = *(v51 + 2);
  *a6 = v54;
  std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>>(a6 + 32, (v51 + 32));
  if (*(a6 + 480) == v51[480])
  {
    if (*(a6 + 480))
    {
      *(a6 + 464) = *(v51 + 58);
      *(a6 + 472) = *(v51 + 59);
    }
  }

  else if (*(a6 + 480))
  {
    *(a6 + 480) = 0;
  }

  else
  {
    *(a6 + 464) = *(v51 + 29);
    *(a6 + 480) = 1;
  }

  std::swap[abi:nn200100]<geom::cut_plane_search_candidate<double>>(v51, v73 - 31);
  v55 = v73 - 496;
  std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<double>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<double>,0>(&v72, (v73 - 496));
  v73 = v55;
  for (j = v72; v72 != v73; v55 = v73)
  {
    geom::acd<double>::impl::search_cut_planes_with_normals(geom::slice<unsigned int>,geom::cluster<double> const&,unsigned int,geom::cut_plane_search_candidate<double> &,std::vector<geom::cut_plane_search_candidate<double>> &)::{lambda(unsigned long)#1}::operator()(v69, 0xEF7BDEF7BDEF7BDFLL * ((v55 - j) >> 4) - 1);
    j = v72;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v78);
  *&v78[0] = &v66;
  std::vector<geom::cut_plane_search_candidate<double>>::__destroy_vector::operator()[abi:nn200100](v78);
  *&v78[0] = &v72;
  std::vector<geom::cut_plane_search_candidate<double>>::__destroy_vector::operator()[abi:nn200100](v78);
  *&v78[0] = v75;
  std::vector<geom::cluster_parallel_clipper<double>::clipping_context,std::allocator<geom::cluster_parallel_clipper<double>::clipping_context>>::__destroy_vector::operator()[abi:nn200100](v78);
}

void *std::vector<geom::cut_plane_search_candidate<double>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<geom::cut_plane_search_candidate<double>>::__emplace_back_slow_path<geom::cut_plane_search_candidate<double> const&>(a1, a2);
  }

  else
  {
    result = (geom::cut_plane_search_candidate<double>::cut_plane_search_candidate(v3, a2) + 496);
  }

  *(a1 + 8) = result;
  return result;
}

void geom::cut_plane_search_candidate<double>::refine_to_new_range(double *a1, uint64_t a2, double a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = vcvtmd_s64_f64(a1[2] / a3);
  v7 = -1;
  v8 = -1.0;
  do
  {
    v9 = v7;
    if (v6 >= 1)
    {
      v10 = 1.0;
      v11 = v6;
      do
      {
        v15 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(&v13 + 1) = a1[1] + v8 * a3 * v10;
        v14 = a3;
        LODWORD(v13) = *a1;
        std::vector<geom::cut_plane_search_candidate<double>>::push_back[abi:nn200100](a2, &v13);
        if (v24 == 1)
        {
          v12 = &v23;
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v12);
          if (__p)
          {
            v22 = __p;
            operator delete(__p);
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }

          v12 = &v19;
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v12);
          if (v17)
          {
            v18 = v17;
            operator delete(v17);
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v16);
          }
        }

        v10 = v10 + 1.0;
        --v11;
      }

      while (v11);
    }

    v8 = v8 + 2.0;
    v7 = v9 + 2;
  }

  while (v9 < 0);
}

void geom::acd<double>::impl::evaluate_candidate_cut_planes<std::__wrap_iter<geom::cut_plane_search_candidate<double> *>>(unint64_t *a1, char *a2, char *a3, void *a4, unint64_t *a5)
{
  v7 = a2;
  v29 = 0;
  v30 = a2;
  __p = 0;
  v28 = 0;
  std::vector<geom::general_plane<double,(unsigned char)3>>::reserve(&__p, 0xEF7BDEF7BDEF7BDFLL * ((a3 - a2) >> 4));
  if (a3 == v7)
  {
    v14 = v28;
  }

  else
  {
    v14 = v28;
    do
    {
      v15 = (a1[42] + 32 * *v7);
      v10 = *v15;
      v9 = v15[1];
      v16 = *(v7 + 1);
      if (v14 >= v29)
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - __p) >> 4);
        v18 = v17 + 1;
        if (v17 + 1 > 0x555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (0x5555555555555556 * ((v29 - __p) >> 4) > v18)
        {
          v18 = 0x5555555555555556 * ((v29 - __p) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v29 - __p) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v19 = 0x555555555555555;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<geom::general_plane<double,(unsigned char)3>>>(&__p, v19);
        }

        v20 = 48 * v17;
        *v20 = v10;
        *(v20 + 16) = v9;
        *(v20 + 32) = v16;
        v14 = 48 * v17 + 48;
        v21 = (v20 - (v28 - __p));
        memcpy(v21, __p, v28 - __p);
        v22 = __p;
        __p = v21;
        v28 = v14;
        v29 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v14 = v10;
        *(v14 + 16) = v9;
        *(v14 + 32) = v16;
        v14 += 48;
      }

      v28 = v14;
      v7 += 496;
    }

    while (v7 != a3);
  }

  geom::cluster_parallel_clipper<double>::init(a5, a4, (a1 + 38), __p, 0xAAAAAAAAAAAAAAABLL * ((v14 - __p) >> 4), *&v9, *&v10, v11, v12, v13);
  v23 = a5[5];
  v24 = ((a5[8] + ((v23[19] - v23[18]) >> 3) - 1) / a5[8] + (a5[7] + ((v23[22] - v23[21]) >> 4) - 1) / a5[7]) * a5[4];
  block = MEMORY[0x277D85DD0];
  v32 = 0x40000000;
  v33 = ___ZN4geom14dispatch_applyIZNS_24cluster_parallel_clipperIdE24compute_clipped_clustersEvEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke_0;
  v34 = &__block_descriptor_tmp_3;
  v35 = a5;
  dispatch_apply(v24, 0, &block);
  block = MEMORY[0x277D85DD0];
  v32 = 0x40000000;
  v33 = ___ZN4geom14dispatch_applyIZNS_3acdIdE4impl29evaluate_candidate_cut_planesINSt3__111__wrap_iterIPNS_26cut_plane_search_candidateIdEEEEEEvT_SB_RKNS_7clusterIdEERNS_24cluster_parallel_clipperIdEEEUlmE_Lb1EEEvmP16dispatch_queue_sSB__block_invoke;
  v34 = &__block_descriptor_tmp_4;
  v35 = a1;
  v36 = a5;
  v37 = a4;
  v38 = &v30;
  dispatch_apply(0xAAAAAAAAAAAAAAABLL * ((v28 - __p) >> 4), 0, &block);
  geom::cluster_parallel_clipper<double>::deinit(a5, v25);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

void geom::acd<double>::impl::search_cut_planes_with_normals(geom::slice<unsigned int>,geom::cluster<double> const&,unsigned int,geom::cut_plane_search_candidate<double> &,std::vector<geom::cut_plane_search_candidate<double>> &)::{lambda(unsigned long)#1}::operator()(uint64_t *a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a1[1] + 496 * a2;
  if (*(v4 + 480) == 1)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = a1[2];
      if (0xEF7BDEF7BDEF7BDFLL * ((v6[1] - *v6) >> 4) < v5 || *(v4 + 472) < *(*v6 + 472))
      {
        std::vector<geom::cut_plane_search_candidate<double>>::push_back[abi:nn200100](v6, v4);
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<double> &,std::__wrap_iter<geom::cut_plane_search_candidate<double> *>>(*a1[2], *(a1[2] + 8), v17, 0xEF7BDEF7BDEF7BDFLL * ((*(a1[2] + 8) - *a1[2]) >> 4));
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        memset(v31, 0, sizeof(v31));
        v29 = 0u;
        __p = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        memset(v20, 0, sizeof(v20));
        memset(v18, 0, sizeof(v18));
        memset(v17, 0, sizeof(v17));
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>>(v4 + 32, v18);
        if (*(v4 + 480) == v34)
        {
          if (*(v4 + 480))
          {
            *(v4 + 464) = v33;
          }
        }

        else if (*(v4 + 480))
        {
          *(v4 + 480) = 0;
        }

        else
        {
          *(v4 + 464) = v33;
          *(v4 + 480) = 1;
        }

        if (v32 == 1)
        {
          v16 = &v31[8];
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v16);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          if (*(&v21 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v21 + 1));
          }

          v16 = &v20[8];
          std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v16);
          if (v19)
          {
            *(&v19 + 1) = v19;
            operator delete(v19);
          }

          if (*(&v18[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v18[0] + 1));
          }
        }

        v7 = a1[2];
        v8 = v7[1];
        v9 = 0xEF7BDEF7BDEF7BDFLL * ((v8 - *v7) >> 4);
        if (v9 > *(a1 + 8))
        {
          std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<double>,std::__wrap_iter<geom::cut_plane_search_candidate<double> *>>(*v7, v8, v17, v9);
          v10 = a1[2];
          v11 = *(v10 + 8) - 496;
          std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<double>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<double>,0>(v10, v11);
          *(v10 + 8) = v11;
        }
      }
    }
  }

  if (*(v4 + 448) == 1)
  {
    geom::cluster<double>::deinit(v4 + 32, v3 + 304);
    geom::cluster<double>::deinit(v4 + 240, v3 + 304);
  }

  v12 = *(a1[1] + 8);
  v13 = *(v12 - 496);
  *(v4 + 16) = *(v12 - 480);
  *v4 = v13;
  std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>>(v4 + 32, v12 - 464);
  if (*(v4 + 480) == *(v12 - 16))
  {
    if (*(v4 + 480))
    {
      *(v4 + 464) = *(v12 - 32);
      *(v4 + 472) = *(v12 - 24);
    }
  }

  else if (*(v4 + 480))
  {
    *(v4 + 480) = 0;
  }

  else
  {
    *(v4 + 464) = *(v12 - 32);
    *(v4 + 480) = 1;
  }

  v14 = a1[1];
  v15 = *(v14 + 8) - 496;
  std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<double>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<double>,0>(v14, v15);
  *(v14 + 8) = v15;
}

void std::swap[abi:nn200100]<geom::cut_plane_search_candidate<double>>(__int128 *a1, __int128 *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *(a1 + 2);
  v8[0] = 0;
  v17 = 0;
  if (*(a1 + 448) == 1)
  {
    std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>>(v8, (a1 + 2));
  }

  v18 = a1[29];
  v19 = *(a1 + 60);
  v4 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 2) = v4;
  std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>>((a1 + 2), (a2 + 2));
  if (*(a1 + 480) == *(a2 + 480))
  {
    if (*(a1 + 480))
    {
      *(a1 + 58) = *(a2 + 58);
      *(a1 + 59) = *(a2 + 59);
    }
  }

  else if (*(a1 + 480))
  {
    *(a1 + 480) = 0;
  }

  else
  {
    a1[29] = a2[29];
    *(a1 + 480) = 1;
  }

  *a2 = v6;
  *(a2 + 2) = v7;
  std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>>((a2 + 2), v8);
  if (*(a2 + 480) == v19)
  {
    if (*(a2 + 480))
    {
      a2[29] = v18;
    }
  }

  else if (*(a2 + 480))
  {
    *(a2 + 480) = 0;
  }

  else
  {
    a2[29] = v18;
    *(a2 + 480) = 1;
  }

  if (v17 == 1)
  {
    v5 = &v16;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v5 = &v12;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }
}

void std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<float> &,std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return;
  }

  v7 = v4 >> 1;
  v8 = (a1 + 336 * (v4 >> 1));
  if (*(a2 - 8) == 1 && (*(v8 + 328) != 1 || *(v8 + 81) >= *(a2 - 12)))
  {
    return;
  }

  v9 = (a2 - 336);
  v10 = *(a2 - 336);
  v17 = *(a2 - 328);
  v16 = v10;
  v18[0] = 0;
  v27 = 0;
  if (*(a2 - 32) == 1)
  {
    std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>>(v18, a2 - 320);
  }

  v11 = *(a2 - 16);
  v29 = *(a2 - 8);
  v28 = v11;
  while (1)
  {
    v12 = v8;
    v13 = *v8;
    *(v9 + 2) = *(v8 + 2);
    *v9 = v13;
    std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>((v9 + 2), (v8 + 2));
    if (*(v9 + 328) == *(v8 + 328))
    {
      if (*(v9 + 328))
      {
        *(v9 + 80) = *(v8 + 80);
        *(v9 + 81) = *(v8 + 81);
        if (!v7)
        {
          break;
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (*(v9 + 328))
    {
      *(v9 + 328) = 0;
LABEL_14:
      if (!v7)
      {
        break;
      }

      goto LABEL_15;
    }

    v9[40] = v8[40];
    *(v9 + 328) = 1;
    if (!v7)
    {
      break;
    }

LABEL_15:
    v7 = (v7 - 1) >> 1;
    v8 = (a1 + 336 * v7);
    v9 = v12;
    if (v29 == 1)
    {
      if (*(v8 + 328) != 1)
      {
        break;
      }

      v9 = v12;
      if (*(v8 + 81) >= *(&v28 + 1))
      {
        break;
      }
    }
  }

  v14 = v16;
  *(v12 + 2) = v17;
  *v12 = v14;
  std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>((v12 + 2), v18);
  if (*(v12 + 328) == v29)
  {
    if (*(v12 + 328))
    {
      v12[40] = v28;
    }
  }

  else if (*(v12 + 328))
  {
    *(v12 + 328) = 0;
  }

  else
  {
    v12[40] = v28;
    *(v12 + 328) = 1;
  }

  if (v27 == 1)
  {
    v15 = &v26;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v15);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }

    v15 = &v22;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v15);
    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }
  }
}

__n128 std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v5 = *(a2 + 176);
  v6 = *(a2 + 192);
  v7 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v6;
  *(a1 + 208) = v7;
  *(a1 + 176) = v5;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  result = *(a2 + 256);
  *(a1 + 256) = result;
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 256) = 0;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = 1;
  return result;
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<float>,std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a4 >= 2)
  {
    v9 = *a1;
    v20 = *(a1 + 8);
    v19 = v9;
    v21[0] = 0;
    v30 = 0;
    if (*(a1 + 304) == 1)
    {
      std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>>(v21, a1 + 16);
    }

    v10 = *(a1 + 320);
    v32 = *(a1 + 328);
    v31 = v10;
    v11 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<float> &,std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(a1, a3, a4);
    v12 = v11;
    v13 = (a2 - 336);
    if ((a2 - 336) == v11)
    {
      v15 = v19;
      *(v11 + 2) = v20;
      *v11 = v15;
      std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>((v11 + 2), v21);
      if (*(v12 + 328) == v32)
      {
        if (*(v12 + 328))
        {
          v12[40] = v31;
        }
      }

      else if (*(v12 + 328))
      {
        *(v12 + 328) = 0;
      }

      else
      {
        v12[40] = v31;
        *(v12 + 328) = 1;
      }
    }

    else
    {
      v14 = *v13;
      *(v11 + 2) = *(a2 - 328);
      *v11 = v14;
      std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>((v11 + 2), a2 - 320);
      if (*(v12 + 328) == *(a2 - 8))
      {
        if (*(v12 + 328))
        {
          *(v12 + 80) = *(a2 - 16);
          *(v12 + 81) = *(a2 - 12);
        }
      }

      else if (*(v12 + 328))
      {
        *(v12 + 328) = 0;
      }

      else
      {
        v12[40] = *(a2 - 16);
        *(v12 + 328) = 1;
      }

      v16 = (v12 + 42);
      v17 = v19;
      *(a2 - 328) = v20;
      *v13 = v17;
      std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>(a2 - 320, v21);
      if (*(a2 - 8) == v32)
      {
        if (*(a2 - 8))
        {
          *(a2 - 16) = v31;
        }
      }

      else if (*(a2 - 8))
      {
        *(a2 - 8) = 0;
      }

      else
      {
        *(a2 - 16) = v31;
        *(a2 - 8) = 1;
      }

      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<float> &,std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(a1, v16, a3, 0xCF3CF3CF3CF3CF3DLL * ((v16 - a1) >> 4));
    }

    if (v30 == 1)
    {
      v18 = &v29;
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v18);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v26);
      }

      v18 = &v25;
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v18);
      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      }
    }
  }
}

uint64_t *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<float> &,std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    a1 += 42 * v5 + 42;
    v8 = 2 * v5;
    v5 = (2 * v5) | 1;
    v9 = v8 + 2;
    if (v9 < a3 && (*(a1 + 664) != 1 || *(a1 + 328) == 1 && *(a1 + 81) < *(a1 + 165)))
    {
      a1 += 42;
      v5 = v9;
    }

    v10 = *a1;
    *(v7 + 2) = *(a1 + 2);
    *v7 = v10;
    std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>((v7 + 2), (a1 + 2));
    if (*(v7 + 328) == *(a1 + 328))
    {
      if (*(v7 + 328))
      {
        *(v7 + 80) = *(a1 + 80);
        *(v7 + 81) = *(a1 + 81);
      }
    }

    else if (*(v7 + 328))
    {
      *(v7 + 328) = 0;
    }

    else
    {
      v7[40] = a1[40];
      *(v7 + 328) = 1;
    }
  }

  while (v5 <= v6);
  return a1;
}

double std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 288) == *(a2 + 288))
  {
    if (*(a1 + 288))
    {

      *&result = std::__memberwise_forward_assign[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>,std::tuple<geom::cluster<float>,geom::cluster<float>>,geom::cluster<float>,geom::cluster<float>,0ul,1ul>(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 288))
  {
    v8 = (a1 + 256);
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v8);
    v4 = *(a1 + 232);
    if (v4)
    {
      *(a1 + 240) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 152);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v8 = (a1 + 112);
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v8);
    v6 = *(a1 + 88);
    if (v6)
    {
      *(a1 + 96) = v6;
      operator delete(v6);
    }

    v7 = *(a1 + 8);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    *(a1 + 288) = 0;
  }

  else
  {

    *&result = std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>>(a1, a2).n128_u64[0];
  }

  return result;
}

__n128 std::__memberwise_forward_assign[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>,std::tuple<geom::cluster<float>,geom::cluster<float>>,geom::cluster<float>,geom::cluster<float>,0ul,1ul>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0uLL;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *(a1 + 16) = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  *(a1 + 80) = *(a2 + 10);
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  *(a1 + 32) = v6;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 88, (a2 + 88));
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate((a1 + 112));
  *(a1 + 112) = a2[7];
  *(a1 + 128) = *(a2 + 16);
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a1 + 136) = *(a2 + 68);
  v9 = a2[9];
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  v10 = *(a1 + 152);
  *(a1 + 144) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  *(a1 + 160) = a2[10];
  v11 = a2[11];
  v12 = a2[12];
  v13 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v12;
  *(a1 + 208) = v13;
  *(a1 + 176) = v11;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 232, (a2 + 232));
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate((a1 + 256));
  result = a2[16];
  *(a1 + 256) = result;
  *(a1 + 272) = *(a2 + 34);
  *(a2 + 32) = 0;
  *(a2 + 33) = 0;
  *(a2 + 34) = 0;
  *(a1 + 280) = *(a2 + 140);
  return result;
}

void std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<double> &,std::__wrap_iter<geom::cut_plane_search_candidate<double> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return;
  }

  v7 = v4 >> 1;
  v8 = (a1 + 496 * (v4 >> 1));
  if (*(a2 - 16) == 1 && (*(v8 + 480) != 1 || *(v8 + 59) >= *(a2 - 24)))
  {
    return;
  }

  v9 = (a2 - 496);
  v10 = *(a2 - 496);
  v17 = *(a2 - 480);
  v16 = v10;
  v18[0] = 0;
  v27 = 0;
  if (*(a2 - 48) == 1)
  {
    std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>>(v18, a2 - 464);
  }

  v11 = *(a2 - 32);
  v29 = *(a2 - 16);
  v28 = v11;
  while (1)
  {
    v12 = v8;
    v13 = *v8;
    *(v9 + 2) = *(v8 + 2);
    *v9 = v13;
    std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>>((v9 + 2), (v8 + 2));
    if (*(v9 + 480) == *(v8 + 480))
    {
      if (*(v9 + 480))
      {
        *(v9 + 58) = *(v8 + 58);
        *(v9 + 59) = *(v8 + 59);
        if (!v7)
        {
          break;
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (*(v9 + 480))
    {
      *(v9 + 480) = 0;
LABEL_14:
      if (!v7)
      {
        break;
      }

      goto LABEL_15;
    }

    v9[29] = v8[29];
    *(v9 + 480) = 1;
    if (!v7)
    {
      break;
    }

LABEL_15:
    v7 = (v7 - 1) >> 1;
    v8 = (a1 + 496 * v7);
    v9 = v12;
    if (v29 == 1)
    {
      if (*(v8 + 480) != 1)
      {
        break;
      }

      v9 = v12;
      if (*(v8 + 59) >= *(&v28 + 1))
      {
        break;
      }
    }
  }

  v14 = v16;
  *(v12 + 2) = v17;
  *v12 = v14;
  std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>>((v12 + 2), v18);
  if (*(v12 + 480) == v29)
  {
    if (*(v12 + 480))
    {
      v12[29] = v28;
    }
  }

  else if (*(v12 + 480))
  {
    *(v12 + 480) = 0;
  }

  else
  {
    v12[29] = v28;
    *(v12 + 480) = 1;
  }

  if (v27 == 1)
  {
    v15 = &v26;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v15);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }

    v15 = &v22;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v15);
    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }
  }
}

__n128 std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v8 = *(a2 + 224);
  v9 = *(a2 + 240);
  v10 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v10;
  *(a1 + 224) = v8;
  *(a1 + 240) = v9;
  v11 = *(a2 + 288);
  v12 = *(a2 + 304);
  v13 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v13;
  *(a1 + 288) = v11;
  *(a1 + 304) = v12;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = *(a2 + 376);
  result = *(a2 + 384);
  *(a1 + 384) = result;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 376) = 0;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = 1;
  return result;
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<double>,std::__wrap_iter<geom::cut_plane_search_candidate<double> *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a4 >= 2)
  {
    v8 = *a1;
    v20 = *(a1 + 16);
    v19 = v8;
    v21[0] = 0;
    v30 = 0;
    if (*(a1 + 448) == 1)
    {
      std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>>(v21, a1 + 32);
    }

    v9 = *(a1 + 464);
    v32 = *(a1 + 480);
    v31 = v9;
    v10 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<double> &,std::__wrap_iter<geom::cut_plane_search_candidate<double> *>>(a1, a3, a4);
    v11 = v10;
    v12 = (a2 - 496);
    if ((a2 - 496) == v10)
    {
      v15 = v19;
      *(v10 + 2) = v20;
      *v10 = v15;
      std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>>((v10 + 2), v21);
      if (*(v11 + 480) == v32)
      {
        if (*(v11 + 480))
        {
          v11[29] = v31;
        }
      }

      else if (*(v11 + 480))
      {
        *(v11 + 480) = 0;
      }

      else
      {
        v11[29] = v31;
        *(v11 + 480) = 1;
      }
    }

    else
    {
      v13 = *v12;
      *(v10 + 2) = *(a2 - 480);
      *v10 = v13;
      std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>>((v10 + 2), a2 - 464);
      v14 = (a2 - 32);
      if (*(v11 + 480) == *(a2 - 16))
      {
        if (*(v11 + 480))
        {
          *(v11 + 58) = *(a2 - 32);
          *(v11 + 59) = *(a2 - 24);
        }
      }

      else if (*(v11 + 480))
      {
        *(v11 + 480) = 0;
      }

      else
      {
        v11[29] = *v14;
        *(v11 + 480) = 1;
      }

      v16 = (v11 + 31);
      v17 = v19;
      *(a2 - 480) = v20;
      *v12 = v17;
      std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>>(a2 - 464, v21);
      if (*(a2 - 16) == v32)
      {
        if (*(a2 - 16))
        {
          *(a2 - 32) = v31;
        }
      }

      else if (*(a2 - 16))
      {
        *(a2 - 16) = 0;
      }

      else
      {
        *v14 = v31;
        *(a2 - 16) = 1;
      }

      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<double> &,std::__wrap_iter<geom::cut_plane_search_candidate<double> *>>(a1, v16, a3, 0xEF7BDEF7BDEF7BDFLL * ((v16 - a1) >> 4));
    }

    if (v30 == 1)
    {
      v18 = &v29;
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v18);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v26);
      }

      v18 = &v25;
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v18);
      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      }
    }
  }
}

__int128 *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::recursive_cut_candidate_heap_comparator<double> &,std::__wrap_iter<geom::cut_plane_search_candidate<double> *>>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    a1 += 31 * v5 + 31;
    v8 = 2 * v5;
    v5 = (2 * v5) | 1;
    v9 = v8 + 2;
    if (v9 < a3 && (*(a1 + 976) != 1 || *(a1 + 480) == 1 && *(a1 + 59) < *(a1 + 121)))
    {
      a1 += 31;
      v5 = v9;
    }

    v10 = *a1;
    *(v7 + 2) = *(a1 + 2);
    *v7 = v10;
    std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>>((v7 + 2), (a1 + 2));
    if (*(v7 + 480) == *(a1 + 480))
    {
      if (*(v7 + 480))
      {
        *(v7 + 58) = *(a1 + 58);
        *(v7 + 59) = *(a1 + 59);
      }
    }

    else if (*(v7 + 480))
    {
      *(v7 + 480) = 0;
    }

    else
    {
      v7[29] = a1[29];
      *(v7 + 480) = 1;
    }
  }

  while (v5 <= v6);
  return a1;
}

double std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 416) == *(a2 + 416))
  {
    if (*(a1 + 416))
    {

      *&result = std::__memberwise_forward_assign[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>,std::tuple<geom::cluster<double>,geom::cluster<double>>,geom::cluster<double>,geom::cluster<double>,0ul,1ul>(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 416))
  {
    v8 = (a1 + 376);
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v8);
    v4 = *(a1 + 352);
    if (v4)
    {
      *(a1 + 360) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 216);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v8 = (a1 + 168);
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v8);
    v6 = *(a1 + 144);
    if (v6)
    {
      *(a1 + 152) = v6;
      operator delete(v6);
    }

    v7 = *(a1 + 8);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    *(a1 + 416) = 0;
  }

  else
  {

    *&result = std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>>(a1, a2).n128_u64[0];
  }

  return result;
}

__n128 std::__memberwise_forward_assign[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>,std::tuple<geom::cluster<double>,geom::cluster<double>>,geom::cluster<double>,geom::cluster<double>,0ul,1ul>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0uLL;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[4];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = v8;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[8];
  *(a1 + 112) = a2[7];
  *(a1 + 128) = v11;
  *(a1 + 80) = v9;
  *(a1 + 96) = v10;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 144, a2 + 9);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate((a1 + 168));
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a1 + 192) = *(a2 + 96);
  v12 = a2[13];
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  v13 = *(a1 + 216);
  *(a1 + 208) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = a2[14];
  v15 = a2[15];
  v16 = a2[17];
  *(a1 + 256) = a2[16];
  *(a1 + 272) = v16;
  *(a1 + 224) = v14;
  *(a1 + 240) = v15;
  v17 = a2[18];
  v18 = a2[19];
  v19 = a2[21];
  *(a1 + 320) = a2[20];
  *(a1 + 336) = v19;
  *(a1 + 288) = v17;
  *(a1 + 304) = v18;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 352, a2 + 22);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate((a1 + 376));
  *(a1 + 376) = *(a2 + 47);
  result = a2[24];
  *(a1 + 384) = result;
  *(a2 + 47) = 0;
  *(a2 + 48) = 0;
  *(a2 + 49) = 0;
  *(a1 + 400) = *(a2 + 200);
  return result;
}

uint64_t *std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<float>::impl::split_clusters_automatically(geom::acd<float>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(uint64_t *result, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v27 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v8 = (a4 - result) >> 1;
      v9 = v8 | 1;
      v10 = result + (v8 | 1);
      v11 = v8 + 2;
      if (v8 + 2 < a3)
      {
        v12 = *v10;
        v29 = v10[1];
        v30 = v12;
        v13 = *a2;
        v31 = &v30;
        v14 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v13 + 112), &v30, &std::piecewise_construct, &v31)[3] + 24);
        v31 = &v29;
        if (v14 < *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v13 + 112), &v29, &std::piecewise_construct, &v31)[3] + 24))
        {
          ++v10;
          v9 = v11;
        }
      }

      v15 = *v10;
      v29 = *v5;
      v30 = v15;
      v16 = *a2;
      v31 = &v30;
      v17 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v16 + 112), &v30, &std::piecewise_construct, &v31)[3] + 24);
      v31 = &v29;
      result = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v16 + 112), &v29, &std::piecewise_construct, &v31);
      if (v17 >= *(result[3] + 24))
      {
        v26 = *v5;
        do
        {
          v18 = v5;
          v5 = v10;
          *v18 = *v10;
          if (v27 < v9)
          {
            break;
          }

          v19 = (2 * v9) | 1;
          v10 = v6 + v19;
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v19;
          }

          else
          {
            v20 = *v10;
            v29 = v10[1];
            v30 = v20;
            v21 = *a2;
            v31 = &v30;
            v22 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v21 + 112), &v30, &std::piecewise_construct, &v31)[3] + 24);
            v31 = &v29;
            if (v22 >= *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v21 + 112), &v29, &std::piecewise_construct, &v31)[3] + 24))
            {
              v9 = v19;
            }

            else
            {
              ++v10;
            }
          }

          v23 = *v10;
          v29 = v26;
          v30 = v23;
          v24 = *a2;
          v31 = &v30;
          v25 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v24 + 112), &v30, &std::piecewise_construct, &v31)[3] + 24);
          v31 = &v29;
          result = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v24 + 112), &v29, &std::piecewise_construct, &v31);
        }

        while (v25 >= *(result[3] + 24));
        *v5 = v26;
      }
    }
  }

  return result;
}

unsigned int *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<float>::impl::split_clusters_automatically(geom::acd<float>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(unsigned int *a1, uint64_t *a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1;
    a1 += v6 + 1;
    v9 = 2 * v6;
    v6 = (2 * v6) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = *a1;
      v15 = a1[1];
      v16 = v11;
      v12 = *a2;
      v17 = &v16;
      v13 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v12 + 112), &v16, &std::piecewise_construct, &v17)[3] + 24);
      v17 = &v15;
      if (v13 < *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v12 + 112), &v15, &std::piecewise_construct, &v17)[3] + 24))
      {
        ++a1;
        v6 = v10;
      }
    }

    *v8 = *a1;
  }

  while (v6 <= v7);
  return a1;
}

uint64_t *std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<float>::impl::split_clusters_automatically(geom::acd<float>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = a4 - 2;
  if (a4 >= 2)
  {
    v24[1] = v7;
    v24[2] = v6;
    v24[13] = v4;
    v24[14] = v5;
    v10 = result;
    v11 = v8 >> 1;
    v12 = result + (v8 >> 1);
    v13 = (a2 - 4);
    v14 = *v12;
    v22 = *(a2 - 4);
    v23 = v14;
    v15 = *a3;
    v24[0] = &v23;
    v16 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v15 + 112), &v23, &std::piecewise_construct, v24)[3] + 24);
    v24[0] = &v22;
    result = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v15 + 112), &v22, &std::piecewise_construct, v24);
    if (v16 < *(result[3] + 24))
    {
      v17 = *v13;
      do
      {
        v18 = v12;
        *v13 = *v12;
        if (!v11)
        {
          break;
        }

        v11 = (v11 - 1) >> 1;
        v12 = v10 + v11;
        v19 = *v12;
        v22 = v17;
        v23 = v19;
        v20 = *a3;
        v24[0] = &v23;
        v21 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v20 + 112), &v23, &std::piecewise_construct, v24)[3] + 24);
        v24[0] = &v22;
        result = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<float>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v20 + 112), &v22, &std::piecewise_construct, v24);
        v13 = v18;
      }

      while (v21 < *(result[3] + 24));
      *v18 = v17;
    }
  }

  return result;
}

void std::vector<geom::cut_plane_search_candidate<float>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 336;
        std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<geom::cut_plane_search_candidate<float>>::__emplace_back_slow_path<geom::cut_plane_search_candidate<float>>(void **a1, uint64_t *a2, __n128 a3)
{
  v3 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0xC30C30C30C30C3)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 4) >= 0x61861861861861)
  {
    v7 = 0xC30C30C30C30C3;
  }

  else
  {
    v7 = v4;
  }

  v16[4] = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::cut_plane_search_candidate<float>>>(a1, v7);
  }

  v8 = 336 * v3;
  v9 = *a2;
  *(v8 + 8) = *(a2 + 2);
  *v8 = v9;
  *(v8 + 16) = 0;
  *(v8 + 304) = 0;
  if (*(a2 + 304) == 1)
  {
    std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>>(v8 + 16, (a2 + 2));
  }

  v10 = a2[40];
  *(v8 + 328) = *(a2 + 82);
  *(v8 + 320) = v10;
  v11 = a1[1];
  v12 = *a1 + v8 - v11;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::cut_plane_search_candidate<float>>,geom::cut_plane_search_candidate<float>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  a1[1] = (v8 + 336);
  v14 = a1[2];
  a1[2] = 0;
  v16[2] = v13;
  v16[3] = v14;
  v16[0] = v13;
  v16[1] = v13;
  std::__split_buffer<geom::cut_plane_search_candidate<float>>::~__split_buffer(v16);
  return v8 + 336;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::cut_plane_search_candidate<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xC30C30C30C30C4)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::cut_plane_search_candidate<float>>,geom::cut_plane_search_candidate<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2 + 16;
    do
    {
      v10 = v8 - 16;
      v9 = *(v8 - 16);
      *(a4 + 8) = *(v8 - 8);
      *a4 = v9;
      *(a4 + 16) = 0;
      *(a4 + 304) = 0;
      if (*(v8 + 288) == 1)
      {
        std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>>(a4 + 16, v8);
      }

      v11 = *(v8 + 304);
      *(a4 + 328) = *(v8 + 312);
      *(a4 + 320) = v11;
      a4 += 336;
      v8 += 336;
    }

    while (v10 + 336 != a3);
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(a1, v6);
      v6 += 336;
    }
  }
}

void std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304) == 1)
  {
    v9[3] = v2;
    v9[4] = v3;
    v9[0] = (a2 + 272);
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v9);
    v5 = *(a2 + 248);
    if (v5)
    {
      *(a2 + 256) = v5;
      operator delete(v5);
    }

    v6 = *(a2 + 168);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v9[0] = (a2 + 128);
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v9);
    v7 = *(a2 + 104);
    if (v7)
    {
      *(a2 + 112) = v7;
      operator delete(v7);
    }

    v8 = *(a2 + 24);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }
}

void **std::__split_buffer<geom::cut_plane_search_candidate<float>>::~__split_buffer(void **a1)
{
  std::__split_buffer<geom::cut_plane_search_candidate<float>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<geom::cut_plane_search_candidate<float>>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 336;
    std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<float>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<float>,0>(v4, i - 336);
  }
}

void *std::vector<geom::cut_plane_search_candidate<float>>::__emplace_back_slow_path<geom::cut_plane_search_candidate<float> const&>(void **a1, uint64_t *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xC30C30C30C30C3)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 4) >= 0x61861861861861)
  {
    v6 = 0xC30C30C30C30C3;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::cut_plane_search_candidate<float>>>(a1, v6);
  }

  v7 = 336 * v2;
  geom::cut_plane_search_candidate<float>::cut_plane_search_candidate(v7, a2);
  v8 = (v7 + 336);
  v9 = a1[1];
  v10 = (v7 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::cut_plane_search_candidate<float>>,geom::cut_plane_search_candidate<float>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<geom::cut_plane_search_candidate<float>>::~__split_buffer(v14);
  return v8;
}

uint64_t geom::cut_plane_search_candidate<float>::cut_plane_search_candidate(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 304) = 0;
  if (*(a2 + 304) == 1)
  {
    v5 = a2[3];
    *(a1 + 16) = a2[2];
    *(a1 + 24) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 32) = *(a2 + 2);
    v6 = *(a2 + 3);
    v7 = *(a2 + 4);
    v8 = *(a2 + 5);
    *(a1 + 96) = a2[12];
    *(a1 + 64) = v7;
    *(a1 + 80) = v8;
    *(a1 + 48) = v6;
    std::vector<double>::vector[abi:nn200100]((a1 + 104), a2 + 13);
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__init_with_size[abi:nn200100]<std::shared_ptr<geom::convex_mesh<float>>*,std::shared_ptr<geom::convex_mesh<float>>*>((a1 + 128), a2[16], a2[17], (a2[17] - a2[16]) >> 4);
    *(a1 + 152) = *(a2 + 76);
    v9 = a2[21];
    *(a1 + 160) = a2[20];
    *(a1 + 168) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 176) = *(a2 + 11);
    v10 = *(a2 + 12);
    v11 = *(a2 + 13);
    v12 = *(a2 + 14);
    *(a1 + 240) = a2[30];
    *(a1 + 208) = v11;
    *(a1 + 224) = v12;
    *(a1 + 192) = v10;
    std::vector<double>::vector[abi:nn200100]((a1 + 248), a2 + 31);
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__init_with_size[abi:nn200100]<std::shared_ptr<geom::convex_mesh<float>>*,std::shared_ptr<geom::convex_mesh<float>>*>((a1 + 272), a2[34], a2[35], (a2[35] - a2[34]) >> 4);
    *(a1 + 296) = *(a2 + 148);
    *(a1 + 304) = 1;
  }

  v13 = a2[40];
  *(a1 + 328) = *(a2 + 82);
  *(a1 + 320) = v13;
  return a1;
}

uint64_t *std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__init_with_size[abi:nn200100]<std::shared_ptr<geom::convex_mesh<float>>*,std::shared_ptr<geom::convex_mesh<float>>*>(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<geom::convex_mesh<float>>>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<geom::general_plane<float,(unsigned char)3>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::general_plane<float,(unsigned char)3>>>(a1, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::general_plane<float,(unsigned char)3>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void ___ZN4geom14dispatch_applyIZNS_24cluster_parallel_clipperIfE24compute_clipped_clustersEvEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke_0(uint64_t a1, unint64_t a2, double a3, uint32x4_t a4, double a5, __n128 a6, __n128 a7)
{
  v7 = *(a1 + 32);
  v8 = v7[5];
  v9 = v8[14];
  v10 = v8[15] - v9;
  v11 = v7[7];
  v12 = v7[8];
  v13 = (v11 + (v10 >> 4) - 1) / v11;
  v15 = v8 + 11;
  v14 = v8[11];
  v16 = v15[1] - v14;
  v17 = (v12 + (v16 >> 3) - 1) / v12 + v13;
  v18 = a2 / v17;
  v19 = a2 % v17;
  v20 = (v7[3] + 32 * v18);
  v21 = v19 >= v13;
  v22 = v19 - v13;
  if (v21)
  {
    v26 = v16 >> 3;
    if (v22 * v12 + v12 < v16 >> 3)
    {
      v26 = v22 * v12 + v12;
    }

    geom::cluster_parallel_clipper<float>::interior_component_work_item(v7, *v7 + 240 * a2, v20, (v14 + 8 * v22 * v12), v26 - v22 * v12, a3, a4, a5, a6, a7);
  }

  else
  {
    v23 = v10 >> 4;
    v24 = v19 * v11;
    v25 = v19 * v11 + v11;
    if (v25 >= v23)
    {
      v25 = v23;
    }

    geom::cluster_parallel_clipper<float>::boundary_component_work_item(v7, *v7 + 240 * a2, v20, (v9 + 16 * v24), v25 - v24);
  }
}

void geom::acd<float>::impl::evaluate_candidate_cut_planes<std::__wrap_iter<geom::cut_plane_search_candidate<float> *>>(std::__wrap_iter<geom::cut_plane_search_candidate<float> *>,std::__wrap_iter<geom::cut_plane_search_candidate<float> *>,geom::cluster<float> const&,geom::cluster_parallel_clipper<float> &)::{lambda(unsigned long)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = (**(a1 + 24) + 336 * a2);
  v23[0] = 0;
  v6.i64[0] = 0x7F0000007FLL;
  v6.i64[1] = 0x7F0000007FLL;
  v20 = vnegq_f32(v6);
  *&v19 = vneg_f32(0x3F0000003FLL);
  *(&v19 + 1) = 2143289344;
  v21 = v6;
  v22 = 0u;
  v14[0] = 0;
  v11 = v20;
  *&v10 = v19;
  *(&v10 + 1) = 2143289344;
  v12 = v6;
  v13 = 0u;
  v26[0] = 0uLL;
  v17 = 0;
  v18 = 0;
  v26[3] = v6;
  v26[4] = 0u;
  v26[1] = v19;
  v26[2] = v20;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v23[1] = 0;
  v24 = 0uLL;
  memset(v25, 0, sizeof(v25));
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v9[0] = 0;
  v9[1] = 0;
  v37 = v6;
  v38 = 0u;
  v35 = v10;
  v36 = v20;
  v39 = 0;
  __p = 0;
  v41 = 0;
  v42 = 0;
  v14[1] = 0;
  v15 = 0uLL;
  memset(v16, 0, sizeof(v16));
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  std::optional<std::tuple<geom::cluster<float>,geom::cluster<float>>>::operator=[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>,void>(&v5[1], v26);
  v45 = v43;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v45);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  v45 = v31;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v45);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (*(&v26[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v26[0] + 1));
  }

  v45 = v16;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v45);
  v9[0] = v25;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v9);
  if (v23[1])
  {
    *&v24 = v23[1];
    operator delete(v23[1]);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  geom::cluster_parallel_clipper<float>::get_split_clusters(*(a1 + 8), v5 + 1, v5 + 10, a2);
  v7 = geom::acd<float>::impl::cut_plane_cost(v4, *(a1 + 16), &v5[1], &v5[10]);
  if ((v5[20].n128_u8[8] & 1) == 0)
  {
    v5[20].n128_u8[8] = 1;
  }

  v5[20].n128_f32[0] = v7;
  v5[20].n128_u32[1] = v8;
}

uint64_t std::optional<std::tuple<geom::cluster<float>,geom::cluster<float>>>::operator=[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 288) == 1)
  {
    std::__memberwise_forward_assign[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>,std::tuple<geom::cluster<float>,geom::cluster<float>>,geom::cluster<float>,geom::cluster<float>,0ul,1ul>(a1, a2);
  }

  else
  {
    std::__optional_storage_base<std::tuple<geom::cluster<float>,geom::cluster<float>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<float>,geom::cluster<float>>>(a1, a2);
  }

  return a1;
}

uint64_t *std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<double>::impl::split_clusters_automatically(geom::acd<double>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(uint64_t *result, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v27 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v8 = (a4 - result) >> 1;
      v9 = v8 | 1;
      v10 = result + (v8 | 1);
      v11 = v8 + 2;
      if (v8 + 2 < a3)
      {
        v12 = *v10;
        v29 = v10[1];
        v30 = v12;
        v13 = *a2;
        v31 = &v30;
        v14 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v13 + 144), &v30, &std::piecewise_construct, &v31)[3] + 32);
        v31 = &v29;
        if (v14 < *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v13 + 144), &v29, &std::piecewise_construct, &v31)[3] + 32))
        {
          ++v10;
          v9 = v11;
        }
      }

      v15 = *v10;
      v29 = *v5;
      v30 = v15;
      v16 = *a2;
      v31 = &v30;
      v17 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v16 + 144), &v30, &std::piecewise_construct, &v31)[3] + 32);
      v31 = &v29;
      result = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v16 + 144), &v29, &std::piecewise_construct, &v31);
      if (v17 >= *(result[3] + 32))
      {
        v26 = *v5;
        do
        {
          v18 = v5;
          v5 = v10;
          *v18 = *v10;
          if (v27 < v9)
          {
            break;
          }

          v19 = (2 * v9) | 1;
          v10 = v6 + v19;
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v19;
          }

          else
          {
            v20 = *v10;
            v29 = v10[1];
            v30 = v20;
            v21 = *a2;
            v31 = &v30;
            v22 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v21 + 144), &v30, &std::piecewise_construct, &v31)[3] + 32);
            v31 = &v29;
            if (v22 >= *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v21 + 144), &v29, &std::piecewise_construct, &v31)[3] + 32))
            {
              v9 = v19;
            }

            else
            {
              ++v10;
            }
          }

          v23 = *v10;
          v29 = v26;
          v30 = v23;
          v24 = *a2;
          v31 = &v30;
          v25 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v24 + 144), &v30, &std::piecewise_construct, &v31)[3] + 32);
          v31 = &v29;
          result = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v24 + 144), &v29, &std::piecewise_construct, &v31);
        }

        while (v25 >= *(result[3] + 32));
        *v5 = v26;
      }
    }
  }

  return result;
}

unsigned int *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<double>::impl::split_clusters_automatically(geom::acd<double>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(unsigned int *a1, uint64_t *a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1;
    a1 += v6 + 1;
    v9 = 2 * v6;
    v6 = (2 * v6) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = *a1;
      v15 = a1[1];
      v16 = v11;
      v12 = *a2;
      v17 = &v16;
      v13 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v12 + 144), &v16, &std::piecewise_construct, &v17)[3] + 32);
      v17 = &v15;
      if (v13 < *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v12 + 144), &v15, &std::piecewise_construct, &v17)[3] + 32))
      {
        ++a1;
        v6 = v10;
      }
    }

    *v8 = *a1;
  }

  while (v6 <= v7);
  return a1;
}

uint64_t *std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geom::acd<double>::impl::split_clusters_automatically(geom::acd<double>::parameters const&)::{lambda(unsigned int,unsigned int)#1} &,std::__wrap_iter<unsigned int *>>(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = a4 - 2;
  if (a4 >= 2)
  {
    v24[1] = v7;
    v24[2] = v6;
    v24[13] = v4;
    v24[14] = v5;
    v10 = result;
    v11 = v8 >> 1;
    v12 = result + (v8 >> 1);
    v13 = (a2 - 4);
    v14 = *v12;
    v22 = *(a2 - 4);
    v23 = v14;
    v15 = *a3;
    v24[0] = &v23;
    v16 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v15 + 144), &v23, &std::piecewise_construct, v24)[3] + 32);
    v24[0] = &v22;
    result = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v15 + 144), &v22, &std::piecewise_construct, v24);
    if (v16 < *(result[3] + 32))
    {
      v17 = *v13;
      do
      {
        v18 = v12;
        *v13 = *v12;
        if (!v11)
        {
          break;
        }

        v11 = (v11 - 1) >> 1;
        v12 = v10 + v11;
        v19 = *v12;
        v22 = v17;
        v23 = v19;
        v20 = *a3;
        v24[0] = &v23;
        v21 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v20 + 144), &v23, &std::piecewise_construct, v24)[3] + 32);
        v24[0] = &v22;
        result = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<geom::cluster<double>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v20 + 144), &v22, &std::piecewise_construct, v24);
        v13 = v18;
      }

      while (v21 < *(result[3] + 32));
      *v18 = v17;
    }
  }

  return result;
}

void std::vector<geom::cut_plane_search_candidate<double>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 496;
        std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<double>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<double>,0>(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<geom::cut_plane_search_candidate<double>>::__emplace_back_slow_path<geom::cut_plane_search_candidate<double>>(void **a1, __int128 *a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x84210842108421)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 4) >= 0x42108421084210)
  {
    v6 = 0x84210842108421;
  }

  else
  {
    v6 = v3;
  }

  v15[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::cut_plane_search_candidate<double>>>(a1, v6);
  }

  v7 = 496 * v2;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(v7 + 32) = 0;
  *(v7 + 448) = 0;
  if (*(a2 + 448) == 1)
  {
    std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>>(v7 + 32, (a2 + 2));
  }

  v9 = a2[29];
  *(v7 + 480) = *(a2 + 60);
  *(v7 + 464) = v9;
  v10 = a1[1];
  v11 = *a1 + v7 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::cut_plane_search_candidate<double>>,geom::cut_plane_search_candidate<double>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  a1[1] = (v7 + 496);
  v13 = a1[2];
  a1[2] = 0;
  v15[2] = v12;
  v15[3] = v13;
  v15[0] = v12;
  v15[1] = v12;
  std::__split_buffer<geom::cut_plane_search_candidate<double>>::~__split_buffer(v15);
  return v7 + 496;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::cut_plane_search_candidate<double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x84210842108422)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::cut_plane_search_candidate<double>>,geom::cut_plane_search_candidate<double>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2 + 32;
    do
    {
      v9 = *(v8 - 32);
      *(a4 + 16) = *(v8 - 16);
      *a4 = v9;
      *(a4 + 32) = 0;
      *(a4 + 448) = 0;
      if (*(v8 + 416) == 1)
      {
        std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>>(a4 + 32, v8);
      }

      v10 = v8 - 32;
      v11 = *(v8 + 432);
      *(a4 + 480) = *(v8 + 448);
      *(a4 + 464) = v11;
      a4 += 496;
      v8 += 496;
    }

    while (v10 + 496 != a3);
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<double>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<double>,0>(a1, v6);
      v6 += 496;
    }
  }
}

void std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<double>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<double>,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 448) == 1)
  {
    v9[3] = v2;
    v9[4] = v3;
    v9[0] = (a2 + 408);
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v9);
    v5 = *(a2 + 384);
    if (v5)
    {
      *(a2 + 392) = v5;
      operator delete(v5);
    }

    v6 = *(a2 + 248);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v9[0] = (a2 + 200);
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](v9);
    v7 = *(a2 + 176);
    if (v7)
    {
      *(a2 + 184) = v7;
      operator delete(v7);
    }

    v8 = *(a2 + 40);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }
}

void **std::__split_buffer<geom::cut_plane_search_candidate<double>>::~__split_buffer(void **a1)
{
  std::__split_buffer<geom::cut_plane_search_candidate<double>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<geom::cut_plane_search_candidate<double>>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 496;
    std::allocator_traits<std::allocator<geom::cut_plane_search_candidate<double>>>::destroy[abi:nn200100]<geom::cut_plane_search_candidate<double>,0>(v4, i - 496);
  }
}

void *std::vector<geom::cut_plane_search_candidate<double>>::__emplace_back_slow_path<geom::cut_plane_search_candidate<double> const&>(void **a1, __int128 *a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x84210842108421)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 4) >= 0x42108421084210)
  {
    v6 = 0x84210842108421;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::cut_plane_search_candidate<double>>>(a1, v6);
  }

  v7 = 496 * v2;
  geom::cut_plane_search_candidate<double>::cut_plane_search_candidate(v7, a2);
  v8 = (v7 + 496);
  v9 = a1[1];
  v10 = (v7 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::cut_plane_search_candidate<double>>,geom::cut_plane_search_candidate<double>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<geom::cut_plane_search_candidate<double>>::~__split_buffer(v14);
  return v8;
}

uint64_t geom::cut_plane_search_candidate<double>::cut_plane_search_candidate(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 32) = 0;
  *(a1 + 448) = 0;
  if (*(a2 + 448) == 1)
  {
    v5 = *(a2 + 5);
    *(a1 + 32) = *(a2 + 4);
    *(a1 + 40) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = a2[3];
    v7 = a2[4];
    v8 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v8;
    *(a1 + 48) = v6;
    *(a1 + 64) = v7;
    v9 = a2[7];
    v10 = a2[8];
    v11 = a2[10];
    *(a1 + 144) = a2[9];
    *(a1 + 160) = v11;
    *(a1 + 112) = v9;
    *(a1 + 128) = v10;
    std::vector<double>::vector[abi:nn200100]((a1 + 176), a2 + 22);
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__init_with_size[abi:nn200100]<std::shared_ptr<geom::convex_mesh<float>>*,std::shared_ptr<geom::convex_mesh<float>>*>((a1 + 200), *(a2 + 25), *(a2 + 26), (*(a2 + 26) - *(a2 + 25)) >> 4);
    *(a1 + 224) = *(a2 + 112);
    v12 = *(a2 + 31);
    *(a1 + 240) = *(a2 + 30);
    *(a1 + 248) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = a2[16];
    v14 = a2[17];
    v15 = a2[19];
    *(a1 + 288) = a2[18];
    *(a1 + 304) = v15;
    *(a1 + 256) = v13;
    *(a1 + 272) = v14;
    v16 = a2[20];
    v17 = a2[21];
    v18 = a2[23];
    *(a1 + 352) = a2[22];
    *(a1 + 368) = v18;
    *(a1 + 320) = v16;
    *(a1 + 336) = v17;
    std::vector<double>::vector[abi:nn200100]((a1 + 384), a2 + 48);
    *(a1 + 408) = 0;
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__init_with_size[abi:nn200100]<std::shared_ptr<geom::convex_mesh<float>>*,std::shared_ptr<geom::convex_mesh<float>>*>((a1 + 408), *(a2 + 51), *(a2 + 52), (*(a2 + 52) - *(a2 + 51)) >> 4);
    *(a1 + 432) = *(a2 + 216);
    *(a1 + 448) = 1;
  }

  v19 = a2[29];
  *(a1 + 480) = *(a2 + 60);
  *(a1 + 464) = v19;
  return a1;
}

void std::vector<geom::general_plane<double,(unsigned char)3>>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::general_plane<double,(unsigned char)3>>>(a1, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::general_plane<double,(unsigned char)3>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void ___ZN4geom14dispatch_applyIZNS_24cluster_parallel_clipperIdE24compute_clipped_clustersEvEUlmE_Lb1EEEvmP16dispatch_queue_sT__block_invoke_0(uint64_t a1, unint64_t a2, double a3, double a4, double a5, float64x2_t a6)
{
  v6 = *(a1 + 32);
  v7 = v6[5];
  v8 = v7[21];
  v9 = v7[22] - v8;
  v10 = v6[7];
  v11 = v6[8];
  v12 = (v10 + (v9 >> 4) - 1) / v10;
  v14 = v7 + 18;
  v13 = v7[18];
  v15 = v14[1] - v13;
  v16 = (v11 + (v15 >> 3) - 1) / v11 + v12;
  v17 = a2 / v16;
  v18 = a2 % v16;
  v19 = (v6[3] + 48 * v17);
  v20 = v18 >= v12;
  v21 = v18 - v12;
  if (v20)
  {
    v25 = v15 >> 3;
    if (v21 * v11 + v11 < v15 >> 3)
    {
      v25 = v21 * v11 + v11;
    }

    geom::cluster_parallel_clipper<double>::interior_component_work_item(v6, *v6 + 304 * a2, v19, (v13 + 8 * v21 * v11), v25 - v21 * v11, a3, a4, a5, a6);
  }

  else
  {
    v22 = v9 >> 4;
    v23 = v18 * v10;
    v24 = v18 * v10 + v10;
    if (v24 >= v22)
    {
      v24 = v22;
    }

    geom::cluster_parallel_clipper<double>::boundary_component_work_item(v6, *v6 + 304 * a2, v19, (v8 + 16 * v23), v24 - v23);
  }
}

void geom::acd<double>::impl::evaluate_candidate_cut_planes<std::__wrap_iter<geom::cut_plane_search_candidate<double> *>>(std::__wrap_iter<geom::cut_plane_search_candidate<double> *>,std::__wrap_iter<geom::cut_plane_search_candidate<double> *>,geom::cluster<double> const&,geom::cluster_parallel_clipper<double> &)::{lambda(unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, double a3, double a4, double a5, __n128 a6, double a7, __n128 a8)
{
  v66 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = **(a1 + 24) + 496 * a2;
  v44 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = vdupq_n_s64(0x7FF8000000000000uLL);
  v33 = 0u;
  *&v33 = 0x7FF8000000000000;
  a6.n128_u64[0] = 0x7FF0000000000000;
  v34 = vdupq_n_s64(0x7FF0000000000000uLL);
  v35 = a6;
  a8.n128_u64[0] = 0xFFF0000000000000;
  v36 = vdupq_n_s64(0xFFF0000000000000);
  v37 = a8;
  LOWORD(v44) = 0;
  v29 = 0u;
  v24 = 0u;
  v22 = a8;
  v23 = 0u;
  v17 = v32;
  v18 = 0x7FF8000000000000uLL;
  v19 = v34;
  v20 = a6;
  v21 = v36;
  LOWORD(v29) = 0;
  v45[0] = 0uLL;
  v30 = 0;
  v31 = 0;
  v45[3] = v34;
  v45[4] = a6;
  v45[1] = v32;
  v45[2] = v33;
  memset(&v45[7], 0, 32);
  v45[5] = v36;
  v45[6] = a8;
  v47 = 0;
  v46 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  memset(v43, 0, sizeof(v43));
  v48 = 0;
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  v52 = 0;
  v51 = 0;
  v15 = 0;
  v16 = 0;
  v55 = v34;
  v56 = a6;
  v53 = v32;
  v54 = 0x7FF8000000000000uLL;
  v59 = 0u;
  v60 = 0u;
  v57 = v36;
  v58 = a8;
  v62 = 0;
  __p = 0;
  v25 = 0;
  v26 = 0;
  v63 = 0;
  memset(v64, 0, sizeof(v64));
  v27 = 0;
  memset(v28, 0, sizeof(v28));
  v65 = 0;
  std::optional<std::tuple<geom::cluster<double>,geom::cluster<double>>>::operator=[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>,void>(v11 + 32, v45);
  v14 = v64;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v14);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
  }

  v14 = v49;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v14);
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (*(&v45[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v45[0] + 1));
  }

  v14 = v28;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v14);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  v15 = v43;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v15);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  geom::cluster_parallel_clipper<double>::get_split_clusters(*(a1 + 8), (v11 + 32), (v11 + 240), a2);
  v12 = geom::acd<double>::impl::cut_plane_cost(v10, *(a1 + 16), v11 + 32, v11 + 240);
  if ((*(v11 + 480) & 1) == 0)
  {
    *(v11 + 480) = 1;
  }

  *(v11 + 464) = v12;
  *(v11 + 472) = v13;
}

uint64_t std::optional<std::tuple<geom::cluster<double>,geom::cluster<double>>>::operator=[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>,void>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 416) == 1)
  {
    std::__memberwise_forward_assign[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>,std::tuple<geom::cluster<double>,geom::cluster<double>>,geom::cluster<double>,geom::cluster<double>,0ul,1ul>(a1, a2);
  }

  else
  {
    std::__optional_storage_base<std::tuple<geom::cluster<double>,geom::cluster<double>>,false>::__construct[abi:nn200100]<std::tuple<geom::cluster<double>,geom::cluster<double>>>(a1, a2);
  }

  return a1;
}

void *geom_create_collection_f_alloc()
{
  result = geom_collection_f_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_f()
{
  result = geom_collection_f_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_d_alloc()
{
  result = geom_collection_d_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_d()
{
  result = geom_collection_d_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_u16_alloc()
{
  result = geom_collection_u16_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_u16()
{
  result = geom_collection_u16_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_u_alloc()
{
  result = geom_collection_u_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_u()
{
  result = geom_collection_u_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_u64_alloc()
{
  result = geom_collection_u64_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_u64()
{
  result = geom_collection_u64_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_i_alloc()
{
  result = geom_collection_i_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_i()
{
  result = geom_collection_i_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_i8_alloc()
{
  result = geom_collection_i8_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_i8()
{
  result = geom_collection_i8_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void geom_collection_resize_i8(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) - v2;
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    std::vector<unsigned char>::__append((a1 + 16), v5);
  }

  else if (!v4)
  {
    *(a1 + 24) = v2 + a2;
  }
}

void *geom_create_collection_2f_alloc()
{
  result = geom_collection_2f_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_2f()
{
  result = geom_collection_2f_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_2d_alloc()
{
  result = geom_collection_2d_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_2d()
{
  result = geom_collection_2d_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_3f_alloc()
{
  result = geom_collection_3f_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_3f()
{
  result = geom_collection_3f_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_3d_alloc()
{
  result = geom_collection_3d_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_3d()
{
  result = geom_collection_3d_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_4f_alloc()
{
  result = geom_collection_4f_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_4f()
{
  result = geom_collection_4f_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_4d_alloc()
{
  result = geom_collection_4d_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *geom_create_collection_4d()
{
  result = geom_collection_4d_obj_alloc();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

float geom::polyhedron_volume_3<float,unsigned int const*>(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, unsigned int *a13)
{
  if (a12 == a13)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = 0;
    v14 = 0.0;
    do
    {
      v15 = *a12;
      v16 = 0uLL;
      v17 = 0uLL;
      if (v15 > v13)
      {
        v18 = (a10 + 4 * v13);
        v19 = 1;
        v20 = v15 - v13;
        do
        {
          v21 = *v18++;
          v22 = *(a1 + 16 * v21);
          v23 = *(a1 + 16 * *(a10 + 4 * (v19 % (v15 - v13) + v13)));
          v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), vnegq_f32(v22)), v23, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
          a8 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
          v17 = vaddq_f32(v17, a8);
          v16 = vaddq_f32(v16, v22);
          ++v19;
          --v20;
        }

        while (v20);
      }

      v25 = vmulq_f32(v17, v17);
      v25.f32[0] = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
      if (fabsf(v25.f32[0]) > 0.00001)
      {
        a8.f32[0] = (v15 - v13);
        v26 = vdivq_f32(v16, vdupq_lane_s32(*a8.f32, 0));
        a8 = vdupq_lane_s32(*v25.f32, 0);
        v27 = vmulq_f32(v26, vdivq_f32(v17, a8));
        v14 = v14 + ((v27.f32[2] + vaddv_f32(*v27.f32)) * (v25.f32[0] * 0.5));
      }

      ++a12;
      v13 = v15;
    }

    while (a12 != a13);
  }

  return v14 / 3.0;
}

double geom::polyhedron_volume_3<double,unsigned int const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  if (a5 == a6)
  {
    v7 = 0.0;
  }

  else
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      v8 = *a5;
      v9 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      if (v8 > v6)
      {
        v13 = (a3 + 4 * v6);
        v14 = 1;
        v15 = v8 - v6;
        do
        {
          v16 = *v13++;
          v17 = (a1 + 32 * v16);
          v18 = *v17;
          v19 = v17[1];
          v20 = (a1 + 32 * *(a3 + 4 * (v14 % (v8 - v6) + v6)));
          v21 = v20[1];
          v22.f64[0] = v19.f64[0];
          *&v23.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v19), *v20, 1), v21, v18, 1);
          v21.f64[1] = v20->f64[0];
          v22.f64[1] = v18.f64[0];
          v24 = vmlaq_f64(vmulq_f64(v21, vnegq_f64(v18)), *v20, v22);
          *&v23.f64[1] = v24.i64[0];
          v10 = vaddq_f64(v10, v19);
          v12 = vaddq_f64(v12, vdupq_laneq_s64(v24, 1));
          v11 = vaddq_f64(v11, v23);
          v9 = vaddq_f64(v9, v18);
          ++v14;
          --v15;
        }

        while (v15);
      }

      v26 = vmulq_f64(v12, v12);
      v25 = vmulq_f64(v11, v11);
      v26.f64[0] = sqrt(v26.f64[0] + vaddvq_f64(v25));
      if (fabs(v26.f64[0]) > 0.000001)
      {
        v25.f64[0] = (v8 - v6);
        v7 = v7 + (vmulq_f64(vdivq_f64(v10, v25), vdivq_f64(v12, v26)).f64[0] + vaddvq_f64(vmulq_f64(vdivq_f64(v9, vdupq_lane_s64(*&v25.f64[0], 0)), vdivq_f64(v11, vdupq_lane_s64(*&v26.f64[0], 0))))) * (v26.f64[0] * 0.5);
      }

      ++a5;
      v6 = v8;
    }

    while (a5 != a6);
  }

  return v7 / 3.0;
}

double geom::polyhedron_surface_area_3<float,unsigned int const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  if (a5 == a6)
  {
    return 0.0;
  }

  v6 = 0;
  result = 0.0;
  do
  {
    v8 = *a5;
    v9 = 0uLL;
    if (v8 > v6)
    {
      v10 = (a3 + 4 * v6);
      v11 = 1;
      v12 = v8 - v6;
      do
      {
        v13 = *v10++;
        v14 = *(a1 + 16 * *(a3 + 4 * (v11 % (v8 - v6) + v6)));
        v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vnegq_f32(*(a1 + 16 * v13))), v14, vextq_s8(vuzp1q_s32(*(a1 + 16 * v13), *(a1 + 16 * v13)), *(a1 + 16 * v13), 0xCuLL));
        v9 = vaddq_f32(v9, vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL));
        ++v11;
        --v12;
      }

      while (v12);
    }

    v16 = vmulq_f32(v9, v9);
    *&result = *&result + sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
    ++a5;
    v6 = v8;
  }

  while (a5 != a6);
  *&result = *&result * 0.5;
  return result;
}

double geom::polyhedron_surface_area_3<double,unsigned int const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  if (a5 == a6)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = *a5;
    v9 = 0uLL;
    v10 = 0uLL;
    if (v8 > v6)
    {
      v11 = (a3 + 4 * v6);
      v12 = 1;
      v13 = v8 - v6;
      do
      {
        v14 = *v11++;
        v15 = (a1 + 32 * v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = (a1 + 32 * *(a3 + 4 * (v12 % (v8 - v6) + v6)));
        v19 = v18[1];
        *&v20.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v17), *v18, 1), v19, v16, 1);
        v19.f64[1] = v18->f64[0];
        v17.f64[1] = v16.f64[0];
        v21 = vmlaq_f64(vmulq_f64(v19, vnegq_f64(v16)), *v18, v17);
        *&v20.f64[1] = v21.i64[0];
        v10 = vaddq_f64(v10, vdupq_laneq_s64(v21, 1));
        v9 = vaddq_f64(v9, v20);
        ++v12;
        --v13;
      }

      while (v13);
    }

    v7 = v7 + sqrt(vmulq_f64(v10, v10).f64[0] + vaddvq_f64(vmulq_f64(v9, v9)));
    ++a5;
    v6 = v8;
  }

  while (a5 != a6);
  return v7 * 0.5;
}

float geom::triangle_mesh_volume_3<float>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 / 3))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0.0;
    __asm { FMOV            V2.4S, #3.0 }

    do
    {
      v12 = 0uLL;
      v13 = 0uLL;
      if (v5 <= 0xFFFFFFFC)
      {
        v14 = 0;
        do
        {
          v15 = *(a3 + 4 * v5 + 4 * v14);
          v16 = v14 + 1;
          if (v14 == 2)
          {
            v17 = 0;
          }

          else
          {
            v17 = v14 + 1;
          }

          v18 = *(a1 + 16 * v15);
          v19 = *(a1 + 16 * *(a3 + 4 * (v17 + v5)));
          v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v18)), v19, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
          v13 = vaddq_f32(v13, vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL));
          v12 = vaddq_f32(v12, v18);
          v14 = v16;
        }

        while (v16 != 3);
      }

      v21 = vmulq_f32(v13, v13);
      v21.f32[0] = sqrtf(v21.f32[2] + vaddv_f32(*v21.f32));
      if (fabsf(v21.f32[0]) > 0.00001)
      {
        v22 = vmulq_f32(vdivq_f32(v12, _Q2), vdivq_f32(v13, vdupq_lane_s32(*v21.f32, 0)));
        v6 = v6 + ((v22.f32[2] + vaddv_f32(*v22.f32)) * (v21.f32[0] * 0.5));
      }

      v5 += 3;
      ++v4;
    }

    while (v4 != (a4 / 3));
  }

  else
  {
    v6 = 0.0;
  }

  return v6 / 3.0;
}

double geom::triangle_mesh_volume_3<double>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 / 3))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0.0;
    __asm { FMOV            V2.2D, #3.0 }

    do
    {
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      if (v5 <= 0xFFFFFFFC)
      {
        v16 = 0;
        do
        {
          v17 = *(a3 + 4 * v5 + 4 * v16);
          v18 = v16 + 1;
          if (v16 == 2)
          {
            v19 = 0;
          }

          else
          {
            v19 = v16 + 1;
          }

          v20 = (a1 + 32 * v17);
          v21 = v20[1];
          v22 = (a1 + 32 * *(a3 + 4 * (v19 + v5)));
          v23 = v22[1];
          v24.f64[0] = v20[1].f64[0];
          v24.f64[1] = v20->f64[0];
          *&v25.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v21), *v22, 1), v23, *v20, 1);
          v23.f64[1] = v22->f64[0];
          v26 = vmlaq_f64(vmulq_f64(v23, vnegq_f64(*v20)), *v22, v24);
          *&v25.f64[1] = v26.i64[0];
          v13 = vaddq_f64(v13, v21);
          v14 = vaddq_f64(v14, v25);
          v15 = vaddq_f64(v15, vdupq_laneq_s64(v26, 1));
          v12 = vaddq_f64(v12, *v20);
          v16 = v18;
        }

        while (v18 != 3);
      }

      v27 = vmulq_f64(v15, v15);
      v27.f64[0] = sqrt(v27.f64[0] + vaddvq_f64(vmulq_f64(v14, v14)));
      if (fabs(v27.f64[0]) > 0.000001)
      {
        v6 = v6 + (vmulq_f64(vdivq_f64(v13, _Q2), vdivq_f64(v15, v27)).f64[0] + vaddvq_f64(vmulq_f64(vdivq_f64(v12, _Q2), vdivq_f64(v14, vdupq_lane_s64(*&v27.f64[0], 0))))) * (v27.f64[0] * 0.5);
      }

      v5 += 3;
      ++v4;
    }

    while (v4 != (a4 / 3));
  }

  else
  {
    v6 = 0.0;
  }

  return v6 / 3.0;
}

double geom::triangle_mesh_surface_area_3<float>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!(a4 / 3))
  {
    return 0.0;
  }

  v4 = 0;
  v5 = 0;
  result = 0.0;
  do
  {
    v7 = 0uLL;
    if (v5 <= 0xFFFFFFFC)
    {
      v8 = 0;
      do
      {
        v9 = *(a3 + 4 * v5 + 4 * v8);
        v10 = v8 + 1;
        if (v8 == 2)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 + 1;
        }

        v12 = *(a1 + 16 * *(a3 + 4 * (v11 + v5)));
        v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(*(a1 + 16 * v9))), v12, vextq_s8(vuzp1q_s32(*(a1 + 16 * v9), *(a1 + 16 * v9)), *(a1 + 16 * v9), 0xCuLL));
        v7 = vaddq_f32(v7, vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL));
        v8 = v10;
      }

      while (v10 != 3);
    }

    v5 += 3;
    v14 = vmulq_f32(v7, v7);
    *&result = *&result + sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
    ++v4;
  }

  while (v4 != (a4 / 3));
  *&result = *&result * 0.5;
  return result;
}

double geom::triangle_mesh_surface_area_3<double>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!(a4 / 3))
  {
    return 0.0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0.0;
  do
  {
    v7 = 0uLL;
    v8 = 0uLL;
    if (v5 <= 0xFFFFFFFC)
    {
      v9 = 0;
      do
      {
        v10 = *(a3 + 4 * v5 + 4 * v9);
        v11 = v9 + 1;
        if (v9 == 2)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 + 1;
        }

        v13 = (a1 + 32 * v10);
        v14 = v13[1];
        v15 = (a1 + 32 * *(a3 + 4 * (v12 + v5)));
        v16.f64[0] = v15[1].f64[0];
        v16.f64[1] = v15->f64[0];
        v17 = vnegq_f64(v14);
        v14.f64[1] = v13->f64[0];
        *&v17.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(v17, *v15, 1), v15[1], *v13, 1);
        v18 = vmlaq_f64(vmulq_f64(v16, vnegq_f64(*v13)), *v15, v14);
        *&v17.f64[1] = v18.i64[0];
        v7 = vaddq_f64(v7, v17);
        v8 = vaddq_f64(v8, vdupq_laneq_s64(v18, 1));
        v9 = v11;
      }

      while (v11 != 3);
    }

    v5 += 3;
    v6 = v6 + sqrt(vmulq_f64(v8, v8).f64[0] + vaddvq_f64(vmulq_f64(v7, v7)));
    ++v4;
  }

  while (v4 != (a4 / 3));
  return v6 * 0.5;
}

float geom_polyhedron_volume_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, double a6, double a7, double a8, double a9, double a10, double a11, float32x4_t a12)
{
  v13 = &a5[a3];
  if (a3)
  {
    v14 = *(v13 - 1);
  }

  else
  {
    v14 = 0;
  }

  return geom::polyhedron_volume_3<float,unsigned int const*>(a2, a6, a7, a8, a9, a10, a11, a12, a1, a4, v14, a5, v13);
}

double geom_polyhedron_volume_3d(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v6 = &a5[a3];
  if (a3)
  {
    v7 = *(v6 - 1);
  }

  else
  {
    v7 = 0;
  }

  return geom::polyhedron_volume_3<double,unsigned int const*>(a2, a1, a4, v7, a5, v6);
}

double geom_polyhedron_surface_area_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v6 = &a5[a3];
  if (a3)
  {
    v7 = *(v6 - 1);
  }

  else
  {
    v7 = 0;
  }

  return geom::polyhedron_surface_area_3<float,unsigned int const*>(a2, a1, a4, v7, a5, v6);
}

double geom_polyhedron_surface_area_3d(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v6 = &a5[a3];
  if (a3)
  {
    v7 = *(v6 - 1);
  }

  else
  {
    v7 = 0;
  }

  return geom::polyhedron_surface_area_3<double,unsigned int const*>(a2, a1, a4, v7, a5, v6);
}

uint64_t geom_exact_winding_number_3f_obj_alloc()
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_exact_winding_number_3d_obj_alloc()
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_approximate_winding_number_3f_obj_alloc()
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_approximate_winding_number_3d_obj_alloc()
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_collection_f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 40);
}

uint64_t geom_collection_d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 40);
}

uint64_t geom_collection_i_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 40);
}

uint64_t geom_collection_i8_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 40);
}

uint64_t geom_collection_u16_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 40);
}

uint64_t geom_collection_u_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 40);
}

uint64_t geom_collection_u64_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 40);
}

uint64_t geom_collection_2f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 40);
}

uint64_t geom_collection_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 40);
}

uint64_t geom_collection_4f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 40);
}

uint64_t geom_collection_2d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 40);
}

uint64_t geom_collection_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 40);
}

uint64_t geom_collection_4d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 40);
}

uint64_t geom_bvh_2f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 120);
}

uint64_t geom_bvh_2d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 120);
}

uint64_t geom_bvh_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 120);
}

uint64_t geom_bvh_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 120);
}

uint64_t geom_bvh_create_opt_2f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 56);
}

uint64_t geom_bvh_create_opt_2d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 56);
}

uint64_t geom_bvh_create_opt_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 56);
}

uint64_t geom_bvh_create_opt_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 56);
}

uint64_t geom_triangle_mesh_bvh_3f_obj_alloc()
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 192);
}

uint64_t geom_triangle_mesh_bvh_3d_obj_alloc()
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 192);
}

uint64_t geom_bezier_curve_bvh_2f_obj_alloc()
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 168);
}

uint64_t geom_bezier_curve_bvh_2d_obj_alloc()
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 168);
}

uint64_t geom_kd_tree_2f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 96);
}

uint64_t geom_kd_tree_2d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 96);
}

uint64_t geom_kd_tree_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 96);
}

uint64_t geom_kd_tree_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 96);
}

uint64_t geom_kd_tree_create_opt_2f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_kd_tree_create_opt_2d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_kd_tree_create_opt_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_kd_tree_create_opt_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_ddg_evaluator_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 80);
}

uint64_t geom_ddg_evaluator_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 80);
}

uint64_t geom_sparse_linear_solver_f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 272);
}

uint64_t geom_sparse_linear_solver_d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 272);
}

uint64_t geom_approximate_convex_decomposition_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_approximate_convex_decomposition_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_approximate_convex_decomposition_opt_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 32);
}

uint64_t geom_approximate_convex_decomposition_opt_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 48);
}

uint64_t geom_marching_squares_opt_2f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_marching_squares_opt_2d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_simplify_triangle_mesh_opt_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 152);
}

uint64_t geom_simplify_triangle_mesh_opt_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 152);
}

uint64_t geom_refine_triangle_mesh_opt_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 136);
}

uint64_t geom_refine_triangle_mesh_opt_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 136);
}

uint64_t geom_interpolating_curve_1f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 216);
}

uint64_t geom_interpolating_curve_2f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 216);
}

uint64_t geom_interpolating_curve_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 216);
}

uint64_t geom_interpolating_curve_4f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 216);
}

uint64_t geom_interpolating_curve_1d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 232);
}

uint64_t geom_interpolating_curve_2d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 232);
}

uint64_t geom_interpolating_curve_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 232);
}

uint64_t geom_interpolating_curve_4d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 232);
}

uint64_t geom_inset_evaluator_2f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 232);
}

uint64_t geom_inset_evaluator_2d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 256);
}

uint64_t geom_arap_deformer_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 440);
}

uint64_t geom_arap_deformer_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 440);
}

uint64_t geom_point_cloud_laplacian_create_opt_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_point_cloud_laplacian_3f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 72);
}

uint64_t geom_point_cloud_laplacian_create_opt_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_point_cloud_laplacian_3d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 72);
}

uint64_t geom_quadtree_create_opt_f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_quadtree_f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 248);
}

uint64_t geom_quadtree_create_opt_d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_quadtree_d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 288);
}

uint64_t geom_octree_create_opt_f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_octree_f_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 288);
}

uint64_t geom_octree_create_opt_d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 24);
}

uint64_t geom_octree_d_obj_alloc(void)
{
  v0 = objc_opt_class();

  return MEMORY[0x282201B00](v0, 352);
}

uint64_t *std::unique_ptr<geom::mesh_connectivity>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      *(v2 + 104) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 72);
    if (v4)
    {
      *(v2 + 80) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 48);
    if (v5)
    {
      *(v2 + 56) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 24);
    if (v6)
    {
      *(v2 + 32) = v6;
      operator delete(v6);
    }

    v7 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v7;
      operator delete(v7);
    }

    MEMORY[0x25305E3F0](v2, 0x1030C40E5C819F1);
  }

  return a1;
}

uint64_t geom::straight_skeleton_evaluator<float>::~straight_skeleton_evaluator(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v10 = (a1 + 120);
  std::vector<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void std::vector<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<geom::straight_skeleton_evaluator<float>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<float>::vertex_state>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = v3 - 104;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        result = (off_286292EA8[v5])(&v6, v3 - 104);
      }

      *(v3 - 8) = -1;
      v3 -= 104;
    }

    while (v4 != v2);
  }

  v1[1] = v2;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN4geom27straight_skeleton_evaluatorIfE13active_vertexENSA_15inactive_vertexEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSB_SC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    *(a2 + 72) = v2;
    operator delete(v2);
  }
}

uint64_t geom::straight_skeleton_evaluator<double>::~straight_skeleton_evaluator(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v10 = (a1 + 120);
  std::vector<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void std::vector<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<geom::straight_skeleton_evaluator<double>::vertex_state,std::allocator<geom::straight_skeleton_evaluator<double>::vertex_state>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = v3 - 144;
      v5 = *(v3 - 16);
      if (v5 != -1)
      {
        result = (off_286292EB8[v5])(&v6, v3 - 144);
      }

      *(v3 - 16) = -1;
      v3 -= 144;
    }

    while (v4 != v2);
  }

  v1[1] = v2;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN4geom27straight_skeleton_evaluatorIdE13active_vertexENSA_15inactive_vertexEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSB_SC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  if (v2)
  {
    *(a2 + 104) = v2;
    operator delete(v2);
  }
}

uint64_t geom::arap_deformer<float>::~arap_deformer(uint64_t a1)
{
  v10 = (a1 + 400);
  std::vector<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v2 = *(a1 + 376);
  if (v2)
  {
    *(a1 + 384) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 352);
  if (v3)
  {
    *(a1 + 360) = v3;
    operator delete(v3);
  }

  _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_PvEE(a1 + 328, *(a1 + 336));
  v4 = *(a1 + 144);
  if (v4)
  {
    *(a1 + 152) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    *(a1 + 128) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    *(a1 + 104) = v6;
    operator delete(v6);
  }

  _ZNSt3__16__treeINS_12__value_typeIjDv3_fEENS_19__map_value_compareIjS3_NS_4lessIjEELb1EEENS_9allocatorIS3_EEE7destroyEPNS_11__tree_nodeIS3_PvEE(a1 + 72, *(a1 + 80));
  std::unique_ptr<geom::mesh_connectivity>::~unique_ptr[abi:nn200100]((a1 + 48));
  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void std::vector<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::allocator<geom::ddg_evaluator<float>::stencil>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<geom::point_cloud_laplacian<float>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

uint64_t geom::point_tree<float,(unsigned char)2>::~point_tree(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    *(a1 + 192) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    *(a1 + 168) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    *(a1 + 144) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    *(a1 + 120) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    *(a1 + 96) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    *(a1 + 72) = v8;
    operator delete(v8);
  }

  if (*(a1 + 56) == 1)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      MEMORY[0x25305E3D0](v9, 0x1000C8000313F17);
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

uint64_t geom::logging::points_of_interest_log(geom::logging *this)
{
  if ((atomic_load_explicit(byte_27F3BAD28, memory_order_acquire) & 1) == 0)
  {
    geom::logging::points_of_interest_log();
  }

  return _MergedGlobals;
}

uint64_t geom::mesh_connectivity::mesh_connectivity(uint64_t a1, unsigned int *a2, uint64_t a3, char *a4, uint64_t a5)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 257;
  *(a1 + 122) = 0;
  geom::mesh_connectivity::compute_mesh_connectivity<unsigned int const*>(a1, a2, a4, &a4[4 * a5]);
  return a1;
}

uint64_t geom::mesh_connectivity::compute_mesh_connectivity<unsigned int const*>(std::vector<int> *this, unsigned int *a2, char *a3, char *a4)
{
  v7 = *(a4 - 1);
  v8 = a2;
  if (v7 >= 2)
  {
    v9 = 4 * v7;
    v11 = a2 + 1;
    v10 = *a2;
    v12 = v9 - 4;
    v8 = a2;
    v13 = a2 + 1;
    do
    {
      v15 = *v13++;
      v14 = v15;
      v16 = v10 >= v15;
      if (v10 <= v15)
      {
        v10 = v14;
      }

      if (!v16)
      {
        v8 = v11;
      }

      v11 = v13;
      v12 -= 4;
    }

    while (v12);
  }

  v17 = a4 - a3;
  v78 = *v8 + 1;
  std::vector<unsigned int>::resize(this, v78, geom::half_edge::k_invalid_index);
  std::vector<unsigned int>::resize(this + 1, (v17 >> 2), geom::half_edge::k_invalid_index);
  v98[0] = 0;
  v82 = a3;
  if (a4 != a3)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = a3;
    do
    {
      this[1].__begin_[v20] = v18;
      v80 = v21;
      v22 = *v21;
      v79 = v22;
      if (v22 > v19)
      {
        v23 = (v22 - 1) - v19;
        v24 = v22 - v19;
        v25 = &a2[v19];
        v26 = 1;
        v27 = v22 - v19;
        do
        {
          v28 = *v25++;
          this->__begin_[v28] = v18;
          LODWORD(v94) = a2[v26 % v24 + v19];
          DWORD1(v94) = v20;
          if (v23)
          {
            v29 = 0;
          }

          else
          {
            v29 = v24;
          }

          DWORD2(v94) = -1;
          HIDWORD(v94) = v98[0] - v29 + 1;
          LODWORD(v95) = -1;
          std::vector<geom::half_edge>::push_back[abi:nn200100](&this[4], &v94);
          v18 = ++v98[0];
          ++v26;
          --v23;
          --v27;
        }

        while (v27);
      }

      ++v20;
      v21 = v80 + 4;
      v19 = v79;
    }

    while (v80 + 4 != a4);
  }

  v94 = 0u;
  v95 = 0u;
  v96 = -1;
  v97 = 1065353216;
  __p = 0;
  v92 = 0;
  v93 = 0;
  if (v78)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, v78);
  }

  v98[0] = 0;
  v30 = v82;
  if (v82 != a4)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v83 = v30;
      v81 = *v30;
      v33 = *v30 - v32;
      if (*v30 > v32)
      {
        v34 = 0;
        do
        {
          v35 = a2[v32 + v34];
          v36 = a2[(v34 + 1) % v33 + v32];
          if (v36 >= v35)
          {
            v37 = a2[v32 + v34];
          }

          else
          {
            v37 = a2[(v34 + 1) % v33 + v32];
          }

          if (v35 <= v36)
          {
            v38 = a2[(v34 + 1) % v33 + v32];
          }

          else
          {
            v38 = a2[v32 + v34];
          }

          v87 = __PAIR64__(v38, v37);
          {
            v40 = *v39;
            begin = this[4].__begin_;
            begin[5 * v98[0] + 4] = *v39;
            v42 = v98[0];
            v43 = &begin[5 * v40];
            v43[4] = v98[0];
            begin[5 * v42 + 2] = v43[2];
            v44 = v98[0];
          }

          else
          {
            this[4].__begin_[5 * v31 + 2] = (this[2].__end_ - this[2].__begin_) >> 2;
            std::vector<unsigned int>::push_back[abi:nn200100](&this[2].__begin_, v98);
            v45 = v98[0];
            v46 = __p;
            ++*(__p + v35);
            ++v46[v36];
          }

          v31 = ++v98[0];
          ++v34;
        }

        while (v33 != v34);
      }

      v30 = v83 + 1;
      v32 = v81;
    }

    while (v83 + 1 != a4);
  }

  v47 = this[2].__begin_;
  end = this[2].__end_;
  if (v47 != end)
  {
    v49 = this[4].__begin_;
    do
    {
      v50 = &v49[5 * *v47];
      v51 = v50[4];
      if (v51 != -1)
      {
        v52 = &v49[5 * v51];
        if (v52[4] != *v47)
        {
          LOWORD(this[5].__begin_) = 0;
          break;
        }

        if (BYTE1(this[5].__begin_) == 1 && *v50 == *v52)
        {
          BYTE1(this[5].__begin_) = 0;
        }
      }

      ++v47;
    }

    while (v47 != end);
  }

  if (LOBYTE(this[5].__begin_) == 1 && BYTE1(this[5].__begin_) == 1)
  {
    do
    {
      v90 = -1;
      v53 = this[4].__begin_;
      v54 = this[4].__end_ - v53;
      if (!v54)
      {
        break;
      }

      v55 = 0;
      v56 = 0xCCCCCCCCCCCCCCCDLL * (v54 >> 2);
      v57 = 1;
      while (v53[5 * v55 + 4] != -1)
      {
        v55 = v57;
        if (v56 <= v57++)
        {
          goto LABEL_64;
        }
      }

      v90 = v57 - 1;
      if (!v57)
      {
        break;
      }

      std::vector<unsigned int>::push_back[abi:nn200100](&this[3].__begin_, &v90);
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v59 = v90;
      v60 = v90;
      do
      {
        v61 = this[4].__begin_;
        v62 = &v61[5 * v60];
        v64 = v62[3];
        v63 = v62 + 3;
        v60 = v61[5 * v64 + 4];
        if (v60 == -1)
        {
          std::vector<unsigned int>::push_back[abi:nn200100](&v87, v63);
          v60 = *v63;
          v59 = v90;
        }
      }

      while (v60 != v59);
      v65 = v87;
      v66 = v88;
      if (v88 != v87)
      {
        v67 = 0;
        v68 = 0;
        v69 = this[4].__begin_;
        v70 = -858993459 * ((this[4].__end_ - v69) >> 2);
        v71 = v88 - v87;
        do
        {
          v72 = v65[v67];
          v73 = v66 - 1;
          if (v68)
          {
            v73 = &v65[v68 - 1];
            LODWORD(v71) = v68;
          }

          v74 = *v73;
          v86 = -1;
          *&v85 = -1;
          *(&v85 + 1) = -1;
          LODWORD(v85) = v69[5 * v74];
          v75 = 5 * v72;
          v76 = v69[5 * v72 + 2];
          HIDWORD(v85) = v71 + v70 - 1;
          v86 = v72;
          DWORD2(v85) = v76;
          std::vector<geom::half_edge>::push_back[abi:nn200100](&this[4], &v85);
          v69 = this[4].__begin_;
          v69[v75 + 4] = v70 + v68;
          v65 = v87;
          v66 = v88;
          v71 = v88 - v87;
          v67 = ++v68;
        }

        while (v71 > v68);
      }

      if (v65)
      {
        v88 = v65;
        operator delete(v65);
      }
    }

    while (v90 != -1);
  }

LABEL_64:
  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  return std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(&v94);
}

std::vector<int> *geom::mesh_connectivity::mesh_connectivity(std::vector<int> *this, unsigned int *a2, uint64_t a3, unsigned int a4)
{
  *&this[2].__begin_ = 0u;
  v75 = this + 2;
  *&this[4].__begin_ = 0u;
  v76 = this + 4;
  this[4].__end_cap_.__value_ = 0;
  *&this[2].__end_cap_.__value_ = 0u;
  *&this[3].__end_ = 0u;
  *&this->__end_cap_.__value_ = 0u;
  *&this[1].__end_ = 0u;
  LOWORD(this[5].__begin_) = 257;
  BYTE2(this[5].__begin_) = 1;
  __sz = a4;
  v6 = a2;
  *&this->__begin_ = 0u;
  if (3 * a4 >= 2)
  {
    v8 = a2 + 1;
    v7 = *a2;
    v9 = 12 * a4 - 4;
    v6 = a2;
    v10 = a2 + 1;
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = v7 >= v12;
      if (v7 <= v12)
      {
        v7 = v11;
      }

      if (!v13)
      {
        v6 = v8;
      }

      v8 = v10;
      v9 -= 4;
    }

    while (v9);
  }

  v71 = *v6 + 1;
  std::vector<unsigned int>::resize(this, v71, geom::half_edge::k_invalid_index);
  std::vector<unsigned int>::resize(this + 1, __sz, geom::half_edge::k_invalid_index);
  v90[0] = 0;
  if (__sz)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 2;
    do
    {
      this[1].__begin_[v15] = v14;
      v74 = v17;
      if (v16 <= 0xFFFFFFFC)
      {
        v18 = 0;
        v19 = v17 - v16;
        do
        {
          v20 = v18 + 1;
          if (v18 == 2)
          {
            v21 = 0;
          }

          else
          {
            v21 = v18 + 1;
          }

          this->__begin_[a2[v16 + v18]] = v14;
          LODWORD(v86) = a2[v21 + v16];
          DWORD1(v86) = v15;
          if (v19 == v18)
          {
            v22 = -2;
          }

          else
          {
            v22 = 1;
          }

          DWORD2(v86) = -1;
          HIDWORD(v86) = v22 + v90[0];
          LODWORD(v87) = -1;
          std::vector<geom::half_edge>::push_back[abi:nn200100](v76, &v86);
          v14 = ++v90[0];
          v18 = v20;
        }

        while (v20 != 3);
      }

      v16 += 3;
      ++v15;
      v17 = v74 + 3;
    }

    while (v15 != __sz);
  }

  v86 = 0u;
  v87 = 0u;
  v88 = -1;
  v89 = 1065353216;
  __p = 0;
  v84 = 0;
  v85 = 0;
  if (v71)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, v71);
  }

  v90[0] = 0;
  if (__sz)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    do
    {
      if (v25 <= 0xFFFFFFFC)
      {
        v26 = 0;
        do
        {
          if (v26 == 2)
          {
            v27 = 0;
          }

          else
          {
            v27 = v26 + 1;
          }

          v28 = a2[v25 + v26];
          v29 = a2[v27 + v25];
          if (v29 >= v28)
          {
            v30 = a2[v25 + v26];
          }

          else
          {
            v30 = a2[v27 + v25];
          }

          if (v28 <= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = a2[v25 + v26];
          }

          v79 = __PAIR64__(v31, v30);
          {
            v33 = *v32;
            begin = v76->__begin_;
            v76->__begin_[5 * v90[0] + 4] = *v32;
            v35 = v90[0];
            v36 = &begin[5 * v33];
            v36[4] = v90[0];
            begin[5 * v35 + 2] = v36[2];
            v37 = v90[0];
          }

          else
          {
            this[4].__begin_[5 * v23 + 2] = (this[2].__end_ - this[2].__begin_) >> 2;
            std::vector<unsigned int>::push_back[abi:nn200100](&v75->__begin_, v90);
            v38 = v90[0];
            v39 = __p;
            ++*(__p + v28);
            ++v39[v29];
          }

          v23 = ++v90[0];
          ++v26;
        }

        while (v26 != 3);
      }

      v25 += 3;
      ++v24;
    }

    while (v24 != a4);
  }

  v40 = this[2].__begin_;
  end = this[2].__end_;
  v42 = v76;
  if (v40 != end)
  {
    v43 = v76->__begin_;
    do
    {
      v44 = &v43[5 * *v40];
      v45 = v44[4];
      if (v45 != -1)
      {
        v46 = &v43[5 * v45];
        if (v46[4] != *v40)
        {
          LOWORD(this[5].__begin_) = 0;
          break;
        }

        if (BYTE1(this[5].__begin_) == 1 && *v44 == *v46)
        {
          BYTE1(this[5].__begin_) = 0;
        }
      }

      ++v40;
    }

    while (v40 != end);
  }

  if (LOBYTE(this[5].__begin_) == 1 && BYTE1(this[5].__begin_) == 1)
  {
    do
    {
      v82 = -1;
      v47 = this[4].__begin_;
      v48 = this[4].__end_ - v47;
      if (!v48)
      {
        break;
      }

      v49 = 0;
      v50 = 0xCCCCCCCCCCCCCCCDLL * (v48 >> 2);
      v51 = 1;
      while (v47[5 * v49 + 4] != -1)
      {
        v49 = v51;
        if (v50 <= v51++)
        {
          goto LABEL_70;
        }
      }

      v82 = v51 - 1;
      if (!v51)
      {
        break;
      }

      std::vector<unsigned int>::push_back[abi:nn200100](&this[3].__begin_, &v82);
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v53 = v82;
      v54 = v82;
      do
      {
        v55 = &v42->__begin_[5 * v54];
        v57 = *(v55 + 12);
        v56 = (v55 + 12);
        v54 = v42->__begin_[5 * v57 + 4];
        if (v54 == -1)
        {
          std::vector<unsigned int>::push_back[abi:nn200100](&v79, v56);
          v54 = *v56;
          v53 = v82;
        }
      }

      while (v54 != v53);
      v58 = v79;
      v59 = v80;
      if (v80 != v79)
      {
        v60 = 0;
        v61 = 0;
        v62 = this[4].__begin_;
        v63 = -858993459 * ((this[4].__end_ - v62) >> 2);
        v64 = v80 - v79;
        do
        {
          v65 = v58[v60];
          v66 = v59 - 1;
          if (v61)
          {
            v66 = &v58[v61 - 1];
            LODWORD(v64) = v61;
          }

          v67 = *v66;
          v78 = -1;
          *&v77 = -1;
          *(&v77 + 1) = -1;
          LODWORD(v77) = v62[5 * v67];
          v68 = 5 * v65;
          v69 = v62[5 * v65 + 2];
          HIDWORD(v77) = v63 - 1 + v64;
          v78 = v65;
          DWORD2(v77) = v69;
          std::vector<geom::half_edge>::push_back[abi:nn200100](v76, &v77);
          v62 = v76->__begin_;
          v76->__begin_[v68 + 4] = v63 + v61;
          v58 = v79;
          v59 = v80;
          v64 = v80 - v79;
          v60 = ++v61;
        }

        while (v64 > v61);
      }

      if (v58)
      {
        v80 = v58;
        operator delete(v58);
      }

      v42 = v76;
    }

    while (v82 != -1);
  }

LABEL_70:
  if (__p)
  {
    v84 = __p;
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(&v86);
  return this;
}

BOOL geom::mesh_connectivity::is_boundary_vertex(geom::mesh_connectivity *this, unsigned int a2)
{
  if (*(this + 120) != 1)
  {
    return 0;
  }

  if (*(this + 121) != 1)
  {
    return 0;
  }

  v2 = *(*this + 4 * a2);
  if (v2 == -1)
  {
    return 0;
  }

  v4 = *(this + 12);
  v5 = *(*this + 4 * a2);
  do
  {
    v6 = v4 + 20 * v5;
    v7 = *(v6 + 4);
    result = v7 == -1;
    if (v7 == -1)
    {
      break;
    }

    v5 = *(v4 + 20 * *(v6 + 16) + 12);
  }

  while (v5 != v2);
  return result;
}

void geom::mesh_connectivity::get_adjacent_vertices_to_vertex(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v8 = a2;
  *(a3 + 8) = *a3;
  if (*(a1 + 120) == 1 && *(a1 + 121) == 1)
  {
    std::vector<unsigned int>::push_back[abi:nn200100](a3, &v8);
    v5 = *(*a1 + 4 * v8);
    if (v5 != -1)
    {
      v6 = *(a1 + 96);
      do
      {
        v7 = v6 + 20 * v5;
        std::vector<unsigned int>::push_back[abi:nn200100](a3, v7);
        v6 = *(a1 + 96);
        v5 = *(v6 + 20 * *(v7 + 16) + 12);
      }

      while (v5 != *(*a1 + 4 * v8));
    }
  }
}

void geom::mesh_connectivity::get_incident_faces_to_vertex(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  if (*(a1 + 120) == 1 && *(a1 + 121) == 1)
  {
    v5 = *a1;
    v6 = *(*a1 + 4 * a2);
    if (v6 != -1)
    {
      v8 = a1[12];
      do
      {
        v9 = v8 + 20 * v6;
        if (*(v9 + 4) != -1)
        {
          std::vector<unsigned int>::push_back[abi:nn200100](a3, (v9 + 4));
          v8 = a1[12];
          v5 = *a1;
        }

        v6 = *(v8 + 20 * *(v9 + 16) + 12);
      }

      while (v6 != *(v5 + 4 * a2));
    }
  }
}

void geom::mesh_connectivity::get_incident_edges_to_vertex(uint64_t a1, unsigned int a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  if (*(a1 + 120) == 1 && *(a1 + 121) == 1)
  {
    v5 = *(*a1 + 4 * a2);
    if (v5 != -1)
    {
      v7 = *(a1 + 96);
      do
      {
        v8 = v7 + 20 * v5;
        std::vector<unsigned int>::push_back[abi:nn200100](a3, (v8 + 8));
        v7 = *(a1 + 96);
        v5 = *(v7 + 20 * *(v8 + 16) + 12);
      }

      while (v5 != *(*a1 + 4 * a2));
    }
  }
}

void geom::mesh_connectivity::get_boundary_edges(uint64_t a1, unsigned int a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  if (*(a1 + 120) == 1 && *(a1 + 121) == 1)
  {
    v5 = *(*(a1 + 96) + 20 * *(*(a1 + 72) + 4 * a2) + 16);
    v6 = v5;
    do
    {
      v7 = *(a1 + 96) + 20 * v6;
      std::vector<unsigned int>::push_back[abi:nn200100](a3, (v7 + 8));
      v6 = *(v7 + 12);
    }

    while (v5 != v6);
  }
}

uint64_t geom::mesh_connectivity::get_edge_vertices(uint64_t this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *(this + 96);
  v5 = (v4 + 20 * *(*(this + 48) + 4 * a2));
  v6 = v5[4];
  v7 = *(v4 + 20 * v6);
  if (v7 >= *v5)
  {
    v7 = *v5;
  }

  *a3 = v7;
  v8 = *v5;
  v9 = *(v4 + 20 * v6);
  if (v8 > v9)
  {
    v9 = v8;
  }

  *a4 = v9;
  if ((*(this + 121) & 1) == 0 && *a3 == v9)
  {
    v10 = v6;
    do
    {
      LODWORD(v10) = *(v4 + 20 * v10 + 12);
      v11 = (v4 + 20 * v10);
    }

    while (v11[3] != v6);
    v12 = *v11;
    if (*v11 >= v9)
    {
      v12 = v9;
    }

    *a3 = v12;
    v13 = *v11;
    if (v9 > *v11)
    {
      v13 = v9;
    }

    *a4 = v13;
  }

  return this;
}

uint64_t geom::mesh_connectivity::get_edge_opposite_vertices(uint64_t this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  *a3 = -1;
  *a4 = -1;
  if (*(this + 122) == 1)
  {
    v4 = *(this + 96);
    v5 = (v4 + 20 * *(*(this + 48) + 4 * a2));
    v6 = v4 + 20 * v5[4];
    if (v5[1] != -1)
    {
      *a3 = *(v4 + 20 * v5[3]);
    }

    if (*(v6 + 4) != -1)
    {
      *a4 = *(v4 + 20 * *(v6 + 12));
    }
  }

  return this;
}

void geom::mesh_connectivity::get_face_vertices(uint64_t a1, unsigned int a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  v5 = *(*(a1 + 24) + 4 * a2);
  v6 = v5;
  do
  {
    v7 = *(a1 + 96) + 20 * v6;
    std::vector<unsigned int>::push_back[abi:nn200100](a3, v7);
    v6 = *(v7 + 12);
  }

  while (v5 != v6);
}

void geom::mesh_connectivity::get_face_edges(uint64_t a1, unsigned int a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  v5 = *(*(a1 + 24) + 4 * a2);
  v6 = v5;
  do
  {
    v7 = *(a1 + 96) + 20 * v6;
    std::vector<unsigned int>::push_back[abi:nn200100](a3, (v7 + 8));
    v6 = *(v7 + 12);
  }

  while (v5 != v6);
}

void std::vector<geom::half_edge>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_key<float>>>(a1, v11);
    }

    v12 = 20 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 4);
    *v12 = v13;
    v7 = 20 * v8 + 20;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 4);
    *v5 = v6;
    v7 = v5 + 20;
  }

  *(a1 + 8) = v7;
}

uint64_t *std::unordered_map<anonymous namespace::edge_key,unsigned int,anonymous namespace::edge_key,std::equal_to<anonymous namespace::edge_key>,std::allocator<std::pair<anonymous namespace::edge_key const,unsigned int>>>::find[abi:nn200100](void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (*(result + 4) == v3 && *(result + 5) == v4)
      {
        return result;
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
  }

  return result;
}

uint64_t *std::unordered_map<anonymous namespace::edge_key,unsigned int,anonymous namespace::edge_key,std::equal_to<anonymous namespace::edge_key>,std::allocator<std::pair<anonymous namespace::edge_key const,unsigned int>>>::operator[](float *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v3 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 3;
}

uint64_t geom_dual_contouring_uniform_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x4_t a6, float32x4_t a7)
{
  v8 = a3;
  v11 = geom::collection_to_vector<float>(a4);
  v12 = geom::collection_to_vector<float>(a5);
  v19[0] = a1;
  v19[1] = a2;
  v18[0] = a6;
  v18[1] = a7;
  return geom::dual_contouring<float>::run(v19, v18, v8, v11, v12, *a7.i64, v13, *a6.i64, v14);
}

uint64_t geom::dual_contouring<float>::run(uint64_t a1, float32x4_t *a2, unsigned int a3, uint64_t a4, const void **a5, double a6, double a7, double a8, double a9)
{
  v99 = *MEMORY[0x277D85DE8];
  v9 = vsubq_f32(a2[1], *a2);
  *&a9 = fminf(fminf(v9.f32[0], v9.f32[2]), v9.f32[1]) / a3;
  v10 = vcvtps_s32_f32(v9.f32[0] / *&a9);
  memset(v90, 0, sizeof(v90));
  v91 = 1065353216;
  if (v10)
  {
    v11 = a2;
    v74 = v10;
    v78 = 0;
    v80 = vcvtps_s32_f32(v9.f32[1] / *&a9);
    v84 = vcvtps_s32_f32(v9.f32[2] / *&a9);
    v13 = vdupq_lane_s32(*&a9, 0);
    v85 = v13;
    v81 = LODWORD(a9);
    do
    {
      if (v80)
      {
        v79 = 0;
        v13.f32[0] = *&a9 * v78;
        v75 = v13;
        do
        {
          if (v84)
          {
            v14 = 0;
            v15 = v75;
            v15.f32[1] = *&a9 * v79;
            v15.i32[2] = v75.i32[2];
            v82 = v15;
            do
            {
              v16 = 0;
              v17 = 0;
              v18 = v82;
              v18.f32[2] = *&a9 * v14;
              v86 = vaddq_f32(v18, *v11);
              do
              {
                v13.f32[0] = (*a1)(*(a1 + 8), vmlaq_f32(v86, v85, geom::dual_contouring<float>::vert_map[v16]));
                v19 = 1 << v16;
                if (v13.f32[0] <= 0.0)
                {
                  LOBYTE(v19) = 0;
                }

                v17 |= v19;
                ++v16;
              }

              while (v16 != 8);
              if ((v17 + 1) >= 2u)
              {
                v83 = v14;
                v20 = 0;
                v21 = 0;
                v22 = 0;
                v97 = 0uLL;
                v98 = 0;
                v92 = 0u;
                v93 = 0u;
                v94 = 0u;
                v95 = 0u;
                v23 = &byte_2500CC5C1;
                v96 = 0.0;
                do
                {
                  v24 = *(v23 - 1);
                  v25 = *v23;
                  v26 = (v17 >> v24) & 1;
                  v27 = (v17 >> v25) & 1;
                  if (v26 != v27)
                  {
                    v22 |= 1 << v20;
                    v89 = vmlaq_f32(v86, v85, geom::dual_contouring<float>::vert_map[v24]);
                    v88 = vmlaq_f32(v86, v85, geom::dual_contouring<float>::vert_map[v25]);
                    v87.i32[2] = 0;
                    v87.i64[0] = 0;
                    if (v26)
                    {
                      v28 = &v89;
                    }

                    else
                    {
                      v28 = &v88;
                    }

                    if (v27)
                    {
                      v29 = &v89;
                    }

                    else
                    {
                      v29 = &v88;
                    }

                    *v30.i64 = geom::dual_contouring<float>::compute_vertex_position(a1, v28, v29);
                    v87 = v30;
                    *v31.i64 = geom::dual_contouring<float>::compute_normal(a1, &v87);
                    v32 = vmulq_f32(v31, v87);
                    v32.f32[0] = v32.f32[2] + vaddv_f32(*v32.f32);
                    v33 = vaddq_f32(v92, vmulq_n_f32(v31, v31.f32[0]));
                    v34 = vaddq_f32(v93, vmulq_lane_f32(v31, *v31.f32, 1));
                    v35 = vaddq_f32(vmulq_laneq_f32(v31, v31, 2), v94);
                    v92.i32[2] = v33.i32[2];
                    v93.i32[2] = v34.i32[2];
                    v92.i64[0] = v33.i64[0];
                    v93.i64[0] = v34.i64[0];
                    v94.i32[2] = v35.i32[2];
                    v94.i64[0] = v35.i64[0];
                    v95 = vmlaq_n_f32(v95, v31, v32.f32[0]);
                    v96 = v96 + (v32.f32[0] * v32.f32[0]);
                    v97 = vaddq_f32(v87, v97);
                    ++v98;
                    ++v21;
                  }

                  if (v20 > 0xA)
                  {
                    break;
                  }

                  v23 += 2;
                  ++v20;
                }

                while (v21 < 6);
                v88.i16[0] = v78;
                v88.i16[1] = v79;
                v14 = v83;
                v88.i16[2] = v83;
                v89.i32[0] = (*(a4 + 8) - *a4) >> 4;
                v89.i16[2] = v22;
                v89.i8[6] = v17;
                std::__hash_table<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::__unordered_map_hasher<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,geom::cell_coord,std::equal_to<geom::cell_coord>,false>,std::__unordered_map_equal<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::equal_to<geom::cell_coord>,geom::cell_coord,true>,std::allocator<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>>>::__emplace_unique_key_args<geom::cell_coord,geom::cell_coord,geom::dual_contouring<float>::cell>(v90, &v88, &v88, &v89);
                *v13.i64 = geom::qef<float>::solve(&v92, v36, v37, v38, v39, v40, v41);
                v42 = vorrq_s8(vcgtq_f32(v86, v13), vcgtq_f32(v13, vaddq_f32(v85, v86)));
                v42.i32[3] = v42.i32[2];
                v42.i32[0] = vmaxvq_u32(v42);
                if (v42.i32[0] < 0)
                {
                  v42.i16[0] = v98;
                  *v42.i32 = v42.u32[0];
                  v13 = vdivq_f32(v97, vdupq_lane_s32(*v42.i8, 0));
                }

                v44 = *(a4 + 8);
                v43 = *(a4 + 16);
                v11 = a2;
                if (v44 >= v43)
                {
                  v46 = (v44 - *a4) >> 4;
                  if ((v46 + 1) >> 60)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v47 = v43 - *a4;
                  v48 = v47 >> 3;
                  if (v47 >> 3 <= (v46 + 1))
                  {
                    v48 = v46 + 1;
                  }

                  if (v47 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v49 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v49 = v48;
                  }

                  if (v49)
                  {
                    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a4, v49);
                  }

                  v50 = (16 * v46);
                  *v50 = v13;
                  v45 = 16 * v46 + 16;
                  v51 = *(a4 + 8) - *a4;
                  v52 = v50 - v51;
                  memcpy(v50 - v51, *a4, v51);
                  v53 = *a4;
                  *a4 = v52;
                  *(a4 + 8) = v45;
                  *(a4 + 16) = 0;
                  if (v53)
                  {
                    operator delete(v53);
                  }

                  v14 = v83;
                }

                else
                {
                  *v44 = v13;
                  v45 = &v44[1];
                }

                *(a4 + 8) = v45;
              }

              ++v14;
              LODWORD(a9) = v81;
            }

            while (v84 > v14);
          }

          ++v79;
        }

        while (v80 > v79);
      }

      ++v78;
    }

    while (v74 > v78);
    v54 = *&v90[16];
    v55 = v74;
    if (*&v90[16])
    {
      do
      {
        v56 = 0;
        v57 = &byte_2500CC5DA;
        do
        {
          v58 = *(v54 + 14);
          v59 = (1 << v56) & v58;
          if (((1 << v56) & v58) != 0)
          {
            v93 = 0uLL;
            v60 = 1;
            v61 = 3;
            v62 = v57;
            v92 = (v54 + 3);
            do
            {
              v89.i16[0] = *(v54 + 8) + *(v62 - 2);
              v63 = *(v54 + 9) + *(v62 - 1);
              v89.i16[1] = v63;
              v64 = *(v54 + 10) + *v62;
              v89.i16[2] = v64;
              if (v55 > v89.u16[0] && v80 > v63 && v84 > v64)
              {
                v65 = std::__hash_table<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::__unordered_map_hasher<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,geom::cell_coord,std::equal_to<geom::cell_coord>,false>,std::__unordered_map_equal<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::equal_to<geom::cell_coord>,geom::cell_coord,true>,std::allocator<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>>>::find<geom::cell_coord>(v90, &v89);
                if (!v65)
                {
                  abort();
                }

                v92.i64[v60++] = (v65 + 3);
              }

              v62 += 3;
              --v61;
            }

            while (v61);
            if (v60 > 3u)
            {
              if ((*(v54 + 30) >> *(&geom::dual_contouring<float>::edge_vertex_map + 2 * v56 + 1)))
              {
                v66 = v93.i64[1];
                v67 = a5;
                std::vector<unsigned int>::push_back[abi:nn200100](a5, v93.i64[1]);
                v68 = v93.i64[0];
                std::vector<unsigned int>::push_back[abi:nn200100](a5, v93.i64[0]);
                v69 = v92.i64[1];
                std::vector<unsigned int>::push_back[abi:nn200100](a5, v92.i64[1]);
                v70 = v92.i64[0];
              }

              else
              {
                v67 = a5;
                std::vector<unsigned int>::push_back[abi:nn200100](a5, v92.i64[0]);
                v69 = v92.i64[1];
                std::vector<unsigned int>::push_back[abi:nn200100](a5, v92.i64[1]);
                v68 = v93.i64[0];
                std::vector<unsigned int>::push_back[abi:nn200100](a5, v93.i64[0]);
                v70 = v93.i64[1];
                v66 = v93.i64[1];
              }

              std::vector<unsigned int>::push_back[abi:nn200100](v67, v70);
              *(v54 + 14) &= ~v59;
              v71 = &geom::dual_contouring<float>::edge_to_edge_map + 3 * v56;
              *(v69 + 4) &= ~(1 << *v71);
              *(v68 + 4) &= ~(1 << v71[1]);
              *(v66 + 4) &= ~(1 << v71[2]);
              v55 = v74;
            }
          }

          ++v56;
          v57 += 9;
        }

        while (v56 != 12);
        v54 = *v54;
      }

      while (v54);
    }
  }

  return std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v90);
}

uint64_t geom_dual_contouring_uniform_3d(double (*a1)(float64x2_t *, uint64_t), double (*a2)(float64x2_t *, uint64_t), uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v11 = geom::collection_to_vector<float>(a5);
  v12 = geom::collection_to_vector<float>(a6);
  v22[0] = a1;
  v22[1] = a2;
  v13 = a4[1];
  v19[0] = *a4;
  v19[1] = v13;
  v14 = a4[3];
  v20 = a4[2];
  v21 = v14;
  return geom::dual_contouring<double>::run(v22, v19, v8, v11, v12, v20.f64[0], v14.f64[0], v15, v16, v17);
}

uint64_t geom::dual_contouring<double>::run(double (**a1)(float64x2_t *, uint64_t), float64x2_t *a2, unsigned int a3, uint64_t a4, const void **a5, double a6, double a7, double a8, double a9, float64x2_t a10)
{
  v130 = *MEMORY[0x277D85DE8];
  *&v10 = *&vsubq_f64(a2[3], a2[1]);
  v14 = vsubq_f64(a2[2], *a2);
  v11 = *&v14.i64[1];
  v12 = fmin(fmin(*v14.i64, v10), *&v14.i64[1]);
  a10.f64[0] = v12 / a3;
  v13 = vcvtpd_s64_f64(*v14.i64 / a10.f64[0]);
  v14.i64[1] = 0;
  memset(v116, 0, sizeof(v116));
  v117 = 1065353216;
  if (v13)
  {
    v15 = a2;
    v89 = v13;
    v94 = 0;
    v96 = vcvtpd_s64_f64(v11 / a10.f64[0]);
    v98 = vcvtpd_s64_f64(v10 / a10.f64[0]);
    v17.f64[0] = v12 / a3;
    v17.f64[1] = a10.f64[0];
    v18.f64[0] = a10.f64[0];
    v18.f64[1] = a10.f64[0];
    v91 = v18;
    v18.f64[0] = a10.f64[0];
    v18.f64[1] = a10.f64[0];
    v101 = v18;
    v102 = v17;
    v105 = a10;
    do
    {
      if (v96)
      {
        v95 = 0;
        v90 = a10.f64[0] * v94;
        do
        {
          if (v98)
          {
            v19 = 0;
            *v20.i64 = v90;
            *&v20.i64[1] = a10.f64[0] * v95;
            v20.i64[1] = vextq_s8(v20, v20, 8uLL).u64[0];
            v97 = v20;
            do
            {
              v21 = 0;
              v22 = 0;
              *v14.i64 = a10.f64[0] * v19;
              v23 = vaddq_f64(v97, *v15);
              v24 = vaddq_f64(v14, v15[1]);
              v99 = vextq_s8(v23, v23, 8uLL).u64[0];
              v100 = *v23.i64;
              v23.i64[1] = v99;
              v103 = v23;
              v106 = v24;
              do
              {
                v25 = (&geom::dual_contouring<double>::vert_map + 32 * v21);
                v26 = vmlaq_f64(v103, v17, *v25);
                v27 = vmlaq_f64(v24, a10, v25[1]);
                v29 = *a1;
                v28 = a1[1];
                v118 = v26;
                v119 = v27;
                v30 = v29(&v118, v28);
                a10 = v105;
                v24 = v106;
                v17 = v102;
                v31 = 1 << v21;
                if (v30 <= 0.0)
                {
                  LOBYTE(v31) = 0;
                }

                v22 |= v31;
                ++v21;
              }

              while (v21 != 8);
              if ((v22 + 1) >= 2u)
              {
                v32 = 0;
                v33 = 0;
                v34 = 0;
                v129 = 0;
                v127 = 0u;
                v128 = 0u;
                v118 = 0u;
                v119 = 0u;
                v120 = 0u;
                v121 = 0u;
                v122 = 0u;
                v123 = 0u;
                v124 = 0u;
                v125 = 0u;
                v126 = 0.0;
                v35.f64[0] = v100;
                v36 = &byte_2500CC781;
                *&v35.f64[1] = v99;
                v104 = v35;
                do
                {
                  v37 = *(v36 - 1);
                  v38 = *v36;
                  v39 = (v22 >> v37) & 1;
                  v40 = (v22 >> v38) & 1;
                  if (v39 != v40)
                  {
                    v34 |= 1 << v32;
                    v41 = (&geom::dual_contouring<double>::vert_map + 32 * v37);
                    v42 = vmlaq_f64(v106, v105, v41[1]);
                    v115[0] = vmlaq_f64(v104, v101, *v41);
                    v115[1] = v42;
                    v43 = (&geom::dual_contouring<double>::vert_map + 32 * v38);
                    v44 = vmlaq_f64(v106, v105, v43[1]);
                    v114[0] = vmlaq_f64(v104, v101, *v43);
                    v114[1] = v44;
                    v113.f64[0] = 0.0;
                    v112 = 0uLL;
                    if (v39)
                    {
                      v45 = v115;
                    }

                    else
                    {
                      v45 = v114;
                    }

                    if (v40)
                    {
                      v46 = v115;
                    }

                    else
                    {
                      v46 = v114;
                    }

                    geom::dual_contouring<double>::compute_vertex_position(a1, v45, v46, v111);
                    v112 = v111[0];
                    v113 = v111[1];
                    geom::dual_contouring<double>::compute_normal(a1, &v112, &v109);
                    v47 = v109;
                    v48 = vmulq_f64(v110, v113).f64[0] + vaddvq_f64(vmulq_f64(v109, v112));
                    v118 = vaddq_f64(v118, vmulq_n_f64(v47, v47.f64[0]));
                    v119 = vaddq_f64(v119, vmulq_f64(v110, v109));
                    v120 = vaddq_f64(v120, vmulq_laneq_f64(v47, v47, 1));
                    v121 = vaddq_f64(v121, vmulq_laneq_f64(v110, v109, 1));
                    v122 = vaddq_f64(vmulq_n_f64(v109, v110.f64[0]), v122);
                    v123 = vaddq_f64(vmulq_f64(v110, v110), v123);
                    v124 = vmlaq_n_f64(v124, v109, v48);
                    v125 = vmlaq_n_f64(v125, v110, v48);
                    v126 = v126 + v48 * v48;
                    v127 = vaddq_f64(v112, v127);
                    v128 = vaddq_f64(v113, v128);
                    ++v129;
                    ++v33;
                  }

                  if (v32 > 0xA)
                  {
                    break;
                  }

                  v36 += 2;
                  ++v32;
                }

                while (v33 < 6);
                LOWORD(v114[0]) = v94;
                WORD1(v114[0]) = v95;
                WORD2(v114[0]) = v19;
                LODWORD(v115[0]) = (*(a4 + 8) - *a4) >> 5;
                WORD2(v115[0]) = v34;
                BYTE6(v115[0]) = v22;
                std::__hash_table<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::__unordered_map_hasher<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,geom::cell_coord,std::equal_to<geom::cell_coord>,false>,std::__unordered_map_equal<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::equal_to<geom::cell_coord>,geom::cell_coord,true>,std::allocator<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>>>::__emplace_unique_key_args<geom::cell_coord,geom::cell_coord,geom::dual_contouring<float>::cell>(v116, v114, v114, v115);
                geom::qef<double>::solve(&v118, v49, v50, v51, &v107);
                v53 = v107;
                v52 = v108;
                v54.f64[0] = v100;
                *&v54.f64[1] = v99;
                a10 = v105;
                v14 = vcgtq_f64(v107, vaddq_f64(v91, v54));
                v55 = vorrq_s8(vcgtq_f64(v54, v107), v14);
                v56 = vorr_s8(vmovn_s64(vcgtq_f64(v106, v108)), vmovn_s64(vcgtq_f64(v108, vaddq_f64(v105, v106))));
                v57.i64[0] = v56.u32[0];
                v57.i64[1] = v56.u32[1];
                if (((v55.i64[0] | vcltzq_s64(vshlq_n_s64(v57, 0x3FuLL)).u64[0] | v55.i64[1]) & 0x8000000000000000) != 0)
                {
                  v14.i16[0] = v129;
                  v14 = vdupq_lane_s64(COERCE__INT64(v14.u64[0]), 0);
                  v52 = vdivq_f64(v128, v14);
                  v53 = vdivq_f64(v127, v14);
                }

                v59 = *(a4 + 8);
                v58 = *(a4 + 16);
                v15 = a2;
                if (v59 >= v58)
                {
                  v61 = (v59 - *a4) >> 5;
                  v62 = v61 + 1;
                  if ((v61 + 1) >> 59)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v63 = v58 - *a4;
                  if (v63 >> 4 > v62)
                  {
                    v62 = v63 >> 4;
                  }

                  if (v63 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v64 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v64 = v62;
                  }

                  if (v64)
                  {
                    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a4, v64);
                  }

                  v65 = (32 * v61);
                  *v65 = v53;
                  v65[1] = v52;
                  v60 = 32 * v61 + 32;
                  v66 = *(a4 + 8) - *a4;
                  v67 = v65 - v66;
                  memcpy(v65 - v66, *a4, v66);
                  v68 = *a4;
                  *a4 = v67;
                  *(a4 + 8) = v60;
                  *(a4 + 16) = 0;
                  if (v68)
                  {
                    operator delete(v68);
                  }

                  a10 = v105;
                }

                else
                {
                  *v59 = v53;
                  v59[1] = v52;
                  v60 = &v59[2];
                }

                v17 = v102;
                *(a4 + 8) = v60;
              }

              ++v19;
            }

            while (v98 > v19);
          }

          ++v95;
        }

        while (v96 > v95);
      }

      ++v94;
    }

    while (v89 > v94);
    v69 = *&v116[16];
    v70 = v89;
    if (*&v116[16])
    {
      do
      {
        v71 = 0;
        v72 = &byte_2500CC79A;
        do
        {
          v73 = *(v69 + 14);
          v74 = (1 << v71) & v73;
          if (((1 << v71) & v73) != 0)
          {
            v119 = 0uLL;
            v75 = 1;
            v76 = 3;
            v77 = v72;
            v118 = (v69 + 3);
            do
            {
              LOWORD(v115[0]) = *(v69 + 8) + *(v77 - 2);
              v78 = *(v69 + 9) + *(v77 - 1);
              WORD1(v115[0]) = v78;
              v79 = *(v69 + 10) + *v77;
              WORD2(v115[0]) = v79;
              if (v70 > LOWORD(v115[0]) && v96 > v78 && v98 > v79)
              {
                v80 = std::__hash_table<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::__unordered_map_hasher<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,geom::cell_coord,std::equal_to<geom::cell_coord>,false>,std::__unordered_map_equal<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::equal_to<geom::cell_coord>,geom::cell_coord,true>,std::allocator<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>>>::find<geom::cell_coord>(v116, v115);
                if (!v80)
                {
                  abort();
                }

                *&v118.f64[v75++] = v80 + 3;
              }

              v77 += 3;
              --v76;
            }

            while (v76);
            if (v75 > 3u)
            {
              if ((*(v69 + 30) >> *(&geom::dual_contouring<double>::edge_vertex_map + 2 * v71 + 1)))
              {
                v81 = v119.f64[1];
                v82 = a5;
                std::vector<unsigned int>::push_back[abi:nn200100](a5, *&v119.f64[1]);
                v83 = v119.f64[0];
                std::vector<unsigned int>::push_back[abi:nn200100](a5, *&v119.f64[0]);
                v84 = v118.f64[1];
                std::vector<unsigned int>::push_back[abi:nn200100](a5, *&v118.f64[1]);
                v85 = v118.f64[0];
              }

              else
              {
                v82 = a5;
                std::vector<unsigned int>::push_back[abi:nn200100](a5, *&v118.f64[0]);
                v84 = v118.f64[1];
                std::vector<unsigned int>::push_back[abi:nn200100](a5, *&v118.f64[1]);
                v83 = v119.f64[0];
                std::vector<unsigned int>::push_back[abi:nn200100](a5, *&v119.f64[0]);
                v85 = v119.f64[1];
                v81 = v119.f64[1];
              }

              std::vector<unsigned int>::push_back[abi:nn200100](v82, *&v85);
              *(v69 + 14) &= ~v74;
              v86 = &geom::dual_contouring<double>::edge_to_edge_map + 3 * v71;
              *(*&v84 + 4) &= ~(1 << *v86);
              *(*&v83 + 4) &= ~(1 << v86[1]);
              *(*&v81 + 4) &= ~(1 << v86[2]);
              v70 = v89;
            }
          }

          ++v71;
          v72 += 9;
        }

        while (v71 != 12);
        v69 = *v69;
      }

      while (v69);
    }
  }

  return std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v116);
}

__n128 geom_marching_cubes_3f(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x4_t a7, float32x4_t a8)
{
  v9 = a4;
  v13 = geom::collection_to_vector<float>(a5);
  v14 = geom::collection_to_vector<float>(a6);
  v19[0] = a1;
  v19[1] = a3;
  v20 = a2;
  v18[0] = a7;
  v18[1] = a8;
  geom::marching_cubes<float>::run(v19, v18, v9, v13, v14);
  return result;
}

void geom::marching_cubes<float>::run(uint64_t a1, float32x4_t *a2, unsigned int a3, const void **a4, const void **a5)
{
  v136 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = vsubq_f32(a2[1], *a2);
  v5.f32[0] = fminf(fminf(v6.f32[0], v6.f32[2]), v6.f32[1]) / a3;
  v103 = v6;
  v105 = *v5.f32;
  v119 = v6;
  if (v6.f32[2] <= *(&v119 | (4 * (v6.f32[1] > v6.f32[0]))))
  {
    v7 = v6.f32[1] > v6.f32[0];
  }

  else
  {
    v7 = 2;
  }

  if (v7 > 1)
  {
    v8 = -2;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 + v7;
  if (v7)
  {
    v10 = (v7 - 1);
  }

  else
  {
    v10 = 2;
  }

  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE4initEm(&v133, 1uLL);
  v106 = vdupq_lane_s32(v105, 0);
  v11 = vdivq_f32(v103, v106);
  v11.i32[3] = 0;
  *v11.f32 = vmovn_s32(vcvtq_u32_f32(vrndpq_f32(v11)));
  v12 = vadd_s16(*v11.f32, 0x1000100010001);
  v120 = v11.i64[0];
  v13 = 2 * *(&v120 & 0xFFFFFFFFFFFFFFF9 | (2 * (v10 & 3))) * *(&v120 & 0xFFFFFFFFFFFFFFF9 | (2 * (v9 & 3)));
  if (*(&v134 + 1) < v13)
  {
    _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE9do_resizeEm(&v133, v13);
  }

  memset(&v131, 0, sizeof(v131));
  memset(&v130, 0, sizeof(v130));
  v118 = v12;
  v14 = *(&v118 & 0xFFFFFFFFFFFFFFF9 | (2 * (v9 & 3)));
  v102 = *(&v118 & 0xFFFFFFFFFFFFFFF9 | (2 * (v10 & 3)));
  std::vector<float>::resize(&v131, v14 * v102);
  std::vector<float>::resize(&v130, v14 * v102);
  memset(v132, 0, 40);
  geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::init(v132, 1uLL);
  v15 = a4;
  v93 = *(&v118 | (2 * v7));
  if (*(&v118 | (2 * v7)))
  {
    v16 = 0;
    v95 = (&v116 & 0xFFFFFFFFFFFFFFF9 | (2 * (v9 & 3)));
    v100 = (&v114 & 0xFFFFFFFFFFFFFFF9 | (2 * (v10 & 3)));
    v17 = (&v110 & 0xFFFFFFFFFFFFFFF9 | (2 * (v9 & 3)));
    v18 = (&v110 & 0xFFFFFFFFFFFFFFF9 | (2 * (v10 & 3)));
    v19 = (&v113 & 0xFFFFFFFFFFFFFFF9 | (2 * (v9 & 3)));
    v98 = (&v113 & 0xFFFFFFFFFFFFFFF9 | (2 * (v10 & 3)));
    v99 = (&v115 & 0xFFFFFFFFFFFFFFF9 | (2 * (v9 & 3)));
    do
    {
      v94 = v16;
      if (v14)
      {
        v20 = 0;
        v117 = 0;
        *(&v117 & 0xFFFFFFFFFFFFFFF9 | (2 * (v7 & 3))) = v16;
        v21 = v117;
        do
        {
          v96 = v20;
          if (v102)
          {
            v22 = 0;
            v116 = v21;
            *v95 = v20;
            v23 = v116;
            do
            {
              v114 = v23;
              *v100 = v22;
              v24 = v114;
              v25 = (*a1)(*(a1 + 8), vmlaq_f32(*a2, v106, vcvtq_f32_u32(vmovl_u16(v114))));
              v115 = v24;
              v104 = v22;
              *&v131.__begin_[v22 * v14 + *v99] = v25;
              v26 = vtst_s16(v24, v24);
              v26.i16[3] = v26.i16[2];
              if ((vminv_u16(v26) & 0x8000) != 0)
              {
                v27 = 0;
                v28 = 0;
                v29 = vadd_s16(v24, -1);
                v129 = v29;
                v126 = -1;
                v127 = 0;
                v128 = 0;
                begin = v130.__begin_;
                v31 = v131.__begin_;
                do
                {
                  v32 = geom::marching_cubes<float>::vert_map[v27];
                  v113 = vadd_s16(v32, v29);
                  v33 = *v19;
                  v34 = *v98 * v14;
                  v112 = v32;
                  if (*(&v112 | (2 * v7)))
                  {
                    v35 = v31;
                  }

                  else
                  {
                    v35 = begin;
                  }

                  v36 = *&v35[v34 + v33];
                  *(v123 + v27) = v36;
                  v37 = 1 << v27;
                  if (v36 <= 0.0)
                  {
                    LOBYTE(v37) = 0;
                  }

                  v28 |= v37;
                  ++v27;
                }

                while (v27 != 8);
                v125 = v28;
                if ((v28 - 1) <= 0xFDu)
                {
                  _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE6insertERKS1_OS4_(&v133, &v129, v123, &v121);
                }
              }

              for (i = 0; i != 3; ++i)
              {
                v111 = v24;
                v39 = *(&v111 & 0xFFFFFFFFFFFFFFF9 | (2 * (i & 3)));
                if (v39)
                {
                  v109 = v24;
                  *(&v109 & 0xFFFFFFFFFFFFFFF9 | (2 * (i & 3))) = v39 - 1;
                  v110 = v109;
                  v40 = v7 == i ? &v130 : &v131;
                  v41 = *&v40->__begin_[*v17 + *v18 * v14];
                  v10 = i + (v10 & 0xFFFFFFFFFFFFFF00);
                  v121 = v109;
                  v122 = v10;
                  if (v25 > 0.0 != v41 > 0.0)
                  {
                    v129.i32[0] = (v15[1] - *v15) >> 4;
                    geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::insert(v132, &v121, &v129, v123);
                    v42 = *a2;
                    v43 = vmlaq_f32(*a2, v106, vcvtq_f32_u32(vmovl_u16(v121)));
                    v44 = (&v108 & 0xFFFFFFFFFFFFFFF9 | (2 * (v122 & 3)));
                    v108 = v121;
                    ++*v44;
                    v45 = vmlaq_n_f32(v43, vsubq_f32(vmlaq_f32(v42, v106, vcvtq_f32_u32(vmovl_u16(v108))), v43), v41 / (v41 - v25));
                    v47 = v15[1];
                    v46 = v15[2];
                    if (v47 >= v46)
                    {
                      v49 = (v47 - *v15) >> 4;
                      if ((v49 + 1) >> 60)
                      {
LABEL_96:
                        std::__throw_bad_array_new_length[abi:nn200100]();
                      }

                      v50 = v46 - *v15;
                      v51 = v50 >> 3;
                      if (v50 >> 3 <= (v49 + 1))
                      {
                        v51 = v49 + 1;
                      }

                      if (v50 >= 0x7FFFFFFFFFFFFFF0)
                      {
                        v52 = 0xFFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v52 = v51;
                      }

                      if (v52)
                      {
                        _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a4, v52);
                      }

                      v15 = a4;
                      *(16 * v49) = v45;
                      v48 = (16 * v49 + 16);
                      v53 = v15[1] - *v15;
                      v54 = (16 * v49 - v53);
                      memcpy(v54, *a4, v53);
                      v55 = *a4;
                      *a4 = v54;
                      a4[1] = v48;
                      a4[2] = 0;
                      if (v55)
                      {
                        operator delete(v55);
                      }
                    }

                    else
                    {
                      *v47 = v45;
                      v48 = v47 + 1;
                    }

                    v15[1] = v48;
                  }
                }
              }

              v22 = v104 + 1;
            }

            while (v104 + 1 != v102);
          }

          v20 = v96 + 1;
        }

        while (v14 > (v96 + 1));
      }

      v56 = *&v131.__begin_;
      *&v131.__begin_ = *&v130.__begin_;
      *&v130.__begin_ = v56;
      value = v131.__end_cap_.__value_;
      v131.__end_cap_.__value_ = v130.__end_cap_.__value_;
      v130.__end_cap_.__value_ = value;
      v16 = v94 + 1;
    }

    while (v93 > (v94 + 1));
  }

  v123[0] = &v133;
  v58 = a5;
  if (v134 >= 0x10)
  {
    v59 = 0;
    v60 = v133;
    v61 = v134 >> 4;
    while (1)
    {
      v62 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v60), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v123[1] = v62 ^ 0xFFFFLL;
      if (v62 != 0xFFFFLL)
      {
        break;
      }

      v59 -= 16;
      ++v60;
      if (!--v61)
      {
        goto LABEL_86;
      }
    }

    v63 = __clz(__rbit64(v62 ^ 0xFFFFLL));
    v64 = v63 - v59;
    v124 = v63 - v59;
    if (v63 + 1 != v59)
    {
      do
      {
        v65 = (*(v123[0] + 8) + (v64 << 6));
        if (*(a1 + 16) == 1)
        {
          geom::marching_cubes<float>::process_cell_33(a1, &v65[1]);
          v66 = v65[7].i8[0];
        }

        else
        {
          v67 = 0;
          v68 = &mc_classic + 16 * v65[5].u8[0];
          do
          {
            v66 = v67;
            v69 = v68[3 * v67++];
          }

          while (v69 != 255);
          v65[6] = v68;
          v65[7].i8[0] = v66;
        }

        if (v66 >= 1)
        {
          v70 = 0;
          do
          {
            v71 = *(*&v65[6] + v70);
            if (v71 == 12)
            {
              if (v65[5].i32[1] == -1)
              {
                v65[5].i32[1] = (a4[1] - *a4) >> 4;
                *&v72 = geom::marching_cubes<float>::get_interior_vertex_position(a1, &v65[1], v65, a4, v132);
                v74 = a4[1];
                v73 = a4[2];
                if (v74 >= v73)
                {
                  v76 = (v74 - *a4) >> 4;
                  if ((v76 + 1) >> 60)
                  {
                    goto LABEL_96;
                  }

                  v77 = v73 - *a4;
                  v78 = v77 >> 3;
                  if (v77 >> 3 <= (v76 + 1))
                  {
                    v78 = v76 + 1;
                  }

                  if (v77 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v79 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v79 = v78;
                  }

                  if (v79)
                  {
                    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a4, v79);
                  }

                  *(16 * v76) = v72;
                  v75 = (16 * v76 + 16);
                  v80 = a4[1] - *a4;
                  v81 = (16 * v76 - v80);
                  memcpy(v81, *a4, v80);
                  v82 = *a4;
                  *a4 = v81;
                  a4[1] = v75;
                  a4[2] = 0;
                  if (v82)
                  {
                    operator delete(v82);
                  }

                  v58 = a5;
                }

                else
                {
                  *v74 = v72;
                  v75 = v74 + 16;
                }

                a4[1] = v75;
              }

              v83 = &v65[5] + 1;
            }

            else
            {
              v84 = (&geom::marching_cubes<float>::cell_to_edge_vertex_offsets + 16 * v71);
              v121 = vadd_s16(*v84, *v65);
              LOBYTE(v122) = v84[1].i8[0];
              internal = geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::find_internal(v132, &v121);
              v83 = (v132[1] + 24 * internal + 16);
            }

            std::vector<unsigned int>::push_back[abi:nn200100](v58, v83);
            ++v70;
          }

          while (3 * v65[7].i8[0] > v70);
        }

        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(v123);
        v64 = v124;
      }

      while (v124 != -1);
    }
  }

LABEL_86:
  v87 = *v58;
  v86 = v58[1];
  if (*v58 != v86)
  {
    v88 = v86 - 4;
    if (v88 > v87)
    {
      v89 = v87 + 4;
      do
      {
        v90 = *(v89 - 1);
        *(v89 - 1) = *v88;
        *v88 = v90;
        v88 -= 4;
        v91 = v89 >= v88;
        v89 += 4;
      }

      while (!v91);
    }
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(v132);
  if (v130.__begin_)
  {
    v130.__end_ = v130.__begin_;
    operator delete(v130.__begin_);
  }

  if (v131.__begin_)
  {
    v131.__end_ = v131.__begin_;
    operator delete(v131.__begin_);
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v133);
}