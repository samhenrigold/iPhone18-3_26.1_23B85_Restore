void geom::triangulate_by_ear_clipping<float>(float32x2_t **a1, void *a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    v4 = 0x7F0000007FLL;
    v5 = vneg_f32(0x7F0000007FLL);
    v6 = 8 * v2;
    do
    {
      v7 = *v3++;
      v5 = vminnm_f32(v7, v5);
      v4 = vmaxnm_f32(v7, v4);
      v6 -= 8;
    }

    while (v6);
  }

  if (v2 > 2)
  {
    geom::fixed_pool_list<unsigned long>::fixed_pool_list(v8, v2);
  }

  a2[1] = *a2;
}

void geom::triangulate_by_ear_clipping_helper<float>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, std::vector<unsigned int> *a7, float a8)
{
  v175 = *MEMORY[0x277D85DE8];
  v167[0] = a3;
  v167[1] = a4;
  v15 = *a2;
  v14 = a2[1];
  v16 = (v14 - *a2) >> 3;
  v17 = 3 * (v16 - 2);
  if (6 * (v16 - 2) <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = 6 * (v16 - 2);
  }

  v174 = 0;
  memset(v173, 0, sizeof(v173));
  geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::init(v173, v18);
  geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::fixed_pool_list(v162, v16);
  v159 = 0;
  v160 = 0;
  v161 = 0;
  if (v14 != v15)
  {
    std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator,std::allocator<std::allocator>>::__vallocate[abi:nn200100](&v159, v16);
  }

  *__p = 0u;
  v158 = 0u;
  *v156 = 0u;
  std::vector<geom::indexed_priority_queue<unsigned long,double>::key,std::allocator<geom::indexed_priority_queue<unsigned long,double>::key>>::reserve(v156, v16);
  std::vector<unsigned long long>::resize(&__p[1], v16, &geom::indexed_priority_queue<unsigned long,double>::k_invalid_index);
  v19 = a1[2];
  v20 = *(v19 + 16);
  while (v20 != 1)
  {
    v21 = (v159 + 16 * *(v19 + 32 * v20));
    *v21 = v20;
    v21[1] = a1;
    v19 = a1[2];
    v22 = *a6 + 16 * *(v19 + 32 * v20);
    if (*(v22 + 8) == a5 && *v22 == 1)
    {
      v170 = v20;
      v171 = *&a1;
      is_triangle_incident_to_vertex_concave = geom::is_triangle_incident_to_vertex_concave_free<float>(&v170, a1, a2, v167, a5, a8);
      v19 = a1[2];
      if (is_triangle_incident_to_vertex_concave)
      {
        v24 = (v19 + 32 * v20);
        v25 = v24[2];
        if (v25 == -1)
        {
          v25 = v20;
        }

        if (v25 == 1)
        {
          v25 = *(v19 + 16);
        }

        if (v20 == *(v19 + 16))
        {
          v26 = *(v19 + 56);
          if (v26 <= 1)
          {
            v26 = 1;
          }
        }

        else
        {
          v26 = v24[3];
          if (!v26)
          {
            v26 = v20;
          }
        }

        v27 = *v24;
        v28 = *(v167[0] + 8 * *(*a2 + 8 * v27));
        v29 = vsub_f32(v28, *(v167[0] + 8 * *(*a2 + 8 * *(v19 + 32 * v26))));
        v30 = vsub_f32(*(v167[0] + 8 * *(*a2 + 8 * *(v19 + 32 * v25))), v28);
        v31 = vmul_f32(v30, v30);
        v31.i32[0] = vadd_f32(v31, vdup_lane_s32(v31, 1)).u32[0];
        v32 = vrsqrte_f32(v31.u32[0]);
        v33 = vmul_f32(v32, vrsqrts_f32(v31.u32[0], vmul_f32(v32, v32)));
        v34 = vmul_f32(v33, vrsqrts_f32(v31.u32[0], vmul_f32(v33, v33)));
        v35 = vmul_n_f32(v30, *v34.i32);
        *v34.i32 = -*&v29.i32[1];
        v36 = vzip1_s32(v34, v29);
        v37 = vmul_f32(v36, v36);
        v37.i32[0] = vadd_f32(v37, vdup_lane_s32(v37, 1)).u32[0];
        v38 = vrsqrte_f32(v37.u32[0]);
        v39 = vmul_f32(v38, vrsqrts_f32(v37.u32[0], vmul_f32(v38, v38)));
        v40 = vaddv_f32(vmul_f32(v35, vmul_n_f32(v36, vmul_f32(v39, vrsqrts_f32(v37.u32[0], vmul_f32(v39, v39))).f32[0])));
        if (v40 < 0.0)
        {
          v40 = v40 + 2.0;
        }

        v170 = v27;
        v171 = v40;
        geom::indexed_priority_queue<unsigned long,double>::push_or_change_cost(v156, &v170);
        v19 = a1[2];
      }
    }

    if (*(v19 + 32 * v20 + 16) != -1)
    {
      v20 = *(v19 + 32 * v20 + 16);
    }
  }

  a7->__end_ = a7->__begin_;
  std::vector<float>::reserve(a7, v17);
  v41 = v156[0];
  v42 = v156[1] - v156[0];
  if (v156[1] != v156[0])
  {
    while (1)
    {
      v43 = *v41;
      v44 = v41[1];
      if (v42 == 16)
      {
        v156[1] = v41;
        v45 = __p[1];
      }

      else
      {
        v54 = (v42 >> 4) - 1;
        v55 = &v41[2 * v54];
        v56 = *v55;
        *v41 = *v55;
        v41[1] = v55[1];
        *(__p[1] + *&v56) = 0;
        std::vector<geom::indexed_priority_queue<unsigned long,double>::key,std::allocator<geom::indexed_priority_queue<unsigned long,double>::key>>::resize(v156, v54);
        v57 = 0;
        v41 = v156[0];
        v58 = (v156[1] - v156[0]) >> 4;
        v45 = __p[1];
        for (i = 0; ; v57 = i)
        {
          v60 = (2 * v57) | 1;
          v61 = &v41[2 * v57];
          if (v60 < v58)
          {
            i = v57;
            if (v41[2 * v60 + 1] < v61[1])
            {
              i = (2 * v57) | 1;
            }
          }

          v62 = 2 * v57 + 2;
          if (v62 < v58 && v41[2 * v62 + 1] < v41[2 * i + 1])
          {
            i = 2 * v57 + 2;
          }

          if (i == v57)
          {
            break;
          }

          v63 = &v41[2 * i];
          v64 = *v61;
          v65 = *(v61 + 1);
          *v61 = *v63;
          v61[1] = v63[1];
          *v63 = v64;
          *(v63 + 1) = v65;
          v45[*v61] = v57;
          v45[*v63] = i;
        }
      }

      v45[*&v43] = -1;
      if (v44 == INFINITY)
      {
        goto LABEL_167;
      }

      v46 = (v159 + 16 * *&v43);
      v48 = *v46;
      v47 = v46[1];
      if (v47 == a1 && v48 == 1)
      {
        break;
      }

      v50 = *(v47[2] + 32 * v48 + 16);
      if (v50 == -1)
      {
        v50 = v48;
      }

      if (v47 == a1 && v50 == 1)
      {
        v50 = *(a1[2] + 16);
        v52 = a1;
        goto LABEL_52;
      }

      v52 = v47;
      v53 = v47;
LABEL_53:
      v154 = v50;
      v155 = v52;
      if (v47 != a1)
      {
        goto LABEL_54;
      }

      v66 = a1[2];
      if (v48 == 1)
      {
        v68 = a1;
        v67 = 1;
        goto LABEL_63;
      }

      if (v48 == *(v66 + 16))
      {
        v67 = *(v66 + 56);
        if (v67 <= 1)
        {
          v67 = 1;
        }

        v68 = a1;
      }

      else
      {
LABEL_54:
        v66 = v47[2];
        v67 = *(v66 + 32 * v48 + 24);
        if (!v67)
        {
          v67 = v48;
        }

        v68 = v47;
      }

LABEL_63:
      v152 = v67;
      v153 = v68;
      v170 = *(v47[2] + 32 * v48);
      v171 = *(v53[2] + 32 * v50);
      v172 = *(v66 + 32 * v67);
      geom::add_triangle_helper<float>(&v170, a7, v173, a2, v167[0]);
      v69 = a1[2];
      v70 = (v69 + 32 * v48);
      v71 = v69 + 32 * v70[3];
      v72 = v69 + 32 * v70[2];
      *(v71 + 16) = *(v72 + 8);
      *(v72 + 24) = *(v71 + 8);
      v70[2] = -1;
      v70[3] = -1;
      v73 = a1[1] - 1;
      a1[1] = v73;
      *(a1[5] + 8 * v73) = v70[1];
      v74 = v152;
      v75 = v153[2];
      v76 = *(v75 + 32 * v152);
      v77 = *a6;
      v78 = *a6 + 16 * v76;
      if (*(v78 + 8) == a5 && *v78 == 1)
      {
        goto LABEL_85;
      }

      v79 = v75 + 32 * v152;
      if (v153 == a1 && v152 == 1)
      {
        v80 = v153[2];
        v81 = 1;
      }

      else
      {
        v81 = *(v79 + 16);
        if (v81 == -1)
        {
          v81 = v152;
        }

        v80 = v153[2];
        if (v153 == a1 && v81 == 1)
        {
          v80 = a1[2];
          v81 = *(v80 + 16);
        }
      }

      if (v153 != a1)
      {
LABEL_74:
        if (*(v79 + 24))
        {
          v74 = *(v79 + 24);
        }

        goto LABEL_83;
      }

      if (v152 != 1)
      {
        v82 = a1[2];
        if (v152 != *(v82 + 16))
        {
          goto LABEL_74;
        }

        if (*(v82 + 56) <= 1uLL)
        {
          v74 = 1;
        }

        else
        {
          v74 = *(v82 + 56);
        }

        v75 = a1[2];
      }

LABEL_83:
      v83 = _simd_orient_pf2(*(v167[0] + 8 * *(*a2 + 8 * *(v75 + 32 * v74))), *(v167[0] + 8 * *(*a2 + 8 * v76)), *(v167[0] + 8 * *(*a2 + 8 * *(v80 + 32 * v81))));
      v77 = *a6;
      if (v83 > 0.0)
      {
        v84 = a5[2];
        v85 = (v84 + 40 * *(v77 + 16 * *(v153[2] + 32 * v152)));
        v86 = v84 + 40 * v85[4];
        v87 = v84 + 40 * v85[3];
        *(v86 + 24) = *(v87 + 16);
        *(v87 + 32) = *(v86 + 16);
        v85[3] = -1;
        v85[4] = -1;
        v88 = a5[1] - 1;
        a5[1] = v88;
        *(a5[5] + 8 * v88) = v85[2];
        v89 = (*a6 + 16 * *(v153[2] + 32 * v152));
        *v89 = 1;
        v89[1] = a5;
        v77 = *a6;
      }

LABEL_85:
      v90 = v154;
      v91 = v155[2];
      v92 = *(v91 + 32 * v154);
      v93 = v77 + 16 * v92;
      if (*(v93 + 8) == a5 && *v93 == 1)
      {
        goto LABEL_107;
      }

      v94 = v91 + 32 * v154;
      if (v155 == a1 && v154 == 1)
      {
        v95 = v155[2];
        v96 = 1;
      }

      else
      {
        v96 = *(v94 + 16);
        if (v96 == -1)
        {
          v96 = v154;
        }

        v95 = v155[2];
        if (v155 == a1 && v96 == 1)
        {
          v95 = a1[2];
          v96 = *(v95 + 16);
        }
      }

      if (v155 != a1)
      {
LABEL_96:
        if (*(v94 + 24))
        {
          v90 = *(v94 + 24);
        }

        goto LABEL_105;
      }

      if (v154 != 1)
      {
        v97 = a1[2];
        if (v154 != *(v97 + 16))
        {
          goto LABEL_96;
        }

        if (*(v97 + 56) <= 1uLL)
        {
          v90 = 1;
        }

        else
        {
          v90 = *(v97 + 56);
        }

        v91 = a1[2];
      }

LABEL_105:
      if (_simd_orient_pf2(*(v167[0] + 8 * *(*a2 + 8 * *(v91 + 32 * v90))), *(v167[0] + 8 * *(*a2 + 8 * v92)), *(v167[0] + 8 * *(*a2 + 8 * *(v95 + 32 * v96)))) > 0.0)
      {
        v98 = a5[2];
        v99 = (v98 + 40 * *(*a6 + 16 * *(v155[2] + 32 * v154)));
        v100 = v98 + 40 * v99[4];
        v101 = v98 + 40 * v99[3];
        *(v100 + 24) = *(v101 + 16);
        *(v101 + 32) = *(v100 + 16);
        v99[3] = -1;
        v99[4] = -1;
        v102 = a5[1] - 1;
        a5[1] = v102;
        *(a5[5] + 8 * v102) = v99[2];
        v103 = (*a6 + 16 * *(v155[2] + 32 * v154));
        *v103 = 1;
        v103[1] = a5;
      }

LABEL_107:
      v104 = *(v153[2] + 32 * v152);
      v105 = *(__p[1] + v104);
      v106 = v105 != -1 && *(v156[0] + 2 * v105 + 1) != INFINITY;
      v107 = *a6 + 16 * v104;
      if (*(v107 + 8) == a5 && *v107 == 1 && geom::is_triangle_incident_to_vertex_concave_free<float>(&v152, a1, a2, v167, a5, a8))
      {
        v108 = v153[2];
        v109 = v108 + 32 * v152;
        if (v153 == a1 && v152 == 1)
        {
          v110 = v153[2];
          v111 = 1;
        }

        else
        {
          v111 = *(v109 + 16);
          if (v111 == -1)
          {
            v111 = v152;
          }

          v110 = v153[2];
          if (v153 == a1 && v111 == 1)
          {
            v110 = a1[2];
            v111 = *(v110 + 16);
          }
        }

        if (v153 == a1)
        {
          if (v152 == 1)
          {
            v121 = v153[2];
            v120 = 1;
          }

          else
          {
            v121 = a1[2];
            if (v152 != *(v121 + 16))
            {
              goto LABEL_139;
            }

            v120 = *(v121 + 56);
            if (v120 <= 1)
            {
              v120 = 1;
            }
          }
        }

        else
        {
LABEL_139:
          v120 = *(v109 + 24);
          if (!v120)
          {
            v120 = v152;
          }

          v121 = v153[2];
        }

        v124 = *(v108 + 32 * v152);
        v125 = *(v167[0] + 8 * *(*a2 + 8 * v124));
        v126 = vsub_f32(v125, *(v167[0] + 8 * *(*a2 + 8 * *(v121 + 32 * v120))));
        v127 = vsub_f32(*(v167[0] + 8 * *(*a2 + 8 * *(v110 + 32 * v111))), v125);
        v128 = vmul_f32(v127, v127);
        v128.i32[0] = vadd_f32(v128, vdup_lane_s32(v128, 1)).u32[0];
        v129 = vrsqrte_f32(v128.u32[0]);
        v130 = vmul_f32(v129, vrsqrts_f32(v128.u32[0], vmul_f32(v129, v129)));
        v131 = vmul_f32(v130, vrsqrts_f32(v128.u32[0], vmul_f32(v130, v130)));
        v132 = vmul_n_f32(v127, *v131.i32);
        *v131.i32 = -*&v126.i32[1];
        v133 = vzip1_s32(v131, v126);
        v134 = vmul_f32(v133, v133);
        v134.i32[0] = vadd_f32(v134, vdup_lane_s32(v134, 1)).u32[0];
        v135 = vrsqrte_f32(v134.u32[0]);
        v136 = vmul_f32(v135, vrsqrts_f32(v134.u32[0], vmul_f32(v135, v135)));
        v137 = vaddv_f32(vmul_f32(v132, vmul_n_f32(v133, vmul_f32(v136, vrsqrts_f32(v134.u32[0], vmul_f32(v136, v136))).f32[0])));
        if (v137 < 0.0)
        {
          v137 = v137 + 2.0;
        }

        v168 = v124;
        v169 = v137;
        goto LABEL_118;
      }

      if (!v106)
      {
        goto LABEL_119;
      }

      v168 = *(v153[2] + 32 * v152);
      v169 = INFINITY;
LABEL_118:
      geom::indexed_priority_queue<unsigned long,double>::push_or_change_cost(v156, &v168);
LABEL_119:
      v112 = *(v155[2] + 32 * v154);
      v113 = *(__p[1] + v112);
      v114 = v113 != -1 && *(v156[0] + 2 * v113 + 1) != INFINITY;
      v115 = *a6 + 16 * v112;
      if (*(v115 + 8) == a5 && *v115 == 1 && geom::is_triangle_incident_to_vertex_concave_free<float>(&v154, a1, a2, v167, a5, a8))
      {
        v116 = v155[2];
        v117 = v116 + 32 * v154;
        if (v155 == a1 && v154 == 1)
        {
          v118 = v155[2];
          v119 = 1;
        }

        else
        {
          v119 = *(v117 + 16);
          if (v119 == -1)
          {
            v119 = v154;
          }

          v118 = v155[2];
          if (v155 == a1 && v119 == 1)
          {
            v118 = a1[2];
            v119 = *(v118 + 16);
          }
        }

        if (v155 == a1)
        {
          if (v154 == 1)
          {
            v123 = v155[2];
            v122 = 1;
          }

          else
          {
            v123 = a1[2];
            if (v154 != *(v123 + 16))
            {
              goto LABEL_148;
            }

            v122 = *(v123 + 56);
            if (v122 <= 1)
            {
              v122 = 1;
            }
          }
        }

        else
        {
LABEL_148:
          v122 = *(v117 + 24);
          if (!v122)
          {
            v122 = v154;
          }

          v123 = v155[2];
        }

        v138 = *(v116 + 32 * v154);
        v139 = *(v167[0] + 8 * *(*a2 + 8 * v138));
        v140 = vsub_f32(v139, *(v167[0] + 8 * *(*a2 + 8 * *(v123 + 32 * v122))));
        v141 = vsub_f32(*(v167[0] + 8 * *(*a2 + 8 * *(v118 + 32 * v119))), v139);
        v142 = vmul_f32(v141, v141);
        v142.i32[0] = vadd_f32(v142, vdup_lane_s32(v142, 1)).u32[0];
        v143 = vrsqrte_f32(v142.u32[0]);
        v144 = vmul_f32(v143, vrsqrts_f32(v142.u32[0], vmul_f32(v143, v143)));
        v145 = vmul_f32(v144, vrsqrts_f32(v142.u32[0], vmul_f32(v144, v144)));
        v146 = vmul_n_f32(v141, *v145.i32);
        *v145.i32 = -*&v140.i32[1];
        v147 = vzip1_s32(v145, v140);
        v148 = vmul_f32(v147, v147);
        v148.i32[0] = vadd_f32(v148, vdup_lane_s32(v148, 1)).u32[0];
        v149 = vrsqrte_f32(v148.u32[0]);
        v150 = vmul_f32(v149, vrsqrts_f32(v148.u32[0], vmul_f32(v149, v149)));
        v151 = vaddv_f32(vmul_f32(v146, vmul_n_f32(v147, vmul_f32(v150, vrsqrts_f32(v148.u32[0], vmul_f32(v150, v150))).f32[0])));
        if (v151 < 0.0)
        {
          v151 = v151 + 2.0;
        }

        v168 = v138;
        v169 = v151;
LABEL_130:
        geom::indexed_priority_queue<unsigned long,double>::push_or_change_cost(v156, &v168);
        goto LABEL_131;
      }

      if (v114)
      {
        v168 = *(v155[2] + 32 * v154);
        v169 = INFINITY;
        goto LABEL_130;
      }

LABEL_131:
      v41 = v156[0];
      v42 = v156[1] - v156[0];
      if (v156[1] == v156[0])
      {
        goto LABEL_167;
      }
    }

    v52 = a1;
    v50 = 1;
LABEL_52:
    v53 = a1;
    goto LABEL_53;
  }

LABEL_167:
  if (__p[1])
  {
    *&v158 = __p[1];
    operator delete(__p[1]);
    v41 = v156[0];
  }

  if (v41)
  {
    v156[1] = v41;
    operator delete(v41);
  }

  if (v159)
  {
    v160 = v159;
    operator delete(v159);
  }

  if (v165)
  {
    v166 = v165;
    operator delete(v165);
  }

  if (v163)
  {
    v164 = v163;
    operator delete(v163);
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(v173);
}

void geom::triangulate_by_ear_clipping<double>(float64x2_t **a1, void *a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    v4 = vdupq_n_s64(0x7FF0000000000000uLL);
    v5 = 16 * v2;
    v6 = vdupq_n_s64(0xFFF0000000000000);
    do
    {
      v7 = *v3++;
      v4 = vminnmq_f64(v7, v4);
      v6 = vmaxnmq_f64(v7, v6);
      v5 -= 16;
    }

    while (v5);
  }

  if (v2 > 2)
  {
    geom::fixed_pool_list<unsigned long>::fixed_pool_list(v8, v2);
  }

  a2[1] = *a2;
}

void geom::triangulate_by_ear_clipping_helper<double>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, std::vector<unsigned int> *a7, double a8)
{
  v157 = *MEMORY[0x277D85DE8];
  v149[0] = a3;
  v149[1] = a4;
  v15 = *a2;
  v14 = a2[1];
  v16 = (v14 - *a2) >> 3;
  v17 = 3 * (v16 - 2);
  if (6 * (v16 - 2) <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = 6 * (v16 - 2);
  }

  v156 = 0;
  memset(v155, 0, sizeof(v155));
  geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::init(v155, v18);
  geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::fixed_pool_list(v144, v16);
  v141 = 0;
  v142 = 0;
  v143 = 0;
  if (v14 != v15)
  {
    std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator,std::allocator<std::allocator>>::__vallocate[abi:nn200100](&v141, v16);
  }

  *__p = 0u;
  v140 = 0u;
  *v138 = 0u;
  std::vector<geom::indexed_priority_queue<unsigned long,double>::key,std::allocator<geom::indexed_priority_queue<unsigned long,double>::key>>::reserve(v138, v16);
  std::vector<unsigned long long>::resize(&__p[1], v16, &geom::indexed_priority_queue<unsigned long,double>::k_invalid_index);
  v19 = a1[2];
  v20 = *(v19 + 16);
  while (v20 != 1)
  {
    v21 = (v141 + 16 * *(v19 + 32 * v20));
    *v21 = v20;
    v21[1] = a1;
    v19 = a1[2];
    v22 = *a6 + 16 * *(v19 + 32 * v20);
    if (*(v22 + 8) == a5 && *v22 == 1)
    {
      v152 = v20;
      v153 = *&a1;
      is_triangle_incident_to_vertex_concave = geom::is_triangle_incident_to_vertex_concave_free<double>(&v152, a1, a2, v149, a5, a8);
      v19 = a1[2];
      if (is_triangle_incident_to_vertex_concave)
      {
        v24 = (v19 + 32 * v20);
        v25 = v24[2];
        if (v25 == -1)
        {
          v25 = v20;
        }

        if (v25 == 1)
        {
          v25 = *(v19 + 16);
        }

        if (v20 == *(v19 + 16))
        {
          v26 = *(v19 + 56);
          if (v26 <= 1)
          {
            v26 = 1;
          }
        }

        else
        {
          v26 = v24[3];
          if (!v26)
          {
            v26 = v20;
          }
        }

        v27 = *v24;
        v28 = *(v149[0] + 16 * *(*a2 + 8 * v27));
        v29 = vsubq_f64(v28, *(v149[0] + 16 * *(*a2 + 8 * *(v19 + 32 * v26))));
        v30 = vsubq_f64(*(v149[0] + 16 * *(*a2 + 8 * *(v19 + 32 * v25))), v28);
        v31 = vmulq_f64(v30, v30);
        v32 = vmulq_n_f64(v30, 1.0 / sqrt(vaddvq_f64(v31)));
        v31.f64[0] = -*&v29.i64[1];
        v33 = vzip1q_s64(v31, v29);
        v34 = vaddvq_f64(vmulq_f64(v32, vmulq_n_f64(v33, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v33, v33))))));
        if (v34 < 0.0)
        {
          v34 = v34 + 2.0;
        }

        v152 = v27;
        v153 = v34;
        geom::indexed_priority_queue<unsigned long,double>::push_or_change_cost(v138, &v152);
        v19 = a1[2];
      }
    }

    if (*(v19 + 32 * v20 + 16) != -1)
    {
      v20 = *(v19 + 32 * v20 + 16);
    }
  }

  a7->__end_ = a7->__begin_;
  std::vector<float>::reserve(a7, v17);
  v35 = v138[0];
  v36 = v138[1] - v138[0];
  if (v138[1] != v138[0])
  {
    while (1)
    {
      v37 = *v35;
      v38 = v35[1];
      if (v36 == 16)
      {
        v138[1] = v35;
        v39 = __p[1];
      }

      else
      {
        v48 = (v36 >> 4) - 1;
        v49 = &v35[2 * v48];
        v50 = *v49;
        *v35 = *v49;
        v35[1] = v49[1];
        *(__p[1] + *&v50) = 0;
        std::vector<geom::indexed_priority_queue<unsigned long,double>::key,std::allocator<geom::indexed_priority_queue<unsigned long,double>::key>>::resize(v138, v48);
        v51 = 0;
        v35 = v138[0];
        v52 = (v138[1] - v138[0]) >> 4;
        v39 = __p[1];
        for (i = 0; ; v51 = i)
        {
          v54 = (2 * v51) | 1;
          v55 = &v35[2 * v51];
          if (v54 < v52)
          {
            i = v51;
            if (v35[2 * v54 + 1] < v55[1])
            {
              i = (2 * v51) | 1;
            }
          }

          v56 = 2 * v51 + 2;
          if (v56 < v52 && v35[2 * v56 + 1] < v35[2 * i + 1])
          {
            i = 2 * v51 + 2;
          }

          if (i == v51)
          {
            break;
          }

          v57 = &v35[2 * i];
          v58 = *v55;
          v59 = *(v55 + 1);
          *v55 = *v57;
          v55[1] = v57[1];
          *v57 = v58;
          *(v57 + 1) = v59;
          v39[*v55] = v51;
          v39[*v57] = i;
        }
      }

      v39[*&v37] = -1;
      if (v38 == INFINITY)
      {
        goto LABEL_167;
      }

      v40 = (v141 + 16 * *&v37);
      v42 = *v40;
      v41 = v40[1];
      if (v41 == a1 && v42 == 1)
      {
        break;
      }

      v44 = *(v41[2] + 32 * v42 + 16);
      if (v44 == -1)
      {
        v44 = v42;
      }

      if (v41 == a1 && v44 == 1)
      {
        v44 = *(a1[2] + 16);
        v46 = a1;
        goto LABEL_52;
      }

      v46 = v41;
      v47 = v41;
LABEL_53:
      v136 = v44;
      v137 = v46;
      if (v41 != a1)
      {
        goto LABEL_60;
      }

      v60 = a1[2];
      if (v42 == 1)
      {
        v61 = a1;
        v62 = 1;
        goto LABEL_63;
      }

      if (v42 == *(v60 + 16))
      {
        v62 = *(v60 + 56);
        if (v62 <= 1)
        {
          v62 = 1;
        }

        v61 = a1;
      }

      else
      {
LABEL_60:
        v60 = v41[2];
        v62 = *(v60 + 32 * v42 + 24);
        if (!v62)
        {
          v62 = v42;
        }

        v61 = v41;
      }

LABEL_63:
      v134 = v62;
      v135 = v61;
      v152 = *(v41[2] + 32 * v42);
      v153 = *(v47[2] + 32 * v44);
      v154 = *(v60 + 32 * v62);
      geom::add_triangle_helper<double>(&v152, a7, v155, a2, v149[0]);
      v63 = a1[2];
      v64 = (v63 + 32 * v42);
      v65 = v63 + 32 * v64[3];
      v66 = v63 + 32 * v64[2];
      *(v65 + 16) = *(v66 + 8);
      *(v66 + 24) = *(v65 + 8);
      v64[2] = -1;
      v64[3] = -1;
      v67 = a1[1] - 1;
      a1[1] = v67;
      *(a1[5] + 8 * v67) = v64[1];
      v68 = v134;
      v69 = v135[2];
      v70 = *(v69 + 32 * v134);
      v71 = *a6;
      v72 = *a6 + 16 * v70;
      if (*(v72 + 8) == a5 && *v72 == 1)
      {
        goto LABEL_85;
      }

      v73 = v69 + 32 * v134;
      if (v135 == a1 && v134 == 1)
      {
        v74 = v135[2];
        v75 = 1;
      }

      else
      {
        v75 = *(v73 + 16);
        if (v75 == -1)
        {
          v75 = v134;
        }

        v74 = v135[2];
        if (v135 == a1 && v75 == 1)
        {
          v74 = a1[2];
          v75 = *(v74 + 16);
        }
      }

      if (v135 != a1)
      {
LABEL_74:
        if (*(v73 + 24))
        {
          v68 = *(v73 + 24);
        }

        goto LABEL_83;
      }

      if (v134 != 1)
      {
        v76 = a1[2];
        if (v134 != *(v76 + 16))
        {
          goto LABEL_74;
        }

        if (*(v76 + 56) <= 1uLL)
        {
          v68 = 1;
        }

        else
        {
          v68 = *(v76 + 56);
        }

        v69 = a1[2];
      }

LABEL_83:
      v77 = _simd_orient_pd2(*(v149[0] + 16 * *(*a2 + 8 * *(v69 + 32 * v68))), *(v149[0] + 16 * *(*a2 + 8 * v70)), *(v149[0] + 16 * *(*a2 + 8 * *(v74 + 32 * v75))));
      v71 = *a6;
      if (v77 > 0.0)
      {
        v78 = a5[2];
        v79 = (v78 + 40 * *(v71 + 16 * *(v135[2] + 32 * v134)));
        v80 = v78 + 40 * v79[4];
        v81 = v78 + 40 * v79[3];
        *(v80 + 24) = *(v81 + 16);
        *(v81 + 32) = *(v80 + 16);
        v79[3] = -1;
        v79[4] = -1;
        v82 = a5[1] - 1;
        a5[1] = v82;
        *(a5[5] + 8 * v82) = v79[2];
        v83 = (*a6 + 16 * *(v135[2] + 32 * v134));
        *v83 = 1;
        v83[1] = a5;
        v71 = *a6;
      }

LABEL_85:
      v84 = v136;
      v85 = v137[2];
      v86 = *(v85 + 32 * v136);
      v87 = v71 + 16 * v86;
      if (*(v87 + 8) == a5 && *v87 == 1)
      {
        goto LABEL_107;
      }

      v88 = v85 + 32 * v136;
      if (v137 == a1 && v136 == 1)
      {
        v89 = v137[2];
        v90 = 1;
      }

      else
      {
        v90 = *(v88 + 16);
        if (v90 == -1)
        {
          v90 = v136;
        }

        v89 = v137[2];
        if (v137 == a1 && v90 == 1)
        {
          v89 = a1[2];
          v90 = *(v89 + 16);
        }
      }

      if (v137 != a1)
      {
LABEL_96:
        if (*(v88 + 24))
        {
          v84 = *(v88 + 24);
        }

        goto LABEL_105;
      }

      if (v136 != 1)
      {
        v91 = a1[2];
        if (v136 != *(v91 + 16))
        {
          goto LABEL_96;
        }

        if (*(v91 + 56) <= 1uLL)
        {
          v84 = 1;
        }

        else
        {
          v84 = *(v91 + 56);
        }

        v85 = a1[2];
      }

LABEL_105:
      if (_simd_orient_pd2(*(v149[0] + 16 * *(*a2 + 8 * *(v85 + 32 * v84))), *(v149[0] + 16 * *(*a2 + 8 * v86)), *(v149[0] + 16 * *(*a2 + 8 * *(v89 + 32 * v90)))) > 0.0)
      {
        v92 = a5[2];
        v93 = (v92 + 40 * *(*a6 + 16 * *(v137[2] + 32 * v136)));
        v94 = v92 + 40 * v93[4];
        v95 = v92 + 40 * v93[3];
        *(v94 + 24) = *(v95 + 16);
        *(v95 + 32) = *(v94 + 16);
        v93[3] = -1;
        v93[4] = -1;
        v96 = a5[1] - 1;
        a5[1] = v96;
        *(a5[5] + 8 * v96) = v93[2];
        v97 = (*a6 + 16 * *(v137[2] + 32 * v136));
        *v97 = 1;
        v97[1] = a5;
      }

LABEL_107:
      v98 = *(v135[2] + 32 * v134);
      v99 = *(__p[1] + v98);
      v100 = v99 != -1 && *(v138[0] + 2 * v99 + 1) != INFINITY;
      v101 = *a6 + 16 * v98;
      if (*(v101 + 8) == a5 && *v101 == 1 && geom::is_triangle_incident_to_vertex_concave_free<double>(&v134, a1, a2, v149, a5, a8))
      {
        v102 = v135[2];
        v103 = v102 + 32 * v134;
        if (v135 == a1 && v134 == 1)
        {
          v104 = v135[2];
          v105 = 1;
        }

        else
        {
          v105 = *(v103 + 16);
          if (v105 == -1)
          {
            v105 = v134;
          }

          v104 = v135[2];
          if (v135 == a1 && v105 == 1)
          {
            v104 = a1[2];
            v105 = *(v104 + 16);
          }
        }

        if (v135 == a1)
        {
          if (v134 == 1)
          {
            v115 = v135[2];
            v114 = 1;
          }

          else
          {
            v115 = a1[2];
            if (v134 != *(v115 + 16))
            {
              goto LABEL_139;
            }

            v114 = *(v115 + 56);
            if (v114 <= 1)
            {
              v114 = 1;
            }
          }
        }

        else
        {
LABEL_139:
          v114 = *(v103 + 24);
          if (!v114)
          {
            v114 = v134;
          }

          v115 = v135[2];
        }

        v118 = *(v102 + 32 * v134);
        v119 = *(v149[0] + 16 * *(*a2 + 8 * v118));
        v120 = vsubq_f64(v119, *(v149[0] + 16 * *(*a2 + 8 * *(v115 + 32 * v114))));
        v121 = vsubq_f64(*(v149[0] + 16 * *(*a2 + 8 * *(v104 + 32 * v105))), v119);
        v122 = vmulq_f64(v121, v121);
        v123 = vmulq_n_f64(v121, 1.0 / sqrt(vaddvq_f64(v122)));
        v122.f64[0] = -*&v120.i64[1];
        v124 = vzip1q_s64(v122, v120);
        v125 = vaddvq_f64(vmulq_f64(v123, vmulq_n_f64(v124, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v124, v124))))));
        if (v125 < 0.0)
        {
          v125 = v125 + 2.0;
        }

        v150 = v118;
        v151 = *&v125;
        goto LABEL_118;
      }

      if (!v100)
      {
        goto LABEL_119;
      }

      v150 = *(v135[2] + 32 * v134);
      v151 = 0x7FF0000000000000;
LABEL_118:
      geom::indexed_priority_queue<unsigned long,double>::push_or_change_cost(v138, &v150);
LABEL_119:
      v106 = *(v137[2] + 32 * v136);
      v107 = *(__p[1] + v106);
      v108 = v107 != -1 && *(v138[0] + 2 * v107 + 1) != INFINITY;
      v109 = *a6 + 16 * v106;
      if (*(v109 + 8) == a5 && *v109 == 1 && geom::is_triangle_incident_to_vertex_concave_free<double>(&v136, a1, a2, v149, a5, a8))
      {
        v110 = v137[2];
        v111 = v110 + 32 * v136;
        if (v137 == a1 && v136 == 1)
        {
          v112 = v137[2];
          v113 = 1;
        }

        else
        {
          v113 = *(v111 + 16);
          if (v113 == -1)
          {
            v113 = v136;
          }

          v112 = v137[2];
          if (v137 == a1 && v113 == 1)
          {
            v112 = a1[2];
            v113 = *(v112 + 16);
          }
        }

        if (v137 == a1)
        {
          if (v136 == 1)
          {
            v117 = v137[2];
            v116 = 1;
          }

          else
          {
            v117 = a1[2];
            if (v136 != *(v117 + 16))
            {
              goto LABEL_148;
            }

            v116 = *(v117 + 56);
            if (v116 <= 1)
            {
              v116 = 1;
            }
          }
        }

        else
        {
LABEL_148:
          v116 = *(v111 + 24);
          if (!v116)
          {
            v116 = v136;
          }

          v117 = v137[2];
        }

        v126 = *(v110 + 32 * v136);
        v127 = *(v149[0] + 16 * *(*a2 + 8 * v126));
        v128 = vsubq_f64(v127, *(v149[0] + 16 * *(*a2 + 8 * *(v117 + 32 * v116))));
        v129 = vsubq_f64(*(v149[0] + 16 * *(*a2 + 8 * *(v112 + 32 * v113))), v127);
        v130 = vmulq_f64(v129, v129);
        v131 = vmulq_n_f64(v129, 1.0 / sqrt(vaddvq_f64(v130)));
        v130.f64[0] = -*&v128.i64[1];
        v132 = vzip1q_s64(v130, v128);
        v133 = vaddvq_f64(vmulq_f64(v131, vmulq_n_f64(v132, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v132, v132))))));
        if (v133 < 0.0)
        {
          v133 = v133 + 2.0;
        }

        v150 = v126;
        v151 = *&v133;
LABEL_130:
        geom::indexed_priority_queue<unsigned long,double>::push_or_change_cost(v138, &v150);
        goto LABEL_131;
      }

      if (v108)
      {
        v150 = *(v137[2] + 32 * v136);
        v151 = 0x7FF0000000000000;
        goto LABEL_130;
      }

LABEL_131:
      v35 = v138[0];
      v36 = v138[1] - v138[0];
      if (v138[1] == v138[0])
      {
        goto LABEL_167;
      }
    }

    v46 = a1;
    v44 = 1;
LABEL_52:
    v47 = a1;
    goto LABEL_53;
  }

LABEL_167:
  if (__p[1])
  {
    *&v140 = __p[1];
    operator delete(__p[1]);
    v35 = v138[0];
  }

  if (v35)
  {
    v138[1] = v35;
    operator delete(v35);
  }

  if (v141)
  {
    v142 = v141;
    operator delete(v141);
  }

  if (v147)
  {
    v148 = v147;
    operator delete(v147);
  }

  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(v155);
}

void geom::triangulate_by_ear_clipping<float>(uint64_t a1, unsigned int **a2, std::vector<unsigned int> *a3)
{
  v3 = a2[1];
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
    v6 = 0x7F0000007FLL;
    v7 = vneg_f32(0x7F0000007FLL);
    v8 = 8 * v4;
    do
    {
      v9 = *v5++;
      v7 = vminnm_f32(v9, v7);
      v6 = vmaxnm_f32(v9, v6);
      v8 -= 8;
    }

    while (v8);
  }

  v10 = v3 - 1;
  if (v3 != 1)
  {
    if (v3)
    {
      if ((v4 + 2 * v10) > 2)
      {
        geom::fixed_pool_list<unsigned long>::fixed_pool_list(&v11, v4 + 2 * v10);
      }
    }

    goto LABEL_12;
  }

  if (v4 != **a2)
  {
LABEL_12:
    a3->__end_ = a3->__begin_;
    return;
  }

  geom::triangulate_by_ear_clipping<float>(a1, a3);
}

void std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator,std::allocator<std::allocator>>::resize(void *result, unint64_t a2, _OWORD *a3)
{
  v3 = (result[1] - *result) >> 4;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator,std::allocator<std::allocator>>::__append(result, a2 - v3, a3);
  }
}

void geom::triangulate_by_ear_clipping<double>(uint64_t a1, unsigned int **a2, std::vector<unsigned int> *a3)
{
  v3 = a2[1];
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
    v6 = vdupq_n_s64(0x7FF0000000000000uLL);
    v7 = 16 * v4;
    v8 = vdupq_n_s64(0xFFF0000000000000);
    do
    {
      v9 = *v5++;
      v6 = vminnmq_f64(v9, v6);
      v8 = vmaxnmq_f64(v9, v8);
      v7 -= 16;
    }

    while (v7);
  }

  v10 = v3 - 1;
  if (v3 != 1)
  {
    if (v3)
    {
      if ((v4 + 2 * v10) > 2)
      {
        geom::fixed_pool_list<unsigned long>::fixed_pool_list(&v11, v4 + 2 * v10);
      }
    }

    goto LABEL_12;
  }

  if (v4 != **a2)
  {
LABEL_12:
    a3->__end_ = a3->__begin_;
    return;
  }

  geom::triangulate_by_ear_clipping<double>(a1, a3);
}

void geom::fixed_pool_list<unsigned long>::fixed_pool_list(uint64_t a1, unint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  if (a2 != -2)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em((a1 + 16), a2 + 2);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<double>::__vallocate[abi:nn200100]((a1 + 40), 0xFFFFFFFFFFFFFFFELL);
}

unint64_t *geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::fixed_pool_list(unint64_t *a1, unint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::node,std::allocator<std::allocator>>::vector[abi:nn200100](a1 + 2, a2 + 2);
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:nn200100](a1 + 5, a2);
  }

  v4 = a1[2];
  *(v4 + 24) = 1;
  *(v4 + 72) = 0;
  v5 = 0;
  v6 = vdupq_n_s64(1uLL);
  v7 = xmmword_2500C1680;
  v8 = (v4 + 56);
  v9 = vdupq_n_s64(2uLL);
  do
  {
    v10 = vmovn_s64(vcgeq_u64(v6, v7));
    if (v10.i8[0])
    {
      *(v8 - 5) = v5;
    }

    if (v10.i8[4])
    {
      *v8 = v5 + 1;
    }

    v5 += 2;
    v7 = vaddq_s64(v7, v9);
    v8 += 10;
  }

  while (v5 != 2);
  return a1;
}

uint64_t *std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::node,std::allocator<std::allocator>>::vector[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::node,std::allocator<std::allocator>>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

void std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::node,std::allocator<std::allocator>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::node>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::node>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator,std::allocator<std::allocator>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t geom::is_triangle_incident_to_vertex_concave_free<float>(uint64_t *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, float a6)
{
  if (*(a2 + 8) < 3uLL)
  {
    return 0;
  }

  v8 = *a1;
  v7 = a1[1];
  if (v7 == a2 && v8 == 1)
  {
    v10 = 1;
    v12 = a1[1];
  }

  else
  {
    if (*(*(v7 + 16) + 32 * v8 + 16) == -1)
    {
      v10 = *a1;
    }

    else
    {
      v10 = *(*(v7 + 16) + 32 * v8 + 16);
    }

    v11 = v7 == a2 && v10 == 1;
    v12 = a1[1];
    if (v11)
    {
      v10 = *(*(a2 + 16) + 16);
      v12 = a2;
    }
  }

  if (v7 != a2)
  {
    goto LABEL_73;
  }

  if (v8 == 1)
  {
    v13 = 1;
LABEL_23:
    a2 = a1[1];
    goto LABEL_24;
  }

  v42 = *(a2 + 16);
  if (v8 != *(v42 + 16))
  {
LABEL_73:
    if (*(*(v7 + 16) + 32 * v8 + 24))
    {
      v13 = *(*(v7 + 16) + 32 * v8 + 24);
    }

    else
    {
      v13 = *a1;
    }

    goto LABEL_23;
  }

  v43 = *(v42 + 56);
  if (v43 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v43;
  }

LABEL_24:
  v14 = *(a5 + 16);
  v15 = *(v14 + 24);
  if (v15 != 1)
  {
    v16 = *a4;
    v17 = *(*a3 + 8 * *(*(v7 + 16) + 32 * v8));
    v18 = *(*a4 + 8 * *(*a3 + 8 * *(*(a2 + 16) + 32 * v13)));
    do
    {
      v19 = *(v16 + 8 * *(*a3 + 8 * *(*(*(v14 + 40 * v15 + 8) + 16) + 32 * *(v14 + 40 * v15))));
      v20 = vsub_f32(v19, v18);
      if (sqrtf(vaddv_f32(vmul_f32(v20, v20))) <= a6)
      {
        goto LABEL_63;
      }

      v21 = *(v16 + 8 * v17);
      v22 = vsub_f32(v19, v21);
      if (sqrtf(vaddv_f32(vmul_f32(v22, v22))) <= a6)
      {
        goto LABEL_63;
      }

      v23 = *(v16 + 8 * *(*a3 + 8 * *(*(v12 + 16) + 32 * v10)));
      v24 = vsub_f32(v19, v23);
      if (sqrtf(vaddv_f32(vmul_f32(v24, v24))) <= a6)
      {
        goto LABEL_63;
      }

      v19.f32[0] = (-(v18.f32[1] - v23.f32[1]) * v24.f32[0]) + (vsub_f32(v18, v23).f32[0] * (v19.f32[1] - v23.f32[1]));
      v25 = (-(v21.f32[1] - v18.f32[1]) * v20.f32[0]) + (vsub_f32(v21, v18).f32[0] * (v19.f32[1] - v18.f32[1]));
      if (v19.f32[0] == 0.0)
      {
        if (v25 != 0.0)
        {
          v27 = 0;
LABEL_36:
          v28 = fabsf(v25);
          v29 = v25 < 0.0;
          v30 = (v28 + 1.0) * a6;
          if (v28 != INFINITY)
          {
            v29 = (0.0 - v30) >= v25;
          }

          if (v19.f32[0] != 0.0 && v27 != v29)
          {
            v31 = fabsf(v19.f32[0]);
            if ((v31 == INFINITY || v31 >= ((v31 + 1.0) * a6)) && (v28 == INFINITY || v28 >= v30))
            {
              goto LABEL_63;
            }
          }
        }
      }

      else
      {
        v26 = fabsf(v19.f32[0]);
        v27 = v19.f32[0] < 0.0;
        if (v26 != INFINITY)
        {
          v27 = (0.0 - ((v26 + 1.0) * a6)) >= v19.f32[0];
        }

        if (v25 != 0.0)
        {
          goto LABEL_36;
        }
      }

      v34 = (-(v23.f32[1] - COERCE_FLOAT(HIDWORD(*(v16 + 8 * v17)))) * v22.f32[0]) + (vsub_f32(v23, v21).f32[0] * (v19.f32[1] - COERCE_FLOAT(HIDWORD(*(v16 + 8 * v17)))));
      if (v34 == 0.0)
      {
        return 0;
      }

      v35 = fabsf(v34);
      if (v35 == INFINITY)
      {
        v36 = v34 < 0.0;
      }

      else
      {
        v37 = (v35 + 1.0) * a6;
        if (v35 < v37)
        {
          return 0;
        }

        v36 = (0.0 - v37) >= v34;
      }

      v38 = v25 + v19.f32[0];
      v39 = (v25 + v19.f32[0]) > 0.0;
      if ((v25 + v19.f32[0]) == 0.0)
      {
        if (v36)
        {
          return 0;
        }
      }

      else
      {
        v40 = fabsf(v38);
        v41 = !v39;
        if (v40 != INFINITY)
        {
          v41 = ((v40 + 1.0) * a6) >= v38;
        }

        if (v36 == v41)
        {
          return 0;
        }
      }

LABEL_63:
      if (*(v14 + 40 * v15 + 24) != -1)
      {
        v15 = *(v14 + 40 * v15 + 24);
      }
    }

    while (v15 != 1);
  }

  return 1;
}

void geom::add_triangle_helper<float>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v45 = ((*(a2 + 8) - *a2) >> 2) / 3uLL;
  v10 = *(a5 + 8 * *(*a4 + 8 * *a1));
  v11 = *(a5 + 8 * *(*a4 + 8 * *(a1 + 8)));
  v12 = *(a5 + 8 * *(*a4 + 8 * *(a1 + 16)));
  v46 = vsub_f32(v11, v10);
  v47 = vsub_f32(v12, v11);
  v48 = vsub_f32(v10, v12);
  v13 = vmul_f32(v46, v46);
  v14 = vadd_f32(v13, vdup_lane_s32(v13, 1));
  v15 = vmul_f32(v47, v47);
  v16 = vmul_f32(v48, v48);
  v17 = vadd_f32(vzip1_s32(v15, v16), vzip2_s32(v15, v16));
  v18 = vmvn_s8(vcge_f32(v14, v17)).u8[0] | (v14.f32[0] < v17.f32[1]);
  if (v17.f32[0] >= v17.f32[1])
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 == 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = *(a1 + 8 * v20);
  v23 = *(a1 + 8 * v21);
  v41 = v22;
  v42 = v23;
  internal = geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::find_internal(a3, &v41);
  if (internal == -1)
  {
    goto LABEL_11;
  }

  if (v21 == 2)
  {
    v26 = 0;
  }

  else
  {
    v26 = v21 + 1;
  }

  v44 = *(a3[1] + 24 * internal + 16);
  v27 = (*a2 + 12 * v44);
  v29 = *v27;
  v28 = v27 + 1;
  if (v22 != v29)
  {
    v28 = (*a2 + 12 * v44 + 8 * (v22 == *(*a2 + 12 * v44 + 4)));
  }

  if (((v30 = *(a1 + 8 * v26), v31 = *v28, v32 = *(a5 + 8 * *(*a4 + 8 * v31)), v33 = vsub_f32(v32, *(a5 + 8 * *(*a4 + 8 * v22))), v34 = vsub_f32(*(a5 + 8 * *(*a4 + 8 * v23)), v32), v35 = vaddv_f32(vmul_f32(v34, vneg_f32(v33))), v36 = *(&v46 + v21), v37 = *(&v46 + v26), v38 = vaddv_f32(vmul_f32(v37, vneg_f32(v36))), v35 >= 0.0) || v38 >= 0.0) && (((vmuls_lane_f32(-v34.f32[0], v33, 1) + (v33.f32[0] * v34.f32[1])) * v38) + (v35 * (vmuls_lane_f32(-v37.f32[0], v36, 1) + (v36.f32[0] * v37.f32[1])))) >= 0.0)
  {
LABEL_11:
    LODWORD(v41) = *a1;
    std::vector<unsigned int>::push_back[abi:nn200100](a2, &v41);
    LODWORD(v41) = *(a1 + 8);
    std::vector<unsigned int>::push_back[abi:nn200100](a2, &v41);
    LODWORD(v41) = *(a1 + 16);
    std::vector<unsigned int>::push_back[abi:nn200100](a2, &v41);
    v43 = vextq_s8(*a1, *a1, 8uLL);
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, &v43, &v45, &v41);
    v43 = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, &v43, &v45, &v41);
    v25 = *(a1 + 16);
    v43.i64[0] = *a1;
    v43.i64[1] = v25;
  }

  else
  {
    v41 = v22;
    v42 = v23;
    v39 = 3 * v44;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::erase(a3, &v41);
    v41 = v31;
    v42 = v22;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::erase(a3, &v41);
    v41 = v23;
    v42 = v31;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::erase(a3, &v41);
    v40 = (*a2 + 4 * v39);
    *v40 = v30;
    v40[1] = v31;
    v40[2] = v23;
    v43.i64[0] = v31;
    v43.i64[1] = v30;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, &v43, &v44, &v41);
    v43.i64[0] = v23;
    v43.i64[1] = v31;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, &v43, &v44, &v41);
    v43.i64[0] = v30;
    v43.i64[1] = v23;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, &v43, &v44, &v41);
    LODWORD(v41) = v31;
    std::vector<unsigned int>::push_back[abi:nn200100](a2, &v41);
    LODWORD(v41) = v30;
    std::vector<unsigned int>::push_back[abi:nn200100](a2, &v41);
    LODWORD(v41) = v22;
    std::vector<unsigned int>::push_back[abi:nn200100](a2, &v41);
    v43.i64[0] = v30;
    v43.i64[1] = v31;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, &v43, &v45, &v41);
    v43.i64[0] = v22;
    v43.i64[1] = v30;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, &v43, &v45, &v41);
    v43.i64[0] = v31;
    v43.i64[1] = v22;
  }

  geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, &v43, &v45, &v41);
}

void *geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::init(void *result, unint64_t a2)
{
  v2 = result;
  result[4] = 0;
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = 151 * v3;
  v5 = ((151 * v3) >> 7) + 15;
  *result = 0;
  result[1] = 0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) == 0)
  {
    goto LABEL_18;
  }

  if ((((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0) <= 0x40)
  {
    v6 = 64;
  }

  else
  {
    v6 = ((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0;
  }

  *result = malloc_type_aligned_alloc(0x40uLL, v6, 0x1000040451B5BE8uLL);
  if (v4 >= 0x80)
  {
    v7 = 0;
    *&v8 = -1;
    *(&v8 + 1) = -1;
    do
    {
      *(*v2 + 16 * v7++) = v8;
    }

    while (v5 >> 4 != v7);
  }

  v9 = ((24 * v2[2] + 63) & 0xFFFFFFFFFFFFFFC0) <= 0x40 ? 64 : (24 * v2[2] + 63) & 0xFFFFFFFFFFFFFFC0;
  result = malloc_type_aligned_alloc(0x40uLL, v9, 0x1000040504FFAC1uLL);
  v2[1] = result;
  if (v2[2])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v2[1] + v10);
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      ++v11;
      v13 = v2[2];
      v10 += 24;
    }

    while (v11 < v13);
  }

  else
  {
LABEL_18:
    v13 = 0;
  }

  v2[3] = 0;
  v2[4] = v13;
  return result;
}

void std::vector<geom::indexed_priority_queue<unsigned long,double>::key,std::allocator<geom::indexed_priority_queue<unsigned long,double>::key>>::reserve(__int128 **a1, unint64_t a2)
{
  if (a2 > a1[2] - *a1)
  {
    if (!(a2 >> 60))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void geom::indexed_priority_queue<unsigned long,double>::push_or_change_cost(__int128 **a1, double *a2)
{
  v4 = *a2;
  v5 = a1[3];
  v6 = *(v5 + *a2);
  if (v6 == -1)
  {
    v19 = *a1;
    v18 = a1[1];
    v20 = v18 - *a1;
    v21 = v20 >> 4;
    *(v5 + v4) = v20 >> 4;
    v22 = a1[2];
    if (v18 >= v22)
    {
      v31 = v21 + 1;
      if ((v21 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v32 = v22 - v19;
      if (v32 >> 3 > v31)
      {
        v31 = v32 >> 3;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFF0)
      {
        v33 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v33);
      }

      *(16 * v21) = *a2;
      v23 = (16 * v21 + 16);
      v34 = *a1;
      v35 = a1[1];
      v36 = (16 * v21 + *a1 - v35);
      if (*a1 != v35)
      {
        v37 = (16 * v21 + *a1 - v35);
        do
        {
          v38 = *v34++;
          *v37++ = v38;
        }

        while (v34 != v35);
        v34 = *a1;
      }

      *a1 = v36;
      a1[1] = v23;
      a1[2] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v18 = *a2;
      v23 = v18 + 1;
    }

    a1[1] = v23;
    if (v18 != v19)
    {
      v39 = *a1;
      v40 = *(*a1 + v20 + 8);
      do
      {
        v41 = v21 - 1;
        v42 = (v21 - 1) >> 1;
        v43 = &v39[v42];
        v44 = *(v43 + 1);
        if (v44 <= v40)
        {
          break;
        }

        v45 = &v39[v21];
        v46 = *v45;
        *v45 = *v43;
        *(v45 + 1) = v44;
        *v43 = v46;
        v47 = a1[3];
        *(v47 + *v45) = v21;
        *(v43 + 1) = v40;
        *(v47 + *v43) = v42;
        v21 = (v21 - 1) >> 1;
      }

      while (v41 >= 2);
    }
  }

  else
  {
    v7 = *a1;
    v8 = &(*a1)[v6];
    v9 = *(v8 + 1);
    v10 = a2[1];
    if (v9 <= v10)
    {
      *v8 = v4;
      *(v8 + 1) = v10;
      if (v9 < v10)
      {
        v24 = a1[1] - v7;
        for (i = v6; ; v6 = i)
        {
          v26 = (2 * v6) | 1;
          v27 = &v7[v6];
          if (v26 < v24)
          {
            v10 = v27[1];
            if (*(&v7[v26] + 1) >= v10)
            {
              i = v6;
            }

            else
            {
              i = (2 * v6) | 1;
            }
          }

          v28 = 2 * v6 + 2;
          if (v28 < v24 && *(&v7[v28] + 1) < *(&v7[i] + 1))
          {
            i = 2 * v6 + 2;
          }

          if (i == v6)
          {
            break;
          }

          v29 = &v7[i];
          v30 = *v27;
          *v27 = *v29;
          v27[1] = v29[1];
          *v29 = v30;
          v29[1] = v10;
          *(v5 + *v27) = v6;
          *(v5 + *v29) = i;
        }
      }
    }

    else
    {
      *v8 = v4;
      *(v8 + 1) = v10;
      if (v6)
      {
        do
        {
          v11 = v6 - 1;
          v12 = (v6 - 1) >> 1;
          v13 = &v7[v12];
          v14 = v13[1];
          if (v14 <= a2[1])
          {
            break;
          }

          v15 = &v7[v6];
          v16 = *v15;
          v17 = *(v15 + 1);
          *v15 = *v13;
          v15[1] = v14;
          *v13 = v16;
          *(v5 + *v15) = v6;
          *(v13 + 1) = v17;
          *(v5 + *v13) = v12;
          v6 = (v6 - 1) >> 1;
        }

        while (v11 >= 2);
      }
    }
  }
}

void std::vector<geom::indexed_priority_queue<unsigned long,double>::key,std::allocator<geom::indexed_priority_queue<unsigned long,double>::key>>::resize(__int128 **result, unint64_t a2)
{
  v2 = result[1] - *result;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = &(*result)[a2];
    }
  }

  else
  {
    std::vector<geom::indexed_priority_queue<unsigned long,double>::key,std::allocator<geom::indexed_priority_queue<unsigned long,double>::key>>::__append(result, a2 - v2);
  }
}

void std::vector<geom::indexed_priority_queue<unsigned long,double>::key,std::allocator<geom::indexed_priority_queue<unsigned long,double>::key>>::__append(__int128 **a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (a2 <= v5 - v4)
  {
    if (a2)
    {
      v11 = &v4[a2];
      do
      {
        *v4 = -1;
        *(v4++ + 1) = 0x7FF0000000000000;
      }

      while (v4 != v11);
      v4 = v11;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v12 = (16 * v8 + 16 * a2);
    v13 = (16 * v8);
    do
    {
      *v13 = -1;
      *(v13++ + 1) = 0x7FF0000000000000;
    }

    while (v13 != v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = (16 * v8 + *a1 - v15);
    if (v15 != *a1)
    {
      v17 = (16 * v8 + *a1 - v15);
      do
      {
        v18 = *v14;
        v14 += 16;
        *v17++ = v18;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v12;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::grow_to_count(__int128 *result)
{
  v2 = *(result + 2);
  v1 = *(result + 3);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    goto LABEL_6;
  }

  if (!*(result + 4))
  {
LABEL_6:
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::do_resize(result, v1);
  }
}

void geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::do_resize(__int128 *a1, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::init(&v20, a2);
  v18[0] = a1;
  v3 = *(a1 + 2);
  if (v3 >= 0x10)
  {
    v4 = 0;
    v5 = *a1;
    v6 = v3 >> 4;
    while (1)
    {
      v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v18[1] = v7 ^ 0xFFFFLL;
      if (v7 != 0xFFFFLL)
      {
        break;
      }

      v4 -= 16;
      ++v5;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    v8 = __clz(__rbit64(v7 ^ 0xFFFFLL));
    v9 = v8 - v4;
    v19 = v8 - v4;
    if (v8 + 1 != v4)
    {
      do
      {
        v10 = *(v18[0] + 8) + 24 * v9;
        v11 = *(v10 + 16);
        v16 = *v10;
        v17 = v11;
        geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::internal_add<unsigned long>(&v20, &v16, v11);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(v18);
        v9 = v19;
      }

      while (v19 != -1);
    }
  }

LABEL_10:
  if (&v20 != a1)
  {
    v12 = v21;
    v13 = *a1;
    v14 = a1[1];
    *a1 = v20;
    a1[1] = v12;
    v20 = v13;
    v21 = v14;
    v15 = *(a1 + 4);
    *(a1 + 4) = v22;
    v22 = v15;
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v20);
}

int64x2_t geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::internal_add<unsigned long>(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!a1[4])
  {
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::grow_to_count(a1);
  }

  v6 = a2[1];
  v7 = *a2 << 6;
  v8 = *a2 >> 2;
  v9 = a1[2] >> 4;
  v10 = ((v6 + v7 + v8 - 0x61C8864680B583E9) ^ *a2) % v9;
  v11 = *a1;
  v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v10)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v12 >= 0x40)
  {
    do
    {
      if (v10 + 1 == v9)
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }

      v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v10)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v12 > 0x3F);
  }

  v13 = v11 + 16 * v10;
  v14 = ((v6 + v7 + v8 + 23) ^ *a2) & 0x7F;
  v15 = *(v13 + v12);
  *(v13 + v12) = v14;
  v16 = a1[1] + 24 * (v12 + 16 * v10);
  *v16 = *a2;
  *(v16 + 16) = a3;
  if (v15 == 255)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v18.i64[1] = v17;
  result = vaddq_s64(*(a1 + 3), v18);
  *(a1 + 3) = result;
  return result;
}

uint64_t geom::is_triangle_incident_to_vertex_concave_free<double>(uint64_t *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, double a6)
{
  if (*(a2 + 8) < 3uLL)
  {
    return 0;
  }

  v8 = *a1;
  v7 = a1[1];
  if (v7 == a2 && v8 == 1)
  {
    v10 = 1;
    v12 = a1[1];
  }

  else
  {
    if (*(*(v7 + 16) + 32 * v8 + 16) == -1)
    {
      v10 = *a1;
    }

    else
    {
      v10 = *(*(v7 + 16) + 32 * v8 + 16);
    }

    v11 = v7 == a2 && v10 == 1;
    v12 = a1[1];
    if (v11)
    {
      v10 = *(*(a2 + 16) + 16);
      v12 = a2;
    }
  }

  if (v7 != a2)
  {
    goto LABEL_57;
  }

  if (v8 == 1)
  {
    v13 = 1;
LABEL_23:
    a2 = a1[1];
    goto LABEL_24;
  }

  v42 = *(a2 + 16);
  if (v8 != *(v42 + 16))
  {
LABEL_57:
    if (*(*(v7 + 16) + 32 * v8 + 24))
    {
      v13 = *(*(v7 + 16) + 32 * v8 + 24);
    }

    else
    {
      v13 = *a1;
    }

    goto LABEL_23;
  }

  v43 = *(v42 + 56);
  if (v43 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v43;
  }

LABEL_24:
  v14 = *(a5 + 16);
  v15 = *(v14 + 24);
  if (v15 != 1)
  {
    v16 = *a4;
    v17 = *(*a3 + 8 * *(*(v7 + 16) + 32 * v8));
    v18 = *(*a3 + 8 * *(*(v12 + 16) + 32 * v10));
    v19 = *(*a4 + 16 * *(*a3 + 8 * *(*(a2 + 16) + 32 * v13)));
    v20 = vdupq_lane_s64(COERCE__INT64(0.0 - a6), 0);
    while (1)
    {
      v21 = *(v16 + 16 * *(*a3 + 8 * *(*(*(v14 + 40 * v15 + 8) + 16) + 32 * *(v14 + 40 * v15))));
      v22 = vsubq_f64(v21, v19);
      if (sqrt(vaddvq_f64(vmulq_f64(v22, v22))) > a6)
      {
        v23 = *(v16 + 16 * v17);
        v24 = vsubq_f64(v21, v23);
        if (sqrt(vaddvq_f64(vmulq_f64(v24, v24))) > a6)
        {
          v25 = *(v16 + 16 * v18);
          v26 = vsubq_f64(v21, v25);
          if (sqrt(vaddvq_f64(vmulq_f64(v26, v26))) > a6)
          {
            v27 = vzip1q_s64(v19, v25);
            v28 = vzip2q_s64(v19, v25);
            v29 = vmlaq_f64(vmulq_f64(vsubq_f64(vdupq_lane_s64(*&v21.f64[0], 0), v27), vnegq_f64(vsubq_f64(vzip2q_s64(v23, v19), v28))), vsubq_f64(vdupq_laneq_s64(v21, 1), v28), vsubq_f64(vzip1q_s64(v23, v19), v27));
            v30 = vmovn_s64(vbicq_s8(vcgeq_f64(v20, v29), vceqzq_f64(v29)));
            if ((veor_s8(v30, vdup_lane_s32(v30, 1)).u8[0] & 1) == 0 || ((v31 = fabs(v29.f64[1]), v29.f64[1] != 0.0) ? (v32 = v31 > a6) : (v32 = 0), !v32 || ((v33 = fabs(v29.f64[0]), v29.f64[0] != 0.0) ? (v34 = v33 > a6) : (v34 = 0), !v34)))
            {
              v35 = vsubq_f64(v25, v23);
              v36 = -v35.f64[1] * v24.f64[0] + v35.f64[0] * v24.f64[1];
              v37 = fabs(v36);
              if (v36 == 0.0 || v37 <= a6)
              {
                break;
              }

              v39 = 0.0 - a6 >= v36;
              v40 = vaddvq_f64(v29);
              v41 = v40 != 0.0;
              if (v40 <= a6)
              {
                v41 = 0;
              }

              if ((v39 ^ v41))
              {
                break;
              }
            }
          }
        }
      }

      if (*(v14 + 40 * v15 + 24) != -1)
      {
        v15 = *(v14 + 40 * v15 + 24);
      }

      if (v15 == 1)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator,std::allocator<std::allocator>>::__append(void *a1, unint64_t a2, _OWORD *a3)
{
  v4 = a1[1];
  v5 = a1[2];
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = 16 * a2;
      v12 = &v4[a2];
      do
      {
        *v4++ = *a3;
        v11 -= 16;
      }

      while (v11);
      v4 = v12;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v19 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator>>(a1, v10);
    }

    v13 = (16 * v8);
    __p = 0;
    v16 = 16 * v8;
    v18 = 0;
    v14 = 16 * a2;
    do
    {
      *v13++ = *a3;
      v14 -= 16;
    }

    while (v14);
    v17 = 16 * v8 + 16 * a2;
    std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator,std::allocator<std::allocator>>::__swap_out_circular_buffer(a1, &__p);
    if (v17 != v16)
    {
      v17 += (v16 - v17 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

uint64_t std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator,std::allocator<std::allocator>>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      *v5 = -1;
      v5[1] = 0;
      v6 = v2[1];
      *v5 = *v2;
      v5[1] = v6;
      v5 += 2;
      *v2 = -1;
      v2[1] = 0;
      v2 += 2;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v7 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v7;
  v8 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v77 = *(a2 - 1);
        v78 = *v9;
        if (COERCE_FLOAT(*(**a3 + 8 * *(*a3[1] + 8 * v77))) > COERCE_FLOAT(*(**a3 + 8 * *(*a3[1] + 8 * *v9))))
        {
          *v9 = v77;
          *(a2 - 1) = v78;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v79 = v9 + 1;
      v80 = v9[1];
      v81 = v9 + 2;
      v82 = v9[2];
      v83 = *v9;
      v84 = *a3[1];
      v85 = **a3;
      v86 = *(v85 + 8 * *(v84 + 8 * v80));
      v87 = *(v85 + 8 * *(v84 + 8 * v82));
      if (*&v86 <= COERCE_FLOAT(*(v85 + 8 * *(v84 + 8 * *v9))))
      {
        if (*&v87 <= *&v86)
        {
          goto LABEL_104;
        }

        *v79 = v82;
        *v81 = v80;
        v88 = v9;
        v89 = v9 + 1;
        result = v80;
        if (COERCE_FLOAT(*(v85 + 8 * *(v84 + 8 * v82))) > COERCE_FLOAT(*(v85 + 8 * *(v84 + 8 * v83))))
        {
          goto LABEL_100;
        }
      }

      else
      {
        v88 = v9;
        v89 = v9 + 2;
        result = *v9;
        if (*&v87 <= *&v86)
        {
          *v9 = v80;
          v9[1] = v83;
          v88 = v9 + 1;
          v89 = v9 + 2;
          result = v83;
          if (COERCE_FLOAT(*(v85 + 8 * *(v84 + 8 * v82))) <= COERCE_FLOAT(*(v85 + 8 * *(v84 + 8 * v83))))
          {
LABEL_104:
            v80 = v82;
            goto LABEL_105;
          }
        }

LABEL_100:
        *v88 = v82;
        *v89 = v83;
        v80 = result;
      }

LABEL_105:
      v92 = *(a2 - 1);
      if (COERCE_FLOAT(*(v85 + 8 * *(v84 + 8 * v92))) > COERCE_FLOAT(*(v85 + 8 * *(v84 + 8 * v80))))
      {
        *v81 = v92;
        *(a2 - 1) = v80;
        v93 = *v81;
        v94 = *v79;
        if (COERCE_FLOAT(*(v85 + 8 * *(v84 + 8 * v93))) > COERCE_FLOAT(*(v85 + 8 * *(v84 + 8 * v94))))
        {
          v9[1] = v93;
          v9[2] = v94;
          v95 = *v9;
          if (COERCE_FLOAT(*(v85 + 8 * *(v84 + 8 * v93))) > COERCE_FLOAT(*(v85 + 8 * *(v84 + 8 * *v9))))
          {
            *v9 = v93;
            v9[1] = v95;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v64 = v9 + 1;
      v65 = v9[1];
      v67 = v9 + 2;
      v66 = v9[2];
      v68 = *v9;
      v69 = *a3[1];
      v70 = **a3;
      v71 = *(v70 + 8 * *(v69 + 8 * v65));
      v72 = *(v70 + 8 * *(v69 + 8 * v66));
      if (*&v71 <= COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * *v9))))
      {
        if (*&v72 <= *&v71)
        {
          v75 = *v9;
          v68 = v9[1];
        }

        else
        {
          *v64 = v66;
          *v67 = v65;
          v73 = v9;
          v74 = v9 + 1;
          v75 = v66;
          result = v68;
          v76 = v65;
          if (COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v66))) > COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v68))))
          {
            goto LABEL_113;
          }

          v75 = v68;
          v68 = v66;
          v66 = v65;
        }
      }

      else
      {
        if (*&v72 > *&v71)
        {
          v73 = v9;
          v74 = v9 + 2;
          v75 = v9[2];
          result = v9[1];
          v76 = *v9;
          goto LABEL_113;
        }

        *v9 = v65;
        v9[1] = v68;
        v73 = v9 + 1;
        v74 = v9 + 2;
        v75 = v65;
        result = v66;
        v76 = v68;
        if (COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v66))) <= COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v68))))
        {
          v75 = v65;
        }

        else
        {
LABEL_113:
          *v73 = v66;
          *v74 = v68;
          v68 = result;
          v66 = v76;
        }
      }

      v97 = v9[3];
      if (COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v97))) <= COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v66))))
      {
        v66 = v9[3];
      }

      else
      {
        v9[2] = v97;
        v9[3] = v66;
        if (COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v97))) > COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v68))))
        {
          *v64 = v97;
          *v67 = v68;
          if (COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v97))) > COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v75))))
          {
            *v9 = v97;
            v9[1] = v75;
          }
        }
      }

      v98 = *(a2 - 1);
      if (COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v98))) > COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v66))))
      {
        v9[3] = v98;
        *(a2 - 1) = v66;
        v100 = v9[2];
        v99 = v9[3];
        if (COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v99))) > COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v100))))
        {
          v9[2] = v99;
          v9[3] = v100;
          v101 = v9[1];
          if (COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v99))) > COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v101))))
          {
            v9[1] = v99;
            v9[2] = v101;
            v91 = *v9;
            if (COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * v99))) > COERCE_FLOAT(*(v70 + 8 * *(v69 + 8 * *v9))))
            {
              *v9 = v99;
              goto LABEL_126;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *a3[1];
    v16 = **a3;
    v17 = *(a2 - 1);
    v18 = *(v16 + 8 * *(v15 + 8 * v17));
    if (v12 >= 0x81)
    {
      v19 = *v13;
      v20 = *v9;
      v21 = *(v16 + 8 * *(v15 + 8 * *v13));
      v22 = vcgt_f32(v18, v21).u8[0];
      if (v21.f32[0] <= *(v16 + 8 * *(v15 + 8 * *v9)))
      {
        if (v22)
        {
          *v13 = v17;
          *(a2 - 1) = v19;
          v27 = *v9;
          if (COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * *v13))) > COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * *v9))))
          {
            *v9 = *v13;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v22)
        {
          *v9 = v17;
          goto LABEL_29;
        }

        *v9 = v19;
        *v13 = v20;
        v29 = *(a2 - 1);
        if (COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v29))) > COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v20))))
        {
          *v13 = v29;
LABEL_29:
          *(a2 - 1) = v20;
        }
      }

      v30 = v13 - 1;
      v31 = *(v13 - 1);
      v32 = v9[1];
      v33 = *(v16 + 8 * *(v15 + 8 * v31));
      v34 = *(a2 - 2);
      v35 = *(v16 + 8 * *(v15 + 8 * v34));
      if (*&v33 <= COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v32))))
      {
        if (*&v35 > *&v33)
        {
          *v30 = v34;
          *(a2 - 2) = v31;
          v36 = v9[1];
          if (COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * *v30))) > COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v36))))
          {
            v9[1] = *v30;
            *v30 = v36;
          }
        }
      }

      else
      {
        if (*&v35 > *&v33)
        {
          v9[1] = v34;
          goto LABEL_43;
        }

        v9[1] = v31;
        *v30 = v32;
        v38 = *(a2 - 2);
        if (COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v38))) > COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v32))))
        {
          *v30 = v38;
LABEL_43:
          *(a2 - 2) = v32;
        }
      }

      v41 = v13[1];
      v39 = v13 + 1;
      v40 = v41;
      v42 = v9[2];
      v43 = *(v16 + 8 * *(v15 + 8 * v41));
      v44 = *(a2 - 3);
      v45 = *(v16 + 8 * *(v15 + 8 * v44));
      if (*&v43 <= COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v42))))
      {
        if (*&v45 > *&v43)
        {
          *v39 = v44;
          *(a2 - 3) = v40;
          v46 = v9[2];
          if (COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * *v39))) > COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v46))))
          {
            v9[2] = *v39;
            *v39 = v46;
          }
        }
      }

      else
      {
        if (*&v45 > *&v43)
        {
          v9[2] = v44;
          goto LABEL_52;
        }

        v9[2] = v40;
        *v39 = v42;
        v47 = *(a2 - 3);
        if (COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v47))) > COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v42))))
        {
          *v39 = v47;
LABEL_52:
          *(a2 - 3) = v42;
        }
      }

      v48 = *v14;
      v49 = *v30;
      v50 = *(v16 + 8 * *(v15 + 8 * *v14));
      v51 = *v39;
      v52 = *(v16 + 8 * *(v15 + 8 * *v39));
      if (*&v50 <= COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * *v30))))
      {
        if (*&v52 > *&v50)
        {
          *v14 = v51;
          *v39 = v48;
          v39 = v14;
          v48 = v49;
          if (COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v51))) > COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v49))))
          {
            goto LABEL_59;
          }

          v48 = v51;
        }
      }

      else
      {
        if (*&v52 <= *&v50)
        {
          *v30 = v48;
          *v14 = v49;
          v30 = v14;
          v48 = v51;
          if (COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v51))) <= COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v49))))
          {
            v48 = v49;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v30 = v51;
        *v39 = v49;
      }

LABEL_60:
      v53 = *v9;
      *v9 = v48;
      *v14 = v53;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v23 = *v9;
    v24 = *v13;
    v25 = *(v16 + 8 * *(v15 + 8 * *v9));
    v26 = vcgt_f32(v18, v25).u8[0];
    if (v25.f32[0] > *(v16 + 8 * *(v15 + 8 * *v14)))
    {
      if (v26)
      {
        *v14 = v17;
        goto LABEL_38;
      }

      *v14 = v23;
      *v9 = v24;
      v37 = *(a2 - 1);
      if (COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v37))) > COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * v24))))
      {
        *v9 = v37;
LABEL_38:
        *(a2 - 1) = v24;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if ((v26 & 1) == 0)
    {
      goto LABEL_39;
    }

    *v9 = v17;
    *(a2 - 1) = v23;
    v28 = *v14;
    if (COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * *v9))) <= COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * *v14))))
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v28;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * *(v9 - 1)))) <= COERCE_FLOAT(*(v16 + 8 * *(v15 + 8 * *v9))))
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned long *,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &>(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v54 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned long *,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &>(v9, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_67;
    }

    v56 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, v54, a3);
    v9 = v54 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v54 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v54;
      if (v56)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v56)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,false>(v8, v54, a3, -v11, a5 & 1);
      v9 = v54 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v57 = *v9;
  v58 = v9[1];
  v59 = *a3[1];
  v60 = **a3;
  v61 = *(v60 + 8 * *(v59 + 8 * v58));
  v62 = *(a2 - 1);
  v63 = *(v60 + 8 * *(v59 + 8 * v62));
  if (*&v61 <= COERCE_FLOAT(*(v60 + 8 * *(v59 + 8 * *v9))))
  {
    if (*&v63 <= *&v61)
    {
      return result;
    }

    v9[1] = v62;
    *(a2 - 1) = v58;
    v91 = *v9;
    v90 = v9[1];
    if (COERCE_FLOAT(*(v60 + 8 * *(v59 + 8 * v90))) <= COERCE_FLOAT(*(v60 + 8 * *(v59 + 8 * *v9))))
    {
      return result;
    }

    *v9 = v90;
LABEL_126:
    v9[1] = v91;
    return result;
  }

  if (*&v63 <= *&v61)
  {
    *v9 = v58;
    v9[1] = v57;
    v96 = *(a2 - 1);
    if (COERCE_FLOAT(*(v60 + 8 * *(v59 + 8 * v96))) <= COERCE_FLOAT(*(v60 + 8 * *(v59 + 8 * v57))))
    {
      return result;
    }

    v9[1] = v96;
  }

  else
  {
    *v9 = v62;
  }

  *(a2 - 1) = v57;
  return result;
}

uint64_t *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *a3[1];
      v6 = **a3;
      v7 = result;
      do
      {
        v9 = *v7;
        v8 = v7[1];
        v7 = v3;
        if (COERCE_FLOAT(*(v6 + 8 * *(v5 + 8 * v8))) > COERCE_FLOAT(*(v6 + 8 * *(v5 + 8 * v9))))
        {
          v10 = v4;
          while (1)
          {
            *(result + v10 + 8) = v9;
            if (!v10)
            {
              break;
            }

            v9 = *(result + v10 - 8);
            v10 -= 8;
            if (COERCE_FLOAT(*(v6 + 8 * *(v5 + 8 * v8))) <= COERCE_FLOAT(*(v6 + 8 * *(v5 + 8 * v9))))
            {
              v11 = (result + v10 + 8);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v8;
        }

        v3 = v7 + 1;
        v4 += 8;
      }

      while (v7 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3[1];
      v5 = **a3;
      do
      {
        v7 = *result;
        v6 = result[1];
        result = v3;
        if (COERCE_FLOAT(*(v5 + 8 * *(v4 + 8 * v6))) > COERCE_FLOAT(*(v5 + 8 * *(v4 + 8 * v7))))
        {
          do
          {
            *v3 = v7;
            v7 = *(v3 - 2);
            --v3;
          }

          while (COERCE_FLOAT(*(v5 + 8 * *(v4 + 8 * v6))) > COERCE_FLOAT(*(v5 + 8 * *(v4 + 8 * v7))));
          *v3 = v6;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned long *,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = *a3[1];
  v5 = **a3;
  v6 = *(v5 + 8 * *(v4 + 8 * *a1));
  if (*&v6 <= COERCE_FLOAT(*(v5 + 8 * *(v4 + 8 * *(a2 - 1)))))
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= a2)
      {
        break;
      }

      ++v9;
    }

    while (*&v6 <= COERCE_FLOAT(*(v5 + 8 * *(v4 + 8 * *v7))));
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (*&v6 <= COERCE_FLOAT(*(v5 + 8 * *(v4 + 8 * v8))));
  }

  if (v7 < a2)
  {
    do
    {
      v10 = *--a2;
    }

    while (*&v6 > COERCE_FLOAT(*(v5 + 8 * *(v4 + 8 * v10))));
  }

  if (v7 < a2)
  {
    v11 = *v7;
    v12 = *a2;
    do
    {
      *v7 = v12;
      *a2 = v11;
      v13 = *(v5 + 8 * *(v4 + 8 * v3));
      do
      {
        v14 = v7[1];
        ++v7;
        v11 = v14;
      }

      while (*&v13 <= COERCE_FLOAT(*(v5 + 8 * *(v4 + 8 * v14))));
      do
      {
        v15 = *--a2;
        v12 = v15;
      }

      while (*&v13 > COERCE_FLOAT(*(v5 + 8 * *(v4 + 8 * v15))));
    }

    while (v7 < a2);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v3;
  return v7;
}

uint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned long *,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a3[1];
  v6 = **a3;
  v7 = *(v6 + 8 * *(v5 + 8 * *a1));
  do
  {
    v8 = a1[++v3];
  }

  while (COERCE_FLOAT(*(v6 + 8 * *(v5 + 8 * v8))) > *&v7);
  v9 = &a1[v3];
  v10 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (COERCE_FLOAT(*(v6 + 8 * *(v5 + 8 * v12))) <= *&v7);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (COERCE_FLOAT(*(v6 + 8 * *(v5 + 8 * v11))) <= *&v7);
  }

  if (v9 < a2)
  {
    v13 = *a2;
    v14 = &a1[v3];
    v15 = a2;
    do
    {
      *v14 = v13;
      *v15 = v8;
      v16 = *(v6 + 8 * *(v5 + 8 * v4));
      do
      {
        v17 = v14[1];
        ++v14;
        v8 = v17;
      }

      while (COERCE_FLOAT(*(v6 + 8 * *(v5 + 8 * v17))) > *&v16);
      do
      {
        v18 = *--v15;
        v13 = v18;
      }

      while (COERCE_FLOAT(*(v6 + 8 * *(v5 + 8 * v18))) <= *&v16);
    }

    while (v14 < v15);
    v10 = v14 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v4;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v21 = *a1;
      v22 = a1[1];
      v23 = *a3[1];
      v24 = **a3;
      v25 = *(v24 + 8 * *(v23 + 8 * v22));
      v26 = *(a2 - 1);
      v27 = *(v24 + 8 * *(v23 + 8 * v26));
      if (*&v25 > COERCE_FLOAT(*(v24 + 8 * *(v23 + 8 * *a1))))
      {
        if (*&v27 <= *&v25)
        {
          *a1 = v22;
          a1[1] = v21;
          v64 = *(a2 - 1);
          if (COERCE_FLOAT(*(v24 + 8 * *(v23 + 8 * v64))) <= COERCE_FLOAT(*(v24 + 8 * *(v23 + 8 * v21))))
          {
            return 1;
          }

          a1[1] = v64;
        }

        else
        {
          *a1 = v26;
        }

        *(a2 - 1) = v21;
        return 1;
      }

      if (*&v27 <= *&v25)
      {
        return 1;
      }

      a1[1] = v26;
      *(a2 - 1) = v22;
      v51 = *a1;
      v50 = a1[1];
      if (COERCE_FLOAT(*(v24 + 8 * *(v23 + 8 * v50))) <= COERCE_FLOAT(*(v24 + 8 * *(v23 + 8 * *a1))))
      {
        return 1;
      }

      *a1 = v50;
LABEL_70:
      a1[1] = v51;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_16;
      }

      v5 = a1 + 1;
      v6 = a1[1];
      v8 = a1 + 2;
      v7 = a1[2];
      v9 = *a1;
      v10 = *a3[1];
      v11 = **a3;
      v12 = *(v11 + 8 * *(v10 + 8 * v6));
      v13 = *(v11 + 8 * *(v10 + 8 * v7));
      if (*&v12 <= COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * *a1))))
      {
        if (*&v13 <= *&v12)
        {
          v16 = *a1;
          v9 = a1[1];
          goto LABEL_60;
        }

        *v5 = v7;
        *v8 = v6;
        v14 = a1;
        v15 = a1 + 1;
        v16 = v7;
        v17 = v9;
        v18 = v6;
        if (COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v7))) <= COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v9))))
        {
          v16 = v9;
          v9 = v7;
          v7 = v6;
LABEL_60:
          v65 = a1[3];
          if (COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v65))) <= COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v7))))
          {
            v7 = a1[3];
          }

          else
          {
            a1[2] = v65;
            a1[3] = v7;
            if (COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v65))) > COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v9))))
            {
              *v5 = v65;
              *v8 = v9;
              if (COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v65))) > COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v16))))
              {
                *a1 = v65;
                a1[1] = v16;
              }
            }
          }

          v66 = *(a2 - 1);
          if (COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v66))) <= COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v7))))
          {
            return 1;
          }

          a1[3] = v66;
          *(a2 - 1) = v7;
          v68 = a1[2];
          v67 = a1[3];
          if (COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v67))) <= COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v68))))
          {
            return 1;
          }

          a1[2] = v67;
          a1[3] = v68;
          v69 = a1[1];
          if (COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v67))) <= COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v69))))
          {
            return 1;
          }

          a1[1] = v67;
          a1[2] = v69;
          v51 = *a1;
          if (COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v67))) <= COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * *a1))))
          {
            return 1;
          }

          *a1 = v67;
          goto LABEL_70;
        }
      }

      else if (*&v13 <= *&v12)
      {
        *a1 = v6;
        a1[1] = v9;
        v14 = a1 + 1;
        v15 = a1 + 2;
        v16 = v6;
        v17 = v7;
        v18 = v9;
        if (COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v7))) <= COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v9))))
        {
          v16 = v6;
          goto LABEL_60;
        }
      }

      else
      {
        v14 = a1;
        v15 = a1 + 2;
        v16 = a1[2];
        v17 = a1[1];
        v18 = *a1;
      }

      *v14 = v7;
      *v15 = v9;
      v9 = v17;
      v7 = v18;
      goto LABEL_60;
    }

    v38 = a1 + 1;
    v39 = a1[1];
    v40 = a1 + 2;
    v41 = a1[2];
    v42 = *a1;
    v43 = *a3[1];
    v44 = **a3;
    v45 = *(v44 + 8 * *(v43 + 8 * v39));
    v46 = *(v44 + 8 * *(v43 + 8 * v41));
    if (*&v45 <= COERCE_FLOAT(*(v44 + 8 * *(v43 + 8 * *a1))))
    {
      if (*&v46 <= *&v45)
      {
LABEL_47:
        v39 = v41;
        goto LABEL_48;
      }

      *v38 = v41;
      *v40 = v39;
      v47 = a1;
      v48 = a1 + 1;
      v49 = v39;
      if (COERCE_FLOAT(*(v44 + 8 * *(v43 + 8 * v41))) <= COERCE_FLOAT(*(v44 + 8 * *(v43 + 8 * v42))))
      {
LABEL_48:
        v60 = *(a2 - 1);
        if (COERCE_FLOAT(*(v44 + 8 * *(v43 + 8 * v60))) > COERCE_FLOAT(*(v44 + 8 * *(v43 + 8 * v39))))
        {
          *v40 = v60;
          *(a2 - 1) = v39;
          v61 = *v40;
          v62 = *v38;
          if (COERCE_FLOAT(*(v44 + 8 * *(v43 + 8 * v61))) > COERCE_FLOAT(*(v44 + 8 * *(v43 + 8 * v62))))
          {
            a1[1] = v61;
            a1[2] = v62;
            v63 = *a1;
            if (COERCE_FLOAT(*(v44 + 8 * *(v43 + 8 * v61))) > COERCE_FLOAT(*(v44 + 8 * *(v43 + 8 * *a1))))
            {
              *a1 = v61;
              a1[1] = v63;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v47 = a1;
      v48 = a1 + 2;
      v49 = *a1;
      if (*&v46 <= *&v45)
      {
        *a1 = v39;
        a1[1] = v42;
        v47 = a1 + 1;
        v48 = a1 + 2;
        v49 = v42;
        if (COERCE_FLOAT(*(v44 + 8 * *(v43 + 8 * v41))) <= COERCE_FLOAT(*(v44 + 8 * *(v43 + 8 * v42))))
        {
          goto LABEL_47;
        }
      }
    }

    *v47 = v41;
    *v48 = v42;
    v39 = v49;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v19 = *(a2 - 1);
    v20 = *a1;
    if (COERCE_FLOAT(*(**a3 + 8 * *(*a3[1] + 8 * v19))) > COERCE_FLOAT(*(**a3 + 8 * *(*a3[1] + 8 * *a1))))
    {
      *a1 = v19;
      *(a2 - 1) = v20;
    }

    return 1;
  }

LABEL_16:
  v28 = a1 + 2;
  v29 = a1[2];
  v30 = a1[1];
  v31 = *a1;
  v32 = *a3[1];
  v33 = **a3;
  v34 = *(v33 + 8 * *(v32 + 8 * v30));
  v35 = *(v33 + 8 * *(v32 + 8 * v29));
  if (*&v34 > COERCE_FLOAT(*(v33 + 8 * *(v32 + 8 * *a1))))
  {
    v36 = a1;
    v37 = a1 + 2;
    if (*&v35 <= *&v34)
    {
      *a1 = v30;
      a1[1] = v31;
      v36 = a1 + 1;
      v37 = a1 + 2;
      if (COERCE_FLOAT(*(v33 + 8 * *(v32 + 8 * v29))) <= COERCE_FLOAT(*(v33 + 8 * *(v32 + 8 * v31))))
      {
        goto LABEL_30;
      }
    }

LABEL_29:
    *v36 = v29;
    *v37 = v31;
    goto LABEL_30;
  }

  if (*&v35 > *&v34)
  {
    a1[1] = v29;
    *v28 = v30;
    v36 = a1;
    v37 = a1 + 1;
    if (COERCE_FLOAT(*(v33 + 8 * *(v32 + 8 * v29))) > COERCE_FLOAT(*(v33 + 8 * *(v32 + 8 * v31))))
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  v52 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v53 = 0;
  for (i = 24; ; i += 8)
  {
    v55 = *v52;
    v56 = *v28;
    if (COERCE_FLOAT(*(v33 + 8 * *(v32 + 8 * *v52))) > COERCE_FLOAT(*(v33 + 8 * *(v32 + 8 * v56))))
    {
      v57 = i;
      while (1)
      {
        *(a1 + v57) = v56;
        v58 = v57 - 8;
        if (v57 == 8)
        {
          break;
        }

        v56 = *(a1 + v57 - 16);
        v57 -= 8;
        if (COERCE_FLOAT(*(v33 + 8 * *(v32 + 8 * v55))) <= COERCE_FLOAT(*(v33 + 8 * *(v32 + 8 * v56))))
        {
          v59 = (a1 + v58);
          goto LABEL_38;
        }
      }

      v59 = a1;
LABEL_38:
      *v59 = v55;
      if (++v53 == 8)
      {
        break;
      }
    }

    v28 = v52++;
    if (v52 == a2)
    {
      return 1;
    }
  }

  return v52 + 1 == a2;
}

uint64_t *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if (COERCE_FLOAT(*(**a4 + 8 * *(*a4[1] + 8 * *v12))) > COERCE_FLOAT(*(**a4 + 8 * *(*a4[1] + 8 * *a1))))
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      v10 = *a2;
      if (v6 + 2 >= a3)
      {
        v11 = *a2[1];
        v12 = *v10;
      }

      else
      {
        v11 = *a2[1];
        v12 = *v10;
        if (COERCE_FLOAT(*(v12 + 8 * *(v11 + 8 * *v8))) > COERCE_FLOAT(*(v12 + 8 * *(v11 + 8 * v8[1]))))
        {
          ++v8;
          v7 = v9;
        }
      }

      v13 = *v8;
      v14 = *a4;
      if (COERCE_FLOAT(*(v12 + 8 * *(v11 + 8 * *v8))) <= COERCE_FLOAT(*(v12 + 8 * *(v11 + 8 * *a4))))
      {
        do
        {
          v15 = v8;
          *a4 = v13;
          if (v5 < v7)
          {
            break;
          }

          v16 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v17 = v16 + 2;
          if (v17 < a3 && COERCE_FLOAT(*(v12 + 8 * *(v11 + 8 * *v8))) > COERCE_FLOAT(*(v12 + 8 * *(v11 + 8 * v8[1]))))
          {
            ++v8;
            v7 = v17;
          }

          v13 = *v8;
          a4 = v15;
        }

        while (COERCE_FLOAT(*(v12 + 8 * *(v11 + 8 * *v8))) <= COERCE_FLOAT(*(v12 + 8 * *(v11 + 8 * v14))));
        *v15 = v14;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  do
  {
    v6 = result;
    v7 = &result[v3];
    result = v7 + 1;
    v8 = 2 * v3;
    v3 = (2 * v3) | 1;
    v9 = v8 + 2;
    if (v9 < a3)
    {
      v11 = v7[2];
      v10 = v7 + 2;
      if (COERCE_FLOAT(*(*v4 + 8 * *(*v5 + 8 * *(v10 - 1)))) > COERCE_FLOAT(*(*v4 + 8 * *(*v5 + 8 * v11))))
      {
        result = v10;
        v3 = v9;
      }
    }

    *v6 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<float>(geom::slice<geom::vector_type<float,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *a3[1];
    v11 = **a3;
    if (COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * *v5))) > COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v9))))
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * *v5))) > COERCE_FLOAT(*(v11 + 8 * *(v10 + 8 * v8))));
      *v12 = v8;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v77 = *(a2 - 1);
        v78 = *v9;
        if (*(**a3 + 16 * *(*a3[1] + 8 * v77)) > *(**a3 + 16 * *(*a3[1] + 8 * *v9)))
        {
          *v9 = v77;
          *(a2 - 1) = v78;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v79 = v9 + 1;
      v80 = v9[1];
      v81 = v9 + 2;
      v82 = v9[2];
      v83 = *v9;
      v84 = *a3[1];
      v85 = **a3;
      v86 = *(v85 + 16 * *(v84 + 8 * v80));
      v87 = *(v85 + 16 * *(v84 + 8 * v82));
      if (v86 <= *(v85 + 16 * *(v84 + 8 * *v9)))
      {
        if (v87 <= v86)
        {
          goto LABEL_104;
        }

        *v79 = v82;
        *v81 = v80;
        v88 = v9;
        v89 = v9 + 1;
        result = v80;
        if (*(v85 + 16 * *(v84 + 8 * v82)) > *(v85 + 16 * *(v84 + 8 * v83)))
        {
          goto LABEL_100;
        }
      }

      else
      {
        v88 = v9;
        v89 = v9 + 2;
        result = *v9;
        if (v87 <= v86)
        {
          *v9 = v80;
          v9[1] = v83;
          v88 = v9 + 1;
          v89 = v9 + 2;
          result = v83;
          if (*(v85 + 16 * *(v84 + 8 * v82)) <= *(v85 + 16 * *(v84 + 8 * v83)))
          {
LABEL_104:
            v80 = v82;
            goto LABEL_105;
          }
        }

LABEL_100:
        *v88 = v82;
        *v89 = v83;
        v80 = result;
      }

LABEL_105:
      v92 = *(a2 - 1);
      if (*(v85 + 16 * *(v84 + 8 * v92)) > *(v85 + 16 * *(v84 + 8 * v80)))
      {
        *v81 = v92;
        *(a2 - 1) = v80;
        v93 = *v81;
        v94 = *v79;
        if (*(v85 + 16 * *(v84 + 8 * v93)) > *(v85 + 16 * *(v84 + 8 * v94)))
        {
          v9[1] = v93;
          v9[2] = v94;
          v95 = *v9;
          if (*(v85 + 16 * *(v84 + 8 * v93)) > *(v85 + 16 * *(v84 + 8 * *v9)))
          {
            *v9 = v93;
            v9[1] = v95;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v64 = v9 + 1;
      v65 = v9[1];
      v67 = v9 + 2;
      v66 = v9[2];
      v68 = *v9;
      v69 = *a3[1];
      v70 = **a3;
      v71 = *(v70 + 16 * *(v69 + 8 * v65));
      v72 = *(v70 + 16 * *(v69 + 8 * v66));
      if (v71 <= *(v70 + 16 * *(v69 + 8 * *v9)))
      {
        if (v72 <= v71)
        {
          v75 = *v9;
          v68 = v9[1];
        }

        else
        {
          *v64 = v66;
          *v67 = v65;
          v73 = v9;
          v74 = v9 + 1;
          v75 = v66;
          result = v68;
          v76 = v65;
          if (*(v70 + 16 * *(v69 + 8 * v66)) > *(v70 + 16 * *(v69 + 8 * v68)))
          {
            goto LABEL_113;
          }

          v75 = v68;
          v68 = v66;
          v66 = v65;
        }
      }

      else
      {
        if (v72 > v71)
        {
          v73 = v9;
          v74 = v9 + 2;
          v75 = v9[2];
          result = v9[1];
          v76 = *v9;
          goto LABEL_113;
        }

        *v9 = v65;
        v9[1] = v68;
        v73 = v9 + 1;
        v74 = v9 + 2;
        v75 = v65;
        result = v66;
        v76 = v68;
        if (*(v70 + 16 * *(v69 + 8 * v66)) <= *(v70 + 16 * *(v69 + 8 * v68)))
        {
          v75 = v65;
        }

        else
        {
LABEL_113:
          *v73 = v66;
          *v74 = v68;
          v68 = result;
          v66 = v76;
        }
      }

      v97 = v9[3];
      if (*(v70 + 16 * *(v69 + 8 * v97)) <= *(v70 + 16 * *(v69 + 8 * v66)))
      {
        v66 = v9[3];
      }

      else
      {
        v9[2] = v97;
        v9[3] = v66;
        if (*(v70 + 16 * *(v69 + 8 * v97)) > *(v70 + 16 * *(v69 + 8 * v68)))
        {
          *v64 = v97;
          *v67 = v68;
          if (*(v70 + 16 * *(v69 + 8 * v97)) > *(v70 + 16 * *(v69 + 8 * v75)))
          {
            *v9 = v97;
            v9[1] = v75;
          }
        }
      }

      v98 = *(a2 - 1);
      if (*(v70 + 16 * *(v69 + 8 * v98)) > *(v70 + 16 * *(v69 + 8 * v66)))
      {
        v9[3] = v98;
        *(a2 - 1) = v66;
        v100 = v9[2];
        v99 = v9[3];
        if (*(v70 + 16 * *(v69 + 8 * v99)) > *(v70 + 16 * *(v69 + 8 * v100)))
        {
          v9[2] = v99;
          v9[3] = v100;
          v101 = v9[1];
          if (*(v70 + 16 * *(v69 + 8 * v99)) > *(v70 + 16 * *(v69 + 8 * v101)))
          {
            v9[1] = v99;
            v9[2] = v101;
            v91 = *v9;
            if (*(v70 + 16 * *(v69 + 8 * v99)) > *(v70 + 16 * *(v69 + 8 * *v9)))
            {
              *v9 = v99;
              goto LABEL_126;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *a3[1];
    v16 = **a3;
    v17 = *(a2 - 1);
    v18 = *(v16 + 16 * *(v15 + 8 * v17));
    if (v12 >= 0x81)
    {
      v19 = *v13;
      v20 = *v9;
      v21 = *(v16 + 16 * *(v15 + 8 * *v13));
      v22 = vmovn_s64(vcgtq_f64(v18, v21)).u8[0];
      if (v21.f64[0] <= *(v16 + 16 * *(v15 + 8 * *v9)))
      {
        if (v22)
        {
          *v13 = v17;
          *(a2 - 1) = v19;
          v27 = *v9;
          if (*(v16 + 16 * *(v15 + 8 * *v13)) > *(v16 + 16 * *(v15 + 8 * *v9)))
          {
            *v9 = *v13;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v22)
        {
          *v9 = v17;
          goto LABEL_29;
        }

        *v9 = v19;
        *v13 = v20;
        v29 = *(a2 - 1);
        if (*(v16 + 16 * *(v15 + 8 * v29)) > *(v16 + 16 * *(v15 + 8 * v20)))
        {
          *v13 = v29;
LABEL_29:
          *(a2 - 1) = v20;
        }
      }

      v30 = v13 - 1;
      v31 = *(v13 - 1);
      v32 = v9[1];
      v33 = *(v16 + 16 * *(v15 + 8 * v31));
      v34 = *(a2 - 2);
      v35 = *(v16 + 16 * *(v15 + 8 * v34));
      if (v33 <= *(v16 + 16 * *(v15 + 8 * v32)))
      {
        if (v35 > v33)
        {
          *v30 = v34;
          *(a2 - 2) = v31;
          v36 = v9[1];
          if (*(v16 + 16 * *(v15 + 8 * *v30)) > *(v16 + 16 * *(v15 + 8 * v36)))
          {
            v9[1] = *v30;
            *v30 = v36;
          }
        }
      }

      else
      {
        if (v35 > v33)
        {
          v9[1] = v34;
          goto LABEL_43;
        }

        v9[1] = v31;
        *v30 = v32;
        v38 = *(a2 - 2);
        if (*(v16 + 16 * *(v15 + 8 * v38)) > *(v16 + 16 * *(v15 + 8 * v32)))
        {
          *v30 = v38;
LABEL_43:
          *(a2 - 2) = v32;
        }
      }

      v41 = v13[1];
      v39 = v13 + 1;
      v40 = v41;
      v42 = v9[2];
      v43 = *(v16 + 16 * *(v15 + 8 * v41));
      v44 = *(a2 - 3);
      v45 = *(v16 + 16 * *(v15 + 8 * v44));
      if (v43 <= *(v16 + 16 * *(v15 + 8 * v42)))
      {
        if (v45 > v43)
        {
          *v39 = v44;
          *(a2 - 3) = v40;
          v46 = v9[2];
          if (*(v16 + 16 * *(v15 + 8 * *v39)) > *(v16 + 16 * *(v15 + 8 * v46)))
          {
            v9[2] = *v39;
            *v39 = v46;
          }
        }
      }

      else
      {
        if (v45 > v43)
        {
          v9[2] = v44;
          goto LABEL_52;
        }

        v9[2] = v40;
        *v39 = v42;
        v47 = *(a2 - 3);
        if (*(v16 + 16 * *(v15 + 8 * v47)) > *(v16 + 16 * *(v15 + 8 * v42)))
        {
          *v39 = v47;
LABEL_52:
          *(a2 - 3) = v42;
        }
      }

      v48 = *v14;
      v49 = *v30;
      v50 = *(v16 + 16 * *(v15 + 8 * *v14));
      v51 = *v39;
      v52 = *(v16 + 16 * *(v15 + 8 * *v39));
      if (v50 <= *(v16 + 16 * *(v15 + 8 * *v30)))
      {
        if (v52 > v50)
        {
          *v14 = v51;
          *v39 = v48;
          v39 = v14;
          v48 = v49;
          if (*(v16 + 16 * *(v15 + 8 * v51)) > *(v16 + 16 * *(v15 + 8 * v49)))
          {
            goto LABEL_59;
          }

          v48 = v51;
        }
      }

      else
      {
        if (v52 <= v50)
        {
          *v30 = v48;
          *v14 = v49;
          v30 = v14;
          v48 = v51;
          if (*(v16 + 16 * *(v15 + 8 * v51)) <= *(v16 + 16 * *(v15 + 8 * v49)))
          {
            v48 = v49;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v30 = v51;
        *v39 = v49;
      }

LABEL_60:
      v53 = *v9;
      *v9 = v48;
      *v14 = v53;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v23 = *v9;
    v24 = *v13;
    v25 = *(v16 + 16 * *(v15 + 8 * *v9));
    v26 = vmovn_s64(vcgtq_f64(v18, v25)).u8[0];
    if (v25.f64[0] > *(v16 + 16 * *(v15 + 8 * *v14)))
    {
      if (v26)
      {
        *v14 = v17;
        goto LABEL_38;
      }

      *v14 = v23;
      *v9 = v24;
      v37 = *(a2 - 1);
      if (*(v16 + 16 * *(v15 + 8 * v37)) > *(v16 + 16 * *(v15 + 8 * v24)))
      {
        *v9 = v37;
LABEL_38:
        *(a2 - 1) = v24;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if ((v26 & 1) == 0)
    {
      goto LABEL_39;
    }

    *v9 = v17;
    *(a2 - 1) = v23;
    v28 = *v14;
    if (*(v16 + 16 * *(v15 + 8 * *v9)) <= *(v16 + 16 * *(v15 + 8 * *v14)))
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v28;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v16 + 16 * *(v15 + 8 * *(v9 - 1))) <= *(v16 + 16 * *(v15 + 8 * *v9)))
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned long *,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &>(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v54 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned long *,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &>(v9, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_67;
    }

    v56 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, v54, a3);
    v9 = v54 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v54 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v54;
      if (v56)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v56)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,false>(v8, v54, a3, -v11, a5 & 1);
      v9 = v54 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v57 = *v9;
  v58 = v9[1];
  v59 = *a3[1];
  v60 = **a3;
  v61 = *(v60 + 16 * *(v59 + 8 * v58));
  v62 = *(a2 - 1);
  v63 = *(v60 + 16 * *(v59 + 8 * v62));
  if (v61 <= *(v60 + 16 * *(v59 + 8 * *v9)))
  {
    if (v63 <= v61)
    {
      return result;
    }

    v9[1] = v62;
    *(a2 - 1) = v58;
    v91 = *v9;
    v90 = v9[1];
    if (*(v60 + 16 * *(v59 + 8 * v90)) <= *(v60 + 16 * *(v59 + 8 * *v9)))
    {
      return result;
    }

    *v9 = v90;
LABEL_126:
    v9[1] = v91;
    return result;
  }

  if (v63 <= v61)
  {
    *v9 = v58;
    v9[1] = v57;
    v96 = *(a2 - 1);
    if (*(v60 + 16 * *(v59 + 8 * v96)) <= *(v60 + 16 * *(v59 + 8 * v57)))
    {
      return result;
    }

    v9[1] = v96;
  }

  else
  {
    *v9 = v62;
  }

  *(a2 - 1) = v57;
  return result;
}

uint64_t *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *a3[1];
      v6 = **a3;
      v7 = result;
      do
      {
        v9 = *v7;
        v8 = v7[1];
        v7 = v3;
        if (*(v6 + 16 * *(v5 + 8 * v8)) > *(v6 + 16 * *(v5 + 8 * v9)))
        {
          v10 = v4;
          while (1)
          {
            *(result + v10 + 8) = v9;
            if (!v10)
            {
              break;
            }

            v9 = *(result + v10 - 8);
            v10 -= 8;
            if (*(v6 + 16 * *(v5 + 8 * v8)) <= *(v6 + 16 * *(v5 + 8 * v9)))
            {
              v11 = (result + v10 + 8);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v8;
        }

        v3 = v7 + 1;
        v4 += 8;
      }

      while (v7 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3[1];
      v5 = **a3;
      do
      {
        v7 = *result;
        v6 = result[1];
        result = v3;
        if (*(v5 + 16 * *(v4 + 8 * v6)) > *(v5 + 16 * *(v4 + 8 * v7)))
        {
          do
          {
            *v3 = v7;
            v7 = *(v3 - 2);
            --v3;
          }

          while (*(v5 + 16 * *(v4 + 8 * v6)) > *(v5 + 16 * *(v4 + 8 * v7)));
          *v3 = v6;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned long *,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = *a3[1];
  v5 = **a3;
  v6 = *(v5 + 16 * *(v4 + 8 * *a1));
  if (*&v6 <= *(v5 + 16 * *(v4 + 8 * *(a2 - 1))))
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= a2)
      {
        break;
      }

      ++v9;
    }

    while (*&v6 <= *(v5 + 16 * *(v4 + 8 * *v7)));
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (*&v6 <= *(v5 + 16 * *(v4 + 8 * v8)));
  }

  if (v7 < a2)
  {
    do
    {
      v10 = *--a2;
    }

    while (*&v6 > *(v5 + 16 * *(v4 + 8 * v10)));
  }

  if (v7 < a2)
  {
    v11 = *v7;
    v12 = *a2;
    do
    {
      *v7 = v12;
      *a2 = v11;
      v13 = *(v5 + 16 * *(v4 + 8 * v3));
      do
      {
        v14 = v7[1];
        ++v7;
        v11 = v14;
      }

      while (*&v13 <= *(v5 + 16 * *(v4 + 8 * v14)));
      do
      {
        v15 = *--a2;
        v12 = v15;
      }

      while (*&v13 > *(v5 + 16 * *(v4 + 8 * v15)));
    }

    while (v7 < a2);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v3;
  return v7;
}

uint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned long *,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a3[1];
  v6 = **a3;
  v7 = *(v6 + 16 * *(v5 + 8 * *a1));
  do
  {
    v8 = a1[++v3];
  }

  while (*(v6 + 16 * *(v5 + 8 * v8)) > *&v7);
  v9 = &a1[v3];
  v10 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (*(v6 + 16 * *(v5 + 8 * v12)) <= *&v7);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (*(v6 + 16 * *(v5 + 8 * v11)) <= *&v7);
  }

  if (v9 < a2)
  {
    v13 = *a2;
    v14 = &a1[v3];
    v15 = a2;
    do
    {
      *v14 = v13;
      *v15 = v8;
      v16 = *(v6 + 16 * *(v5 + 8 * v4));
      do
      {
        v17 = v14[1];
        ++v14;
        v8 = v17;
      }

      while (*(v6 + 16 * *(v5 + 8 * v17)) > *&v16);
      do
      {
        v18 = *--v15;
        v13 = v18;
      }

      while (*(v6 + 16 * *(v5 + 8 * v18)) <= *&v16);
    }

    while (v14 < v15);
    v10 = v14 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v4;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v21 = *a1;
      v22 = a1[1];
      v23 = *a3[1];
      v24 = **a3;
      v25 = *(v24 + 16 * *(v23 + 8 * v22));
      v26 = *(a2 - 1);
      v27 = *(v24 + 16 * *(v23 + 8 * v26));
      if (v25 > *(v24 + 16 * *(v23 + 8 * *a1)))
      {
        if (v27 <= v25)
        {
          *a1 = v22;
          a1[1] = v21;
          v64 = *(a2 - 1);
          if (*(v24 + 16 * *(v23 + 8 * v64)) <= *(v24 + 16 * *(v23 + 8 * v21)))
          {
            return 1;
          }

          a1[1] = v64;
        }

        else
        {
          *a1 = v26;
        }

        *(a2 - 1) = v21;
        return 1;
      }

      if (v27 <= v25)
      {
        return 1;
      }

      a1[1] = v26;
      *(a2 - 1) = v22;
      v51 = *a1;
      v50 = a1[1];
      if (*(v24 + 16 * *(v23 + 8 * v50)) <= *(v24 + 16 * *(v23 + 8 * *a1)))
      {
        return 1;
      }

      *a1 = v50;
LABEL_70:
      a1[1] = v51;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_16;
      }

      v5 = a1 + 1;
      v6 = a1[1];
      v8 = a1 + 2;
      v7 = a1[2];
      v9 = *a1;
      v10 = *a3[1];
      v11 = **a3;
      v12 = *(v11 + 16 * *(v10 + 8 * v6));
      v13 = *(v11 + 16 * *(v10 + 8 * v7));
      if (v12 <= *(v11 + 16 * *(v10 + 8 * *a1)))
      {
        if (v13 <= v12)
        {
          v16 = *a1;
          v9 = a1[1];
          goto LABEL_60;
        }

        *v5 = v7;
        *v8 = v6;
        v14 = a1;
        v15 = a1 + 1;
        v16 = v7;
        v17 = v9;
        v18 = v6;
        if (*(v11 + 16 * *(v10 + 8 * v7)) <= *(v11 + 16 * *(v10 + 8 * v9)))
        {
          v16 = v9;
          v9 = v7;
          v7 = v6;
LABEL_60:
          v65 = a1[3];
          if (*(v11 + 16 * *(v10 + 8 * v65)) <= *(v11 + 16 * *(v10 + 8 * v7)))
          {
            v7 = a1[3];
          }

          else
          {
            a1[2] = v65;
            a1[3] = v7;
            if (*(v11 + 16 * *(v10 + 8 * v65)) > *(v11 + 16 * *(v10 + 8 * v9)))
            {
              *v5 = v65;
              *v8 = v9;
              if (*(v11 + 16 * *(v10 + 8 * v65)) > *(v11 + 16 * *(v10 + 8 * v16)))
              {
                *a1 = v65;
                a1[1] = v16;
              }
            }
          }

          v66 = *(a2 - 1);
          if (*(v11 + 16 * *(v10 + 8 * v66)) <= *(v11 + 16 * *(v10 + 8 * v7)))
          {
            return 1;
          }

          a1[3] = v66;
          *(a2 - 1) = v7;
          v68 = a1[2];
          v67 = a1[3];
          if (*(v11 + 16 * *(v10 + 8 * v67)) <= *(v11 + 16 * *(v10 + 8 * v68)))
          {
            return 1;
          }

          a1[2] = v67;
          a1[3] = v68;
          v69 = a1[1];
          if (*(v11 + 16 * *(v10 + 8 * v67)) <= *(v11 + 16 * *(v10 + 8 * v69)))
          {
            return 1;
          }

          a1[1] = v67;
          a1[2] = v69;
          v51 = *a1;
          if (*(v11 + 16 * *(v10 + 8 * v67)) <= *(v11 + 16 * *(v10 + 8 * *a1)))
          {
            return 1;
          }

          *a1 = v67;
          goto LABEL_70;
        }
      }

      else if (v13 <= v12)
      {
        *a1 = v6;
        a1[1] = v9;
        v14 = a1 + 1;
        v15 = a1 + 2;
        v16 = v6;
        v17 = v7;
        v18 = v9;
        if (*(v11 + 16 * *(v10 + 8 * v7)) <= *(v11 + 16 * *(v10 + 8 * v9)))
        {
          v16 = v6;
          goto LABEL_60;
        }
      }

      else
      {
        v14 = a1;
        v15 = a1 + 2;
        v16 = a1[2];
        v17 = a1[1];
        v18 = *a1;
      }

      *v14 = v7;
      *v15 = v9;
      v9 = v17;
      v7 = v18;
      goto LABEL_60;
    }

    v38 = a1 + 1;
    v39 = a1[1];
    v40 = a1 + 2;
    v41 = a1[2];
    v42 = *a1;
    v43 = *a3[1];
    v44 = **a3;
    v45 = *(v44 + 16 * *(v43 + 8 * v39));
    v46 = *(v44 + 16 * *(v43 + 8 * v41));
    if (v45 <= *(v44 + 16 * *(v43 + 8 * *a1)))
    {
      if (v46 <= v45)
      {
LABEL_47:
        v39 = v41;
        goto LABEL_48;
      }

      *v38 = v41;
      *v40 = v39;
      v47 = a1;
      v48 = a1 + 1;
      v49 = v39;
      if (*(v44 + 16 * *(v43 + 8 * v41)) <= *(v44 + 16 * *(v43 + 8 * v42)))
      {
LABEL_48:
        v60 = *(a2 - 1);
        if (*(v44 + 16 * *(v43 + 8 * v60)) > *(v44 + 16 * *(v43 + 8 * v39)))
        {
          *v40 = v60;
          *(a2 - 1) = v39;
          v61 = *v40;
          v62 = *v38;
          if (*(v44 + 16 * *(v43 + 8 * v61)) > *(v44 + 16 * *(v43 + 8 * v62)))
          {
            a1[1] = v61;
            a1[2] = v62;
            v63 = *a1;
            if (*(v44 + 16 * *(v43 + 8 * v61)) > *(v44 + 16 * *(v43 + 8 * *a1)))
            {
              *a1 = v61;
              a1[1] = v63;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v47 = a1;
      v48 = a1 + 2;
      v49 = *a1;
      if (v46 <= v45)
      {
        *a1 = v39;
        a1[1] = v42;
        v47 = a1 + 1;
        v48 = a1 + 2;
        v49 = v42;
        if (*(v44 + 16 * *(v43 + 8 * v41)) <= *(v44 + 16 * *(v43 + 8 * v42)))
        {
          goto LABEL_47;
        }
      }
    }

    *v47 = v41;
    *v48 = v42;
    v39 = v49;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v19 = *(a2 - 1);
    v20 = *a1;
    if (*(**a3 + 16 * *(*a3[1] + 8 * v19)) > *(**a3 + 16 * *(*a3[1] + 8 * *a1)))
    {
      *a1 = v19;
      *(a2 - 1) = v20;
    }

    return 1;
  }

LABEL_16:
  v28 = a1 + 2;
  v29 = a1[2];
  v30 = a1[1];
  v31 = *a1;
  v32 = *a3[1];
  v33 = **a3;
  v34 = *(v33 + 16 * *(v32 + 8 * v30));
  v35 = *(v33 + 16 * *(v32 + 8 * v29));
  if (v34 > *(v33 + 16 * *(v32 + 8 * *a1)))
  {
    v36 = a1;
    v37 = a1 + 2;
    if (v35 <= v34)
    {
      *a1 = v30;
      a1[1] = v31;
      v36 = a1 + 1;
      v37 = a1 + 2;
      if (*(v33 + 16 * *(v32 + 8 * v29)) <= *(v33 + 16 * *(v32 + 8 * v31)))
      {
        goto LABEL_30;
      }
    }

LABEL_29:
    *v36 = v29;
    *v37 = v31;
    goto LABEL_30;
  }

  if (v35 > v34)
  {
    a1[1] = v29;
    *v28 = v30;
    v36 = a1;
    v37 = a1 + 1;
    if (*(v33 + 16 * *(v32 + 8 * v29)) > *(v33 + 16 * *(v32 + 8 * v31)))
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  v52 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v53 = 0;
  for (i = 24; ; i += 8)
  {
    v55 = *v52;
    v56 = *v28;
    if (*(v33 + 16 * *(v32 + 8 * *v52)) > *(v33 + 16 * *(v32 + 8 * v56)))
    {
      v57 = i;
      while (1)
      {
        *(a1 + v57) = v56;
        v58 = v57 - 8;
        if (v57 == 8)
        {
          break;
        }

        v56 = *(a1 + v57 - 16);
        v57 -= 8;
        if (*(v33 + 16 * *(v32 + 8 * v55)) <= *(v33 + 16 * *(v32 + 8 * v56)))
        {
          v59 = (a1 + v58);
          goto LABEL_38;
        }
      }

      v59 = a1;
LABEL_38:
      *v59 = v55;
      if (++v53 == 8)
      {
        break;
      }
    }

    v28 = v52++;
    if (v52 == a2)
    {
      return 1;
    }
  }

  return v52 + 1 == a2;
}

uint64_t *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if (*(**a4 + 16 * *(*a4[1] + 8 * *v12)) > *(**a4 + 16 * *(*a4[1] + 8 * *a1)))
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      v10 = *a2;
      if (v6 + 2 >= a3)
      {
        v11 = *a2[1];
        v12 = *v10;
      }

      else
      {
        v11 = *a2[1];
        v12 = *v10;
        if (*(v12 + 16 * *(v11 + 8 * *v8)) > *(v12 + 16 * *(v11 + 8 * v8[1])))
        {
          ++v8;
          v7 = v9;
        }
      }

      v13 = *v8;
      v14 = *a4;
      if (*(v12 + 16 * *(v11 + 8 * *v8)) <= *(v12 + 16 * *(v11 + 8 * *a4)))
      {
        do
        {
          v15 = v8;
          *a4 = v13;
          if (v5 < v7)
          {
            break;
          }

          v16 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v17 = v16 + 2;
          if (v17 < a3 && *(v12 + 16 * *(v11 + 8 * *v8)) > *(v12 + 16 * *(v11 + 8 * v8[1])))
          {
            ++v8;
            v7 = v17;
          }

          v13 = *v8;
          a4 = v15;
        }

        while (*(v12 + 16 * *(v11 + 8 * *v8)) <= *(v12 + 16 * *(v11 + 8 * v14)));
        *v15 = v14;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  do
  {
    v6 = result;
    v7 = &result[v3];
    result = v7 + 1;
    v8 = 2 * v3;
    v3 = (2 * v3) | 1;
    v9 = v8 + 2;
    if (v9 < a3)
    {
      v11 = v7[2];
      v10 = v7 + 2;
      if (*(*v4 + 16 * *(*v5 + 8 * *(v10 - 1))) > *(*v4 + 16 * *(*v5 + 8 * v11)))
      {
        result = v10;
        v3 = v9;
      }
    }

    *v6 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,void geom::triangulate_by_ear_clipping<double>(geom::slice<geom::vector_type<double,(unsigned char)2,void>::value> const&,geom::slice<unsigned int> const&,std::vector<unsigned int> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *a3[1];
    v11 = **a3;
    if (*(v11 + 16 * *(v10 + 8 * *v5)) > *(v11 + 16 * *(v10 + 8 * v9)))
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (*(v11 + 16 * *(v10 + 8 * *v5)) > *(v11 + 16 * *(v10 + 8 * v8)));
      *v12 = v8;
    }
  }

  return result;
}

Swift::tuple_Float_Float __swiftcall OS_geom_interpolating_curve_1f.knots(span:)(Swift::Int span)
{

  v1 = sub_25008DFB4(span, geom_interpolating_curve_get_knots_1f);
  result._1 = v2;
  result._0 = v1;
  return result;
}

Swift::tuple_Double_Double __swiftcall OS_geom_interpolating_curve_1d.knots(span:)(Swift::Int span)
{

  v1 = sub_25008E120(span, geom_interpolating_curve_get_knots_1d);
  result._1 = v2;
  result._0 = v1;
  return result;
}

Swift::tuple_Float_Float __swiftcall OS_geom_interpolating_curve_2f.knots(span:)(Swift::Int span)
{

  v1 = sub_25008DFB4(span, geom_interpolating_curve_get_knots_2f);
  result._1 = v2;
  result._0 = v1;
  return result;
}

Swift::tuple_Double_Double __swiftcall OS_geom_interpolating_curve_2d.knots(span:)(Swift::Int span)
{

  v1 = sub_25008E120(span, geom_interpolating_curve_get_knots_2d);
  result._1 = v2;
  result._0 = v1;
  return result;
}

Swift::tuple_Float_Float __swiftcall OS_geom_interpolating_curve_3f.knots(span:)(Swift::Int span)
{

  v1 = sub_25008DFB4(span, geom_interpolating_curve_get_knots_3f);
  result._1 = v2;
  result._0 = v1;
  return result;
}

Swift::tuple_Double_Double __swiftcall OS_geom_interpolating_curve_3d.knots(span:)(Swift::Int span)
{

  v1 = sub_25008E120(span, geom_interpolating_curve_get_knots_3d);
  result._1 = v2;
  result._0 = v1;
  return result;
}

Swift::tuple_Float_Float __swiftcall OS_geom_interpolating_curve_4f.knots(span:)(Swift::Int span)
{

  v1 = sub_25008DFB4(span, geom_interpolating_curve_get_knots_4f);
  result._1 = v2;
  result._0 = v1;
  return result;
}

float sub_25008DFB4(unint64_t a1, void (*a2)(uint64_t, void, char *, void *))
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (a1 >> 16)
  {
    goto LABEL_5;
  }

  a2(v2, a1, v4 + 4, v4);
  return *(v4 + 1);
}

uint64_t sub_25008E060(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t (*)(uint64_t, uint64_t)))
{
  v5 = *(a1 + 16);
  if (a2)
  {
    v6 = a3(v5, a1 + 32);
  }

  else
  {
    v6 = a4(v5, a1 + 32, a3);
  }

  v7 = v6;

  return v7;
}

Swift::tuple_Double_Double __swiftcall OS_geom_interpolating_curve_4d.knots(span:)(Swift::Int span)
{

  v1 = sub_25008E120(span, geom_interpolating_curve_get_knots_4d);
  result._1 = v2;
  result._0 = v1;
  return result;
}

double sub_25008E120(unint64_t a1, void (*a2)(uint64_t, void, void *, uint64_t *))
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5[0] = 0;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (a1 >> 16)
  {
    goto LABEL_5;
  }

  a2(v2, a1, v5, &v4);
  return *v5;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy96_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_25008E1FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25008E21C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25008E288(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25008E2A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25008E30C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25008E32C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_25008E36C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25008E38C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25008E3E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25008E404(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25008E498(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25008E4B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy160_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_25008E5F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25008E610(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 80) = v3;
  return result;
}

__n128 __swift_memcpy224_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_25008E6C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25008E6E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 224) = v3;
  return result;
}

__n128 __swift_memcpy128_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_25008E798(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25008E7B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 160) = v3;
  return result;
}

uint64_t sub_25008E85C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25008E87C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25008E9CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25008E9EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

void sub_25008EAC0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

double geom_oriented_bbox_2f.init(points:)(uint64_t a1)
{
  v1 = geom_robust_oriented_bounding_box_2f(*(a1 + 16), (a1 + 32));

  return v1;
}

__n128 geom_oriented_bbox_2d.init(points:)(uint64_t a1)
{
  *&v1 = geom_robust_oriented_bounding_box_2d(*(a1 + 16), (a1 + 32));
  v3 = v1;

  return v3;
}

__n128 geom_oriented_bbox_3f.init(points:)@<Q0>(float32x4_t *a1@<X0>, uint64_t a2@<X8>)
{
  geom_oriented_bounding_box_3f(a1[1].u64[0], a1 + 2, v5);

  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v5[4];
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

float64_t geom_oriented_bbox_3d.init(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  geom_oriented_bounding_box_3d(*(a1 + 16), (a1 + 32), v9);

  v3 = v9[7];
  a2[6] = v9[6];
  a2[7] = v3;
  v4 = v9[9];
  a2[8] = v9[8];
  a2[9] = v4;
  v5 = v9[3];
  a2[2] = v9[2];
  a2[3] = v5;
  v6 = v9[5];
  a2[4] = v9[4];
  a2[5] = v6;
  result = v9[0].f64[0];
  v8 = v9[1];
  *a2 = v9[0];
  a2[1] = v8;
  return result;
}

__n128 geom_bbox_3f.init(points:)(float32x4_t *a1)
{
  *&v1 = geom_dop6_for_points_3f(a1[1].i64[0], a1 + 2);
  v3 = v1;

  return v3;
}

double geom_dop8_3f.init(points:)@<D0>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  geom_dop8_for_points_3f(a1[1].i64[0], a1 + 2, v5);

  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

double geom_dop12_3f.init(points:)@<D0>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  geom_dop12_for_points_3f(a1[1].i64[0], a1 + 2, v6);

  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

double geom_dop14_3f.init(points:)@<D0>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  geom_dop14_for_points_3f(a1[1].i64[0], a1 + 2, v6);

  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

double geom_dop18_3f.init(points:)@<D0>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  geom_dop18_for_points_3f(a1[1].i64[0], a1 + 2, v7);

  v3 = v7[3];
  a2[2] = v7[2];
  a2[3] = v3;
  v4 = v7[5];
  a2[4] = v7[4];
  a2[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

double geom_dop20_3f.init(points:)@<D0>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  geom_dop20_for_points_3f(a1[1].i64[0], a1 + 2, v7);

  v3 = v7[3];
  a2[2] = v7[2];
  a2[3] = v3;
  v4 = v7[5];
  a2[4] = v7[4];
  a2[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

double geom_dop26_3f.init(points:)@<D0>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  geom_dop26_for_points_3f(a1[1].i64[0], a1 + 2, v8);

  v3 = v12;
  a2[4] = v11;
  a2[5] = v3;
  v4 = v14;
  a2[6] = v13;
  a2[7] = v4;
  v5 = v8[1];
  *a2 = v8[0];
  a2[1] = v5;
  result = *&v9;
  v7 = v10;
  a2[2] = v9;
  a2[3] = v7;
  return result;
}

__n128 geom_bbox_3d.init(points:)(uint64_t a1)
{
  geom_dop6_for_points_3d(*(a1 + 16), (a1 + 32), &v3);
  v2 = v3;

  return v2;
}

double geom_dop8_3d.init(points:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>, float64x2_t a4@<Q1>, double a5@<D2>, float64x2_t a6@<Q3>)
{
  geom_dop8_for_points_3d(*(a1 + 16), (a1 + 32), v10, a3, a4, a5, a6);

  v7 = v10[1];
  *a2 = v10[0];
  a2[1] = v7;
  result = *&v11;
  v9 = v12;
  a2[2] = v11;
  a2[3] = v9;
  return result;
}

double geom_dop12_3d.init(points:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  geom_dop12_for_points_3d(*(a1 + 16), (a1 + 32), v7);

  v3 = v7[3];
  a2[2] = v7[2];
  a2[3] = v3;
  v4 = v7[5];
  a2[4] = v7[4];
  a2[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

double geom_dop14_3d.init(points:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  geom_dop14_for_points_3d(*(a1 + 16), (a1 + 32), v8);

  v3 = v12;
  a2[4] = v11;
  a2[5] = v3;
  v4 = v14;
  a2[6] = v13;
  a2[7] = v4;
  v5 = v8[1];
  *a2 = v8[0];
  a2[1] = v5;
  result = *&v9;
  v7 = v10;
  a2[2] = v9;
  a2[3] = v7;
  return result;
}

double geom_dop18_3d.init(points:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  geom_dop18_for_points_3d(*(a1 + 16), (a1 + 32), v9);

  v3 = v9[7];
  a2[6] = v9[6];
  a2[7] = v3;
  v4 = v9[9];
  a2[8] = v9[8];
  a2[9] = v4;
  v5 = v9[3];
  a2[2] = v9[2];
  a2[3] = v5;
  v6 = v9[5];
  a2[4] = v9[4];
  a2[5] = v6;
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  a2[1] = v8;
  return result;
}

double geom_dop20_3d.init(points:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>, float64x2_t a4@<Q1>, double a5@<D2>, float64x2_t a6@<Q3>)
{
  geom_dop20_for_points_3d(*(a1 + 16), (a1 + 32), v13, a3, a4, a5, a6);

  v7 = v13[7];
  a2[6] = v13[6];
  a2[7] = v7;
  v8 = v13[9];
  a2[8] = v13[8];
  a2[9] = v8;
  v9 = v13[3];
  a2[2] = v13[2];
  a2[3] = v9;
  v10 = v13[5];
  a2[4] = v13[4];
  a2[5] = v10;
  result = *v13;
  v12 = v13[1];
  *a2 = v13[0];
  a2[1] = v12;
  return result;
}

double geom_dop26_3d.init(points:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  geom_dop26_for_points_3d(*(a1 + 16), (a1 + 32), v11);

  v3 = v11[11];
  a2[10] = v11[10];
  a2[11] = v3;
  v4 = v11[13];
  a2[12] = v11[12];
  a2[13] = v4;
  v5 = v11[7];
  a2[6] = v11[6];
  a2[7] = v5;
  v6 = v11[9];
  a2[8] = v11[8];
  a2[9] = v6;
  v7 = v11[3];
  a2[2] = v11[2];
  a2[3] = v7;
  v8 = v11[5];
  a2[4] = v11[4];
  a2[5] = v8;
  result = *v11;
  v10 = v11[1];
  *a2 = v11[0];
  a2[1] = v10;
  return result;
}

Swift::Void __swiftcall convexHull(points:hull:)(Swift::OpaquePointer points, OS_geom_collection_u *hull)
{
  geom_convex_hull_2f(*(points._rawValue + 2), points._rawValue + 32, hull->super.isa);
}

{
  geom_convex_hull_2d(*(points._rawValue + 2), points._rawValue + 32, hull->super.isa);
}

Swift::Void __swiftcall convexHull(points:hullVertexIndices:hullFaceAccumulatedValence:)(Swift::OpaquePointer points, OS_geom_collection_u *hullVertexIndices, OS_geom_collection_u *hullFaceAccumulatedValence)
{
  geom_convex_hull_3f(*(points._rawValue + 2), points._rawValue + 2, hullVertexIndices->super.isa, hullFaceAccumulatedValence->super.isa);
}

{
  geom_convex_hull_3d(*(points._rawValue + 2), points._rawValue + 2, hullVertexIndices->super.isa, hullFaceAccumulatedValence->super.isa);
}

Swift::Float __swiftcall convexHullApproximate(points:hullVertexIndices:hullFaceAccumulatedValence:maxIterations:coplanarityTolerance:)(Swift::OpaquePointer points, OS_geom_collection_u *hullVertexIndices, OS_geom_collection_u *hullFaceAccumulatedValence, Swift::Int maxIterations, Swift::Float coplanarityTolerance)
{
  if (maxIterations < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(maxIterations))
  {
    return geom_convex_hull_approx_with_tolerance_3f(*(points._rawValue + 2), points._rawValue + 2, hullVertexIndices->super.isa, hullFaceAccumulatedValence->super.isa, maxIterations, coplanarityTolerance);
  }

  __break(1u);
  return coplanarityTolerance;
}

Swift::Double __swiftcall convexHullApproximate(points:hullVertexIndices:hullFaceAccumulatedValence:maxIterations:coplanarityTolerance:)(Swift::OpaquePointer points, OS_geom_collection_u *hullVertexIndices, OS_geom_collection_u *hullFaceAccumulatedValence, Swift::Int maxIterations, Swift::Double coplanarityTolerance)
{
  if (maxIterations < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(maxIterations))
  {
    return geom_convex_hull_approx_with_tolerance_3d(*(points._rawValue + 2), points._rawValue + 2, hullVertexIndices->super.isa, hullFaceAccumulatedValence->super.isa, maxIterations, coplanarityTolerance);
  }

  __break(1u);
  return coplanarityTolerance;
}

uint64_t sub_25008F328@<X0>(_DWORD *a1@<X8>)
{
  result = geom_query_exact_winding_number_3f(*v1);
  *a1 = v4;
  return result;
}

uint64_t sub_25008F388@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v9[0] = v4;
  v9[1] = v5;
  result = geom_query_exact_winding_number_3d(v6, v9);
  *a2 = v8;
  return result;
}

uint64_t sub_25008F450@<X0>(_DWORD *a1@<X8>)
{
  result = geom_query_approximate_winding_number_3f(*v1);
  *a1 = v4;
  return result;
}

uint64_t sub_25008F498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, unint64_t, uint64_t))
{
  v3 = a3(*(a1 + 16), a1 + 32, *(a2 + 16) / 3uLL, a2 + 32);

  return v3;
}

uint64_t sub_25008F520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v4 = a4(*(a1 + 16), a1 + 32, a2 + 32, a3 + 32);

  return v4;
}

uint64_t sub_25008F5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v6 = a4(*(a1 + 16), a1 + 32, a2 + 32, a3 + 32);

  *a5 = v6;
  return result;
}

uint64_t sub_25008F658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, unint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v5 = a3(*(a1 + 16), a1 + 32, *(a2 + 16) / 3uLL, a2 + 32);

  *a4 = v5;
  return result;
}

uint64_t sub_25008F6C8@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v9[0] = v4;
  v9[1] = v5;
  result = geom_query_approximate_winding_number_3d(v6, v9);
  *a2 = v8;
  return result;
}

uint64_t (*sub_25008F744(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_approximate_convex_decomposition_opt_get_max_cluster_count_3f(v3);
  return sub_25008F790;
}

uint64_t (*sub_25008F7D8(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_approximate_convex_decomposition_opt_get_split_min_concavity_reduction_3f(v3);
  return sub_25008F824;
}

uint64_t (*sub_25008F86C(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_approximate_convex_decomposition_opt_get_merge_max_allowed_volume_increase_3f(v3);
  return sub_25008F8B8;
}

uint64_t (*sub_25008F8F4(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_approximate_convex_decomposition_opt_get_recursive_cut_search_enabled_3f(v3);
  return sub_25008F940;
}

uint64_t (*sub_25008F98C(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_approximate_convex_decomposition_opt_get_max_cluster_count_3d(v3);
  return sub_25008F9D8;
}

uint64_t (*sub_25008FA20(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *(a1 + 8) = *v1;
  *a1 = geom_approximate_convex_decomposition_opt_get_split_min_concavity_reduction_3d(v3);
  return sub_25008FA6C;
}

uint64_t (*sub_25008FAB4(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *(a1 + 8) = *v1;
  *a1 = geom_approximate_convex_decomposition_opt_get_merge_max_allowed_volume_increase_3d(v3);
  return sub_25008FB00;
}

uint64_t (*sub_25008FB3C(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = geom_approximate_convex_decomposition_opt_get_recursive_cut_search_enabled_3d(v3);
  return sub_25008FB88;
}

void OS_geom_approximate_convex_decomposition_3f.splitClusterWithPlane(clusterIndex:plane:)(uint64_t a1, float32x4_t a2, float32_t a3, float a4)
{
  v8 = *MEMORY[0x277D85DE8];
  a2.f32[2] = a3;
  v5 = 0;
  v6 = a2;
  v7 = a4;
  geom_approximate_convex_decomposition_split_cluster_with_plane_3f(v4, a1, &v6, &v5);
}

void sub_25008FD54(uint64_t a1, float32x4_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1].i32[0];
  v6 = *v2;
  v7 = 0;
  v8 = v4;
  v9 = v5;
  geom_approximate_convex_decomposition_split_cluster_with_plane_3f(v6, a1, &v8, &v7);
}

uint64_t sub_25008FE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = a4(*(a1 + 16), a1 + 32, *(a2 + 16) / 3uLL, a2 + 32, a3);

  return v4;
}

void OS_geom_approximate_convex_decomposition_3d.splitClusterWithPlane(clusterIndex:plane:)(uint64_t a1, float64x2_t a2, float64x2_t a3, double a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6[0] = a2;
  v6[1] = a3;
  v7 = a4;
  geom_approximate_convex_decomposition_split_cluster_with_plane_3d(v4, a1, v6, &v5);
}

uint64_t sub_25008FFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, unint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v6 = a4(*(a1 + 16), a1 + 32, *(a2 + 16) / 3uLL, a2 + 32, a3);

  *a5 = v6;
  return result;
}

void sub_2500900C0(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *v2;
  v8 = 0;
  v9[0] = v4;
  v9[1] = v5;
  v10 = v6;
  geom_approximate_convex_decomposition_split_cluster_with_plane_3d(v7, a1, v9, &v8);
}

uint64_t _sSo12geom_bbox_3fa8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySfGGvgZ_0()
{
  v0 = geom_dop6_axis_directions_3f[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F3B9FB0, &qword_2500D22D8);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 17;
  }

  *(v1 + 16) = 3;
  *(v1 + 24) = 2 * (v3 >> 4);
  v5 = v0[1];
  v4 = v0[2];
  *(v1 + 32) = *v0;
  *(v1 + 48) = v5;
  *(v1 + 64) = v4;
  return v1;
}

uint64_t _sSo12geom_dop8_3fa8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySfGGvgZ_0()
{
  v0 = geom_dop8_axis_directions_3f[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F3B9FB0, &qword_2500D22D8);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 17;
  }

  *(v1 + 16) = 4;
  *(v1 + 24) = 2 * (v3 >> 4);
  v4 = v0[3];
  v6 = *v0;
  v5 = v0[1];
  *(v1 + 64) = v0[2];
  *(v1 + 80) = v4;
  *(v1 + 32) = v6;
  *(v1 + 48) = v5;
  return v1;
}

uint64_t _sSo13geom_dop12_3fa8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySfGGvgZ_0()
{
  v0 = geom_dop12_axis_directions_3f[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F3B9FB0, &qword_2500D22D8);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 17;
  }

  *(v1 + 16) = 6;
  *(v1 + 24) = 2 * (v3 >> 4);
  v4 = v0[1];
  *(v1 + 32) = *v0;
  *(v1 + 48) = v4;
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  *(v1 + 96) = v0[4];
  *(v1 + 112) = v5;
  *(v1 + 64) = v7;
  *(v1 + 80) = v6;
  return v1;
}

uint64_t _sSo13geom_dop14_3fa8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySfGGvgZ_0()
{
  v0 = geom_dop14_axis_directions_3f[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F3B9FB0, &qword_2500D22D8);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 17;
  }

  *(v1 + 16) = 7;
  *(v1 + 24) = 2 * (v3 >> 4);
  v5 = v0[1];
  v4 = v0[2];
  *(v1 + 32) = *v0;
  *(v1 + 48) = v5;
  *(v1 + 64) = v4;
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  *(v1 + 112) = v0[5];
  *(v1 + 128) = v6;
  *(v1 + 80) = v8;
  *(v1 + 96) = v7;
  return v1;
}

uint64_t _sSo13geom_dop18_3fa8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySfGGvgZ_0()
{
  v0 = geom_dop18_axis_directions_3f[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F3B9FB0, &qword_2500D22D8);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 17;
  }

  *(v1 + 16) = 9;
  *(v1 + 24) = 2 * (v3 >> 4);
  *(v1 + 32) = *v0;
  v4 = v0[4];
  v6 = v0[1];
  v5 = v0[2];
  *(v1 + 80) = v0[3];
  *(v1 + 96) = v4;
  *(v1 + 48) = v6;
  *(v1 + 64) = v5;
  v7 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  *(v1 + 144) = v0[7];
  *(v1 + 160) = v7;
  *(v1 + 112) = v9;
  *(v1 + 128) = v8;
  return v1;
}

uint64_t _sSo13geom_dop20_3fa8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySfGGvgZ_0()
{
  v0 = geom_dop20_axis_directions_3f[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F3B9FB0, &qword_2500D22D8);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 17;
  }

  *(v1 + 16) = 10;
  *(v1 + 24) = 2 * (v3 >> 4);
  v4 = v0[1];
  *(v1 + 32) = *v0;
  *(v1 + 48) = v4;
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  *(v1 + 96) = v0[4];
  *(v1 + 112) = v5;
  *(v1 + 64) = v7;
  *(v1 + 80) = v6;
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  *(v1 + 160) = v0[8];
  *(v1 + 176) = v8;
  *(v1 + 128) = v10;
  *(v1 + 144) = v9;
  return v1;
}

uint64_t _sSo13geom_dop26_3fa8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySfGGvgZ_0()
{
  v0 = geom_dop26_axis_directions_3f[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F3B9FB0, &qword_2500D22D8);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 17;
  }

  *(v1 + 16) = 13;
  *(v1 + 24) = 2 * (v3 >> 4);
  *(v1 + 32) = *v0;
  v4 = v0[4];
  v6 = v0[1];
  v5 = v0[2];
  *(v1 + 80) = v0[3];
  *(v1 + 96) = v4;
  *(v1 + 48) = v6;
  *(v1 + 64) = v5;
  v7 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  *(v1 + 144) = v0[7];
  *(v1 + 160) = v7;
  *(v1 + 112) = v9;
  *(v1 + 128) = v8;
  v10 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  *(v1 + 208) = v0[11];
  *(v1 + 224) = v10;
  *(v1 + 176) = v12;
  *(v1 + 192) = v11;
  return v1;
}

uint64_t _sSo12geom_bbox_3da8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySdGGvgZ_0()
{
  v0 = geom_dop6_axis_directions_3d[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3B9FA8, &qword_2500D22D0);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 1;
  }

  *(v1 + 16) = 3;
  *(v1 + 24) = 2 * (v3 >> 5);
  v4 = v0[1];
  *(v1 + 32) = *v0;
  *(v1 + 48) = v4;
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  *(v1 + 96) = v0[4];
  *(v1 + 112) = v5;
  *(v1 + 64) = v7;
  *(v1 + 80) = v6;
  return v1;
}

uint64_t _sSo12geom_dop8_3da8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySdGGvgZ_0()
{
  v0 = geom_dop8_axis_directions_3d[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3B9FA8, &qword_2500D22D0);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 1;
  }

  *(v1 + 16) = 4;
  *(v1 + 24) = 2 * (v3 >> 5);
  v4 = v0[3];
  v6 = *v0;
  v5 = v0[1];
  *(v1 + 64) = v0[2];
  *(v1 + 80) = v4;
  *(v1 + 32) = v6;
  *(v1 + 48) = v5;
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  *(v1 + 128) = v0[6];
  *(v1 + 144) = v7;
  *(v1 + 96) = v9;
  *(v1 + 112) = v8;
  return v1;
}

uint64_t _sSo13geom_dop12_3da8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySdGGvgZ_0()
{
  v0 = geom_dop12_axis_directions_3d[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3B9FA8, &qword_2500D22D0);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 1;
  }

  *(v1 + 16) = 6;
  *(v1 + 24) = 2 * (v3 >> 5);
  v4 = v0[3];
  v6 = *v0;
  v5 = v0[1];
  *(v1 + 64) = v0[2];
  *(v1 + 80) = v4;
  *(v1 + 32) = v6;
  *(v1 + 48) = v5;
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  *(v1 + 128) = v0[6];
  *(v1 + 144) = v7;
  *(v1 + 96) = v9;
  *(v1 + 112) = v8;
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  *(v1 + 192) = v0[10];
  *(v1 + 208) = v10;
  *(v1 + 160) = v12;
  *(v1 + 176) = v11;
  return v1;
}

uint64_t _sSo13geom_dop14_3da8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySdGGvgZ_0()
{
  v0 = geom_dop14_axis_directions_3d;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3B9FA8, &qword_2500D22D0);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 1;
  }

  *(v1 + 16) = 7;
  *(v1 + 24) = 2 * (v3 >> 5);
  v4 = v0[1];
  *(v1 + 32) = *v0;
  *(v1 + 48) = v4;
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  *(v1 + 96) = v0[4];
  *(v1 + 112) = v5;
  *(v1 + 64) = v7;
  *(v1 + 80) = v6;
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  *(v1 + 160) = v0[8];
  *(v1 + 176) = v8;
  *(v1 + 128) = v10;
  *(v1 + 144) = v9;
  v11 = v0[13];
  v13 = v0[10];
  v12 = v0[11];
  *(v1 + 224) = v0[12];
  *(v1 + 240) = v11;
  *(v1 + 192) = v13;
  *(v1 + 208) = v12;
  return v1;
}

void *_sSo13geom_dop18_3da8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySdGGvgZ_0()
{
  v0 = geom_dop18_axis_directions_3d;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3B9FA8, &qword_2500D22D0);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 1;
  }

  v1[2] = 9;
  v1[3] = 2 * (v3 >> 5);
  memcpy(v1 + 4, v0, 0x120uLL);
  return v1;
}

void *_sSo13geom_dop20_3da8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySdGGvgZ_0()
{
  v0 = geom_dop20_axis_directions_3d;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3B9FA8, &qword_2500D22D0);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 1;
  }

  v1[2] = 10;
  v1[3] = 2 * (v3 >> 5);
  memcpy(v1 + 4, v0, 0x140uLL);
  return v1;
}

void *_sSo13geom_dop26_3da8GeometryE14axisDirectionss10ArraySliceVys5SIMD3VySdGGvgZ_0()
{
  v0 = geom_dop26_axis_directions_3d;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3B9FA8, &qword_2500D22D0);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  v3 = v2 - 32;
  if (v2 < 32)
  {
    v3 = v2 - 1;
  }

  v1[2] = 13;
  v1[3] = 2 * (v3 >> 5);
  memcpy(v1 + 4, v0, 0x1A0uLL);
  return v1;
}

unint64_t sub_250090A40()
{
  result = qword_27F3B9F68;
  if (!qword_27F3B9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B9F68);
  }

  return result;
}

unint64_t sub_250090A98()
{
  result = qword_27F3B9F70;
  if (!qword_27F3B9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B9F70);
  }

  return result;
}

uint64_t sub_250090AEC(uint64_t a1)
{
  result = sub_250090B94(&qword_27F3B9F78, &qword_27F3B9F80, off_27969B9E0, &protocol conformance descriptor for OS_geom_approximate_winding_number_3f);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_250090B40(uint64_t a1)
{
  result = sub_250090B94(&qword_27F3B9F88, &qword_27F3B9F90, off_27969B9D8, &protocol conformance descriptor for OS_geom_approximate_winding_number_3d);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_250090B94(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_250090BD8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_250090BD8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_250090C74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t intersect(ray:bbox:)@<X0>(uint64_t a1@<X8>, float32x2_t a2@<D0>, float32x2_t a3@<D1>, float32x2_t a4@<D2>, float32x2_t a5@<D3>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  result = geom_intersect_ray_bbox_2f(v9 + 1, v9, a2, a3, a4, a5);
  v8 = *(v9 + 1);
  v7 = v9[0];
  if (result != 2)
  {
    v8 = *v9;
  }

  *a1 = v8;
  *(a1 + 4) = v7;
  *(a1 + 8) = result;
  return result;
}

uint64_t intersect(ray:bbox:)@<X0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, __n128 a3@<Q1>, float64x2_t a4@<Q2>, float64x2_t a5@<Q3>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = 0.0;
  v10[0] = 0.0;
  result = geom_intersect_ray_bbox_2d(v10, &v9, a2, a3, a4, a5);
  v7 = v9;
  v8 = v10[0];
  if (result != 2)
  {
    v8 = v9;
  }

  *a1 = v8;
  *(a1 + 8) = v7;
  *(a1 + 16) = result;
  return result;
}

uint64_t intersect(ray:bbox:)@<X0>(uint64_t a1@<X8>, float32x4_t a2@<Q0>, float32_t a3@<S1>, float32x4_t a4@<Q2>, float32_t a5@<S3>, float32x4_t a6@<Q4>, float32_t a7@<S5>, float32x4_t a8@<Q6>, float32_t a9@<S7>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  a2.f32[2] = a3;
  a4.f32[2] = a5;
  a6.f32[2] = a7;
  a8.f32[2] = a9;
  v13[0] = 0;
  result = geom_intersect_ray_bbox_3f(v13 + 1, v13, a2, a4, a6, a8);
  v12 = *(v13 + 1);
  v11 = v13[0];
  if (result != 2)
  {
    v12 = *v13;
  }

  *a1 = v12;
  *(a1 + 4) = v11;
  *(a1 + 8) = result;
  return result;
}

uint64_t intersect(ray:bbox:)@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>, __n128 a7@<Q5>, __n128 a8@<Q6>, __n128 a9@<Q7>)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16[0] = 0.0;
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v13[0] = a6;
  v13[1] = a7;
  v13[2] = a8;
  v13[3] = a9;
  result = geom_intersect_ray_bbox_3d(v14, v13, v16, &v15);
  v11 = v15;
  v12 = *&v16[0];
  if (result != 2)
  {
    v12 = v15;
  }

  *a1 = v12;
  a1[1] = v11;
  a1[2] = result;
  return result;
}

uint64_t intersect(ray:triangle:)@<X0>(int32x4_t *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float32_t a4@<S1>, double a5@<D2>, float32_t a6@<S3>, float32x4_t a7@<Q5>)
{
  *a7.i64 = a5;
  v18 = *MEMORY[0x277D85DE8];
  a3.f32[2] = a4;
  a7.f32[2] = a6;
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a1;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  result = geom_intersect_ray_triangle_3f(&v17, &v15, a3, a7, v10, v8, v9);
  v12 = v17;
  v14 = v15;
  v13 = v16;
  if (!result)
  {
    v12 = 0;
    v14 = 0;
    v13 = 0;
  }

  *a2 = v12;
  *(a2 + 8) = 0;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = result ^ 1;
  return result;
}

uint64_t intersect(ray:triangle:)@<X0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>, float64x2_t a4@<Q1>, float64x2_t a5@<Q2>, float64x2_t a6@<Q3>)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v23[0] = 0.0;
  v21 = 0u;
  v22 = 0u;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v19[0] = v7;
  v19[1] = v8;
  v19[2] = v9;
  v19[3] = v10;
  v19[4] = v11;
  v19[5] = v12;
  result = geom_intersect_ray_triangle_3d(v20, v19, v23, &v21);
  v14 = 0.0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (result)
  {
    v18 = *(&v22 + 1);
    v14 = v23[0];
    v16 = *(&v21 + 1);
    v15 = v21;
    v17 = v22;
  }

  *a2 = v14;
  *(a2 + 8) = 0;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = result ^ 1;
  return result;
}

float intersect(ray:circle:)@<S0>(uint64_t a1@<X8>, float32x2_t a2@<D0>, float32x2_t a3@<D1>, uint64_t a4@<D2>, int a5@<S3>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v6 = geom_intersect_ray_circle_2f(a4, a5, v9 + 1, v9, a2, a3);
  result = *(v9 + 1);
  v8 = v9[0];
  *a1 = HIDWORD(v9[0]);
  *(a1 + 4) = v8;
  *(a1 + 8) = v6;
  return result;
}

double intersect(ray:circle:)@<D0>(double *a1@<X8>, float64x2_t a2@<Q0>, float64x2_t a3@<Q1>, float64x2_t a4@<Q2>, double a5@<D3>)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0.0;
  v11 = a4;
  v12 = a5;
  v6 = geom_intersect_ray_circle_2d(&v11, &v10, &v9, a2, a3);
  v8 = v9;
  result = v10;
  *a1 = v10;
  *(a1 + 1) = v8;
  *(a1 + 2) = v6;
  return result;
}

float intersect(ray:sphere:)@<S0>(uint64_t a1@<X8>, float32x4_t a2@<Q0>, float32_t a3@<S1>, float32x4_t a4@<Q2>, float32_t a5@<S3>, float32x4_t a6@<Q4>, float32_t a7@<S5>, float a8@<S6>)
{
  v15 = *MEMORY[0x277D85DE8];
  a2.f32[2] = a3;
  a4.f32[2] = a5;
  a6.f32[2] = a7;
  v12 = 0;
  v13 = a6;
  v14 = a8;
  v9 = geom_intersect_ray_sphere_3f(&v13, &v12 + 1, &v12, a2, a4);
  result = *(&v12 + 1);
  v11 = v12;
  *a1 = HIDWORD(v12);
  *(a1 + 4) = v11;
  *(a1 + 8) = v9;
  return result;
}

double intersect(ray:sphere:)@<D0>(double *a1@<X8>, float64x2_t a2@<Q0>, float64x2_t a3@<Q1>, float64x2_t a4@<Q2>, float64x2_t a5@<Q3>, float64x2_t a6@<Q4>, float64x2_t a7@<Q5>, double a8@<D6>)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 0.0;
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v15[0] = a6;
  v15[1] = a7;
  v16 = a8;
  v9 = geom_intersect_ray_sphere_3d(v12, v15, &v14, &v13);
  v11 = v13;
  result = v14;
  *a1 = v14;
  *(a1 + 1) = v11;
  *(a1 + 2) = v9;
  return result;
}

double intersect(ray:quadraticBezier:)@<D0>(int32x4_t *a1@<X8>)
{

  *&result = sub_250091688(geom_intersect_ray_quadratic_bezier_2f, a1).u64[0];
  return result;
}

double intersect(ray:quadraticBezier:)@<D0>(uint64_t a1@<X8>)
{

  *&result = sub_250091778(geom_intersect_ray_quadratic_bezier_2d, a1).n128_u64[0];
  return result;
}

double intersect(lineSegment:quadraticBezier:)@<D0>(int32x4_t *a1@<X8>)
{

  *&result = sub_250091688(geom_intersect_line_segment_quadratic_bezier_2f, a1).u64[0];
  return result;
}

int32x4_t sub_250091688@<Q0>(__n128 (*a1)(unint64_t *, void *)@<X0>, int32x4_t *a2@<X8>)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = 0;
  v3 = a1(&v7, v8);
  v3.i64[0] = v7;
  v5.i64[0] = v8[0];
  result = vzip1q_s32(v3, v5);
  *a2 = result;
  a2[1].i64[0] = v4;
  return result;
}

double intersect(lineSegment:quadraticBezier:)@<D0>(uint64_t a1@<X8>)
{

  *&result = sub_250091778(geom_intersect_line_segment_quadratic_bezier_2d, a1).n128_u64[0];
  return result;
}

__n128 sub_250091778@<Q0>(uint64_t (*a1)(__n128 *, __int128 *)@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v3 = a1(&v6, &v7);
  result = v6;
  *&v5 = v7;
  *(a2 + 24) = *(&v7 + 1);
  *(&v5 + 1) = result.n128_u64[1];
  *a2 = result.n128_u64[0];
  *(a2 + 8) = v5;
  *(a2 + 32) = v3;
  return result;
}

double intersect(line:quadraticBezier:)@<D0>(void *a1@<X8>, uint64_t a2@<D0>, int a3@<S1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v7 = geom_intersect_line_quadratic_bezier_2f(a2, a3, v9, a4, a5, a6);
  result = *v9;
  *a1 = v9[0];
  a1[1] = v7;
  return result;
}

double intersect(line:quadraticBezier:)@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, double a3@<D1>, float64x2_t a4@<Q2>, float64x2_t a5@<Q3>, float64x2_t a6@<Q4>)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0uLL;
  v10 = a2;
  v11 = a3;
  v7 = geom_intersect_line_quadratic_bezier_2d(&v10, &v9, a4, a5, a6);
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v7;
  return result;
}

int32x2_t intersect(ray:cubicBezier:)@<D0>(uint64_t a1@<X8>)
{

  return sub_250091A58(geom_intersect_ray_cubic_bezier_2f, a1);
}

double intersect(ray:cubicBezier:)@<D0>(uint64_t a1@<X8>)
{

  *&result = sub_250091B58(geom_intersect_ray_cubic_bezier_2d, a1).u64[0];
  return result;
}

int32x2_t intersect(lineSegment:cubicBezier:)@<D0>(uint64_t a1@<X8>)
{

  return sub_250091A58(geom_intersect_line_segment_cubic_bezier_2f, a1);
}

int32x2_t sub_250091A58@<D0>(uint64_t (*a1)(int32x4_t *, int8x16_t *)@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v3 = a1(&v7, &v8);
  v4 = v7;
  v5 = v8;
  *a2 = vzip1q_s32(v7, v8);
  result = vzip1_s32(*&vextq_s8(v4, v4, 8uLL), *&vextq_s8(v5, v5, 8uLL));
  *(a2 + 16) = result;
  *(a2 + 24) = v3;
  return result;
}

double intersect(lineSegment:cubicBezier:)@<D0>(uint64_t a1@<X8>)
{

  *&result = sub_250091B58(geom_intersect_line_segment_cubic_bezier_2d, a1).u64[0];
  return result;
}

int8x16_t sub_250091B58@<Q0>(uint64_t (*a1)(__int128 *, int8x16_t *)@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = a1(&v9, &v11);
  v5 = *(&v9 + 1);
  v4 = v10;
  v6 = v11;
  v7 = v12;
  *a2 = v9;
  result = vextq_s8(v6, v4, 8uLL);
  v6.i64[1] = v5;
  *(a2 + 8) = v6;
  *(a2 + 24) = result;
  *(a2 + 40) = v7;
  *(a2 + 48) = v3;
  return result;
}

__n128 intersect(line:cubicBezier:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<D0>, int a3@<S1>, float32x2_t a4@<D2>, double a5@<D3>, float32x2_t a6@<D4>, float32x2_t a7@<D5>)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0uLL;
  v8 = geom_intersect_line_cubic_bezier_2f(a2, a3, &v10, a4, a5, a6, a7);
  result = v10;
  *a1 = v10.n128_u64[0];
  *(a1 + 8) = result.n128_u32[2];
  *(a1 + 16) = v8;
  return result;
}

double intersect(line:cubicBezier:)@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, double a3@<D1>, float64x2_t a4@<Q2>, float64x2_t a5@<Q3>, float64x2_t a6@<Q4>, float64x2_t a7@<Q5>)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = a2;
  v14 = a3;
  v8 = geom_intersect_line_cubic_bezier_2d(&v13, &v11, a4, a5, a6, a7);
  result = *&v11;
  v10 = v12;
  *a1 = v11;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
  return result;
}

__n128 intersect(triangle:bbox:)@<Q0>(int8x16_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, float a4@<S1>, double a5@<D2>, float a6@<S3>, __n128 a7@<Q4>, __n128 a8@<Q5>)
{
  a7.n128_f64[0] = a5;
  a8.n128_f64[0] = a3;
  v38 = *MEMORY[0x277D85DE8];
  a8.n128_f32[2] = a4;
  a7.n128_f32[2] = a6;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *a1;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = geom_intersect_triangle_bbox_3f(&v22, v11, v9, v10, a8, a7);
  v13 = v28;
  result = v29;
  v15 = v26;
  v14 = v27;
  v17 = v24;
  v16 = v25;
  v19 = v22;
  v18 = v23;
  v19.i32[3] = 0;
  HIDWORD(v18) = 0;
  HIDWORD(v17) = 0;
  HIDWORD(v16) = 0;
  HIDWORD(v15) = 0;
  HIDWORD(v14) = 0;
  HIDWORD(v13) = 0;
  v20 = v30;
  result.n128_u32[3] = 0;
  HIDWORD(v20) = 0;
  *a2 = v19;
  *(a2 + 16) = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v16;
  *(a2 + 64) = v15;
  *(a2 + 80) = v14;
  *(a2 + 96) = v13;
  *(a2 + 112) = result;
  *(a2 + 128) = v20;
  *(a2 + 144) = v12;
  return result;
}

__n128 intersect(triangle:bbox:)@<Q0>(int8x16_t *a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>, float64x2_t a4@<Q1>, float64x2_t a5@<Q2>, float64x2_t a6@<Q3>)
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32[0] = v7;
  v32[1] = v8;
  v32[2] = v9;
  v32[3] = v10;
  v32[4] = v11;
  v32[5] = v12;
  v31[0] = a3;
  v31[1] = a4;
  v31[2] = a5;
  v31[3] = a6;
  v13 = geom_intersect_triangle_bbox_3d(v32, v31, &v33);
  result = v49;
  v15 = v50;
  v16 = v47;
  v17 = v48;
  v18 = v45;
  v19 = v46;
  v20 = v43;
  v21 = v44;
  v22 = v41;
  v23 = v42;
  v24 = v39;
  v25 = v40;
  v26 = v37;
  v27 = v38;
  v28 = v35;
  v29 = v36;
  v30 = v34;
  *a2 = v33;
  *(a2 + 16) = v30;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  *(a2 + 64) = v26;
  *(a2 + 80) = v27;
  *(a2 + 96) = v24;
  *(a2 + 112) = v25;
  *(a2 + 128) = v22;
  *(a2 + 144) = v23;
  *(a2 + 160) = v20;
  *(a2 + 176) = v21;
  *(a2 + 192) = v18;
  *(a2 + 208) = v19;
  *(a2 + 224) = v16;
  *(a2 + 240) = v17;
  *(a2 + 256) = result;
  *(a2 + 272) = v15;
  *(a2 + 288) = v13;
  return result;
}

uint64_t intersect(lineSegment:plane:)@<X0>(uint64_t a1@<X8>, float32x4_t a2@<Q0>, float32_t a3@<S1>, float32x4_t a4@<Q2>, float32_t a5@<S3>, float32x4_t a6@<Q4>, float32_t a7@<S5>, float a8@<S6>)
{
  a2.f32[2] = a3;
  v17 = *MEMORY[0x277D85DE8];
  a4.f32[2] = a5;
  a6.f32[2] = a7;
  v14 = 0;
  v13 = 0uLL;
  v15 = a6;
  v16 = a8;
  result = geom_intersect_line_segment_plane_3f(&v15, &v14, &v13, a2, a4);
  v10 = v14;
  v11 = v13.i64[1];
  v12 = v13.i64[0];
  if (!result)
  {
    v10 = 0;
    v12 = 0;
    v11 = 0;
  }

  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 24) = v11;
  *(a1 + 32) = result ^ 1;
  return result;
}

uint64_t intersect(lineSegment:plane:)@<X0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64x2_t a3@<Q1>, float64x2_t a4@<Q2>, float64x2_t a5@<Q3>, float64x2_t a6@<Q4>, float64x2_t a7@<Q5>, double a8@<D6>)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v19[0] = a6;
  v19[1] = a7;
  v20 = a8;
  result = geom_intersect_line_segment_plane_3d(v15, v19, &v18, &v16);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (result)
  {
    v10 = v18;
    v12 = v16.i64[1];
    v11 = v16.i64[0];
    v14 = *(&v17 + 1);
    v13 = v17;
  }

  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = result ^ 1;
  return result;
}

uint64_t intersect(ray:line:)@<X0>(uint64_t a1@<X8>, float32x2_t a2@<D0>, double a3@<D1>, uint64_t a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  result = geom_intersect_ray_line_2f(a4, SLODWORD(a5), &v10, a2, a3, *&a4, a5, a6, a7);
  if (!result)
  {
    goto LABEL_5;
  }

  if (result != 1)
  {
    result = 1;
LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  v9 = 0;
  result = v10;
LABEL_6:
  *a1 = result;
  *(a1 + 4) = v9;
  return result;
}

uint64_t intersect(ray:line:)@<X0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64x2_t a3@<Q1>, float64x2_t a4@<Q2>, double a5@<D3>, float64x2_t a6@<Q4>, double a7@<D5>, int64x2_t a8@<Q6>)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = a4;
  v14 = a5;
  result = geom_intersect_ray_line_2d(&v13, &v12, a2, a3, a4.f64[0], a5, a6, a7, a8);
  if (!result)
  {
    v11 = 0;
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  if (result != 1)
  {
    v11 = 1;
    goto LABEL_6;
  }

  v10 = 0;
  v11 = v12;
LABEL_7:
  *a1 = v11;
  *(a1 + 8) = v10;
  return result;
}

uint64_t intersect(ray:lineSegment:)@<X0>(uint64_t a1@<X8>)
{

  return sub_250092688(geom_intersect_ray_line_segment_2f, a1);
}

{

  return sub_25009279C(geom_intersect_ray_line_segment_2d, a1);
}

uint64_t intersect(ray:ray:)@<X0>(uint64_t a1@<X8>)
{

  return sub_250092688(geom_intersect_ray_ray_2f, a1);
}

{

  return sub_25009279C(geom_intersect_ray_ray_2d, a1);
}

uint64_t intersect(line:line:)@<X0>(uint64_t a1@<X8>, uint64_t a2@<D0>, int a3@<S1>, uint64_t a4@<D2>, int a5@<S3>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  result = geom_intersect_line_line_2f(a2, a3, a4, a5, v9);
  if (!result)
  {
    v8 = 0;
LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  if (result != 1)
  {
    v8 = 1;
    goto LABEL_6;
  }

  v7 = 0;
  v8 = v9[0];
LABEL_7:
  *a1 = v8;
  *(a1 + 8) = v7;
  return result;
}

uint64_t intersect(line:line:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, double a3@<D1>, __n128 a4@<Q2>, double a5@<D3>)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0uLL;
  v11 = a2;
  v12 = a3;
  v9 = a4;
  v10 = a5;
  result = geom_intersect_line_line_2d(&v11, &v9, &v8);
  if (result == 1)
  {
    v7 = *(&v8 + 1);
    *a1 = v8;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
  }

  else
  {
    if (result)
    {
      *a1 = xmmword_2500D22F0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    *(a1 + 16) = 1;
  }

  return result;
}

uint64_t intersect(line:lineSegment:)@<X0>(uint64_t a1@<X8>, uint64_t a2@<D0>, int a3@<S1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  result = geom_intersect_line_line_segment_2f(a2, a3, &v10, *&a4, *&a5, a4, a5, a6, a7);
  if (!result)
  {
    goto LABEL_5;
  }

  if (result != 1)
  {
    result = 1;
LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  v9 = 0;
  result = v10;
LABEL_6:
  *a1 = result;
  *(a1 + 4) = v9;
  return result;
}

uint64_t intersect(line:lineSegment:)@<X0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, double a3@<D1>, float64x2_t a4@<Q2>, float64x2_t a5@<Q3>, double a6@<D4>, double a7@<D5>, int64x2_t a8@<Q6>)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = a2;
  v14 = a3;
  result = geom_intersect_line_line_segment_2d(&v13, &v12, a4, a5, a4.f64[0], a5.f64[0], a6, a7, a8);
  if (!result)
  {
    v11 = 0;
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  if (result != 1)
  {
    v11 = 1;
    goto LABEL_6;
  }

  v10 = 0;
  v11 = v12;
LABEL_7:
  *a1 = v11;
  *(a1 + 8) = v10;
  return result;
}

uint64_t intersect(lineSegment:lineSegment:)@<X0>(uint64_t a1@<X8>)
{

  return sub_250092688(geom_intersect_line_segment_line_segment_2f, a1);
}

{

  return sub_25009279C(geom_intersect_line_segment_line_segment_2d, a1);
}

uint64_t sub_250092688@<X0>(uint64_t (*a1)(char *, void *)@<X0>, uint64_t a2@<X8>)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  result = a1(v6 + 4, v6);
  if (result)
  {
    if (result == 1)
    {
      v4 = 0;
      v5 = HIDWORD(v6[0]) | (LODWORD(v6[0]) << 32);
    }

    else
    {
      v5 = HIDWORD(v6[0]) | (LODWORD(v6[0]) << 32);
      v4 = 1;
    }
  }

  else
  {
    v5 = 0;
    v4 = 2;
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_25009279C@<X0>(uint64_t (*a1)(void *, uint64_t *)@<X0>, uint64_t a2@<X8>)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = 0;
  result = a1(v8, &v7);
  if (result == 1)
  {
    v5 = v7;
    *a2 = v8[0];
    *(a2 + 8) = v5;
    *(a2 + 16) = 0;
  }

  else
  {
    if (result)
    {
      v6 = v7;
      *a2 = v8[0];
      *(a2 + 8) = v6;
      v4 = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      v4 = 2;
    }

    *(a2 + 16) = v4;
  }

  return result;
}

unint64_t intersect(ray:triangle:)(float32x2_t a1, float32x2_t a2, double a3, double a4, double a5)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v5 = geom_intersect_ray_triangle_2f(v8 + 1, v8, a1, a2, a3, a4, a5);
  v6 = HIDWORD(v8[0]) | (LODWORD(v8[0]) << 32);
  if (!v5)
  {
    return 0;
  }

  return v6;
}

uint64_t intersect(ray:triangle:)(float64x2_t a1, float64x2_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9[0] = 0.0;
  v5 = geom_intersect_ray_triangle_2d(v9, &v8, a1, a2, a3, a4, a5);
  v6 = v9[0];
  if (!v5)
  {
    v6 = 0.0;
  }

  return *&v6;
}

uint64_t sub_250092990(uint64_t a1)
{
  v1 = sub_2500BFC18();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2500929EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 2;
  v9 = *(v6 + 64);
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v13 = 8 * v9;
    if (v9 <= 3)
    {
      v15 = ((a2 - v8 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v15))
      {
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }

      if (v15 > 0xFF)
      {
        v14 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }

      if (v15 < 2)
      {
LABEL_33:
        if (!v8)
        {
          return 0;
        }

        goto LABEL_34;
      }
    }

    v14 = *(a1 + v9);
    if (!*(a1 + v9))
    {
      goto LABEL_33;
    }

LABEL_22:
    v16 = (v14 - 1) << v13;
    if (v9 > 3)
    {
      v16 = 0;
    }

    if (v9)
    {
      if (v9 > 3)
      {
        LODWORD(v9) = 4;
      }

      if (v9 > 2)
      {
        if (v9 == 3)
        {
          LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      else if (v9 == 1)
      {
        LODWORD(v9) = *a1;
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    return v8 + (v9 | v16) + 1;
  }

LABEL_34:
  if (!v7)
  {
    return 0;
  }

  v17 = (*(v6 + 48))(a1, v7, AssociatedTypeWitness);
  v18 = v17 >= 2;
  result = v17 - 2;
  if (result == 0 || !v18)
  {
    return 0;
  }

  return result;
}

void sub_250092BDC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 2;
  v10 = *(v7 + 64);
  v11 = v10;
  if (v8 <= 1)
  {
    v9 = 0;
    if (v10 <= 3)
    {
      v13 = (~(-1 << (8 * v10)) - v8 + 2) >> (8 * v10);
      if (v13 > 0xFFFE)
      {
        v12 = 4;
      }

      else
      {
        v14 = 1;
        if (v13 >= 0xFF)
        {
          v14 = 2;
        }

        if (v13)
        {
          v12 = v14;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }

    v11 = v12 + v10;
  }

  v15 = a3 - v9;
  if (a3 <= v9)
  {
    v16 = 0;
    if (v9 < a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v16 = 1;
    if (v11 <= 3)
    {
      v17 = ((v15 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      v18 = HIWORD(v17);
      if (v17 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v17 >= 2)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v18)
      {
        v16 = 4;
      }

      else
      {
        v16 = v20;
      }
    }

    if (v9 < a2)
    {
LABEL_24:
      v21 = ~v9 + a2;
      if (v11 < 4)
      {
        v22 = (v21 >> (8 * v11)) + 1;
        if (v11)
        {
          v23 = v21 & ~(-1 << (8 * v11));
          bzero(a1, v11);
          if (v11 != 3)
          {
            if (v11 == 2)
            {
              *a1 = v23;
              if (v16 > 1)
              {
LABEL_61:
                if (v16 == 2)
                {
                  *&a1[v11] = v22;
                }

                else
                {
                  *&a1[v11] = v22;
                }

                return;
              }
            }

            else
            {
              *a1 = v21;
              if (v16 > 1)
              {
                goto LABEL_61;
              }
            }

            goto LABEL_58;
          }

          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        if (v16 > 1)
        {
          goto LABEL_61;
        }
      }

      else
      {
        bzero(a1, v11);
        *a1 = v21;
        v22 = 1;
        if (v16 > 1)
        {
          goto LABEL_61;
        }
      }

LABEL_58:
      if (v16)
      {
        a1[v11] = v22;
      }

      return;
    }
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v11] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v16)
  {
    goto LABEL_39;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (a2 + 2 <= v8)
  {
    v27 = *(v7 + 56);

    v27(a1, a2 + 2);
  }

  else
  {
    if (v10 <= 3)
    {
      v24 = ~(-1 << (8 * v10));
    }

    else
    {
      v24 = -1;
    }

    if (v10)
    {
      v25 = v24 & (a2 - v8 + 1);
      if (v10 <= 3)
      {
        v26 = v10;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v10);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }

      else if (v26 == 1)
      {
        *a1 = v25;
      }

      else
      {
        *a1 = v25;
      }
    }
  }
}

uint64_t sub_250092F18(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_250092F78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 > v6)
  {
    v12 = 8 * v7;
    if (v7 <= 3)
    {
      v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v14))
      {
        v13 = *(a1 + v7);
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v14 > 0xFF)
      {
        v13 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v14 < 2)
      {
LABEL_35:
        if (!v6)
        {
          return 0;
        }

        goto LABEL_36;
      }
    }

    v13 = *(a1 + v7);
    if (!*(a1 + v7))
    {
      goto LABEL_35;
    }

LABEL_22:
    v15 = (v13 - 1) << v12;
    if (v7 > 3)
    {
      v15 = 0;
    }

    if (v7)
    {
      if (v7 <= 3)
      {
        v16 = v7;
      }

      else
      {
        v16 = 4;
      }

      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v17 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v17 = *a1;
        }
      }

      else if (v16 == 1)
      {
        v17 = *a1;
      }

      else
      {
        v17 = *a1;
      }
    }

    else
    {
      v17 = 0;
    }

    return v6 + (v17 | v15) + 1;
  }

LABEL_36:
  if (!v5)
  {
    return 0;
  }

  v18 = (*(v4 + 48))(a1, v5);
  v19 = v18 >= 2;
  result = v18 - 2;
  if (result == 0 || !v19)
  {
    return 0;
  }

  return result;
}

void sub_25009314C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 2;
  v10 = v8;
  if (v7 <= 1)
  {
    v9 = 0;
    if (v8 <= 3)
    {
      v12 = (~(-1 << (8 * v8)) - v7 + 2) >> (8 * v8);
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  v14 = a3 >= v9;
  v15 = a3 - v9;
  if (v15 != 0 && v14)
  {
    v16 = 1;
    if (v10 <= 3)
    {
      v17 = ((v15 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      v18 = HIWORD(v17);
      if (v17 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v17 >= 2)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v18)
      {
        v16 = 4;
      }

      else
      {
        v16 = v20;
      }
    }

    if (v9 >= a2)
    {
LABEL_29:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *&a1[v10] = 0;
      }

      else if (v16)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

LABEL_41:
        if (a2 + 2 <= v7)
        {
          v27 = *(v6 + 56);

          v27();
        }

        else
        {
          if (v8 <= 3)
          {
            v24 = ~(-1 << (8 * v8));
          }

          else
          {
            v24 = -1;
          }

          if (v8)
          {
            v25 = v24 & (a2 - v7 + 1);
            if (v8 <= 3)
            {
              v26 = v8;
            }

            else
            {
              v26 = 4;
            }

            bzero(a1, v8);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *a1 = v25;
                a1[2] = BYTE2(v25);
              }

              else
              {
                *a1 = v25;
              }
            }

            else if (v26 == 1)
            {
              *a1 = v25;
            }

            else
            {
              *a1 = v25;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v16 = 0;
    if (v9 >= a2)
    {
      goto LABEL_29;
    }
  }

  v21 = ~v9 + a2;
  if (v10 >= 4)
  {
    bzero(a1, v10);
    *a1 = v21;
    v22 = 1;
    if (v16 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v10)) + 1;
  if (!v10)
  {
LABEL_58:
    if (v16 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v10));
  bzero(a1, v10);
  if (v10 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v10 == 2)
  {
    *a1 = v23;
    if (v16 > 1)
    {
LABEL_62:
      if (v16 == 2)
      {
        *&a1[v10] = v22;
      }

      else
      {
        *&a1[v10] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v16 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v16)
  {
    a1[v10] = v22;
  }
}

uint64_t sub_25009346C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_getTupleTypeMetadata2();
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2500934D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_250093620(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

id sub_250093C4C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

uint64_t sub_250093C70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, unint64_t, uint64_t))
{
  v3 = a3(*(a1 + 16), a1 + 32, *(a2 + 16) / 3uLL, a2 + 32);

  return v3;
}

uint64_t sub_250093DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void *, uint64_t)@<X3>, void *a5@<X8>)
{
  collection_u = geom_create_collection_u();
  v12 = a3();
  result = a4(v5, a2, a1, collection_u, v12);
  *a5 = collection_u;
  a5[1] = v12;
  return result;
}

uint64_t sub_250093EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, unint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v5 = a3(*(a1 + 16), a1 + 32, *(a2 + 16) / 3uLL, a2 + 32);

  *a4 = v5;
  return result;
}

double sub_250093F8C@<D0>(_OWORD *a1@<X8>, unsigned int a2@<W0>)
{
  geom_ddg_evaluator_compute_vertex_normal_3d(*v2, v6, a2);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  a1[1] = v5;
  return result;
}

double sub_250093FFC@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  geom_ddg_evaluator_compute_vertex_mean_curvature_vector_3d(*v2, v6, a2);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  a1[1] = v5;
  return result;
}

uint64_t sub_2500940E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X4>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void *, uint64_t)@<X5>, void *a5@<X8>)
{
  v11 = *v5;
  collection_u = geom_create_collection_u();
  v13 = a3();
  result = a4(v11, a2, a1, collection_u, v13);
  *a5 = collection_u;
  a5[1] = v13;
  return result;
}

uint64_t sub_2500942B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_250094300(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t BoundedArray2.init(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for BoundedArray2(0, a4, a3, a4);
  *(a5 + *(v10 + 32)) = 0;
  v11 = *(*(a4 - 8) + 32);
  v11(a5, a1, a4);
  result = (v11)(a5 + *(v10 + 28), a2, a4);
  v13 = *(v10 + 32);
  v14 = *(a5 + v13);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 <= 2)
  {
    *(a5 + v13) = a3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BoundedArray3.init(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for BoundedArray3(0, a5, a3, a4);
  *(a6 + v12[9]) = 0;
  v13 = *(*(a5 - 8) + 32);
  v13(a6, a1, a5);
  v13(a6 + v12[7], a2, a5);
  result = (v13)(a6 + v12[8], a3, a5);
  v15 = v12[9];
  v16 = *(a6 + v15);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 <= 3)
  {
    *(a6 + v15) = a4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BoundedArray9.init(_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = type metadata accessor for BoundedArray9(0, a12, a3, a4);
  *(a9 + v18[15]) = 0;
  v19 = *(*(a12 - 8) + 32);
  v19(a9, a1, a12);
  v19(a9 + v18[7], a2, a12);
  v19(a9 + v18[8], a3, a12);
  v19(a9 + v18[9], a4, a12);
  v19(a9 + v18[10], a5, a12);
  v19(a9 + v18[11], a6, a12);
  v19(a9 + v18[12], a7, a12);
  v19(a9 + v18[13], a8, a12);
  result = (v19)(a9 + v18[14], a10, a12);
  v21 = v18[15];
  v22 = *(a9 + v21);
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v22 <= 9)
  {
    *(a9 + v21) = a11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BoundedArray2.count.setter(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(v2 + v3);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 <= 2)
  {
    *(v2 + v3) = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t BoundedArray2.init(initialValue:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for BoundedArray2(0, a3, a3, a4);
  *(a5 + *(v9 + 32)) = 0;
  v10 = *(a3 - 8);
  (*(v10 + 16))(a5, a1, a3);
  result = (*(v10 + 32))(a5 + *(v9 + 28), a1, a3);
  v12 = *(v9 + 32);
  v13 = *(a5 + v12);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 <= 2)
  {
    *(a5 + v12) = a2;
    return result;
  }

  __break(1u);
  return result;
}