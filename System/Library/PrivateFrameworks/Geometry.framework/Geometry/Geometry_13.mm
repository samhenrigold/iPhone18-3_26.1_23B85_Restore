void geom_marching_cubes_3d(uint64_t a1, int a2, uint64_t a3, uint64_t a4, float64x2_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = a4;
  v13 = geom::collection_to_vector<float>(a6);
  v14 = geom::collection_to_vector<float>(a7);
  v18[0] = a1;
  v18[1] = a3;
  v19 = a2;
  v15 = a5[1];
  v17[0] = *a5;
  v17[1] = v15;
  v16 = a5[3];
  v17[2] = a5[2];
  v17[3] = v16;
  geom::marching_cubes<double>::run(v18, v17, v9, v13, v14);
}

void geom::marching_cubes<double>::run(uint64_t a1, float64x2_t *a2, unsigned int a3, const void **a4, const void **a5)
{
  v161 = *MEMORY[0x277D85DE8];
  v5 = a2[2];
  v123 = vsubq_f64(a2[3], a2[1]);
  v125 = vsubq_f64(v5, *a2);
  v5.f64[0] = fmin(fmin(v125.f64[0], v123.f64[0]), v125.f64[1]) / a3;
  v128 = v5;
  v141[0] = v125;
  v141[1] = v123;
  if (v123.f64[0] <= *(v141 | (8 * (v125.f64[1] > v125.f64[0]))))
  {
    v6 = v125.f64[1] > v125.f64[0];
  }

  else
  {
    v6 = 2;
  }

  if (v6 > 1)
  {
    v7 = -2;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 + v6;
  if (v6)
  {
    v9 = (v6 - 1);
  }

  else
  {
    v9 = 2;
  }

  v160 = 0;
  v158 = 0u;
  v159 = 0u;
  _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE4initEm(&v158, 1uLL);
  v10 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndpq_f64(vdivq_f64(v125, vdupq_lane_s64(*&v128.f64[0], 0)))), vcvtq_s64_f64(vrndpq_f64(*&vdivq_f64(v123, v128)))));
  v11 = vadd_s16(v10, 0x1000100010001);
  v140 = v10;
  v12 = 2 * *(&v140 & 0xFFFFFFFFFFFFFFF9 | (2 * (v9 & 3))) * *(&v140 & 0xFFFFFFFFFFFFFFF9 | (2 * (v8 & 3)));
  if (*(&v159 + 1) < v12)
  {
    _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE9do_resizeEm(&v158, v12);
  }

  v154[1] = 0;
  v154[0] = 0;
  v155 = 0;
  __p[1] = 0;
  __p[0] = 0;
  v153 = 0;
  v139 = v11;
  v13 = *(&v139 & 0xFFFFFFFFFFFFFFF9 | (2 * (v8 & 3)));
  v122 = *(&v139 & 0xFFFFFFFFFFFFFFF9 | (2 * (v9 & 3)));
  std::vector<double>::resize(v154, v13 * v122);
  std::vector<double>::resize(__p, v13 * v122);
  v157 = 0;
  memset(v156, 0, sizeof(v156));
  geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::init(v156, 1uLL);
  v14 = a4;
  v112 = *(&v139 | (2 * v6));
  if (*(&v139 | (2 * v6)))
  {
    v15 = 0;
    v114 = (&v137 & 0xFFFFFFFFFFFFFFF9 | (2 * (v8 & 3)));
    v120 = (&v135 & 0xFFFFFFFFFFFFFFF9 | (2 * (v9 & 3)));
    v16.f64[0] = v128.f64[0];
    v16.f64[1] = v128.f64[0];
    v119 = v16;
    v17 = (&v131 & 0xFFFFFFFFFFFFFFF9 | (2 * (v8 & 3)));
    v16.f64[1] = v128.f64[0];
    v124 = v16;
    v18 = (&v131 & 0xFFFFFFFFFFFFFFF9 | (2 * (v9 & 3)));
    v19 = (&v134 & 0xFFFFFFFFFFFFFFF9 | (2 * (v8 & 3)));
    v117 = (&v134 & 0xFFFFFFFFFFFFFFF9 | (2 * (v9 & 3)));
    v118 = (&v136 & 0xFFFFFFFFFFFFFFF9 | (2 * (v8 & 3)));
    do
    {
      v113 = v15;
      if (v13)
      {
        v20 = 0;
        v138 = 0;
        *(&v138 & 0xFFFFFFFFFFFFFFF9 | (2 * (v6 & 3))) = v15;
        v21 = v138;
        do
        {
          v115 = v20;
          if (v122)
          {
            v22 = 0;
            v137 = v21;
            *v114 = v20;
            v23 = v137;
            do
            {
              v135 = v23;
              *v120 = v22;
              v24 = v135;
              v25 = vmovl_u16(v135);
              v26.i64[0] = v25.u32[2];
              v26.i64[1] = v25.u32[3];
              v27 = vcvtq_f64_u64(v26);
              v26.i64[0] = v25.u32[0];
              v26.i64[1] = v25.u32[1];
              v28 = vmlaq_f64(a2[1], v128, v27);
              v30 = *a1;
              v29 = *(a1 + 8);
              v145 = vmlaq_f64(*a2, v119, vcvtq_f64_u64(v26));
              v146 = v28;
              v31 = v30(&v145, v29);
              v136 = v24;
              v126 = v22;
              *(v154[0] + v22 * v13 + *v118) = v31;
              v32 = vtst_s16(v24, v24);
              v32.i16[3] = v32.i16[2];
              if ((vminv_u16(v32) & 0x8000) != 0)
              {
                v33 = 0;
                v34 = 0;
                v35 = vadd_s16(v24, -1);
                v151 = v35;
                v148 = -1;
                v149 = 0;
                v150 = 0;
                v36 = __p[0];
                v37 = v154[0];
                do
                {
                  v38 = geom::marching_cubes<double>::vert_map[v33];
                  v134 = vadd_s16(v38, v35);
                  v39 = *v19;
                  v40 = *v117 * v13;
                  v133 = v38;
                  if (*(&v133 | (2 * v6)))
                  {
                    v41 = v37;
                  }

                  else
                  {
                    v41 = v36;
                  }

                  v42 = v41[v40 + v39];
                  v145.f64[v33] = v42;
                  v43 = 1 << v33;
                  if (v42 <= 0.0)
                  {
                    LOBYTE(v43) = 0;
                  }

                  v34 |= v43;
                  ++v33;
                }

                while (v33 != 8);
                v147 = v34;
                if ((v34 - 1) <= 0xFDu)
                {
                  _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE6insertERKS1_OS4_(&v158, &v151, &v145, &v143);
                }
              }

              for (i = 0; i != 3; ++i)
              {
                v132 = v24;
                v45 = *(&v132 & 0xFFFFFFFFFFFFFFF9 | (2 * (i & 3)));
                if (v45)
                {
                  v130 = v24;
                  *(&v130 & 0xFFFFFFFFFFFFFFF9 | (2 * (i & 3))) = v45 - 1;
                  v131 = v130;
                  v46 = v6 == i ? __p : v154;
                  v47 = *(*v46 + *v17 + *v18 * v13);
                  v9 = i + (v9 & 0xFFFFFFFFFFFFFF00);
                  v143 = v130;
                  v144 = v9;
                  if (v31 > 0.0 != v47 > 0.0)
                  {
                    v151.i32[0] = (v14[1] - *v14) >> 5;
                    geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::insert(v156, &v143, &v151, &v145);
                    v49 = *a2;
                    v48 = a2[1];
                    v50 = vmovl_u16(v143);
                    v51.i64[0] = v50.u32[2];
                    v51.i64[1] = v50.u32[3];
                    v52 = vcvtq_f64_u64(v51);
                    v51.i64[0] = v50.u32[0];
                    v51.i64[1] = v50.u32[1];
                    v53 = vmlaq_f64(*a2, v124, vcvtq_f64_u64(v51));
                    v54 = vmlaq_f64(v48, v128, v52);
                    v55 = (&v129 & 0xFFFFFFFFFFFFFFF9 | (2 * (v144 & 3)));
                    v129 = v143;
                    ++*v55;
                    v56 = vmovl_u16(v129);
                    v51.i64[0] = v56.u32[2];
                    v51.i64[1] = v56.u32[3];
                    v57 = vcvtq_f64_u64(v51);
                    v51.i64[0] = v56.u32[0];
                    v51.i64[1] = v56.u32[1];
                    v58 = vcvtq_f64_u64(v51);
                    v59 = vmlaq_f64(v49, v124, v58);
                    v58.f64[0] = v47 / (v47 - v31);
                    v60 = vmlaq_n_f64(v53, vsubq_f64(v59, v53), v58.f64[0]);
                    v61 = vextq_s8(v60, v60, 8uLL).u64[0];
                    v62 = vmlaq_f64(v54, vsubq_f64(vmlaq_f64(v48, v128, v57), v54), v58);
                    v63 = v14[1];
                    v64 = v14[2];
                    if (v63 >= v64)
                    {
                      v66 = (v63 - *v14) >> 5;
                      v67 = v66 + 1;
                      if ((v66 + 1) >> 59)
                      {
LABEL_96:
                        std::__throw_bad_array_new_length[abi:nn200100]();
                      }

                      v68 = v64 - *v14;
                      if (v68 >> 4 > v67)
                      {
                        v67 = v68 >> 4;
                      }

                      if (v68 >= 0x7FFFFFFFFFFFFFE0)
                      {
                        v69 = 0x7FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v69 = v67;
                      }

                      if (v69)
                      {
                        _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a4, v69);
                      }

                      v14 = a4;
                      v70 = (32 * v66);
                      v60.i64[1] = v61;
                      *v70 = v60;
                      v70[1] = v62;
                      v65 = (32 * v66 + 32);
                      v71 = v14[1] - *v14;
                      v72 = (32 * v66 - v71);
                      memcpy(v70 - v71, *a4, v71);
                      v73 = *a4;
                      *a4 = v72;
                      a4[1] = v65;
                      a4[2] = 0;
                      if (v73)
                      {
                        operator delete(v73);
                      }
                    }

                    else
                    {
                      v60.i64[1] = v61;
                      *v63 = v60;
                      v63[1] = v62;
                      v65 = v63 + 2;
                    }

                    v14[1] = v65;
                  }
                }
              }

              v22 = v126 + 1;
            }

            while (v126 + 1 != v122);
          }

          v20 = v115 + 1;
        }

        while (v13 > (v115 + 1));
      }

      v74 = *v154;
      *v154 = *__p;
      *__p = v74;
      v75 = v155;
      v155 = v153;
      v153 = v75;
      v15 = v113 + 1;
    }

    while (v112 > (v113 + 1));
  }

  *&v145.f64[0] = &v158;
  v76 = a5;
  if (v159 >= 0x10)
  {
    v77 = 0;
    v78 = v158;
    v79 = v159 >> 4;
    while (1)
    {
      v80 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v78), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      *&v145.f64[1] = v80 ^ 0xFFFFLL;
      if (v80 != 0xFFFFLL)
      {
        break;
      }

      v77 -= 16;
      ++v78;
      if (!--v79)
      {
        goto LABEL_86;
      }
    }

    v81 = __clz(__rbit64(v80 ^ 0xFFFFLL));
    *&v82 = v81 - v77;
    *&v146.f64[0] = v81 - v77;
    if (v81 + 1 != v77)
    {
      do
      {
        v83 = (*(*&v145.f64[0] + 8) + 96 * *&v82);
        if (*(a1 + 16) == 1)
        {
          geom::marching_cubes<double>::process_cell_33(a1, &v83[1]);
          v84 = v83[11].i8[0];
        }

        else
        {
          v85 = 0;
          v86 = &mc_classic + 16 * v83[9].u8[0];
          do
          {
            v84 = v85;
            v87 = v86[3 * v85++];
          }

          while (v87 != 255);
          v83[10] = v86;
          v83[11].i8[0] = v84;
        }

        if (v84 >= 1)
        {
          v88 = 0;
          do
          {
            v89 = *(*&v83[10] + v88);
            if (v89 == 12)
            {
              if (v83[9].i32[1] == -1)
              {
                v83[9].i32[1] = (a4[1] - *a4) >> 5;
                geom::marching_cubes<double>::get_interior_vertex_position(v83, a4, v156, v142);
                v90 = v142[1];
                v92 = a4[1];
                v91 = a4[2];
                if (v92 >= v91)
                {
                  v94 = (v92 - *a4) >> 5;
                  v95 = v94 + 1;
                  if ((v94 + 1) >> 59)
                  {
                    goto LABEL_96;
                  }

                  v96 = v91 - *a4;
                  if (v96 >> 4 > v95)
                  {
                    v95 = v96 >> 4;
                  }

                  if (v96 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v97 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v97 = v95;
                  }

                  if (v97)
                  {
                    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a4, v97);
                  }

                  v98 = 32 * v94;
                  *v98 = v142[0];
                  *(v98 + 16) = v90;
                  v93 = (32 * v94 + 32);
                  v99 = a4[1] - *a4;
                  v100 = (32 * v94 - v99);
                  memcpy((v98 - v99), *a4, v99);
                  v101 = *a4;
                  *a4 = v100;
                  a4[1] = v93;
                  a4[2] = 0;
                  if (v101)
                  {
                    operator delete(v101);
                  }

                  v76 = a5;
                }

                else
                {
                  *v92 = v142[0];
                  v92[1] = v90;
                  v93 = v92 + 2;
                }

                a4[1] = v93;
              }

              v102 = &v83[9] + 1;
            }

            else
            {
              v103 = (&geom::marching_cubes<double>::cell_to_edge_vertex_offsets + 16 * v89);
              v143 = vadd_s16(*v103, *v83);
              LOBYTE(v144) = v103[1].i8[0];
              internal = geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::find_internal(v156, &v143);
              v102 = (*(&v156[0] + 1) + 24 * internal + 16);
            }

            std::vector<unsigned int>::push_back[abi:nn200100](v76, v102);
            ++v88;
          }

          while (3 * v83[11].i8[0] > v88);
        }

        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(&v145);
        v82 = v146.f64[0];
      }

      while (*&v146.f64[0] != -1);
    }
  }

LABEL_86:
  v106 = *v76;
  v105 = v76[1];
  if (*v76 != v105)
  {
    v107 = v105 - 4;
    if (v107 > v106)
    {
      v108 = v106 + 4;
      do
      {
        v109 = *(v108 - 1);
        *(v108 - 1) = *v107;
        *v107 = v109;
        v107 -= 4;
        v110 = v108 >= v107;
        v108 += 4;
      }

      while (!v110);
    }
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(v156);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v154[0])
  {
    v154[1] = v154[0];
    operator delete(v154[0]);
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v158);
}

double geom::dual_contouring<float>::compute_vertex_position(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v14 = vsubq_f32(*a3, *a2);
  v6 = (*a1)(*(a1 + 8), vmlaq_f32(*a2, v5, v14));
  v7 = 0.5;
  if (fabsf(v6) > 0.01)
  {
    v8 = 0.0;
    v9 = 1.0;
    v7 = 0.5;
    do
    {
      if (v6 <= 0.0)
      {
        v10 = v8;
      }

      else
      {
        v10 = v7;
      }

      if (v6 <= 0.0)
      {
        v11 = v7;
      }

      else
      {
        v11 = v9;
      }

      if (v6 <= 0.0)
      {
        v12 = v8;
      }

      else
      {
        v12 = v9;
      }

      v15 = (v7 + v12) * 0.5;
      v6 = (*a1)(*(a1 + 8), vmlaq_n_f32(*a2, v14, v15));
      v7 = v15;
      v9 = v11;
      v8 = v10;
    }

    while (fabsf(v6) > 0.01);
  }

  *&result = vmlaq_n_f32(*a2, v14, v7).u64[0];
  return result;
}

double geom::dual_contouring<float>::compute_normal(uint64_t a1, float32x4_t *a2)
{
  v4 = (*a1)(*(a1 + 8), vaddq_f32(*a2, xmmword_2500CC490));
  *v5.i64 = (*a1)(*(a1 + 8), vaddq_f32(*a2, xmmword_2500CC4A0));
  v5.f32[0] = v4 - v5.f32[0];
  v15 = v5;
  v6 = (*a1)(*(a1 + 8), vaddq_f32(*a2, xmmword_2500CC4B0));
  v7 = (*a1)(*(a1 + 8), vaddq_f32(*a2, xmmword_2500CC4C0));
  v14 = v6 - *&v7;
  v8 = (*a1)(*(a1 + 8), vaddq_f32(*a2, xmmword_2500CC4D0));
  v9 = (*a1)(*(a1 + 8), vaddq_f32(*a2, xmmword_2500CC4E0));
  v10 = v15;
  v10.f32[1] = v14;
  v10.f32[2] = v8 - v9;
  v11 = vmulq_f32(v10, v10);
  v12 = v10;
  v10.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
  *v11.f32 = vrsqrte_f32(v10.u32[0]);
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v11.f32, *v11.f32)));
  *&result = vmulq_n_f32(vnegq_f32(v12), vmul_f32(*v11.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v11.f32, *v11.f32))).f32[0]).u64[0];
  return result;
}

double geom::qef<float>::solve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7)
{
  DWORD2(v33) = 0;
  *&v33 = 0;
  geom::compute_svd_3x3<float>(a1, &v30, &v33, &v27, a5, a6, a7);
  v8 = 0;
  v9 = 1.0 / *&v33;
  if (*&v33 < 0.1)
  {
    v9 = 0.0;
  }

  v10.i64[0] = 0;
  v10.i32[3] = 0;
  v11 = LODWORD(v9);
  v12 = 1.0 / *(&v33 + 1);
  if (*(&v33 + 1) < 0.1)
  {
    v12 = 0.0;
  }

  v13.i32[0] = 0;
  v13.i64[1] = 0;
  *&v13.i32[1] = v12;
  v14 = 1.0 / *(&v33 + 2);
  if (*(&v33 + 2) < 0.1)
  {
    v14 = 0.0;
  }

  *&v10.i32[2] = v14;
  v15 = vzip1q_s32(v27, v28);
  v15.i32[2] = v29.i32[0];
  v16 = vzip2q_s32(v27, v28);
  v16.i32[2] = v29.i32[2];
  v17 = vzip2q_s32(vzip1q_s32(v27, v29), vdupq_lane_s32(*v28.i8, 1));
  v34 = v11;
  v35 = v13;
  v36 = v10;
  do
  {
    *(&v37 + v8) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*(&v34 + v8))), v17, *&v34.i8[v8], 1), v16, *(&v34 + v8), 2);
    v8 += 16;
  }

  while (v8 != 48);
  v18 = 0;
  v19 = v37;
  v20 = v38;
  v21 = v39;
  v22 = vzip1q_s32(v30, v32);
  v34 = vzip1q_s32(v22, v31);
  v35 = vzip2q_s32(v22, vdupq_lane_s32(*v31.i8, 1));
  v36 = vzip1q_s32(vzip2q_s32(v30, v32), vdupq_laneq_s32(v31, 2));
  do
  {
    v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(&v34 + v18))), v20, *&v34.i8[v18], 1), v21, *(&v34 + v18), 2);
    *(&v37 + v18) = v23;
    v18 += 16;
  }

  while (v18 != 48);
  v23.i16[0] = *(a1 + 96);
  v23.f32[0] = v23.u32[0];
  v24 = vdivq_f32(*(a1 + 80), vdupq_lane_s32(*v23.f32, 0));
  v25 = vsubq_f32(*(a1 + 48), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a1, v24.f32[0]), *(a1 + 16), *v24.f32, 1), *(a1 + 32), v24, 2));
  *&result = vaddq_f32(v24, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, v25.f32[0]), v38, *v25.f32, 1), v39, v25, 2)).u64[0];
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::__unordered_map_hasher<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,geom::cell_coord,std::equal_to<geom::cell_coord>,false>,std::__unordered_map_equal<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::equal_to<geom::cell_coord>,geom::cell_coord,true>,std::allocator<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>>>::__emplace_unique_key_args<geom::cell_coord,geom::cell_coord,geom::dual_contouring<float>::cell>(float *a1, unsigned __int16 *a2, uint64_t a3, void *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = (v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v7 = a2[2];
  v8 = (v7 + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
  v9 = *(a1 + 2);
  if (!*&v9)
  {
    goto LABEL_19;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = (v7 + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
    if (v8 >= *&v9)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = v8 & (*&v9 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v9)
      {
        v14 %= *&v9;
      }
    }

    else
    {
      v14 &= *&v9 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_19;
    }

LABEL_18:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_19;
    }
  }

  if (*(v13 + 8) != v4 || __PAIR64__(*(v13 + 10), *(v13 + 9)) != __PAIR64__(v7, v5))
  {
    goto LABEL_18;
  }

  return v13;
}

void std::__hash_table<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::__unordered_map_hasher<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,geom::cell_coord,std::equal_to<geom::cell_coord>,false>,std::__unordered_map_equal<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::equal_to<geom::cell_coord>,geom::cell_coord,true>,std::allocator<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 40));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t ***std::__hash_table<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::__unordered_map_hasher<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,geom::cell_coord,std::equal_to<geom::cell_coord>,false>,std::__unordered_map_equal<geom::cell_coord,std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>,std::equal_to<geom::cell_coord>,geom::cell_coord,true>,std::allocator<std::__hash_value_type<geom::cell_coord,geom::dual_contouring<float>::cell>>>::find<geom::cell_coord>(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v6 = a2[2];
  v7 = (v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v8 = vcnt_s8(v2);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
    if (v7 >= *&v2)
    {
      v9 = v7 % *&v2;
    }
  }

  else
  {
    v9 = v7 & (*&v2 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (result = *v10; result; result = *result)
  {
    v12 = result[1];
    if (v12 == v7)
    {
      if (*(result + 8) == v3 && __PAIR64__(*(result + 10), *(result + 9)) == __PAIR64__(v6, v4))
      {
        return result;
      }
    }

    else
    {
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }
      }

      else
      {
        v12 &= *&v2 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return result;
}

float64x2_t geom::dual_contouring<double>::compute_vertex_position@<Q0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X2>, float64x2_t *a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = vsubq_f64(*a3, *a2);
  v11 = *a1;
  v10 = *(a1 + 8);
  __asm { FMOV            V0.2D, #0.5 }

  v28 = v9;
  v29 = vsubq_f64(a3[1], v8);
  v31 = vmlaq_f64(v7, _Q0, v9);
  v32 = vmlaq_f64(v8, _Q0, v29);
  v17 = v11(&v31, v10);
  *&v18 = 0.5;
  if (fabs(v17) > 0.01)
  {
    v19 = 0.0;
    v20 = 1.0;
    *&v18 = 0.5;
    do
    {
      if (v17 <= 0.0)
      {
        v21 = v19;
      }

      else
      {
        v21 = *&v18;
      }

      if (v17 <= 0.0)
      {
        v22 = *&v18;
      }

      else
      {
        v22 = v20;
      }

      if (v17 <= 0.0)
      {
        v23 = v19;
      }

      else
      {
        v23 = v20;
      }

      *&v18 = (*&v18 + v23) * 0.5;
      v25 = *a1;
      v24 = *(a1 + 8);
      v26 = vmlaq_n_f64(*a2, v28, *&v18);
      v32 = vmlaq_n_f64(a2[1], v29, *&v18);
      v30 = v18;
      v31 = v26;
      v17 = v25(&v31, v24);
      v18 = v30;
      v20 = v22;
      v19 = v21;
    }

    while (fabs(v17) > 0.01);
  }

  result = vmlaq_n_f64(a2[1], v29, *&v18);
  *a4 = vmlaq_n_f64(*a2, v28, *&v18);
  a4[1] = result;
  return result;
}

float64x2_t geom::dual_contouring<double>::compute_normal@<Q0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v6 = vaddq_f64(*a2, xmmword_2500CC4F0);
  v7 = vaddq_f64(a2[1], 0);
  v9 = *a1;
  v8 = *(a1 + 8);
  v35 = v6;
  v36 = v7;
  v10 = v9(&v35, v8);
  v11 = a2[1];
  v13 = *a1;
  v12 = *(a1 + 8);
  v35 = vaddq_f64(*a2, xmmword_2500CC500);
  v36 = v11;
  v34 = v10 - v13(&v35, v12);
  v14 = vaddq_f64(a2[1], 0);
  v16 = *a1;
  v15 = *(a1 + 8);
  v35 = vaddq_f64(*a2, xmmword_2500CC510);
  v36 = v14;
  v17 = v16(&v35, v15);
  v18 = a2[1];
  v20 = *a1;
  v19 = *(a1 + 8);
  v35 = vaddq_f64(*a2, xmmword_2500CC520);
  v36 = v18;
  v33 = v17 - v20(&v35, v19);
  v21 = vaddq_f64(a2[1], 0x3F50624DD2F1A9FCuLL);
  v23 = *a1;
  v22 = *(a1 + 8);
  v35 = vaddq_f64(*a2, 0);
  v36 = v21;
  v24 = v23(&v35, v22);
  v25.f64[0] = -0.001;
  v26 = vaddq_f64(a2[1], v25);
  v28 = *a1;
  v27 = *(a1 + 8);
  v35 = *a2;
  v36 = v26;
  v29.f64[0] = v24 - v28(&v35, v27);
  v30.f64[0] = v34;
  v30.f64[1] = v33;
  v31 = 1.0 / sqrt(vmulq_f64(v29, v29).f64[0] + vaddvq_f64(vmulq_f64(v30, v30)));
  result = vmulq_n_f64(vnegq_f64(v29), v31);
  *a3 = vmulq_n_f64(vnegq_f64(v30), v31);
  a3[1] = result;
  return result;
}

float64x2_t geom::qef<double>::solve@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, double *a4@<X6>, float64x2_t *a5@<X8>)
{
  v50 = 0.0;
  v49 = 0uLL;
  geom::compute_svd_3x3<double>(a1, v44, &v49, v39, a2, a3, a4);
  v7 = 0;
  v8 = 1.0 / *&v49;
  *&v9 = 0;
  if (*&v49 < 0.1)
  {
    v8 = 0.0;
  }

  v10 = *&v8;
  if (*(&v49 + 1) >= 0.1)
  {
    v11 = 1.0 / *(&v49 + 1);
  }

  else
  {
    v11 = 0.0;
  }

  v12.i64[0] = 0;
  *&v12.i64[1] = v11;
  if (v50 >= 0.1)
  {
    *&v9 = 1.0 / v50;
  }

  v14 = v42;
  v13 = v43;
  v16 = vzip1q_s64(v39[0], v40);
  v17 = vzip2q_s64(v39[0], v40);
  v18 = vzip1q_s64(v39[1], v41);
  v51 = v10;
  v52 = 0uLL;
  v53 = v12;
  v54 = 0uLL;
  v55 = 0uLL;
  v56 = v9;
  v15 = vextq_s8(v14, v14, 8uLL);
  v16.i64[1] = vextq_s8(v16, v16, 8uLL).u64[0];
  v17.i64[1] = vextq_s8(v17, v17, 8uLL).u64[0];
  v18.i64[1] = vextq_s8(v18, v18, 8uLL).u64[0];
  do
  {
    v20 = *(&v51 + v7);
    v19 = *(&v51 + v7 + 16);
    v21 = (&v57 + v7);
    *v21 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v16, v20.f64[0]), v17, v20, 1), v18, v19.f64[0]);
    v21[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v14, v20), v15, v20, 1), v19, v13);
    v7 += 32;
  }

  while (v7 != 96);
  v22 = 0;
  v24 = v57;
  v23 = v58;
  v26 = v59;
  v25 = v60;
  v28 = v61;
  v27 = v62;
  v51 = vzip1q_s64(v44[0], v45);
  v52 = v47;
  v53 = vzip2q_s64(v44[0], v45);
  v54 = vdupq_laneq_s64(v47, 1);
  v55 = vzip1q_s64(v44[1], v46);
  v56 = v48;
  do
  {
    v30 = *(&v51 + v22);
    v29 = *(&v51 + v22 + 16);
    v31 = (&v57 + v22);
    v32 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v24, v30.f64[0]), v26, v30, 1), v28, *&v29);
    *v31 = v32;
    v31[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v23, v30.f64[0]), v25, v30, 1), v27, *&v29);
    v22 += 32;
  }

  while (v22 != 96);
  LOWORD(v32.f64[0]) = *(a1 + 176);
  v32.f64[0] = *&v32.f64[0];
  v33 = vdivq_f64(*(a1 + 160), v32);
  v34 = vdivq_f64(*(a1 + 144), vdupq_lane_s64(*&v32.f64[0], 0));
  v35 = vsubq_f64(*(a1 + 112), vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*(a1 + 16), v34.f64[0]), *(a1 + 48), v34, 1), *(a1 + 80), v33.f64[0]));
  v36 = vsubq_f64(*(a1 + 96), vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*a1, v34.f64[0]), *(a1 + 32), v34, 1), *(a1 + 64), v33.f64[0]));
  result = vaddq_f64(v34, vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v57, v36.f64[0]), v59, v36, 1), v61, v35.f64[0]));
  v38 = vaddq_f64(v33, vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v58, v36), v60, v36, 1), v35, v62));
  *a5 = result;
  a5[1] = v38;
  return result;
}

uint64_t geom::marching_cubes<float>::process_cell_33(uint64_t result, uint64_t a2)
{
  v2 = &mc_lewiner_cases + 2 * *(a2 + 32);
  v4 = result;
  v5 = v2[1];
  switch(*v2)
  {
    case 1:
      *(a2 + 40) = &mc_lewiner_tiling_1 + 3 * v5;
      v6 = 1;
      goto LABEL_93;
    case 2:
      v22 = &mc_lewiner_tiling_2;
      goto LABEL_66;
    case 3:
      result = geom::marching_cubes<float>::test_face(result, mc_lewiner_test_3[v5], a2);
      if (result)
      {
        v20 = &mc_lewiner_tiling_3_2;
        goto LABEL_49;
      }

      v22 = &mc_lewiner_tiling_3_1;
      goto LABEL_66;
    case 4:
      result = geom::marching_cubes<float>::test_interior(result, mc_lewiner_test_4[v5], a2, 0);
      if (result)
      {
        v21 = &mc_lewiner_tiling_4_2 + 18 * v5;
        goto LABEL_85;
      }

      v22 = &mc_lewiner_tiling_4_1;
LABEL_66:
      *(a2 + 40) = &v22[6 * v5];
      v6 = 2;
      goto LABEL_93;
    case 5:
      v10 = 9 * v5;
      v11 = &mc_lewiner_tiling_5;
      goto LABEL_8;
    case 6:
      v23 = &mc_lewiner_test_6 + 2 * v5;
      result = geom::marching_cubes<float>::test_face(result, *v23, a2);
      if (result)
      {
        v24 = &mc_lewiner_tiling_6_2;
        goto LABEL_36;
      }

      result = geom::marching_cubes<float>::test_interior(v4, v23[1], a2, 0);
      if (result)
      {
        v30 = 27;
        v31 = &mc_lewiner_tiling_6_1_2;
        goto LABEL_91;
      }

      v10 = 9 * v5;
      v11 = &mc_lewiner_tiling_6_1_1;
      goto LABEL_8;
    case 7:
      v26 = &mc_lewiner_test_7 + 5 * v5;
      v27 = geom::marching_cubes<float>::test_face(result, *v26, a2);
      if (geom::marching_cubes<float>::test_face(v4, v26[1], a2))
      {
        v27 |= 2u;
      }

      result = geom::marching_cubes<float>::test_face(v4, v26[2], a2);
      v28 = v27 | 4;
      if (!result)
      {
        v28 = v27;
      }

      if (v28 > 3)
      {
        if (v28 <= 5)
        {
          if (v28 == 4)
          {
            v25 = &mc_lewiner_tiling_7_2 + 45 * v5 + 30;
            goto LABEL_37;
          }

          v32 = &mc_lewiner_tiling_7_3 + 81 * v5 + 27;
          goto LABEL_92;
        }

        if (v28 == 6)
        {
          v32 = &mc_lewiner_tiling_7_3 + 81 * v5 + 54;
LABEL_92:
          *(a2 + 40) = v32;
          v6 = 9;
          goto LABEL_93;
        }

        result = geom::marching_cubes<float>::test_interior(v4, v26[3], a2, 0);
        if (!result)
        {
          v24 = &mc_lewiner_tiling_7_4_1;
LABEL_36:
          v25 = &v24[16 * v5 - v5];
          goto LABEL_37;
        }

        v30 = 27;
        v31 = &mc_lewiner_tiling_7_4_2;
      }

      else
      {
        if (v28 <= 1)
        {
          if (!v28)
          {
            v10 = 9 * v5;
            v11 = &mc_lewiner_tiling_7_1;
LABEL_8:
            *(a2 + 40) = &v11[v10];
            v6 = 3;
            goto LABEL_93;
          }

          v25 = &mc_lewiner_tiling_7_2 + 45 * v5;
LABEL_37:
          *(a2 + 40) = v25;
          v6 = 5;
          goto LABEL_93;
        }

        if (v28 == 2)
        {
          v25 = &mc_lewiner_tiling_7_2 + 45 * v5 + 15;
          goto LABEL_37;
        }

        v30 = 81;
        v31 = &mc_lewiner_tiling_7_3;
      }

LABEL_91:
      v32 = &v31[v5 * v30];
      goto LABEL_92;
    case 8:
      v22 = &mc_lewiner_tiling_8;
      goto LABEL_66;
    case 9:
      v20 = &mc_lewiner_tiling_9;
      goto LABEL_49;
    case 10:
      v18 = &mc_lewiner_test_10 + 6 * v2[1];
      v19 = geom::marching_cubes<float>::test_face(result, *v18, a2);
      result = geom::marching_cubes<float>::test_face(v4, v18[1], a2);
      if (v19)
      {
        if (!result)
        {
          v9 = &mc_lewiner_tiling_10_2;
          goto LABEL_74;
        }

        result = geom::marching_cubes<float>::test_interior(v4, v18[4], a2, 0);
        if (result || (result = geom::marching_cubes<float>::test_interior(v4, v18[5], a2, 0), result))
        {
          v9 = &mc_lewiner_tiling_10_1_2_;
          goto LABEL_74;
        }

        v20 = &mc_lewiner_tiling_10_1_1_;
      }

      else
      {
        if (result)
        {
          v9 = &mc_lewiner_tiling_10_2_;
          goto LABEL_74;
        }

        result = geom::marching_cubes<float>::test_interior(v4, v18[2], a2, 0);
        if (result || (result = geom::marching_cubes<float>::test_interior(v4, v18[3], a2, 0), result))
        {
          v9 = &mc_lewiner_tiling_10_1_2;
          goto LABEL_74;
        }

        v20 = &mc_lewiner_tiling_10_1_1;
      }

      goto LABEL_49;
    case 11:
      v20 = &mc_lewiner_tiling_11;
      goto LABEL_49;
    case 12:
      v7 = &mc_lewiner_test_12 + 4 * v5;
      v8 = geom::marching_cubes<float>::test_face(result, *v7, a2);
      result = geom::marching_cubes<float>::test_face(v4, v7[1], a2);
      if (v8)
      {
        if (!result)
        {
          v9 = &mc_lewiner_tiling_12_2;
          goto LABEL_74;
        }

        result = geom::marching_cubes<float>::test_interior(v4, v7[3], a2, 0);
        if (result)
        {
          v9 = &mc_lewiner_tiling_12_1_2_;
LABEL_74:
          *(a2 + 40) = &v9[24 * v5];
          v6 = 8;
          goto LABEL_93;
        }

        v20 = &mc_lewiner_tiling_12_1_1_;
      }

      else
      {
        if (result)
        {
          v9 = &mc_lewiner_tiling_12_2_;
          goto LABEL_74;
        }

        result = geom::marching_cubes<float>::test_interior(v4, v7[2], a2, 0);
        if (result)
        {
          v9 = &mc_lewiner_tiling_12_1_2;
          goto LABEL_74;
        }

        v20 = &mc_lewiner_tiling_12_1_1;
      }

      goto LABEL_49;
    case 13:
      v12 = &mc_lewiner_test_13 + 6 * v2[1];
      v13 = geom::marching_cubes<float>::test_face(result, *v12, a2);
      if (geom::marching_cubes<float>::test_face(v4, v12[1], a2))
      {
        v13 |= 2u;
      }

      if (geom::marching_cubes<float>::test_face(v4, v12[2], a2))
      {
        v13 |= 4u;
      }

      if (geom::marching_cubes<float>::test_face(v4, v12[3], a2))
      {
        v13 |= 8u;
      }

      if (geom::marching_cubes<float>::test_face(v4, 5, a2))
      {
        v13 += 16;
      }

      result = geom::marching_cubes<float>::test_face(v4, 6, a2);
      v14 = v13 + 32;
      if (!result)
      {
        v14 = v13;
      }

      v15 = mc_lewiner_subconfig_13[v14];
      if (v15 <= 22)
      {
        if (v15 > 6)
        {
          if ((v15 - 7) < 0xC)
          {
            v16 = (v15 - 7);
            v17 = &mc_lewiner_tiling_13_3;
LABEL_55:
            v29 = v17 + 360 * v5 + 30 * v16;
LABEL_56:
            *(a2 + 40) = v29;
            v6 = 10;
            goto LABEL_93;
          }

          v35 = v15 - 19;
          if (v35 < 4)
          {
            *(a2 + 40) = &mc_lewiner_tiling_13_4 + 144 * v5 + 36 * v35;
            v6 = 12;
            goto LABEL_93;
          }

          return result;
        }

        if ((v15 - 1) < 6)
        {
          v33 = (v15 - 1);
          v34 = &mc_lewiner_tiling_13_2;
LABEL_84:
          v21 = &v34[108 * v5 + 18 * v33];
LABEL_85:
          *(a2 + 40) = v21;
          v6 = 6;
          goto LABEL_93;
        }

        if (v15)
        {
          return result;
        }

        v20 = &mc_lewiner_tiling_13_1;
        goto LABEL_49;
      }

      if (v15 > 38)
      {
        if ((v15 - 39) < 6)
        {
          v33 = (v15 - 39);
          v34 = &mc_lewiner_tiling_13_2_;
          goto LABEL_84;
        }

        if (v15 != 45)
        {
          return result;
        }

        v20 = &mc_lewiner_tiling_13_1_;
LABEL_49:
        *(a2 + 40) = &v20[12 * v5];
        v6 = 4;
LABEL_93:
        *(a2 + 48) = v6;
        return result;
      }

      if ((v15 - 27) < 0xC)
      {
        v16 = (v15 - 27);
        v17 = &mc_lewiner_tiling_13_3_;
        goto LABEL_55;
      }

      v36 = v15 - 23;
      if (v36 < 4)
      {
        v37 = v36;
        v38 = mc_lewiner_test_sub_13[4 * v5 + v36];
        result = geom::marching_cubes<float>::test_interior(v4, v38, a2, 1);
        if (result == 2)
        {
          if (*(a2 + 4 * byte_2500D1158[v38]) > 0.0)
          {
            goto LABEL_112;
          }
        }

        else
        {
          if (result != 1)
          {
            if (!result)
            {
              v21 = &mc_lewiner_tiling_13_5_1 + 72 * v5 + 18 * v37;
              goto LABEL_85;
            }

            goto LABEL_114;
          }

          if (*(a2 + 4 * byte_2500D1158[v38]) < 0.0)
          {
LABEL_112:
            v39 = &mc_lewiner_tiling_13_5_2_;
LABEL_115:
            v29 = v39 + 120 * v5 + 30 * v37;
            goto LABEL_56;
          }
        }

LABEL_114:
        v39 = &mc_lewiner_tiling_13_5_2;
        goto LABEL_115;
      }

      return result;
    case 14:
      v20 = &mc_lewiner_tiling_14;
      goto LABEL_49;
    default:
      return result;
  }
}

double geom::marching_cubes<float>::get_interior_vertex_position(uint64_t a1, uint64_t a2, int16x4_t *a3, void *a4, void *a5)
{
  v8 = 0;
  v14 = 0u;
  v9 = 192;
  v10 = &byte_2500D1060;
  do
  {
    v15 = vadd_s16(*a3, *(v10 - 8));
    v16 = *v10;
    internal = geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::find_internal(a5, &v15);
    if (internal != -1)
    {
      v12 = *(*a4 + 16 * *(a5[1] + 24 * internal + 16));
      v14 = vaddq_f32(v14, v12);
      ++v8;
    }

    v10 += 16;
    v9 -= 16;
  }

  while (v9);
  v12.f32[0] = v8;
  v12.i64[0] = vdivq_f32(v14, vdupq_lane_s32(*v12.f32, 0)).u64[0];
  return *v12.i64;
}

void *_ZN4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE4initEm(void *result, unint64_t a2)
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

  v9 = v2[2] << 6 <= 0x40uLL ? 64 : v2[2] << 6;
  result = malloc_type_aligned_alloc(0x40uLL, v9, 0x105004082B79F0AuLL);
  v2[1] = result;
  if (v2[2])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v2[1] + v10;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 44) = -1;
      ++v11;
      v13 = v2[2];
      v10 += 64;
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

void _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE9do_resizeEm(__int128 *a1, unint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE4initEm(&v23, a2);
  v21[0] = a1;
  v3 = *(a1 + 2);
  if (v3 >= 0x10)
  {
    v4 = 0;
    v5 = *a1;
    v6 = v3 >> 4;
    while (1)
    {
      v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v21[1] = v7 ^ 0xFFFF;
      if (v7 != 0xFFFF)
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

    v8 = __clz(__rbit64(v7 ^ 0xFFFF));
    v9 = v8 - v4;
    v22 = v8 - v4;
    if (v8 + 1 != v4)
    {
      do
      {
        v10 = (*(v21[0] + 8) + (v9 << 6));
        v11 = v10[3];
        v13 = *v10;
        v12 = v10[1];
        *&v20[32] = v10[2];
        *&v20[48] = v11;
        *v20 = v13;
        *&v20[16] = v12;
        v18[0] = *&v20[8];
        v18[1] = *&v20[24];
        v18[2] = *&v20[40];
        v19 = *(&v11 + 1);
        _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE12internal_addIS4_EEmRKS1_T_(&v23, v20, v18);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(v21);
        v9 = v22;
      }

      while (v22 != -1);
    }
  }

LABEL_10:
  if (&v23 != a1)
  {
    v14 = v24;
    v15 = *a1;
    v16 = a1[1];
    *a1 = v23;
    a1[1] = v14;
    v23 = v15;
    v24 = v16;
    v17 = *(a1 + 4);
    *(a1 + 4) = v25;
    v25 = v17;
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v23);
}

int64x2_t _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE12internal_addIS4_EEmRKS1_T_(uint64_t *a1, void *a2, __int128 *a3)
{
  if (!a1[4])
  {
    _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE13grow_to_countEv(a1);
  }

  v6 = WORD1(*a2) - 0x61C8864680B583E9;
  v7 = (v6 + (*a2 << 6) + (*a2 >> 2)) ^ *a2;
  v8 = (v6 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v9 = a1[2] >> 4;
  v10 = v8 % v9;
  v11 = *a1;
  v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v8 % v9))), xmmword_2500C4D40)))), 0x3830282018100800)));
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
  v14 = *(v13 + v12);
  *(v13 + v12) = v8 & 0x7F;
  v15 = a1[1] + ((v12 + 16 * v10) << 6);
  *v15 = *a2;
  v16 = *a3;
  v17 = a3[1];
  v18 = a3[2];
  *(v15 + 56) = *(a3 + 6);
  *(v15 + 40) = v18;
  *(v15 + 24) = v17;
  *(v15 + 8) = v16;
  if (v14 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  result = vaddq_s64(*(a1 + 3), v20);
  *(a1 + 3) = result;
  return result;
}

void _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE13grow_to_countEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 32))
  {
LABEL_6:
    _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE9do_resizeEm(a1, v1);
  }
}

void *geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::init(void *result, unint64_t a2)
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
  result = malloc_type_aligned_alloc(0x40uLL, v9, 0x10000400ACA548DuLL);
  v2[1] = result;
  if (v2[2])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v2[1] + v10;
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
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

int64x2_t geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::internal_add<unsigned int>(uint64_t *a1, uint64_t a2, int a3)
{
  if (!a1[4])
  {
    geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::grow_to_count(a1);
  }

  v6 = WORD1(*a2) - 0x61C8864680B583E9;
  v7 = (v6 + (*a2 << 6) + (*a2 >> 2)) ^ *a2;
  v8 = (v6 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v9 = *(a2 + 8);
  v10 = a1[2] >> 4;
  v11 = ((v9 + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583E9) ^ v8) % v10;
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = ((v9 + (v8 << 6) + (v8 >> 2) + 23) ^ v8) & 0x7F;
  v16 = *(v14 + v13);
  *(v14 + v13) = v15;
  v17 = a1[1] + 24 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 16) = a3;
  if (v16 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  result = vaddq_s64(*(a1 + 3), v19);
  *(a1 + 3) = result;
  return result;
}

unint64_t geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::compute_hash(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = WORD1(*a2) - 0x61C8864680B583E9;
  v4 = (v3 + (((v3 + (v2 << 6) + (v2 >> 2)) ^ v2) << 6) + (((v3 + (v2 << 6) + (v2 >> 2)) ^ v2) >> 2)) ^ (v3 + (v2 << 6) + (v2 >> 2)) ^ v2;
  return (*(a2 + 8) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
}

void geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::grow_to_count(__int128 *result)
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
    geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::do_resize(result, v1);
  }
}

void geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::do_resize(__int128 *a1, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::init(&v20, a2);
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
        geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::internal_add<unsigned int>(&v20, &v16, v11);
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

uint64_t geom::marching_cubes<float>::test_face(uint64_t a1, int a2, float *a3)
{
  v3 = 0.0;
  if (a2 > 0)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
LABEL_20:
        v7 = a3 + 7;
        v8 = a3 + 4;
        v9 = a3;
        a3 += 3;
        goto LABEL_24;
      }

      if (a2 == 5)
      {
        goto LABEL_22;
      }

      v4 = 0.0;
      v5 = 0.0;
      v6 = 0.0;
      if (a2 == 6)
      {
        goto LABEL_18;
      }

      return (a2 < 1) ^ ((v6 * ((v6 * v4) - (v3 * v5))) >= 0.0);
    }

    if (a2 == 1)
    {
LABEL_14:
      v7 = a3 + 4;
      v8 = a3 + 5;
LABEL_23:
      v9 = a3 + 1;
      goto LABEL_24;
    }

    if (a2 == 2)
    {
LABEL_21:
      v7 = a3 + 5;
      v8 = a3 + 6;
      v9 = a3 + 2;
      ++a3;
      goto LABEL_24;
    }

LABEL_19:
    v7 = a3 + 6;
    v8 = a3 + 7;
    v9 = a3 + 3;
    a3 += 2;
    goto LABEL_24;
  }

  if (a2 <= -4)
  {
    if (a2 != -6)
    {
      if (a2 != -5)
      {
        v4 = 0.0;
        v5 = 0.0;
        v6 = 0.0;
        if (a2 != -4)
        {
          return (a2 < 1) ^ ((v6 * ((v6 * v4) - (v3 * v5))) >= 0.0);
        }

        goto LABEL_20;
      }

LABEL_22:
      v7 = a3 + 3;
      v8 = a3 + 2;
      goto LABEL_23;
    }

LABEL_18:
    v7 = a3 + 7;
    v8 = a3 + 6;
    v9 = a3 + 5;
    a3 += 4;
LABEL_24:
    v6 = *a3;
    v4 = *v8;
    v3 = *v7;
    v5 = *v9;
    return (a2 < 1) ^ ((v6 * ((v6 * v4) - (v3 * v5))) >= 0.0);
  }

  if (a2 == -3)
  {
    goto LABEL_19;
  }

  if (a2 == -2)
  {
    goto LABEL_21;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (a2 == -1)
  {
    goto LABEL_14;
  }

  return (a2 < 1) ^ ((v6 * ((v6 * v4) - (v3 * v5))) >= 0.0);
}

uint64_t geom::marching_cubes<float>::test_interior(uint64_t a1, int a2, float *a3, int a4)
{
  v5 = *a3;
  v4 = a3[1];
  v7 = a3[2];
  v6 = a3[3];
  v8 = a3[4] - *a3;
  v9 = a3[6] - v7;
  v10 = a3[5] - v4;
  v11 = a3[7] - v6;
  v12 = (v8 * v9) - (v10 * v11);
  if (fabsf(v12) < 0.00001)
  {
    goto LABEL_6;
  }

  v13 = -((((v5 * v9) + (v7 * v8)) - (v6 * v10)) + (-v4 * v11)) / (v12 + v12);
  if (v13 < 0.0 || v13 > 1.0)
  {
    goto LABEL_6;
  }

  LOBYTE(v15) = 0;
  v17 = v5 + (v8 * v13);
  v18 = v4 + (v10 * v13);
  v19 = v7 + (v9 * v13);
  v20 = v6 + (v11 * v13);
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return v15;
      }

      if (v12 <= 0.0)
      {
        goto LABEL_6;
      }

      if ((v17 * v19) >= (v18 * v20))
      {
        goto LABEL_6;
      }

      v21 = v6 + (v11 * v13);
      if ((LODWORD(v18) ^ LODWORD(v20)) < 0)
      {
        goto LABEL_6;
      }

      v22 = *(a3 + 3);
LABEL_29:
      v15 = a4 + ((LODWORD(v21) ^ ~v22) >> 31);
      return v15;
    }

    if (v12 < 0.0 && (v17 * v19) > (v18 * v20))
    {
      v21 = v19;
      if (((LODWORD(v17) ^ LODWORD(v19)) & 0x80000000) == 0)
      {
        v22 = *(a3 + 2);
        goto LABEL_29;
      }
    }
  }

  else if (a2 == 1)
  {
    if (v12 < 0.0 && (v17 * v19) > (v18 * v20))
    {
      v21 = v17;
      if (((LODWORD(v17) ^ LODWORD(v19)) & 0x80000000) == 0)
      {
        v22 = *a3;
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      return v15;
    }

    if (v12 > 0.0 && (v17 * v19) < (v18 * v20))
    {
      v21 = v18;
      if (((LODWORD(v18) ^ LODWORD(v20)) & 0x80000000) == 0)
      {
        v22 = *(a3 + 1);
        goto LABEL_29;
      }
    }
  }

LABEL_6:
  LOBYTE(v15) = 0;
  return v15;
}

uint64_t geom::marching_cubes<double>::process_cell_33(uint64_t result, uint64_t a2)
{
  v2 = &mc_lewiner_cases + 2 * *(a2 + 64);
  v4 = result;
  v5 = v2[1];
  switch(*v2)
  {
    case 1:
      *(a2 + 72) = &mc_lewiner_tiling_1 + 3 * v5;
      v6 = 1;
      goto LABEL_93;
    case 2:
      v22 = &mc_lewiner_tiling_2;
      goto LABEL_66;
    case 3:
      result = geom::marching_cubes<double>::test_face(result, mc_lewiner_test_3[v5], a2);
      if (result)
      {
        v20 = &mc_lewiner_tiling_3_2;
        goto LABEL_49;
      }

      v22 = &mc_lewiner_tiling_3_1;
      goto LABEL_66;
    case 4:
      result = geom::marching_cubes<double>::test_interior(result, mc_lewiner_test_4[v5], a2, 0);
      if (result)
      {
        v21 = &mc_lewiner_tiling_4_2 + 18 * v5;
        goto LABEL_85;
      }

      v22 = &mc_lewiner_tiling_4_1;
LABEL_66:
      *(a2 + 72) = &v22[6 * v5];
      v6 = 2;
      goto LABEL_93;
    case 5:
      v10 = 9 * v5;
      v11 = &mc_lewiner_tiling_5;
      goto LABEL_8;
    case 6:
      v23 = &mc_lewiner_test_6 + 2 * v5;
      result = geom::marching_cubes<double>::test_face(result, *v23, a2);
      if (result)
      {
        v24 = &mc_lewiner_tiling_6_2;
        goto LABEL_36;
      }

      result = geom::marching_cubes<double>::test_interior(v4, v23[1], a2, 0);
      if (result)
      {
        v30 = 27;
        v31 = &mc_lewiner_tiling_6_1_2;
        goto LABEL_91;
      }

      v10 = 9 * v5;
      v11 = &mc_lewiner_tiling_6_1_1;
      goto LABEL_8;
    case 7:
      v26 = &mc_lewiner_test_7 + 5 * v5;
      v27 = geom::marching_cubes<double>::test_face(result, *v26, a2);
      if (geom::marching_cubes<double>::test_face(v4, v26[1], a2))
      {
        v27 |= 2u;
      }

      result = geom::marching_cubes<double>::test_face(v4, v26[2], a2);
      v28 = v27 | 4;
      if (!result)
      {
        v28 = v27;
      }

      if (v28 > 3)
      {
        if (v28 <= 5)
        {
          if (v28 == 4)
          {
            v25 = &mc_lewiner_tiling_7_2 + 45 * v5 + 30;
            goto LABEL_37;
          }

          v32 = &mc_lewiner_tiling_7_3 + 81 * v5 + 27;
          goto LABEL_92;
        }

        if (v28 == 6)
        {
          v32 = &mc_lewiner_tiling_7_3 + 81 * v5 + 54;
LABEL_92:
          *(a2 + 72) = v32;
          v6 = 9;
          goto LABEL_93;
        }

        result = geom::marching_cubes<double>::test_interior(v4, v26[3], a2, 0);
        if (!result)
        {
          v24 = &mc_lewiner_tiling_7_4_1;
LABEL_36:
          v25 = &v24[16 * v5 - v5];
          goto LABEL_37;
        }

        v30 = 27;
        v31 = &mc_lewiner_tiling_7_4_2;
      }

      else
      {
        if (v28 <= 1)
        {
          if (!v28)
          {
            v10 = 9 * v5;
            v11 = &mc_lewiner_tiling_7_1;
LABEL_8:
            *(a2 + 72) = &v11[v10];
            v6 = 3;
            goto LABEL_93;
          }

          v25 = &mc_lewiner_tiling_7_2 + 45 * v5;
LABEL_37:
          *(a2 + 72) = v25;
          v6 = 5;
          goto LABEL_93;
        }

        if (v28 == 2)
        {
          v25 = &mc_lewiner_tiling_7_2 + 45 * v5 + 15;
          goto LABEL_37;
        }

        v30 = 81;
        v31 = &mc_lewiner_tiling_7_3;
      }

LABEL_91:
      v32 = &v31[v5 * v30];
      goto LABEL_92;
    case 8:
      v22 = &mc_lewiner_tiling_8;
      goto LABEL_66;
    case 9:
      v20 = &mc_lewiner_tiling_9;
      goto LABEL_49;
    case 10:
      v18 = &mc_lewiner_test_10 + 6 * v2[1];
      v19 = geom::marching_cubes<double>::test_face(result, *v18, a2);
      result = geom::marching_cubes<double>::test_face(v4, v18[1], a2);
      if (v19)
      {
        if (!result)
        {
          v9 = &mc_lewiner_tiling_10_2;
          goto LABEL_74;
        }

        result = geom::marching_cubes<double>::test_interior(v4, v18[4], a2, 0);
        if (result || (result = geom::marching_cubes<double>::test_interior(v4, v18[5], a2, 0), result))
        {
          v9 = &mc_lewiner_tiling_10_1_2_;
          goto LABEL_74;
        }

        v20 = &mc_lewiner_tiling_10_1_1_;
      }

      else
      {
        if (result)
        {
          v9 = &mc_lewiner_tiling_10_2_;
          goto LABEL_74;
        }

        result = geom::marching_cubes<double>::test_interior(v4, v18[2], a2, 0);
        if (result || (result = geom::marching_cubes<double>::test_interior(v4, v18[3], a2, 0), result))
        {
          v9 = &mc_lewiner_tiling_10_1_2;
          goto LABEL_74;
        }

        v20 = &mc_lewiner_tiling_10_1_1;
      }

      goto LABEL_49;
    case 11:
      v20 = &mc_lewiner_tiling_11;
      goto LABEL_49;
    case 12:
      v7 = &mc_lewiner_test_12 + 4 * v5;
      v8 = geom::marching_cubes<double>::test_face(result, *v7, a2);
      result = geom::marching_cubes<double>::test_face(v4, v7[1], a2);
      if (v8)
      {
        if (!result)
        {
          v9 = &mc_lewiner_tiling_12_2;
          goto LABEL_74;
        }

        result = geom::marching_cubes<double>::test_interior(v4, v7[3], a2, 0);
        if (result)
        {
          v9 = &mc_lewiner_tiling_12_1_2_;
LABEL_74:
          *(a2 + 72) = &v9[24 * v5];
          v6 = 8;
          goto LABEL_93;
        }

        v20 = &mc_lewiner_tiling_12_1_1_;
      }

      else
      {
        if (result)
        {
          v9 = &mc_lewiner_tiling_12_2_;
          goto LABEL_74;
        }

        result = geom::marching_cubes<double>::test_interior(v4, v7[2], a2, 0);
        if (result)
        {
          v9 = &mc_lewiner_tiling_12_1_2;
          goto LABEL_74;
        }

        v20 = &mc_lewiner_tiling_12_1_1;
      }

      goto LABEL_49;
    case 13:
      v12 = &mc_lewiner_test_13 + 6 * v2[1];
      v13 = geom::marching_cubes<double>::test_face(result, *v12, a2);
      if (geom::marching_cubes<double>::test_face(v4, v12[1], a2))
      {
        v13 |= 2u;
      }

      if (geom::marching_cubes<double>::test_face(v4, v12[2], a2))
      {
        v13 |= 4u;
      }

      if (geom::marching_cubes<double>::test_face(v4, v12[3], a2))
      {
        v13 |= 8u;
      }

      if (geom::marching_cubes<double>::test_face(v4, 5, a2))
      {
        v13 += 16;
      }

      result = geom::marching_cubes<double>::test_face(v4, 6, a2);
      v14 = v13 + 32;
      if (!result)
      {
        v14 = v13;
      }

      v15 = mc_lewiner_subconfig_13[v14];
      if (v15 <= 22)
      {
        if (v15 > 6)
        {
          if ((v15 - 7) < 0xC)
          {
            v16 = (v15 - 7);
            v17 = &mc_lewiner_tiling_13_3;
LABEL_55:
            v29 = v17 + 360 * v5 + 30 * v16;
LABEL_56:
            *(a2 + 72) = v29;
            v6 = 10;
            goto LABEL_93;
          }

          v35 = v15 - 19;
          if (v35 < 4)
          {
            *(a2 + 72) = &mc_lewiner_tiling_13_4 + 144 * v5 + 36 * v35;
            v6 = 12;
            goto LABEL_93;
          }

          return result;
        }

        if ((v15 - 1) < 6)
        {
          v33 = (v15 - 1);
          v34 = &mc_lewiner_tiling_13_2;
LABEL_84:
          v21 = &v34[108 * v5 + 18 * v33];
LABEL_85:
          *(a2 + 72) = v21;
          v6 = 6;
          goto LABEL_93;
        }

        if (v15)
        {
          return result;
        }

        v20 = &mc_lewiner_tiling_13_1;
        goto LABEL_49;
      }

      if (v15 > 38)
      {
        if ((v15 - 39) < 6)
        {
          v33 = (v15 - 39);
          v34 = &mc_lewiner_tiling_13_2_;
          goto LABEL_84;
        }

        if (v15 != 45)
        {
          return result;
        }

        v20 = &mc_lewiner_tiling_13_1_;
LABEL_49:
        *(a2 + 72) = &v20[12 * v5];
        v6 = 4;
LABEL_93:
        *(a2 + 80) = v6;
        return result;
      }

      if ((v15 - 27) < 0xC)
      {
        v16 = (v15 - 27);
        v17 = &mc_lewiner_tiling_13_3_;
        goto LABEL_55;
      }

      v36 = v15 - 23;
      if (v36 < 4)
      {
        v37 = v36;
        v38 = mc_lewiner_test_sub_13[4 * v5 + v36];
        result = geom::marching_cubes<double>::test_interior(v4, v38, a2, 1);
        if (result == 2)
        {
          if (*(a2 + 8 * byte_2500D1158[v38]) > 0.0)
          {
            goto LABEL_112;
          }
        }

        else
        {
          if (result != 1)
          {
            if (!result)
            {
              v21 = &mc_lewiner_tiling_13_5_1 + 72 * v5 + 18 * v37;
              goto LABEL_85;
            }

            goto LABEL_114;
          }

          if (*(a2 + 8 * byte_2500D1158[v38]) < 0.0)
          {
LABEL_112:
            v39 = &mc_lewiner_tiling_13_5_2_;
LABEL_115:
            v29 = v39 + 120 * v5 + 30 * v37;
            goto LABEL_56;
          }
        }

LABEL_114:
        v39 = &mc_lewiner_tiling_13_5_2;
        goto LABEL_115;
      }

      return result;
    case 14:
      v20 = &mc_lewiner_tiling_14;
      goto LABEL_49;
    default:
      return result;
  }
}

float64x2_t geom::marching_cubes<double>::get_interior_vertex_position@<Q0>(int16x4_t *a1@<X2>, void *a2@<X3>, void *a3@<X4>, float64x2_t *a4@<X8>)
{
  v8 = 0;
  v16 = 0u;
  v17 = 0u;
  v9 = 192;
  v10 = &byte_2500D1168;
  do
  {
    v18 = vadd_s16(*a1, *(v10 - 8));
    v19 = *v10;
    internal = geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::find_internal(a3, &v18);
    if (internal != -1)
    {
      v12 = (*a2 + 32 * *(a3[1] + 24 * internal + 16));
      v16 = vaddq_f64(v16, v12[1]);
      v17 = vaddq_f64(v17, *v12);
      ++v8;
    }

    v10 += 16;
    v9 -= 16;
  }

  while (v9);
  v13 = vdupq_lane_s64(COERCE__INT64(v8), 0);
  v14 = vdivq_f64(v17, v13);
  result = vdivq_f64(v16, v13);
  *a4 = v14;
  a4[1] = result;
  return result;
}

void *_ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE4initEm(void *result, unint64_t a2)
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

  v9 = ((96 * v2[2] + 63) & 0xFFFFFFFFFFFFFFC0) <= 0x40 ? 64 : (96 * v2[2] + 63) & 0xFFFFFFFFFFFFFFC0;
  result = malloc_type_aligned_alloc(0x40uLL, v9, 0x1050040E4FB7792uLL);
  v2[1] = result;
  if (v2[2])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v2[1] + v10;
      *(v12 + 64) = 0uLL;
      *(v12 + 80) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 76) = -1;
      ++v11;
      v13 = v2[2];
      v10 += 96;
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

void _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE9do_resizeEm(__int128 *a1, unint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE4initEm(&v24, a2);
  v22[0] = a1;
  v3 = *(a1 + 2);
  if (v3 >= 0x10)
  {
    v4 = 0;
    v5 = *a1;
    v6 = v3 >> 4;
    while (1)
    {
      v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      v22[1] = v7 ^ 0xFFFF;
      if (v7 != 0xFFFF)
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

    v8 = __clz(__rbit64(v7 ^ 0xFFFF));
    v9 = v8 - v4;
    v23 = v8 - v4;
    if (v8 + 1 != v4)
    {
      do
      {
        v10 = (*(v22[0] + 8) + 96 * v9);
        v11 = v10[1];
        *v21 = *v10;
        *&v21[16] = v11;
        v12 = v10[5];
        v14 = v10[2];
        v13 = v10[3];
        *&v21[64] = v10[4];
        *&v21[80] = v12;
        *&v21[32] = v14;
        *&v21[48] = v13;
        v19[2] = *&v21[40];
        v19[3] = *&v21[56];
        v19[4] = *&v21[72];
        v20 = *(&v12 + 1);
        v19[0] = *&v21[8];
        v19[1] = *&v21[24];
        _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE12internal_addIS4_EEmRKS1_T_(&v24, v21, v19);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(v22);
        v9 = v23;
      }

      while (v23 != -1);
    }
  }

LABEL_10:
  if (&v24 != a1)
  {
    v15 = v25;
    v16 = *a1;
    v17 = a1[1];
    *a1 = v24;
    a1[1] = v15;
    v24 = v16;
    v25 = v17;
    v18 = *(a1 + 4);
    *(a1 + 4) = v26;
    v26 = v18;
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(&v24);
}

int64x2_t _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE12internal_addIS4_EEmRKS1_T_(uint64_t *a1, void *a2, __int128 *a3)
{
  if (!a1[4])
  {
    _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE13grow_to_countEv(a1);
  }

  v6 = WORD1(*a2) - 0x61C8864680B583E9;
  v7 = (v6 + (*a2 << 6) + (*a2 >> 2)) ^ *a2;
  v8 = (v6 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v9 = a1[2] >> 4;
  v10 = v8 % v9;
  v11 = *a1;
  v12 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v8 % v9))), xmmword_2500C4D40)))), 0x3830282018100800)));
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
  v14 = *(v13 + v12);
  *(v13 + v12) = v8 & 0x7F;
  v15 = a1[1] + 96 * (v12 + 16 * v10);
  *v15 = *a2;
  v16 = *a3;
  *(v15 + 24) = a3[1];
  *(v15 + 8) = v16;
  v17 = a3[2];
  v18 = a3[3];
  v19 = a3[4];
  *(v15 + 88) = *(a3 + 10);
  *(v15 + 72) = v19;
  *(v15 + 56) = v18;
  *(v15 + 40) = v17;
  if (v14 == 255)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v21.i64[1] = v20;
  result = vaddq_s64(*(a1 + 3), v21);
  *(a1 + 3) = result;
  return result;
}

void _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE13grow_to_countEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = (((151 * v1) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v3 != v2)
  {
    if (v3 > v2)
    {
      v1 = 150 * v1 / 0x64;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 32))
  {
LABEL_6:
    _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE9do_resizeEm(a1, v1);
  }
}

int64x2_t geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::internal_add<unsigned int>(uint64_t *a1, uint64_t a2, int a3)
{
  if (!a1[4])
  {
    geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::grow_to_count(a1);
  }

  v6 = WORD1(*a2) - 0x61C8864680B583E9;
  v7 = (v6 + (*a2 << 6) + (*a2 >> 2)) ^ *a2;
  v8 = (v6 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v9 = *(a2 + 8);
  v10 = a1[2] >> 4;
  v11 = ((v9 + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583E9) ^ v8) % v10;
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = ((v9 + (v8 << 6) + (v8 >> 2) + 23) ^ v8) & 0x7F;
  v16 = *(v14 + v13);
  *(v14 + v13) = v15;
  v17 = a1[1] + 24 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 16) = a3;
  if (v16 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  result = vaddq_s64(*(a1 + 3), v19);
  *(a1 + 3) = result;
  return result;
}

void geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::grow_to_count(__int128 *result)
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
    geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::do_resize(result, v1);
  }
}

void geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::do_resize(__int128 *a1, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::init(&v20, a2);
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
        geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::internal_add<unsigned int>(&v20, &v16, v11);
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

uint64_t geom::marching_cubes<double>::test_face(uint64_t a1, int a2, double *a3)
{
  v3 = 0.0;
  if (a2 > 0)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
LABEL_20:
        v7 = a3 + 7;
        v8 = a3 + 4;
        v9 = a3;
        a3 += 3;
        goto LABEL_24;
      }

      if (a2 == 5)
      {
        goto LABEL_22;
      }

      v4 = 0.0;
      v5 = 0.0;
      v6 = 0.0;
      if (a2 == 6)
      {
        goto LABEL_18;
      }

      return (a2 < 1) ^ (v6 * (v6 * v4 - v3 * v5) >= 0.0);
    }

    if (a2 == 1)
    {
LABEL_14:
      v7 = a3 + 4;
      v8 = a3 + 5;
LABEL_23:
      v9 = a3 + 1;
      goto LABEL_24;
    }

    if (a2 == 2)
    {
LABEL_21:
      v7 = a3 + 5;
      v8 = a3 + 6;
      v9 = a3 + 2;
      ++a3;
      goto LABEL_24;
    }

LABEL_19:
    v7 = a3 + 6;
    v8 = a3 + 7;
    v9 = a3 + 3;
    a3 += 2;
    goto LABEL_24;
  }

  if (a2 <= -4)
  {
    if (a2 != -6)
    {
      if (a2 != -5)
      {
        v4 = 0.0;
        v5 = 0.0;
        v6 = 0.0;
        if (a2 != -4)
        {
          return (a2 < 1) ^ (v6 * (v6 * v4 - v3 * v5) >= 0.0);
        }

        goto LABEL_20;
      }

LABEL_22:
      v7 = a3 + 3;
      v8 = a3 + 2;
      goto LABEL_23;
    }

LABEL_18:
    v7 = a3 + 7;
    v8 = a3 + 6;
    v9 = a3 + 5;
    a3 += 4;
LABEL_24:
    v6 = *a3;
    v4 = *v8;
    v3 = *v7;
    v5 = *v9;
    return (a2 < 1) ^ (v6 * (v6 * v4 - v3 * v5) >= 0.0);
  }

  if (a2 == -3)
  {
    goto LABEL_19;
  }

  if (a2 == -2)
  {
    goto LABEL_21;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (a2 == -1)
  {
    goto LABEL_14;
  }

  return (a2 < 1) ^ (v6 * (v6 * v4 - v3 * v5) >= 0.0);
}

uint64_t geom::marching_cubes<double>::test_interior(uint64_t a1, int a2, double *a3, char a4)
{
  v5 = *a3;
  v4 = a3[1];
  v7 = a3[2];
  v6 = a3[3];
  v8 = a3[4] - *a3;
  v9 = a3[6] - v7;
  v10 = a3[5] - v4;
  v11 = a3[7] - v6;
  v12 = v8 * v9 - v10 * v11;
  if (fabs(v12) < 0.000001)
  {
    return 0;
  }

  v13 = -(v5 * v9 + v7 * v8 - v6 * v10 + -v4 * v11) / (v12 + v12);
  if (v13 < 0.0 || v13 > 1.0)
  {
    return 0;
  }

  v15 = 0;
  v17 = v5 + v8 * v13;
  v18 = v4 + v10 * v13;
  v19 = v7 + v9 * v13;
  v20 = v6 + v11 * v13;
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return v15;
      }

      if (v12 <= 0.0)
      {
        return 0;
      }

      if (v17 * v19 >= v18 * v20)
      {
        return 0;
      }

      v21 = v6 + v11 * v13;
      if (((*&v18 ^ *&v20) & 0x8000000000000000) != 0)
      {
        return 0;
      }

      v22 = *(a3 + 3);
      return (((*&v21 ^ v22) >= 0) + a4);
    }

    if (v12 < 0.0 && v17 * v19 > v18 * v20)
    {
      v21 = v19;
      if (((*&v17 ^ *&v19) & 0x8000000000000000) == 0)
      {
        v22 = *(a3 + 2);
        return (((*&v21 ^ v22) >= 0) + a4);
      }
    }
  }

  else if (a2 == 1)
  {
    if (v12 < 0.0 && v17 * v19 > v18 * v20)
    {
      v21 = v17;
      if (((*&v17 ^ *&v19) & 0x8000000000000000) == 0)
      {
        v22 = *a3;
        return (((*&v21 ^ v22) >= 0) + a4);
      }
    }
  }

  else
  {
    if (a2 != 2)
    {
      return v15;
    }

    if (v12 > 0.0 && v17 * v19 < v18 * v20)
    {
      v21 = v18;
      if (((*&v18 ^ *&v20) & 0x8000000000000000) == 0)
      {
        v22 = *(a3 + 1);
        return (((*&v21 ^ v22) >= 0) + a4);
      }
    }
  }

  return 0;
}

uint64_t *geom::point_cloud_laplacian<float>::point_cloud_laplacian(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(a1, a2);
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = a3;
  geom::point_cloud_laplacian<float>::compute_cotan_laplacian_stencils(v5);
  return a1;
}

void geom::point_cloud_laplacian<float>::compute_cotan_laplacian_stencils(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (v2 - *a1) >> 4;
  v5 = a1[6];
  geom::point_cloud_laplacian<float>::find_nearest_neighbors(a1, v5, &v67);
  v6 = v5 + 1;
  v61 = 0;
  v62 = &v61;
  v63 = 0x4002000000;
  v64 = __Block_byref_object_copy__3;
  v65 = __Block_byref_object_dispose__4;
  std::vector<std::vector<std::tuple<unsigned int,unsigned int,float>>>::vector[abi:nn200100](v66, v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN4geom21point_cloud_laplacianIfE32compute_cotan_laplacian_stencilsEv_block_invoke;
  block[3] = &unk_286292ED0;
  block[5] = a1;
  block[6] = (v4 + 29) / 0x1E;
  block[7] = v4;
  __p = 0;
  __dst = 0;
  v59 = 0;
  if (v68 != v67)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, (v68 - v67) >> 2);
  }

  v60 = v6;
  block[4] = &v61;
  dispatch_apply(0x1EuLL, 0, block);
  std::vector<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil>>::resize(a1 + 3, v4);
  if (v2 != v3)
  {
    v7 = 0;
    v8 = 0;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v55 = v4;
    do
    {
      v9 = a1[3];
      v69[0] = v8;
      std::vector<unsigned int>::push_back[abi:nn200100]((v9 + v7), v69);
      v10 = (a1[3] + v7);
      v12 = v10[4];
      v11 = v10[5];
      if (v12 >= v11)
      {
        v14 = v10[3];
        v15 = v12 - v14;
        v16 = (v12 - v14) >> 2;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
LABEL_56:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v18 = v11 - v14;
        if (v18 >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<float>>((v10 + 3), v19);
        }

        v20 = (v12 - v14) >> 2;
        v21 = (4 * v16);
        v22 = (4 * v16 - 4 * v20);
        *v21 = 0;
        v13 = v21 + 1;
        memcpy(v22, v14, v15);
        v23 = v10[3];
        v10[3] = v22;
        v10[4] = v13;
        v10[5] = 0;
        if (v23)
        {
          operator delete(v23);
        }

        v4 = v55;
      }

      else
      {
        *v12 = 0;
        v13 = v12 + 4;
      }

      v10[4] = v13;
      ++v8;
      v7 += 48;
    }

    while (v4 != v8);
    for (i = 0; i != v55; ++i)
    {
      v25 = *(v62[5] + 24 * i + 8) - *(v62[5] + 24 * i);
      if (v25)
      {
        v26 = 0;
        v27 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 2);
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        do
        {
          v29 = *(v62[5] + 24 * i) + 12 * v26;
          v30 = *v29;
          v31 = *(v29 + 4);
          v69[0] = v31;
          v32 = a1[3] + 48 * v30;
          v33 = *(v32 + 8);
          v34 = *v32;
          if (*v32 != v33)
          {
            while (*v34 != v31)
            {
              if (++v34 == v33)
              {
                v34 = *(v32 + 8);
                break;
              }
            }
          }

          v35 = *(v29 + 8);
          if (v33 == v34)
          {
            std::vector<unsigned int>::push_back[abi:nn200100]((a1[3] + 48 * v30), v69);
            v37 = *(v32 + 32);
            v36 = *(v32 + 40);
            if (v37 >= v36)
            {
              v39 = *(v32 + 24);
              v40 = v37 - v39;
              v41 = (v37 - v39) >> 2;
              v42 = v41 + 1;
              if ((v41 + 1) >> 62)
              {
                goto LABEL_56;
              }

              v43 = v36 - v39;
              if (v43 >> 1 > v42)
              {
                v42 = v43 >> 1;
              }

              v44 = v43 >= 0x7FFFFFFFFFFFFFFCLL;
              v45 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v44)
              {
                v45 = v42;
              }

              if (v45)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(v32 + 24, v45);
              }

              v46 = (v37 - v39) >> 2;
              v47 = (4 * v41);
              v48 = (4 * v41 - 4 * v46);
              *v47 = v35;
              v38 = v47 + 1;
              memcpy(v48, v39, v40);
              v49 = *(v32 + 24);
              *(v32 + 24) = v48;
              *(v32 + 32) = v38;
              *(v32 + 40) = 0;
              if (v49)
              {
                operator delete(v49);
              }
            }

            else
            {
              *v37 = v35;
              v38 = v37 + 1;
            }

            *(v32 + 32) = v38;
          }

          else
          {
            *(v34 + *(v32 + 24) - *v32) = v35 + *(v34 + *(v32 + 24) - *v32);
          }

          ++v26;
        }

        while (v26 != v28);
      }
    }

    v50 = 0;
    v51 = a1[3];
    do
    {
      v52 = v51 + 48 * v50;
      v53 = *(v52 + 24);
      v54 = *(v52 + 32);
      while (v53 != v54)
      {
        *v53 = *v53 / 3.0;
        ++v53;
      }

      ++v50;
    }

    while (v50 != v55);
  }

  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v61, 8);
  *v69 = v66;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](v69);
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }
}

uint64_t geom::point_cloud_laplacian<float>::point_cloud_laplacian(uint64_t a1, const void *a2, unint64_t a3, uint64_t a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = a4;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a1, a3);
  if (a3)
  {
    memmove(*a1, a2, 16 * a3);
  }

  geom::point_cloud_laplacian<float>::compute_cotan_laplacian_stencils(a1);
  return a1;
}

uint64_t *geom::point_cloud_laplacian<float>::get_laplacian_stencil@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = (*(a1 + 24) + 48 * a2);
  std::vector<float>::vector[abi:nn200100](a3, v4);

  return std::vector<float>::vector[abi:nn200100](a3 + 3, v4 + 3);
}

uint64_t geom::point_cloud_laplacian<float>::find_nearest_neighbors@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31[35] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = a2 + 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x14002000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v9 = v6 - v5;
  v8 = v9 == 0;
  v10 = v9 >> 4;
  v11 = (v9 >> 4) + 29;
  if (v8)
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = v5;
    v24 = v10;
  }

  v25 = 0;
  v12 = (v11 * 0x8888888888888889) >> 64;
  geom::point_tree<float,(unsigned char)3>::point_tree(v31, &v23, 5u, (a2 + 1), 0);
  if (v25 == 1 && v23)
  {
    MEMORY[0x25305E3D0](v23, 0x1000C80451B5BE8);
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  geom::point_tree<float,(unsigned char)3>::precompute_cell_data(v27 + 6);
  v15 = 0;
  v16 = &v15;
  v17 = 0x4002000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__2;
  __p = 0;
  v21 = 0;
  v22 = 0;
  if (v10 * v7)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, v10 * v7);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK4geom21point_cloud_laplacianIfE22find_nearest_neighborsEm_block_invoke;
  block[3] = &unk_27969BF90;
  block[6] = a1;
  block[7] = v12 >> 4;
  block[8] = v10;
  block[9] = v7;
  block[4] = &v26;
  block[5] = &v15;
  dispatch_apply(0x1EuLL, 0, block);
  std::vector<float>::vector[abi:nn200100](a3, v16 + 5);
  _Block_object_dispose(&v15, 8);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v26, 8);
  return geom::point_tree<float,(unsigned char)3>::~point_tree(v31);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v5;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = *(a2 + 296);
  result = *(a2 + 304);
  *(a1 + 304) = result;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  return result;
}

__n128 __Block_byref_object_copy__1(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZNK4geom21point_cloud_laplacianIfE22find_nearest_neighborsEm_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if (v4 >= *(a1 + 64))
  {
    v5 = *(a1 + 64);
  }

  else
  {
    v5 = v4;
  }

  if (v3 < v5)
  {
    v7 = *(a1 + 48);
    for (i = 4 * v3; ; i += 4)
    {
      v9 = *v7;
      v16 = 0;
      v17 = 0;
      __p = 0;
      geom::point_tree<float,(unsigned char)3>::find_k_nearest((*(*(a1 + 32) + 8) + 48), *(a1 + 72), &__p, *(v9 + 16 * v3));
      v10 = *(a1 + 72);
      v11 = __p;
      if (v10)
      {
        break;
      }

      if (__p)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (++v3 == v5)
      {
        return;
      }
    }

    v12 = v10 * i;
    v13 = __p;
    do
    {
      v14 = *v13++;
      *(*(*(*(a1 + 40) + 8) + 40) + v12) = v14;
      v12 += 4;
      --v10;
    }

    while (v10);
LABEL_11:
    v16 = v11;
    operator delete(v11);
    goto LABEL_12;
  }
}

__n128 __Block_byref_object_copy__3(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void ___ZN4geom21point_cloud_laplacianIfE32compute_cotan_laplacian_stencilsEv_block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if (v4 >= a1[7])
  {
    v4 = a1[7];
  }

  if (v3 < v4)
  {
    v5 = a1[5];
    std::vector<unsigned int>::vector[abi:nn200100]<std::__wrap_iter<unsigned int const*>,0>(v8, (a1[8] + 4 * v3 * a1[11]), (a1[8] + 4 * (v3 + 1) * a1[11]));
    geom::compute_principal_component_plane_projection<float>(v5, (v8[1] - v8[0]) >> 2, &v7, v8[0]);
    memset(&__p, 0, sizeof(__p));
    geom::compute_constrained_delaunay_triangulation<float>(&v7, &__p);
  }
}

void geom::compute_principal_component_plane_projection<float>(uint64_t *a1@<X0>, unint64_t a2@<X2>, uint64_t *a3@<X8>, unsigned int *a4@<X1>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(a3, a2);
  }

  v4.i32[2] = 0;
  v4.i64[0] = 0;
  geom::compute_principal_component_plane_projection<float>(*a1, (a1[1] - *a1) >> 4, a4, 0, a3, &v4);
}

void geom::compute_constrained_delaunay_triangulation<float>(uint64_t *a1, std::vector<unsigned int> *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 4;
  a2->__end_ = a2->__begin_;
  std::vector<geo::math::Matrix<double,3,1>>::vector[abi:nn200100](&v21, v5);
  if (v3 != v4)
  {
    v6 = 0;
    v7 = 0;
    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    do
    {
      v9 = &v21[v6];
      *v9 = vcvtq_f64_f32(*(*a1 + 16 * v7));
      v9[2] = 0.0;
      ++v7;
      v6 += 3;
    }

    while (v8 != v7);
  }

  v11 = v21;
  v10 = v22;
  if (v22 == v21)
  {
    v10 = 0;
    v11 = 0;
  }

  v12[0] = v11;
  v12[1] = v10;
  geo::math::Get2DConvexHull<double,3ul>(v12, &v19);
  memset(v18, 0, sizeof(v18));
  if (v20 != v19)
  {
    std::vector<double>::__vallocate[abi:nn200100](v18, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
  }

  v16 = 0;
  __p = 0;
  __dst = 0;
  if (v22 != v21)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](&__p, 0xAAAAAAAAAAAAAAABLL * (v22 - v21));
  }

  geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::RangePolyline(v17, &__p);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  geo::math::ConstrainedDelaunayTriangulationMesherDetails::ConstrainedDelaunayTriangulationMesherDetails(v13, v17);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearConstraints(v13);
  operator new();
}

void geom::point_cloud_laplacian<float>::compute_stencil_contributions(const void **a1@<X1>, const void **a2@<X2>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  geom::ddg_evaluator<float>::ddg_evaluator(v59, *a1, (a1[1] - *a1) >> 4, *a2, (a2[1] - *a2) >> 2);
  geom::ddg_evaluator<float>::set_clamp_cotan_weights(v59, 1);
  if (geom::ddg_evaluator<float>::is_valid(v59))
  {
    geom::ddg_evaluator<float>::compute_laplacian_stencil(v59, 0, 1, &v55);
    if (v56 != v55)
    {
      v4 = 0;
      if (((v56 - v55) >> 2) <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = (v56 - v55) >> 2;
      }

      v6 = a3[1];
      do
      {
        v7 = v55;
        v8 = v57;
        v9 = a3[2];
        if (v6 >= v9)
        {
          v10 = *a3;
          v11 = v6 - *a3;
          v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 2) + 1;
          if (v12 > 0x1555555555555555)
          {
LABEL_71:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 2);
          if (2 * v13 > v12)
          {
            v12 = 2 * v13;
          }

          if (v13 >= 0xAAAAAAAAAAAAAAALL)
          {
            v14 = 0x1555555555555555;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a3, v14);
          }

          v15 = (4 * (v11 >> 2));
          *v15 = 0;
          v15[1] = v7[v4];
          v15[2] = v8[v4];
          v6 = (v15 + 3);
          v16 = v15 - v11;
          memcpy(v15 - v11, v10, v11);
          v17 = *a3;
          *a3 = v16;
          a3[1] = v6;
          a3[2] = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v6 = 0;
          *(v6 + 1) = v7[v4];
          *(v6 + 2) = v8[v4];
          v6 += 12;
        }

        a3[1] = v6;
        ++v4;
      }

      while (v5 != v4);
    }

    v52 = 0;
    v53 = 0;
    v54 = 0;
    geom::ddg_evaluator<float>::get_vertex_one_ring(v59, 0, &v52);
    v18 = v52;
    v47 = v53;
    if (v52 != v53)
    {
      do
      {
        geom::ddg_evaluator<float>::compute_laplacian_stencil(v59, *v18, 1, &v48);
        v19 = v48;
        v20 = (v49 - v48) >> 2;
        v21 = 0.0;
        if (v20 >= 2)
        {
          for (i = 1; i != v20; ++i)
          {
            v23 = v48;
            v24 = *(v48 + i);
            if (!v24)
            {
              goto LABEL_29;
            }

            v25 = v52;
            if (v52 != v53)
            {
              while (*v25 != v24)
              {
                if (++v25 == v53)
                {
                  goto LABEL_41;
                }
              }
            }

            if (v25 != v53)
            {
LABEL_29:
              v26 = __p;
              v27 = a3[1];
              v28 = a3[2];
              if (v27 >= v28)
              {
                v30 = *a3;
                v31 = v27 - *a3;
                v32 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 2) + 1;
                if (v32 > 0x1555555555555555)
                {
                  goto LABEL_71;
                }

                v33 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v30) >> 2);
                if (2 * v33 > v32)
                {
                  v32 = 2 * v33;
                }

                if (v33 >= 0xAAAAAAAAAAAAAAALL)
                {
                  v32 = 0x1555555555555555;
                }

                if (v32)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a3, v32);
                }

                v34 = (4 * (v31 >> 2));
                *v34 = *v18;
                v34[1] = v23[i];
                v34[2] = v26[i];
                v29 = v34 + 3;
                v35 = v34 - v31;
                memcpy(v34 - v31, v30, v31);
                v36 = *a3;
                *a3 = v35;
                a3[1] = v29;
                a3[2] = 0;
                if (v36)
                {
                  operator delete(v36);
                }
              }

              else
              {
                *v27 = *v18;
                *(v27 + 1) = v23[i];
                *(v27 + 2) = v26[i];
                v29 = v27 + 12;
              }

              a3[1] = v29;
              v21 = v21 - *(__p + i);
            }

LABEL_41:
            ;
          }

          v19 = v48;
        }

        v37 = a3[1];
        v38 = a3[2];
        if (v37 >= v38)
        {
          v40 = *a3;
          v41 = v37 - *a3;
          v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 2) + 1;
          if (v42 > 0x1555555555555555)
          {
            goto LABEL_71;
          }

          v43 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v40) >> 2);
          if (2 * v43 > v42)
          {
            v42 = 2 * v43;
          }

          if (v43 >= 0xAAAAAAAAAAAAAAALL)
          {
            v42 = 0x1555555555555555;
          }

          if (v42)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a3, v42);
          }

          v44 = 4 * (v41 >> 2);
          *v44 = *v18;
          *(v44 + 4) = *v19;
          *(v44 + 8) = v21;
          v39 = (v44 + 12);
          v45 = (v44 - v41);
          memcpy((v44 - v41), v40, v41);
          v46 = *a3;
          *a3 = v45;
          a3[1] = v39;
          a3[2] = 0;
          if (v46)
          {
            operator delete(v46);
          }
        }

        else
        {
          *v37 = *v18;
          *(v37 + 1) = *v19;
          *(v37 + 2) = v21;
          v39 = v37 + 12;
        }

        a3[1] = v39;
        if (__p)
        {
          v51 = __p;
          operator delete(__p);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        ++v18;
      }

      while (v18 != v47);
      v18 = v52;
    }

    if (v18)
    {
      v53 = v18;
      operator delete(v18);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }
  }

  std::unique_ptr<geom::mesh_connectivity>::~unique_ptr[abi:nn200100](v62);
  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }
}

void __destroy_helper_block_8_64c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

uint64_t *geom::point_cloud_laplacian<double>::point_cloud_laplacian(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(a1, a2);
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = a3;
  geom::point_cloud_laplacian<double>::compute_cotan_laplacian_stencils(v5, v6, v7, v8);
  return a1;
}

void geom::point_cloud_laplacian<double>::compute_cotan_laplacian_stencils(uint64_t *a1, double a2, __n128 a3, __n128 a4)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (v5 - *a1) >> 5;
  v8 = a1[6];
  geom::point_cloud_laplacian<double>::find_nearest_neighbors(a1, v8, &v70, a3, a4);
  v9 = v8 + 1;
  v64 = 0;
  v65 = &v64;
  v66 = 0x4002000000;
  v67 = __Block_byref_object_copy__9;
  v68 = __Block_byref_object_dispose__10;
  std::vector<std::vector<std::tuple<unsigned int,unsigned int,float>>>::vector[abi:nn200100](v69, v7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN4geom21point_cloud_laplacianIdE32compute_cotan_laplacian_stencilsEv_block_invoke;
  block[3] = &unk_286292F08;
  block[5] = a1;
  block[6] = (v7 + 29) / 0x1E;
  block[7] = v7;
  __p = 0;
  __dst = 0;
  v62 = 0;
  if (v71 != v70)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, (v71 - v70) >> 2);
  }

  v63 = v9;
  block[4] = &v64;
  dispatch_apply(0x1EuLL, 0, block);
  std::vector<geom::ddg_evaluator<float>::stencil,std::allocator<geom::ddg_evaluator<float>::stencil>>::resize(a1 + 3, v7);
  if (v5 != v6)
  {
    v10 = 0;
    v11 = 0;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v58 = v7;
    do
    {
      v12 = a1[3];
      v72[0] = v11;
      std::vector<unsigned int>::push_back[abi:nn200100]((v12 + v10), v72);
      v13 = (a1[3] + v10);
      v15 = v13[4];
      v14 = v13[5];
      if (v15 >= v14)
      {
        v17 = v13[3];
        v18 = v15 - v17;
        v19 = (v15 - v17) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
LABEL_56:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v21 = v14 - v17;
        if (v21 >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<double>>((v13 + 3), v22);
        }

        v23 = (v15 - v17) >> 3;
        v24 = (8 * v19);
        v25 = (8 * v19 - 8 * v23);
        *v24 = 0;
        v16 = v24 + 1;
        memcpy(v25, v17, v18);
        v26 = v13[3];
        v13[3] = v25;
        v13[4] = v16;
        v13[5] = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v7 = v58;
      }

      else
      {
        *v15 = 0;
        v16 = v15 + 8;
      }

      v13[4] = v16;
      ++v11;
      v10 += 48;
    }

    while (v7 != v11);
    for (i = 0; i != v58; ++i)
    {
      v28 = *(v65[5] + 24 * i + 8) - *(v65[5] + 24 * i);
      if (v28)
      {
        v29 = 0;
        v30 = v28 >> 4;
        if (v30 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = v30;
        }

        do
        {
          v32 = *(v65[5] + 24 * i) + 16 * v29;
          v33 = *v32;
          v34 = *(v32 + 4);
          v72[0] = v34;
          v35 = a1[3] + 48 * v33;
          v36 = *(v35 + 8);
          v37 = *v35;
          if (*v35 != v36)
          {
            while (*v37 != v34)
            {
              if (++v37 == v36)
              {
                v37 = *(v35 + 8);
                break;
              }
            }
          }

          v38 = *(v32 + 8);
          if (v36 == v37)
          {
            std::vector<unsigned int>::push_back[abi:nn200100]((a1[3] + 48 * v33), v72);
            v40 = *(v35 + 32);
            v39 = *(v35 + 40);
            if (v40 >= v39)
            {
              v42 = *(v35 + 24);
              v43 = v40 - v42;
              v44 = (v40 - v42) >> 3;
              v45 = v44 + 1;
              if ((v44 + 1) >> 61)
              {
                goto LABEL_56;
              }

              v46 = v39 - v42;
              if (v46 >> 2 > v45)
              {
                v45 = v46 >> 2;
              }

              v47 = v46 >= 0x7FFFFFFFFFFFFFF8;
              v48 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v47)
              {
                v48 = v45;
              }

              if (v48)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(v35 + 24, v48);
              }

              v49 = (v40 - v42) >> 3;
              v50 = (8 * v44);
              v51 = (8 * v44 - 8 * v49);
              *v50 = v38;
              v41 = v50 + 1;
              memcpy(v51, v42, v43);
              v52 = *(v35 + 24);
              *(v35 + 24) = v51;
              *(v35 + 32) = v41;
              *(v35 + 40) = 0;
              if (v52)
              {
                operator delete(v52);
              }
            }

            else
            {
              *v40 = v38;
              v41 = v40 + 1;
            }

            *(v35 + 32) = v41;
          }

          else
          {
            *(*(v35 + 24) + 2 * (v37 - *v35)) = v38 + *(*(v35 + 24) + 2 * (v37 - *v35));
          }

          ++v29;
        }

        while (v29 != v31);
      }
    }

    v53 = 0;
    v54 = a1[3];
    do
    {
      v55 = v54 + 48 * v53;
      v56 = *(v55 + 24);
      v57 = *(v55 + 32);
      while (v56 != v57)
      {
        *v56 = *v56 / 3.0;
        ++v56;
      }

      ++v53;
    }

    while (v53 != v58);
  }

  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v64, 8);
  *v72 = v69;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](v72);
  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }
}

uint64_t geom::point_cloud_laplacian<double>::point_cloud_laplacian(uint64_t a1, const void *a2, unint64_t a3, uint64_t a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = a4;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(a1, a3);
  if (a3)
  {
    memmove(*a1, a2, 32 * a3);
  }

  geom::point_cloud_laplacian<double>::compute_cotan_laplacian_stencils(a1, v7, v8, v9);
  return a1;
}

uint64_t *geom::point_cloud_laplacian<double>::get_laplacian_stencil@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = (*(a1 + 24) + 48 * a2);
  std::vector<float>::vector[abi:nn200100](a3, v4);

  return std::vector<double>::vector[abi:nn200100](a3 + 3, v4 + 3);
}

uint64_t geom::point_cloud_laplacian<double>::find_nearest_neighbors@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  v33[43] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = a1[1];
  v9 = a2 + 1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x18002000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__7;
  v11 = v8 - v7;
  v10 = v11 == 0;
  v12 = v11 >> 5;
  v13 = (v11 >> 5) + 29;
  if (v10)
  {
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = v7;
    v26 = v12;
  }

  v27 = 0;
  v14 = (v13 * 0x8888888888888889) >> 64;
  geom::point_tree<double,(unsigned char)3>::point_tree(v33, &v25, 5u, (a2 + 1), 0, COERCE_DOUBLE(0x18002000000), a4, a5);
  if (v27 == 1 && v25)
  {
    MEMORY[0x25305E3D0](v25, 0x1000C80E0EAB150);
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  geom::point_tree<double,(unsigned char)3>::precompute_cell_data(v29 + 6);
  v17 = 0;
  v18 = &v17;
  v19 = 0x4002000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__2;
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (v12 * v9)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, v12 * v9);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK4geom21point_cloud_laplacianIdE22find_nearest_neighborsEm_block_invoke;
  block[3] = &unk_27969BFB8;
  block[6] = a1;
  block[7] = v14 >> 4;
  block[8] = v12;
  block[9] = v9;
  block[4] = &v28;
  block[5] = &v17;
  dispatch_apply(0x1EuLL, 0, block);
  std::vector<float>::vector[abi:nn200100](a3, v18 + 5);
  _Block_object_dispose(&v17, 8);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v28, 8);
  return geom::point_tree<double,(unsigned char)3>::~point_tree(v33);
}

__n128 __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  v5 = *(a2 + 128);
  v6 = *(a2 + 144);
  v7 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v7;
  *(a1 + 128) = v5;
  *(a1 + 144) = v6;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v8 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v8;
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 360) = *(a2 + 360);
  result = *(a2 + 368);
  *(a1 + 368) = result;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  return result;
}

void ___ZNK4geom21point_cloud_laplacianIdE22find_nearest_neighborsEm_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if (v4 >= *(a1 + 64))
  {
    v5 = *(a1 + 64);
  }

  else
  {
    v5 = v4;
  }

  if (v3 < v5)
  {
    v7 = *(a1 + 48);
    for (i = 4 * v3; ; i += 4)
    {
      v9 = (*v7 + 32 * v3);
      v20 = 0;
      v21 = 0;
      __p = 0;
      v10 = *(*(a1 + 32) + 8);
      v11 = v9[1];
      v12 = *(a1 + 72);
      v18[0] = *v9;
      v18[1] = v11;
      geom::point_tree<double,(unsigned char)3>::find_k_nearest((v10 + 48), v18, v12, &__p);
      v13 = *(a1 + 72);
      v14 = __p;
      if (v13)
      {
        break;
      }

      if (__p)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (++v3 == v5)
      {
        return;
      }
    }

    v15 = v13 * i;
    v16 = __p;
    do
    {
      v17 = *v16++;
      *(*(*(*(a1 + 40) + 8) + 40) + v15) = v17;
      v15 += 4;
      --v13;
    }

    while (v13);
LABEL_11:
    v20 = v14;
    operator delete(v14);
    goto LABEL_12;
  }
}

__n128 __Block_byref_object_copy__9(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void ___ZN4geom21point_cloud_laplacianIdE32compute_cotan_laplacian_stencilsEv_block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if (v4 >= a1[7])
  {
    v4 = a1[7];
  }

  if (v3 < v4)
  {
    v5 = a1[5];
    std::vector<unsigned int>::vector[abi:nn200100]<std::__wrap_iter<unsigned int const*>,0>(v8, (a1[8] + 4 * v3 * a1[11]), (a1[8] + 4 * (v3 + 1) * a1[11]));
    geom::compute_principal_component_plane_projection<double>(v5, v8[0], (v8[1] - v8[0]) >> 2, &v7);
    memset(&__p, 0, sizeof(__p));
    geom::compute_constrained_delaunay_triangulation<double>(&v7, &__p);
  }
}

void geom::compute_principal_component_plane_projection<double>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(a4, a3);
  }

  v5 = 0;
  v4 = 0uLL;
  geom::compute_principal_component_plane_projection<double>(*a1, (a1[1] - *a1) >> 5, a2, 0, a4, &v4);
}

void geom::compute_constrained_delaunay_triangulation<double>(uint64_t *a1, std::vector<unsigned int> *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 5;
  a2->__end_ = a2->__begin_;
  std::vector<geo::math::Matrix<double,3,1>>::vector[abi:nn200100](&v21, v5);
  if (v3 != v4)
  {
    v6 = 0;
    v7 = 0;
    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    do
    {
      v9 = &v21[v6];
      *v9 = *(*a1 + 32 * v7);
      v9[2] = 0.0;
      ++v7;
      v6 += 3;
    }

    while (v8 != v7);
  }

  v11 = v21;
  v10 = v22;
  if (v22 == v21)
  {
    v10 = 0;
    v11 = 0;
  }

  v12[0] = v11;
  v12[1] = v10;
  geo::math::Get2DConvexHull<double,3ul>(v12, &v19);
  memset(v18, 0, sizeof(v18));
  if (v20 != v19)
  {
    std::vector<double>::__vallocate[abi:nn200100](v18, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
  }

  v16 = 0;
  __p = 0;
  __dst = 0;
  if (v22 != v21)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](&__p, 0xAAAAAAAAAAAAAAABLL * (v22 - v21));
  }

  geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::RangePolyline(v17, &__p);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  geo::math::ConstrainedDelaunayTriangulationMesherDetails::ConstrainedDelaunayTriangulationMesherDetails(v13, v17);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearConstraints(v13);
  operator new();
}

void geom::point_cloud_laplacian<double>::compute_stencil_contributions(const void **a1@<X1>, const void **a2@<X2>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  geom::ddg_evaluator<double>::ddg_evaluator(v63, *a1, (a1[1] - *a1) >> 5, *a2, (a2[1] - *a2) >> 2);
  geom::ddg_evaluator<float>::set_clamp_cotan_weights(v63, 1);
  if (geom::ddg_evaluator<float>::is_valid(v63))
  {
    geom::ddg_evaluator<double>::compute_laplacian_stencil(v63, 0, 1, &v59);
    if (v60 != v59)
    {
      v4 = 0;
      if (((v60 - v59) >> 2) <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = (v60 - v59) >> 2;
      }

      v6 = a3[1];
      do
      {
        v7 = v59;
        v8 = v61;
        v9 = a3[2];
        if (v6 >= v9)
        {
          v10 = *a3;
          v11 = v6 - *a3;
          v12 = v11 >> 4;
          v13 = (v11 >> 4) + 1;
          if (v13 >> 60)
          {
LABEL_72:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v14 = v9 - v10;
          if (v14 >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a3, v15);
          }

          v16 = 16 * v12;
          *v16 = 0;
          *(v16 + 4) = v7[v4];
          *(v16 + 8) = v8[v4];
          v6 = (16 * v12 + 16);
          v17 = (v16 - 16 * (v11 >> 4));
          memcpy(v17, v10, v11);
          v18 = *a3;
          *a3 = v17;
          a3[1] = v6;
          a3[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v6 = 0;
          *(v6 + 1) = v7[v4];
          *(v6 + 1) = v8[v4];
          v6 += 16;
        }

        a3[1] = v6;
        ++v4;
      }

      while (v5 != v4);
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    geom::ddg_evaluator<float>::get_vertex_one_ring(v63, 0, &v56);
    v19 = v56;
    v20 = v57;
    if (v56 != v57)
    {
      v51 = v57;
      do
      {
        geom::ddg_evaluator<double>::compute_laplacian_stencil(v63, *v19, 1, &v52);
        v21 = v52;
        v22 = (v53 - v52) >> 2;
        v23 = 0.0;
        if (v22 >= 2)
        {
          for (i = 1; i != v22; ++i)
          {
            v25 = v52;
            v26 = *(v52 + i);
            if (!v26)
            {
              goto LABEL_30;
            }

            v27 = v56;
            if (v56 != v57)
            {
              while (*v27 != v26)
              {
                if (++v27 == v57)
                {
                  goto LABEL_42;
                }
              }
            }

            if (v27 != v57)
            {
LABEL_30:
              v28 = __p;
              v29 = a3[1];
              v30 = a3[2];
              if (v29 >= v30)
              {
                v32 = *a3;
                v33 = v29 - *a3;
                v34 = v33 >> 4;
                v35 = (v33 >> 4) + 1;
                if (v35 >> 60)
                {
                  goto LABEL_72;
                }

                v36 = v30 - v32;
                if (v36 >> 3 > v35)
                {
                  v35 = v36 >> 3;
                }

                if (v36 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v35 = 0xFFFFFFFFFFFFFFFLL;
                }

                if (v35)
                {
                  _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a3, v35);
                }

                v37 = 16 * v34;
                *v37 = *v19;
                *(v37 + 4) = v25[i];
                *(v37 + 8) = v28[i];
                v31 = (16 * v34 + 16);
                v38 = (v37 - 16 * (v33 >> 4));
                memcpy(v38, v32, v33);
                v39 = *a3;
                *a3 = v38;
                a3[1] = v31;
                a3[2] = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *v29 = *v19;
                *(v29 + 1) = v25[i];
                *(v29 + 1) = v28[i];
                v31 = v29 + 16;
              }

              a3[1] = v31;
              v23 = v23 - *(__p + i);
            }

LABEL_42:
            ;
          }

          v20 = v51;
          v21 = v52;
        }

        v40 = a3[1];
        v41 = a3[2];
        if (v40 >= v41)
        {
          v43 = *a3;
          v44 = v40 - *a3;
          v45 = v44 >> 4;
          v46 = (v44 >> 4) + 1;
          if (v46 >> 60)
          {
            goto LABEL_72;
          }

          v47 = v41 - v43;
          if (v47 >> 3 > v46)
          {
            v46 = v47 >> 3;
          }

          if (v47 >= 0x7FFFFFFFFFFFFFF0)
          {
            v46 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v46)
          {
            _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a3, v46);
          }

          v48 = 16 * v45;
          *v48 = *v19;
          *(v48 + 4) = *v21;
          *(v48 + 8) = v23;
          v42 = (16 * v45 + 16);
          v49 = (v48 - 16 * (v44 >> 4));
          memcpy(v49, v43, v44);
          v50 = *a3;
          *a3 = v49;
          a3[1] = v42;
          a3[2] = 0;
          if (v50)
          {
            operator delete(v50);
          }
        }

        else
        {
          *v40 = *v19;
          *(v40 + 1) = *v21;
          *(v40 + 1) = v23;
          v42 = v40 + 16;
        }

        a3[1] = v42;
        if (__p)
        {
          v55 = __p;
          operator delete(__p);
        }

        if (v52)
        {
          v53 = v52;
          operator delete(v52);
        }

        ++v19;
      }

      while (v19 != v20);
      v19 = v56;
    }

    if (v19)
    {
      v57 = v19;
      operator delete(v19);
    }

    if (v61)
    {
      v62 = v61;
      operator delete(v61);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }
  }

  std::unique_ptr<geom::mesh_connectivity>::~unique_ptr[abi:nn200100](v66);
  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }
}

uint64_t geom::compute_point_cloud_normals_and_areas<float>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[34] = *MEMORY[0x277D85DE8];
  if (a2 >= 3 && a2 >= a3 + 1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x14002000000;
    v15 = __Block_byref_object_copy_;
    v16 = __Block_byref_object_dispose_;
    v9 = a1;
    v10 = a2;
    v11 = 0;
    geom::point_tree<float,(unsigned char)3>::point_tree(v17, &v9, 5u, (a3 + 1), 0);
    if (v11 == 1 && v9)
    {
      MEMORY[0x25305E3D0](v9, 0x1000C80451B5BE8);
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    geom::point_tree<float,(unsigned char)3>::precompute_cell_data(v13 + 6);
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x4002000000;
    v7[3] = __Block_byref_object_copy__14;
    v7[4] = __Block_byref_object_dispose__15;
    memset(v8, 0, sizeof(v8));
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(v8, a2);
  }

  return 0;
}

__n128 __Block_byref_object_copy__14(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__15(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__16(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__17(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN4geom37compute_point_cloud_normals_and_areasIfEEbNS_5sliceINS_11vector_typeIT_Lh3EvE5valueEEEmRNSt3__16vectorIS5_NS7_9allocatorIS5_EEEERNS8_IS3_NS9_IS3_EEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if (v4 >= *(a1 + 64))
  {
    v4 = *(a1 + 64);
  }

  if (v3 < v4)
  {
    v6 = *(a1 + 72);
    v30 = 0;
    v31 = 0;
    v29 = 0;
    geom::point_tree<float,(unsigned char)3>::find_k_nearest((*(*(a1 + 32) + 8) + 48), *(a1 + 88), &v29, *(v6 + 16 * v3));
    __src = 0;
    v27 = 0;
    v28 = 0;
    v7 = v29;
    v8 = v30;
    if (v29 == v30)
    {
      v9 = 0;
      v22 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        v10 = *v7;
        if (v9 >= v28)
        {
          v11 = __src;
          v12 = v9 - __src;
          v13 = (v9 - __src) >> 2;
          v14 = v13 + 1;
          if ((v13 + 1) >> 62)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v15 = v28 - __src;
          if ((v28 - __src) >> 1 > v14)
          {
            v14 = v15 >> 1;
          }

          v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
          v17 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v16)
          {
            v17 = v14;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(&__src, v17);
          }

          v18 = (v9 - __src) >> 2;
          v19 = (4 * v13);
          v20 = (4 * v13 - 4 * v18);
          *v19 = v10;
          v9 = (v19 + 1);
          memcpy(v20, v11, v12);
          v21 = __src;
          __src = v20;
          v27 = v9;
          v28 = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v9 = v10;
          v9 += 4;
        }

        v27 = v9;
        v7 += 2;
      }

      while (v7 != v8);
      v22 = __src;
    }

    v23 = (*(*(*(a1 + 40) + 8) + 40) + 16 * v3);
    memset(v25, 0, sizeof(v25));
    geom::compute_principal_component_plane_projection<float>(*(a1 + 72), *(a1 + 80), v22, (v9 - v22) >> 2, v25, v23);
    memset(&v24, 0, sizeof(v24));
    geom::compute_constrained_delaunay_triangulation<float>(v25, &v24);
  }
}

void geom::compute_principal_component_plane_projection<float>(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4, void *a5, float32x4_t *a6)
{
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a5, a4);
  if (a4)
  {
    v17 = 0;
    v18 = 0uLL;
    do
    {
      v19 = *(a1 + 16 * a3[v17]);
      v18 = vaddq_f32(v18, v19);
      ++v17;
    }

    while (a4 != v17);
    v19.f32[0] = a4;
    v20 = vdivq_f32(v18, vdupq_lane_s32(*v19.f32, 0));
    v16.i64[0] = 0;
    v21 = a3;
    v22 = a4;
    v15.i64[0] = 0;
    do
    {
      v23 = *v21++;
      _Q4 = vsubq_f32(*(a1 + 16 * v23), v20);
      _S5 = _Q4.i32[1];
      __asm { FMLA            S1, S5, V4.S[1] }

      _S5 = _Q4.i32[2];
      __asm { FMLA            S0, S5, V4.S[2] }

      *v16.i8 = vmla_n_f32(*v16.i8, *_Q4.f32, _Q4.f32[0]);
      *v15.i8 = vmla_laneq_f32(*v15.i8, *_Q4.f32, _Q4, 2);
      --v22;
    }

    while (v22);
    v50 = v20;
  }

  else
  {
    _S1 = 0;
    *v14.i32 = 0.0 / 0;
    v50 = vdupq_lane_s32(v14, 0);
    v16.i64[0] = 0;
    _S0 = 0;
    v15.i64[0] = 0;
  }

  v33.i64[0] = v16.i64[0];
  v33.i64[1] = v15.i64[0];
  v16.i32[0] = vdup_lane_s32(*v16.i8, 1).u32[0];
  v16.i32[1] = _S1;
  v16.i32[2] = v15.i32[1];
  v56[0] = v33;
  v56[1] = v16;
  v15.i32[2] = _S0;
  v56[2] = v15;
  DWORD2(v51) = 0;
  *&v51 = 0;
  geom::compute_svd_3x3<float>(v56, &v53, &v51, v52, v11, v12, v13);
  v35 = vmulq_f32(v55, v55);
  v34 = vaddv_f32(*v35.f32);
  v35.i32[1] = 0;
  *&v36 = v35.f32[2] + v34;
  v37 = vrsqrte_f32(COERCE_UNSIGNED_INT(v35.f32[2] + v34));
  v38 = vmul_f32(v37, vrsqrts_f32(v36, vmul_f32(v37, v37)));
  *a6 = vmulq_n_f32(v55, vmul_f32(v38, vrsqrts_f32(v36, vmul_f32(v38, v38))).f32[0]);
  if (a4)
  {
    v39 = 0;
    v40 = vmulq_f32(v53, v53);
    *&v41 = v40.f32[2] + vaddv_f32(*v40.f32);
    *v40.f32 = vrsqrte_f32(v41);
    *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32)));
    v42 = vmulq_n_f32(v53, vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
    v43 = vmulq_f32(v54, v54);
    v35.f32[0] = v43.f32[2] + vaddv_f32(*v43.f32);
    *v43.f32 = vrsqrte_f32(*v35.f32);
    *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(*v35.f32, vmul_f32(*v43.f32, *v43.f32)));
    v44 = vmulq_n_f32(v54, vmul_f32(*v43.f32, vrsqrts_f32(*v35.f32, vmul_f32(*v43.f32, *v43.f32))).f32[0]);
    do
    {
      v45 = vsubq_f32(*(a1 + 16 * a3[v39]), v50);
      v46 = vmulq_f32(*a6, v45);
      v46.f32[0] = v46.f32[2] + vaddv_f32(*v46.f32);
      v47 = vmlsq_lane_f32(v45, *a6, *v46.f32, 0);
      v48 = vmulq_f32(v42, v47);
      v49 = vmulq_f32(v44, v47);
      *(*a5 + 16 * v39++) = __PAIR64__(v49.f32[2] + vaddv_f32(*v49.f32), v48.f32[2] + vaddv_f32(*v48.f32));
    }

    while (a4 != v39);
  }
}

uint64_t geom::compute_point_cloud_normals_and_areas<double>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, __n128 a7, __n128 a8)
{
  v20[42] = *MEMORY[0x277D85DE8];
  if (a2 >= 3 && a2 >= a3 + 1)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x18002000000;
    v18 = __Block_byref_object_copy__6;
    v19 = __Block_byref_object_dispose__7;
    v12 = a1;
    v13 = a2;
    v14 = 0;
    geom::point_tree<double,(unsigned char)3>::point_tree(v20, &v12, 5u, (a3 + 1), 0, COERCE_DOUBLE(0x18002000000), a7, a8);
    if (v14 == 1 && v12)
    {
      MEMORY[0x25305E3D0](v12, 0x1000C80E0EAB150);
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    geom::point_tree<double,(unsigned char)3>::precompute_cell_data(v16 + 6);
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x4002000000;
    v10[3] = __Block_byref_object_copy__19;
    v10[4] = __Block_byref_object_dispose__20;
    memset(v11, 0, sizeof(v11));
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(v11, a2);
  }

  return 0;
}

__n128 __Block_byref_object_copy__19(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__20(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__21(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__22(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN4geom37compute_point_cloud_normals_and_areasIdEEbNS_5sliceINS_11vector_typeIT_Lh3EvE5valueEEEmRNSt3__16vectorIS5_NS7_9allocatorIS5_EEEERNS8_IS3_NS9_IS3_EEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if (v4 >= *(a1 + 64))
  {
    v4 = *(a1 + 64);
  }

  if (v3 < v4)
  {
    v6 = (*(a1 + 72) + 32 * v3);
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v7 = *(*(a1 + 32) + 8);
    v8 = v6[1];
    v9 = *(a1 + 88);
    *v27 = *v6;
    *v28 = v8;
    geom::point_tree<double,(unsigned char)3>::find_k_nearest((v7 + 48), v27, v9, &v34);
    __src = 0;
    v32 = 0;
    v33 = 0;
    v10 = v34;
    v11 = v35;
    if (v34 == v35)
    {
      v12 = 0;
      v25 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = *v10;
        if (v12 >= v33)
        {
          v14 = __src;
          v15 = v12 - __src;
          v16 = (v12 - __src) >> 2;
          v17 = v16 + 1;
          if ((v16 + 1) >> 62)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v18 = v33 - __src;
          if ((v33 - __src) >> 1 > v17)
          {
            v17 = v18 >> 1;
          }

          v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
          v20 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v19)
          {
            v20 = v17;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(&__src, v20);
          }

          v21 = (v12 - __src) >> 2;
          v22 = (4 * v16);
          v23 = (4 * v16 - 4 * v21);
          *v22 = v13;
          v12 = (v22 + 1);
          memcpy(v23, v14, v15);
          v24 = __src;
          __src = v23;
          v32 = v12;
          v33 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v12 = v13;
          v12 += 4;
        }

        v32 = v12;
        v10 += 2;
      }

      while (v10 != v11);
      v25 = __src;
    }

    v26 = (*(*(*(a1 + 40) + 8) + 40) + 32 * v3);
    memset(v30, 0, sizeof(v30));
    geom::compute_principal_component_plane_projection<double>(*(a1 + 72), *(a1 + 80), v25, (v12 - v25) >> 2, v30, v26);
    memset(&v29, 0, sizeof(v29));
    geom::compute_constrained_delaunay_triangulation<double>(v30, &v29);
  }
}

void geom::compute_principal_component_plane_projection<double>(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4, void *a5, float64x2_t *a6)
{
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(a5, a4);
  if (a4)
  {
    v17 = 0;
    v18 = 0uLL;
    v19 = 0uLL;
    do
    {
      v20 = (a1 + 32 * a3[v17]);
      _Q2 = *v20;
      v19 = vaddq_f64(v19, v20[1]);
      v18 = vaddq_f64(v18, *v20);
      ++v17;
    }

    while (a4 != v17);
    _Q2.f64[0] = a4;
    v16 = vdupq_lane_s64(COERCE__INT64(a4), 0);
    v21 = vdivq_f64(v19, _Q2);
    v22 = vdivq_f64(v18, v16);
    v14 = vextq_s8(v22, v22, 8uLL);
    v23 = 0uLL;
    *&v24.f64[0] = v22.i64[0];
    v56 = *v14.i64;
    *&v24.f64[1] = v14.i64[0];
    v25 = a3;
    v26 = a4;
    v14.i64[0] = 0;
    v16.f64[0] = 0.0;
    do
    {
      v27 = *v25++;
      v28 = (a1 + 32 * v27);
      _Q7 = vsubq_f64(*v28, v24);
      _D16 = _Q7.f64[1];
      __asm { FMLA            D4, D16, V7.D[1] }

      _D6 = v28[1].f64[0] - v21.f64[0];
      v16.f64[0] = v16.f64[0] + _D6 * _D6;
      v23 = vmlaq_n_f64(v23, _Q7, _Q7.f64[0]);
      *v14.i64 = *v14.i64 + _Q7.f64[0] * _D6;
      __asm { FMLA            D2, D6, V7.D[1] }

      --v26;
    }

    while (v26);
    v57 = v21;
    v58 = *v22.i64;
  }

  else
  {
    _D4 = 0;
    *v14.i64 = 0.0 / 0;
    v23 = 0uLL;
    v58 = *v14.i64;
    v56 = *v14.i64;
    v57 = v14;
    v16.f64[0] = 0.0;
    v14.i64[0] = 0;
    _Q2.f64[0] = 0.0;
  }

  *&v37 = vdupq_laneq_s64(v23, 1).u64[0];
  v68[0] = v23;
  v68[1] = v14;
  *(&v37 + 1) = _D4;
  v14.i64[1] = *&_Q2.f64[0];
  v68[2] = v37;
  v68[3] = _Q2;
  v68[4] = v14;
  v68[5] = v16;
  v60 = 0;
  v59 = 0uLL;
  geom::compute_svd_3x3<double>(v68, &v62, &v59, v61, v11, v12, v13);
  v38 = 1.0 / sqrt(vmulq_f64(v67, v67).f64[0] + vaddvq_f64(vmulq_f64(v66, v66)));
  v39 = vmulq_n_f64(v67, v38);
  *a6 = vmulq_n_f64(v66, v38);
  a6[1] = v39;
  v40.f64[0] = v58;
  if (a4)
  {
    v41 = 0;
    v42 = vmulq_f64(v63, v63);
    v42.f64[0] = 1.0 / sqrt(v42.f64[0] + vaddvq_f64(vmulq_f64(v62, v62)));
    v43 = vmulq_f64(v63, v42);
    v46 = vmulq_n_f64(v62, v42.f64[0]);
    v44 = vmulq_f64(v65, v65);
    v44.f64[0] = 1.0 / sqrt(v44.f64[0] + vaddvq_f64(vmulq_f64(v64, v64)));
    v45 = vmulq_f64(v65, v44);
    v47 = vmulq_n_f64(v64, v44.f64[0]);
    v40.f64[1] = v56;
    v46.i64[1] = vextq_s8(v46, v46, 8uLL).u64[0];
    v47.i64[1] = vextq_s8(v47, v47, 8uLL).u64[0];
    do
    {
      v48 = (a1 + 32 * a3[v41]);
      v49 = vsubq_f64(*v48, v40);
      v50 = vsubq_f64(v48[1], v57);
      v51 = a6[1];
      v52 = vmulq_f64(v51, v50);
      v52.f64[0] = v52.f64[0] + vaddvq_f64(vmulq_f64(*a6, v49));
      v53 = vmlsq_lane_f64(v49, *a6, v52.f64[0], 0);
      v54 = vmlsq_f64(v50, v51, v52);
      v55 = *a5 + 32 * v41;
      *v55 = vaddq_f64(vzip1q_s64(vmulq_f64(v43, v54), vmulq_f64(v45, v54)), vpaddq_f64(vmulq_f64(v46, v53), vmulq_f64(v47, v53)));
      *(v55 + 16) = 0uLL;
      ++v41;
    }

    while (a4 != v41);
  }
}

void geom::compute_principal_component_plane_projection<float>(unint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t *a4@<X8>, unsigned int *x2_0@<X2>)
{
  __dst = 0;
  v6 = 0;
  v7 = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(&__dst, a2);
  }

  geom::compute_principal_component_plane_projection<float>(&__dst, a3, a4, x2_0);
  if (__dst)
  {
    v6 = __dst;
    operator delete(__dst);
  }
}

void geom::compute_principal_component_plane_projection<double>(unint64_t a2@<X1>, unsigned int *a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __dst = 0;
  v6 = 0;
  v7 = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(&__dst, a2);
  }

  geom::compute_principal_component_plane_projection<double>(&__dst, a3, a4, a5);
  if (__dst)
  {
    v6 = __dst;
    operator delete(__dst);
  }
}

void *geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearConstraints(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 36);
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 39);
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 42);
  std::vector<std::vector<unsigned long>>::clear[abi:nn200100](this + 45);

  return std::__hash_table<std::__hash_value_type<geom::edge,unsigned int>,std::__unordered_map_hasher<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,geom::edge_hash,std::equal_to<geom::edge>,true>,std::__unordered_map_equal<geom::edge,std::__hash_value_type<geom::edge,unsigned int>,std::equal_to<geom::edge>,geom::edge_hash,true>,std::allocator<std::__hash_value_type<geom::edge,unsigned int>>>::clear(this + 48);
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::Build(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 3) - *(a1 + 2)) >> 3) < 3 || !geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(a1) || !geo::math::ConstrainedDelaunayTriangulationMesherDetails::GenerateConstraints(a1) || !geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeConstrainedDelaunay(a1))
  {
    return 0;
  }

  return geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(a1, a2);
}

void geom::compute_constrained_delaunay_triangulation<float>(const void *a1, unint64_t a2, std::vector<unsigned int> *a3)
{
  memset(__dst, 0, sizeof(__dst));
  if (a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(__dst, a2);
  }

  geom::compute_constrained_delaunay_triangulation<float>(__dst, a3);
}

void geom::compute_constrained_delaunay_triangulation<double>(const void *a1, unint64_t a2, std::vector<unsigned int> *a3)
{
  memset(__dst, 0, sizeof(__dst));
  if (a2)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(__dst, a2);
  }

  geom::compute_constrained_delaunay_triangulation<double>(__dst, a3);
}

uint64_t *std::vector<float>::vector[abi:nn200100](uint64_t *a1, int *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    std::vector<float>::__vallocate[abi:nn200100](a1, a3);
  }

  return a1;
}

uint64_t *std::vector<double>::vector[abi:nn200100](uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    std::vector<double>::__vallocate[abi:nn200100](a1, a3);
  }

  return a1;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::ConstrainedDelaunayTriangulationMesherDetails(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 1065353216;
  geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::OrderedPointsCopy(a2, 0, __p);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(void *a1, char **a2)
{
  v3 = (a1 + 2);
  if (v3 != a2)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  *a1 = 0xAAAAAAAAAAAAAAAELL * ((a1[3] - a1[2]) >> 3);
  std::vector<std::vector<unsigned long>>::resize(a1 + 39, 1uLL);
  std::vector<double>::resize(a1[39], 0xAAAAAAAAAAAAAAABLL * ((a1[3] - a1[2]) >> 3));
  v4 = a1[39];
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    v7 = 0;
    v8 = (v6 - v5 - 8) >> 3;
    v9 = vdupq_n_s64(v8);
    v10 = (v8 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v11 = xmmword_2500C1680;
    v12 = vdupq_n_s64(2uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v9, v11));
      if (v13.i8[0])
      {
        *(v5 + 8 * v7) = v7;
      }

      if (v13.i8[4])
      {
        *(v5 + 8 * v7 + 8) = v7 + 1;
      }

      v7 += 2;
      v11 = vaddq_s64(v11, v12);
    }

    while (v10 != v7);
  }
}

void geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::OrderedPointsCopy(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<geo::math::Matrix<double,3,1>>::reserve(a3, a2 + ((a1[3] - a1[2]) >> 2));
  v5 = a1[2];
  v6 = a1[3];
  while (v5 != v6)
  {
    v7 = *v5++;
    std::vector<std::array<std::bitset<64ul>,3ul>>::push_back[abi:nn200100](a3, (*a1 + 24 * v7));
  }
}

void std::vector<std::vector<unsigned long>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<unsigned long>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void **std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](v6, v11);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<std::bitset<64ul>,3ul>>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<std::vector<unsigned long>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<unsigned long>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<unsigned long>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<geo::math::Matrix<double,3,1>>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<std::bitset<64ul>,3ul>>>(a1, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void std::vector<std::vector<unsigned long>>::clear[abi:nn200100](uint64_t *a1)
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

void std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(uint64_t **a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) < a4)
  {
    std::vector<std::vector<unsigned long>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * (a1[2] - *a1);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::vector<unsigned long>>::__vallocate[abi:nn200100](a1, v9);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:nn200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(&v22, a2, a3, v7);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      v18 = a1[1];
      do
      {
        v20 = *(v18 - 24);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v17 - 16) = v19;
          operator delete(v19);
        }

        v17 = v18;
      }

      while (v18 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v11 = (a2 + v10);
    std::__copy_impl::operator()[abi:nn200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(&v21, a2, (a2 + v10), v7);
    v12 = a1[1];
    if (v11 != a3)
    {
      v13 = a1[1];
      do
      {
        v14 = std::vector<double>::vector[abi:nn200100](v13, v11);
        v11 += 3;
        v13 = v14 + 3;
        v12 += 24;
      }

      while (v11 != a3);
    }

    a1[1] = v12;
  }
}

void std::vector<std::vector<unsigned long>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<unsigned long>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<unsigned long>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

char **std::__copy_impl::operator()[abi:nn200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(int a1, char **a2, char **a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  v89 = *MEMORY[0x277D85DE8];
  v3 = *(this + 2);
  v2 = *(this + 3);
  v4 = (this + 16);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
  if (v5 > 1)
  {
    if (*(this + 8))
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Start computing Delaunay triangulation ... \n", 44);
      v3 = *(this + 2);
      v2 = *(this + 3);
      v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
    }

    std::vector<float>::resize((this + 40), v5);
    v11 = *(this + 5);
    v12 = *(this + 6);
    if (v11 != v12)
    {
      v13 = 0;
      v14 = (v12 - v11 - 4) >> 2;
      v10 = vdupq_n_s64(v14);
      v15 = (v14 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v16 = (v11 + 8);
      do
      {
        v17 = vdupq_n_s64(v13);
        v18 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v17, xmmword_2500C1680)));
        if (vuzp1_s16(v18, v10.n128_u64[0]).u8[0])
        {
          *(v16 - 2) = v13;
        }

        if (vuzp1_s16(v18, *&v10).i8[2])
        {
          *(v16 - 1) = v13 + 1;
        }

        if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(*&v10, vorrq_s8(v17, xmmword_2500C1670)))).i32[1])
        {
          *v16 = v13 + 2;
          v16[1] = v13 + 3;
        }

        v13 += 4;
        v16 += 4;
      }

      while (v15 != v13);
    }

    v19 = 126 - 2 * __clz((v12 - v11) >> 2);
    *v88 = this;
    if (v12 == v11)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    std::__introsort<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(v11, v12, v88, v20, 1, v10);
    v22 = *(this + 2);
    v23 = *(this + 3);
    v24 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3));
    *v88 = geo::math::less<double,3,1>;
    if (v23 == v22)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,false>(v22, v23, v88, v25, 1, v21);
    std::vector<unsigned int>::resize((this + 64), v5, &geo::math::kInvalidIndex);
    if (v2 != v3)
    {
      v26 = 0;
      v27 = *(this + 5);
      v28 = *(this + 8);
      do
      {
        *(v28 + 4 * *(v27 + 4 * v26)) = v26;
        ++v26;
      }

      while (v5 > v26);
    }

    if (v5 < 2)
    {
      memset(v88, 0, 24);
      __x[0] = 0;
      std::vector<unsigned int>::resize(v88, v5, __x);
      v70 = 1;
    }

    else
    {
      v83 = v3;
      v29 = v5 - 1;
      v30 = 1;
      v31 = 32;
      v32 = 4;
      v84 = v4;
      do
      {
        v33 = *v4;
        v34 = *v4 + v31;
        v36 = *(v34 - 8);
        v35 = v34 - 8;
        v37 = v36;
        v38 = *(v35 - 24);
        if (v36 == v38)
        {
          v39 = *(this + 5);
          v40 = *(v39 + v32);
          v41 = *(v39 + v32 - 4) - v40;
          if (v41 < 0)
          {
            v41 = -v41;
          }

          if (*(*v4 + v31) == *(*v4 + v31 - 24) && v41 == v29)
          {
            *&v88[4] = *v35;
            *&v88[20] = *(v35 + 16);
            v43 = *(this + 15);
            v44 = *(this + 16);
            if (v43 >= v44)
            {
              v46 = *(this + 14);
              v47 = (v43 - v46) >> 5;
              v48 = v47 + 1;
              if ((v47 + 1) >> 59)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v49 = v44 - v46;
              if (v49 >> 4 > v48)
              {
                v48 = v49 >> 4;
              }

              if (v49 >= 0x7FFFFFFFFFFFFFE0)
              {
                v50 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v50 = v48;
              }

              if (v50)
              {
                _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(this + 112, v50);
              }

              v51 = 32 * v47;
              *v51 = v40;
              *(v51 + 8) = *&v88[4];
              *(v51 + 24) = *&v88[20];
              v45 = 32 * v47 + 32;
              v52 = *(this + 14);
              v53 = *(this + 15) - v52;
              v54 = v51 - v53;
              memcpy((v51 - v53), v52, v53);
              v55 = *(this + 14);
              *(this + 14) = v54;
              *(this + 15) = v45;
              *(this + 16) = 0;
              if (v55)
              {
                operator delete(v55);
              }

              v29 = v5 - 1;
            }

            else
            {
              *v43 = v40;
              *(v43 + 8) = *&v88[4];
              *(v43 + 24) = *&v88[20];
              v45 = v43 + 32;
            }

            *(this + 15) = v45;
            v33 = *(this + 2);
            v37 = *(v33 + v31 - 8);
            v38 = *(v33 + v31 - 32);
            v4 = v84;
          }
        }

        if (v37 == v38 && *(v33 + v31) == *(v33 + v31 - 24))
        {
          std::vector<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>::resize(this + 17, 1 - 0x3333333333333333 * ((*(this + 18) - *(this + 17)) >> 3));
          v56 = *(this + 18) - 40;
          v57 = *(this + 2) + v31;
          *v88 = v30;
          v58 = *(v57 - 8);
          *&v88[24] = *(v57 + 8);
          *&v88[8] = v58;
          std::__hash_table<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::math::Matrix<double,3,1>>>>::__emplace_unique_impl<std::pair<unsigned long,geo::math::Matrix<double,3,1>>>(v56, v88);
        }

        ++v30;
        v31 += 24;
        v32 += 4;
      }

      while (v5 != v30);
      memset(v88, 0, 24);
      __x[0] = 0;
      std::vector<unsigned int>::resize(v88, v5, __x);
      v59 = 0;
      v60 = 0;
      v61 = 1;
      v3 = v83;
      do
      {
        v62 = *v4 + v59;
        v64 = *(v62 + 24);
        v63 = (v62 + 24);
        v65 = (*v4 + 24 * v60);
        if (v64 != *v65)
        {
          goto LABEL_61;
        }

        v66 = *(*(this + 5) + 4 * v61) - *(*(this + 5) + 4 * v60);
        if (v66 < 0)
        {
          v66 = *(*(this + 5) + 4 * v60) - *(*(this + 5) + 4 * v61);
        }

        if (*(*v4 + v59 + 32) != v65[1] || v66 != v5 - 1)
        {
LABEL_61:
          if (v61 != ++v60)
          {
            v68 = *v4 + 24 * v60;
            v69 = *v63;
            *(v68 + 16) = *(v63 + 2);
            *v68 = v69;
            *(*(this + 5) + 4 * v60) = *(*(this + 5) + 4 * v61);
          }

          *(*v88 + 4 * v61) = v60;
        }

        ++v61;
        v59 += 24;
      }

      while (v5 != v61);
      v70 = v60 + 1;
    }

    if (v5 != v70)
    {
      std::vector<float>::resize((this + 88), v5);
      if (v2 != v3)
      {
        v71 = *(this + 8);
        v72 = *v88;
        v73 = *(this + 11);
        if (v5 <= 1)
        {
          v74 = 1;
        }

        else
        {
          v74 = v5;
        }

        do
        {
          v75 = *v71++;
          *v73++ = *(v72 + 4 * v75);
          --v74;
        }

        while (v74);
        *__x = 0;
        __b = 0;
        v87 = 0;
        std::vector<float>::__vallocate[abi:nn200100](__x, v5);
      }

      v76 = 0;
      *__x = 0;
      __b = 0;
      v87 = 0;
      v77 = *(this + 8);
      if (v77)
      {
        *(this + 9) = v77;
        operator delete(v77);
        v76 = __b;
      }

      v78 = v87;
      *(this + 8) = *__x;
      *(this + 9) = v76;
      *(this + 10) = v78;
      std::vector<std::array<std::bitset<64ul>,3ul>>::resize(v4, v70);
      std::vector<float>::resize((this + 40), v70);
      if (v70)
      {
        v79 = 0;
        v80 = *(this + 5);
        v81 = *(this + 8);
        do
        {
          *(v81 + 4 * *(v80 + 4 * v79)) = v79;
          ++v79;
        }

        while (v70 > v79);
        v5 = v70;
      }

      else
      {
        v5 = 0;
      }
    }

    geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveDuplicatesFromLoops(this);
    std::vector<std::vector<unsigned long>>::resize(this + 25, v5);
    *__x = 0;
    __b = 0;
    v9 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(this, 0, (v5 - 1), __x);
    if (*v88)
    {
      *&v88[8] = *v88;
      operator delete(*v88);
    }
  }

  else
  {
    if (*(this + 8))
    {
      v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Only has ", 9);
      v7 = MEMORY[0x25305E300](v6, 0xAAAAAAAAAAAAAAABLL * ((*(this + 3) - *(this + 2)) >> 3));
      v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, " input points, not enough to be triangulated!", 45);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, " Quitting!\n", 11);
    }

    return 0;
  }

  return v9;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::GenerateConstraints(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ReshuffleIndicesAndUpdateConstraints(this, this + 36, this + 42);
  if (result)
  {

    return geo::math::ConstrainedDelaunayTriangulationMesherDetails::ReshuffleIndicesAndUpdateConstraints(this, this + 39, this + 45);
  }

  return result;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeConstrainedDelaunay(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  if (*(this + 8) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Start computing constrained Delaunay triangulation ... \n", 56);
  }

  v2 = *(this + 43) - *(this + 42);
  if (v2)
  {
    v3 = 0;
    v4 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    while (1)
    {
      v6 = *(*(this + 42) + 24 * v3 + 8) - *(*(this + 42) + 24 * v3);
      if (v6)
      {
        break;
      }

LABEL_13:
      if (++v3 == v5)
      {
        goto LABEL_14;
      }
    }

    v7 = 0;
    v8 = v6 >> 3;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    while (1)
    {
      v10 = (*(*(this + 42) + 24 * v3) + 8 * v7);
      if ((geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeConstraint(this, *v10, v10[1]) & 1) == 0)
      {
        return 0;
      }

      if (v9 == ++v7)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v11 = *(this + 46) - *(this + 45);
  if (v11)
  {
    v12 = 0;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    while (1)
    {
      v15 = *(*(this + 45) + 24 * v12 + 8) - *(*(this + 45) + 24 * v12);
      if (v15)
      {
        break;
      }

LABEL_24:
      if (++v12 == v14)
      {
        goto LABEL_25;
      }
    }

    v16 = 0;
    v17 = v15 >> 3;
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    while (1)
    {
      v19 = (*(*(this + 45) + 24 * v12) + 8 * v16);
      if ((geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeConstraint(this, *v19, v19[1]) & 1) == 0)
      {
        return 0;
      }

      if (v18 == ++v16)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  v20 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearSpaceByConstraints(this, this + 42);
  v21 = v20 & geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearSpaceByConstraints(this, this + 45);
  if (*(this + 8) == 1)
  {
    if (v21)
    {
      v22 = "Finish computing constrained Delaunay triangulation ... \n";
    }

    else
    {
      v22 = "Failed computing constrained Delaunay triangulation ... \n";
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], v22, 57);
  }

  return v21;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, uint64_t a2)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  Mesh = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(a1, &v9, &v6);
  if (Mesh)
  {
    memset(v5, 0, sizeof(v5));
    if (v10 != v9)
    {
      std::vector<float>::__vallocate[abi:nn200100](v5, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3));
    }

    geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::DerivedData::DerivedData(v4);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  return Mesh;
}

uint64_t geo::math::less<double,3,1>(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 >= *a2)
  {
    v5 = 0;
    v6 = 1;
    while (v2 <= v3)
    {
      v6 = v5 < 2;
      if (v5 == 2)
      {
        goto LABEL_9;
      }

      v2 = a1[v5 + 1];
      v3 = a2[++v5];
      if (v2 < v3)
      {
        LOBYTE(v5) = 1;
        goto LABEL_9;
      }
    }

    LOBYTE(v5) = 0;
LABEL_9:
    v4 = v6 & v5;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t **std::vector<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>::resize(uint64_t **a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = &(*a1)[5 * a2];
    while (result != v7)
    {
      result = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table((result - 5));
    }

    a1[1] = v7;
  }

  return result;
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveDuplicatesFromLoops(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  v2 = (this + 312);
  std::vector<std::vector<unsigned long>>::vector[abi:nn200100](&v27, 0xAAAAAAAAAAAAAAABLL * ((*(this + 40) - *(this + 39)) >> 3));
  v3 = *(this + 39);
  v4 = *(this + 40);
  if (v4 != v3)
  {
    v5 = 0;
    do
    {
      v6 = v3[3 * v5];
      if (v3[3 * v5 + 1] != v6)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = *(v6 + v7);
          v10 = *(this + 8);
          if (v9 >= (*(this + 9) - v10) >> 2)
          {
            v11 = 0xFFFFFFFFLL;
          }

          else
          {
            v11 = *(v10 + 4 * v9);
          }

          if (v11 < (*(this + 6) - *(this + 5)) >> 2)
          {
            std::vector<unsigned long long>::push_back[abi:nn200100](&v27[3 * v5], (v6 + v7));
            v3 = *v2;
          }

          ++v8;
          v6 = v3[3 * v5];
          v7 += 8;
        }

        while (v8 < (v3[3 * v5 + 1] - v6) >> 3);
        v4 = *(this + 40);
      }

      ++v5;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * (v4 - v3));
  }

  if (v2 != &v27)
  {
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(v2, v27, v28, 0xAAAAAAAAAAAAAAABLL * (v28 - v27));
  }

  v13 = v27;
  v12 = v28;
  if (v28 != v27)
  {
    v14 = v28;
    do
    {
      v16 = *(v14 - 3);
      v14 -= 3;
      v15 = v16;
      if (v16)
      {
        *(v12 - 2) = v15;
        operator delete(v15);
      }

      v12 = v14;
    }

    while (v14 != v13);
  }

  v28 = v13;
  v17 = (this + 288);
  std::vector<std::vector<unsigned long>>::resize(&v27, 0xAAAAAAAAAAAAAAABLL * ((*(this + 37) - *(this + 36)) >> 3));
  v18 = *(this + 36);
  v19 = *(this + 37);
  if (v19 != v18)
  {
    v20 = 0;
    do
    {
      v21 = v18[3 * v20];
      if (v18[3 * v20 + 1] != v21)
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *&v21[v22];
          v25 = *(this + 8);
          if (v24 >= (*(this + 9) - v25) >> 2)
          {
            v26 = 0xFFFFFFFFLL;
          }

          else
          {
            v26 = *(v25 + 4 * v24);
          }

          if (v26 < (*(this + 6) - *(this + 5)) >> 2)
          {
            std::vector<unsigned long long>::push_back[abi:nn200100](&v27[3 * v20], &v21[v22]);
            v18 = *v17;
          }

          ++v23;
          v21 = v18[3 * v20];
          v22 += 8;
        }

        while (v23 < (v18[3 * v20 + 1] - v21) >> 3);
        v19 = *(this + 37);
      }

      ++v20;
    }

    while (v20 < 0xAAAAAAAAAAAAAAABLL * (v19 - v18));
  }

  if (v17 != &v27)
  {
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(this + 36, v27, v28, 0xAAAAAAAAAAAAAAABLL * (v28 - v27));
  }

  geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveLoopsDuplicates(this, this + 36);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveLoopsDuplicates(this, v2);
  v29 = &v27;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v29);
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(geo::math::ConstrainedDelaunayTriangulationMesherDetails *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = 0;
  v11[1] = 0;
  v10[0] = 0;
  v10[1] = 0;
  v6 = a3 - a2;
  if ((a3 - a2 + 1) < 4)
  {
    if (v6 == 1)
    {
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitSegment(a1, a2, a4);
    }

    else if (v6 == 2)
    {
      geo::math::ConstrainedDelaunayTriangulationMesherDetails::InitTriangle(a1, a2, a4);
    }

    return 1;
  }

  v8 = a3 + 1 - ((a3 - a2 + 1) >> 1);
  result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(a1, a2, a3 - ((a3 - a2 + 1) >> 1), v11);
  if (result)
  {
    result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::DivideAndConquer(a1, v8, a3, v10);
    if (result)
    {
      return (geo::math::ConstrainedDelaunayTriangulationMesherDetails::Merge(a1, v11, v8 - 1, v10, v8, a4) & 1) != 0;
    }
  }

  return result;
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25305E2A0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = a2 + a3;
    if ((*(v6 + 2) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x25305E2B0](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5, __n128 a6)
{
  v9 = result;
LABEL_2:
  v10 = v9;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v9 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v101 = *(a2 - 1);
        v102 = *v10;
        v103 = *(*a3 + 16);
        v104 = (v103 + 24 * v101);
        v105 = (v103 + 24 * *v10);
        if (*v104 < *v105 || *v104 == *v105 && v104[1] < v105[1])
        {
          *v10 = v101;
          *(a2 - 1) = v102;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v10, v10 + 1, v10 + 2, a2 - 1, a3);
    }

    if (v13 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v10, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v10, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v10[v13 >> 1];
    v16 = v15;
    v17 = *(*a3 + 16);
    if (v13 >= 0x81)
    {
      v18 = *v15;
      v19 = *v10;
      v20 = (v17 + 24 * *v15);
      v21 = *v20;
      v22 = (v17 + 24 * *v10);
      v23 = *v22;
      if (*v20 < *v22 || *v20 == *v22 && v20[1] < v22[1])
      {
        v24 = *(a2 - 1);
        v25 = (v17 + 24 * v24);
        if (*v25 < v21 || *v25 == v21 && v25[1] < v20[1])
        {
          *v10 = v24;
          goto LABEL_47;
        }

        *v10 = v18;
        *v15 = v19;
        v44 = *(a2 - 1);
        v45 = (v17 + 24 * v44);
        if (*v45 < v23 || *v45 == v23 && v45[1] < v22[1])
        {
          *v15 = v44;
LABEL_47:
          *(a2 - 1) = v19;
        }
      }

      else
      {
        v34 = *(a2 - 1);
        v35 = (v17 + 24 * v34);
        if (*v35 < v21 || *v35 == v21 && v35[1] < v20[1])
        {
          *v15 = v34;
          *(a2 - 1) = v18;
          v36 = *v10;
          v37 = (v17 + 24 * *v15);
          v38 = (v17 + 24 * *v10);
          if (*v37 < *v38 || *v37 == *v38 && v37[1] < v38[1])
          {
            *v10 = *v15;
            *v15 = v36;
          }
        }
      }

      v46 = v14 - 1;
      v47 = v10[v46];
      v48 = v10[1];
      v49 = (v17 + 24 * v47);
      v50 = *v49;
      v51 = (v17 + 24 * v48);
      v52 = *v51;
      if (*v49 < *v51 || *v49 == *v51 && v49[1] < v51[1])
      {
        v53 = *(a2 - 2);
        v54 = (v17 + 24 * v53);
        if (*v54 < v50 || *v54 == v50 && v54[1] < v49[1])
        {
          v10[1] = v53;
          goto LABEL_73;
        }

        v10[1] = v47;
        v10[v46] = v48;
        v63 = *(a2 - 2);
        v64 = (v17 + 24 * v63);
        if (*v64 < v52 || *v64 == v52 && v64[1] < v51[1])
        {
          v10[v46] = v63;
LABEL_73:
          *(a2 - 2) = v48;
        }
      }

      else
      {
        v55 = *(a2 - 2);
        v56 = (v17 + 24 * v55);
        if (*v56 < v50 || *v56 == v50 && v56[1] < v49[1])
        {
          v10[v46] = v55;
          *(a2 - 2) = v47;
          v57 = v10[v46];
          v58 = v10[1];
          v59 = (v17 + 24 * v57);
          v60 = (v17 + 24 * v58);
          if (*v59 < *v60 || *v59 == *v60 && v59[1] < v60[1])
          {
            v10[1] = v57;
            v10[v46] = v58;
          }
        }
      }

      v67 = v15[1];
      v65 = v15 + 1;
      v66 = v67;
      v68 = v10[2];
      v69 = (v17 + 24 * v67);
      v70 = *v69;
      v71 = (v17 + 24 * v68);
      v72 = *v71;
      if (*v69 < *v71 || *v69 == *v71 && v69[1] < v71[1])
      {
        v73 = *(a2 - 3);
        v74 = (v17 + 24 * v73);
        if (*v74 < v70 || *v74 == v70 && v74[1] < v69[1])
        {
          v10[2] = v73;
          goto LABEL_92;
        }

        v10[2] = v66;
        *v65 = v68;
        v80 = *(a2 - 3);
        v81 = (v17 + 24 * v80);
        if (*v81 < v72 || *v81 == v72 && v81[1] < v71[1])
        {
          *v65 = v80;
LABEL_92:
          *(a2 - 3) = v68;
        }
      }

      else
      {
        v75 = *(a2 - 3);
        v76 = (v17 + 24 * v75);
        if (*v76 < v70 || *v76 == v70 && v76[1] < v69[1])
        {
          *v65 = v75;
          *(a2 - 3) = v66;
          v77 = v10[2];
          v78 = (v17 + 24 * *v65);
          v79 = (v17 + 24 * v77);
          if (*v78 < *v79 || *v78 == *v79 && v78[1] < v79[1])
          {
            v10[2] = *v65;
            *v65 = v77;
          }
        }
      }

      v82 = v10[v46];
      v83 = *v16;
      v84 = (v17 + 24 * *v16);
      v85 = *v84;
      v86 = (v17 + 24 * v82);
      v87 = *v86;
      if (*v84 < *v86 || *v84 == *v86 && v84[1] < v86[1])
      {
        v88 = *v65;
        v89 = (v17 + 24 * *v65);
        v90 = *v89;
        if (*v89 < v85 || *v89 == v85 && v89[1] < v84[1])
        {
          v10[v46] = v88;
          goto LABEL_111;
        }

        v10[v46] = v83;
        *v16 = v82;
        if (v90 < v87 || v90 == v87 && v89[1] < v86[1])
        {
          *v16 = v88;
          v83 = v88;
LABEL_111:
          *v65 = v82;
        }

        else
        {
          v83 = v82;
        }
      }

      else
      {
        v91 = *v65;
        v92 = (v17 + 24 * *v65);
        v93 = *v92;
        if (*v92 < v85 || *v92 == v85 && v92[1] < v84[1])
        {
          *v16 = v91;
          *v65 = v83;
          if (v93 < v87 || v93 == v87 && v92[1] < v86[1])
          {
            v10[v46] = v91;
            v65 = v16;
            v83 = v82;
            goto LABEL_111;
          }

          v83 = v91;
        }
      }

      v94 = *v10;
      *v10 = v83;
      *v16 = v94;
      if (a5)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    }

    v26 = *v10;
    v27 = *v16;
    v28 = (v17 + 24 * *v10);
    v29 = *v28;
    v30 = (v17 + 24 * *v16);
    v31 = *v30;
    if (*v28 < *v30 || *v28 == *v30 && v28[1] < v30[1])
    {
      v32 = *(a2 - 1);
      v33 = (v17 + 24 * v32);
      if (*v33 < v29 || *v33 == v29 && v33[1] < v28[1])
      {
        *v16 = v32;
        goto LABEL_66;
      }

      *v16 = v26;
      *v10 = v27;
      v61 = *(a2 - 1);
      v62 = (v17 + 24 * v61);
      if (*v62 < v31 || *v62 == v31 && v62[1] < v30[1])
      {
        *v10 = v61;
LABEL_66:
        *(a2 - 1) = v27;
      }

LABEL_67:
      if (a5)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    }

    v39 = *(a2 - 1);
    v40 = (v17 + 24 * v39);
    if (*v40 >= v29 && (*v40 != v29 || v40[1] >= v28[1]))
    {
      goto LABEL_67;
    }

    *v10 = v39;
    *(a2 - 1) = v26;
    v41 = *v16;
    v42 = (v17 + 24 * *v10);
    v43 = (v17 + 24 * *v16);
    if (*v42 >= *v43 && (*v42 != *v43 || v42[1] >= v43[1]))
    {
      goto LABEL_67;
    }

    *v16 = *v10;
    *v10 = v41;
    if (a5)
    {
      goto LABEL_116;
    }

LABEL_113:
    v95 = (v17 + 24 * *(v10 - 1));
    v96 = (v17 + 24 * *v10);
    if (*v95 >= *v96 && (*v95 != *v96 || v95[1] >= v96[1]))
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(v10, a2, a3);
      v10 = result;
      goto LABEL_124;
    }

LABEL_116:
    v97 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(v10, a2, a3);
    if ((v99 & 1) == 0)
    {
      goto LABEL_122;
    }

    v100 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v10, v97, a3);
    v10 = v97 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v97 + 1, a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v97;
      if (v100)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v100)
    {
LABEL_122:
      result = std::__introsort<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(v9, v97, a3, -v12, a5 & 1, v98);
      v10 = v97 + 1;
LABEL_124:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v107 = *v10;
  v106 = v10[1];
  v108 = *(*a3 + 16);
  v109 = (v108 + 24 * v106);
  v110 = *v109;
  v111 = (v108 + 24 * *v10);
  v112 = *v111;
  if (*v109 < *v111 || *v109 == *v111 && v109[1] < v111[1])
  {
    v113 = *(a2 - 1);
    v114 = (v108 + 24 * v113);
    if (*v114 < v110 || *v114 == v110 && v114[1] < v109[1])
    {
      *v10 = v113;
    }

    else
    {
      *v10 = v106;
      v10[1] = v107;
      v121 = *(a2 - 1);
      v122 = (v108 + 24 * v121);
      if (*v122 >= v112 && (*v122 != v112 || v122[1] >= v111[1]))
      {
        return result;
      }

      v10[1] = v121;
    }

    *(a2 - 1) = v107;
    return result;
  }

  v115 = *(a2 - 1);
  v116 = (v108 + 24 * v115);
  if (*v116 < v110 || *v116 == v110 && v116[1] < v109[1])
  {
    v10[1] = v115;
    *(a2 - 1) = v106;
    v118 = *v10;
    v117 = v10[1];
    v119 = (v108 + 24 * v117);
    v120 = (v108 + 24 * *v10);
    if (*v119 < *v120 || *v119 == *v120 && v119[1] < v120[1])
    {
      *v10 = v117;
      v10[1] = v118;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a2;
  v7 = *result;
  v8 = *(*a5 + 16);
  v9 = (v8 + 24 * *a2);
  v10 = *v9;
  v11 = (v8 + 24 * *result);
  v12 = *v11;
  if (*v9 < *v11 || *v9 == *v11 && v9[1] < v11[1])
  {
    v13 = (v8 + 24 * *a3);
    if (*v13 < v10 || *v13 == v10 && v13[1] < v9[1])
    {
      *result = *a3;
LABEL_19:
      *a3 = v7;
LABEL_20:
      v5 = v7;
      v6 = v7;
      goto LABEL_22;
    }

    *result = v6;
    *a2 = v7;
    v5 = *a3;
    v18 = (v8 + 24 * *a3);
    if (*v18 < v12 || *v18 == v12 && v18[1] < v11[1])
    {
      *a2 = v5;
      goto LABEL_19;
    }
  }

  else
  {
    v7 = *a3;
    v14 = (v8 + 24 * *a3);
    if (*v14 >= v10 && (*v14 != v10 || v14[1] >= v9[1]))
    {
      goto LABEL_20;
    }

    *a2 = v7;
    *a3 = v5;
    v15 = *result;
    v16 = (v8 + 24 * *a2);
    v17 = (v8 + 24 * *result);
    if (*v16 >= *v17 && (*v16 != *v17 || v16[1] >= v17[1]))
    {
      goto LABEL_22;
    }

    *result = *a2;
    *a2 = v15;
    v5 = *a3;
  }

  v6 = v5;
LABEL_22:
  v19 = (v8 + 24 * *a4);
  v20 = (v8 + 24 * v5);
  if (*v19 < *v20 || *v19 == *v20 && v19[1] < v20[1])
  {
    *a3 = *a4;
    *a4 = v6;
    v21 = *a2;
    v22 = (v8 + 24 * *a3);
    v23 = (v8 + 24 * *a2);
    if (*v22 < *v23 || *v22 == *v23 && v22[1] < v23[1])
    {
      *a2 = *a3;
      *a3 = v21;
      v24 = *result;
      v25 = (v8 + 24 * *a2);
      v26 = (v8 + 24 * *result);
      if (*v25 < *v26 || *v25 == *v26 && v25[1] < v26[1])
      {
        *result = *a2;
        *a2 = v24;
      }
    }
  }

  return result;
}

unsigned int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a2, a3, a4, a6);
  v13 = *a4;
  v14 = *(*a6 + 16);
  v15 = (v14 + 24 * *a5);
  v16 = (v14 + 24 * *a4);
  if (*v15 < *v16 || *v15 == *v16 && v15[1] < v16[1])
  {
    *a4 = *a5;
    *a5 = v13;
    v17 = *a3;
    v18 = (v14 + 24 * *a4);
    v19 = (v14 + 24 * *a3);
    if (*v18 < *v19 || *v18 == *v19 && v18[1] < v19[1])
    {
      *a3 = *a4;
      *a4 = v17;
      v20 = *a2;
      v21 = (v14 + 24 * *a3);
      v22 = (v14 + 24 * *a2);
      if (*v21 < *v22 || *v21 == *v22 && v21[1] < v22[1])
      {
        *a2 = *a3;
        *a3 = v20;
        v23 = *a1;
        v24 = (v14 + 24 * *a2);
        v25 = (v14 + 24 * *a1);
        if (*v24 < *v25 || *v24 == *v25 && v24[1] < v25[1])
        {
          *a1 = *a2;
          *a2 = v23;
        }
      }
    }
  }

  return result;
}

unsigned int *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *(*a3 + 16);
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v3;
        v8 = v7[1];
        v9 = (v5 + 24 * v8);
        v10 = *v9;
        v11 = (v5 + 24 * *v7);
        if (*v9 < *v11 || *v9 == *v11 && v9[1] < v11[1])
        {
          v7[1] = *v7;
          v12 = result;
          if (v7 != result)
          {
            v13 = v4;
            while (1)
            {
              v14 = *(result + v13 - 4);
              v15 = (v5 + 24 * v14);
              if (v10 >= *v15)
              {
                if (v10 != *v15)
                {
                  v12 = v7;
                  goto LABEL_16;
                }

                if (v9[1] >= v15[1])
                {
                  break;
                }
              }

              --v7;
              *(result + v13) = v14;
              v13 -= 4;
              if (!v13)
              {
                v12 = result;
                goto LABEL_16;
              }
            }

            v12 = (result + v13);
          }

LABEL_16:
          *v12 = v8;
        }

        v3 = v6 + 1;
        v4 += 4;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

unsigned int *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *(*a3 + 16);
      do
      {
        v5 = result;
        result = v3;
        v7 = *v5;
        v6 = v5[1];
        v8 = (v4 + 24 * v6);
        v9 = *v8;
        v10 = (v4 + 24 * *v5);
        if (*v8 < *v10 || *v8 == *v10 && v8[1] < v10[1])
        {
          do
          {
            do
            {
              v11 = v5;
              v12 = *--v5;
              v5[2] = v7;
              v7 = v12;
              v13 = (v4 + 24 * v12);
            }

            while (v9 < *v13);
          }

          while (v9 == *v13 && v8[1] < v13[1]);
          *v11 = v6;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  v5 = *(*a3 + 16);
  v6 = (v5 + 24 * *a1);
  v7 = *v6;
  v8 = (v5 + 24 * v4);
  v9 = *v8;
  if (*v6 < *v8 || *v6 == *v8 && v6[1] < v8[1])
  {
    j = a1 + 1;
    v11 = a1[1];
    for (i = *(v5 + 24 * v11); v7 >= i; i = *(v5 + 24 * v13))
    {
      if (v7 == i && v6[1] < *(v5 + 24 * v11 + 8))
      {
        break;
      }

      v13 = j[1];
      ++j;
      v11 = v13;
    }
  }

  else
  {
    for (j = a1 + 1; j < a2; ++j)
    {
      v14 = (v5 + 24 * *j);
      if (v7 < *v14 || v7 == *v14 && v6[1] < v14[1])
      {
        break;
      }
    }
  }

  if (j < a2)
  {
    --a2;
    while (v7 < v9 || v7 == v9 && v6[1] < *(v5 + 24 * v4 + 8))
    {
      v15 = *--a2;
      v4 = v15;
      v9 = *(v5 + 24 * v15);
    }
  }

  if (j < a2)
  {
    LODWORD(v16) = *j;
    v17 = *a2;
    do
    {
      *j = v17;
      *a2 = v16;
      do
      {
        v18 = j[1];
        ++j;
        v16 = v18;
        v19 = *(v5 + 24 * v18);
      }

      while (v7 >= v19 && (v7 != v19 || v6[1] >= *(v5 + 24 * v16 + 8)));
      do
      {
        do
        {
          v20 = *--a2;
          v17 = v20;
          v21 = (v5 + 24 * v20);
        }

        while (v7 < *v21);
      }

      while (v7 == *v21 && v6[1] < v21[1]);
    }

    while (j < a2);
  }

  if (j - 1 != a1)
  {
    *a1 = *(j - 1);
  }

  *(j - 1) = v3;
  return j;
}

unsigned int *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *(*a3 + 16);
  v6 = (v5 + 24 * *a1);
  v7 = *v6;
  while (1)
  {
    v8 = a1[v3 + 1];
    v9 = (v5 + 24 * v8);
    if (*v9 >= v7 && (*v9 != v7 || v9[1] >= v6[1]))
    {
      break;
    }

    ++v3;
  }

  v10 = &a1[v3];
  v11 = &a1[v3 + 1];
  if (v3 * 4)
  {
    v13 = *--a2;
    v12 = v13;
    for (i = *(v5 + 24 * v13); i >= v7; i = *(v5 + 24 * v15))
    {
      if (i == v7 && *(v5 + 24 * v12 + 8) < v6[1])
      {
        break;
      }

      v15 = *--a2;
      v12 = v15;
    }
  }

  else if (v11 < a2)
  {
    v17 = *--a2;
    v16 = v17;
    for (j = *(v5 + 24 * v17); j >= v7; j = *(v5 + 24 * v20))
    {
      if (j == v7)
      {
        if (*(v5 + 24 * v16 + 8) < v6[1] || v11 >= a2)
        {
          break;
        }
      }

      else if (v11 >= a2)
      {
        break;
      }

      v20 = *--a2;
      v16 = v20;
    }
  }

  if (v11 < a2)
  {
    LODWORD(v21) = *a2;
    v22 = v8;
    v23 = v11;
    v24 = a2;
    do
    {
      *v23++ = v21;
      *v24 = v22;
      while (1)
      {
        v22 = *v23;
        v25 = (v5 + 24 * *v23);
        if (*v25 >= v7 && (*v25 != v7 || v25[1] >= v6[1]))
        {
          break;
        }

        ++v23;
      }

      do
      {
        v26 = *--v24;
        v21 = v26;
        v27 = *(v5 + 24 * v26);
      }

      while (v27 >= v7 && (v27 != v7 || *(v5 + 24 * v21 + 8) >= v6[1]));
    }

    while (v23 < v24);
    v10 = v23 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v4;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v10 = *a1;
        v9 = a1[1];
        v11 = *(*a3 + 16);
        v12 = (v11 + 24 * v9);
        v13 = *v12;
        v14 = (v11 + 24 * *a1);
        v15 = *v14;
        if (*v12 >= *v14 && (*v12 != *v14 || v12[1] >= v14[1]))
        {
          v30 = *(a2 - 1);
          v31 = (v11 + 24 * v30);
          if (*v31 < v13 || *v31 == v13 && v31[1] < v12[1])
          {
            a1[1] = v30;
            *(a2 - 1) = v9;
            v33 = *a1;
            v32 = a1[1];
            v34 = (v11 + 24 * v32);
            v35 = (v11 + 24 * *a1);
            if (*v34 < *v35 || *v34 == *v35 && v34[1] < v35[1])
            {
              *a1 = v32;
              a1[1] = v33;
            }
          }

          return 1;
        }

        v16 = *(a2 - 1);
        v17 = (v11 + 24 * v16);
        if (*v17 < v13 || *v17 == v13 && v17[1] < v12[1])
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v9;
          a1[1] = v10;
          v39 = *(a2 - 1);
          v40 = (v11 + 24 * v39);
          if (*v40 >= v15 && (*v40 != v15 || v40[1] >= v14[1]))
          {
            return 1;
          }

          a1[1] = v39;
        }

        *(a2 - 1) = v10;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    v6 = *(*a3 + 16);
    v7 = (v6 + 24 * v4);
    v8 = (v6 + 24 * *a1);
    if (*v7 < *v8 || *v7 == *v8 && v7[1] < v8[1])
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_19:
  v18 = a1 + 2;
  v19 = *a1;
  v20 = a1 + 1;
  v21 = a1[1];
  v22 = *(*a3 + 16);
  v23 = (v22 + 24 * v21);
  v24 = *v23;
  v25 = (v22 + 24 * *a1);
  v26 = *v25;
  if (*v23 < *v25 || *v23 == *v25 && v23[1] < v25[1])
  {
    v27 = *v18;
    v28 = (v22 + 24 * *v18);
    v29 = *v28;
    if (*v28 < v24 || *v28 == v24 && v28[1] < v23[1])
    {
      *a1 = v27;
LABEL_50:
      v20 = a1 + 2;
      goto LABEL_51;
    }

    *a1 = v21;
    a1[1] = v19;
    if (v29 < v26 || v29 == v26 && v28[1] < v25[1])
    {
      *v20 = v27;
      goto LABEL_50;
    }
  }

  else
  {
    v36 = *v18;
    v37 = (v22 + 24 * *v18);
    v38 = *v37;
    if (*v37 < v24 || *v37 == v24 && v37[1] < v23[1])
    {
      *v20 = v36;
      *v18 = v21;
      if (v38 < v26 || v38 == v26 && v37[1] < v25[1])
      {
        *a1 = v36;
LABEL_51:
        *v20 = v19;
      }
    }
  }

  v41 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v42 = 0;
  v43 = 0;
  while (1)
  {
    v44 = *v41;
    v45 = *v18;
    v46 = (v22 + 24 * *v41);
    v47 = *v46;
    v48 = (v22 + 24 * v45);
    if (*v46 < *v48 || *v46 == *v48 && v46[1] < v48[1])
    {
      *v41 = v45;
      v49 = v42;
      while (1)
      {
        v50 = *(a1 + v49 + 4);
        v51 = (v22 + 24 * v50);
        if (v47 >= *v51 && (v47 != *v51 || v46[1] >= v51[1]))
        {
          break;
        }

        *(a1 + v49 + 8) = v50;
        v49 -= 4;
        if (v49 == -8)
        {
          v52 = a1;
          goto LABEL_64;
        }
      }

      v52 = (a1 + v49 + 8);
LABEL_64:
      *v52 = v44;
      if (++v43 == 8)
      {
        return v41 + 1 == a2;
      }
    }

    v18 = v41;
    v42 += 4;
    if (++v41 == a2)
    {
      return 1;
    }
  }
}

unsigned int *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
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
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8, v11--);
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
        v14 = *(*a4 + 16);
        v15 = (v14 + 24 * *v12);
        v16 = (v14 + 24 * *a1);
        if (*v15 < *v16 || *v15 == *v16 && v15[1] < v16[1])
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = a2 - 1;
      do
      {
        v18 = *a1;
        v19 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8);
        if (v17 == v19)
        {
          *v19 = v18;
        }

        else
        {
          *v19 = *v17;
          *v17 = v18;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, (v19 + 1), a4, v19 + 1 - a1);
        }

        --v17;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(uint64_t result, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      v10 = *a2;
      if (v9 >= a3)
      {
        v11 = *(v10 + 16);
      }

      else
      {
        v11 = *(v10 + 16);
        v12 = (v11 + 24 * *v8);
        v13 = (v11 + 24 * v8[1]);
        if (*v12 < *v13 || *v12 == *v13 && v12[1] < v13[1])
        {
          ++v8;
          v7 = v9;
        }
      }

      v14 = *a4;
      v15 = (v11 + 24 * *v8);
      v16 = (v11 + 24 * *a4);
      v17 = *v16;
      if (*v15 >= *v16 && (*v15 != *v16 || v15[1] >= v16[1]))
      {
        *a4 = *v8;
        if (v5 >= v7)
        {
          while (1)
          {
            v19 = 2 * v7;
            v7 = (2 * v7) | 1;
            v18 = (result + 4 * v7);
            v20 = v19 + 2;
            if (v20 < a3)
            {
              v21 = (v11 + 24 * *v18);
              v22 = (v11 + 24 * v18[1]);
              if (*v21 < *v22 || *v21 == *v22 && v21[1] < v22[1])
              {
                ++v18;
                v7 = v20;
              }
            }

            v23 = (v11 + 24 * *v18);
            if (*v23 < v17 || *v23 == v17 && v23[1] < v16[1])
            {
              break;
            }

            *v8 = *v18;
            v8 = v18;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v18 = v8;
LABEL_14:
        *v18 = v14;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(_DWORD *result, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = result;
    v6 = &result[v3];
    result = v6 + 1;
    v7 = 2 * v3;
    v3 = (2 * v3) | 1;
    v8 = v7 + 2;
    if (v8 < a3)
    {
      v10 = v6[2];
      v9 = v6 + 2;
      v11 = *(v4 + 16);
      v12 = (v11 + 24 * *(v9 - 1));
      v13 = (v11 + 24 * v10);
      if (*v12 < *v13 || *v12 == *v13 && v12[1] < v13[1])
      {
        result = v9;
        v3 = v8;
      }
    }

    *v5 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(void)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 4 * (v4 >> 1));
    v7 = *(a2 - 4);
    v8 = *(*a3 + 16);
    v9 = (v8 + 24 * *v6);
    v10 = (v8 + 24 * v7);
    v11 = *v10;
    if (*v9 < *v10 || *v9 == *v10 && v9[1] < v10[1])
    {
      *(a2 - 4) = *v6;
      if (v4 >= 2)
      {
        while (1)
        {
          v13 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v12 = (result + 4 * v5);
          v14 = (v8 + 24 * *v12);
          if (*v14 >= v11 && (*v14 != v11 || v14[1] >= v10[1]))
          {
            break;
          }

          *v6 = *v12;
          v6 = (result + 4 * v5);
          if (v13 <= 1)
          {
            goto LABEL_11;
          }
        }
      }

      v12 = v6;
LABEL_11:
      *v12 = v7;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,false>(__int128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-2].n128_i64[1];
  v79 = a2 - 3;
  v10 = &a2[-5].n128_i8[8];
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v15 <= 2)
    {
      break;
    }

    switch(v15)
    {
      case 3uLL:
        v59 = (*a3)((v11 + 24), v11);
        v60 = (*a3)(v9, (v11 + 24));
        if (v59)
        {
          if (v60)
          {
            goto LABEL_76;
          }

          v129 = *(v11 + 2);
          v102 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v102;
          *(v11 + 5) = v129;
          if (!(*a3)(v9, (v11 + 24)))
          {
            return result;
          }

          v61 = *(v11 + 5);
          result = *(v11 + 24);
          v62 = *(v9 + 16);
          *(v11 + 24) = *v9;
          *(v11 + 5) = v62;
          *v9 = result;
LABEL_77:
          *(v9 + 16) = v61;
          return result;
        }

        if (!v60)
        {
          return result;
        }

        v68 = *(v11 + 5);
        v69 = *(v11 + 24);
        v70 = *(v9 + 16);
        *(v11 + 24) = *v9;
        *(v11 + 5) = v70;
        *v9 = v69;
        *(v9 + 16) = v68;
        goto LABEL_103;
      case 4uLL:
        v65 = (*a3)((v11 + 24), v11);
        v66 = (*a3)(v11 + 3, (v11 + 24));
        if (v65)
        {
          if (v66)
          {
            v131 = *(v11 + 2);
            v104 = *v11;
            *v11 = v11[3];
            *(v11 + 2) = *(v11 + 8);
            v11[3] = v104;
            v67 = v131;
            goto LABEL_99;
          }

          v133 = *(v11 + 2);
          v106 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v106;
          *(v11 + 5) = v133;
          if ((*a3)(v11 + 3, (v11 + 24)))
          {
            v67 = *(v11 + 5);
            v73 = *(v11 + 24);
            *(v11 + 24) = v11[3];
            *(v11 + 5) = *(v11 + 8);
            v11[3] = v73;
LABEL_99:
            *(v11 + 8) = v67;
          }
        }

        else if (v66)
        {
          v71 = *(v11 + 5);
          v72 = *(v11 + 24);
          *(v11 + 24) = v11[3];
          *(v11 + 5) = *(v11 + 8);
          v11[3] = v72;
          *(v11 + 8) = v71;
          if ((*a3)((v11 + 24), v11))
          {
            v132 = *(v11 + 2);
            v105 = *v11;
            *v11 = *(v11 + 24);
            *(v11 + 2) = *(v11 + 5);
            *(v11 + 24) = v105;
            *(v11 + 5) = v132;
          }
        }

        if (!(*a3)(v9, v11 + 3))
        {
          return result;
        }

        v74 = *(v11 + 8);
        v75 = v11[3];
        v76 = *(v9 + 16);
        v11[3] = *v9;
        *(v11 + 8) = v76;
        *v9 = v75;
        *(v9 + 16) = v74;
        if (!(*a3)(v11 + 3, (v11 + 24)))
        {
          return result;
        }

        v77 = *(v11 + 5);
        v78 = *(v11 + 24);
        *(v11 + 24) = v11[3];
        *(v11 + 5) = *(v11 + 8);
        v11[3] = v78;
        *(v11 + 8) = v77;
LABEL_103:
        if ((*a3)((v11 + 24), v11))
        {
          v134 = *(v11 + 2);
          v107 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          result = v107;
          *(v11 + 24) = v107;
          *(v11 + 5) = v134;
        }

        return result;
      case 5uLL:

        result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,0>(v11, (v11 + 24), v11 + 3, (v11 + 72), (a2 - 24), a3).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v14 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(v11, a2, a2, a3, result);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = v11 + 24 * (v15 >> 1);
    v18 = *a3;
    if (v14 >= 0xC01)
    {
      v19 = v18(v17, v11);
      v20 = (*a3)((a2 - 24), v17);
      if (v19)
      {
        if (v20)
        {
          v108 = *(a1 + 2);
          v81 = *a1;
          v21 = *v9;
          *(a1 + 2) = a2[-1].n128_u64[1];
          *a1 = v21;
          goto LABEL_27;
        }

        v114 = *(a1 + 2);
        v87 = *a1;
        v29 = *v17;
        *(a1 + 2) = *(v17 + 16);
        *a1 = v29;
        *(v17 + 16) = v114;
        *v17 = v87;
        if ((*a3)((a2 - 24), v17))
        {
          v108 = *(v17 + 16);
          v81 = *v17;
          v30 = *v9;
          *(v17 + 16) = a2[-1].n128_u64[1];
          *v17 = v30;
LABEL_27:
          *v9 = v81;
          a2[-1].n128_u64[1] = v108;
        }
      }

      else if (v20)
      {
        v110 = *(v17 + 16);
        v83 = *v17;
        v25 = *v9;
        *(v17 + 16) = a2[-1].n128_u64[1];
        *v17 = v25;
        *v9 = v83;
        a2[-1].n128_u64[1] = v110;
        if ((*a3)(v17, a1))
        {
          v111 = *(a1 + 2);
          v84 = *a1;
          v26 = *v17;
          *(a1 + 2) = *(v17 + 16);
          *a1 = v26;
          *(v17 + 16) = v111;
          *v17 = v84;
        }
      }

      v31 = a1 + 24 * v16 - 24;
      v32 = (*a3)(v31, (a1 + 24));
      v33 = (*a3)(v79, v31);
      if (v32)
      {
        if (v33)
        {
          v34 = *(a1 + 5);
          v35 = *(a1 + 24);
          v36 = a2[-2].n128_u64[0];
          *(a1 + 24) = *v79;
          *(a1 + 5) = v36;
          *v79 = v35;
          a2[-2].n128_u64[0] = v34;
        }

        else
        {
          v91 = *(a1 + 24);
          v118 = *(a1 + 5);
          v41 = *(a1 + 3 * v16 - 1);
          *(a1 + 24) = *v31;
          *(a1 + 5) = v41;
          *(a1 + 3 * v16 - 1) = v118;
          *v31 = v91;
          if ((*a3)(v79, (a1 + 24 * v16 - 24)))
          {
            v119 = *(a1 + 3 * v16 - 1);
            v92 = *v31;
            v42 = *v79;
            *(a1 + 3 * v16 - 1) = a2[-2].n128_u64[0];
            *v31 = v42;
            *v79 = v92;
            a2[-2].n128_u64[0] = v119;
          }
        }
      }

      else if (v33)
      {
        v115 = *(a1 + 3 * v16 - 1);
        v88 = *v31;
        v37 = *v79;
        *(a1 + 3 * v16 - 1) = a2[-2].n128_u64[0];
        *v31 = v37;
        *v79 = v88;
        a2[-2].n128_u64[0] = v115;
        if ((*a3)((a1 + 24 * v16 - 24), (a1 + 24)))
        {
          v89 = *(a1 + 24);
          v116 = *(a1 + 5);
          v38 = *(a1 + 3 * v16 - 1);
          *(a1 + 24) = *v31;
          *(a1 + 5) = v38;
          *(a1 + 3 * v16 - 1) = v116;
          *v31 = v89;
        }
      }

      v43 = a1 + 24 * v16;
      v44 = (*a3)((v43 + 24), a1 + 3);
      v45 = (*a3)((a2 - 72), (v43 + 24));
      if (v44)
      {
        if (v45)
        {
          v46 = *(a1 + 8);
          v47 = a1[3];
          v48 = a2[-4].n128_u64[1];
          a1[3] = *v10;
          *(a1 + 8) = v48;
          *v10 = v47;
          goto LABEL_47;
        }

        v95 = a1[3];
        v122 = *(a1 + 8);
        v51 = *(v43 + 5);
        a1[3] = *(v43 + 24);
        *(a1 + 8) = v51;
        *(v43 + 5) = v122;
        *(v43 + 24) = v95;
        if ((*a3)((a2 - 72), (v43 + 24)))
        {
          v123 = *(v43 + 5);
          v96 = *(v43 + 24);
          v52 = *v10;
          *(v43 + 5) = a2[-4].n128_u64[1];
          *(v43 + 24) = v52;
          *v10 = v96;
          v46 = v123;
LABEL_47:
          a2[-4].n128_u64[1] = v46;
        }
      }

      else if (v45)
      {
        v120 = *(v43 + 5);
        v93 = *(v43 + 24);
        v49 = *v10;
        *(v43 + 5) = a2[-4].n128_u64[1];
        *(v43 + 24) = v49;
        *v10 = v93;
        a2[-4].n128_u64[1] = v120;
        if ((*a3)((v43 + 24), a1 + 3))
        {
          v94 = a1[3];
          v121 = *(a1 + 8);
          v50 = *(v43 + 5);
          a1[3] = *(v43 + 24);
          *(a1 + 8) = v50;
          *(v43 + 5) = v121;
          *(v43 + 24) = v94;
        }
      }

      v53 = (*a3)(v17, v31);
      v54 = (*a3)((v43 + 24), v17);
      if (v53)
      {
        if (v54)
        {
          v124 = *(v31 + 16);
          v97 = *v31;
          *v31 = *(v43 + 24);
          *(v31 + 16) = *(v43 + 5);
          goto LABEL_56;
        }

        v127 = *(v31 + 16);
        v100 = *v31;
        *v31 = *v17;
        *(v31 + 16) = *(v17 + 16);
        *(v17 + 16) = v127;
        *v17 = v100;
        if ((*a3)((v43 + 24), v17))
        {
          v124 = *(v17 + 16);
          v97 = *v17;
          *v17 = *(v43 + 24);
          *(v17 + 16) = *(v43 + 5);
LABEL_56:
          *(v43 + 5) = v124;
          *(v43 + 24) = v97;
        }
      }

      else if (v54)
      {
        v125 = *(v17 + 16);
        v98 = *v17;
        *v17 = *(v43 + 24);
        *(v17 + 16) = *(v43 + 5);
        *(v43 + 5) = v125;
        *(v43 + 24) = v98;
        if ((*a3)(v17, v31))
        {
          v126 = *(v31 + 16);
          v99 = *v31;
          *v31 = *v17;
          *(v31 + 16) = *(v17 + 16);
          *(v17 + 16) = v126;
          *v17 = v99;
        }
      }

      v128 = *(a1 + 2);
      v101 = *a1;
      v55 = *v17;
      *(a1 + 2) = *(v17 + 16);
      *a1 = v55;
      *(v17 + 16) = v128;
      *v17 = v101;
      goto LABEL_58;
    }

    v22 = v18(v11, v17);
    v23 = (*a3)((a2 - 24), a1);
    if (v22)
    {
      if (v23)
      {
        v109 = *(v17 + 16);
        v82 = *v17;
        v24 = *v9;
        *(v17 + 16) = a2[-1].n128_u64[1];
        *v17 = v24;
LABEL_36:
        *v9 = v82;
        a2[-1].n128_u64[1] = v109;
        goto LABEL_58;
      }

      v117 = *(v17 + 16);
      v90 = *v17;
      v39 = *a1;
      *(v17 + 16) = *(a1 + 2);
      *v17 = v39;
      *(a1 + 2) = v117;
      *a1 = v90;
      if ((*a3)((a2 - 24), a1))
      {
        v109 = *(a1 + 2);
        v82 = *a1;
        v40 = *v9;
        *(a1 + 2) = a2[-1].n128_u64[1];
        *a1 = v40;
        goto LABEL_36;
      }
    }

    else if (v23)
    {
      v112 = *(a1 + 2);
      v85 = *a1;
      v27 = *v9;
      *(a1 + 2) = a2[-1].n128_u64[1];
      *a1 = v27;
      *v9 = v85;
      a2[-1].n128_u64[1] = v112;
      if ((*a3)(a1, v17))
      {
        v113 = *(v17 + 16);
        v86 = *v17;
        v28 = *a1;
        *(v17 + 16) = *(a1 + 2);
        *v17 = v28;
        *(a1 + 2) = v113;
        *a1 = v86;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && ((*a3)((a1 - 24), a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(a1, a2, a3);
      goto LABEL_65;
    }

    v56 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(a1, a2, a3);
    if ((v57 & 1) == 0)
    {
      goto LABEL_63;
    }

    v58 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(a1, v56, a3);
    v11 = &v56[1].n128_i8[8];
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(&v56[1].n128_i64[1], a2, a3))
    {
      a4 = -v13;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v58)
    {
LABEL_63:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,false>(a1, v56, a3, -v13, a5 & 1);
      v11 = &v56[1].n128_i8[8];
LABEL_65:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 < 2)
  {
    return result;
  }

  if (v15 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)((a2 - 24), v11))
  {
LABEL_76:
    v130 = *(v11 + 2);
    v103 = *v11;
    v64 = *v9;
    *(v11 + 2) = *(v9 + 16);
    *v11 = v64;
    result = v103;
    *v9 = v103;
    v61 = v130;
    goto LABEL_77;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = a1[1].n128_u64[0];
      v15 = *a1;
      v16 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v16;
LABEL_9:
      *a3 = v15;
      a3[1].n128_u64[0] = v14;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    if ((*a6)(a3, a2))
    {
      v14 = a2[1].n128_u64[0];
      v15 = *a2;
      v26 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v17 = a2[1].n128_u64[0];
    v18 = *a2;
    v19 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v19;
    *a3 = v18;
    a3[1].n128_u64[0] = v17;
    if ((*a6)(a2, a1))
    {
      v20 = a1[1].n128_u64[0];
      v21 = *a1;
      v22 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v22;
      *a2 = v21;
      a2[1].n128_u64[0] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v27 = a3[1].n128_u64[0];
    v28 = *a3;
    v29 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v29;
    *a4 = v28;
    a4[1].n128_u64[0] = v27;
    if ((*a6)(a3, a2))
    {
      v30 = a2[1].n128_u64[0];
      v31 = *a2;
      v32 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v32;
      *a3 = v31;
      a3[1].n128_u64[0] = v30;
      if ((*a6)(a2, a1))
      {
        v33 = a1[1].n128_u64[0];
        v34 = *a1;
        v35 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v35;
        *a2 = v34;
        a2[1].n128_u64[0] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v37 = a4[1].n128_u64[0];
    v38 = *a4;
    v39 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v39;
    *a5 = v38;
    a5[1].n128_u64[0] = v37;
    if ((*a6)(a4, a3))
    {
      v40 = a3[1].n128_u64[0];
      v41 = *a3;
      v42 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v42;
      *a4 = v41;
      a4[1].n128_u64[0] = v40;
      if ((*a6)(a3, a2))
      {
        v43 = a2[1].n128_u64[0];
        v44 = *a2;
        v45 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v45;
        *a3 = v44;
        a3[1].n128_u64[0] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = a1[1].n128_u64[0];
          result = *a1;
          v47 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v47;
          *a2 = result;
          a2[1].n128_u64[0] = v46;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 24) = *(v6 + v12);
            *(v13 + 40) = *(v6 + v12 + 16);
            if (!v12)
            {
              break;
            }

            v12 -= 24;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 24;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 16) = v16;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v14 = v3;
    v15 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = result - 24;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v13 = *(v6 + 16);
          v11 = v9;
          do
          {
            *(v11 + 48) = *(v11 + 24);
            *(v11 + 64) = *(v11 + 40);
            result = (*a3)(&v12, v11);
            v11 -= 24;
          }

          while ((result & 1) != 0);
          *(v11 + 48) = v12;
          *(v11 + 64) = v13;
        }

        v7 = v6 + 24;
        v9 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v20 = *MEMORY[0x277D85DE8];
  v16 = *a1;
  v17 = *(a1 + 2);
  if ((*a3)(&v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 24);
    }

    while (((*a3)(&v16, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 24);
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v16, v7);
      v7 = (v6 + 24);
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = *(v6 + 2);
    v18 = v9;
    v10 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v10;
    v11 = v18;
    *(v4 + 2) = v19;
    *v4 = v11;
    do
    {
      v6 = (v6 + 24);
    }

    while (!(*a3)(&v16, v6));
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  v12 = (v6 - 24);
  if ((v6 - 24) != a1)
  {
    v13 = *v12;
    *(a1 + 2) = *(v6 - 1);
    *a1 = v13;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

char *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,geo::math::Matrix<double,3,1> *,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&)>(char *a1, char *a2, uint64_t (**a3)(char *, __int128 *))
{
  v6 = 0;
  v21 = *MEMORY[0x277D85DE8];
  v17 = *a1;
  v18 = *(a1 + 2);
  do
  {
    v6 += 24;
  }

  while (((*a3)(&a1[v6], &v17) & 1) != 0);
  v7 = &a1[v6];
  v8 = &a1[v6 - 24];
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (((*a3)(a2, &v17) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!(*a3)(a2, &v17));
  }

  if (v7 < a2)
  {
    v9 = &a1[v6];
    v10 = a2;
    do
    {
      v19 = *v9;
      v11 = v19;
      v20 = *(v9 + 2);
      v12 = v20;
      v13 = *(v10 + 2);
      *v9 = *v10;
      *(v9 + 2) = v13;
      *(v10 + 2) = v12;
      *v10 = v11;
      do
      {
        v9 += 24;
      }

      while (((*a3)(v9, &v17) & 1) != 0);
      do
      {
        v10 -= 24;
      }

      while (!(*a3)(v10, &v17));
    }

    while (v9 < v10);
    v8 = v9 - 24;
  }

  if (v8 != a1)
  {
    v14 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v14;
  }

  v15 = v17;
  *(v8 + 2) = v18;
  *v8 = v15;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*>(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (a2 - 24);
      v12 = (*a3)((a1 + 24), a1);
      v13 = (*a3)(v11, (a1 + 24));
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 16);
          v15 = *a1;
          v16 = v11[1].n128_u64[0];
          *a1 = *v11;
          *(a1 + 16) = v16;
        }

        else
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (!(*a3)(v11, (a1 + 24)))
          {
            return 1;
          }

          v14 = *(a1 + 40);
          v15 = *(a1 + 24);
          v40 = v11[1].n128_u64[0];
          *(a1 + 24) = *v11;
          *(a1 + 40) = v40;
        }

        *v11 = v15;
        v11[1].n128_u64[0] = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      v29 = v11[1].n128_u64[0];
      *(a1 + 24) = *v11;
      *(a1 + 40) = v29;
      *v11 = v28;
      v11[1].n128_u64[0] = v27;
LABEL_50:
      if ((*a3)((a1 + 24), a1))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(geo::math::Matrix<double,3,1> const&,geo::math::Matrix<double,3,1> const&),geo::math::Matrix<double,3,1>*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v22 = (a2 - 24);
    v23 = (*a3)((a1 + 24), a1);
    v24 = (*a3)((a1 + 48), (a1 + 24));
    if ((v23 & 1) == 0)
    {
      if (v24)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v35;
        *(a1 + 64) = v34;
        if ((*a3)((a1 + 24), a1))
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_47;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    *(a1 + 48) = v26;
    *(a1 + 64) = v25;
LABEL_47:
    if (!(*a3)(v22, (a1 + 48)))
    {
      return 1;
    }

    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = v22[1].n128_u64[0];
    *(a1 + 48) = *v22;
    *(a1 + 64) = v53;
    *v22 = v52;
    v22[1].n128_u64[0] = v51;
    if (!(*a3)((a1 + 48), (a1 + 24)))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    if ((*a3)((a2 - 24), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = a2[-1].n128_u64[1];
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      a2[-1].n128_u64[1] = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = (a1 + 48);
  v18 = (*a3)((a1 + 24), a1);
  v19 = (*a3)((a1 + 48), (a1 + 24));
  if (v18)
  {
    if (v19)
    {
      v20 = *(a1 + 16);
      v21 = *a1;
      *a1 = *v17;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      *(a1 + 24) = *v17;
      *(a1 + 40) = *(a1 + 64);
    }

    *v17 = v21;
    *(a1 + 64) = v20;
  }

  else if (v19)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 40) = *(a1 + 64);
    *v17 = v31;
    *(a1 + 64) = v30;
    if ((*a3)((a1 + 24), a1))
    {
      v32 = *(a1 + 16);
      v33 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v33;
      *(a1 + 40) = v32;
    }
  }

LABEL_33:
  v43 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    if ((*a3)(v43, v17))
    {
      v59 = *v43;
      v60 = v43[1].n128_u64[0];
      v46 = v44;
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
        if (((*a3)(&v59, (v47 + 24)) & 1) == 0)
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v59;
      *(v48 + 16) = v60;
      if (++v45 == 8)
      {
        return &v43[1].n128_i8[8] == a2;
      }
    }

    v17 = v43;
    v44 += 24;
    v43 = (v43 + 24);
    if (v43 == a2)
    {
      return 1;
    }
  }
}