char *std::vector<std::shared_ptr<md::MuninJunctionFeature>>::insert(void *a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v41 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v14);
    }

    v17 = (16 * v15);
    v38 = 0;
    v39 = 16 * v15;
    v40 = (16 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == a2)
        {
          v29 = 1;
        }

        else
        {
          v29 = v12 >> 3;
        }

        v42 = a1;
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v29);
      }

      v17 = (v17 - (((v12 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
      v39 = v17;
      *&v40 = v17;
    }

    v30 = *(a3 + 1);
    *v17 = *a3;
    v17[1] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      v17 = v40;
    }

    *&v40 = v17 + 2;
    v31 = v39;
    memcpy(v17 + 2, a2, a1[1] - a2);
    v32 = *a1;
    *&v40 = v40 + a1[1] - v4;
    a1[1] = v4;
    v33 = v4 - v32;
    v34 = (v31 - (v4 - v32));
    memcpy(v34, v32, v33);
    v35 = *a1;
    *a1 = v34;
    v36 = a1[2];
    *(a1 + 1) = v40;
    *&v40 = v35;
    *(&v40 + 1) = v36;
    v38 = v35;
    v39 = v35;
    std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(&v38);
    return v31;
  }

  else if (a2 == v6)
  {
    v16 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 8) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v6 + 16;
  }

  else
  {
    v8 = (v6 - 16);
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *v8;
      v9 = v6 + 16;
      *v8 = 0;
      *(v6 - 8) = 0;
    }

    a1[1] = v9;
    if (v6 != a2 + 16)
    {
      v18 = (v6 - 8);
      v19 = &a2[-v6 + 16];
      v20 = v6 - 32;
      do
      {
        v21 = *v20;
        *v20 = 0;
        *(v20 + 8) = 0;
        v22 = *v18;
        *(v18 - 1) = v21;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
        }

        v18 -= 2;
        v20 -= 16;
        v19 += 16;
      }

      while (v19);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 16;
    if (v23)
    {
      v24 = 0;
    }

    v25 = &a3[v24];
    v27 = *v25;
    v26 = *(v25 + 1);
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = *(v4 + 1);
    *v4 = v27;
    *(v4 + 1) = v26;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }
  }

  return v4;
}

void std::__shared_ptr_emplace<md::MuninJunctionFeature>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
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
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v1;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<md::MuninJunctionFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A08990;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__value_func<BOOL ()(md::MuninJunction const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::JunctionSearchResult const&&)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*,false>(double *a1, double *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 3);
  v10 = a2 - 6;
  v11 = a2 - 9;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * (a2 - v12);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_f64[0] = *(a2 - 2);
        if (result.n128_f64[0] >= v12[1])
        {
          return result;
        }

LABEL_111:
        v193 = *(v12 + 2);
        v168 = *v12;
        v90 = *v9;
        *(v12 + 4) = *(a2 - 2);
        *v12 = v90;
        result = v168;
        *(a2 - 2) = v193;
LABEL_112:
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = v12[4];
      v92 = v12[7];
      if (v91 >= v12[1])
      {
        if (v92 < v91)
        {
          v138 = *(v12 + 5);
          result = *(v12 + 3);
          *(v12 + 3) = *(v12 + 3);
          *(v12 + 10) = *(v12 + 16);
          *(v12 + 3) = result;
          *(v12 + 16) = v138;
          if (v12[4] < v12[1])
          {
            v196 = *(v12 + 2);
            v171 = *v12;
            *v12 = *(v12 + 3);
            *(v12 + 4) = *(v12 + 10);
            result.n128_u64[1] = v171.n128_u64[1];
            *(v12 + 3) = v171;
            *(v12 + 10) = v196;
          }
        }
      }

      else if (v92 >= v91)
      {
        v198 = *(v12 + 2);
        v173 = *v12;
        *v12 = *(v12 + 3);
        *(v12 + 4) = *(v12 + 10);
        *(v12 + 3) = v173;
        *(v12 + 10) = v198;
        if (v92 < v12[4])
        {
          v146 = *(v12 + 5);
          result = *(v12 + 3);
          *(v12 + 3) = *(v12 + 3);
          *(v12 + 10) = *(v12 + 16);
          *(v12 + 3) = result;
          *(v12 + 16) = v146;
        }
      }

      else
      {
        v194 = *(v12 + 2);
        v169 = *v12;
        *v12 = *(v12 + 3);
        *(v12 + 4) = *(v12 + 16);
        result.n128_u64[1] = v169.n128_u64[1];
        *(v12 + 3) = v169;
        *(v12 + 16) = v194;
      }

      result.n128_f64[0] = *(a2 - 2);
      if (result.n128_f64[0] >= v12[7])
      {
        return result;
      }

      result = *(v12 + 6);
      v147 = *(v12 + 8);
      v148 = *(a2 - 2);
      *(v12 + 3) = *v9;
      *(v12 + 16) = v148;
      *(a2 - 2) = v147;
      *v9 = result;
      result.n128_f64[0] = v12[7];
      if (result.n128_f64[0] >= v12[4])
      {
        return result;
      }

      v149 = *(v12 + 5);
      result = *(v12 + 3);
      *(v12 + 3) = *(v12 + 3);
      *(v12 + 10) = *(v12 + 16);
      *(v12 + 3) = result;
      *(v12 + 16) = v149;
LABEL_187:
      result.n128_f64[0] = v12[4];
      if (result.n128_f64[0] < v12[1])
      {
        v199 = *(v12 + 2);
        v174 = *v12;
        *v12 = *(v12 + 3);
        *(v12 + 4) = *(v12 + 10);
        result = v174;
        *(v12 + 3) = v174;
        *(v12 + 10) = v199;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*,0>(v12, (v12 + 3), v12 + 3, (v12 + 9), (a2 - 3), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v93 = v12 + 3;
      v95 = v12 == a2 || v93 == a2;
      if (a4)
      {
        if (!v95)
        {
          v96 = 0;
          v97 = v12;
          do
          {
            v98 = v93;
            result.n128_f64[0] = v97[4];
            if (result.n128_f64[0] < v97[1])
            {
              v99 = *v93;
              v100 = *(v97 + 10);
              v101 = v96;
              while (1)
              {
                v102 = v12 + v101;
                *(v102 + 24) = *(v12 + v101);
                *(v102 + 10) = *(v12 + v101 + 16);
                if (!v101)
                {
                  break;
                }

                v101 -= 24;
                if (result.n128_f64[0] >= *(v102 - 2))
                {
                  v103 = v12 + v101 + 24;
                  goto LABEL_131;
                }
              }

              v103 = v12;
LABEL_131:
              *v103 = v99;
              *(v103 + 8) = result.n128_u64[0];
              *(v103 + 16) = v100;
            }

            v93 = v98 + 3;
            v96 += 24;
            v97 = v98;
          }

          while (v98 + 3 != a2);
        }
      }

      else if (!v95)
      {
        do
        {
          v139 = v93;
          result.n128_f64[0] = a1[4];
          if (result.n128_f64[0] < a1[1])
          {
            v140 = *v93;
            v141 = *(a1 + 5);
            v142 = v139;
            do
            {
              *v142 = *(v142 - 3);
              *(v142 + 4) = *(v142 - 2);
              v143 = *(v142 - 5);
              v142 -= 3;
            }

            while (result.n128_f64[0] < v143);
            *v142 = v140;
            v142[1] = result.n128_f64[0];
            *(v142 + 4) = v141;
          }

          v93 = v139 + 3;
          a1 = v139;
        }

        while (v139 + 3 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v104 = (v14 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v12[3 * v107];
            if (2 * v106 + 2 < v14 && v108[1] < v108[4])
            {
              v108 += 3;
              v107 = 2 * v106 + 2;
            }

            v109 = &v12[3 * v106];
            v110 = v109[1];
            if (v108[1] >= v110)
            {
              v111 = *v109;
              v112 = *(v109 + 4);
              do
              {
                v113 = v109;
                v109 = v108;
                v114 = *v108;
                *(v113 + 4) = *(v108 + 4);
                *v113 = v114;
                if (v104 < v107)
                {
                  break;
                }

                v115 = 2 * v107;
                v107 = (2 * v107) | 1;
                v108 = &v12[3 * v107];
                v116 = v115 + 2;
                if (v116 < v14 && v108[1] < v108[4])
                {
                  v108 += 3;
                  v107 = v116;
                }
              }

              while (v108[1] >= v110);
              *v109 = v111;
              v109[1] = v110;
              *(v109 + 4) = v112;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        v117 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v118 = 0;
          v195 = *(v12 + 2);
          v170 = *v12;
          v119 = v12;
          do
          {
            v120 = &v119[3 * v118];
            v121 = (v120 + 3);
            v122 = (2 * v118) | 1;
            v118 = 2 * v118 + 2;
            if (v118 >= v117)
            {
              v118 = v122;
            }

            else
            {
              v123 = v120[4];
              v124 = v120[7];
              v125 = (v120 + 6);
              if (v123 >= v124)
              {
                v118 = v122;
              }

              else
              {
                v121 = v125;
              }
            }

            v126 = *v121;
            *(v119 + 4) = v121[1].n128_u32[0];
            *v119 = v126;
            v119 = v121;
          }

          while (v118 <= ((v117 - 2) >> 1));
          a2 -= 3;
          if (v121 == a2)
          {
            result = v170;
            v121[1].n128_u32[0] = v195;
            *v121 = v170;
          }

          else
          {
            v127 = *a2;
            v121[1].n128_u32[0] = *(a2 + 4);
            *v121 = v127;
            result = v170;
            *(a2 + 4) = v195;
            *a2 = v170;
            v128 = v121 - v12 + 24;
            if (v128 >= 25)
            {
              v129 = (-2 - 0x5555555555555555 * (v128 >> 3)) >> 1;
              v130 = &v12[3 * v129];
              result.n128_u64[0] = v121->n128_u64[1];
              if (v130[1] < result.n128_f64[0])
              {
                v131 = v121->n128_u64[0];
                v132 = v121[1].n128_i32[0];
                do
                {
                  v133 = v121;
                  v121 = v130;
                  v134 = *v130;
                  v133[1].n128_u32[0] = *(v130 + 4);
                  *v133 = v134;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = &v12[3 * v129];
                }

                while (v130[1] < result.n128_f64[0]);
                v121->n128_u64[0] = v131;
                v121->n128_u64[1] = result.n128_u64[0];
                v121[1].n128_u32[0] = v132;
              }
            }
          }
        }

        while (v117-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = &v12[3 * (v14 >> 1)];
    v17 = *(a2 - 2);
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_f64[1];
      if (v18 >= v12[1])
      {
        if (v17 < v18)
        {
          v177 = v16[1].n128_u64[0];
          v152 = *v16;
          v22 = *v9;
          v16[1].n128_u32[0] = *(a2 - 2);
          *v16 = v22;
          *(a2 - 2) = v177;
          *v9 = v152;
          if (v16->n128_f64[1] < v12[1])
          {
            v178 = *(v12 + 2);
            v153 = *v12;
            v23 = *v16;
            *(v12 + 4) = v16[1].n128_u32[0];
            *v12 = v23;
            v16[1].n128_u32[0] = v178;
            *v16 = v153;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v175 = *(v12 + 2);
          v150 = *v12;
          v19 = *v9;
          *(v12 + 4) = *(a2 - 2);
          *v12 = v19;
          goto LABEL_26;
        }

        v181 = *(v12 + 2);
        v156 = *v12;
        v24 = *v16;
        *(v12 + 4) = v16[1].n128_u32[0];
        *v12 = v24;
        v16[1].n128_u32[0] = v181;
        *v16 = v156;
        if (*(a2 - 2) < v16->n128_f64[1])
        {
          v175 = v16[1].n128_u64[0];
          v150 = *v16;
          v25 = *v9;
          v16[1].n128_u32[0] = *(a2 - 2);
          *v16 = v25;
LABEL_26:
          *(a2 - 2) = v175;
          *v9 = v150;
        }
      }

      v26 = &v12[3 * v15];
      v27 = (v26 - 3);
      v28 = *(v26 - 2);
      v29 = *(a2 - 5);
      if (v28 >= v12[4])
      {
        if (v29 < v28)
        {
          v182 = *(v26 - 1);
          v157 = *v27;
          v33 = *v10;
          *(v26 - 2) = *(a2 - 8);
          *v27 = v33;
          *(a2 - 8) = v182;
          *v10 = v157;
          if (*(v26 - 2) < v12[4])
          {
            v34 = *(v12 + 3);
            v35 = *(v12 + 5);
            v36 = v27[1].n128_i32[0];
            *(v12 + 3) = *v27;
            *(v12 + 10) = v36;
            v27[1].n128_u32[0] = v35;
            *v27 = v34;
          }
        }
      }

      else
      {
        if (v29 < v28)
        {
          v30 = *(v12 + 3);
          v31 = *(v12 + 5);
          v32 = *(a2 - 8);
          *(v12 + 3) = *v10;
          *(v12 + 10) = v32;
          *(a2 - 8) = v31;
          goto LABEL_38;
        }

        v38 = *(v12 + 3);
        v39 = *(v12 + 5);
        v40 = v27[1].n128_i32[0];
        *(v12 + 3) = *v27;
        *(v12 + 10) = v40;
        v27[1].n128_u32[0] = v39;
        *v27 = v38;
        if (*(a2 - 5) < v27->n128_f64[1])
        {
          v184 = v27[1].n128_i64[0];
          v159 = *v27;
          v41 = *v10;
          v27[1].n128_u32[0] = *(a2 - 8);
          *v27 = v41;
          v30 = v159;
          *(a2 - 8) = v184;
LABEL_38:
          *v10 = v30;
        }
      }

      v42 = &v12[3 * v15];
      v43 = v42[4];
      v44 = *(a2 - 8);
      if (v43 >= v12[7])
      {
        if (v44 < v43)
        {
          v185 = *(v42 + 5);
          v160 = *(v42 + 3);
          v48 = *v11;
          *(v42 + 10) = *(a2 - 14);
          *(v42 + 3) = v48;
          *(a2 - 14) = v185;
          *v11 = v160;
          if (v42[4] < v12[7])
          {
            v49 = *(v12 + 3);
            v50 = *(v12 + 8);
            v51 = *(v42 + 10);
            *(v12 + 3) = *(v42 + 3);
            *(v12 + 16) = v51;
            *(v42 + 10) = v50;
            *(v42 + 3) = v49;
          }
        }
      }

      else
      {
        if (v44 < v43)
        {
          v45 = *(v12 + 3);
          v46 = *(v12 + 8);
          v47 = *(a2 - 14);
          *(v12 + 3) = *v11;
          *(v12 + 16) = v47;
          *(a2 - 14) = v46;
          goto LABEL_47;
        }

        v52 = *(v12 + 3);
        v53 = *(v12 + 8);
        v54 = *(v42 + 10);
        *(v12 + 3) = *(v42 + 3);
        *(v12 + 16) = v54;
        *(v42 + 10) = v53;
        *(v42 + 3) = v52;
        if (*(a2 - 8) < v42[4])
        {
          v186 = *(v42 + 5);
          v161 = *(v42 + 3);
          v55 = *v11;
          *(v42 + 10) = *(a2 - 14);
          *(v42 + 3) = v55;
          v45 = v161;
          *(a2 - 14) = v186;
LABEL_47:
          *v11 = v45;
        }
      }

      v56 = v16->n128_f64[1];
      v57 = v42[4];
      if (v56 >= v27->n128_f64[1])
      {
        if (v57 < v56)
        {
          v188 = v16[1].n128_u64[0];
          v163 = *v16;
          *v16 = *(v42 + 3);
          v16[1].n128_u32[0] = *(v42 + 10);
          *(v42 + 10) = v188;
          *(v42 + 3) = v163;
          if (v16->n128_f64[1] < v27->n128_f64[1])
          {
            v189 = v27[1].n128_i64[0];
            v164 = *v27;
            *v27 = *v16;
            v27[1].n128_u32[0] = v16[1].n128_u32[0];
            v16[1].n128_u32[0] = v189;
            *v16 = v164;
          }
        }
      }

      else
      {
        if (v57 < v56)
        {
          v187 = v27[1].n128_u64[0];
          v162 = *v27;
          *v27 = *(v42 + 3);
          v27[1].n128_u32[0] = *(v42 + 10);
          goto LABEL_56;
        }

        v190 = v27[1].n128_i64[0];
        v165 = *v27;
        *v27 = *v16;
        v27[1].n128_u32[0] = v16[1].n128_u32[0];
        v16[1].n128_u32[0] = v190;
        *v16 = v165;
        if (v42[4] < v16->n128_f64[1])
        {
          v187 = v16[1].n128_u64[0];
          v162 = *v16;
          *v16 = *(v42 + 3);
          v16[1].n128_u32[0] = *(v42 + 10);
LABEL_56:
          *(v42 + 10) = v187;
          *(v42 + 3) = v162;
        }
      }

      v191 = *(v12 + 2);
      v166 = *v12;
      result = *v16;
      *(v12 + 4) = v16[1].n128_u32[0];
      *v12 = result;
      result.n128_u64[1] = v166.n128_u64[1];
      v16[1].n128_u32[0] = v191;
      *v16 = v166;
      goto LABEL_58;
    }

    v20 = v12[1];
    if (v20 >= v16->n128_f64[1])
    {
      if (v17 < v20)
      {
        v179 = *(v12 + 2);
        v154 = *v12;
        result = *v9;
        *(v12 + 4) = *(a2 - 2);
        *v12 = result;
        result.n128_u64[1] = v154.n128_u64[1];
        *(a2 - 2) = v179;
        *v9 = v154;
        if (v12[1] < v16->n128_f64[1])
        {
          v180 = v16[1].n128_u64[0];
          v155 = *v16;
          result = *v12;
          v16[1].n128_u32[0] = *(v12 + 4);
          *v16 = result;
          result.n128_u64[1] = v155.n128_u64[1];
          *(v12 + 4) = v180;
          *v12 = v155;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v20)
    {
      v176 = v16[1].n128_u64[0];
      v151 = *v16;
      v21 = *v9;
      v16[1].n128_u32[0] = *(a2 - 2);
      *v16 = v21;
LABEL_35:
      result.n128_u64[1] = v151.n128_u64[1];
      *(a2 - 2) = v176;
      *v9 = v151;
      goto LABEL_58;
    }

    v183 = v16[1].n128_u64[0];
    v158 = *v16;
    result = *v12;
    v16[1].n128_u32[0] = *(v12 + 4);
    *v16 = result;
    result.n128_u64[1] = v158.n128_u64[1];
    *(v12 + 4) = v183;
    *v12 = v158;
    if (*(a2 - 2) < v12[1])
    {
      v176 = *(v12 + 2);
      v151 = *v12;
      v37 = *v9;
      *(v12 + 4) = *(a2 - 2);
      *v12 = v37;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_f64[0] = v12[1];
LABEL_61:
      v58 = *v12;
      v59 = *(v12 + 2);
      v60 = v12;
      do
      {
        v61 = v60;
        v60 += 3;
      }

      while (v61[4] < result.n128_f64[0]);
      v62 = a2;
      if (v61 == v12)
      {
        v65 = a2;
        while (v60 < v65)
        {
          v63 = v65 - 24;
          v66 = *(v65 - 16);
          v65 -= 24;
          if (v66 < result.n128_f64[0])
          {
            goto LABEL_71;
          }
        }

        v63 = v65;
      }

      else
      {
        do
        {
          v63 = v62 - 24;
          v64 = *(v62 - 16);
          v62 -= 24;
        }

        while (v64 >= result.n128_f64[0]);
      }

LABEL_71:
      v12 = v60;
      if (v60 < v63)
      {
        v67 = v63;
        do
        {
          v68 = *v12;
          v69 = *(v12 + 2);
          v70 = *(v67 + 16);
          *v12 = *v67;
          *(v12 + 4) = v70;
          *(v67 + 16) = v69;
          *v67 = v68;
          do
          {
            v71 = v12[4];
            v12 += 3;
          }

          while (v71 < result.n128_f64[0]);
          do
          {
            v72 = *(v67 - 16);
            v67 -= 24;
          }

          while (v72 >= result.n128_f64[0]);
        }

        while (v12 < v67);
      }

      if (v12 - 3 != a1)
      {
        v73 = *(v12 - 3);
        *(a1 + 4) = *(v12 - 2);
        *a1 = v73;
      }

      *(v12 - 3) = v58;
      *(v12 - 2) = result.n128_f64[0];
      *(v12 - 2) = v59;
      if (v60 < v63)
      {
        goto LABEL_82;
      }

      v74 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*>(a1, v12 - 3, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*>(v12, a2, v75))
      {
        a2 = v12 - 3;
        if (!v74)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v74)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*,false>(a1, (v12 - 3), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      result.n128_f64[0] = v12[1];
      if (*(v12 - 2) < result.n128_f64[0])
      {
        goto LABEL_61;
      }

      if (result.n128_f64[0] >= *(a2 - 2))
      {
        v78 = (v12 + 3);
        do
        {
          v12 = v78;
          if (v78 >= a2)
          {
            break;
          }

          v79 = *(v78 + 8);
          v78 += 24;
        }

        while (result.n128_f64[0] >= v79);
      }

      else
      {
        v76 = v12;
        do
        {
          v12 = v76 + 3;
          v77 = v76[4];
          v76 += 3;
        }

        while (result.n128_f64[0] >= v77);
      }

      v80 = a2;
      if (v12 < a2)
      {
        v81 = a2;
        do
        {
          v80 = v81 - 24;
          v82 = *(v81 - 16);
          v81 -= 24;
        }

        while (result.n128_f64[0] < v82);
      }

      v83 = *a1;
      v84 = *(a1 + 2);
      while (v12 < v80)
      {
        v192 = *(v12 + 2);
        v167 = *v12;
        v85 = *v80;
        *(v12 + 4) = *(v80 + 16);
        *v12 = v85;
        *(v80 + 16) = v192;
        *v80 = v167;
        do
        {
          v86 = v12[4];
          v12 += 3;
        }

        while (result.n128_f64[0] >= v86);
        do
        {
          v87 = *(v80 - 16);
          v80 -= 24;
        }

        while (result.n128_f64[0] < v87);
      }

      if (v12 - 3 != a1)
      {
        v88 = *(v12 - 3);
        *(a1 + 4) = *(v12 - 2);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 3) = v83;
      *(v12 - 2) = result.n128_f64[0];
      *(v12 - 2) = v84;
    }
  }

  result.n128_f64[0] = v12[4];
  v89 = *(a2 - 2);
  if (result.n128_f64[0] >= v12[1])
  {
    if (v89 >= result.n128_f64[0])
    {
      return result;
    }

    result = *(v12 + 3);
    v136 = *(v12 + 5);
    v137 = *(a2 - 2);
    *(v12 + 3) = *v9;
    *(v12 + 10) = v137;
    *(a2 - 2) = v136;
    *v9 = result;
    goto LABEL_187;
  }

  if (v89 < result.n128_f64[0])
  {
    goto LABEL_111;
  }

  v197 = *(v12 + 2);
  v172 = *v12;
  *v12 = *(v12 + 3);
  *(v12 + 4) = *(v12 + 10);
  result.n128_u64[1] = v172.n128_u64[1];
  *(v12 + 3) = v172;
  *(v12 + 10) = v197;
  result.n128_f64[0] = *(a2 - 2);
  if (result.n128_f64[0] < v12[4])
  {
    result = *(v12 + 3);
    v144 = *(v12 + 5);
    v145 = *(a2 - 2);
    *(v12 + 3) = *v9;
    *(v12 + 10) = v145;
    *(a2 - 2) = v144;
    goto LABEL_112;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f64[1];
  v7 = a3->n128_f64[1];
  if (v6 >= a1->n128_f64[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      v10 = a2[1].n128_u64[0];
      v11 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v11;
      a3[1].n128_u32[0] = v10;
      *a3 = result;
      if (a2->n128_f64[1] < a1->n128_f64[1])
      {
        result = *a1;
        v12 = a1[1].n128_u64[0];
        v13 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v13;
        a2[1].n128_u32[0] = v12;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = a1[1].n128_u64[0];
      v9 = a3[1].n128_u32[0];
      *a1 = *a3;
      a1[1].n128_u32[0] = v9;
LABEL_9:
      a3[1].n128_u32[0] = v8;
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    v14 = a1[1].n128_u64[0];
    v15 = a2[1].n128_u32[0];
    *a1 = *a2;
    a1[1].n128_u32[0] = v15;
    a2[1].n128_u32[0] = v14;
    *a2 = result;
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      result = *a2;
      v8 = a2[1].n128_u64[0];
      v16 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[1] < a3->n128_f64[1])
  {
    result = *a3;
    v17 = a3[1].n128_u64[0];
    v18 = a4[1].n128_u32[0];
    *a3 = *a4;
    a3[1].n128_u32[0] = v18;
    a4[1].n128_u32[0] = v17;
    *a4 = result;
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      result = *a2;
      v19 = a2[1].n128_u64[0];
      v20 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v20;
      a3[1].n128_u32[0] = v19;
      *a3 = result;
      if (a2->n128_f64[1] < a1->n128_f64[1])
      {
        result = *a1;
        v21 = a1[1].n128_u64[0];
        v22 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v22;
        a2[1].n128_u32[0] = v21;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = a5->n128_u64[1];
  if (result.n128_f64[0] < a4->n128_f64[1])
  {
    result = *a4;
    v23 = a4[1].n128_u64[0];
    v24 = a5[1].n128_u32[0];
    *a4 = *a5;
    a4[1].n128_u32[0] = v24;
    a5[1].n128_u32[0] = v23;
    *a5 = result;
    result.n128_u64[0] = a4->n128_u64[1];
    if (result.n128_f64[0] < a3->n128_f64[1])
    {
      result = *a3;
      v25 = a3[1].n128_u64[0];
      v26 = a4[1].n128_u32[0];
      *a3 = *a4;
      a3[1].n128_u32[0] = v26;
      a4[1].n128_u32[0] = v25;
      *a4 = result;
      result.n128_u64[0] = a3->n128_u64[1];
      if (result.n128_f64[0] < a2->n128_f64[1])
      {
        result = *a2;
        v27 = a2[1].n128_u64[0];
        v28 = a3[1].n128_u32[0];
        *a2 = *a3;
        a2[1].n128_u32[0] = v28;
        a3[1].n128_u32[0] = v27;
        *a3 = result;
        result.n128_u64[0] = a2->n128_u64[1];
        if (result.n128_f64[0] < a1->n128_f64[1])
        {
          result = *a1;
          v29 = a1[1].n128_u64[0];
          v30 = a2[1].n128_u32[0];
          *a1 = *a2;
          a1[1].n128_u32[0] = v30;
          a2[1].n128_u32[0] = v29;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*>(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 3);
      v8 = *(a1 + 32);
      v9 = *(a2 - 2);
      if (v8 < *(a1 + 8))
      {
        if (v9 >= v8)
        {
          v35 = *(a1 + 16);
          v36 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v36;
          *(a1 + 40) = v35;
          if (*(a2 - 2) >= *(a1 + 32))
          {
            return 1;
          }

          v10 = *(a1 + 24);
          v11 = *(a1 + 40);
          v37 = *(a2 - 2);
          *(a1 + 24) = *v7;
          *(a1 + 40) = v37;
        }

        else
        {
          v10 = *a1;
          v11 = *(a1 + 16);
          v12 = *(a2 - 2);
          *a1 = *v7;
          *(a1 + 16) = v12;
        }

        *(a2 - 2) = v11;
        *v7 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *(a1 + 24);
      v25 = *(a1 + 40);
      v26 = *(a2 - 2);
      *(a1 + 24) = *v7;
      *(a1 + 40) = v26;
      *(a2 - 2) = v25;
      *v7 = v24;
LABEL_50:
      if (*(a1 + 32) < *(a1 + 8))
      {
        v57 = *(a1 + 16);
        v58 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v58;
        *(a1 + 40) = v57;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_2 &,md::MuninJunctionInfo*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 3), a3);
      return 1;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 8);
    v21 = *(a1 + 56);
    if (v19 >= v20)
    {
      if (v21 < v19)
      {
        v31 = *(a1 + 40);
        v32 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v32;
        *(a1 + 64) = v31;
        if (*(a1 + 32) < v20)
        {
          v33 = *(a1 + 16);
          v34 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v34;
          *(a1 + 40) = v33;
        }
      }

      goto LABEL_47;
    }

    if (v21 >= v19)
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (v21 >= *(a1 + 32))
      {
        goto LABEL_47;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    *(a1 + 48) = v23;
    *(a1 + 64) = v22;
LABEL_47:
    if (*(a2 - 2) >= *(a1 + 56))
    {
      return 1;
    }

    v51 = a2 - 3;
    v52 = *(a1 + 48);
    v53 = *(a1 + 64);
    v54 = *(a2 - 2);
    *(a1 + 48) = *(a2 - 3);
    *(a1 + 64) = v54;
    *(v51 + 4) = v53;
    *v51 = v52;
    if (*(a1 + 56) >= *(a1 + 32))
    {
      return 1;
    }

    v55 = *(a1 + 40);
    v56 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v56;
    *(a1 + 64) = v55;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 2) < *(a1 + 8))
    {
      v4 = *a1;
      v5 = *(a1 + 16);
      v6 = *(a2 - 2);
      *a1 = *(a2 - 3);
      *(a1 + 16) = v6;
      *(a2 - 2) = v5;
      *(a2 - 3) = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 32);
  v15 = *(a1 + 8);
  v16 = *(a1 + 56);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v28;
      *(a1 + 64) = v27;
      if (*(a1 + 32) < v15)
      {
        v29 = *(a1 + 16);
        v30 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (v16 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      v17 = *(a1 + 40);
      v18 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *a1 = *v13;
      *(a1 + 16) = *(a1 + 64);
    }

    *v13 = v18;
    *(a1 + 64) = v17;
  }

LABEL_33:
  v40 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = v40[1];
    if (v43 < v13[1])
    {
      v44 = *v40;
      v45 = *(v40 + 4);
      v46 = v41;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (v43 >= *(v47 + 32))
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v44;
      *(v48 + 8) = v43;
      *(v48 + 16) = v45;
      if (++v42 == 8)
      {
        return v40 + 3 == a2;
      }
    }

    v13 = v40;
    v41 += 24;
    v40 += 3;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

BOOL std::__function::__func<md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_1,std::allocator<md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_1>,BOOL ()(md::MuninJunction const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 69);
  if (v2 > 2)
  {
    return 1;
  }

  if (v2 - 1 > 1)
  {
    return 0;
  }

  return *(*a2 + 68) > 2u;
}

void std::__function::__func<md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_0,std::allocator<md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_0>,void ()(md::JunctionSearchResult const&&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = sqrt(*(a2 + 24));
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v2) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v2) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninJunctionInfo>>(v12);
    }

    v16 = 24 * v9;
    v17 = *(a2 + 16);
    *v16 = v17;
    *(v16 + 8) = v3;
    v18 = 10.0;
    if (!*(v17 + 64))
    {
      v22 = *(v17 + 40);
      v23 = *(v17 + 48);
      v18 = 0.0;
      while (v22 != v23)
      {
        v24 = *v22++;
        v18 = fmaxf(v18, *(v24 + 8));
      }
    }

    *(24 * v9 + 0x10) = v18;
    v8 = v16 + 24;
    v19 = *(v2 + 8) - *v2;
    v20 = v16 - v19;
    memcpy((v16 - v19), *v2, v19);
    v21 = *v2;
    *v2 = v20;
    *(v2 + 8) = v8;
    *(v2 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    v6 = *(a2 + 16);
    *v4 = v6;
    *(v4 + 8) = v3;
    v7 = 10.0;
    if (!*(v6 + 64))
    {
      v13 = *(v6 + 40);
      v14 = *(v6 + 48);
      v7 = 0.0;
      while (v13 != v14)
      {
        v15 = *v13++;
        v7 = fmaxf(v7, *(v15 + 8));
      }
    }

    *(v4 + 16) = v7;
    v8 = v4 + 24;
  }

  *(v2 + 8) = v8;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninJunctionInfo>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__function::__func<md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_0,std::allocator<md::MuninRoadLabeler::findNearbyJunctions(geo::Mercator3<double> const&,double,std::vector<md::MuninJunctionInfo> &)::$_0>,void ()(md::JunctionSearchResult const&&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A088B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<md::MuninRoadLabeler::findConnectedJunctions(md::MuninRoadEdge const*,std::vector<std::vector<md::MuninJunctionInfo>> &,unsigned int)::$_0,std::allocator<md::MuninRoadLabeler::findConnectedJunctions(md::MuninRoadEdge const*,std::vector<std::vector<md::MuninJunctionInfo>> &,unsigned int)::$_0>,BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  if (**(a1 + 24) >= *a4)
  {
    v4 = *a2;
    v5 = sqrt((*(*a2 + 16) - **(a1 + 8)) * (*(*a2 + 16) - **(a1 + 8)) + (*(*a2 + 24) - *(*(a1 + 8) + 8)) * (*(*a2 + 24) - *(*(a1 + 8) + 8))) / **(a1 + 16);
    v6 = **(a1 + 32) + 24 * *a4;
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    if (v8 >= v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v6) >> 3);
      v11 = v10 + 1;
      if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v6) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninJunctionInfo>>(v13);
      }

      v14 = 24 * v10;
      *v14 = v4;
      *(v14 + 8) = v5;
      *(v14 + 16) = 0;
      v9 = 24 * v10 + 24;
      v15 = *(v6 + 8) - *v6;
      v16 = v14 - v15;
      memcpy((v14 - v15), *v6, v15);
      v17 = *v6;
      *v6 = v16;
      *(v6 + 8) = v9;
      *(v6 + 16) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v8 = v4;
      *(v8 + 8) = v5;
      v9 = v8 + 24;
      *(v8 + 16) = 0;
    }

    *(v6 + 8) = v9;
  }

  return 1;
}

__n128 std::__function::__func<md::MuninRoadLabeler::findConnectedJunctions(md::MuninRoadEdge const*,std::vector<std::vector<md::MuninJunctionInfo>> &,unsigned int)::$_0,std::allocator<md::MuninRoadLabeler::findConnectedJunctions(md::MuninRoadEdge const*,std::vector<std::vector<md::MuninJunctionInfo>> &,unsigned int)::$_0>,BOOL ()(md::MuninJunction const*,md::GraphTraversalPath const*,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A08948;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__introsort<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,false>(float *a1, float *a2, uint64_t a3, char a4, __n128 a5)
{
  while (2)
  {
    v144 = (a2 - 8);
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = (a2 - v9) >> 5;
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3uLL:
                v72 = v9[14];
                v73 = *(a2 - 2);
                if (v72 >= v9[6])
                {
                  if (v73 >= v72)
                  {
                    return;
                  }

                  v70 = (v9 + 8);
                  v71 = (a2 - 8);
                  goto LABEL_207;
                }

                if (v73 < v72)
                {
                  goto LABEL_126;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v9, v9 + 2);
                if (*(a2 - 2) >= v9[14])
                {
                  return;
                }

                v74 = (v9 + 8);
LABEL_127:
                v75 = (a2 - 8);
LABEL_128:

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v74, v75);
                return;
              case 4uLL:

                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,0>(v9, (v9 + 8), (v9 + 16), v144);
                return;
              case 5uLL:
                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,0>(v9, (v9 + 8), (v9 + 16), (v9 + 24));
                if (*(a2 - 2) >= v9[30])
                {
                  return;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v9 + 6, v144);
                if (v9[30] >= v9[22])
                {
                  return;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v9 + 4, v9 + 6);
                if (v9[22] >= v9[14])
                {
                  return;
                }

                v70 = (v9 + 8);
                v71 = (v9 + 16);
LABEL_207:
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v70, v71);
                if (v9[14] >= v9[6])
                {
                  return;
                }

                v75 = (v9 + 8);
                v74 = v9;
                goto LABEL_128;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              if (*(a2 - 2) >= v9[6])
              {
                return;
              }

LABEL_126:
              v74 = v9;
              goto LABEL_127;
            }
          }

          if (v10 <= 23)
          {
            v76 = v9 + 8;
            v78 = v9 == a2 || v76 == a2;
            if (a4)
            {
              if (!v78)
              {
                v79 = 0;
                v80 = v9;
                do
                {
                  v81 = v76;
                  if (v80[14] < v80[6])
                  {
                    v82 = *v76;
                    *v76 = 0;
                    *(v76 + 1) = 0;
                    v83 = *(v80 + 6);
                    v84 = v79;
                    a5.n128_u64[0] = *(v80 + 7);
                    v145 = v82;
                    v150 = a5;
                    while (1)
                    {
                      v85 = v9 + v84;
                      v86 = *(v9 + v84);
                      *v85 = 0;
                      *(v85 + 1) = 0;
                      v87 = *(v9 + v84 + 40);
                      *(v85 + 2) = v86;
                      if (v87)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v87);
                      }

                      *(v85 + 3) = *(v85 + 1);
                      if (!v84)
                      {
                        break;
                      }

                      v88 = v9 + v84;
                      v89 = *(v9 + v84 - 8);
                      v84 -= 32;
                      if (v150.n128_f32[0] >= v89)
                      {
                        v90 = v9 + v84 + 32;
                        v91 = v88 + 16;
                        goto LABEL_151;
                      }
                    }

                    v91 = v9 + 4;
                    v90 = v9;
LABEL_151:
                    v92 = *(v90 + 8);
                    *v90 = v145;
                    if (v92)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v92);
                    }

                    *v91 = v83;
                    a5.n128_u64[1] = v150.n128_u64[1];
                    *(v90 + 24) = v150.n128_u64[0];
                  }

                  v76 = v81 + 8;
                  v79 += 32;
                  v80 = v81;
                }

                while (v81 + 8 != a2);
              }
            }

            else if (!v78)
            {
              do
              {
                v136 = v76;
                if (a1[14] < a1[6])
                {
                  v137 = *v76;
                  *v76 = 0;
                  *(v76 + 1) = 0;
                  v138 = *(a1 + 6);
                  v139 = v76;
                  a5.n128_u64[0] = *(a1 + 7);
                  v146 = v137;
                  v153 = a5;
                  do
                  {
                    v140 = *(v139 - 2);
                    *(v139 - 4) = 0;
                    *(v139 - 3) = 0;
                    v141 = *(v139 + 1);
                    *v139 = v140;
                    if (v141)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v141);
                    }

                    *(v139 + 1) = *(v139 - 1);
                    v142 = *(v139 - 10);
                    v139 -= 8;
                  }

                  while (v153.n128_f32[0] < v142);
                  v143 = *(v139 + 1);
                  *v139 = v146;
                  if (v143)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v143);
                  }

                  *(v139 + 2) = v138;
                  a5.n128_u64[1] = v153.n128_u64[1];
                  *(v139 + 3) = v153.n128_u64[0];
                }

                v76 = v136 + 8;
                a1 = v136;
              }

              while (v136 + 8 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v93 = v11 >> 1;
              v94 = v11 >> 1;
              do
              {
                v95 = v94;
                if (v93 >= v94)
                {
                  v96 = (2 * v94) | 1;
                  v97 = &a1[8 * v96];
                  if (2 * v95 + 2 < v10 && v97[6] < v97[14])
                  {
                    v97 += 8;
                    v96 = 2 * v95 + 2;
                  }

                  v98 = &a1[8 * v95];
                  v99 = v98[6];
                  if (v97[6] >= v99)
                  {
                    v151 = *v98;
                    *v98 = 0;
                    *(v98 + 1) = 0;
                    v100 = *(v98 + 2);
                    v101 = *(v98 + 7);
                    do
                    {
                      v102 = v98;
                      v98 = v97;
                      v103 = *v97;
                      *v97 = 0;
                      *(v97 + 1) = 0;
                      v104 = *(v102 + 1);
                      *v102 = v103;
                      if (v104)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v104);
                      }

                      *(v102 + 1) = *(v98 + 1);
                      if (v93 < v96)
                      {
                        break;
                      }

                      v105 = 2 * v96;
                      v96 = (2 * v96) | 1;
                      v97 = &a1[8 * v96];
                      v106 = v105 + 2;
                      if (v106 < v10 && v97[6] < v97[14])
                      {
                        v97 += 8;
                        v96 = v106;
                      }
                    }

                    while (v97[6] >= v99);
                    v107 = *(v98 + 1);
                    *v98 = v151;
                    if (v107)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v107);
                    }

                    *(v98 + 2) = v100;
                    v98[6] = v99;
                    *(v98 + 7) = v101;
                  }
                }

                v94 = v95 - 1;
              }

              while (v95);
              do
              {
                v108 = 0;
                v109 = a2;
                v111 = *a1;
                v110 = *(a1 + 1);
                *a1 = 0;
                *(a1 + 1) = 0;
                v155 = *(a1 + 1);
                v112 = a1;
                do
                {
                  v113 = &v112[8 * v108];
                  v114 = v113 + 8;
                  if (2 * v108 + 2 >= v10)
                  {
                    v108 = (2 * v108) | 1;
                  }

                  else
                  {
                    v115 = v113[14];
                    v116 = v113[22];
                    v117 = v113 + 16;
                    if (v115 >= v116)
                    {
                      v108 = (2 * v108) | 1;
                    }

                    else
                    {
                      v114 = v117;
                      v108 = 2 * v108 + 2;
                    }
                  }

                  v118 = *v114;
                  *v114 = 0;
                  *(v114 + 1) = 0;
                  v119 = *(v112 + 1);
                  *v112 = v118;
                  if (v119)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v119);
                  }

                  *(v112 + 1) = *(v114 + 1);
                  v112 = v114;
                }

                while (v108 <= ((v10 - 2) >> 1));
                a2 -= 8;
                if (v114 == v109 - 8)
                {
                  v135 = *(v114 + 1);
                  *v114 = v111;
                  *(v114 + 1) = v110;
                  if (v135)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v135);
                  }

                  *(v114 + 1) = v155;
                }

                else
                {
                  v120 = *(v109 - 2);
                  *a2 = 0;
                  *(v109 - 3) = 0;
                  v121 = *(v114 + 1);
                  *v114 = v120;
                  if (v121)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v121);
                  }

                  *(v114 + 1) = *(v109 - 1);
                  v122 = *(v109 - 3);
                  *(v109 - 4) = v111;
                  *(v109 - 3) = v110;
                  if (v122)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v122);
                  }

                  *(v109 - 1) = v155;
                  v123 = ((v114 + 8) - a1) >> 5;
                  v124 = v123 < 2;
                  v125 = v123 - 2;
                  if (!v124)
                  {
                    v126 = v125 >> 1;
                    v127 = &a1[8 * (v125 >> 1)];
                    v128 = v114[6];
                    if (v127[6] < v128)
                    {
                      v152 = *v114;
                      *v114 = 0;
                      *(v114 + 1) = 0;
                      v129 = *(v114 + 2);
                      v130 = *(v114 + 7);
                      do
                      {
                        v131 = v127;
                        v132 = *v127;
                        *v127 = 0;
                        *(v127 + 1) = 0;
                        v133 = *(v114 + 1);
                        *v114 = v132;
                        if (v133)
                        {
                          std::__shared_weak_count::__release_shared[abi:nn200100](v133);
                        }

                        *(v114 + 1) = *(v131 + 1);
                        if (!v126)
                        {
                          break;
                        }

                        v126 = (v126 - 1) >> 1;
                        v127 = &a1[8 * v126];
                        v114 = v131;
                      }

                      while (v127[6] < v128);
                      v134 = *(v131 + 1);
                      *v131 = v152;
                      if (v134)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v134);
                      }

                      *(v131 + 2) = v129;
                      v131[6] = v128;
                      *(v131 + 7) = v130;
                    }
                  }
                }

                v124 = v10-- <= 2;
              }

              while (!v124);
            }

            return;
          }

          v12 = &v9[8 * (v10 >> 1)];
          v13 = *(a2 - 2);
          if (v10 >= 0x81)
          {
            v14 = v12[6];
            if (v14 >= a1[6])
            {
              if (v13 >= v14 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(&a1[8 * (v10 >> 1)], v144), v12[6] >= a1[6]))
              {
LABEL_26:
                v20 = *(v12 - 2);
                v21 = *(a2 - 10);
                if (v20 >= a1[14])
                {
                  if (v21 >= v20 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v12 - 2, a2 - 4), *(v12 - 2) >= a1[14]))
                  {
LABEL_39:
                    v24 = v12[14];
                    v25 = *(a2 - 18);
                    if (v24 >= a1[22])
                    {
                      if (v25 >= v24 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v12 + 2, a2 - 6), v12[14] >= a1[22]))
                      {
LABEL_48:
                        v28 = v12[6];
                        v29 = v12[14];
                        if (v28 >= *(v12 - 2))
                        {
                          if (v29 >= v28)
                          {
                            goto LABEL_57;
                          }

                          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v12, v12 + 2);
                          if (v12[6] >= *(v12 - 2))
                          {
                            goto LABEL_57;
                          }

                          v30 = (v12 - 8);
                          v31 = v12;
                        }

                        else
                        {
                          v30 = (v12 - 8);
                          if (v29 >= v28)
                          {
                            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v30, v12);
                            if (v12[14] >= v12[6])
                            {
LABEL_57:
                              v33 = *a1;
                              v32 = *(a1 + 1);
                              *a1 = 0;
                              *(a1 + 1) = 0;
                              v154 = v32;
                              v34 = *v12;
                              *v12 = 0;
                              *(v12 + 1) = 0;
                              v35 = *(a1 + 1);
                              *a1 = v34;
                              if (v35)
                              {
                                v147 = v33;
                                std::__shared_weak_count::__release_shared[abi:nn200100](v35);
                                v33 = v147;
                              }

                              *(a1 + 1) = *(v12 + 1);
                              v36 = *(v12 + 1);
                              *v12 = v33;
                              if (v36)
                              {
                                std::__shared_weak_count::__release_shared[abi:nn200100](v36);
                              }

                              *(v12 + 1) = v154;
                              goto LABEL_62;
                            }

                            v30 = v12;
                          }

                          v31 = (v12 + 8);
                        }

                        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v30, v31);
                        goto LABEL_57;
                      }

                      v26 = (a1 + 16);
                      v27 = (v12 + 8);
                    }

                    else
                    {
                      v26 = (a1 + 16);
                      if (v25 >= v24)
                      {
                        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v26, v12 + 2);
                        if (*(a2 - 18) >= v12[14])
                        {
                          goto LABEL_48;
                        }

                        v26 = (v12 + 8);
                      }

                      v27 = (a2 - 24);
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v26, v27);
                    goto LABEL_48;
                  }

                  v22 = (a1 + 8);
                  v23 = (v12 - 8);
                }

                else
                {
                  v22 = (a1 + 8);
                  if (v21 >= v20)
                  {
                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v22, v12 - 2);
                    if (*(a2 - 10) >= *(v12 - 2))
                    {
                      goto LABEL_39;
                    }

                    v22 = (v12 - 8);
                  }

                  v23 = (a2 - 16);
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v22, v23);
                goto LABEL_39;
              }

              v15 = a1;
              v16 = &a1[8 * (v10 >> 1)];
            }

            else
            {
              v15 = a1;
              if (v13 >= v14)
              {
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, &a1[8 * (v10 >> 1)]);
                if (*(a2 - 2) >= v12[6])
                {
                  goto LABEL_26;
                }

                v15 = &a1[8 * (v10 >> 1)];
              }

              v16 = a2 - 8;
            }

            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v15, v16);
            goto LABEL_26;
          }

          v17 = a1[6];
          if (v17 < v12[6])
          {
            v18 = &a1[8 * (v10 >> 1)];
            if (v13 >= v17)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v18, a1);
              if (*(a2 - 2) >= a1[6])
              {
                goto LABEL_62;
              }

              v18 = a1;
            }

            v19 = a2 - 8;
            goto LABEL_34;
          }

          if (v13 < v17)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, v144);
            if (a1[6] < v12[6])
            {
              v18 = &a1[8 * (v10 >> 1)];
              v19 = a1;
LABEL_34:
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v18, v19);
            }
          }

LABEL_62:
          --a3;
          if (a4)
          {
            break;
          }

          v37 = a1[6];
          if (*(a1 - 2) < v37)
          {
            goto LABEL_65;
          }

          v149 = *a1;
          *a1 = 0;
          *(a1 + 1) = 0;
          if (v37 >= *(a2 - 2))
          {
            v57 = a1 + 8;
            do
            {
              v9 = v57;
              if (v57 >= a2)
              {
                break;
              }

              v58 = v57[6];
              v57 += 8;
            }

            while (v37 >= v58);
          }

          else
          {
            v55 = a1;
            do
            {
              v9 = v55 + 8;
              v56 = v55[14];
              v55 += 8;
            }

            while (v37 >= v56);
          }

          v59 = a2;
          if (v9 < a2)
          {
            v60 = a2;
            do
            {
              v59 = (v60 - 8);
              v61 = *(v60 - 2);
              v60 -= 8;
            }

            while (v37 < v61);
          }

          v62 = *(a1 + 2);
          v63 = *(a1 + 7);
          while (v9 < v59)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v9, v59);
            do
            {
              v64 = v9[14];
              v9 += 8;
            }

            while (v37 >= v64);
            do
            {
              v65 = *(v59 - 2);
              v59 -= 2;
            }

            while (v37 < v65);
          }

          v66 = v9 - 8;
          if (v9 - 8 != a1)
          {
            v67 = *v66;
            *v66 = 0;
            *(v9 - 3) = 0;
            v68 = *(a1 + 1);
            *a1 = v67;
            if (v68)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v68);
            }

            *(a1 + 1) = *(v9 - 1);
          }

          v69 = *(v9 - 3);
          a5.n128_u64[1] = *(&v149 + 1);
          *(v9 - 2) = v149;
          if (v69)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v69);
          }

          a4 = 0;
          *(v9 - 2) = v62;
          *(v9 - 2) = v37;
          *(v9 - 1) = v63;
        }

        v37 = a1[6];
LABEL_65:
        v148 = *a1;
        *a1 = 0;
        *(a1 + 1) = 0;
        v38 = *(a1 + 2);
        v39 = a1;
        v40 = *(a1 + 7);
        do
        {
          v41 = v39;
          v39 += 8;
        }

        while (v41[14] < v37);
        v42 = a2;
        if (v41 == a1)
        {
          v45 = a2;
          while (v39 < v45)
          {
            v43 = v45 - 8;
            v46 = *(v45 - 2);
            v45 -= 8;
            if (v46 < v37)
            {
              goto LABEL_75;
            }
          }

          v43 = v45;
        }

        else
        {
          do
          {
            v43 = v42 - 8;
            v44 = *(v42 - 2);
            v42 -= 8;
          }

          while (v44 >= v37);
        }

LABEL_75:
        if (v39 >= v43)
        {
          v9 = v39;
        }

        else
        {
          v47 = v43;
          v9 = v39;
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v9, v47);
            do
            {
              v48 = v9[14];
              v9 += 8;
            }

            while (v48 < v37);
            do
            {
              v49 = *(v47 - 2);
              v47 -= 2;
            }

            while (v49 >= v37);
          }

          while (v9 < v47);
        }

        v50 = v9 - 8;
        if (v9 - 8 != a1)
        {
          v51 = *v50;
          *v50 = 0;
          *(v9 - 3) = 0;
          v52 = *(a1 + 1);
          *a1 = v51;
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v52);
          }

          *(a1 + 1) = *(v9 - 1);
        }

        v53 = *(v9 - 3);
        a5 = v148;
        *(v9 - 2) = v148;
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v53);
        }

        *(v9 - 2) = v38;
        *(v9 - 2) = v37;
        *(v9 - 1) = v40;
        if (v39 >= v43)
        {
          break;
        }

LABEL_92:
        std::__introsort<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,false>(a1, v9 - 8, a3, a4 & 1, a5);
        a4 = 0;
      }

      v54 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *>(a1, (v9 - 8));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *>(v9, a2))
      {
        break;
      }

      if (!v54)
      {
        goto LABEL_92;
      }
    }

    a2 = v9 - 8;
    if (!v54)
    {
      continue;
    }

    break;
  }
}

void std::vector<md::RoadSearchResult>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(__int128 *a1, __int128 *a2)
{
  v5 = *a1;
  v4 = a1[1];
  *a1 = 0uLL;
  v11 = v4;
  v6 = *a2;
  *a2 = 0uLL;
  v7 = *(a1 + 1);
  *a1 = v6;
  if (v7)
  {
    v10 = v5;
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    v5 = v10;
  }

  a1[1] = a2[1];
  v8 = *(a2 + 1);
  *a2 = v5;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  result = v11;
  a2[1] = v11;
  return result;
}

double std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 24);
  v9 = *(a3 + 24);
  if (v8 >= *(a1 + 24))
  {
    if (v9 < v8)
    {
      v10 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a2, a3);
      if (*(a2 + 24) < *(v7 + 24))
      {
        a1 = v7;
        v11 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v11 = a3;
LABEL_9:
      v10 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, v11);
      goto LABEL_10;
    }

    v10 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, a2);
    if (*(a3 + 24) < *(a2 + 24))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  v10.n128_u32[0] = *(a4 + 24);
  if (v10.n128_f32[0] < *(a3 + 24))
  {
    v10 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a3, a4);
    v10.n128_u32[0] = *(a3 + 24);
    if (v10.n128_f32[0] < *(a2 + 24))
    {
      v10 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a2, a3);
      v10.n128_u32[0] = *(a2 + 24);
      if (v10.n128_f32[0] < *(v7 + 24))
      {

        v10.n128_u64[0] = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v7, a2).n128_u64[0];
      }
    }
  }

  return v10.n128_f64[0];
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 56);
        v9 = *(a2 - 8);
        if (v8 < *(a1 + 24))
        {
          if (v9 >= v8)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, (a1 + 32));
            if (*(a2 - 8) >= *(v3 + 56))
            {
              return 1;
            }

            a1 = v3 + 32;
          }

          v5 = (a2 - 32);
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 32);
        v7 = (a2 - 32);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,0>(a1, a1 + 32, a1 + 64, a2 - 32);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,findClosestRoad(std::vector<std::shared_ptr<md::MuninRoadNetworkData>> const&,md::MuninRoadGraphZData const*,geo::Mercator3<double> const&,double)::$_1 &,md::RoadSearchResult *,0>(a1, a1 + 32, a1 + 64, a1 + 96);
        if (*(a2 - 8) >= *(v3 + 120))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>((v3 + 96), (a2 - 32));
        if (*(v3 + 120) >= *(v3 + 88))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>((v3 + 64), (v3 + 96));
        if (*(v3 + 88) >= *(v3 + 56))
        {
          return 1;
        }

        v6 = (v3 + 32);
        v7 = (v3 + 64);
        break;
      default:
        goto LABEL_16;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(v6, v7);
    if (*(v3 + 56) < *(v3 + 24))
    {
      v5 = (v3 + 32);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 8) < *(a1 + 24))
    {
      v5 = (a2 - 32);
LABEL_24:
      a1 = v3;
LABEL_31:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 64;
  v11 = *(a1 + 56);
  v12 = *(a1 + 88);
  if (v11 < *(a1 + 24))
  {
    if (v12 >= v11)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, (a1 + 32));
      if (*(v3 + 88) >= *(v3 + 56))
      {
        goto LABEL_36;
      }

      a1 = v3 + 32;
    }

    v13 = (v3 + 64);
    goto LABEL_35;
  }

  if (v12 < v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>((a1 + 32), (a1 + 64));
    if (*(v3 + 56) < *(v3 + 24))
    {
      v13 = (v3 + 32);
      a1 = v3;
LABEL_35:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<md::RoadSearchResult *&,md::RoadSearchResult *&>(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 96;
  if (v3 + 96 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 24);
    if (v17 < *(v10 + 24))
    {
      v30 = *v14;
      *v14 = 0;
      *(v14 + 8) = 0;
      v18 = *(v14 + 16);
      v19 = v15;
      v20 = *(v14 + 28);
      while (1)
      {
        v21 = v3 + v19;
        v22 = *(v3 + v19 + 64);
        *(v21 + 64) = 0;
        *(v21 + 72) = 0;
        v23 = *(v3 + v19 + 104);
        *(v21 + 96) = v22;
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v23);
        }

        *(v21 + 112) = *(v21 + 80);
        if (v19 == -64)
        {
          break;
        }

        v24 = v3 + v19;
        v25 = *(v3 + v19 + 56);
        v19 -= 32;
        if (v17 >= v25)
        {
          v26 = v3 + v19 + 96;
          v27 = (v24 + 80);
          goto LABEL_46;
        }
      }

      v27 = (v3 + 16);
      v26 = v3;
LABEL_46:
      v28 = *(v26 + 8);
      *v26 = v30;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v28);
      }

      *v27 = v18;
      *(v26 + 24) = v17;
      *(v26 + 28) = v20;
      if (++v16 == 8)
      {
        return v14 + 32 == a2;
      }
    }

    v10 = v14;
    v15 += 32;
    v14 += 32;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void md::MuninRoadLabeler::synchronizedUpdate(md::MuninRoadLabeler *a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  md::LayoutContext::get<md::CameraContext>(v3);
  v4 = gdc::Context::context<md::MuninSceneContext>(v3);
  v5 = md::LabelSettingsStyleCache::muninRoadStyle(*(*(*(a1 + 1) + 336) + 200));
  v6 = *(*(*(*(a1 + 1) + 336) + 200) + 32);
  v43 = a1;
  if (!v6)
  {
    operator new();
  }

  *(a1 + 48) = *v5;
  if (*(a1 + 289))
  {
    *(a1 + 289) = 0;
    *(a1 + 37) = 257;
    v7 = 1;
    *(a1 + 77) = 1;
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 75);
    v7 = *(a1 + 74);
  }

  v10 = (a1 + 152);
  v9 = *(a1 + 19);
  v11 = *v6;
  *(a1 + 75) = v8 | (*(a1 + 11) != *v6);
  *(a1 + 74) = v7 | (v9 == 0);
  *(a1 + 11) = v11;
  v12 = v4[1];
  isFinishedLoadingAllLayers = md::SceneStateManager::isFinishedLoadingAllLayers(v12);
  *(a1 + 79) = isFinishedLoadingAllLayers;
  v14 = isFinishedLoadingAllLayers && (*(a1 + 288) & 1) == 0 && *(a1 + 78) == 0;
  *(a1 + 76) = v14;
  v46 = 0uLL;
  v47 = 0;
  md::SceneContext::renderData(v50, v12, 35);
  *__n = *v50;
  v15 = v51[0];
  for (i = v50[0]; gdc::DataKeyIterator::operator!=(i, v15); i = __n[0])
  {
    v17 = gdc::DataIterator::operator*(i);
    v18 = v17[1];
    *&v49 = *v17;
    *(&v49 + 1) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<md::LabelExternalRoadFeature>>::push_back[abi:nn200100](&v46, &v49);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    gdc::DataIterator::operator++(__n);
  }

  v19 = 126 - 2 * __clz((*(&v46 + 1) - v46) >> 4);
  if (*(&v46 + 1) == v46)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,false>(v46, *(&v46 + 1), v20, 1);
  v21 = *(v43 + 27);
  v22 = *(v43 + 28);
  v23 = v46;
  if (v22 - v21 == *(&v46 + 1) - v46)
  {
    while (v21 != v22)
    {
      if (*v21 != *v23)
      {
        goto LABEL_23;
      }

      v21 += 16;
      v23 += 2;
    }

    v42 = 0;
  }

  else
  {
LABEL_23:
    std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(v43 + 27);
    *(v43 + 216) = v46;
    *(v43 + 29) = v47;
    v47 = 0;
    v46 = 0uLL;
    v42 = 1;
  }

  *__p = 0uLL;
  md::SceneContext::renderData(v50, v4[1], 39);
  *__n = *v50;
  v24 = v51[0];
  for (j = v50[0]; gdc::DataKeyIterator::operator!=(j, v24); j = __n[0])
  {
    v26 = gdc::DataIterator::operator*(j);
    v44 = *v26;
    v27 = *(v26 + 8);
    if (v27)
    {
      atomic_fetch_add_explicit((*(v26 + 8) + 8), 1uLL, memory_order_relaxed);
    }

    v28 = (__p[1] - __p[0]) >> 4;
    v29 = v28 + 1;
    if ((v28 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v30 = -__p[0];
    if (-__p[0] >> 3 > v29)
    {
      v29 = v30 >> 3;
    }

    if (v30 >= 0x7FFFFFFFFFFFFFF0)
    {
      v31 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v29;
    }

    if (v31)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v31);
    }

    v32 = 16 * v28;
    *(16 * v28) = v44;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = (v32 + 16);
    v34 = (v32 - (__p[1] - __p[0]));
    memcpy(v34, __p[0], __p[1] - __p[0]);
    v35 = __p[0];
    __p[0] = v34;
    if (v35)
    {
      operator delete(v35);
    }

    __p[1] = v33;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }

    gdc::DataIterator::operator++(__n);
  }

  v36 = 126 - 2 * __clz((__p[1] - __p[0]) >> 4);
  if (__p[1] == __p[0])
  {
    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,false>(__p[0], __p[1], v37, 1);
  v38 = *(v43 + 24);
  v39 = *(v43 + 25);
  v40 = (v43 + 192);
  v41 = __p[0];
  if (v39 - v38 == __p[1] - __p[0])
  {
    while (1)
    {
      if (v38 == v39)
      {
        if (*(v43 + 17) && ((v42 & 1) != 0 || !*(v43 + 18)))
        {
          operator new();
        }

        operator new();
      }

      if (*v38 != *v41)
      {
        break;
      }

      v38 += 16;
      v41 += 2;
    }
  }

  md::MuninRoadLabeler::resetCurrentJunctions(v43);
  *v10 = 0;
  v10[1] = 0;
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v43 + 30);
  if (*(v43 + 24))
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v40);
    operator delete(*v40);
    *v40 = 0;
    *(v43 + 25) = 0;
    *(v43 + 26) = 0;
  }

  *(v43 + 12) = *__p;
  *(v43 + 26) = 0;
  operator new();
}

void sub_1B2E84354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, void **a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t *a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<double ()(double const&)>::~__value_func[abi:nn200100](&a65);
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
  }

  a52 = a19;
  std::vector<md::MuninRoadEdgePolyline>::__destroy_vector::operator()[abi:nn200100](&a52);
  v66 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v66;
    operator delete(v66);
  }

  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a10);
  std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>>>::~__hash_table((a33 + 384));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a9);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a33 + 304);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a32 + 34));
  v67 = *(a33 + 240);
  if (v67)
  {
    a32[32] = v67;
    operator delete(v67);
  }

  v68 = *a18;
  if (*a18)
  {
    a32[29] = v68;
    operator delete(v68);
  }

  v69 = *(a33 + 192);
  if (v69)
  {
    a32[26] = v69;
    operator delete(v69);
  }

  v70 = *a17;
  if (*a17)
  {
    a32[23] = v70;
    operator delete(v70);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a13);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a14);
  std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>>>::~__hash_table(a15);
  MEMORY[0x1B8C62190](a32, 0x10F0C40B169F8A8);
  a52 = &a35;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a52);
  a35 = &a39;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a35);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,false>(char *a1, char *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 16;
  v9 = a2 - 8;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = &a2[-v10] >> 4;
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          v103 = *(a1 + 2);
          v104 = *a1;
          v105 = *v8;
          if (v103 >= *a1)
          {
            if (v105 >= v103)
            {
              return;
            }

            *(a1 + 2) = v105;
            *v8 = v103;
            v168 = *(a1 + 3);
            *(a1 + 3) = *v9;
            *v9 = v168;
            v169 = *(a1 + 2);
            v170 = *a1;
            if (v169 >= *a1)
            {
              return;
            }

            *a1 = v169;
            *(a1 + 2) = v170;
            v106 = a1 + 8;
            v9 = a1 + 24;
          }

          else
          {
            if (v105 >= v103)
            {
              v106 = a1 + 24;
              v183 = *(a1 + 3);
              v184 = *(a1 + 1);
              *a1 = v103;
              *(a1 + 1) = v183;
              *(a1 + 2) = v104;
              *(a1 + 3) = v184;
              if (*v8 >= v104)
              {
                return;
              }

              *(a1 + 2) = *v8;
            }

            else
            {
              v106 = a1 + 8;
              *a1 = v105;
            }

            *v8 = v104;
          }

          v185 = *v106;
          *v106 = *v9;
          *v9 = v185;
          return;
        case 4:
          v107 = *(a1 + 2);
          v108 = *a1;
          v109 = *(a1 + 4);
          if (v107 >= *a1)
          {
            if (v109 < v107)
            {
              v171 = a1 + 24;
              v172 = *(a1 + 3);
              v173 = *(a1 + 5);
              *(a1 + 2) = v109;
              *(a1 + 3) = v173;
              *(a1 + 4) = v107;
              *(a1 + 5) = v172;
              if (v109 < v108)
              {
                *a1 = v109;
                *(a1 + 2) = v108;
                v110 = a1 + 8;
                goto LABEL_225;
              }

LABEL_227:
              if (*v8 < v107)
              {
                *(a1 + 4) = *v8;
                *v8 = v107;
                v189 = *(a1 + 5);
                *(a1 + 5) = *v9;
                *v9 = v189;
                v190 = *(a1 + 4);
                v191 = *(a1 + 2);
                if (v190 < v191)
                {
                  v192 = *(a1 + 3);
                  v193 = *(a1 + 5);
                  *(a1 + 2) = v190;
                  *(a1 + 3) = v193;
                  *(a1 + 4) = v191;
                  *(a1 + 5) = v192;
                  v194 = *a1;
                  if (v190 < *a1)
                  {
                    v195 = *(a1 + 1);
                    *a1 = v190;
                    *(a1 + 1) = v193;
                    *(a1 + 2) = v194;
                    *(a1 + 3) = v195;
                  }
                }
              }

              return;
            }
          }

          else
          {
            if (v109 < v107)
            {
              v110 = a1 + 8;
              *a1 = v109;
              goto LABEL_224;
            }

            v110 = a1 + 24;
            v186 = *(a1 + 3);
            v187 = *(a1 + 1);
            *a1 = v107;
            *(a1 + 1) = v186;
            *(a1 + 2) = v108;
            *(a1 + 3) = v187;
            if (v109 < v108)
            {
              *(a1 + 2) = v109;
LABEL_224:
              *(a1 + 4) = v108;
              v171 = a1 + 40;
LABEL_225:
              v188 = *v110;
              *v110 = *v171;
              *v171 = v188;
              v107 = *(a1 + 4);
              goto LABEL_227;
            }
          }

          v107 = v109;
          goto LABEL_227;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
          return;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v101 = *a1;
        if (*v8 < *a1)
        {
          *a1 = *v8;
          *v8 = v101;
          v102 = *(a1 + 1);
          *(a1 + 1) = *v9;
          *v9 = v102;
        }

        return;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v126 = v12 >> 1;
      v127 = v12 >> 1;
      do
      {
        v128 = v127;
        if (v126 >= v127)
        {
          v129 = (2 * v127) | 1;
          v130 = &a1[16 * v129];
          if (2 * v128 + 2 >= v11)
          {
            v131 = *v130;
          }

          else
          {
            v131 = *v130;
            if (*v130 < *(v130 + 2))
            {
              v131 = *(v130 + 2);
              v130 += 16;
              v129 = 2 * v128 + 2;
            }
          }

          v132 = &a1[16 * v128];
          v133 = *v132;
          if (v131 >= *v132)
          {
            v134 = *(v132 + 1);
            *v132 = 0;
            *(v132 + 1) = 0;
            v135 = *v130;
            do
            {
              v136 = v130;
              v137 = *(v130 + 1);
              *v136 = 0;
              *(v136 + 1) = 0;
              v138 = *(v132 + 1);
              *v132 = v135;
              *(v132 + 1) = v137;
              if (v138)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v138);
              }

              if (v126 < v129)
              {
                break;
              }

              v130 = &a1[16 * ((2 * v129) | 1)];
              if (2 * v129 + 2 >= v11)
              {
                v135 = *v130;
                v129 = (2 * v129) | 1;
              }

              else
              {
                v135 = *v130;
                if (*v130 >= *(v130 + 2))
                {
                  v129 = (2 * v129) | 1;
                }

                else
                {
                  v135 = *(v130 + 2);
                  v130 += 16;
                  v129 = 2 * v129 + 2;
                }
              }

              v132 = v136;
            }

            while (v135 >= v133);
            v139 = *(v136 + 1);
            *v136 = v133;
            *(v136 + 1) = v134;
            if (v139)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v139);
            }
          }
        }

        v127 = v128 - 1;
      }

      while (v128);
      while (2)
      {
        if (v11 >= 2)
        {
          v140 = 0;
          v142 = *a1;
          v141 = *(a1 + 1);
          v143 = a1;
          *a1 = 0;
          *(a1 + 1) = 0;
          do
          {
            v144 = &v143[16 * v140];
            v145 = v144 + 16;
            if (2 * v140 + 2 >= v11)
            {
              v146 = *v145;
              v140 = (2 * v140) | 1;
            }

            else
            {
              v148 = *(v144 + 4);
              v147 = v144 + 32;
              v146 = v148;
              v149 = *(v147 - 2);
              v150 = v149 >= v148;
              if (v149 < v148)
              {
                v145 = v147;
              }

              else
              {
                v146 = *(v147 - 2);
              }

              if (v150)
              {
                v140 = (2 * v140) | 1;
              }

              else
              {
                v140 = 2 * v140 + 2;
              }
            }

            v151 = *(v145 + 1);
            *v145 = 0;
            *(v145 + 1) = 0;
            v152 = *(v143 + 1);
            *v143 = v146;
            *(v143 + 1) = v151;
            if (v152)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v152);
            }

            v143 = v145;
          }

          while (v140 <= ((v11 - 2) >> 1));
          if (v145 == a2 - 16)
          {
            v167 = *(v145 + 1);
            *v145 = v142;
            *(v145 + 1) = v141;
            if (!v167)
            {
              goto LABEL_199;
            }
          }

          else
          {
            v153 = *(a2 - 1);
            *(a2 - 2) = 0;
            *(a2 - 1) = 0;
            v154 = *(v145 + 1);
            *v145 = v153;
            if (v154)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v154);
            }

            v155 = *(a2 - 1);
            *(a2 - 2) = v142;
            *(a2 - 1) = v141;
            if (v155)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v155);
            }

            v156 = (v145 + 16 - a1) >> 4;
            v157 = v156 < 2;
            v158 = v156 - 2;
            if (v157)
            {
              goto LABEL_199;
            }

            v159 = v158 >> 1;
            v160 = &a1[16 * (v158 >> 1)];
            v161 = *v145;
            if (*v160 >= *v145)
            {
              goto LABEL_199;
            }

            v162 = *(v145 + 1);
            *v145 = 0;
            *(v145 + 1) = 0;
            v163 = *v160;
            do
            {
              v164 = v160;
              v165 = *(v160 + 1);
              *v164 = 0;
              *(v164 + 1) = 0;
              v166 = *(v145 + 1);
              *v145 = v163;
              *(v145 + 1) = v165;
              if (v166)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v166);
              }

              if (!v159)
              {
                break;
              }

              v159 = (v159 - 1) >> 1;
              v160 = &a1[16 * v159];
              v163 = *v160;
              v145 = v164;
            }

            while (*v160 < v161);
            v167 = *(v164 + 1);
            *v164 = v161;
            *(v164 + 1) = v162;
            if (!v167)
            {
              goto LABEL_199;
            }
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v167);
        }

LABEL_199:
        a2 -= 16;
        v157 = v11-- > 2;
        if (!v157)
        {
          return;
        }

        continue;
      }
    }

    v13 = &a1[16 * (v11 >> 1)];
    v14 = v13;
    v15 = *v8;
    if (v11 >= 0x81)
    {
      v16 = *v13;
      v17 = *a1;
      if (*v13 >= *a1)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *v8 = v16;
          v22 = v13 + 8;
          v23 = *(v13 + 1);
          *(v13 + 1) = *v9;
          *v9 = v23;
          v24 = *a1;
          if (*v13 < *a1)
          {
            *a1 = *v13;
            v18 = a1 + 8;
            *v13 = v24;
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          v18 = a1 + 8;
          *a1 = v15;
          goto LABEL_26;
        }

        v18 = v13 + 8;
        v28 = *(v13 + 1);
        v29 = *(a1 + 1);
        *a1 = v16;
        *(a1 + 1) = v28;
        *v13 = v17;
        *(v13 + 1) = v29;
        if (*v8 < v17)
        {
          *v13 = *v8;
LABEL_26:
          *v8 = v17;
          v22 = a2 - 8;
LABEL_27:
          v30 = *v18;
          *v18 = *v22;
          *v22 = v30;
        }
      }

      v31 = v13 - 16;
      v32 = *(v13 - 2);
      v33 = *(a1 + 2);
      v34 = *(a2 - 4);
      if (v32 >= v33)
      {
        if (v34 < v32)
        {
          *v31 = v34;
          *(a2 - 4) = v32;
          v37 = v13 - 8;
          v36 = *(v13 - 1);
          *(v13 - 1) = *(a2 - 3);
          *(a2 - 3) = v36;
          v38 = *(a1 + 2);
          if (*v31 < v38)
          {
            *(a1 + 2) = *v31;
            *v31 = v38;
            v35 = a1 + 24;
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v34 < v32)
        {
          v35 = a1 + 24;
          *(a1 + 2) = v34;
          goto LABEL_39;
        }

        v35 = v13 - 8;
        v41 = *(v13 - 1);
        v42 = *(a1 + 3);
        *(a1 + 2) = v32;
        *(a1 + 3) = v41;
        *v31 = v33;
        *(v13 - 1) = v42;
        v43 = *(a2 - 4);
        if (v43 < v33)
        {
          *v31 = v43;
LABEL_39:
          *(a2 - 4) = v33;
          v37 = a2 - 24;
LABEL_40:
          v44 = *v35;
          *v35 = *v37;
          *v37 = v44;
        }
      }

      v47 = *(v13 + 2);
      v45 = (v13 + 16);
      v46 = v47;
      v48 = *(a1 + 4);
      v49 = *(a2 - 6);
      if (v47 >= v48)
      {
        if (v49 < v46)
        {
          *v45 = v49;
          *(a2 - 6) = v46;
          v52 = (v45 + 1);
          v51 = v45[1];
          v45[1] = *(a2 - 5);
          *(a2 - 5) = v51;
          v46 = *v45;
          v53 = *(a1 + 4);
          if (*v45 < v53)
          {
            *(a1 + 4) = v46;
            *v45 = v53;
            v50 = a1 + 40;
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v49 < v46)
        {
          v50 = a1 + 40;
          *(a1 + 4) = v49;
          goto LABEL_49;
        }

        v50 = (v45 + 1);
        v54 = v45[1];
        v55 = *(a1 + 5);
        *(a1 + 4) = v46;
        *(a1 + 5) = v54;
        *v45 = v48;
        v45[1] = v55;
        v56 = *(a2 - 6);
        if (v56 >= v48)
        {
          v46 = v48;
        }

        else
        {
          *v45 = v56;
LABEL_49:
          *(a2 - 6) = v48;
          v52 = a2 - 40;
LABEL_50:
          v57 = *v50;
          *v50 = *v52;
          *v52 = v57;
          v46 = *v45;
        }
      }

      v58 = *v14;
      v59 = *v31;
      if (*v14 >= *v31)
      {
        if (v46 < v58)
        {
          v62 = (v14 + 8);
          v63 = *(v14 + 1);
          *v14 = v46;
          *(v14 + 1) = v45[1];
          *v45 = v58;
          v45[1] = v63;
          if (v46 < v59)
          {
            *v31 = v46;
            v60 = (v31 + 8);
            *v14 = v59;
            goto LABEL_60;
          }

          v58 = v46;
        }
      }

      else
      {
        if (v46 < v58)
        {
          *v31 = v46;
          v60 = (v31 + 8);
          *v45 = v59;
          v61 = (v45 + 1);
          goto LABEL_59;
        }

        v64 = *(v14 + 1);
        *v14 = v59;
        v65 = *(v31 + 1);
        *v31 = v58;
        *(v31 + 1) = v64;
        *(v14 + 1) = v65;
        if (v46 >= v59)
        {
          v58 = v59;
        }

        else
        {
          *v14 = v46;
          *v45 = v59;
          v61 = (v45 + 1);
          v60 = (v14 + 8);
LABEL_59:
          v62 = v61;
LABEL_60:
          v66 = *v60;
          *v60 = *v62;
          *v62 = v66;
          v58 = *v14;
        }
      }

      v67 = *a1;
      *a1 = v58;
      v21 = a1 + 8;
      *v14 = v67;
      v27 = v14 + 8;
      goto LABEL_62;
    }

    v19 = *a1;
    v20 = *v13;
    if (*a1 >= *v13)
    {
      if (v15 >= v19)
      {
        goto LABEL_63;
      }

      *a1 = v15;
      *v8 = v19;
      v25 = *(a1 + 1);
      *(a1 + 1) = *v9;
      *v9 = v25;
      v26 = *v14;
      if (*a1 >= *v14)
      {
        goto LABEL_63;
      }

      *v14 = *a1;
      *a1 = v26;
      v21 = v14 + 8;
      v27 = a1 + 8;
    }

    else
    {
      if (v15 >= v19)
      {
        v21 = a1 + 8;
        v39 = *(a1 + 1);
        v40 = *(v14 + 1);
        *v14 = v19;
        *(v14 + 1) = v39;
        *a1 = v20;
        *(a1 + 1) = v40;
        if (*v8 >= v20)
        {
          goto LABEL_63;
        }

        *a1 = *v8;
      }

      else
      {
        v21 = v13 + 8;
        *v14 = v15;
      }

      *v8 = v20;
      v27 = a2 - 8;
    }

LABEL_62:
    v68 = *v21;
    *v21 = *v27;
    *v27 = v68;
LABEL_63:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 2) < *a1)
    {
      v69 = *a1;
      *a1 = 0;
      *(a1 + 1) = 0;
      v70 = a1;
      do
      {
        v71 = v70;
        v73 = *(v70 + 2);
        v70 += 16;
        v72 = v73;
      }

      while (v73 < v69);
      v74 = a2;
      if (v71 == a1)
      {
        v74 = a2;
        do
        {
          if (v70 >= v74)
          {
            break;
          }

          v76 = *(v74 - 2);
          v74 -= 16;
        }

        while (v76 >= v69);
      }

      else
      {
        do
        {
          v75 = *(v74 - 2);
          v74 -= 16;
        }

        while (v75 >= v69);
      }

      if (v70 >= v74)
      {
        v10 = v70;
      }

      else
      {
        v77 = *v74;
        v10 = v70;
        v78 = v74;
        do
        {
          *v10 = v77;
          *v78 = v72;
          v79 = *(v10 + 8);
          *(v10 + 8) = *(v78 + 1);
          *(v78 + 1) = v79;
          do
          {
            v80 = *(v10 + 16);
            v10 += 16;
            v72 = v80;
          }

          while (v80 < v69);
          do
          {
            v81 = *(v78 - 2);
            v78 -= 16;
            v77 = v81;
          }

          while (v81 >= v69);
        }

        while (v10 < v78);
      }

      v82 = (v10 - 16);
      if ((v10 - 16) != a1)
      {
        v83 = *v82;
        *v82 = 0;
        *(v10 - 8) = 0;
        v84 = *(a1 + 1);
        *a1 = v83;
        if (v84)
        {
          v196 = v69;
          std::__shared_weak_count::__release_shared[abi:nn200100](v84);
          v69 = v196;
        }
      }

      v85 = *(v10 - 8);
      *(v10 - 16) = v69;
      if (v85)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v85);
      }

      if (v70 < v74)
      {
        goto LABEL_89;
      }

      v86 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *>(a1, (v10 - 16));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *>(v10, a2))
      {
        a2 = (v10 - 16);
        if (v86)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v86)
      {
LABEL_89:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,false>(a1, (v10 - 16), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v87 = *a1;
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v87 >= *v8)
      {
        v89 = a1 + 16;
        do
        {
          v10 = v89;
          if (v89 >= a2)
          {
            break;
          }

          v89 += 16;
        }

        while (v87 >= *v10);
      }

      else
      {
        v10 = a1;
        do
        {
          v88 = *(v10 + 16);
          v10 += 16;
        }

        while (v87 >= v88);
      }

      v90 = a2;
      if (v10 < a2)
      {
        v90 = a2;
        do
        {
          v91 = *(v90 - 2);
          v90 -= 16;
        }

        while (v87 < v91);
      }

      if (v10 < v90)
      {
        v92 = *v10;
        v93 = *v90;
        do
        {
          *v10 = v93;
          *v90 = v92;
          v94 = *(v10 + 8);
          *(v10 + 8) = *(v90 + 1);
          *(v90 + 1) = v94;
          do
          {
            v95 = *(v10 + 16);
            v10 += 16;
            v92 = v95;
          }

          while (v87 >= v95);
          do
          {
            v96 = *(v90 - 2);
            v90 -= 16;
            v93 = v96;
          }

          while (v87 < v96);
        }

        while (v10 < v90);
      }

      v97 = (v10 - 16);
      if ((v10 - 16) != a1)
      {
        v98 = *v97;
        *v97 = 0;
        *(v10 - 8) = 0;
        v99 = *(a1 + 1);
        *a1 = v98;
        if (v99)
        {
          v197 = v87;
          std::__shared_weak_count::__release_shared[abi:nn200100](v99);
          v87 = v197;
        }
      }

      a4 = 0;
      v100 = *(v10 - 8);
      *(v10 - 16) = v87;
      if (v100)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v100);
        a4 = 0;
      }
    }
  }

  v111 = a1 + 16;
  v113 = a1 == a2 || v111 == a2;
  if (a4)
  {
    if (!v113)
    {
      v114 = 0;
      v115 = a1;
      do
      {
        v116 = v115;
        v115 = v111;
        v117 = *(v116 + 2);
        v118 = *v116;
        if (v117 < *v116)
        {
          v119 = *(v116 + 3);
          v120 = v114;
          *v115 = 0;
          *(v115 + 1) = 0;
          while (1)
          {
            v121 = &a1[v120];
            v122 = *&a1[v120 + 8];
            *v121 = 0;
            *(v121 + 1) = 0;
            v123 = *&a1[v120 + 24];
            *(v121 + 2) = v118;
            *(v121 + 3) = v122;
            if (v123)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v123);
            }

            if (!v120)
            {
              break;
            }

            v118 = *&a1[v120 - 16];
            v120 -= 16;
            if (v117 >= v118)
            {
              v124 = &a1[v120 + 16];
              goto LABEL_144;
            }
          }

          v124 = a1;
LABEL_144:
          v125 = *(v124 + 1);
          *v124 = v117;
          *(v124 + 1) = v119;
          if (v125)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v125);
          }
        }

        v111 = v115 + 16;
        v114 += 16;
      }

      while (v115 + 16 != a2);
    }
  }

  else if (!v113)
  {
    v174 = a1 + 24;
    do
    {
      v175 = a1;
      a1 = v111;
      v176 = *(v175 + 2);
      v177 = *v175;
      if (v176 < *v175)
      {
        v178 = *(v175 + 3);
        v179 = v174;
        *a1 = 0;
        *(a1 + 1) = 0;
        do
        {
          v180 = *(v179 - 2);
          *(v179 - 3) = 0;
          *(v179 - 2) = 0;
          v181 = *v179;
          *(v179 - 1) = v177;
          *v179 = v180;
          if (v181)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v181);
          }

          v177 = *(v179 - 5);
          v179 -= 2;
        }

        while (v176 < v177);
        v182 = *v179;
        *(v179 - 1) = v176;
        *v179 = v178;
        if (v182)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v182);
        }
      }

      v111 = a1 + 16;
      v174 += 16;
    }

    while (a1 + 16 != a2);
  }
}

unint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,0>(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = a2 + 1;
      v9 = a2[1];
      a2[1] = a3[1];
      a3[1] = v9;
      v11 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        v8 = (result + 1);
        *a2 = v11;
LABEL_10:
        v13 = *v8;
        *v8 = *v10;
        *v10 = v13;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = (result + 1);
      *result = v7;
LABEL_9:
      *a3 = v6;
      v10 = a3 + 1;
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = (a2 + 1);
    v12 = result[1];
    result[1] = a2[1];
    a2[1] = v12;
    v6 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v14 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v18;
        v19 = result[1];
        result[1] = a2[1];
        a2[1] = v19;
      }
    }
  }

  v20 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v26;
          v27 = result[1];
          result[1] = a2[1];
          a2[1] = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *>(unint64_t *a1, char *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v8 = a1[2];
      v9 = *a1;
      v10 = *(a2 - 2);
      if (v8 >= *a1)
      {
        if (v10 >= v8)
        {
          return 1;
        }

        a1[2] = v10;
        *(a2 - 2) = v8;
        v22 = a1 + 3;
        v21 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v21;
        v23 = a1[2];
        v24 = *a1;
        if (v23 >= *a1)
        {
          return 1;
        }

        *a1 = v23;
        a1[2] = v24;
        v11 = a1 + 1;
      }

      else
      {
        if (v10 >= v8)
        {
          v11 = a1 + 3;
          v31 = a1[3];
          v32 = a1[1];
          *a1 = v8;
          a1[1] = v31;
          a1[2] = v9;
          a1[3] = v32;
          v33 = *(a2 - 2);
          if (v33 >= v9)
          {
            return 1;
          }

          a1[2] = v33;
        }

        else
        {
          v11 = a1 + 1;
          *a1 = v10;
        }

        *(a2 - 2) = v9;
        v22 = (a2 - 8);
      }

      v34 = *v11;
      *v11 = *v22;
      *v22 = v34;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::shared_ptr<md::mun::MuninMetadata> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v17 = a1[2];
    v18 = *a1;
    v19 = a1[4];
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v29 = a1 + 3;
        v28 = a1[3];
        v30 = a1[5];
        a1[2] = v19;
        a1[3] = v30;
        a1[4] = v17;
        a1[5] = v28;
        if (v19 >= v18)
        {
LABEL_55:
          v19 = v17;
          goto LABEL_56;
        }

        *a1 = v19;
        a1[2] = v18;
        v20 = a1 + 1;
LABEL_54:
        v52 = *v20;
        *v20 = *v29;
        *v29 = v52;
        goto LABEL_55;
      }
    }

    else
    {
      if (v19 < v17)
      {
        v20 = a1 + 1;
        *a1 = v19;
LABEL_53:
        a1[4] = v18;
        v29 = a1 + 5;
        v17 = v18;
        goto LABEL_54;
      }

      v20 = a1 + 3;
      v50 = a1[3];
      v51 = a1[1];
      *a1 = v17;
      a1[1] = v50;
      a1[2] = v18;
      a1[3] = v51;
      if (v19 < v18)
      {
        a1[2] = v19;
        goto LABEL_53;
      }
    }

LABEL_56:
    v53 = *(a2 - 2);
    if (v53 < v19)
    {
      a1[4] = v53;
      *(a2 - 2) = v19;
      v54 = a1[5];
      a1[5] = *(a2 - 1);
      *(a2 - 1) = v54;
      v55 = a1[4];
      v56 = a1[2];
      if (v55 < v56)
      {
        v57 = a1[3];
        v58 = a1[5];
        a1[2] = v55;
        a1[3] = v58;
        a1[4] = v56;
        a1[5] = v57;
        v59 = *a1;
        if (v55 < *a1)
        {
          v60 = a1[1];
          *a1 = v55;
          a1[1] = v58;
          a1[2] = v59;
          a1[3] = v60;
        }
      }
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1)
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 4;
  v13 = a1[4];
  v14 = a1[2];
  v15 = *a1;
  if (v14 < *a1)
  {
    if (v13 >= v14)
    {
      v16 = a1 + 3;
      v35 = a1[3];
      v36 = a1[1];
      *a1 = v14;
      a1[1] = v35;
      a1[2] = v15;
      a1[3] = v36;
      if (v13 >= v15)
      {
        goto LABEL_36;
      }

      a1[2] = v13;
    }

    else
    {
      v16 = a1 + 1;
      *a1 = v13;
    }

    a1[4] = v15;
    v26 = a1 + 5;
    goto LABEL_35;
  }

  if (v13 < v14)
  {
    v26 = a1 + 3;
    v25 = a1[3];
    v27 = a1[5];
    a1[2] = v13;
    a1[3] = v27;
    a1[4] = v14;
    a1[5] = v25;
    if (v13 < v15)
    {
      *a1 = v13;
      a1[2] = v15;
      v16 = a1 + 1;
LABEL_35:
      v37 = *v16;
      *v16 = *v26;
      *v26 = v37;
    }
  }

LABEL_36:
  v38 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    v41 = *v38;
    v42 = *v12;
    if (*v38 < v42)
    {
      v43 = v38[1];
      v44 = v39;
      *v38 = 0;
      v38[1] = 0;
      while (1)
      {
        v45 = (a1 + v44);
        v46 = *(a1 + v44 + 40);
        v45[4] = 0;
        v45[5] = 0;
        v47 = *(a1 + v44 + 56);
        v45[6] = v42;
        v45[7] = v46;
        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v47);
        }

        if (v44 == -32)
        {
          break;
        }

        v42 = *(a1 + v44 + 16);
        v44 -= 16;
        if (v41 >= v42)
        {
          v48 = (a1 + v44 + 48);
          goto LABEL_46;
        }
      }

      v48 = a1;
LABEL_46:
      v49 = v48[1];
      *v48 = v41;
      v48[1] = v43;
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v49);
      }

      if (++v40 == 8)
      {
        return v38 + 2 == a2;
      }
    }

    v12 = v38;
    v39 += 16;
    v38 += 2;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

uint64_t md::MuninRoadLabeler::startFrameLayout(uint64_t result, float a2)
{
  *(result + 40) = a2;
  *(result + 72) = 0;
  v2 = *(result + 104);
  for (i = *(result + 112); v2 != i; v2 += 2)
  {
    v5 = *v2;
    v6 = *(*v2 + 538);
    if (v6 == 2)
    {
      *(v5 + 264) = fmaxf(fminf(*(v5 + 264), 0.9) - (a2 / *(v5 + 276)), 0.0);
      v7.n128_f32[0] = (*(v5 + 288))();
      *(v5 + 268) = v7.n128_u32[0];
      if (*(v5 + 264) <= 0.0 || v7.n128_f32[0] <= 0.1)
      {
        v8 = (v5 + 288);
        *(v5 + 264) = 0;
        v7.n128_u64[0] = 0;
        goto LABEL_10;
      }
    }

    else if (v6 == 1)
    {
      *(v5 + 264) = fminf((a2 / *(v5 + 272)) + fmaxf(*(v5 + 264), 0.1), 1.0);
      v7.n128_f32[0] = (*(v5 + 280))();
      *(v5 + 268) = v7.n128_u32[0];
      if (*(v5 + 264) >= 1.0 || v7.n128_f32[0] >= 0.9)
      {
        v8 = (v5 + 280);
        *(v5 + 264) = 1065353216;
        v7.n128_u32[0] = 1.0;
LABEL_10:
        *(v5 + 268) = (*v8)(v7);
        md::MuninRoadLabel::updateStateMachineForDisplay(v5, 7, *(v5 + 539), 0);
      }
    }

    result = *(v5 + 64);
    if (result)
    {
      result = (*(*result + 624))(result, a2);
    }
  }

  return result;
}

void md::MuninRoadLabeler::~MuninRoadLabeler(md::MuninRoadLabeler *this)
{
  md::MuninRoadLabeler::~MuninRoadLabeler(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A086E0;
  md::MuninRoadLabeler::resetCurrentJunctions(this);
  md::MuninRoadLabelPool::clear(*(this + 4));
  v2 = *(this + 35);
  *(this + 35) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C407D563059);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 240);
  v6 = (this + 216);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 192);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 22));
  std::unique_ptr<md::MuninRoadGraphZData>::reset[abi:nn200100](this + 18, 0);
  std::unique_ptr<md::MuninRoadGraph>::reset[abi:nn200100](this + 17, 0);
  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C407D563059);
  }

  v6 = (this + 104);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 80);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v4 = *(this + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::unique_ptr<md::MuninRoadLabelPool>::~unique_ptr[abi:nn200100](this + 4);
  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    MEMORY[0x1B8C62190](v5, 0x20C4093837F09);
  }
}

void sub_1B2E85CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *(v10 + 280);
  *(v10 + 280) = 0;
  if (v14)
  {
    MEMORY[0x1B8C62190](v14, v12, a3, a4, a5, a6, a7, a8);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v10 + 240);
  a10 = (v10 + 216);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 192);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a10);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(v10 + 176));
  std::unique_ptr<md::MuninRoadGraphZData>::reset[abi:nn200100]((v10 + 144), 0);
  std::unique_ptr<md::MuninRoadGraph>::reset[abi:nn200100]((v10 + 136), 0);
  v15 = *(v10 + 128);
  *(v10 + 128) = 0;
  if (v15)
  {
    MEMORY[0x1B8C62190](v15, v12);
  }

  a10 = (v10 + 104);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 80);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v16 = *(v10 + 64);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  std::unique_ptr<md::MuninRoadLabelPool>::~unique_ptr[abi:nn200100](v11);
  v17 = *(v10 + 24);
  *(v10 + 24) = 0;
  if (v17)
  {
    MEMORY[0x1B8C62190](v17, 0x20C4093837F09);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<md::MuninRoadLabelPool>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::~__hash_table((v2 + 40));
    std::__tree<std::shared_ptr<md::MuninRoadLabel>,std::less<std::shared_ptr<md::MuninRoadLabel>>,geo::allocator_adapter<std::shared_ptr<md::MuninRoadLabel>,mdm::zone_mallocator>>::destroy(*(v2 + 16));
    MEMORY[0x1B8C62190](v2, 0x10A0C4089BE28BCLL);
  }

  return a1;
}

void std::__tree<std::shared_ptr<md::MuninRoadLabel>,std::less<std::shared_ptr<md::MuninRoadLabel>>,geo::allocator_adapter<std::shared_ptr<md::MuninRoadLabel>,mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::shared_ptr<md::MuninRoadLabel>,std::less<std::shared_ptr<md::MuninRoadLabel>>,geo::allocator_adapter<std::shared_ptr<md::MuninRoadLabel>,mdm::zone_mallocator>>::destroy(*result);
    std::__tree<std::shared_ptr<md::MuninRoadLabel>,std::less<std::shared_ptr<md::MuninRoadLabel>>,geo::allocator_adapter<std::shared_ptr<md::MuninRoadLabel>,mdm::zone_mallocator>>::destroy(result[1]);
    v2 = result[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::shared_ptr<md::MuninRoadLabel>,void *>>(v3, result);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::shared_ptr<md::MuninRoadLabel>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *>>(uint64_t a1, void *a2)
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

void md::ARWalkingAppSimulatedMapEngineMode::~ARWalkingAppSimulatedMapEngineMode(md::ARWalkingAppSimulatedMapEngineMode *this)
{
  *this = &unk_1F2A4C198;
  *(this + 83) = &unk_1F2A4C1F8;

  v2 = *(this + 82);
  *(this + 82) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 78);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4C198;
  *(this + 83) = &unk_1F2A4C1F8;

  v2 = *(this + 82);
  *(this + 82) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 78);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::MapEngineMode::~MapEngineMode(this);
}

void std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[31];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[15];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 9));
    v5 = v2[7];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = v2[4];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = v2[2];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = mdm::zone_mallocator::instance(v7);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineStore::WorkUnit>(v8, v2);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x100uLL, 0x1070040F7F2EDB8uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void md::LabelLineStore::removeRoadFeaturesInTile<geo::codec::VectorTile>(mdm::zone_mallocator *a1, void *a2)
{
  v4 = mdm::zone_mallocator::instance(a1);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v4);
  *v5 = 9;
  v6 = a2[1];
  *(v5 + 1) = *a2;
  *(v5 + 2) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(v5 + 11) = 0;
  *(v5 + 72) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 17) = 0;
  *(v5 + 72) = 255;
  *(v5 + 37) = 0;
  *(v5 + 38) = 0;
  *(v5 + 20) = 0;
  v5[168] = 1;
  *(v5 + 22) = 0;
  *(v5 + 23) = 0;
  *(v5 + 12) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(v5 + 13) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v5[224] = 0;
  *(v5 + 57) = 0;
  *(v5 + 116) = 256;
  v5[234] = 0;
  *(v5 + 30) = 0;
  *(v5 + 31) = 0;
  v7 = v5;
  md::LabelLineStore::queueWorkUnit(a1, &v7);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v7, 0);
}

void sub_1B2E863BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

void md::LabelLineStore::addContourLine(mdm::zone_mallocator *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = mdm::zone_mallocator::instance(a1);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v8);
  v10 = md::LabelLineStore::WorkUnit::WorkUnit(v9, 1, a2, a3);
  v10[16] = a4;
  md::LabelLineStore::queueWorkUnit(a1, &v10);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v10, 0);
}

void sub_1B2E86448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t md::LabelLineStore::WorkUnit::WorkUnit(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  geo::GEOFeatureTile_retain_ptr<GeoCodecsFeatureBase const>::reset((a1 + 40), a3);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 136) = *a4;
  *(a1 + 168) = 0;
  *(a1 + 145) = *(a4 + 9);
  *(a1 + 148) = *(a4 + 12);
  *(a1 + 144) = *(a4 + 8);
  *(a1 + 160) = *(a4 + 24);
  *(a1 + 168) = *(a4 + 32);
  v6 = *(a4 + 40);
  v7 = *(a4 + 56);
  v8 = *(a4 + 72);
  *(a1 + 219) = *(a4 + 83);
  *(a1 + 192) = v7;
  *(a1 + 208) = v8;
  *(a1 + 176) = v6;
  v9 = *(a4 + 112);
  *(a1 + 240) = *(a4 + 104);
  *(a1 + 248) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void md::LabelLineStore::addOverlayLine(mdm::zone_mallocator *a1, void *a2, uint64_t a3)
{
  v6 = mdm::zone_mallocator::instance(a1);
  v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v6);
  *v7 = 2;
  v8 = 0uLL;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  v9 = a2[1];
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    v8 = 0uLL;
    *(v7 + 4) = v10;
    if (v10)
    {
      *(v7 + 3) = *a2;
    }
  }

  *(v7 + 5) = 0;
  *(v7 + 6) = 0;
  *(v7 + 7) = 0;
  *(v7 + 8) = a2;
  *(v7 + 10) = 0;
  *(v7 + 11) = 0;
  *(v7 + 9) = 0;
  *(v7 + 120) = v8;
  *(v7 + 104) = v8;
  *(v7 + 17) = *a3;
  v7[168] = 0;
  *(v7 + 148) = *(a3 + 12);
  *(v7 + 72) = *(a3 + 8);
  *(v7 + 20) = *(a3 + 24);
  v7[168] = *(a3 + 32);
  v11 = *(a3 + 40);
  v12 = *(a3 + 56);
  v13 = *(a3 + 72);
  *(v7 + 219) = *(a3 + 83);
  *(v7 + 12) = v12;
  *(v7 + 13) = v13;
  *(v7 + 11) = v11;
  v14 = *(a3 + 112);
  *(v7 + 30) = *(a3 + 104);
  *(v7 + 31) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v7;
  md::LabelLineStore::queueWorkUnit(a1, &v15);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v15, 0);
}

void sub_1B2E8662C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

int64x2_t md::LabelLineStore::WorkUnit::WorkUnit(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v5 = *a3;
  v4 = a3[1];
  *(a1 + 104) = 0;
  *(a1 + 112) = v5;
  *(a1 + 120) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 128) = a4;
  *(a1 + 136) = 0;
  *(a1 + 144) = 255;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 192) = result;
  *(a1 + 208) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  *(a1 + 232) = 256;
  *(a1 + 234) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  return result;
}

void md::LabelLineStore::addExternalRoadFeature(mdm::zone_mallocator *a1, uint64_t *a2)
{
  v4 = mdm::zone_mallocator::instance(a1);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v4);
  v6 = v5;
  v7 = *a2;
  v8 = a2[1];
  v10[0] = v7;
  v10[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    md::LabelLineStore::WorkUnit::WorkUnit(v5, 6, v10, 0);
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  else
  {
    md::LabelLineStore::WorkUnit::WorkUnit(v5, 6, v10, 0);
  }

  v9 = v6;
  md::LabelLineStore::queueWorkUnit(a1, &v9);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v9, 0);
}

void sub_1B2E86778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

void md::LabelLineStore::addTransitLineSegment(mdm::zone_mallocator *a1, uint64_t *a2, uint64_t a3)
{
  v6 = mdm::zone_mallocator::instance(a1);
  v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineStore::WorkUnit>(v6);
  v8 = md::LabelLineStore::WorkUnit::WorkUnit(v7, 8, a2, a3);
  md::LabelLineStore::queueWorkUnit(a1, &v8);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](&v8, 0);
}

void sub_1B2E867FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<md::LabelLineStore::WorkUnit,mdm::TypeDeleter<md::LabelLineStore::WorkUnit>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

double md::LabelLineStore::lineStartForZoom(md::LabelLineStore *this, std::__shared_weak_count **a2, unsigned int a3, unint64_t a4)
{
  v7 = md::LabelLineStore::lineSetIndexForZoom(a2, a3);
  if ((v7 & 0x80000000) != 0 || (v8 = a2[12] + 112 * v7, v9 = *(v8 + 10), a4 >= (*(v8 + 11) - v9) >> 3))
  {
    result = 0.0;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
    *(this + 8) = -1;
  }

  else
  {
    v10 = a2[1];
    if (!v10 || (v11 = *a2, (v12 = std::__shared_weak_count::lock(v10)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:nn200100]();
      v22 = v21;
      std::__shared_weak_count::__release_shared[abi:nn200100](a2);
      _Unwind_Resume(v22);
    }

    v13 = v12;
    v14 = *(v9 + 8 * a4);
    started = md::LabelLine::startCoordinate(*(v14 + 8), *(v14 + 16));
    *this = v11;
    *(this + 1) = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *(this + 10) = *(v11 + 16);
    v16 = *(v14 + 8);
    v17 = *(v14 + 16) - v16;
    v18 = v16 + 16 * started;
    if (started >= (v17 >> 4))
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    *(this + 2) = v14;
    *(this + 3) = v19;
    *(this + 4) = started;

    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  return result;
}

void std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::__vdeallocate(void **result)
{
  if (*result)
  {
    v2 = std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::clear[abi:nn200100](result);
    v3 = *result;
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelLineSegment>>(v4, v3);
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }
}

void std::vector<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,geo::allocator_adapter<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,mdm::zone_mallocator>>::__vdeallocate(void ***result)
{
  v1 = *result;
  if (*result)
  {
    v3 = result[1];
    v4 = *result;
    if (v3 != v1)
    {
      do
      {
        std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>::reset[abi:nn200100](--v3, 0);
      }

      while (v3 != v1);
      v4 = *result;
    }

    result[1] = v1;
    v5 = mdm::zone_mallocator::instance(result);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>>(v5, v4);
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }
}

void std::vector<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,geo::allocator_adapter<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,mdm::zone_mallocator>>::__vdeallocate(uint64_t **result)
{
  v1 = *result;
  if (*result)
  {
    v3 = result[1];
    v4 = *result;
    if (v3 != v1)
    {
      do
      {
        std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](--v3, 0);
      }

      while (v3 != v1);
      v4 = *result;
    }

    result[1] = v1;
    v5 = mdm::zone_mallocator::instance(result);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>>(v5, v4);
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }
}

uint64_t std::__function::__func<md::LabelLineStore::updateLineSets(void)::$_1,std::allocator<md::LabelLineStore::updateLineSets(void)::$_1>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A08A28;
  a2[1] = v2;
  return result;
}

void std::allocator_traits<geo::allocator_adapter<md::LabelLineZSet,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::LabelLineZSet,void,0>(void **a1)
{
  v2 = a1 + 10;
  std::vector<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,geo::allocator_adapter<std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = a1 + 6;
  std::vector<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,geo::allocator_adapter<std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = a1 + 2;
  std::vector<std::unique_ptr<md::LabelLineSegment>,geo::allocator_adapter<std::unique_ptr<md::LabelLineSegment>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 72));
    std::vector<md::TileLabelLine const*,geo::allocator_adapter<md::TileLabelLine const*,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 40));
    std::vector<md::LabelLineSegmentInfo,geo::allocator_adapter<md::LabelLineSegmentInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 8));
    v4 = mdm::zone_mallocator::instance(v3);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLine>(v4, v2);
  }
}

void std::unique_ptr<md::TileLabelLine,mdm::TypeDeleter<md::TileLabelLine>>::reset[abi:nn200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__destroy_at[abi:nn200100]<md::TileLabelLine,0>(v2);
    v4 = mdm::zone_mallocator::instance(v3);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TileLabelLine>(v4, v2);
  }
}

void std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::FixedLabelLineSegment<5ul>::vertexInfo(uint64_t a1, uint64_t a2)
{
  return a1 + 4 * a2 + 288;
}

{
  return a1 + 4 * a2 + 288;
}

void md::FixedLabelLineSegment<5ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, a1);
}

void *md::FixedLabelLineSegment<5ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  return a1;
}

void md::FixedLabelLineSegment<4ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, a1);
}

void *md::FixedLabelLineSegment<4ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  return a1;
}

void md::FixedLabelLineSegment<3ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, a1);
}

void *md::FixedLabelLineSegment<3ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  return a1;
}

void md::FixedLabelLineSegment<2ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, a1);
}

void *md::FixedLabelLineSegment<2ul>::~FixedLabelLineSegment(void *a1)
{
  *a1 = &unk_1F2A2D928;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  return a1;
}

void std::vector<md::LabelLineSegmentVertexInfo,geo::allocator_adapter<md::LabelLineSegmentVertexInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineSegmentVertexInfo>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPoint>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineSegmentVertexInfo>(uint64_t a1, void *a2)
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

void md::LabelLineSegmentImpl::~LabelLineSegmentImpl(md::LabelLineSegmentImpl *this)
{
  *this = &unk_1F2A08A70;
  std::vector<md::LabelLineSegmentVertexInfo,geo::allocator_adapter<md::LabelLineSegmentVertexInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 80));
  std::vector<md::LabelPoint,geo::allocator_adapter<md::LabelPoint,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 48));
  *this = &unk_1F2A2D928;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }

  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

{
  *this = &unk_1F2A08A70;
  std::vector<md::LabelLineSegmentVertexInfo,geo::allocator_adapter<md::LabelLineSegmentVertexInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 80));
  std::vector<md::LabelPoint,geo::allocator_adapter<md::LabelPoint,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 48));
  *this = &unk_1F2A2D928;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v2);
  }
}

uint64_t md::DaVinciMaterialLayerDataSource::descriptionForKey@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  UInt64 = gdc::ResourceKey::getUInt64(*(a1 + 16), 0);
  std::ostringstream::basic_ostringstream[abi:nn200100](&v13);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, "gdc::LayerDataRequestKey<Type:", 30);
  v5 = *(a1 + 8);
  if (v5 > 0x51)
  {
    v6 = "<Invalid>";
  }

  else
  {
    v6 = off_1E7B30210[v5];
  }

  v7 = strlen(v6);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, v6, v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, ", Material ID: ", 15);
  v8 = MEMORY[0x1B8C61CF0](&v13, UInt64);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, ">", 1);
  if ((v20 & 0x10) != 0)
  {
    v10 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v10 = v16;
    }

    locale = v15[4].__locale_;
  }

  else
  {
    if ((v20 & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    locale = v15[1].__locale_;
    v10 = v15[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, locale, v9);
  }

LABEL_17:
  a2[v9] = 0;
  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v21);
}

void md::DaVinciMaterialLayerDataSource::createLayerData(void x0_0, uint64_t a1, unsigned __int16 **a2)
{
  gdc::LayerDataSource::getResourceFromMap(&v6, 36, *a2, a2[1]);
  v4 = v6;
  v3 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = *(v4 + 152);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B2E87610(_Unwind_Exception *exception_object)
{
  v3 = v1[26];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v1[3] = &unk_1F2A60328;
  v4 = v1[7];
  if (v4 != v1[9])
  {
    free(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::MaterialData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A08CC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciMaterialLayerDataSource::~DaVinciMaterialLayerDataSource(md::DaVinciMaterialLayerDataSource *this)
{
  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t __Block_byref_object_copy__12936(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B2E893D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::~__value_func[abi:nn200100](v7 + 8);
  std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__split_buffer<std::pair<unsigned long long,std::function<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B2E89600(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKPuckAnimator;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B2E89934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(double)>::~__value_func[abi:nn200100](va);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B2E89F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<VKRouteWaypointInfo * {__strong},geo::allocator_adapter<VKRouteWaypointInfo * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
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
        v6 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKRouteWaypointInfo * {__strong}>(v7, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKRouteWaypointInfo * {__strong}>(uint64_t a1, void *a2)
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

void sub_1B2E8A2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
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
        v6 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong}>(v7, v4);
  }
}

void sub_1B2E8A490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B2E8AB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*,geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >= 0xAAAAAAAAAAAAAABLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = mdm::zone_mallocator::instance(a1);
    v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v8, a4);
    v10 = v9;
    *a1 = v9;
    *(a1 + 1) = v9;
    *(a1 + 2) = &v9[3 * a4];
    if (a2 != a3)
    {
      v11 = v9;
      do
      {
        *v10 = &unk_1F2A381B8;
        v10[1] = 0;
        v12 = *(a2 + 8);
        v13 = v10[1];
        v10[1] = v12;

        a2 += 24;
        v10 += 3;
        v11 += 3;
      }

      while (a2 != a3);
    }

    *(a1 + 1) = v10;
  }
}

void geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A381B8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A381B8;

  return a1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 24 * a2, 0x81040B49F1EBBuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void sub_1B2E8AF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B2E8B2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B2E8C1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B2E8C54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a10 = &a14;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  _Unwind_Resume(a1);
}

void std::vector<md::LabelImageInfo,geo::allocator_adapter<md::LabelImageInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void (__cdecl ***result)(std::__shared_weak_count *__hidden this))
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
        result = *(v3 - 2);
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

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelImageInfo>(v6, v4);
  }
}

void sub_1B2E8C7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B2E8C8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E8C9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E8CAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E8CBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ggl::ARCameraImagePipelineState::~ARCameraImagePipelineState(ggl::ARCameraImagePipelineState *this)
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

void ggl::ARCameraImagePipelineSetup::~ARCameraImagePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::RoadStyling::subscribeLayer(uint64_t *this, md::RoadLayer *a2)
{
  ++*(a2 + 54);
  v2 = *(a2 + 1);
  for (i = *(a2 + 2); v2 != i; v2 += 8)
  {
    v4 = *v2;
    v5 = *(*v2 + 1048);
    v6 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(v5);
    v7 = *this;
    v8 = this[1];
    if (*this == v8)
    {
LABEL_7:
      v10 = this[2];
      if (v8 >= v10)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4) + 1;
        if (v12 > 0x555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v7) >> 4);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x2AAAAAAAAAAAAAALL)
        {
          v14 = 0x555555555555555;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          if (v14 <= 0x555555555555555)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v15 = (16 * ((v8 - v7) >> 4));
        *(v15 + 1) = 0uLL;
        *(v15 + 2) = 0uLL;
        *v15 = 0uLL;
        v16 = v15 - (v8 - v7);
        if (v7 != v8)
        {
          v17 = v7;
          v18 = 16 * ((v8 - v7) >> 4) - (v8 - v7);
          do
          {
            *v18 = *v17;
            *(v18 + 8) = *(v17 + 8);
            *(v17 + 8) = 0;
            *(v17 + 16) = 0;
            *(v18 + 24) = *(v17 + 24);
            *(v18 + 32) = *(v17 + 32);
            *(v17 + 32) = 0;
            *(v17 + 40) = 0;
            v17 += 48;
            v18 += 48;
          }

          while (v17 != v8);
          do
          {
            std::__destroy_at[abi:nn200100]<md::RoadStyling::Entry,0>(v7);
            v7 += 48;
          }

          while (v7 != v8);
        }

        v11 = (v15 + 48);
        v19 = *this;
        *this = v16;
        *(this + 1) = (v15 + 48);
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        v8[1] = 0u;
        v8[2] = 0u;
        v11 = (v8 + 3);
        *v8 = 0u;
      }

      this[1] = v11;
      operator new();
    }

    v9 = *this;
    while (*v9 != v6 || !gss::FeatureAttributeSet::operator==(*(*(v9 + 8) + 240), *(*(v9 + 8) + 248), *(v5 + 240), *(v5 + 248)))
    {
      v9 += 48;
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    md::RoadBatch::setStyle(v4, (v9 + 32));
    ++*(v9 + 24);
  }
}

void sub_1B2E8D308(_Unwind_Exception *a1)
{
  md::RoadStyleConstants::~RoadStyleConstants(v2);
  v4 = v1[8];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = v1[5];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = v1[3];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = v1[1];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  MEMORY[0x1B8C62190](v1, 0x1020C40F1B7CD7FLL);
  _Unwind_Resume(a1);
}

void *std::default_delete<md::RoadStyle>::operator()[abi:nn200100](void *result)
{
  if (result)
  {
    v1 = result;
    md::RoadStyleConstants::~RoadStyleConstants((result + 10));
    v2 = v1[8];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = v1[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v1[3];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = v1[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::RoadStyleConstants::~RoadStyleConstants(md::RoadStyleConstants *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void std::__shared_ptr_pointer<md::RoadStyle *,std::shared_ptr<md::RoadStyle>::__shared_ptr_default_delete<md::RoadStyle,md::RoadStyle>,std::allocator<md::RoadStyle>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RoadStyling::unsubscribeLayer(md::RoadStyling *this, md::RoadLayer *a2)
{
  v4 = *(a2 + 54) - 1;
  *(a2 + 54) = v4;
  if (!v4)
  {
    v23[12] = v2;
    v23[13] = v3;
    v5 = *(a2 + 1);
    for (i = *(a2 + 2); v5 != i; v5 += 8)
    {
      v8 = *v5;
      v9 = *(*v5 + 1048);
      v10 = std::hash<gss::StylesheetQuery<gss::PropertyID>>::operator()(v9);
      v11 = *this;
      v12 = *(this + 1);
      if (*this != v12)
      {
        v13 = v10;
        while (*v11 != v13 || !gss::FeatureAttributeSet::operator==(*(*(v11 + 8) + 240), *(*(v11 + 8) + 248), *(v9 + 240), *(v9 + 248)))
        {
          v11 += 48;
          if (v11 == v12)
          {
            goto LABEL_19;
          }
        }

        v14 = *(v11 + 24) - 1;
        *(v11 + 24) = v14;
        v23[0] = 0;
        v23[1] = 0;
        md::RoadBatch::setStyle(v8, v23);
        if (!v14)
        {
          v15 = *(this + 1);
          v16 = *(v15 - 40);
          *v11 = *(v15 - 48);
          v17 = *(v15 - 32);
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          }

          v18 = *(v11 + 16);
          *(v11 + 8) = v16;
          *(v11 + 16) = v17;
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v18);
          }

          *(v11 + 24) = *(v15 - 24);
          v20 = *(v15 - 16);
          v19 = *(v15 - 8);
          if (v19)
          {
            atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
          }

          v21 = *(v11 + 40);
          *(v11 + 32) = v20;
          *(v11 + 40) = v19;
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v21);
          }

          v22 = *(this + 1) - 48;
          std::__destroy_at[abi:nn200100]<md::RoadStyling::Entry,0>(v22);
          *(this + 1) = v22;
        }
      }

LABEL_19:
      ;
    }
  }
}

void md::DsmDecoder::decode(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  if ((a3[112] & 1) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  if (*(a2 + 2) == 50)
  {
    (*(**(a1 + 8) + 16))(__p);
    shared_owners = __p[0];
    v8 = __p[1];
    if (__p[1])
    {
      atomic_fetch_add_explicit(__p[1] + 1, 1uLL, memory_order_relaxed);
      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](__p[1]);
      }
    }

    if (!shared_owners)
    {
      goto LABEL_36;
    }

    v9 = shared_owners[6].__vftable;
    shared_owners = shared_owners[6].__shared_owners_;
    if (shared_owners)
    {
      atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v9 || !v9[71].__on_zero_shared_weak || (v10 = geo::codec::VectorTile::dtmRasterBlob(v9), v11 = *v10, v12 = *(v10 + 8), v12 == *v10))
    {
LABEL_36:
      *a4 = 0;
      a4[1] = 0;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      goto LABEL_71;
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      v11 = *v10;
      v12 = *(v10 + 8);
    }

    v13 = v12 - v11;
    if (v12 != v11)
    {
      __p[0] = 0;
      __p[1] = 0;
      v39 = 0;
      v36 = 0;
      v37 = 0;
      on_zero_shared_weak = v9[71].__on_zero_shared_weak;
      v15 = *(on_zero_shared_weak + 21);
      if (v15 > 1)
      {
        if (v15 != 2 && v15 != 6)
        {
          goto LABEL_55;
        }
      }

      else if (*(on_zero_shared_weak + 21))
      {
        if (v15 != 1 || md::ElevationRaster::decodePngElevationRaster(v11, v13, __p, &v37, &v36))
        {
          goto LABEL_55;
        }

        goto LABEL_40;
      }

      v29 = *(on_zero_shared_weak + 3);
      v36 = *(on_zero_shared_weak + 4);
      v37 = v29;
      v30 = geo::codec::VectorTile::dtmRasterBlob(v9);
      v31 = *(v30 + 16);
      *__p = *v30;
      v39 = v31;
      *v30 = 0;
      *(v30 + 8) = 0;
      *(v30 + 16) = 0;
      goto LABEL_55;
    }
  }

  else
  {
    v16 = (*(**a3 + 32))();
    v17 = (*(**a3 + 24))();
    if (v17)
    {
      v18 = v17;
      __p[0] = 0;
      __p[1] = 0;
      v39 = 0;
      v36 = 0;
      v37 = 0;
      shared_owners = 0;
      if (md::ElevationRaster::decodePngElevationRaster(v16, v17, __p, &v37, &v36))
      {
        v19 = v18 - 2;
        if (v18 < v18 - 2)
        {
          v19 = v18;
        }

        v20 = v19 + 2;
        if (v20 > v18)
        {
          goto LABEL_68;
        }

        v21 = *(v16 + v20 - 2);
        if (v21 < 0xC || v18 < v21)
        {
          if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
          }

          v23 = GEOGetVectorKitVKDefaultLog_log;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *v35 = 0;
            _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_ERROR, "DTM header verification failed.", v35, 2u);
          }

LABEL_68:
          shared_owners = 0;
LABEL_69:
          *a4 = 0;
          a4[1] = 0;
          if (__p[0])
          {
            operator delete(__p[0]);
          }

          goto LABEL_71;
        }

        v25 = v18 - v21;
        if (v18 < v25)
        {
          v25 = v18;
        }

        v26 = v25 + 4;
        if (v25 + 4 > v18)
        {
          v27 = v25 + 4;
        }

        else
        {
          v27 = v25 + 8;
          v25 += 4;
        }

        if (v27 <= v18)
        {
          v25 = v27;
        }

        if (v25 + 1 > v18)
        {
          goto LABEL_68;
        }

        v33 = v27 > v18 || v25 + 2 > v18;
        if (v33 || v26 > v18)
        {
          goto LABEL_68;
        }

LABEL_55:
        v32 = *(a2 + 8);
        gdc::ResourceKey::getInt32(v32, 2u);
        gdc::ResourceKey::getInt32(v32, 1u);
        gdc::ResourceKey::getInt32(v32, 0);
        operator new();
      }

LABEL_40:
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v24 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *v35 = 0;
        _os_log_impl(&dword_1B2754000, v24, OS_LOG_TYPE_ERROR, "failed to decode PNG DTM file", v35, 2u);
      }

      goto LABEL_69;
    }

    shared_owners = 0;
  }

  *a4 = 0;
  a4[1] = 0;
LABEL_71:
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_owners);
  }
}

void sub_1B2E8DC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::FlyoverDsmResource>::__on_zero_shared(void *a1)
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

void std::__shared_ptr_emplace<md::FlyoverDsmResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A08E48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::ElevationRaster>::__on_zero_shared(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<md::ElevationRaster>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2B1C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DsmDecoder::~DsmDecoder(md::DsmDecoder *this)
{
  *this = &unk_1F2A08E20;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A08E20;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void md::Logic<md::ARRotateTowardsUserLogic,md::ARRotateTowardsUserContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::ARRotateTowardsUserLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v39 = *gdc::CameraView::position((*a3 + 3800));
  v40 = 0;
  v37 = xmmword_1B33B0740;
  v38 = 0;
  v4 = *(a1 + 120);
  v5 = gdc::Registry::storage<arComponents::RotateTowardsUser>(v4);
  v6 = gdc::Registry::storage<arComponents::WorldTransform>(v4);
  v7 = gdc::Registry::storage<arComponents::IsVisible>(v4);
  v8.i64[0] = v5;
  v8.i64[1] = v6;
  v9 = (v7 + 32);
  v41 = vaddq_s64(v8, vdupq_n_s64(0x20uLL));
  v42 = v7 + 32;
  v10 = v41.i64[0];
  v11 = 1;
  v12 = &v41;
  do
  {
    if (*(v41.i64[v11] + 32) - *(v41.i64[v11] + 24) < *(v10 + 32) - *(v10 + 24))
    {
      v10 = v41.i64[v11];
      v12 = (&v41 + v11 * 8);
    }

    ++v11;
  }

  while (v11 != 3);
  v13 = v12->i64[0];
  if (v5 + 4 == v12->i64[0])
  {
    v35 = v12->i64[0];
    v41.i64[0] = &v39;
    v41.i64[1] = &v37;
    v42 = a1;
    v14 = v5[7];
    v15 = v5[8];
    while (v14 != v15)
    {
      v16 = *(v14 + 4);
      Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6 + 4, v16);
      v18 = v6[8];
      if (v18 != Index && *(v7 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v9, v16))
      {
        v19 = *v14;
        v20 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v6 + 4, HIDWORD(*v14));
        if (v18 == v20)
        {
          v21 = v6[11];
        }

        else
        {
          v21 = (v6[10] + 80 * ((v20 - v6[7]) >> 3));
        }

        _ZZN2md24ARRotateTowardsUserLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_26ARRotateTowardsUserContextEENK3__0clENS5_6EntityERN12arComponents14WorldTransformE(v41.i64, v19, *v21);
      }

      v14 += 8;
    }

    v13 = v35;
  }

  if (v6 + 4 == v13)
  {
    v34 = a1;
    v36 = v13;
    v41.i64[0] = &v39;
    v41.i64[1] = &v37;
    v42 = a1;
    v23 = v6[7];
    v22 = v6[8];
    if (v23 != v22)
    {
      v24 = v6[10];
      do
      {
        v25 = *(v23 + 4);
        if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, v25) && *(v7 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v9, v25))
        {
          _ZZN2md24ARRotateTowardsUserLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_26ARRotateTowardsUserContextEENK3__0clENS5_6EntityERN12arComponents14WorldTransformE(v41.i64, *v23, *v24);
        }

        v24 += 5;
        v23 += 8;
      }

      while (v23 != v22);
    }

    a1 = v34;
    v13 = v36;
  }

  if (v9 == v13)
  {
    v41.i64[0] = &v39;
    v41.i64[1] = &v37;
    v42 = a1;
    v27 = *(v7 + 56);
    for (i = *(v7 + 64); v27 != i; v27 += 8)
    {
      v28 = *(v27 + 4);
      if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, v28))
      {
        v29 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6 + 4, v28);
        v30 = v6[8];
        if (v30 != v29)
        {
          v31 = *v27;
          v32 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v6 + 4, HIDWORD(*v27));
          if (v30 == v32)
          {
            v33 = v6[11];
          }

          else
          {
            v33 = (v6[10] + 80 * ((v32 - v6[7]) >> 3));
          }

          _ZZN2md24ARRotateTowardsUserLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_26ARRotateTowardsUserContextEENK3__0clENS5_6EntityERN12arComponents14WorldTransformE(v41.i64, v31, *v33);
        }
      }
    }
  }
}

void _ZZN2md24ARRotateTowardsUserLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_13CameraContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_26ARRotateTowardsUserContextEENK3__0clENS5_6EntityERN12arComponents14WorldTransformE(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v5 = 0;
  v31 = *MEMORY[0x1E69E9840];
  v6 = a1[2];
  v27 = a3;
  v28 = 0;
  v7 = *a1;
  do
  {
    *(&v23 + v5 * 8) = *(v7 + v5 * 8) - v27.n128_f64[v5];
    ++v5;
  }

  while (v5 != 3);
  v8 = gm::Matrix<double,3,1>::normalized<int,void>(&v23);
  v9 = 0;
  *v26 = v8;
  v26[1] = v10;
  v26[2] = v11;
  v12 = a1[1];
  v13 = 0.0;
  do
  {
    v13 = v13 + *&v26[v9] * *(v12 + v9 * 8);
    ++v9;
  }

  while (v9 != 3);
  if (fabs(fabs(v13) + -1.0) <= 0.0001)
  {
    if (v13 >= 0.0)
    {
      return;
    }

    v18 = 0uLL;
    v19 = 0x3FF0000000000000;
    gm::quaternionFromAngleAxis<double>(&v20, &v18, 3.14159265);
  }

  else
  {
    gm::quaternionBetweenVectors<double>(&v20, v12, v26);
  }

  v23 = v20;
  v24 = v21;
  v25 = v22;
  v14 = *(v6 + 120);
  v29[0] = &unk_1F2A08FF0;
  v29[1] = &v23;
  v30 = v29;
  v15 = gdc::Registry::storage<arComponents::RotationToApply>(v14);
  v16 = gdc::ComponentStorageWrapper<arComponents::RotationToApply>::get(v15, a2);
  if (v16)
  {
    std::function<void ()(arComponents::RotationToApply &,BOOL)>::operator()(v30, v16, 0);
  }

  else
  {
    v20 = xmmword_1B33B0710;
    std::function<void ()(arComponents::RotationToApply &,BOOL)>::operator()(v30, &v20, 1);
    v18 = v20;
    v17 = gdc::Registry::storage<arComponents::RotationToApply>(v14);
    gdc::ComponentStorageWrapper<arComponents::RotationToApply>::emplace(v17, a2, &v18);
  }

  std::__function::__value_func<void ()(arComponents::RotationToApply &,BOOL)>::~__value_func[abi:nn200100](v29);
}

float _ZNSt3__110__function6__funcIZZN2md24ARRotateTowardsUserLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_26ARRotateTowardsUserContextEENK3__0clENS8_6EntityERN12arComponents14WorldTransformEEUlRNSL_15RotationToApplyEbE_NS_9allocatorISQ_EEFvSP_bEEclESP_Ob(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 8);
  do
  {
    v5 = *(v4 + 8 * v3);
    *&v8[v3++] = v5;
  }

  while (v3 != 3);
  v6 = *(v4 + 24);
  *&v8[3] = v6;
  gm::Quaternion<float>::operator*(&v9, a2, v8);
  *a2 = v9;
  *(a2 + 8) = v10;
  result = v11;
  *(a2 + 12) = v11;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN2md24ARRotateTowardsUserLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_26ARRotateTowardsUserContextEENK3__0clENS8_6EntityERN12arComponents14WorldTransformEEUlRNSL_15RotationToApplyEbE_NS_9allocatorISQ_EEFvSP_bEE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A08FF0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::Registry::storage<arComponents::RotateTowardsUser>(uint64_t a1)
{
  v3 = 0xBEA3F5CF520EA208;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBEA3F5CF520EA208);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::RotateTowardsUser>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::RotateTowardsUser>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::RotateTowardsUser>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t md::Logic<md::ARRotateTowardsUserLogic,md::ARRotateTowardsUserContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9C174DEE01931CA6 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
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

uint64_t md::Logic<md::ARRotateTowardsUserLogic,md::ARRotateTowardsUserContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9C174DEE01931CA6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 152))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARRotateTowardsUserLogic,md::ARRotateTowardsUserContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9C174DEE01931CA6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 144))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARRotateTowardsUserLogic,md::ARRotateTowardsUserContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9C174DEE01931CA6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARRotateTowardsUserLogic,md::ARRotateTowardsUserContext,md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9C174DEE01931CA6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::CameraContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 128))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARRotateTowardsUserContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARRotateTowardsUserContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A09038;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARRotateTowardsUserContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A09038;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARRotateTowardsUserLogic::~ARRotateTowardsUserLogic(md::ARRotateTowardsUserLogic *this)
{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void *VertexData_Reader<TempFoundationTriangleAccessor,unsigned short>::VertexData_Reader(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(a1, **(a2 + 64), 0, (*(**(a2 + 64) + 48) - *(**(a2 + 64) + 40)) / *(**(a2 + 64) + 8), 0, a5);
  v10[6] = v10[5];
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess((v10 + 7), *(a2 + 96), a3, a4, 0, 1, a5);
  a1[13] = a1[12];
  a1[14] = (a4 - a3) / 3uLL;
  return a1;
}

void *VertexData_Reader<TempFoundationTriangleAccessor,unsigned int>::VertexData_Reader(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(a1, **(a2 + 64), 0, (*(**(a2 + 64) + 48) - *(**(a2 + 64) + 40)) / *(**(a2 + 64) + 8), 0, a5);
  v10[6] = v10[5];
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v10 + 7, *(a2 + 96), a3, a4, 0, a5);
  a1[13] = a1[12];
  a1[14] = (a4 - a3) / 3uLL;
  return a1;
}

uint64_t gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<OverlayTriangleAccessor>>::compute(uint64_t a1)
{
  v129[12] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*(*a1 + 24) == 0.0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (*(v3 + 24) == 0.0)
  {
    return 0;
  }

  else
  {
    *(a1 + 170) = 0;
    v4 = *v3;
    v5 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v1, **v3, *(*v3 + 4));
    v7 = v6;
    v9 = v8;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v8;
    v10 = *(v3 + 8);
    v11 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v1, v10->f32[0], v10->f32[1]);
    v13 = v12;
    v15 = v14;
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v14;
    v16 = *(v3 + 16);
    v17 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v1, v16->f32[0], v16->f32[1]);
    v20 = 0;
    *(a1 + 64) = v17;
    *(a1 + 72) = v18;
    *(a1 + 80) = v19;
    if (v5 >= 0.0 && v5 <= 1.0)
    {
      v20 = v7 >= 0.0 && v7 <= 1.0 && v9 >= 0.0 && v9 <= 1.0;
    }

    v22 = *(a1 + 169) | v20;
    if (v11 >= 0.0 && v11 <= 1.0)
    {
      v24 = 0;
      v26 = v13 >= 0.0 && v13 <= 1.0;
      if (v26 && v15 >= 0.0)
      {
        v24 = 2 * (v15 <= 1.0);
      }
    }

    else
    {
      v24 = 0;
    }

    v27 = v24 | v22;
    if (v17 >= 0.0 && v17 <= 1.0)
    {
      v29 = 0;
      v30 = v18 >= 0.0 && v18 <= 1.0;
      if (v30 && v19 >= 0.0)
      {
        v29 = 4 * (v19 <= 1.0);
      }
    }

    else
    {
      v29 = 0;
    }

    *(a1 + 169) = v29 | v27;
    v31 = *v1;
    v32 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v3, **v1, *(*v1 + 4));
    v34 = v33;
    v36 = v35;
    *(a1 + 96) = v32;
    *(a1 + 104) = v33;
    *(a1 + 112) = v35;
    v37 = *(v1 + 8);
    v38 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v3, v37->f32[0], v37->f32[1]);
    v40 = v39;
    v42 = v41;
    *(a1 + 120) = v38;
    *(a1 + 128) = v39;
    *(a1 + 136) = v41;
    v43 = *(v1 + 16);
    v44 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v3, v43->f32[0], v43->f32[1]);
    v47 = 0;
    *(a1 + 144) = v44;
    *(a1 + 152) = v45;
    *(a1 + 160) = v46;
    if (v32 >= 0.0 && v32 <= 1.0)
    {
      v47 = v34 >= 0.0 && v34 <= 1.0 && v36 >= 0.0 && v36 <= 1.0;
    }

    v48 = 0;
    if (v38 >= 0.0 && v38 <= 1.0)
    {
      v48 = 0;
      if (v40 >= 0.0 && v40 <= 1.0 && v42 >= 0.0)
      {
        v48 = 2 * (v42 <= 1.0);
      }
    }

    v49 = 0;
    if (v44 >= 0.0 && v44 <= 1.0)
    {
      v49 = 0;
      if (v45 >= 0.0 && v45 <= 1.0 && v46 >= 0.0)
      {
        v49 = 4 * (v46 <= 1.0);
      }
    }

    *(a1 + 168) |= v49 | v48 | v47;
    v123 = vcvtq_f64_f32(*v31);
    v50 = vcvtq_f64_f32(*v37);
    v124 = v50;
    v51 = vcvtq_f64_f32(*v43);
    v125 = v51;
    v52 = vcvtq_f64_f32(*v4);
    v53 = vcvtq_f64_f32(*v10);
    v120 = v52;
    v121 = v53;
    v54 = vcvtq_f64_f32(*v16);
    v122 = v54;
    v55 = vsubq_f64(v51, v123);
    v56 = vmulq_f64(vextq_s8(v55, v55, 8uLL), vsubq_f64(v50, v123));
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v56, 1), v56)).u8[0])
    {
      v124 = v51;
      v125 = v50;
    }

    v57 = vsubq_f64(v53, v52);
    v58 = vsubq_f64(v54, v52);
    v59 = vmulq_f64(v57, vextq_s8(v58, v58, 8uLL));
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v59, 1), v59)).u8[0])
    {
      v121 = v54;
      v122 = v53;
    }

    v116 = v118;
    v117 = 6;
    v114 = v118;
    v115 = v118;
    *&buf = v129;
    *(&buf + 1) = v129;
    v127 = v129;
    v128 = 6;
    geo::small_vector_base<gm::Matrix<double,2,1>>::insert<gm::Matrix<double,2,1>*>(&buf, v129, &v123, &buf);
    v60 = 0;
    v61 = &v114;
    p_buf = &buf;
    do
    {
      v63 = p_buf;
      v64 = v60 + 1;
      if (v60 == 2)
      {
        v65 = 0;
      }

      else
      {
        v65 = v60 + 1;
      }

      if (v60)
      {
        p_buf = v61;
      }

      v66 = (v61 + 1);
      if (v60)
      {
        v61 = v63;
      }

      v67 = (v63 + 1);
      if (v60)
      {
        v68 = v67;
      }

      else
      {
        v68 = v66;
      }

      v61[1] = *v61;
      if (v60)
      {
        v69 = v66;
      }

      else
      {
        v69 = v67;
      }

      v70 = *p_buf;
      v71 = p_buf[1];
      v72 = v71 - *p_buf;
      if (v71 != *p_buf)
      {
        v73 = 0;
        v74 = *(&v120 + v60);
        v75 = v72 >> 4;
        v109 = vsubq_f64(*(&v120 + v65), v74);
        v110 = v74;
        v112 = vextq_s8(v109, v109, 8uLL);
        do
        {
          v76 = v73 + 1;
          if (v73 + 1 == v75)
          {
            v77 = 0;
          }

          else
          {
            v77 = v73 + 1;
          }

          v78 = &v70[2 * v77];
          v79 = *v78;
          v80 = *&v70[2 * v73];
          v81 = vsubq_f64(v80, v110);
          v82 = vmulq_f64(vextq_s8(v81, v81, 8uLL), v109);
          v83 = vmulq_f64(vsubq_f64(*v78, v110), v112);
          v84 = vdupq_laneq_s64(v83, 1);
          v85 = vcgtq_f64(v84, v83);
          if ((vmovn_s64(veorq_s8(vcgeq_f64(vdupq_laneq_s64(v82, 1), v82), v85)).u8[0] & 1) == 0)
          {
            v86 = vsubq_f64(v79, v80);
            v87 = vmulq_f64(v86, v112);
            v88 = vsubq_f64(v87, vdupq_laneq_s64(v87, 1));
            if (v88.f64[0] != 0.0)
            {
              v119 = vmlsq_lane_f64(v79, v86, vdivq_f64(vsubq_f64(v83, v84), v88).f64[0], 0);
              v108 = v85;
              geo::small_vector_base<gm::Matrix<double,2,1>>::push_back(v61, &v119);
              v85 = v108;
            }
          }

          if (vmovn_s64(v85).u32[0])
          {
            geo::small_vector_base<gm::Matrix<double,2,1>>::push_back(v61, v78);
          }

          v70 = *p_buf;
          v75 = (*v69 - *p_buf) >> 4;
          v73 = v76;
        }

        while (v76 < v75);
      }

      v60 = v64;
    }

    while (v64 != 3);
    if (v61 != &v114)
    {
      v115 = v114;
      geo::small_vector_base<gm::Matrix<double,2,1>>::insert<gm::Matrix<double,2,1>*>(&v114, v114, *v61, *v68);
    }

    if (buf != v127)
    {
      free(buf);
    }

    v89 = v114;
    v90 = (v115 - v114) >> 4;
    if (v90 <= 2)
    {
      v25 = *(a1 + 170);
    }

    else
    {
      if (v90 >= 7)
      {
        v91 = GEOGetGeoDisplayCoreDefaultLog();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = (v115 - v114) >> 4;
          _os_log_impl(&dword_1B2754000, v91, OS_LOG_TYPE_ERROR, "Exceeded triangle storage for polygon intersection (%zu verts)", &buf, 0xCu);
        }

        v89 = v114;
        v90 = (v115 - v114) >> 4;
      }

      if (v90 >= 6)
      {
        v92 = 6;
      }

      else
      {
        v92 = v90;
      }

      v25 = *(a1 + 170);
      if (v92 - 1 >= 2)
      {
        v93 = *a1;
        v94 = v92 - 2;
        v95 = 1;
        do
        {
          v96 = v89[v95++];
          v111 = v96;
          v113 = v89[v95 % v92];
          v97 = vcvt_f32_f64(*v89);
          v98 = a1 + 176 + 72 * v25;
          *v98 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v93, v97.f32[0], v97.f32[1]);
          *(v98 + 8) = v99;
          *(v98 + 16) = v100;
          v101 = vcvt_f32_f64(v111);
          *(v98 + 24) = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v93, v101.f32[0], v101.f32[1]);
          *(v98 + 32) = v102;
          *(v98 + 40) = v103;
          v104 = vcvt_f32_f64(v113);
          *(v98 + 48) = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v93, v104.f32[0], v104.f32[1]);
          *(v98 + 56) = v105;
          *(v98 + 64) = v106;
          *(a1 + 170) = ++v25;
          --v94;
        }

        while (v94);
      }
    }

    if (v89 != v116)
    {
      free(v89);
    }
  }

  return v25;
}

uint64_t FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(int8x16_t a1, double a2, float32_t a3, float32x2_t a4, float32_t a5, float32x2_t a6, float32x2_t a7)
{
  a4.f32[1] = a5;
  a6.f32[1] = a3;
  v7 = vmulq_n_f64(vcvtq_f64_f32(a7), a2);
  v8 = vmaxnmq_f64(vmlaq_f64(vmlaq_f64(vextq_s8(v7, v7, 8uLL), vcvtq_f64_f32(a6), vextq_s8(a1, a1, 8uLL)), a1, vcvtq_f64_f32(a4)), 0);
  v9 = vmovn_s64(vcgtq_f64(v8, vdupq_n_s64(0x40EFFFE000000000uLL)));
  if (v9.i8[0])
  {
    v10 = -65536;
  }

  else
  {
    v10 = v8.f64[0] << 16;
  }

  if (v9.i8[4])
  {
    v11 = 0xFFFF;
  }

  else
  {
    v11 = v8.f64[1];
  }

  return v10 | v11;
}

void geo::small_vector_base<gm::Matrix<double,2,1>>::insert<gm::Matrix<double,2,1>*>(uint64_t *result, uint64_t *a2, char *a3, char *a4)
{
  v5 = a3;
  v8 = *result;
  v7 = result[1];
  v9 = a2 - *result;
  v10 = a4 - a3;
  v11 = (a4 - a3) >> 4;
  if (v7 == a2)
  {
    if (v11 > result[3] - (v9 >> 4))
    {
      geo::small_vector_base<gm::Matrix<double,2,1>>::grow(result, (v9 >> 4) + v11);
      v7 = result[1];
    }

    if (v5 != a4)
    {
      do
      {
        v18 = *v5;
        v5 += 16;
        *v7 = v18;
        v7 += 2;
      }

      while (v5 != a4);
      v7 = result[1];
    }

    result[1] = v7 + v10;
  }

  else
  {
    v12 = v11 + ((v7 - v8) >> 4);
    if (result[3] < v12)
    {
      geo::small_vector_base<gm::Matrix<double,2,1>>::grow(result, v12);
      v8 = *result;
      v7 = result[1];
    }

    v13 = (v8 + v9);
    result[1] = v7 + v10;
    if (v7 != v13)
    {
      v14 = v7 - 1;
      v15 = (v14 + v10);
      do
      {
        v16 = v14 - 1;
        *(v15 - 1) = *(v14 - 1);
        v17 = *v14;
        v14 -= 2;
        *v15 = v17;
        v15 -= 2;
      }

      while (v16 != v13);
    }

    while (v5 != a4)
    {
      *v13 = *v5;
      v13[1] = *(v5 + 1);
      v5 += 16;
      v13 += 2;
    }
  }
}

BOOL gm::LineSegment<double,2>::intersect<double,void>(float64x2_t *a1, float64x2_t *a2, double *a3, double *a4, float64x2_t *a5)
{
  v5 = a1[1];
  v7 = a2[1].f64[0];
  v6 = a2[1].f64[1];
  v8 = -(vmuld_lane_f64(v7, v5, 1) - v6 * v5.f64[0]);
  if (v8 != 0.0)
  {
    v9 = vsubq_f64(vaddq_f64(*a1, v5), *a2);
    *a3 = -(vmuld_lane_f64(v7, v9, 1) - v9.f64[0] * v6) * (1.0 / v8);
    v10 = vmulq_f64(v9, vextq_s8(v5, v5, 8uLL));
    *a4 = 1.0 / v8 * vsubq_f64(vdupq_laneq_s64(v10, 1), v10).f64[0];
    if (a5)
    {
      *a5 = vmlsq_lane_f64(vaddq_f64(a1[1], *a1), v5, *a3, 0);
    }
  }

  return v8 != 0.0;
}

__n128 geo::small_vector_base<gm::Matrix<double,2,1>>::push_back(void *a1, __n128 *a2)
{
  v4 = a1[1];
  v5 = ((v4 - *a1) >> 4) + 1;
  if (a1[3] < v5)
  {
    geo::small_vector_base<gm::Matrix<double,2,1>>::grow(a1, v5);
    v4 = a1[1];
  }

  result = *a2;
  *v4 = *a2;
  a1[1] += 16;
  return result;
}

void geo::small_vector_base<gm::Matrix<double,2,1>>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
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

  v10 = malloc_type_malloc(16 * v9, 0x1000040451B5BE8uLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      v15 = *v12++;
      *v14++ = v15;
    }

    while (v12 != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = v11 + v4 - v3;
  *(a1 + 24) = v9;
}

uint64_t geo::containsPoint<float>(uint64_t a1, uint64_t a2, float *a3)
{
  v3 = a2 - a1;
  if (a2 == a1)
  {
    v31 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 3;
    v8 = *a3;
    v7 = a3[1];
    if ((v3 >> 3) <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v3 >> 3;
    }

    v10 = 1;
    do
    {
      v11 = 0;
      v12 = (a1 + 8 * v5++);
      v13 = 1;
      do
      {
        v14 = v12[v11];
        v15 = a3[v11];
        v16 = vabds_f32(v14, v15);
        v17 = v16 <= (fabsf(v15 + v14) * 0.000011921) || v16 <= 1.1755e-38;
        if ((v13 & 1) == 0)
        {
          break;
        }

        v13 = 0;
        v11 = 1;
      }

      while (v17);
      v18 = v5 == v6 ? 0 : v5;
      if (v17)
      {
        break;
      }

      v19 = (a1 + 8 * v18);
      v20 = v12[1];
      v21 = v19[1];
      if (v20 == v21 && v20 == v7)
      {
        v23 = *v19;
        if (*v12 <= v8 && v23 >= v8)
        {
          break;
        }

        if (v23 <= v8 && *v12 >= v8)
        {
          break;
        }
      }

      v26 = v20 > v7 || v21 <= v7;
      if (!v26 || (v21 <= v7 ? (v27 = v20 <= v7) : (v27 = 1), !v27))
      {
        v28 = *v12;
        if (*v12 != *v19)
        {
          v28 = (((*v19 - v28) * (v7 - v20)) / (v21 - v20)) + v28;
        }

        v29 = vabds_f32(v8, v28);
        if (v29 <= (fabsf(v8 + v28) * 0.000011921) || v29 < 1.1755e-38)
        {
          break;
        }

        if (v28 < v8)
        {
          ++v4;
        }
      }

      v10 = v5 < v6;
    }

    while (v5 != v9);
    v31 = v10 | v4;
  }

  return v31 & 1;
}

uint64_t gm::LineSegment<float,2>::intersects<float,void>(float32x2_t *a1, float32x2_t a2, double a3)
{
  v4 = a1[1].f32[0];
  v3 = a1[1].f32[1];
  v5 = -(vmuls_lane_f32(v4, *&a3, 1) - (v3 * *&a3));
  if (v5 == 0.0)
  {
    v11 = 0;
  }

  else
  {
    v6 = vsub_f32(vadd_f32(a2, *&a3), *a1);
    v7 = vmul_f32(v6, vrev64_s32(*&a3));
    *v8.f32 = vdup_lane_s32(vsub_f32(vdup_lane_s32(v7, 1), v7), 0);
    v8.f32[0] = -(vmuls_lane_f32(v4, v6, 1) - (v6.f32[0] * v3));
    v8.i64[1] = v8.i64[0];
    v9 = vmulq_n_f32(v8, 1.0 / v5);
    v10.i32[0] = vmovn_s32(vcgeq_f32(xmmword_1B33B09C0, v9)).u32[0];
    v10.i32[1] = vmovn_s32(vcgeq_f32(v9, xmmword_1B33B09C0)).i32[1];
    v11 = vminv_u16(vcltz_s16(vshl_n_s16(v10, 0xFuLL)));
  }

  return v11 & 1;
}

uint64_t std::__shared_ptr_pointer<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo> *,std::shared_ptr<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>>::__shared_ptr_default_delete<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>,ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>>,std::allocator<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo> *,std::shared_ptr<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>>::__shared_ptr_default_delete<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>,ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>>,std::allocator<ggl::VertexDataTyped<ggl::DaVinci::ElevatedFillVbo>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<std::shared_ptr<ggl::PolylineOverlayRibbon::ElevatedMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::PolylineOverlayRibbon::BakedWidthMesh,ggl::PolylineOverlayRibbon::ElevatedMesh,RibbonOverlayTriangleAccessor,StrokeTriangle>(md::FoundationMesh const&,ggl::PolylineOverlayRibbon::BakedWidthMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<std::shared_ptr<ggl::PolylineOverlayRibbon::ElevatedMesh> anonymous namespace::intersectMeshWithoutPolygon<ggl::PolylineOverlayRibbon::BakedWidthMesh,ggl::PolylineOverlayRibbon::ElevatedMesh,RibbonOverlayTriangleAccessor,StrokeTriangle>(md::FoundationMesh const&,ggl::PolylineOverlayRibbon::BakedWidthMesh const&,ggl::Loader *,gdc::PolygonIntersectionDebugStats &)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 24);
  v5 = (*(*(v4 + 96) + 48) - *(*(v4 + 96) + 40)) / *(*(v4 + 96) + 8);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v109, **(v4 + 64), 0, (*(**(v4 + 64) + 48) - *(**(v4 + 64) + 40)) / *(**(v4 + 64) + 8), 0, *a2);
  v110 = v109[5];
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v111, *(v4 + 96), 0, v5, 0, 1, v3);
  v112 = v111[5];
  v113 = v5 / 3;
  v6 = *(a1 + 8);
  v7 = *(v6[12] + 216);
  if (v7 != 1)
  {
    if (v7)
    {
      goto LABEL_102;
    }

    VertexData_Reader<TempFoundationTriangleAccessor,unsigned short>::VertexData_Reader(v104, v6, v6[18], v6[19], v3);
    v8 = *(a1 + 40);
    v9 = **(a1 + 32);
    v11 = *v8;
    v10 = v8[1];
    v92 = **(a1 + 48);
    v88 = *(a1 + 8);
    v96 = *(a1 + 16);
    v98 = *(a1 + 56);
    *(v98 + 8) = 0;
    *v98 = 0;
    if (!v108 || !v113)
    {
      goto LABEL_101;
    }

    v147[0].n128_u8[0] = 0;
    v86 = v113;
    std::vector<BOOL>::vector(__p, v113, v147);
    v12 = 0;
    v13 = v86;
    while (1)
    {
      v14 = __p[0];
      v15 = v12 >> 6;
      v16 = 1 << v12;
      if ((*(__p[0] + (v12 >> 6)) & (1 << v12)) == 0)
      {
        v17 = (v112 + 6 * v12);
        v18 = (v110 + 16 * v17[1]);
        v19 = (v110 + 16 * v17[2]);
        v142 = (v110 + 16 * *v17);
        v143 = v18;
        v144 = v19;
        v20 = vmul_f32(vsub_f32(*v142, *v19), vrev64_s32(vsub_f32(*v18, *v19)));
        *v20.i32 = vsub_f32(v20, vdup_lane_s32(v20, 1)).f32[0];
        v145 = *v20.i32;
        if (*v20.i32 != 0.0)
        {
          v90 = v12;
          if (gdc::_triangleIntersectsBox<gdc::Triangle<RibbonOverlayTriangleAccessor>,float>(&v142, v88 + 184))
          {
            v100 = v108;
            if (v108)
            {
              v21 = 0;
              v22 = 0;
              while (1)
              {
                v23 = (v105 + 16 * *(v107 + v21 + 2));
                v24 = *(v107 + v21 + 4);
                *&v139 = v105 + 16 * *(v107 + v21);
                *(&v139 + 1) = v23;
                *&v140 = v105 + 16 * v24;
                *(&v140 + 1) = (((*(v140 + 4) - *(v139 + 4)) * (*v23 - *v140)) + ((*v139 - *v140) * (v23[1] - *(v140 + 4))));
                v147[0].n128_u64[0] = &v139;
                v147[0].n128_u64[1] = &v142;
                v148 = 0;
                v149 = 0;
                if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>>::compute(v147))
                {
                  break;
                }

                ++v22;
                v21 += 6;
                if (v100 == v22)
                {
                  v14 = __p[0];
                  goto LABEL_14;
                }
              }

              ++*(v98 + 4);
              v140 = 0u;
              v141 = 0u;
              v139 = 0u;
              v147[0].n128_u64[0] = v90;
              v147[0].n128_u64[1] = v22;
              std::deque<gdc::TrianglePair>::push_back(&v139, v147);
              while (*(&v141 + 1))
              {
                *v138 = *(*(*(&v139 + 1) + ((v141 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v141);
                --*(&v141 + 1);
                *&v141 = v141 + 1;
                if (v141 >= 0x200)
                {
                  operator delete(**(&v139 + 1));
                  *(&v139 + 1) += 8;
                  *&v141 = v141 - 256;
                }

                v136 = 0u;
                v137 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v134 = 1065353216;
                std::deque<unsigned long>::push_back(&v135, &v138[2]);
                std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, *&v138[2], &v138[2]);
                v94 = *v138;
                gdc::_overlayNeighborsNoDegenerates<VertexData_Reader<RibbonOverlayTriangleAccessor,unsigned short>>(&v129, v109, v92, v138[0], __p);
                v126 = 0u;
                v127 = 0u;
                v128 = 1065353216;
                v25 = *(&v137 + 1);
                if (*(&v137 + 1))
                {
                  v101 = 6 * v94;
                  do
                  {
                    v26 = *(*(*(&v135 + 1) + ((v137 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v137 & 0x1FF));
                    *(&v137 + 1) = v25 - 1;
                    *&v137 = v137 + 1;
                    if (v137 >= 0x400)
                    {
                      operator delete(**(&v135 + 1));
                      *(&v135 + 1) += 8;
                      *&v137 = v137 - 512;
                    }

                    v27 = (v110 + 16 * *(v112 + v101 + 2));
                    v28 = (v110 + 16 * *(v112 + v101 + 4));
                    v122 = (v110 + 16 * *(v112 + 6 * v94));
                    v123 = v27;
                    v124 = v28;
                    v125 = (((v28[1] - v122[1]) * (*v27 - *v28)) + ((*v122 - *v28) * (v27[1] - v28[1])));
                    v29 = (v107 + 6 * v26);
                    v30 = (v105 + 16 * v29[1]);
                    v31 = (v105 + 16 * v29[2]);
                    v118 = (v105 + 16 * *v29);
                    v119 = v30;
                    v120 = v31;
                    v121 = (((v31[1] - v118[1]) * (*v30 - *v31)) + ((*v118 - *v31) * (v30[1] - v31[1])));
                    v32 = gdc::clipFoundationAgainstOverlayTriangle<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>,VertexData_Writer<StrokeTriangle>>(&v118, &v122, v96);
                    ++*v98;
                    if (v32)
                    {
                      v33 = v129;
                      if (v129 != v130)
                      {
                        do
                        {
                          v34 = *v33;
                          v35 = (v112 + 6 * v34);
                          v36 = (v110 + 16 * *v35);
                          v37 = (v110 + 16 * v35[1]);
                          v38 = v35[2];
                          v114 = v36;
                          v115 = v37;
                          v116 = (v110 + 16 * v38);
                          v117 = (((v116[1] - v36[1]) * (*v37 - *v116)) + ((*v36 - *v116) * (v37[1] - v116[1])));
                          v147[0].n128_u64[0] = &v118;
                          v147[0].n128_u64[1] = &v114;
                          v148 = 0;
                          v149 = 0;
                          if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>>::compute(v147))
                          {
                            v147[0].n128_u64[0] = v34;
                            v147[0].n128_u64[1] = v26;
                            std::deque<gdc::TrianglePair>::push_back(&v139, v147);
                            v39 = v130;
                            if (v33 + 1 != v130)
                            {
                              memmove(v33, v33 + 1, ((v130 - v33) & 0xFFFFFFFFFFFFFFFCLL) - 4);
                            }

                            v40 = v39 - 1;
                            v130 = v39 - 1;
                          }

                          else
                          {
                            ++v33;
                            v40 = v130;
                          }
                        }

                        while (v33 != v40);
                      }

                      v41 = gdc::TriangularDCEL::outerComponent(v9, v26 + v11);
                      v42 = v41;
                      v43 = v41;
                      do
                      {
                        v44 = gdc::TriangularDCEL::twin(v9, v43);
                        v45 = gdc::TriangularDCEL::incidentFace(v9, v44);
                        if (v45 != 0x3FFFFFFF)
                        {
                          v46 = v45;
                          if (v45 <= (((*(v9 + 10) - *(v9 + 9)) >> 2) / 3uLL) && !gdc::TriangularDCEL::_isBadFace(v9, v45) && v46 >= v11 && v46 < v10)
                          {
                            v147[0].n128_u64[0] = v46 - v11;
                            if (!std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(&v132, v147[0].n128_u64[0]))
                            {
                              std::deque<unsigned long>::push_back(&v135, v147);
                              std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, v46 - v11, v147);
                            }
                          }
                        }

                        v43 = gdc::TriangularDCEL::next(v9, v43);
                      }

                      while (v43 != v42);
                    }

                    v25 = *(&v137 + 1);
                  }

                  while (*(&v137 + 1));
                }

                *(__p[0] + ((v94 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v94;
                std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v126);
                if (v129 != v131)
                {
                  free(v129);
                }

                std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v132);
                std::deque<unsigned long>::~deque[abi:nn200100](&v135);
              }

              std::deque<gdc::TrianglePair>::~deque[abi:nn200100](&v139);
              goto LABEL_18;
            }

LABEL_14:
            ++*(v98 + 4);
          }

          else
          {
            ++*(v98 + 8);
          }

          v14[v15] |= v16;
LABEL_18:
          v13 = v86;
          v12 = v90;
          goto LABEL_19;
        }

        *(__p[0] + v15) |= v16;
      }

LABEL_19:
      if (++v12 == v13)
      {
        goto LABEL_99;
      }
    }
  }

  VertexData_Reader<TempFoundationTriangleAccessor,unsigned int>::VertexData_Reader(v104, v6, v6[18], v6[19], v3);
  v47 = *(a1 + 40);
  v48 = **(a1 + 32);
  v50 = *v47;
  v49 = v47[1];
  v93 = **(a1 + 48);
  v89 = *(a1 + 8);
  v97 = *(a1 + 16);
  v99 = *(a1 + 56);
  *(v99 + 8) = 0;
  *v99 = 0;
  if (!v108 || !v113)
  {
    goto LABEL_101;
  }

  v147[0].n128_u8[0] = 0;
  v87 = v113;
  std::vector<BOOL>::vector(__p, v113, v147);
  v51 = 0;
  v52 = v87;
  do
  {
    v53 = __p[0];
    v54 = v51 >> 6;
    v55 = 1 << v51;
    if ((*(__p[0] + (v51 >> 6)) & (1 << v51)) != 0)
    {
      goto LABEL_67;
    }

    v56 = (v112 + 6 * v51);
    v57 = (v110 + 16 * v56[1]);
    v58 = (v110 + 16 * v56[2]);
    v142 = (v110 + 16 * *v56);
    v143 = v57;
    v144 = v58;
    v59 = vmul_f32(vsub_f32(*v142, *v58), vrev64_s32(vsub_f32(*v57, *v58)));
    *v59.i32 = vsub_f32(v59, vdup_lane_s32(v59, 1)).f32[0];
    v145 = *v59.i32;
    if (*v59.i32 == 0.0)
    {
      *(__p[0] + v54) |= v55;
      goto LABEL_67;
    }

    v91 = v51;
    if (gdc::_triangleIntersectsBox<gdc::Triangle<RibbonOverlayTriangleAccessor>,float>(&v142, v89 + 184))
    {
      v102 = v108;
      if (v108)
      {
        v60 = 0;
        v61 = 0;
        while (1)
        {
          v62 = (v105 + 16 * *(v107 + v60 + 4));
          v63 = *(v107 + v60 + 8);
          *&v139 = v105 + 16 * *(v107 + v60);
          *(&v139 + 1) = v62;
          *&v140 = v105 + 16 * v63;
          *(&v140 + 1) = (((*(v140 + 4) - *(v139 + 4)) * (*v62 - *v140)) + ((*v139 - *v140) * (v62[1] - *(v140 + 4))));
          v147[0].n128_u64[0] = &v139;
          v147[0].n128_u64[1] = &v142;
          v148 = 0;
          v149 = 0;
          if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>>::compute(v147))
          {
            break;
          }

          ++v61;
          v60 += 12;
          if (v102 == v61)
          {
            v53 = __p[0];
            goto LABEL_62;
          }
        }

        ++*(v99 + 4);
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        v147[0].n128_u64[0] = v91;
        v147[0].n128_u64[1] = v61;
        std::deque<gdc::TrianglePair>::push_back(&v139, v147);
        while (*(&v141 + 1))
        {
          *v138 = *(*(*(&v139 + 1) + ((v141 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v141);
          --*(&v141 + 1);
          *&v141 = v141 + 1;
          if (v141 >= 0x200)
          {
            operator delete(**(&v139 + 1));
            *(&v139 + 1) += 8;
            *&v141 = v141 - 256;
          }

          v136 = 0u;
          v137 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v134 = 1065353216;
          std::deque<unsigned long>::push_back(&v135, &v138[2]);
          std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, *&v138[2], &v138[2]);
          v95 = *v138;
          gdc::_overlayNeighborsNoDegenerates<VertexData_Reader<RibbonOverlayTriangleAccessor,unsigned short>>(&v129, v109, v93, v138[0], __p);
          v126 = 0u;
          v127 = 0u;
          v128 = 1065353216;
          v64 = *(&v137 + 1);
          if (*(&v137 + 1))
          {
            v103 = 6 * v95;
            do
            {
              v65 = *(*(*(&v135 + 1) + ((v137 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v137 & 0x1FF));
              *(&v137 + 1) = v64 - 1;
              *&v137 = v137 + 1;
              if (v137 >= 0x400)
              {
                operator delete(**(&v135 + 1));
                *(&v135 + 1) += 8;
                *&v137 = v137 - 512;
              }

              v66 = (v110 + 16 * *(v112 + v103 + 2));
              v67 = (v110 + 16 * *(v112 + v103 + 4));
              v122 = (v110 + 16 * *(v112 + 6 * v95));
              v123 = v66;
              v124 = v67;
              v125 = (((v67[1] - v122[1]) * (*v66 - *v67)) + ((*v122 - *v67) * (v66[1] - v67[1])));
              v68 = (v107 + 12 * v65);
              v69 = (v105 + 16 * v68[1]);
              v70 = (v105 + 16 * v68[2]);
              v118 = (v105 + 16 * *v68);
              v119 = v69;
              v120 = v70;
              v121 = (((v70[1] - v118[1]) * (*v69 - *v70)) + ((*v118 - *v70) * (v69[1] - v70[1])));
              v71 = gdc::clipFoundationAgainstOverlayTriangle<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>,VertexData_Writer<StrokeTriangle>>(&v118, &v122, v97);
              ++*v99;
              if (v71)
              {
                v72 = v129;
                if (v129 != v130)
                {
                  do
                  {
                    v73 = *v72;
                    v74 = (v112 + 6 * v73);
                    v75 = (v110 + 16 * *v74);
                    v76 = (v110 + 16 * v74[1]);
                    v77 = v74[2];
                    v114 = v75;
                    v115 = v76;
                    v116 = (v110 + 16 * v77);
                    v117 = (((v116[1] - v75[1]) * (*v76 - *v116)) + ((*v75 - *v116) * (v76[1] - v116[1])));
                    v147[0].n128_u64[0] = &v118;
                    v147[0].n128_u64[1] = &v114;
                    v148 = 0;
                    v149 = 0;
                    if (gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>>::compute(v147))
                    {
                      v147[0].n128_u64[0] = v73;
                      v147[0].n128_u64[1] = v65;
                      std::deque<gdc::TrianglePair>::push_back(&v139, v147);
                      v78 = v130;
                      if (v72 + 1 != v130)
                      {
                        memmove(v72, v72 + 1, ((v130 - v72) & 0xFFFFFFFFFFFFFFFCLL) - 4);
                      }

                      v79 = v78 - 1;
                      v130 = v78 - 1;
                    }

                    else
                    {
                      ++v72;
                      v79 = v130;
                    }
                  }

                  while (v72 != v79);
                }

                v80 = gdc::TriangularDCEL::outerComponent(v48, v65 + v50);
                v81 = v80;
                v82 = v80;
                do
                {
                  v83 = gdc::TriangularDCEL::twin(v48, v82);
                  v84 = gdc::TriangularDCEL::incidentFace(v48, v83);
                  if (v84 != 0x3FFFFFFF)
                  {
                    v85 = v84;
                    if (v84 <= (((*(v48 + 10) - *(v48 + 9)) >> 2) / 3uLL) && !gdc::TriangularDCEL::_isBadFace(v48, v84) && v85 >= v50 && v85 < v49)
                    {
                      v147[0].n128_u64[0] = v85 - v50;
                      if (!std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(&v132, v147[0].n128_u64[0]))
                      {
                        std::deque<unsigned long>::push_back(&v135, v147);
                        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v132, v85 - v50, v147);
                      }
                    }
                  }

                  v82 = gdc::TriangularDCEL::next(v48, v82);
                }

                while (v82 != v81);
              }

              v64 = *(&v137 + 1);
            }

            while (*(&v137 + 1));
          }

          *(__p[0] + ((v95 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v95;
          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v126);
          if (v129 != v131)
          {
            free(v129);
          }

          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v132);
          std::deque<unsigned long>::~deque[abi:nn200100](&v135);
        }

        std::deque<gdc::TrianglePair>::~deque[abi:nn200100](&v139);
        goto LABEL_66;
      }

LABEL_62:
      ++*(v99 + 4);
    }

    else
    {
      ++*(v99 + 8);
    }

    v53[v54] |= v55;
LABEL_66:
    v52 = v87;
    v51 = v91;
LABEL_67:
    ++v51;
  }

  while (v51 != v52);
LABEL_99:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

LABEL_101:
  ggl::BufferMemory::~BufferMemory(&v106);
  ggl::BufferMemory::~BufferMemory(v104);
LABEL_102:
  ggl::BufferMemory::~BufferMemory(v111);
  ggl::BufferMemory::~BufferMemory(v109);
}

void sub_1B2E90BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  ggl::BufferMemory::~BufferMemory(&a24);
  ggl::BufferMemory::~BufferMemory(&a17);
  ggl::BufferMemory::~BufferMemory(&a39);
  ggl::BufferMemory::~BufferMemory(&a32);
  _Unwind_Resume(a1);
}

BOOL gdc::_triangleIntersectsBox<gdc::Triangle<RibbonOverlayTriangleAccessor>,float>(uint64_t **a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1[1];
  v4 = &v21;
  v21 = **a1;
  v22 = v21;
  v5 = 1;
  do
  {
    v6 = *(v3 + v2);
    v7 = v5;
    *v4 = fminf(v6, *v4);
    *(&v22 + v2) = fmaxf(*(&v22 + v2), v6);
    v4 = &v21 + 1;
    v2 = 1;
    v5 = 0;
  }

  while ((v7 & 1) != 0);
  v8 = 0;
  v9 = a1[2];
  v10 = &v21;
  v11 = 1;
  do
  {
    v12 = *(v9 + v8);
    v13 = v11;
    *v10 = fminf(v12, *v10);
    *(&v22 + v8) = fmaxf(*(&v22 + v8), v12);
    v10 = &v21 + 1;
    v8 = 1;
    v11 = 0;
  }

  while ((v13 & 1) != 0);
  v14 = 0;
  v15 = 0;
  v16 = &v21;
  while (*(a2 + 8 + 4 * v15) > *v16)
  {
    v17 = *(a2 + 4 * v15);
    v18 = *(&v22 + v15);
    v15 = 1;
    v19 = (v17 < v18) & ~v14;
    v14 = 1;
    v16 = &v21 + 1;
    if ((v19 & 1) == 0)
    {
      return v17 < v18;
    }
  }

  return 0;
}

__n128 std::deque<gdc::TrianglePair>::push_back(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x100)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v12);
    }

    a1[4] = v7 - 256;
    v14 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(a1, &v14);
    v5 = a1[1];
    v8 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  ++a1[5];
  return result;
}

void sub_1B2E91278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void std::deque<unsigned long>::push_back(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x200)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(v12);
    }

    a1[4] = v7 - 512;
    v13 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, &v13);
    v5 = a1[1];
    v8 = a1[5] + a1[4];
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++a1[5];
}

void sub_1B2E91770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

const gdc::TriangularDCEL::HalfEdge *gdc::_overlayNeighborsNoDegenerates<VertexData_Reader<RibbonOverlayTriangleAccessor,unsigned short>>(int **a1, uint64_t a2, gdc::TriangularDCEL *this, unsigned int a4, void *a5)
{
  *a1 = (a1 + 4);
  a1[1] = (a1 + 4);
  a1[2] = (a1 + 4);
  a1[3] = 3;
  v7 = gdc::TriangularDCEL::outerComponent(this, a4);
  v8 = v7;
  v9 = v7;
  v28 = a5;
  do
  {
    v10 = gdc::TriangularDCEL::twin(this, v9);
    v11 = gdc::TriangularDCEL::incidentFace(this, v10);
    v34 = v11;
    if (v11 != 0x3FFFFFFF)
    {
      v12 = v11;
      v13 = ((*(this + 10) - *(this + 9)) >> 2) / 3uLL;
      if (v11 <= v13 && !gdc::TriangularDCEL::_isBadFace(this, v11))
      {
        v14 = *a5;
        if (((*(*a5 + ((v12 >> 3) & 0x1FFFFFF8)) >> v12) & 1) == 0)
        {
          v15 = *(a2 + 48);
          v31 = *(a2 + 104);
          v16 = (v31 + 6 * v12);
          v17 = *(v15 + 16 * v16[2]);
          v18 = vmul_f32(vsub_f32(*(v15 + 16 * *v16), v17), vrev64_s32(vsub_f32(*(v15 + 16 * v16[1]), v17)));
          if (vmvn_s8(vceq_f32(v18, vdup_lane_s32(v18, 1))).u8[0])
          {
            geo::small_vector_base<unsigned int>::push_back(a1, &v34);
          }

          else
          {
            LOBYTE(v32) = 0;
            v33 = 0;
            v19 = gdc::TriangularDCEL::next(this, v10);
            while (1)
            {
              v20 = gdc::TriangularDCEL::twin(this, v19);
              v21 = gdc::TriangularDCEL::incidentFace(this, v20);
              if (v21 != 0x3FFFFFFF && v21 <= v13)
              {
                v23 = v21;
                if (!gdc::TriangularDCEL::_isBadFace(this, v21) && ((*(v14 + ((v23 >> 3) & 0x1FFFFFF8)) >> v23) & 1) == 0)
                {
                  v24 = (v31 + 6 * v23);
                  v25 = *(v15 + 16 * v24[2]);
                  v26 = vmul_f32(vsub_f32(*(v15 + 16 * *v24), v25), vrev64_s32(vsub_f32(*(v15 + 16 * v24[1]), v25)));
                  if (vmvn_s8(vceq_f32(v26, vdup_lane_s32(v26, 1))).u8[0])
                  {
                    break;
                  }
                }
              }

              v19 = gdc::TriangularDCEL::next(this, v19);
              if (v19 == v10)
              {
                goto LABEL_17;
              }
            }

            v32 = v23;
            v33 = 1;
            geo::small_vector_base<unsigned int>::push_back(a1, &v32);
LABEL_17:
            a5 = v28;
          }
        }
      }
    }

    result = gdc::TriangularDCEL::next(this, v9);
    v9 = result;
  }

  while (result != v8);
  return result;
}

void sub_1B2E91A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*a10 != *(a10 + 16))
  {
    free(*a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::clipFoundationAgainstOverlayTriangle<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>,VertexData_Writer<StrokeTriangle>>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v81 = a1;
  v82 = a2;
  v83 = 0;
  v84 = 0;
  v72 = gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>>::compute(&v81);
  if (v72)
  {
    if (v72 >= 4)
    {
      v4 = 4;
    }

    else
    {
      v4 = v72;
    }

    v5 = *(a3 + 216);
    v6 = v5 + (3 * v4);
    if (v6 > *(a3 + 208))
    {
      v7 = v6 > 1;
      v8 = (1 << -__clz(v6 - 1));
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 1;
      }

      *(a3 + 208) = v9;
      ggl::BufferData::resize(*(a3 + 192), v9);
      v5 = *(a3 + 216);
    }

    v10 = a3;
    do
    {
      v11 = *(a3 + 192);
      ggl::BufferMemory::BufferMemory(v86);
      ggl::ResourceAccessor::accessIndexData(v87, 0, v11, v5, v5 + 3, 1, 0);
      ggl::BufferMemory::operator=(v86, v87);
      ggl::BufferMemory::~BufferMemory(v87);
      ggl::BufferMemory::operator=(v10, v86);
      ggl::BufferMemory::~BufferMemory(v86);
      v5 = *(a3 + 216) + 3;
      *(a3 + 216) = v5;
      v10 += 48;
      --v4;
    }

    while (v4);
    v14 = v84;
    if (v84)
    {
      v15 = *v81;
      v16 = v81[1];
      v17 = *v82;
      v18 = v82[1];
      v73 = v81[2];
      v74 = v82;
      v19 = v82[2];
      v20 = *v73;
      v21 = (a3 + 40);
      v22 = &v85;
      do
      {
        v79 = *(v22 - 8);
        v23 = *(v22 - 6);
        v24 = *v15;
        v25 = *(v15 + 4);
        v26 = *v16;
        v27 = *(v16 + 4);
        LODWORD(v12) = v25;
        v13.i32[0] = v27;
        v28 = FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(v79, v23, *v15, *&v12, *v16, v13, v20);
        v29 = *v21;
        **v21 = v28;
        v76 = *(v22 - 5);
        v30 = *(v22 - 3);
        v31.i32[0] = v25;
        v32.i32[0] = v27;
        *(v29 + 4) = FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(v76, v30, v24, v31, v26, v32, v20);
        v75 = *(v22 - 2);
        v33 = *v22;
        v34.i32[0] = v25;
        v35.i32[0] = v27;
        *(v29 + 8) = FillTriangle::valueFromBarycentricCoordinates<-1,gm::Matrix<unsigned short,2,1>,gm::Matrix<float,2,1>>(v75, *v22, v24, v34, v26, v35, v20);
        _V2.D[1] = v79.i64[1];
        _D1 = *(v16 + 8);
        __asm { FMLA            D0, D1, V2.D[1] }

        *&_D0 = _D0 + v23 * v73[1].f32[0];
        *(v29 + 3) = LODWORD(_D0);
        _V2.D[1] = v75.i64[1];
        _V7.D[1] = v76.i64[1];
        _D1 = *(v16 + 8);
        __asm { FMLA            D0, D1, V7.D[1] }

        *&_D0 = _D0 + v30 * v73[1].f32[0];
        *(v29 + 7) = LODWORD(_D0);
        _D1 = *(v16 + 8);
        __asm { FMLA            D0, D1, V2.D[1] }

        *&_D0 = _D0 + v33 * v73[1].f32[0];
        *(v29 + 11) = LODWORD(_D0);
        v49.i32[0] = *v15;
        v50.i32[0] = *v16;
        v50.i32[1] = *(v15 + 4);
        v49.i32[1] = *(v16 + 4);
        v78 = vcvtq_f64_f32(v49);
        v80 = vcvtq_f64_f32(v50);
        v20 = *v73;
        v77 = vcvtq_f64_f32(*v73);
        v51 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_f64(vmulq_f64(vextq_s8(*(v22 - 8), *(v22 - 8), 8uLL), v80), v78, *(v22 - 8)), v77, *(v22 - 6)));
        v87[0] = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v74, v51.f32[0], v51.f32[1]);
        v87[1] = v52;
        v87[2] = v53;
        v54 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_f64(vmulq_f64(vextq_s8(*(v22 - 5), *(v22 - 5), 8uLL), v80), v78, *(v22 - 5)), v77, *(v22 - 3)));
        v86[0] = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v74, v54.f32[0], v54.f32[1]);
        v86[1] = v55;
        v86[2] = v56;
        v57 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_f64(vmulq_f64(vextq_s8(*(v22 - 2), *(v22 - 2), 8uLL), v80), v78, *(v22 - 2)), v77, *v22));
        v88[0] = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v74, v57.f32[0], v57.f32[1]);
        v88[1] = v58;
        v88[2] = v59;
        v60 = StrokeTriangle::valueFromBarycentricCoordinates<1,gm::Matrix<short,2,1>,gm::Matrix<short,2,1>>(v87, *(v17 + 8), *(v17 + 10), *(v18 + 8), *(v18 + 10), *(v19 + 8), *(v19 + 10));
        v61 = *v21;
        *(*v21 + 1) = v60;
        *(v61 + 5) = StrokeTriangle::valueFromBarycentricCoordinates<1,gm::Matrix<short,2,1>,gm::Matrix<short,2,1>>(v86, *(v17 + 8), *(v17 + 10), *(v18 + 8), *(v18 + 10), *(v19 + 8), *(v19 + 10));
        v62 = StrokeTriangle::valueFromBarycentricCoordinates<1,gm::Matrix<short,2,1>,gm::Matrix<short,2,1>>(v88, *(v17 + 8), *(v17 + 10), *(v18 + 8), *(v18 + 10), *(v19 + 8), *(v19 + 10));
        v63 = *v61;
        v64 = (v61[8] - v63);
        v65 = v61[1];
        v66 = (v61[9] - v65);
        *(v61 + 9) = v62;
        v67 = v61[16];
        v68 = (v67 - v63);
        v69 = v61[17];
        v12 = (v69 - v65);
        if (v12 * v64 < v68 * v66)
        {
          v70 = *(v61 + 4);
          v61[8] = v67;
          v61[9] = v69;
          *(v61 + 8) = v70;
        }

        v21 += 6;
        v22 += 9;
        --v14;
      }

      while (v14);
    }
  }

  return v72;
}

uint64_t gdc::TriangleIntersection<gdc::Triangle<TempFoundationTriangleAccessor>,gdc::Triangle<RibbonOverlayTriangleAccessor>>::compute(uint64_t a1)
{
  v129[12] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*(*a1 + 24) == 0.0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (*(v3 + 24) == 0.0)
  {
    return 0;
  }

  else
  {
    *(a1 + 178) = 0;
    v4 = *v3;
    v5 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v1, **v3, *(*v3 + 4));
    v7 = v6;
    v9 = v8;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v8;
    v10 = *(v3 + 8);
    v11 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v1, v10->f32[0], v10->f32[1]);
    v13 = v12;
    v15 = v14;
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v14;
    v16 = *(v3 + 16);
    v17 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v1, v16->f32[0], v16->f32[1]);
    v20 = 0;
    *(a1 + 64) = v17;
    *(a1 + 72) = v18;
    *(a1 + 80) = v19;
    if (v5 >= 0.0 && v5 <= 1.0)
    {
      v20 = v7 >= 0.0 && v7 <= 1.0 && v9 >= 0.0 && v9 <= 1.0;
    }

    v22 = *(a1 + 177) | v20;
    if (v11 >= 0.0 && v11 <= 1.0)
    {
      v24 = 0;
      v26 = v13 >= 0.0 && v13 <= 1.0;
      if (v26 && v15 >= 0.0)
      {
        v24 = 2 * (v15 <= 1.0);
      }
    }

    else
    {
      v24 = 0;
    }

    v27 = v24 | v22;
    if (v17 >= 0.0 && v17 <= 1.0)
    {
      v29 = 0;
      v30 = v18 >= 0.0 && v18 <= 1.0;
      if (v30 && v19 >= 0.0)
      {
        v29 = 4 * (v19 <= 1.0);
      }
    }

    else
    {
      v29 = 0;
    }

    *(a1 + 177) = v29 | v27;
    v31 = *v1;
    v32 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v3, **v1, *(*v1 + 4));
    v34 = v33;
    v36 = v35;
    *(a1 + 104) = v32;
    *(a1 + 112) = v33;
    *(a1 + 120) = v35;
    v37 = *(v1 + 8);
    v38 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v3, v37->f32[0], v37->f32[1]);
    v40 = v39;
    v42 = v41;
    *(a1 + 128) = v38;
    *(a1 + 136) = v39;
    *(a1 + 144) = v41;
    v43 = *(v1 + 16);
    v44 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v3, v43->f32[0], v43->f32[1]);
    v47 = 0;
    *(a1 + 152) = v44;
    *(a1 + 160) = v45;
    *(a1 + 168) = v46;
    if (v32 >= 0.0 && v32 <= 1.0)
    {
      v47 = v34 >= 0.0 && v34 <= 1.0 && v36 >= 0.0 && v36 <= 1.0;
    }

    v48 = 0;
    if (v38 >= 0.0 && v38 <= 1.0)
    {
      v48 = 0;
      if (v40 >= 0.0 && v40 <= 1.0 && v42 >= 0.0)
      {
        v48 = 2 * (v42 <= 1.0);
      }
    }

    v49 = 0;
    if (v44 >= 0.0 && v44 <= 1.0)
    {
      v49 = 0;
      if (v45 >= 0.0 && v45 <= 1.0 && v46 >= 0.0)
      {
        v49 = 4 * (v46 <= 1.0);
      }
    }

    *(a1 + 176) |= v49 | v48 | v47;
    v123 = vcvtq_f64_f32(*v31);
    v50 = vcvtq_f64_f32(*v37);
    v124 = v50;
    v51 = vcvtq_f64_f32(*v43);
    v125 = v51;
    v52 = vcvtq_f64_f32(*v4);
    v53 = vcvtq_f64_f32(*v10);
    v120 = v52;
    v121 = v53;
    v54 = vcvtq_f64_f32(*v16);
    v122 = v54;
    v55 = vsubq_f64(v51, v123);
    v56 = vmulq_f64(vextq_s8(v55, v55, 8uLL), vsubq_f64(v50, v123));
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v56, 1), v56)).u8[0])
    {
      v124 = v51;
      v125 = v50;
    }

    v57 = vsubq_f64(v53, v52);
    v58 = vsubq_f64(v54, v52);
    v59 = vmulq_f64(v57, vextq_s8(v58, v58, 8uLL));
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v59, 1), v59)).u8[0])
    {
      v121 = v54;
      v122 = v53;
    }

    v116 = v118;
    v117 = 6;
    v114 = v118;
    v115 = v118;
    *&buf = v129;
    *(&buf + 1) = v129;
    v127 = v129;
    v128 = 6;
    geo::small_vector_base<gm::Matrix<double,2,1>>::insert<gm::Matrix<double,2,1>*>(&buf, v129, &v123, &buf);
    v60 = 0;
    v61 = &v114;
    p_buf = &buf;
    do
    {
      v63 = p_buf;
      v64 = v60 + 1;
      if (v60 == 2)
      {
        v65 = 0;
      }

      else
      {
        v65 = v60 + 1;
      }

      if (v60)
      {
        p_buf = v61;
      }

      v66 = (v61 + 1);
      if (v60)
      {
        v61 = v63;
      }

      v67 = (v63 + 1);
      if (v60)
      {
        v68 = v67;
      }

      else
      {
        v68 = v66;
      }

      v61[1] = *v61;
      if (v60)
      {
        v69 = v66;
      }

      else
      {
        v69 = v67;
      }

      v70 = *p_buf;
      v71 = p_buf[1];
      v72 = v71 - *p_buf;
      if (v71 != *p_buf)
      {
        v73 = 0;
        v74 = *(&v120 + v60);
        v75 = v72 >> 4;
        v109 = vsubq_f64(*(&v120 + v65), v74);
        v110 = v74;
        v112 = vextq_s8(v109, v109, 8uLL);
        do
        {
          v76 = v73 + 1;
          if (v73 + 1 == v75)
          {
            v77 = 0;
          }

          else
          {
            v77 = v73 + 1;
          }

          v78 = &v70[2 * v77];
          v79 = *v78;
          v80 = *&v70[2 * v73];
          v81 = vsubq_f64(v80, v110);
          v82 = vmulq_f64(vextq_s8(v81, v81, 8uLL), v109);
          v83 = vmulq_f64(vsubq_f64(*v78, v110), v112);
          v84 = vdupq_laneq_s64(v83, 1);
          v85 = vcgtq_f64(v84, v83);
          if ((vmovn_s64(veorq_s8(vcgeq_f64(vdupq_laneq_s64(v82, 1), v82), v85)).u8[0] & 1) == 0)
          {
            v86 = vsubq_f64(v79, v80);
            v87 = vmulq_f64(v86, v112);
            v88 = vsubq_f64(v87, vdupq_laneq_s64(v87, 1));
            if (v88.f64[0] != 0.0)
            {
              v119 = vmlsq_lane_f64(v79, v86, vdivq_f64(vsubq_f64(v83, v84), v88).f64[0], 0);
              v108 = v85;
              geo::small_vector_base<gm::Matrix<double,2,1>>::push_back(v61, &v119);
              v85 = v108;
            }
          }

          if (vmovn_s64(v85).u32[0])
          {
            geo::small_vector_base<gm::Matrix<double,2,1>>::push_back(v61, v78);
          }

          v70 = *p_buf;
          v75 = (*v69 - *p_buf) >> 4;
          v73 = v76;
        }

        while (v76 < v75);
      }

      v60 = v64;
    }

    while (v64 != 3);
    if (v61 != &v114)
    {
      v115 = v114;
      geo::small_vector_base<gm::Matrix<double,2,1>>::insert<gm::Matrix<double,2,1>*>(&v114, v114, *v61, *v68);
    }

    if (buf != v127)
    {
      free(buf);
    }

    v89 = v114;
    v90 = (v115 - v114) >> 4;
    if (v90 <= 2)
    {
      v25 = *(a1 + 178);
    }

    else
    {
      if (v90 >= 7)
      {
        v91 = GEOGetGeoDisplayCoreDefaultLog();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = (v115 - v114) >> 4;
          _os_log_impl(&dword_1B2754000, v91, OS_LOG_TYPE_ERROR, "Exceeded triangle storage for polygon intersection (%zu verts)", &buf, 0xCu);
        }

        v89 = v114;
        v90 = (v115 - v114) >> 4;
      }

      if (v90 >= 6)
      {
        v92 = 6;
      }

      else
      {
        v92 = v90;
      }

      v25 = *(a1 + 178);
      if (v92 - 1 >= 2)
      {
        v93 = *a1;
        v94 = v92 - 2;
        v95 = 1;
        do
        {
          v96 = v89[v95++];
          v111 = v96;
          v113 = v89[v95 % v92];
          v97 = vcvt_f32_f64(*v89);
          v98 = a1 + 184 + 72 * v25;
          *v98 = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v93, v97.f32[0], v97.f32[1]);
          *(v98 + 8) = v99;
          *(v98 + 16) = v100;
          v101 = vcvt_f32_f64(v111);
          *(v98 + 24) = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v93, v101.f32[0], v101.f32[1]);
          *(v98 + 32) = v102;
          *(v98 + 40) = v103;
          v104 = vcvt_f32_f64(v113);
          *(v98 + 48) = gdc::Triangle<TempFoundationTriangleAccessor>::toBarycentricCoordinate(v93, v104.f32[0], v104.f32[1]);
          *(v98 + 56) = v105;
          *(v98 + 64) = v106;
          *(a1 + 178) = ++v25;
          --v94;
        }

        while (v94);
      }
    }

    if (v89 != v116)
    {
      free(v89);
    }
  }

  return v25;
}

uint64_t std::deque<unsigned long>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::deque<gdc::TrianglePair>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 256;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}