void geom_dop20_polyhedron_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t a5)
{
  v11 = a5;
  v8 = geom::collection_to_vector<float>(a2);
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  geom::dop<(unsigned char)20,float>::compute_polyhedron(a1, &v11, v8, v9, v10);
}

void geom::dop<(unsigned char)20,float>::compute_polyhedron(uint64_t a1, float32x4_t *a2, float32x4_t **a3, std::vector<int> *a4, uint64_t a5)
{
  v8 = 0;
  v104 = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  *(a5 + 8) = *a5;
  v9 = *a2;
  v87 = a1 + 48;
  do
  {
    v10 = vmulq_f32(geom::kdop_axes<(unsigned char)20,float>[v8], v9);
    v10.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
    v11 = (a1 + 4 * v8);
    *&v103[v8 + 10] = *v11 - v10.f32[0];
    *&v103[v8++] = v11[12] - v10.f32[0];
  }

  while (v8 != 10);
  __p = 0;
  v101 = 0;
  v102 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, 0x14uLL);
  v14 = 0;
  v15 = -1;
  v16 = -1;
  do
  {
    v13.i32[0] = v103[v14 + 10];
    v12.i32[0] = v103[v14];
    if (*v13.i32 == *v12.i32)
    {
      v15 = v14;
    }

    else
    {
      v17 = v15;
      v18 = fabsf(*v13.i32);
      v19 = fabsf(*v12.i32);
      v20 = v18 == INFINITY || v19 == INFINITY;
      if (v20 || (v15 = v14, vabds_f32(*v13.i32, *v12.i32) >= (((v18 + v19) + 1.0) * 0.00001)))
      {
        v89 = v13;
        v91 = geom::kdop_axes<(unsigned char)20,float>[v14];
        *__x = vdivq_f32(v91, vdupq_lane_s32(v12, 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&__p, __x);
        *__x = vdivq_f32(v91, vdupq_lane_s32(v89, 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&__p, __x);
        v16 = v14;
        v15 = v17;
      }
    }

    ++v14;
  }

  while (v14 != 10);
  v21 = __p;
  v22 = (v101 - __p) >> 4;
  if (!v22)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, a2);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    goto LABEL_20;
  }

  if (v22 == 2)
  {
    v92 = geom::kdop_axes<(unsigned char)20,float>[v16];
    *__x = vmulq_n_f32(v92, *(a1 + 4 * v16));
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    *__x = vmulq_n_f32(v92, *(v87 + 4 * v16));
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    begin = a4->__begin_;
    begin[10] = 1;
    begin[7] = 1;
    begin[4] = 1;
LABEL_20:
    __x[0] = 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 6;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 9;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 12;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    goto LABEL_21;
  }

  if (v22 > 0x13)
  {
    geom::half_plane_intersection_3<float>(0x14uLL, __p, a3, &a4->__begin_, a5);
  }

  else
  {
    memset(__x, 0, sizeof(__x));
    v99 = 0;
    v24 = geom::kdop_axes<(unsigned char)20,float>[v15];
    v25 = COERCE_FLOAT(geom::kdop_axes<(unsigned char)20,float>[v15].i64[1]);
    v26 = fabsf(v25);
    LODWORD(v27) = HIDWORD(geom::kdop_axes<(unsigned char)20,float>[v15].i64[0]);
    v28 = -v25;
    if (v26 <= 0.00000011921)
    {
      v29 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v27), v24);
    }

    else
    {
      v29.i32[0] = 0;
      v29.f32[1] = v28;
      v29.i64[1] = v24.u32[1];
    }

    v30 = vmulq_f32(v29, v29);
    *&v31 = v30.f32[2] + vaddv_f32(*v30.f32);
    *v30.f32 = vrsqrte_f32(v31);
    *v30.f32 = vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32)));
    LODWORD(v32) = vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32))).u32[0];
    if (v26 <= 0.00000011921)
    {
      v33 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v27), v24);
    }

    else
    {
      v33.i32[0] = 0;
      v33.f32[1] = v28;
      v33.i64[1] = v24.u32[1];
    }

    v93 = vmulq_n_f32(v29, v32);
    v34 = vmulq_f32(v33, v33);
    *&v35 = v34.f32[2] + vaddv_f32(*v34.f32);
    *v34.f32 = vrsqrte_f32(v35);
    *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32)));
    v36 = vmulq_n_f32(v33, vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
    v37 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
    v38 = vnegq_f32(v24);
    v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), v38), v36, v37);
    v40 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
    v41 = vmulq_f32(v39, v39);
    *&v42 = v41.f32[1] + (v41.f32[2] + v41.f32[0]);
    *v41.f32 = vrsqrte_f32(v42);
    *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32)));
    v90 = vmulq_n_f32(v40, vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
    if (v101 == __p)
    {
      v62 = 0;
      v63 = 0;
    }

    else
    {
      v43 = 0;
      v44 = vdup_lane_s32(*v24.i8, 1);
      v45 = vdup_laneq_s32(v24, 2);
      v88 = geom::kdop_axes<(unsigned char)20,float>[v15];
      v82 = vextq_s8(v24, v24, 8uLL).u64[0];
      v83 = v38;
      v84 = v37;
      do
      {
        v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21[v43], v21[v43]), v21[v43], 0xCuLL), v38), v21[v43], v37);
        v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
        v48 = vmulq_f32(v46, v46);
        *&v49 = v48.columns[0].f32[1] + (v48.columns[1].f32[0] + v48.columns[0].f32[0]);
        v48.columns[0] = vrsqrte_f32(v49);
        v48.columns[0] = vmul_f32(v48.columns[0], vrsqrts_f32(v49, vmul_f32(v48.columns[0], v48.columns[0])));
        v85 = vmulq_n_f32(v47, vmul_f32(v48.columns[0], vrsqrts_f32(v49, vmul_f32(v48.columns[0], v48.columns[0]))).f32[0]);
        v86 = v21[v43];
        v50 = vzip1q_s32(v88, v86);
        v51 = vextq_s8(v50, v50, 8uLL).u64[0];
        v52 = vzip1_s32(v82, *&vextq_s8(v86, v86, 8uLL));
        v48.columns[0] = vmla_f32(vmla_f32(vmul_n_f32(*v50.i8, v88.f32[0]), v44, v51), v45, v52);
        *v50.i8 = vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(*v50.i8, *v86.i32), v51, *v86.i8, 1), v52, v86, 2);
        v53 = __invert_f2(v48);
        v54 = vmulq_f32(v93, v85);
        v55 = vmulq_f32(v90, v85);
        *v54.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v54, v54, 8uLL), *&vextq_s8(v55, v55, 8uLL)), vadd_f32(vzip1_s32(*v54.i8, *v55.i8), vzip2_s32(*v54.i8, *v55.i8)));
        *v55.i8 = vmul_f32(*v54.i8, *v54.i8);
        v55.i32[0] = vadd_f32(*v55.i8, vdup_lane_s32(*v55.i8, 1)).u32[0];
        v56 = vmlaq_lane_f32(vmulq_n_f32(v88, v53.columns[1].f32[0]), v86, v53.columns[1], 1);
        v57 = vrsqrte_f32(v55.u32[0]);
        v58 = vmul_f32(v57, vrsqrts_f32(v55.u32[0], vmul_f32(v57, v57)));
        v59 = vmul_f32(v58, vrsqrts_f32(v55.u32[0], vmul_f32(v58, v58)));
        *v54.i8 = vmul_n_f32(*v54.i8, *v59.i32);
        *v59.i32 = -*&v54.i32[1];
        *v54.i8 = vzip1_s32(v59, *v54.i8);
        v60 = vmulq_f32(v93, v56);
        v61 = vmulq_f32(v90, v56);
        *v60.i8 = vmul_f32(vadd_f32(vzip1_s32(*&vextq_s8(v60, v60, 8uLL), *&vextq_s8(v61, v61, 8uLL)), vadd_f32(vzip1_s32(*v60.i8, *v61.i8), vzip2_s32(*v60.i8, *v61.i8))), *v54.i8);
        v95 = vdiv_f32(*v54.i8, vdup_lane_s32(vadd_f32(*v60.i8, vdup_lane_s32(*v60.i8, 1)), 0));
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(__x, &v95);
        v38 = v83;
        v37 = v84;
        ++v43;
        v21 = __p;
      }

      while (v43 < (v101 - __p) >> 4);
      v62 = *__x;
      v63 = *&__x[2];
    }

    v95 = 0;
    v96 = 0;
    v97 = 0;
    geom::half_plane_intersection_2<float>((v63 - v62) >> 3, v62, &v95);
    v64 = v95;
    v65 = v96;
    v66 = v93;
    if (v95 != v96)
    {
      do
      {
        v67 = *v64++;
        v94 = vmlaq_n_f32(vmulq_lane_f32(v90, v67, 1), v66, v67.f32[0]);
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, &v94);
        v66 = v93;
      }

      while (v64 != v65);
    }

    std::vector<float>::resize(a4, (a3[1] - *a3) >> 3);
    v68 = a3[1] - *a3;
    if (v68)
    {
      v69 = 0;
      v70 = a4->__begin_;
      v71 = a4->__begin_ + (v68 >> 2);
      v72 = vdupq_n_s64(((v68 >> 2) - 4) >> 2);
      v73 = a4->__begin_ + 2;
      do
      {
        v74 = vdupq_n_s64(v69);
        v75 = vmovn_s64(vcgeq_u64(v72, vorrq_s8(v74, xmmword_2500C1680)));
        if (vuzp1_s16(v75, *v72.i8).u8[0])
        {
          *(v73 - 2) = v69;
        }

        if (vuzp1_s16(v75, *&v72).i8[2])
        {
          *(v73 - 1) = v69 + 1;
        }

        if (vuzp1_s16(*&v72, vmovn_s64(vcgeq_u64(v72, vorrq_s8(v74, xmmword_2500C1670)))).i32[1])
        {
          *v73 = v69 + 2;
          v73[1] = v69 + 3;
        }

        v69 += 4;
        v73 += 4;
      }

      while ((((((v68 >> 2) - 4) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL) != v69);
      v76 = a4->__end_ - 1;
      do
      {
        v77 = *v70++;
        *v76-- = v77;
      }

      while (v70 != v71);
    }

    v94.i32[0] = v68 >> 4;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, &v94);
    v94.i32[0] = ((a3[1] - *a3) >> 3) & 0xFFFFFFFE;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, &v94);
    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }

    if (*__x)
    {
      *&__x[2] = *__x;
      operator delete(*__x);
    }
  }

  v78 = *a3;
  v79 = a3[1];
  while (v78 != v79)
  {
    *v78 = vaddq_f32(*a2, *v78);
    ++v78;
  }

LABEL_21:
  if (__p)
  {
    v101 = __p;
    operator delete(__p);
  }
}

void geom_dop26_polyhedron_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t a5)
{
  v11 = a5;
  v8 = geom::collection_to_vector<float>(a2);
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  geom::dop<(unsigned char)26,float>::compute_polyhedron(a1, &v11, v8, v9, v10);
}

void geom::dop<(unsigned char)26,float>::compute_polyhedron(uint64_t a1, float32x4_t *a2, float32x4_t **a3, std::vector<int> *a4, uint64_t a5)
{
  v8 = 0;
  v104 = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  *(a5 + 8) = *a5;
  v9 = *a2;
  v87 = a1 + 64;
  do
  {
    v10 = vmulq_f32(geom::kdop_axes<(unsigned char)26,float>[v8], v9);
    v10.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
    v11 = (a1 + 4 * v8);
    *&v103[v8 + 13] = *v11 - v10.f32[0];
    *&v103[v8++] = v11[16] - v10.f32[0];
  }

  while (v8 != 13);
  __p = 0;
  v101 = 0;
  v102 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&__p, 0x1AuLL);
  v14 = 0;
  v15 = -1;
  v16 = -1;
  do
  {
    v13.i32[0] = v103[v14 + 13];
    v12.i32[0] = v103[v14];
    if (*v13.i32 == *v12.i32)
    {
      v15 = v14;
    }

    else
    {
      v17 = v15;
      v18 = fabsf(*v13.i32);
      v19 = fabsf(*v12.i32);
      v20 = v18 == INFINITY || v19 == INFINITY;
      if (v20 || (v15 = v14, vabds_f32(*v13.i32, *v12.i32) >= (((v18 + v19) + 1.0) * 0.00001)))
      {
        v89 = v13;
        v91 = geom::kdop_axes<(unsigned char)26,float>[v14];
        *__x = vdivq_f32(v91, vdupq_lane_s32(v12, 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&__p, __x);
        *__x = vdivq_f32(v91, vdupq_lane_s32(v89, 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&__p, __x);
        v16 = v14;
        v15 = v17;
      }
    }

    ++v14;
  }

  while (v14 != 13);
  v21 = __p;
  v22 = (v101 - __p) >> 4;
  if (!v22)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, a2);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    goto LABEL_20;
  }

  if (v22 == 2)
  {
    v92 = geom::kdop_axes<(unsigned char)26,float>[v16];
    *__x = vmulq_n_f32(v92, *(a1 + 4 * v16));
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    *__x = vmulq_n_f32(v92, *(v87 + 4 * v16));
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    begin = a4->__begin_;
    begin[10] = 1;
    begin[7] = 1;
    begin[4] = 1;
LABEL_20:
    __x[0] = 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 6;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 9;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 12;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    goto LABEL_21;
  }

  if (v22 > 0x19)
  {
    geom::half_plane_intersection_3<float>(0x1AuLL, __p, a3, &a4->__begin_, a5);
  }

  else
  {
    memset(__x, 0, sizeof(__x));
    v99 = 0;
    v24 = geom::kdop_axes<(unsigned char)26,float>[v15];
    v25 = COERCE_FLOAT(geom::kdop_axes<(unsigned char)26,float>[v15].i64[1]);
    v26 = fabsf(v25);
    LODWORD(v27) = HIDWORD(geom::kdop_axes<(unsigned char)26,float>[v15].i64[0]);
    v28 = -v25;
    if (v26 <= 0.00000011921)
    {
      v29 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v27), v24);
    }

    else
    {
      v29.i32[0] = 0;
      v29.f32[1] = v28;
      v29.i64[1] = v24.u32[1];
    }

    v30 = vmulq_f32(v29, v29);
    *&v31 = v30.f32[2] + vaddv_f32(*v30.f32);
    *v30.f32 = vrsqrte_f32(v31);
    *v30.f32 = vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32)));
    LODWORD(v32) = vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32))).u32[0];
    if (v26 <= 0.00000011921)
    {
      v33 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v27), v24);
    }

    else
    {
      v33.i32[0] = 0;
      v33.f32[1] = v28;
      v33.i64[1] = v24.u32[1];
    }

    v93 = vmulq_n_f32(v29, v32);
    v34 = vmulq_f32(v33, v33);
    *&v35 = v34.f32[2] + vaddv_f32(*v34.f32);
    *v34.f32 = vrsqrte_f32(v35);
    *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32)));
    v36 = vmulq_n_f32(v33, vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
    v37 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
    v38 = vnegq_f32(v24);
    v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), v38), v36, v37);
    v40 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
    v41 = vmulq_f32(v39, v39);
    *&v42 = v41.f32[1] + (v41.f32[2] + v41.f32[0]);
    *v41.f32 = vrsqrte_f32(v42);
    *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32)));
    v90 = vmulq_n_f32(v40, vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
    if (v101 == __p)
    {
      v62 = 0;
      v63 = 0;
    }

    else
    {
      v43 = 0;
      v44 = vdup_lane_s32(*v24.i8, 1);
      v45 = vdup_laneq_s32(v24, 2);
      v88 = geom::kdop_axes<(unsigned char)26,float>[v15];
      v82 = vextq_s8(v24, v24, 8uLL).u64[0];
      v83 = v38;
      v84 = v37;
      do
      {
        v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21[v43], v21[v43]), v21[v43], 0xCuLL), v38), v21[v43], v37);
        v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
        v48 = vmulq_f32(v46, v46);
        *&v49 = v48.columns[0].f32[1] + (v48.columns[1].f32[0] + v48.columns[0].f32[0]);
        v48.columns[0] = vrsqrte_f32(v49);
        v48.columns[0] = vmul_f32(v48.columns[0], vrsqrts_f32(v49, vmul_f32(v48.columns[0], v48.columns[0])));
        v85 = vmulq_n_f32(v47, vmul_f32(v48.columns[0], vrsqrts_f32(v49, vmul_f32(v48.columns[0], v48.columns[0]))).f32[0]);
        v86 = v21[v43];
        v50 = vzip1q_s32(v88, v86);
        v51 = vextq_s8(v50, v50, 8uLL).u64[0];
        v52 = vzip1_s32(v82, *&vextq_s8(v86, v86, 8uLL));
        v48.columns[0] = vmla_f32(vmla_f32(vmul_n_f32(*v50.i8, v88.f32[0]), v44, v51), v45, v52);
        *v50.i8 = vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(*v50.i8, *v86.i32), v51, *v86.i8, 1), v52, v86, 2);
        v53 = __invert_f2(v48);
        v54 = vmulq_f32(v93, v85);
        v55 = vmulq_f32(v90, v85);
        *v54.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v54, v54, 8uLL), *&vextq_s8(v55, v55, 8uLL)), vadd_f32(vzip1_s32(*v54.i8, *v55.i8), vzip2_s32(*v54.i8, *v55.i8)));
        *v55.i8 = vmul_f32(*v54.i8, *v54.i8);
        v55.i32[0] = vadd_f32(*v55.i8, vdup_lane_s32(*v55.i8, 1)).u32[0];
        v56 = vmlaq_lane_f32(vmulq_n_f32(v88, v53.columns[1].f32[0]), v86, v53.columns[1], 1);
        v57 = vrsqrte_f32(v55.u32[0]);
        v58 = vmul_f32(v57, vrsqrts_f32(v55.u32[0], vmul_f32(v57, v57)));
        v59 = vmul_f32(v58, vrsqrts_f32(v55.u32[0], vmul_f32(v58, v58)));
        *v54.i8 = vmul_n_f32(*v54.i8, *v59.i32);
        *v59.i32 = -*&v54.i32[1];
        *v54.i8 = vzip1_s32(v59, *v54.i8);
        v60 = vmulq_f32(v93, v56);
        v61 = vmulq_f32(v90, v56);
        *v60.i8 = vmul_f32(vadd_f32(vzip1_s32(*&vextq_s8(v60, v60, 8uLL), *&vextq_s8(v61, v61, 8uLL)), vadd_f32(vzip1_s32(*v60.i8, *v61.i8), vzip2_s32(*v60.i8, *v61.i8))), *v54.i8);
        v95 = vdiv_f32(*v54.i8, vdup_lane_s32(vadd_f32(*v60.i8, vdup_lane_s32(*v60.i8, 1)), 0));
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(__x, &v95);
        v38 = v83;
        v37 = v84;
        ++v43;
        v21 = __p;
      }

      while (v43 < (v101 - __p) >> 4);
      v62 = *__x;
      v63 = *&__x[2];
    }

    v95 = 0;
    v96 = 0;
    v97 = 0;
    geom::half_plane_intersection_2<float>((v63 - v62) >> 3, v62, &v95);
    v64 = v95;
    v65 = v96;
    v66 = v93;
    if (v95 != v96)
    {
      do
      {
        v67 = *v64++;
        v94 = vmlaq_n_f32(vmulq_lane_f32(v90, v67, 1), v66, v67.f32[0]);
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, &v94);
        v66 = v93;
      }

      while (v64 != v65);
    }

    std::vector<float>::resize(a4, (a3[1] - *a3) >> 3);
    v68 = a3[1] - *a3;
    if (v68)
    {
      v69 = 0;
      v70 = a4->__begin_;
      v71 = a4->__begin_ + (v68 >> 2);
      v72 = vdupq_n_s64(((v68 >> 2) - 4) >> 2);
      v73 = a4->__begin_ + 2;
      do
      {
        v74 = vdupq_n_s64(v69);
        v75 = vmovn_s64(vcgeq_u64(v72, vorrq_s8(v74, xmmword_2500C1680)));
        if (vuzp1_s16(v75, *v72.i8).u8[0])
        {
          *(v73 - 2) = v69;
        }

        if (vuzp1_s16(v75, *&v72).i8[2])
        {
          *(v73 - 1) = v69 + 1;
        }

        if (vuzp1_s16(*&v72, vmovn_s64(vcgeq_u64(v72, vorrq_s8(v74, xmmword_2500C1670)))).i32[1])
        {
          *v73 = v69 + 2;
          v73[1] = v69 + 3;
        }

        v69 += 4;
        v73 += 4;
      }

      while ((((((v68 >> 2) - 4) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL) != v69);
      v76 = a4->__end_ - 1;
      do
      {
        v77 = *v70++;
        *v76-- = v77;
      }

      while (v70 != v71);
    }

    v94.i32[0] = v68 >> 4;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, &v94);
    v94.i32[0] = ((a3[1] - *a3) >> 3) & 0xFFFFFFFE;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, &v94);
    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }

    if (*__x)
    {
      *&__x[2] = *__x;
      operator delete(*__x);
    }
  }

  v78 = *a3;
  v79 = a3[1];
  while (v78 != v79)
  {
    *v78 = vaddq_f32(*a2, *v78);
    ++v78;
  }

LABEL_21:
  if (__p)
  {
    v101 = __p;
    operator delete(__p);
  }
}

void geom_dop6_polyhedron_3d(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  v11 = geom::collection_to_vector<float>(a5);
  geom::dop<(unsigned char)6,double>::compute_polyhedron(a1, v12, v9, v10, v11);
}

void geom::dop<(unsigned char)6,double>::compute_polyhedron(uint64_t a1, float64x2_t *a2, float64x2_t **a3, std::vector<int> *a4, uint64_t a5)
{
  v8 = 0;
  v138[6] = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  *(a5 + 8) = *a5;
  v11 = *a2;
  v10 = a2[1];
  v117 = a1 + 32;
  do
  {
    v12 = vmulq_f64(geom::kdop_axes<(unsigned char)6,double>[2 * v8 + 1], v10).f64[0] + vaddvq_f64(vmulq_f64(geom::kdop_axes<(unsigned char)6,double>[2 * v8], v11));
    v13 = (a1 + 8 * v8);
    *&v138[v8 + 3] = *v13 - v12;
    *&v138[v8++] = v13[4] - v12;
  }

  while (v8 != 3);
  v135 = 0;
  v136 = 0;
  v137 = 0;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(&v135, 6uLL);
  v16 = 0;
  v17 = -1;
  v18 = -1;
  do
  {
    v19 = *&v138[v16 + 3];
    v20 = v138[v16];
    if (v19 == *&v20)
    {
      v17 = v16;
    }

    else
    {
      v21 = v17;
      v17 = v16;
      if (vabdd_f64(v19, *&v20) > 0.000001)
      {
        v22 = &geom::kdop_axes<(unsigned char)6,double>[2 * v16];
        v121 = *v22;
        v124 = v22[1];
        v23 = vdupq_lane_s64(v20, 0);
        *__x = vdivq_f64(*v22, v23);
        v134 = vdivq_f64(v124, v23);
        v119 = *&v19;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v135, __x);
        v24 = vdupq_lane_s64(v119, 0);
        *__x = vdivq_f64(v121, v24);
        v134 = vdivq_f64(v124, v24);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v135, __x);
        v18 = v16;
        v17 = v21;
      }
    }

    ++v16;
  }

  while (v16 != 3);
  v25 = v135;
  v26 = (v136 - v135) >> 5;
  if (!v26)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, a2);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    goto LABEL_13;
  }

  if (v26 == 2)
  {
    v27 = &geom::kdop_axes<(unsigned char)6,double>[2 * v18];
    v122 = *v27;
    v125 = v27[1];
    v28 = *(a1 + 8 * v18);
    *__x = vmulq_n_f64(*v27, v28);
    v134 = vmulq_n_f64(v125, v28);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    v29 = *(v117 + 8 * v18);
    *__x = vmulq_n_f64(v122, v29);
    v134 = vmulq_n_f64(v125, v29);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    begin = a4->__begin_;
    begin[10] = 1;
    begin[7] = 1;
    begin[4] = 1;
LABEL_13:
    __x[0] = 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 6;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 9;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 12;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    goto LABEL_14;
  }

  if (v26 > 5)
  {
    geom::half_plane_intersection_3<double>(6uLL, v135, a3, &a4->__begin_, a5);
  }

  else
  {
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v31 = &geom::kdop_axes<(unsigned char)6,double>[2 * v17];
    v32 = *v31;
    v33 = v31[1];
    v34 = fabs(v33.f64[0]);
    if (v34 <= 2.22044605e-16)
    {
      *v15.i64 = -v32.f64[1];
      v36 = 0uLL;
      v35 = vzip1q_s64(v15, v32);
    }

    else
    {
      v35.f64[0] = 0.0;
      v35.f64[1] = -v33.f64[0];
      v36 = vdupq_laneq_s64(v32, 1);
    }

    v37 = vdupq_laneq_s64(v32, 1);
    v38 = vmulq_f64(v36, v36);
    v38.f64[0] = 1.0 / sqrt(v38.f64[0] + vaddvq_f64(vmulq_f64(v35, v35)));
    v39 = vmulq_f64(v36, v38);
    v40 = vmulq_n_f64(v35, v38.f64[0]);
    v41 = vextq_s8(v40, v40, 8uLL).u64[0];
    if (v34 <= 2.22044605e-16)
    {
      *v14.i64 = -v32.f64[1];
      v43 = 0uLL;
      v42 = vzip1q_s64(v14, v32);
    }

    else
    {
      v42.f64[0] = 0.0;
      v42.f64[1] = -v33.f64[0];
      v43 = v37;
    }

    v123 = v31[1];
    v126 = v39;
    v44 = vmulq_f64(v43, v43);
    v44.f64[0] = 1.0 / sqrt(v44.f64[0] + vaddvq_f64(vmulq_f64(v42, v42)));
    v45 = vmulq_n_f64(v42, v44.f64[0]);
    v46 = vmulq_f64(v43, v44);
    v47.f64[0] = v31[1].f64[0];
    v47.f64[1] = v31->f64[0];
    v48 = vnegq_f64(v33);
    v49 = vmlaq_laneq_f64(vmulq_laneq_f64(v48, v45, 1), v46, v32, 1);
    v46.f64[1] = v45.f64[0];
    v50 = vnegq_f64(v32);
    v51 = v47;
    v52 = vmlaq_f64(vmulq_f64(v46, v50), v45, v47);
    v53 = vmulq_f64(v52, v52);
    v47.f64[0] = vmulq_f64(v49, v49).f64[0];
    v49.f64[1] = v52.f64[0];
    v53.f64[0] = 1.0 / sqrt(v53.f64[1] + v47.f64[0] + v53.f64[0]);
    v54 = vmulq_n_f64(v49, v53.f64[0]);
    v55 = vextq_s8(v54, v54, 8uLL).u64[0];
    v120 = vmulq_laneq_f64(v53, v52, 1);
    v108 = v54.i64[0];
    v110 = v40.i64[0];
    v98 = v55;
    v99 = v41;
    if (v136 == v135)
    {
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v56 = 0;
      v40.i64[1] = v41;
      v54.i64[1] = v55;
      v102 = v54;
      v103 = v40;
      v101 = vdupq_lane_s64(*&v123.f64[0], 0);
      v50.i64[1] = vextq_s8(v50, v50, 8uLL).u64[0];
      v104 = v50;
      v105 = v48;
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u64[0];
      v106 = v51;
      v107 = v37;
      v118 = *v31;
      do
      {
        v57 = &v25[2 * v56];
        v112 = v57[1];
        v113 = *v57;
        v58.f64[0] = v57[1].f64[0];
        v58.f64[1] = v57->f64[0];
        v59 = vmlaq_f64(vmulq_f64(v58, v104), *v57, v106);
        v60 = vmlaq_f64(vmulq_laneq_f64(v48, *v57, 1), v112, v37);
        v61 = vmulq_f64(v59, v59);
        v62 = v59.f64[0];
        v115 = v59;
        v63.f64[0] = v60.f64[0];
        v61.f64[0] = 1.0 / sqrt(v61.f64[1] + vmulq_f64(v60, v60).f64[0] + v61.f64[0]);
        v116 = v61;
        v64 = vzip1q_s64(v118, *v57);
        v65 = vzip2q_s64(v118, *v57);
        v66 = vzip1q_s64(v123, v112);
        v139.columns[0] = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v64, v118.f64[0]), v37, v65), v101, v66);
        v139.columns[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v64, v57->f64[0]), v65, *v57, 1), v66, v112.f64[0]);
        v63.f64[1] = v62;
        v114 = v63;
        v67 = __invert_d2(v139);
        v68 = vmlaq_laneq_f64(vmulq_n_f64(v118, v67.columns[1].f64[0]), v113, v67.columns[1], 1);
        v69 = vmlaq_laneq_f64(vmulq_n_f64(v123, v67.columns[1].f64[0]), v112, v67.columns[1], 1);
        v70 = vmulq_n_f64(v114, v116.f64[0]);
        v71 = vmulq_laneq_f64(v116, v115, 1);
        v72 = vaddq_f64(vzip1q_s64(vmulq_f64(v126, v71), vmulq_f64(v120, v71)), vpaddq_f64(vmulq_f64(v103, v70), vmulq_f64(v102, v70)));
        v73 = vmulq_f64(v72, v72);
        v74 = vmulq_n_f64(v72, 1.0 / sqrt(vaddvq_f64(v73)));
        v73.f64[0] = -*&v74.i64[1];
        v75 = vzip1q_s64(v73, v74);
        v76 = vmulq_f64(v75, vaddq_f64(vzip1q_s64(vmulq_f64(v126, v69), vmulq_f64(v120, v69)), vpaddq_f64(vmulq_f64(v103, v68), vmulq_f64(v102, v68))));
        *__x = vdivq_f64(v75, vdupq_lane_s64(*&vaddq_f64(v76, vdupq_laneq_s64(v76, 1)), 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v130, __x);
        v48 = v105;
        v37 = v107;
        ++v56;
        v25 = v135;
      }

      while (v56 < (v136 - v135) >> 5);
      v77 = v130;
      v78 = v131;
    }

    __p = 0;
    v128 = 0;
    v129 = 0;
    geom::half_plane_intersection_2<double>((v78 - v77) >> 4, v77, &__p);
    v79 = __p;
    v80 = v128;
    v81 = v126;
    *&v82.f64[0] = v108;
    *&v83.f64[0] = v110;
    if (__p != v128)
    {
      *&v82.f64[1] = v98;
      *&v83.f64[1] = v99;
      v109 = v82;
      v111 = v83;
      do
      {
        v84 = *v79++;
        *__x = vmlaq_n_f64(vmulq_laneq_f64(v82, v84, 1), v83, v84.f64[0]);
        v134 = vmlaq_f64(vmulq_laneq_f64(v120, v84, 1), v84, v81);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
        v81 = v126;
        v82 = v109;
        v83 = v111;
      }

      while (v79 != v80);
    }

    std::vector<float>::resize(a4, a3[1] - *a3);
    v85 = a3[1] - *a3;
    if (v85)
    {
      v86 = 0;
      v87 = a4->__begin_;
      v88 = a4->__begin_ + (v85 >> 3);
      v89 = vdupq_n_s64(((v85 >> 3) - 4) >> 2);
      v90 = a4->__begin_ + 2;
      do
      {
        v91 = vdupq_n_s64(v86);
        v92 = vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1680)));
        if (vuzp1_s16(v92, *v89.i8).u8[0])
        {
          *(v90 - 2) = v86;
        }

        if (vuzp1_s16(v92, *&v89).i8[2])
        {
          *(v90 - 1) = v86 + 1;
        }

        if (vuzp1_s16(*&v89, vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1670)))).i32[1])
        {
          *v90 = v86 + 2;
          v90[1] = v86 + 3;
        }

        v86 += 4;
        v90 += 4;
      }

      while ((((((v85 >> 3) - 4) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL) != v86);
      v93 = a4->__end_ - 1;
      do
      {
        v94 = *v87++;
        *v93-- = v94;
      }

      while (v87 != v88);
    }

    __x[0] = v85 >> 5;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = ((a3[1] - *a3) >> 4) & 0xFFFFFFFE;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    if (__p)
    {
      v128 = __p;
      operator delete(__p);
    }

    if (v130)
    {
      v131 = v130;
      operator delete(v130);
    }
  }

  v95 = *a3;
  v96 = a3[1];
  while (v95 != v96)
  {
    v97 = vaddq_f64(a2[1], v95[1]);
    *v95 = vaddq_f64(*a2, *v95);
    v95[1] = v97;
    v95 += 2;
  }

LABEL_14:
  if (v135)
  {
    v136 = v135;
    operator delete(v135);
  }
}

void geom_dop8_polyhedron_3d(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  v11 = geom::collection_to_vector<float>(a5);
  geom::dop<(unsigned char)8,double>::compute_polyhedron(a1, v12, v9, v10, v11);
}

void geom::dop<(unsigned char)8,double>::compute_polyhedron(uint64_t a1, float64x2_t *a2, float64x2_t **a3, std::vector<int> *a4, uint64_t a5)
{
  v8 = 0;
  v138[8] = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  *(a5 + 8) = *a5;
  v11 = *a2;
  v10 = a2[1];
  v117 = a1 + 32;
  do
  {
    v12 = vmulq_f64(geom::kdop_axes<(unsigned char)8,double>[2 * v8 + 1], v10).f64[0] + vaddvq_f64(vmulq_f64(geom::kdop_axes<(unsigned char)8,double>[2 * v8], v11));
    v13 = (a1 + 8 * v8);
    *&v138[v8 + 4] = *v13 - v12;
    *&v138[v8++] = v13[4] - v12;
  }

  while (v8 != 4);
  v135 = 0;
  v136 = 0;
  v137 = 0;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(&v135, 8uLL);
  v16 = 0;
  v17 = -1;
  v18 = -1;
  do
  {
    v19 = *&v138[v16 + 4];
    v20 = v138[v16];
    if (v19 == *&v20)
    {
      v17 = v16;
    }

    else
    {
      v21 = v17;
      v17 = v16;
      if (vabdd_f64(v19, *&v20) > 0.000001)
      {
        v22 = &geom::kdop_axes<(unsigned char)8,double>[2 * v16];
        v121 = *v22;
        v124 = v22[1];
        v23 = vdupq_lane_s64(v20, 0);
        *__x = vdivq_f64(*v22, v23);
        v134 = vdivq_f64(v124, v23);
        v119 = *&v19;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v135, __x);
        v24 = vdupq_lane_s64(v119, 0);
        *__x = vdivq_f64(v121, v24);
        v134 = vdivq_f64(v124, v24);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v135, __x);
        v18 = v16;
        v17 = v21;
      }
    }

    ++v16;
  }

  while (v16 != 4);
  v25 = v135;
  v26 = (v136 - v135) >> 5;
  if (!v26)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, a2);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    goto LABEL_13;
  }

  if (v26 == 2)
  {
    v27 = &geom::kdop_axes<(unsigned char)8,double>[2 * v18];
    v122 = *v27;
    v125 = v27[1];
    v28 = *(a1 + 8 * v18);
    *__x = vmulq_n_f64(*v27, v28);
    v134 = vmulq_n_f64(v125, v28);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    v29 = *(v117 + 8 * v18);
    *__x = vmulq_n_f64(v122, v29);
    v134 = vmulq_n_f64(v125, v29);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    begin = a4->__begin_;
    begin[10] = 1;
    begin[7] = 1;
    begin[4] = 1;
LABEL_13:
    __x[0] = 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 6;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 9;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 12;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    goto LABEL_14;
  }

  if (v26 > 7)
  {
    geom::half_plane_intersection_3<double>(8uLL, v135, a3, &a4->__begin_, a5);
  }

  else
  {
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v31 = &geom::kdop_axes<(unsigned char)8,double>[2 * v17];
    v32 = *v31;
    v33 = v31[1];
    v34 = fabs(v33.f64[0]);
    if (v34 <= 2.22044605e-16)
    {
      *v15.i64 = -v32.f64[1];
      v36 = 0uLL;
      v35 = vzip1q_s64(v15, v32);
    }

    else
    {
      v35.f64[0] = 0.0;
      v35.f64[1] = -v33.f64[0];
      v36 = vdupq_laneq_s64(v32, 1);
    }

    v37 = vdupq_laneq_s64(v32, 1);
    v38 = vmulq_f64(v36, v36);
    v38.f64[0] = 1.0 / sqrt(v38.f64[0] + vaddvq_f64(vmulq_f64(v35, v35)));
    v39 = vmulq_f64(v36, v38);
    v40 = vmulq_n_f64(v35, v38.f64[0]);
    v41 = vextq_s8(v40, v40, 8uLL).u64[0];
    if (v34 <= 2.22044605e-16)
    {
      *v14.i64 = -v32.f64[1];
      v43 = 0uLL;
      v42 = vzip1q_s64(v14, v32);
    }

    else
    {
      v42.f64[0] = 0.0;
      v42.f64[1] = -v33.f64[0];
      v43 = v37;
    }

    v123 = v31[1];
    v126 = v39;
    v44 = vmulq_f64(v43, v43);
    v44.f64[0] = 1.0 / sqrt(v44.f64[0] + vaddvq_f64(vmulq_f64(v42, v42)));
    v45 = vmulq_n_f64(v42, v44.f64[0]);
    v46 = vmulq_f64(v43, v44);
    v47.f64[0] = v31[1].f64[0];
    v47.f64[1] = v31->f64[0];
    v48 = vnegq_f64(v33);
    v49 = vmlaq_laneq_f64(vmulq_laneq_f64(v48, v45, 1), v46, v32, 1);
    v46.f64[1] = v45.f64[0];
    v50 = vnegq_f64(v32);
    v51 = v47;
    v52 = vmlaq_f64(vmulq_f64(v46, v50), v45, v47);
    v53 = vmulq_f64(v52, v52);
    v47.f64[0] = vmulq_f64(v49, v49).f64[0];
    v49.f64[1] = v52.f64[0];
    v53.f64[0] = 1.0 / sqrt(v53.f64[1] + v47.f64[0] + v53.f64[0]);
    v54 = vmulq_n_f64(v49, v53.f64[0]);
    v55 = vextq_s8(v54, v54, 8uLL).u64[0];
    v120 = vmulq_laneq_f64(v53, v52, 1);
    v108 = v54.i64[0];
    v110 = v40.i64[0];
    v98 = v55;
    v99 = v41;
    if (v136 == v135)
    {
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v56 = 0;
      v40.i64[1] = v41;
      v54.i64[1] = v55;
      v102 = v54;
      v103 = v40;
      v101 = vdupq_lane_s64(*&v123.f64[0], 0);
      v50.i64[1] = vextq_s8(v50, v50, 8uLL).u64[0];
      v104 = v50;
      v105 = v48;
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u64[0];
      v106 = v51;
      v107 = v37;
      v118 = *v31;
      do
      {
        v57 = &v25[2 * v56];
        v112 = v57[1];
        v113 = *v57;
        v58.f64[0] = v57[1].f64[0];
        v58.f64[1] = v57->f64[0];
        v59 = vmlaq_f64(vmulq_f64(v58, v104), *v57, v106);
        v60 = vmlaq_f64(vmulq_laneq_f64(v48, *v57, 1), v112, v37);
        v61 = vmulq_f64(v59, v59);
        v62 = v59.f64[0];
        v115 = v59;
        v63.f64[0] = v60.f64[0];
        v61.f64[0] = 1.0 / sqrt(v61.f64[1] + vmulq_f64(v60, v60).f64[0] + v61.f64[0]);
        v116 = v61;
        v64 = vzip1q_s64(v118, *v57);
        v65 = vzip2q_s64(v118, *v57);
        v66 = vzip1q_s64(v123, v112);
        v139.columns[0] = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v64, v118.f64[0]), v37, v65), v101, v66);
        v139.columns[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v64, v57->f64[0]), v65, *v57, 1), v66, v112.f64[0]);
        v63.f64[1] = v62;
        v114 = v63;
        v67 = __invert_d2(v139);
        v68 = vmlaq_laneq_f64(vmulq_n_f64(v118, v67.columns[1].f64[0]), v113, v67.columns[1], 1);
        v69 = vmlaq_laneq_f64(vmulq_n_f64(v123, v67.columns[1].f64[0]), v112, v67.columns[1], 1);
        v70 = vmulq_n_f64(v114, v116.f64[0]);
        v71 = vmulq_laneq_f64(v116, v115, 1);
        v72 = vaddq_f64(vzip1q_s64(vmulq_f64(v126, v71), vmulq_f64(v120, v71)), vpaddq_f64(vmulq_f64(v103, v70), vmulq_f64(v102, v70)));
        v73 = vmulq_f64(v72, v72);
        v74 = vmulq_n_f64(v72, 1.0 / sqrt(vaddvq_f64(v73)));
        v73.f64[0] = -*&v74.i64[1];
        v75 = vzip1q_s64(v73, v74);
        v76 = vmulq_f64(v75, vaddq_f64(vzip1q_s64(vmulq_f64(v126, v69), vmulq_f64(v120, v69)), vpaddq_f64(vmulq_f64(v103, v68), vmulq_f64(v102, v68))));
        *__x = vdivq_f64(v75, vdupq_lane_s64(*&vaddq_f64(v76, vdupq_laneq_s64(v76, 1)), 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v130, __x);
        v48 = v105;
        v37 = v107;
        ++v56;
        v25 = v135;
      }

      while (v56 < (v136 - v135) >> 5);
      v77 = v130;
      v78 = v131;
    }

    __p = 0;
    v128 = 0;
    v129 = 0;
    geom::half_plane_intersection_2<double>((v78 - v77) >> 4, v77, &__p);
    v79 = __p;
    v80 = v128;
    v81 = v126;
    *&v82.f64[0] = v108;
    *&v83.f64[0] = v110;
    if (__p != v128)
    {
      *&v82.f64[1] = v98;
      *&v83.f64[1] = v99;
      v109 = v82;
      v111 = v83;
      do
      {
        v84 = *v79++;
        *__x = vmlaq_n_f64(vmulq_laneq_f64(v82, v84, 1), v83, v84.f64[0]);
        v134 = vmlaq_f64(vmulq_laneq_f64(v120, v84, 1), v84, v81);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
        v81 = v126;
        v82 = v109;
        v83 = v111;
      }

      while (v79 != v80);
    }

    std::vector<float>::resize(a4, a3[1] - *a3);
    v85 = a3[1] - *a3;
    if (v85)
    {
      v86 = 0;
      v87 = a4->__begin_;
      v88 = a4->__begin_ + (v85 >> 3);
      v89 = vdupq_n_s64(((v85 >> 3) - 4) >> 2);
      v90 = a4->__begin_ + 2;
      do
      {
        v91 = vdupq_n_s64(v86);
        v92 = vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1680)));
        if (vuzp1_s16(v92, *v89.i8).u8[0])
        {
          *(v90 - 2) = v86;
        }

        if (vuzp1_s16(v92, *&v89).i8[2])
        {
          *(v90 - 1) = v86 + 1;
        }

        if (vuzp1_s16(*&v89, vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1670)))).i32[1])
        {
          *v90 = v86 + 2;
          v90[1] = v86 + 3;
        }

        v86 += 4;
        v90 += 4;
      }

      while ((((((v85 >> 3) - 4) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL) != v86);
      v93 = a4->__end_ - 1;
      do
      {
        v94 = *v87++;
        *v93-- = v94;
      }

      while (v87 != v88);
    }

    __x[0] = v85 >> 5;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = ((a3[1] - *a3) >> 4) & 0xFFFFFFFE;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    if (__p)
    {
      v128 = __p;
      operator delete(__p);
    }

    if (v130)
    {
      v131 = v130;
      operator delete(v130);
    }
  }

  v95 = *a3;
  v96 = a3[1];
  while (v95 != v96)
  {
    v97 = vaddq_f64(a2[1], v95[1]);
    *v95 = vaddq_f64(*a2, *v95);
    v95[1] = v97;
    v95 += 2;
  }

LABEL_14:
  if (v135)
  {
    v136 = v135;
    operator delete(v135);
  }
}

void geom_dop12_polyhedron_3d(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  v11 = geom::collection_to_vector<float>(a5);
  geom::dop<(unsigned char)12,double>::compute_polyhedron(a1, v12, v9, v10, v11);
}

void geom::dop<(unsigned char)12,double>::compute_polyhedron(uint64_t a1, float64x2_t *a2, float64x2_t **a3, std::vector<int> *a4, uint64_t a5)
{
  v8 = 0;
  v138[12] = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  *(a5 + 8) = *a5;
  v11 = *a2;
  v10 = a2[1];
  v117 = a1 + 48;
  do
  {
    v12 = vmulq_f64(geom::kdop_axes<(unsigned char)12,double>[2 * v8 + 1], v10).f64[0] + vaddvq_f64(vmulq_f64(geom::kdop_axes<(unsigned char)12,double>[2 * v8], v11));
    v13 = (a1 + 8 * v8);
    *&v138[v8 + 6] = *v13 - v12;
    *&v138[v8++] = v13[6] - v12;
  }

  while (v8 != 6);
  v135 = 0;
  v136 = 0;
  v137 = 0;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(&v135, 0xCuLL);
  v16 = 0;
  v17 = -1;
  v18 = -1;
  do
  {
    v19 = *&v138[v16 + 6];
    v20 = v138[v16];
    if (v19 == *&v20)
    {
      v17 = v16;
    }

    else
    {
      v21 = v17;
      v17 = v16;
      if (vabdd_f64(v19, *&v20) > 0.000001)
      {
        v22 = &geom::kdop_axes<(unsigned char)12,double>[2 * v16];
        v121 = *v22;
        v124 = v22[1];
        v23 = vdupq_lane_s64(v20, 0);
        *__x = vdivq_f64(*v22, v23);
        v134 = vdivq_f64(v124, v23);
        v119 = *&v19;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v135, __x);
        v24 = vdupq_lane_s64(v119, 0);
        *__x = vdivq_f64(v121, v24);
        v134 = vdivq_f64(v124, v24);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v135, __x);
        v18 = v16;
        v17 = v21;
      }
    }

    ++v16;
  }

  while (v16 != 6);
  v25 = v135;
  v26 = (v136 - v135) >> 5;
  if (!v26)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, a2);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    goto LABEL_13;
  }

  if (v26 == 2)
  {
    v27 = &geom::kdop_axes<(unsigned char)12,double>[2 * v18];
    v122 = *v27;
    v125 = v27[1];
    v28 = *(a1 + 8 * v18);
    *__x = vmulq_n_f64(*v27, v28);
    v134 = vmulq_n_f64(v125, v28);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    v29 = *(v117 + 8 * v18);
    *__x = vmulq_n_f64(v122, v29);
    v134 = vmulq_n_f64(v125, v29);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    begin = a4->__begin_;
    begin[10] = 1;
    begin[7] = 1;
    begin[4] = 1;
LABEL_13:
    __x[0] = 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 6;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 9;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 12;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    goto LABEL_14;
  }

  if (v26 > 0xB)
  {
    geom::half_plane_intersection_3<double>(0xCuLL, v135, a3, &a4->__begin_, a5);
  }

  else
  {
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v31 = &geom::kdop_axes<(unsigned char)12,double>[2 * v17];
    v32 = *v31;
    v33 = v31[1];
    v34 = fabs(v33.f64[0]);
    if (v34 <= 2.22044605e-16)
    {
      *v15.i64 = -v32.f64[1];
      v36 = 0uLL;
      v35 = vzip1q_s64(v15, v32);
    }

    else
    {
      v35.f64[0] = 0.0;
      v35.f64[1] = -v33.f64[0];
      v36 = vdupq_laneq_s64(v32, 1);
    }

    v37 = vdupq_laneq_s64(v32, 1);
    v38 = vmulq_f64(v36, v36);
    v38.f64[0] = 1.0 / sqrt(v38.f64[0] + vaddvq_f64(vmulq_f64(v35, v35)));
    v39 = vmulq_f64(v36, v38);
    v40 = vmulq_n_f64(v35, v38.f64[0]);
    v41 = vextq_s8(v40, v40, 8uLL).u64[0];
    if (v34 <= 2.22044605e-16)
    {
      *v14.i64 = -v32.f64[1];
      v43 = 0uLL;
      v42 = vzip1q_s64(v14, v32);
    }

    else
    {
      v42.f64[0] = 0.0;
      v42.f64[1] = -v33.f64[0];
      v43 = v37;
    }

    v123 = v31[1];
    v126 = v39;
    v44 = vmulq_f64(v43, v43);
    v44.f64[0] = 1.0 / sqrt(v44.f64[0] + vaddvq_f64(vmulq_f64(v42, v42)));
    v45 = vmulq_n_f64(v42, v44.f64[0]);
    v46 = vmulq_f64(v43, v44);
    v47.f64[0] = v31[1].f64[0];
    v47.f64[1] = v31->f64[0];
    v48 = vnegq_f64(v33);
    v49 = vmlaq_laneq_f64(vmulq_laneq_f64(v48, v45, 1), v46, v32, 1);
    v46.f64[1] = v45.f64[0];
    v50 = vnegq_f64(v32);
    v51 = v47;
    v52 = vmlaq_f64(vmulq_f64(v46, v50), v45, v47);
    v53 = vmulq_f64(v52, v52);
    v47.f64[0] = vmulq_f64(v49, v49).f64[0];
    v49.f64[1] = v52.f64[0];
    v53.f64[0] = 1.0 / sqrt(v53.f64[1] + v47.f64[0] + v53.f64[0]);
    v54 = vmulq_n_f64(v49, v53.f64[0]);
    v55 = vextq_s8(v54, v54, 8uLL).u64[0];
    v120 = vmulq_laneq_f64(v53, v52, 1);
    v108 = v54.i64[0];
    v110 = v40.i64[0];
    v98 = v55;
    v99 = v41;
    if (v136 == v135)
    {
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v56 = 0;
      v40.i64[1] = v41;
      v54.i64[1] = v55;
      v102 = v54;
      v103 = v40;
      v101 = vdupq_lane_s64(*&v123.f64[0], 0);
      v50.i64[1] = vextq_s8(v50, v50, 8uLL).u64[0];
      v104 = v50;
      v105 = v48;
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u64[0];
      v106 = v51;
      v107 = v37;
      v118 = *v31;
      do
      {
        v57 = &v25[2 * v56];
        v112 = v57[1];
        v113 = *v57;
        v58.f64[0] = v57[1].f64[0];
        v58.f64[1] = v57->f64[0];
        v59 = vmlaq_f64(vmulq_f64(v58, v104), *v57, v106);
        v60 = vmlaq_f64(vmulq_laneq_f64(v48, *v57, 1), v112, v37);
        v61 = vmulq_f64(v59, v59);
        v62 = v59.f64[0];
        v115 = v59;
        v63.f64[0] = v60.f64[0];
        v61.f64[0] = 1.0 / sqrt(v61.f64[1] + vmulq_f64(v60, v60).f64[0] + v61.f64[0]);
        v116 = v61;
        v64 = vzip1q_s64(v118, *v57);
        v65 = vzip2q_s64(v118, *v57);
        v66 = vzip1q_s64(v123, v112);
        v139.columns[0] = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v64, v118.f64[0]), v37, v65), v101, v66);
        v139.columns[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v64, v57->f64[0]), v65, *v57, 1), v66, v112.f64[0]);
        v63.f64[1] = v62;
        v114 = v63;
        v67 = __invert_d2(v139);
        v68 = vmlaq_laneq_f64(vmulq_n_f64(v118, v67.columns[1].f64[0]), v113, v67.columns[1], 1);
        v69 = vmlaq_laneq_f64(vmulq_n_f64(v123, v67.columns[1].f64[0]), v112, v67.columns[1], 1);
        v70 = vmulq_n_f64(v114, v116.f64[0]);
        v71 = vmulq_laneq_f64(v116, v115, 1);
        v72 = vaddq_f64(vzip1q_s64(vmulq_f64(v126, v71), vmulq_f64(v120, v71)), vpaddq_f64(vmulq_f64(v103, v70), vmulq_f64(v102, v70)));
        v73 = vmulq_f64(v72, v72);
        v74 = vmulq_n_f64(v72, 1.0 / sqrt(vaddvq_f64(v73)));
        v73.f64[0] = -*&v74.i64[1];
        v75 = vzip1q_s64(v73, v74);
        v76 = vmulq_f64(v75, vaddq_f64(vzip1q_s64(vmulq_f64(v126, v69), vmulq_f64(v120, v69)), vpaddq_f64(vmulq_f64(v103, v68), vmulq_f64(v102, v68))));
        *__x = vdivq_f64(v75, vdupq_lane_s64(*&vaddq_f64(v76, vdupq_laneq_s64(v76, 1)), 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v130, __x);
        v48 = v105;
        v37 = v107;
        ++v56;
        v25 = v135;
      }

      while (v56 < (v136 - v135) >> 5);
      v77 = v130;
      v78 = v131;
    }

    __p = 0;
    v128 = 0;
    v129 = 0;
    geom::half_plane_intersection_2<double>((v78 - v77) >> 4, v77, &__p);
    v79 = __p;
    v80 = v128;
    v81 = v126;
    *&v82.f64[0] = v108;
    *&v83.f64[0] = v110;
    if (__p != v128)
    {
      *&v82.f64[1] = v98;
      *&v83.f64[1] = v99;
      v109 = v82;
      v111 = v83;
      do
      {
        v84 = *v79++;
        *__x = vmlaq_n_f64(vmulq_laneq_f64(v82, v84, 1), v83, v84.f64[0]);
        v134 = vmlaq_f64(vmulq_laneq_f64(v120, v84, 1), v84, v81);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
        v81 = v126;
        v82 = v109;
        v83 = v111;
      }

      while (v79 != v80);
    }

    std::vector<float>::resize(a4, a3[1] - *a3);
    v85 = a3[1] - *a3;
    if (v85)
    {
      v86 = 0;
      v87 = a4->__begin_;
      v88 = a4->__begin_ + (v85 >> 3);
      v89 = vdupq_n_s64(((v85 >> 3) - 4) >> 2);
      v90 = a4->__begin_ + 2;
      do
      {
        v91 = vdupq_n_s64(v86);
        v92 = vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1680)));
        if (vuzp1_s16(v92, *v89.i8).u8[0])
        {
          *(v90 - 2) = v86;
        }

        if (vuzp1_s16(v92, *&v89).i8[2])
        {
          *(v90 - 1) = v86 + 1;
        }

        if (vuzp1_s16(*&v89, vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1670)))).i32[1])
        {
          *v90 = v86 + 2;
          v90[1] = v86 + 3;
        }

        v86 += 4;
        v90 += 4;
      }

      while ((((((v85 >> 3) - 4) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL) != v86);
      v93 = a4->__end_ - 1;
      do
      {
        v94 = *v87++;
        *v93-- = v94;
      }

      while (v87 != v88);
    }

    __x[0] = v85 >> 5;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = ((a3[1] - *a3) >> 4) & 0xFFFFFFFE;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    if (__p)
    {
      v128 = __p;
      operator delete(__p);
    }

    if (v130)
    {
      v131 = v130;
      operator delete(v130);
    }
  }

  v95 = *a3;
  v96 = a3[1];
  while (v95 != v96)
  {
    v97 = vaddq_f64(a2[1], v95[1]);
    *v95 = vaddq_f64(*a2, *v95);
    v95[1] = v97;
    v95 += 2;
  }

LABEL_14:
  if (v135)
  {
    v136 = v135;
    operator delete(v135);
  }
}

void geom_dop14_polyhedron_3d(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  v11 = geom::collection_to_vector<float>(a5);
  geom::dop<(unsigned char)14,double>::compute_polyhedron(a1, v12, v9, v10, v11);
}

void geom::dop<(unsigned char)14,double>::compute_polyhedron(uint64_t a1, float64x2_t *a2, float64x2_t **a3, std::vector<int> *a4, uint64_t a5)
{
  v8 = 0;
  v138[14] = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  *(a5 + 8) = *a5;
  v11 = *a2;
  v10 = a2[1];
  v117 = a1 + 64;
  do
  {
    v12 = vmulq_f64(geom::kdop_axes<(unsigned char)14,double>[2 * v8 + 1], v10).f64[0] + vaddvq_f64(vmulq_f64(geom::kdop_axes<(unsigned char)14,double>[2 * v8], v11));
    v13 = (a1 + 8 * v8);
    *&v138[v8 + 7] = *v13 - v12;
    *&v138[v8++] = v13[8] - v12;
  }

  while (v8 != 7);
  v135 = 0;
  v136 = 0;
  v137 = 0;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(&v135, 0xEuLL);
  v16 = 0;
  v17 = -1;
  v18 = -1;
  do
  {
    v19 = *&v138[v16 + 7];
    v20 = v138[v16];
    if (v19 == *&v20)
    {
      v17 = v16;
    }

    else
    {
      v21 = v17;
      v17 = v16;
      if (vabdd_f64(v19, *&v20) > 0.000001)
      {
        v22 = &geom::kdop_axes<(unsigned char)14,double>[2 * v16];
        v121 = *v22;
        v124 = v22[1];
        v23 = vdupq_lane_s64(v20, 0);
        *__x = vdivq_f64(*v22, v23);
        v134 = vdivq_f64(v124, v23);
        v119 = *&v19;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v135, __x);
        v24 = vdupq_lane_s64(v119, 0);
        *__x = vdivq_f64(v121, v24);
        v134 = vdivq_f64(v124, v24);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v135, __x);
        v18 = v16;
        v17 = v21;
      }
    }

    ++v16;
  }

  while (v16 != 7);
  v25 = v135;
  v26 = (v136 - v135) >> 5;
  if (!v26)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, a2);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    goto LABEL_13;
  }

  if (v26 == 2)
  {
    v27 = &geom::kdop_axes<(unsigned char)14,double>[2 * v18];
    v122 = *v27;
    v125 = v27[1];
    v28 = *(a1 + 8 * v18);
    *__x = vmulq_n_f64(*v27, v28);
    v134 = vmulq_n_f64(v125, v28);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    v29 = *(v117 + 8 * v18);
    *__x = vmulq_n_f64(v122, v29);
    v134 = vmulq_n_f64(v125, v29);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    begin = a4->__begin_;
    begin[10] = 1;
    begin[7] = 1;
    begin[4] = 1;
LABEL_13:
    __x[0] = 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 6;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 9;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 12;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    goto LABEL_14;
  }

  if (v26 > 0xD)
  {
    geom::half_plane_intersection_3<double>(0xEuLL, v135, a3, &a4->__begin_, a5);
  }

  else
  {
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v31 = &geom::kdop_axes<(unsigned char)14,double>[2 * v17];
    v32 = *v31;
    v33 = v31[1];
    v34 = fabs(v33.f64[0]);
    if (v34 <= 2.22044605e-16)
    {
      *v15.i64 = -v32.f64[1];
      v36 = 0uLL;
      v35 = vzip1q_s64(v15, v32);
    }

    else
    {
      v35.f64[0] = 0.0;
      v35.f64[1] = -v33.f64[0];
      v36 = vdupq_laneq_s64(v32, 1);
    }

    v37 = vdupq_laneq_s64(v32, 1);
    v38 = vmulq_f64(v36, v36);
    v38.f64[0] = 1.0 / sqrt(v38.f64[0] + vaddvq_f64(vmulq_f64(v35, v35)));
    v39 = vmulq_f64(v36, v38);
    v40 = vmulq_n_f64(v35, v38.f64[0]);
    v41 = vextq_s8(v40, v40, 8uLL).u64[0];
    if (v34 <= 2.22044605e-16)
    {
      *v14.i64 = -v32.f64[1];
      v43 = 0uLL;
      v42 = vzip1q_s64(v14, v32);
    }

    else
    {
      v42.f64[0] = 0.0;
      v42.f64[1] = -v33.f64[0];
      v43 = v37;
    }

    v123 = v31[1];
    v126 = v39;
    v44 = vmulq_f64(v43, v43);
    v44.f64[0] = 1.0 / sqrt(v44.f64[0] + vaddvq_f64(vmulq_f64(v42, v42)));
    v45 = vmulq_n_f64(v42, v44.f64[0]);
    v46 = vmulq_f64(v43, v44);
    v47.f64[0] = v31[1].f64[0];
    v47.f64[1] = v31->f64[0];
    v48 = vnegq_f64(v33);
    v49 = vmlaq_laneq_f64(vmulq_laneq_f64(v48, v45, 1), v46, v32, 1);
    v46.f64[1] = v45.f64[0];
    v50 = vnegq_f64(v32);
    v51 = v47;
    v52 = vmlaq_f64(vmulq_f64(v46, v50), v45, v47);
    v53 = vmulq_f64(v52, v52);
    v47.f64[0] = vmulq_f64(v49, v49).f64[0];
    v49.f64[1] = v52.f64[0];
    v53.f64[0] = 1.0 / sqrt(v53.f64[1] + v47.f64[0] + v53.f64[0]);
    v54 = vmulq_n_f64(v49, v53.f64[0]);
    v55 = vextq_s8(v54, v54, 8uLL).u64[0];
    v120 = vmulq_laneq_f64(v53, v52, 1);
    v108 = v54.i64[0];
    v110 = v40.i64[0];
    v98 = v55;
    v99 = v41;
    if (v136 == v135)
    {
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v56 = 0;
      v40.i64[1] = v41;
      v54.i64[1] = v55;
      v102 = v54;
      v103 = v40;
      v101 = vdupq_lane_s64(*&v123.f64[0], 0);
      v50.i64[1] = vextq_s8(v50, v50, 8uLL).u64[0];
      v104 = v50;
      v105 = v48;
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u64[0];
      v106 = v51;
      v107 = v37;
      v118 = *v31;
      do
      {
        v57 = &v25[2 * v56];
        v112 = v57[1];
        v113 = *v57;
        v58.f64[0] = v57[1].f64[0];
        v58.f64[1] = v57->f64[0];
        v59 = vmlaq_f64(vmulq_f64(v58, v104), *v57, v106);
        v60 = vmlaq_f64(vmulq_laneq_f64(v48, *v57, 1), v112, v37);
        v61 = vmulq_f64(v59, v59);
        v62 = v59.f64[0];
        v115 = v59;
        v63.f64[0] = v60.f64[0];
        v61.f64[0] = 1.0 / sqrt(v61.f64[1] + vmulq_f64(v60, v60).f64[0] + v61.f64[0]);
        v116 = v61;
        v64 = vzip1q_s64(v118, *v57);
        v65 = vzip2q_s64(v118, *v57);
        v66 = vzip1q_s64(v123, v112);
        v139.columns[0] = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v64, v118.f64[0]), v37, v65), v101, v66);
        v139.columns[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v64, v57->f64[0]), v65, *v57, 1), v66, v112.f64[0]);
        v63.f64[1] = v62;
        v114 = v63;
        v67 = __invert_d2(v139);
        v68 = vmlaq_laneq_f64(vmulq_n_f64(v118, v67.columns[1].f64[0]), v113, v67.columns[1], 1);
        v69 = vmlaq_laneq_f64(vmulq_n_f64(v123, v67.columns[1].f64[0]), v112, v67.columns[1], 1);
        v70 = vmulq_n_f64(v114, v116.f64[0]);
        v71 = vmulq_laneq_f64(v116, v115, 1);
        v72 = vaddq_f64(vzip1q_s64(vmulq_f64(v126, v71), vmulq_f64(v120, v71)), vpaddq_f64(vmulq_f64(v103, v70), vmulq_f64(v102, v70)));
        v73 = vmulq_f64(v72, v72);
        v74 = vmulq_n_f64(v72, 1.0 / sqrt(vaddvq_f64(v73)));
        v73.f64[0] = -*&v74.i64[1];
        v75 = vzip1q_s64(v73, v74);
        v76 = vmulq_f64(v75, vaddq_f64(vzip1q_s64(vmulq_f64(v126, v69), vmulq_f64(v120, v69)), vpaddq_f64(vmulq_f64(v103, v68), vmulq_f64(v102, v68))));
        *__x = vdivq_f64(v75, vdupq_lane_s64(*&vaddq_f64(v76, vdupq_laneq_s64(v76, 1)), 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v130, __x);
        v48 = v105;
        v37 = v107;
        ++v56;
        v25 = v135;
      }

      while (v56 < (v136 - v135) >> 5);
      v77 = v130;
      v78 = v131;
    }

    __p = 0;
    v128 = 0;
    v129 = 0;
    geom::half_plane_intersection_2<double>((v78 - v77) >> 4, v77, &__p);
    v79 = __p;
    v80 = v128;
    v81 = v126;
    *&v82.f64[0] = v108;
    *&v83.f64[0] = v110;
    if (__p != v128)
    {
      *&v82.f64[1] = v98;
      *&v83.f64[1] = v99;
      v109 = v82;
      v111 = v83;
      do
      {
        v84 = *v79++;
        *__x = vmlaq_n_f64(vmulq_laneq_f64(v82, v84, 1), v83, v84.f64[0]);
        v134 = vmlaq_f64(vmulq_laneq_f64(v120, v84, 1), v84, v81);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
        v81 = v126;
        v82 = v109;
        v83 = v111;
      }

      while (v79 != v80);
    }

    std::vector<float>::resize(a4, a3[1] - *a3);
    v85 = a3[1] - *a3;
    if (v85)
    {
      v86 = 0;
      v87 = a4->__begin_;
      v88 = a4->__begin_ + (v85 >> 3);
      v89 = vdupq_n_s64(((v85 >> 3) - 4) >> 2);
      v90 = a4->__begin_ + 2;
      do
      {
        v91 = vdupq_n_s64(v86);
        v92 = vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1680)));
        if (vuzp1_s16(v92, *v89.i8).u8[0])
        {
          *(v90 - 2) = v86;
        }

        if (vuzp1_s16(v92, *&v89).i8[2])
        {
          *(v90 - 1) = v86 + 1;
        }

        if (vuzp1_s16(*&v89, vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1670)))).i32[1])
        {
          *v90 = v86 + 2;
          v90[1] = v86 + 3;
        }

        v86 += 4;
        v90 += 4;
      }

      while ((((((v85 >> 3) - 4) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL) != v86);
      v93 = a4->__end_ - 1;
      do
      {
        v94 = *v87++;
        *v93-- = v94;
      }

      while (v87 != v88);
    }

    __x[0] = v85 >> 5;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = ((a3[1] - *a3) >> 4) & 0xFFFFFFFE;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    if (__p)
    {
      v128 = __p;
      operator delete(__p);
    }

    if (v130)
    {
      v131 = v130;
      operator delete(v130);
    }
  }

  v95 = *a3;
  v96 = a3[1];
  while (v95 != v96)
  {
    v97 = vaddq_f64(a2[1], v95[1]);
    *v95 = vaddq_f64(*a2, *v95);
    v95[1] = v97;
    v95 += 2;
  }

LABEL_14:
  if (v135)
  {
    v136 = v135;
    operator delete(v135);
  }
}

void geom_dop18_polyhedron_3d(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  v11 = geom::collection_to_vector<float>(a5);
  geom::dop<(unsigned char)18,double>::compute_polyhedron(a1, v12, v9, v10, v11);
}

void geom::dop<(unsigned char)18,double>::compute_polyhedron(uint64_t a1, float64x2_t *a2, float64x2_t **a3, std::vector<int> *a4, uint64_t a5)
{
  v8 = 0;
  v138[18] = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  *(a5 + 8) = *a5;
  v11 = *a2;
  v10 = a2[1];
  v117 = a1 + 80;
  do
  {
    v12 = vmulq_f64(geom::kdop_axes<(unsigned char)18,double>[2 * v8 + 1], v10).f64[0] + vaddvq_f64(vmulq_f64(geom::kdop_axes<(unsigned char)18,double>[2 * v8], v11));
    v13 = (a1 + 8 * v8);
    *&v138[v8 + 9] = *v13 - v12;
    *&v138[v8++] = v13[10] - v12;
  }

  while (v8 != 9);
  __p = 0;
  v136 = 0;
  v137 = 0;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(&__p, 0x12uLL);
  v16 = 0;
  v17 = -1;
  v18 = -1;
  do
  {
    v19 = *&v138[v16 + 9];
    v20 = v138[v16];
    if (v19 == *&v20)
    {
      v17 = v16;
    }

    else
    {
      v21 = v17;
      v17 = v16;
      if (vabdd_f64(v19, *&v20) > 0.000001)
      {
        v22 = &geom::kdop_axes<(unsigned char)18,double>[2 * v16];
        v121 = *v22;
        v124 = v22[1];
        v23 = vdupq_lane_s64(v20, 0);
        *__x = vdivq_f64(*v22, v23);
        v134 = vdivq_f64(v124, v23);
        v119 = *&v19;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&__p, __x);
        v24 = vdupq_lane_s64(v119, 0);
        *__x = vdivq_f64(v121, v24);
        v134 = vdivq_f64(v124, v24);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&__p, __x);
        v18 = v16;
        v17 = v21;
      }
    }

    ++v16;
  }

  while (v16 != 9);
  v25 = __p;
  v26 = (v136 - __p) >> 5;
  if (!v26)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, a2);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    goto LABEL_13;
  }

  if (v26 == 2)
  {
    v27 = &geom::kdop_axes<(unsigned char)18,double>[2 * v18];
    v122 = *v27;
    v125 = v27[1];
    v28 = *(a1 + 8 * v18);
    *__x = vmulq_n_f64(*v27, v28);
    v134 = vmulq_n_f64(v125, v28);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    v29 = *(v117 + 8 * v18);
    *__x = vmulq_n_f64(v122, v29);
    v134 = vmulq_n_f64(v125, v29);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    begin = a4->__begin_;
    begin[10] = 1;
    begin[7] = 1;
    begin[4] = 1;
LABEL_13:
    __x[0] = 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 6;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 9;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 12;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    goto LABEL_14;
  }

  if (v26 > 0x11)
  {
    geom::half_plane_intersection_3<double>(0x12uLL, __p, a3, &a4->__begin_, a5);
  }

  else
  {
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v31 = &geom::kdop_axes<(unsigned char)18,double>[2 * v17];
    v32 = *v31;
    v33 = v31[1];
    v34 = fabs(v33.f64[0]);
    if (v34 <= 2.22044605e-16)
    {
      *v15.i64 = -v32.f64[1];
      v36 = 0uLL;
      v35 = vzip1q_s64(v15, v32);
    }

    else
    {
      v35.f64[0] = 0.0;
      v35.f64[1] = -v33.f64[0];
      v36 = vdupq_laneq_s64(v32, 1);
    }

    v37 = vdupq_laneq_s64(v32, 1);
    v38 = vmulq_f64(v36, v36);
    v38.f64[0] = 1.0 / sqrt(v38.f64[0] + vaddvq_f64(vmulq_f64(v35, v35)));
    v39 = vmulq_f64(v36, v38);
    v40 = vmulq_n_f64(v35, v38.f64[0]);
    v41 = vextq_s8(v40, v40, 8uLL).u64[0];
    if (v34 <= 2.22044605e-16)
    {
      *v14.i64 = -v32.f64[1];
      v43 = 0uLL;
      v42 = vzip1q_s64(v14, v32);
    }

    else
    {
      v42.f64[0] = 0.0;
      v42.f64[1] = -v33.f64[0];
      v43 = v37;
    }

    v123 = v31[1];
    v126 = v39;
    v44 = vmulq_f64(v43, v43);
    v44.f64[0] = 1.0 / sqrt(v44.f64[0] + vaddvq_f64(vmulq_f64(v42, v42)));
    v45 = vmulq_n_f64(v42, v44.f64[0]);
    v46 = vmulq_f64(v43, v44);
    v47.f64[0] = v31[1].f64[0];
    v47.f64[1] = v31->f64[0];
    v48 = vnegq_f64(v33);
    v49 = vmlaq_laneq_f64(vmulq_laneq_f64(v48, v45, 1), v46, v32, 1);
    v46.f64[1] = v45.f64[0];
    v50 = vnegq_f64(v32);
    v51 = v47;
    v52 = vmlaq_f64(vmulq_f64(v46, v50), v45, v47);
    v53 = vmulq_f64(v52, v52);
    v47.f64[0] = vmulq_f64(v49, v49).f64[0];
    v49.f64[1] = v52.f64[0];
    v53.f64[0] = 1.0 / sqrt(v53.f64[1] + v47.f64[0] + v53.f64[0]);
    v54 = vmulq_n_f64(v49, v53.f64[0]);
    v55 = vextq_s8(v54, v54, 8uLL).u64[0];
    v120 = vmulq_laneq_f64(v53, v52, 1);
    v108 = v54.i64[0];
    v110 = v40.i64[0];
    v98 = v55;
    v99 = v41;
    if (v136 == __p)
    {
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v56 = 0;
      v40.i64[1] = v41;
      v54.i64[1] = v55;
      v102 = v54;
      v103 = v40;
      v101 = vdupq_lane_s64(*&v123.f64[0], 0);
      v50.i64[1] = vextq_s8(v50, v50, 8uLL).u64[0];
      v104 = v50;
      v105 = v48;
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u64[0];
      v106 = v51;
      v107 = v37;
      v118 = *v31;
      do
      {
        v57 = &v25[32 * v56];
        v112 = v57[1];
        v113 = *v57;
        v58.f64[0] = v57[1].f64[0];
        v58.f64[1] = v57->f64[0];
        v59 = vmlaq_f64(vmulq_f64(v58, v104), *v57, v106);
        v60 = vmlaq_f64(vmulq_laneq_f64(v48, *v57, 1), v112, v37);
        v61 = vmulq_f64(v59, v59);
        v62 = v59.f64[0];
        v115 = v59;
        v63.f64[0] = v60.f64[0];
        v61.f64[0] = 1.0 / sqrt(v61.f64[1] + vmulq_f64(v60, v60).f64[0] + v61.f64[0]);
        v116 = v61;
        v64 = vzip1q_s64(v118, *v57);
        v65 = vzip2q_s64(v118, *v57);
        v66 = vzip1q_s64(v123, v112);
        v139.columns[0] = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v64, v118.f64[0]), v37, v65), v101, v66);
        v139.columns[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v64, v57->f64[0]), v65, *v57, 1), v66, v112.f64[0]);
        v63.f64[1] = v62;
        v114 = v63;
        v67 = __invert_d2(v139);
        v68 = vmlaq_laneq_f64(vmulq_n_f64(v118, v67.columns[1].f64[0]), v113, v67.columns[1], 1);
        v69 = vmlaq_laneq_f64(vmulq_n_f64(v123, v67.columns[1].f64[0]), v112, v67.columns[1], 1);
        v70 = vmulq_n_f64(v114, v116.f64[0]);
        v71 = vmulq_laneq_f64(v116, v115, 1);
        v72 = vaddq_f64(vzip1q_s64(vmulq_f64(v126, v71), vmulq_f64(v120, v71)), vpaddq_f64(vmulq_f64(v103, v70), vmulq_f64(v102, v70)));
        v73 = vmulq_f64(v72, v72);
        v74 = vmulq_n_f64(v72, 1.0 / sqrt(vaddvq_f64(v73)));
        v73.f64[0] = -*&v74.i64[1];
        v75 = vzip1q_s64(v73, v74);
        v76 = vmulq_f64(v75, vaddq_f64(vzip1q_s64(vmulq_f64(v126, v69), vmulq_f64(v120, v69)), vpaddq_f64(vmulq_f64(v103, v68), vmulq_f64(v102, v68))));
        *__x = vdivq_f64(v75, vdupq_lane_s64(*&vaddq_f64(v76, vdupq_laneq_s64(v76, 1)), 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v130, __x);
        v48 = v105;
        v37 = v107;
        ++v56;
        v25 = __p;
      }

      while (v56 < (v136 - __p) >> 5);
      v77 = v130;
      v78 = v131;
    }

    v127 = 0;
    v128 = 0;
    v129 = 0;
    geom::half_plane_intersection_2<double>((v78 - v77) >> 4, v77, &v127);
    v79 = v127;
    v80 = v128;
    v81 = v126;
    *&v82.f64[0] = v108;
    *&v83.f64[0] = v110;
    if (v127 != v128)
    {
      *&v82.f64[1] = v98;
      *&v83.f64[1] = v99;
      v109 = v82;
      v111 = v83;
      do
      {
        v84 = *v79++;
        *__x = vmlaq_n_f64(vmulq_laneq_f64(v82, v84, 1), v83, v84.f64[0]);
        v134 = vmlaq_f64(vmulq_laneq_f64(v120, v84, 1), v84, v81);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
        v81 = v126;
        v82 = v109;
        v83 = v111;
      }

      while (v79 != v80);
    }

    std::vector<float>::resize(a4, a3[1] - *a3);
    v85 = a3[1] - *a3;
    if (v85)
    {
      v86 = 0;
      v87 = a4->__begin_;
      v88 = a4->__begin_ + (v85 >> 3);
      v89 = vdupq_n_s64(((v85 >> 3) - 4) >> 2);
      v90 = a4->__begin_ + 2;
      do
      {
        v91 = vdupq_n_s64(v86);
        v92 = vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1680)));
        if (vuzp1_s16(v92, *v89.i8).u8[0])
        {
          *(v90 - 2) = v86;
        }

        if (vuzp1_s16(v92, *&v89).i8[2])
        {
          *(v90 - 1) = v86 + 1;
        }

        if (vuzp1_s16(*&v89, vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1670)))).i32[1])
        {
          *v90 = v86 + 2;
          v90[1] = v86 + 3;
        }

        v86 += 4;
        v90 += 4;
      }

      while ((((((v85 >> 3) - 4) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL) != v86);
      v93 = a4->__end_ - 1;
      do
      {
        v94 = *v87++;
        *v93-- = v94;
      }

      while (v87 != v88);
    }

    __x[0] = v85 >> 5;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = ((a3[1] - *a3) >> 4) & 0xFFFFFFFE;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    if (v127)
    {
      v128 = v127;
      operator delete(v127);
    }

    if (v130)
    {
      v131 = v130;
      operator delete(v130);
    }
  }

  v95 = *a3;
  v96 = a3[1];
  while (v95 != v96)
  {
    v97 = vaddq_f64(a2[1], v95[1]);
    *v95 = vaddq_f64(*a2, *v95);
    v95[1] = v97;
    v95 += 2;
  }

LABEL_14:
  if (__p)
  {
    v136 = __p;
    operator delete(__p);
  }
}

void geom_dop20_polyhedron_3d(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  v11 = geom::collection_to_vector<float>(a5);
  geom::dop<(unsigned char)20,double>::compute_polyhedron(a1, v12, v9, v10, v11);
}

void geom::dop<(unsigned char)20,double>::compute_polyhedron(uint64_t a1, float64x2_t *a2, float64x2_t **a3, std::vector<int> *a4, uint64_t a5)
{
  v8 = 0;
  v138[20] = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  *(a5 + 8) = *a5;
  v11 = *a2;
  v10 = a2[1];
  v117 = a1 + 80;
  do
  {
    v12 = vmulq_f64(geom::kdop_axes<(unsigned char)20,double>[2 * v8 + 1], v10).f64[0] + vaddvq_f64(vmulq_f64(geom::kdop_axes<(unsigned char)20,double>[2 * v8], v11));
    v13 = (a1 + 8 * v8);
    *&v138[v8 + 10] = *v13 - v12;
    *&v138[v8++] = v13[10] - v12;
  }

  while (v8 != 10);
  __p = 0;
  v136 = 0;
  v137 = 0;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(&__p, 0x14uLL);
  v16 = 0;
  v17 = -1;
  v18 = -1;
  do
  {
    v19 = *&v138[v16 + 10];
    v20 = v138[v16];
    if (v19 == *&v20)
    {
      v17 = v16;
    }

    else
    {
      v21 = v17;
      v17 = v16;
      if (vabdd_f64(v19, *&v20) > 0.000001)
      {
        v22 = &geom::kdop_axes<(unsigned char)20,double>[2 * v16];
        v121 = *v22;
        v124 = v22[1];
        v23 = vdupq_lane_s64(v20, 0);
        *__x = vdivq_f64(*v22, v23);
        v134 = vdivq_f64(v124, v23);
        v119 = *&v19;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&__p, __x);
        v24 = vdupq_lane_s64(v119, 0);
        *__x = vdivq_f64(v121, v24);
        v134 = vdivq_f64(v124, v24);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&__p, __x);
        v18 = v16;
        v17 = v21;
      }
    }

    ++v16;
  }

  while (v16 != 10);
  v25 = __p;
  v26 = (v136 - __p) >> 5;
  if (!v26)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, a2);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    goto LABEL_13;
  }

  if (v26 == 2)
  {
    v27 = &geom::kdop_axes<(unsigned char)20,double>[2 * v18];
    v122 = *v27;
    v125 = v27[1];
    v28 = *(a1 + 8 * v18);
    *__x = vmulq_n_f64(*v27, v28);
    v134 = vmulq_n_f64(v125, v28);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    v29 = *(v117 + 8 * v18);
    *__x = vmulq_n_f64(v122, v29);
    v134 = vmulq_n_f64(v125, v29);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    begin = a4->__begin_;
    begin[10] = 1;
    begin[7] = 1;
    begin[4] = 1;
LABEL_13:
    __x[0] = 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 6;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 9;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 12;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    goto LABEL_14;
  }

  if (v26 > 0x13)
  {
    geom::half_plane_intersection_3<double>(0x14uLL, __p, a3, &a4->__begin_, a5);
  }

  else
  {
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v31 = &geom::kdop_axes<(unsigned char)20,double>[2 * v17];
    v32 = *v31;
    v33 = v31[1];
    v34 = fabs(v33.f64[0]);
    if (v34 <= 2.22044605e-16)
    {
      *v15.i64 = -v32.f64[1];
      v36 = 0uLL;
      v35 = vzip1q_s64(v15, v32);
    }

    else
    {
      v35.f64[0] = 0.0;
      v35.f64[1] = -v33.f64[0];
      v36 = vdupq_laneq_s64(v32, 1);
    }

    v37 = vdupq_laneq_s64(v32, 1);
    v38 = vmulq_f64(v36, v36);
    v38.f64[0] = 1.0 / sqrt(v38.f64[0] + vaddvq_f64(vmulq_f64(v35, v35)));
    v39 = vmulq_f64(v36, v38);
    v40 = vmulq_n_f64(v35, v38.f64[0]);
    v41 = vextq_s8(v40, v40, 8uLL).u64[0];
    if (v34 <= 2.22044605e-16)
    {
      *v14.i64 = -v32.f64[1];
      v43 = 0uLL;
      v42 = vzip1q_s64(v14, v32);
    }

    else
    {
      v42.f64[0] = 0.0;
      v42.f64[1] = -v33.f64[0];
      v43 = v37;
    }

    v123 = v31[1];
    v126 = v39;
    v44 = vmulq_f64(v43, v43);
    v44.f64[0] = 1.0 / sqrt(v44.f64[0] + vaddvq_f64(vmulq_f64(v42, v42)));
    v45 = vmulq_n_f64(v42, v44.f64[0]);
    v46 = vmulq_f64(v43, v44);
    v47.f64[0] = v31[1].f64[0];
    v47.f64[1] = v31->f64[0];
    v48 = vnegq_f64(v33);
    v49 = vmlaq_laneq_f64(vmulq_laneq_f64(v48, v45, 1), v46, v32, 1);
    v46.f64[1] = v45.f64[0];
    v50 = vnegq_f64(v32);
    v51 = v47;
    v52 = vmlaq_f64(vmulq_f64(v46, v50), v45, v47);
    v53 = vmulq_f64(v52, v52);
    v47.f64[0] = vmulq_f64(v49, v49).f64[0];
    v49.f64[1] = v52.f64[0];
    v53.f64[0] = 1.0 / sqrt(v53.f64[1] + v47.f64[0] + v53.f64[0]);
    v54 = vmulq_n_f64(v49, v53.f64[0]);
    v55 = vextq_s8(v54, v54, 8uLL).u64[0];
    v120 = vmulq_laneq_f64(v53, v52, 1);
    v108 = v54.i64[0];
    v110 = v40.i64[0];
    v98 = v55;
    v99 = v41;
    if (v136 == __p)
    {
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v56 = 0;
      v40.i64[1] = v41;
      v54.i64[1] = v55;
      v102 = v54;
      v103 = v40;
      v101 = vdupq_lane_s64(*&v123.f64[0], 0);
      v50.i64[1] = vextq_s8(v50, v50, 8uLL).u64[0];
      v104 = v50;
      v105 = v48;
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u64[0];
      v106 = v51;
      v107 = v37;
      v118 = *v31;
      do
      {
        v57 = &v25[32 * v56];
        v112 = v57[1];
        v113 = *v57;
        v58.f64[0] = v57[1].f64[0];
        v58.f64[1] = v57->f64[0];
        v59 = vmlaq_f64(vmulq_f64(v58, v104), *v57, v106);
        v60 = vmlaq_f64(vmulq_laneq_f64(v48, *v57, 1), v112, v37);
        v61 = vmulq_f64(v59, v59);
        v62 = v59.f64[0];
        v115 = v59;
        v63.f64[0] = v60.f64[0];
        v61.f64[0] = 1.0 / sqrt(v61.f64[1] + vmulq_f64(v60, v60).f64[0] + v61.f64[0]);
        v116 = v61;
        v64 = vzip1q_s64(v118, *v57);
        v65 = vzip2q_s64(v118, *v57);
        v66 = vzip1q_s64(v123, v112);
        v139.columns[0] = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v64, v118.f64[0]), v37, v65), v101, v66);
        v139.columns[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v64, v57->f64[0]), v65, *v57, 1), v66, v112.f64[0]);
        v63.f64[1] = v62;
        v114 = v63;
        v67 = __invert_d2(v139);
        v68 = vmlaq_laneq_f64(vmulq_n_f64(v118, v67.columns[1].f64[0]), v113, v67.columns[1], 1);
        v69 = vmlaq_laneq_f64(vmulq_n_f64(v123, v67.columns[1].f64[0]), v112, v67.columns[1], 1);
        v70 = vmulq_n_f64(v114, v116.f64[0]);
        v71 = vmulq_laneq_f64(v116, v115, 1);
        v72 = vaddq_f64(vzip1q_s64(vmulq_f64(v126, v71), vmulq_f64(v120, v71)), vpaddq_f64(vmulq_f64(v103, v70), vmulq_f64(v102, v70)));
        v73 = vmulq_f64(v72, v72);
        v74 = vmulq_n_f64(v72, 1.0 / sqrt(vaddvq_f64(v73)));
        v73.f64[0] = -*&v74.i64[1];
        v75 = vzip1q_s64(v73, v74);
        v76 = vmulq_f64(v75, vaddq_f64(vzip1q_s64(vmulq_f64(v126, v69), vmulq_f64(v120, v69)), vpaddq_f64(vmulq_f64(v103, v68), vmulq_f64(v102, v68))));
        *__x = vdivq_f64(v75, vdupq_lane_s64(*&vaddq_f64(v76, vdupq_laneq_s64(v76, 1)), 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v130, __x);
        v48 = v105;
        v37 = v107;
        ++v56;
        v25 = __p;
      }

      while (v56 < (v136 - __p) >> 5);
      v77 = v130;
      v78 = v131;
    }

    v127 = 0;
    v128 = 0;
    v129 = 0;
    geom::half_plane_intersection_2<double>((v78 - v77) >> 4, v77, &v127);
    v79 = v127;
    v80 = v128;
    v81 = v126;
    *&v82.f64[0] = v108;
    *&v83.f64[0] = v110;
    if (v127 != v128)
    {
      *&v82.f64[1] = v98;
      *&v83.f64[1] = v99;
      v109 = v82;
      v111 = v83;
      do
      {
        v84 = *v79++;
        *__x = vmlaq_n_f64(vmulq_laneq_f64(v82, v84, 1), v83, v84.f64[0]);
        v134 = vmlaq_f64(vmulq_laneq_f64(v120, v84, 1), v84, v81);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
        v81 = v126;
        v82 = v109;
        v83 = v111;
      }

      while (v79 != v80);
    }

    std::vector<float>::resize(a4, a3[1] - *a3);
    v85 = a3[1] - *a3;
    if (v85)
    {
      v86 = 0;
      v87 = a4->__begin_;
      v88 = a4->__begin_ + (v85 >> 3);
      v89 = vdupq_n_s64(((v85 >> 3) - 4) >> 2);
      v90 = a4->__begin_ + 2;
      do
      {
        v91 = vdupq_n_s64(v86);
        v92 = vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1680)));
        if (vuzp1_s16(v92, *v89.i8).u8[0])
        {
          *(v90 - 2) = v86;
        }

        if (vuzp1_s16(v92, *&v89).i8[2])
        {
          *(v90 - 1) = v86 + 1;
        }

        if (vuzp1_s16(*&v89, vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1670)))).i32[1])
        {
          *v90 = v86 + 2;
          v90[1] = v86 + 3;
        }

        v86 += 4;
        v90 += 4;
      }

      while ((((((v85 >> 3) - 4) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL) != v86);
      v93 = a4->__end_ - 1;
      do
      {
        v94 = *v87++;
        *v93-- = v94;
      }

      while (v87 != v88);
    }

    __x[0] = v85 >> 5;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = ((a3[1] - *a3) >> 4) & 0xFFFFFFFE;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    if (v127)
    {
      v128 = v127;
      operator delete(v127);
    }

    if (v130)
    {
      v131 = v130;
      operator delete(v130);
    }
  }

  v95 = *a3;
  v96 = a3[1];
  while (v95 != v96)
  {
    v97 = vaddq_f64(a2[1], v95[1]);
    *v95 = vaddq_f64(*a2, *v95);
    v95[1] = v97;
    v95 += 2;
  }

LABEL_14:
  if (__p)
  {
    v136 = __p;
    operator delete(__p);
  }
}

void geom_dop26_polyhedron_3d(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v9 = geom::collection_to_vector<float>(a3);
  v10 = geom::collection_to_vector<float>(a4);
  v11 = geom::collection_to_vector<float>(a5);
  geom::dop<(unsigned char)26,double>::compute_polyhedron(a1, v12, v9, v10, v11);
}

void geom::dop<(unsigned char)26,double>::compute_polyhedron(uint64_t a1, float64x2_t *a2, float64x2_t **a3, std::vector<int> *a4, uint64_t a5)
{
  v8 = 0;
  v138[26] = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4->__end_ = a4->__begin_;
  *(a5 + 8) = *a5;
  v11 = *a2;
  v10 = a2[1];
  v117 = a1 + 112;
  do
  {
    v12 = vmulq_f64(geom::kdop_axes<(unsigned char)26,double>[2 * v8 + 1], v10).f64[0] + vaddvq_f64(vmulq_f64(geom::kdop_axes<(unsigned char)26,double>[2 * v8], v11));
    v13 = (a1 + 8 * v8);
    *&v138[v8 + 13] = *v13 - v12;
    *&v138[v8++] = v13[14] - v12;
  }

  while (v8 != 13);
  __p = 0;
  v136 = 0;
  v137 = 0;
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(&__p, 0x1AuLL);
  v16 = 0;
  v17 = -1;
  v18 = -1;
  do
  {
    v19 = *&v138[v16 + 13];
    v20 = v138[v16];
    if (v19 == *&v20)
    {
      v17 = v16;
    }

    else
    {
      v21 = v17;
      v17 = v16;
      if (vabdd_f64(v19, *&v20) > 0.000001)
      {
        v22 = &geom::kdop_axes<(unsigned char)26,double>[2 * v16];
        v121 = *v22;
        v124 = v22[1];
        v23 = vdupq_lane_s64(v20, 0);
        *__x = vdivq_f64(*v22, v23);
        v134 = vdivq_f64(v124, v23);
        v119 = *&v19;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&__p, __x);
        v24 = vdupq_lane_s64(v119, 0);
        *__x = vdivq_f64(v121, v24);
        v134 = vdivq_f64(v124, v24);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&__p, __x);
        v18 = v16;
        v17 = v21;
      }
    }

    ++v16;
  }

  while (v16 != 13);
  v25 = __p;
  v26 = (v136 - __p) >> 5;
  if (!v26)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, a2);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    goto LABEL_13;
  }

  if (v26 == 2)
  {
    v27 = &geom::kdop_axes<(unsigned char)26,double>[2 * v18];
    v122 = *v27;
    v125 = v27[1];
    v28 = *(a1 + 8 * v18);
    *__x = vmulq_n_f64(*v27, v28);
    v134 = vmulq_n_f64(v125, v28);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    v29 = *(v117 + 8 * v18);
    *__x = vmulq_n_f64(v122, v29);
    v134 = vmulq_n_f64(v125, v29);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
    __x[0] = 0;
    std::vector<unsigned int>::resize(a4, 0xCuLL, __x);
    begin = a4->__begin_;
    begin[10] = 1;
    begin[7] = 1;
    begin[4] = 1;
LABEL_13:
    __x[0] = 3;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 6;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 9;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = 12;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    goto LABEL_14;
  }

  if (v26 > 0x19)
  {
    geom::half_plane_intersection_3<double>(0x1AuLL, __p, a3, &a4->__begin_, a5);
  }

  else
  {
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v31 = &geom::kdop_axes<(unsigned char)26,double>[2 * v17];
    v32 = *v31;
    v33 = v31[1];
    v34 = fabs(v33.f64[0]);
    if (v34 <= 2.22044605e-16)
    {
      *v15.i64 = -v32.f64[1];
      v36 = 0uLL;
      v35 = vzip1q_s64(v15, v32);
    }

    else
    {
      v35.f64[0] = 0.0;
      v35.f64[1] = -v33.f64[0];
      v36 = vdupq_laneq_s64(v32, 1);
    }

    v37 = vdupq_laneq_s64(v32, 1);
    v38 = vmulq_f64(v36, v36);
    v38.f64[0] = 1.0 / sqrt(v38.f64[0] + vaddvq_f64(vmulq_f64(v35, v35)));
    v39 = vmulq_f64(v36, v38);
    v40 = vmulq_n_f64(v35, v38.f64[0]);
    v41 = vextq_s8(v40, v40, 8uLL).u64[0];
    if (v34 <= 2.22044605e-16)
    {
      *v14.i64 = -v32.f64[1];
      v43 = 0uLL;
      v42 = vzip1q_s64(v14, v32);
    }

    else
    {
      v42.f64[0] = 0.0;
      v42.f64[1] = -v33.f64[0];
      v43 = v37;
    }

    v123 = v31[1];
    v126 = v39;
    v44 = vmulq_f64(v43, v43);
    v44.f64[0] = 1.0 / sqrt(v44.f64[0] + vaddvq_f64(vmulq_f64(v42, v42)));
    v45 = vmulq_n_f64(v42, v44.f64[0]);
    v46 = vmulq_f64(v43, v44);
    v47.f64[0] = v31[1].f64[0];
    v47.f64[1] = v31->f64[0];
    v48 = vnegq_f64(v33);
    v49 = vmlaq_laneq_f64(vmulq_laneq_f64(v48, v45, 1), v46, v32, 1);
    v46.f64[1] = v45.f64[0];
    v50 = vnegq_f64(v32);
    v51 = v47;
    v52 = vmlaq_f64(vmulq_f64(v46, v50), v45, v47);
    v53 = vmulq_f64(v52, v52);
    v47.f64[0] = vmulq_f64(v49, v49).f64[0];
    v49.f64[1] = v52.f64[0];
    v53.f64[0] = 1.0 / sqrt(v53.f64[1] + v47.f64[0] + v53.f64[0]);
    v54 = vmulq_n_f64(v49, v53.f64[0]);
    v55 = vextq_s8(v54, v54, 8uLL).u64[0];
    v120 = vmulq_laneq_f64(v53, v52, 1);
    v108 = v54.i64[0];
    v110 = v40.i64[0];
    v98 = v55;
    v99 = v41;
    if (v136 == __p)
    {
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v56 = 0;
      v40.i64[1] = v41;
      v54.i64[1] = v55;
      v102 = v54;
      v103 = v40;
      v101 = vdupq_lane_s64(*&v123.f64[0], 0);
      v50.i64[1] = vextq_s8(v50, v50, 8uLL).u64[0];
      v104 = v50;
      v105 = v48;
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u64[0];
      v106 = v51;
      v107 = v37;
      v118 = *v31;
      do
      {
        v57 = &v25[32 * v56];
        v112 = v57[1];
        v113 = *v57;
        v58.f64[0] = v57[1].f64[0];
        v58.f64[1] = v57->f64[0];
        v59 = vmlaq_f64(vmulq_f64(v58, v104), *v57, v106);
        v60 = vmlaq_f64(vmulq_laneq_f64(v48, *v57, 1), v112, v37);
        v61 = vmulq_f64(v59, v59);
        v62 = v59.f64[0];
        v115 = v59;
        v63.f64[0] = v60.f64[0];
        v61.f64[0] = 1.0 / sqrt(v61.f64[1] + vmulq_f64(v60, v60).f64[0] + v61.f64[0]);
        v116 = v61;
        v64 = vzip1q_s64(v118, *v57);
        v65 = vzip2q_s64(v118, *v57);
        v66 = vzip1q_s64(v123, v112);
        v139.columns[0] = vmlaq_f64(vmlaq_f64(vmulq_n_f64(v64, v118.f64[0]), v37, v65), v101, v66);
        v139.columns[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v64, v57->f64[0]), v65, *v57, 1), v66, v112.f64[0]);
        v63.f64[1] = v62;
        v114 = v63;
        v67 = __invert_d2(v139);
        v68 = vmlaq_laneq_f64(vmulq_n_f64(v118, v67.columns[1].f64[0]), v113, v67.columns[1], 1);
        v69 = vmlaq_laneq_f64(vmulq_n_f64(v123, v67.columns[1].f64[0]), v112, v67.columns[1], 1);
        v70 = vmulq_n_f64(v114, v116.f64[0]);
        v71 = vmulq_laneq_f64(v116, v115, 1);
        v72 = vaddq_f64(vzip1q_s64(vmulq_f64(v126, v71), vmulq_f64(v120, v71)), vpaddq_f64(vmulq_f64(v103, v70), vmulq_f64(v102, v70)));
        v73 = vmulq_f64(v72, v72);
        v74 = vmulq_n_f64(v72, 1.0 / sqrt(vaddvq_f64(v73)));
        v73.f64[0] = -*&v74.i64[1];
        v75 = vzip1q_s64(v73, v74);
        v76 = vmulq_f64(v75, vaddq_f64(vzip1q_s64(vmulq_f64(v126, v69), vmulq_f64(v120, v69)), vpaddq_f64(vmulq_f64(v103, v68), vmulq_f64(v102, v68))));
        *__x = vdivq_f64(v75, vdupq_lane_s64(*&vaddq_f64(v76, vdupq_laneq_s64(v76, 1)), 0));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&v130, __x);
        v48 = v105;
        v37 = v107;
        ++v56;
        v25 = __p;
      }

      while (v56 < (v136 - __p) >> 5);
      v77 = v130;
      v78 = v131;
    }

    v127 = 0;
    v128 = 0;
    v129 = 0;
    geom::half_plane_intersection_2<double>((v78 - v77) >> 4, v77, &v127);
    v79 = v127;
    v80 = v128;
    v81 = v126;
    *&v82.f64[0] = v108;
    *&v83.f64[0] = v110;
    if (v127 != v128)
    {
      *&v82.f64[1] = v98;
      *&v83.f64[1] = v99;
      v109 = v82;
      v111 = v83;
      do
      {
        v84 = *v79++;
        *__x = vmlaq_n_f64(vmulq_laneq_f64(v82, v84, 1), v83, v84.f64[0]);
        v134 = vmlaq_f64(vmulq_laneq_f64(v120, v84, 1), v84, v81);
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a3, __x);
        v81 = v126;
        v82 = v109;
        v83 = v111;
      }

      while (v79 != v80);
    }

    std::vector<float>::resize(a4, a3[1] - *a3);
    v85 = a3[1] - *a3;
    if (v85)
    {
      v86 = 0;
      v87 = a4->__begin_;
      v88 = a4->__begin_ + (v85 >> 3);
      v89 = vdupq_n_s64(((v85 >> 3) - 4) >> 2);
      v90 = a4->__begin_ + 2;
      do
      {
        v91 = vdupq_n_s64(v86);
        v92 = vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1680)));
        if (vuzp1_s16(v92, *v89.i8).u8[0])
        {
          *(v90 - 2) = v86;
        }

        if (vuzp1_s16(v92, *&v89).i8[2])
        {
          *(v90 - 1) = v86 + 1;
        }

        if (vuzp1_s16(*&v89, vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, xmmword_2500C1670)))).i32[1])
        {
          *v90 = v86 + 2;
          v90[1] = v86 + 3;
        }

        v86 += 4;
        v90 += 4;
      }

      while ((((((v85 >> 3) - 4) >> 2) + 4) & 0x7FFFFFFFFFFFFFFCLL) != v86);
      v93 = a4->__end_ - 1;
      do
      {
        v94 = *v87++;
        *v93-- = v94;
      }

      while (v87 != v88);
    }

    __x[0] = v85 >> 5;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    __x[0] = ((a3[1] - *a3) >> 4) & 0xFFFFFFFE;
    std::vector<unsigned int>::push_back[abi:nn200100](a5, __x);
    if (v127)
    {
      v128 = v127;
      operator delete(v127);
    }

    if (v130)
    {
      v131 = v130;
      operator delete(v130);
    }
  }

  v95 = *a3;
  v96 = a3[1];
  while (v95 != v96)
  {
    v97 = vaddq_f64(a2[1], v95[1]);
    *v95 = vaddq_f64(*a2, *v95);
    v95[1] = v97;
    v95 += 2;
  }

LABEL_14:
  if (__p)
  {
    v136 = __p;
    operator delete(__p);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(int32x2_t *a1, int32x2_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 2;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return;
    }

    if (v12 == 2)
    {
      v29 = **a3;
      v30 = *a3[1];
      v31 = *(v29 + 8 * a2[-1].u32[1]);
      v32 = *(v29 + 8 * v9->u32[0]);
      v33 = _simd_orient_pf2(v30, v31, v32);
      if (v33 == 0.0)
      {
        v34 = vsub_f32(v31, v30);
        v35 = vmul_f32(v34, v34);
        v36 = vsub_f32(v32, v30);
        v37 = vmul_f32(v36, v36);
        v38 = vadd_f32(vzip1_s32(v35, v37), vzip2_s32(v35, v37));
        if ((vcgt_f32(vdup_lane_s32(v38, 1), v38).u32[0] & 1) == 0)
        {
          return;
        }

LABEL_52:
        v49 = v9->i32[0];
        v9->i32[0] = a2[-1].i32[1];
        a2[-1].i32[1] = v49;
        return;
      }

      if (v33 > 0.0)
      {
        goto LABEL_52;
      }

      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v9, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = v9 + (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v9 + (v12 >> 1), v9, &a2[-1] + 1, a3);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v9, v9 + (v12 >> 1), &a2[-1] + 1, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v9 + 1, v14 - 1, &a2[-1], a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(&v9[1], v9 + v13 + 1, &a2[-2] + 1, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v14 - 1, v14, v9 + v13 + 1, a3);
      v15 = v9->i32[0];
      v9->i32[0] = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v16 = **a3;
    v17 = *a3[1];
    v18 = *(v16 + 8 * v9[-1].u32[1]);
    v19 = *(v16 + 8 * v9->u32[0]);
    v20 = _simd_orient_pf2(v17, v18, v19);
    if (v20 == 0.0)
    {
      v21 = vsub_f32(v18, v17);
      v22 = vmul_f32(v21, v21);
      v23 = vsub_f32(v19, v17);
      v24 = vmul_f32(v23, v23);
      v25 = vadd_f32(vzip1_s32(v22, v24), vzip2_s32(v22, v24));
      if ((vcgt_f32(vdup_lane_s32(v25, 1), v25).u8[0] & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (v20 <= 0.0)
    {
LABEL_24:
      v9 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &>(v9, a2, a3);
      goto LABEL_25;
    }

LABEL_20:
    v26 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &>(v9, a2, a3);
    if ((v27 & 1) == 0)
    {
      goto LABEL_23;
    }

    v28 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v9, v26, a3);
    v9 = (v26 + 1);
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>((v26 + 1), a2, a3))
    {
      a4 = -v11;
      a2 = v26;
      if (v28)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v28)
    {
LABEL_23:
      std::__introsort<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(a1, v26, a3, -v11, a5 & 1);
      v9 = (v26 + 1);
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v12 == 3)
  {

    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v9, v9 + 1, &a2[-1] + 1, a3);
    return;
  }

  if (v12 != 4)
  {
    if (v12 == 5)
    {

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v9, v9 + 1, &v9[1], &v9[1] + 1, &a2[-1] + 1, a3);
      return;
    }

    goto LABEL_10;
  }

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v9, v9 + 1, &v9[1], a3);
  v39 = **a3;
  v40 = *a3[1];
  v41 = *(v39 + 8 * a2[-1].u32[1]);
  v42 = *(v39 + 8 * v9[1].u32[0]);
  v43 = _simd_orient_pf2(v40, v41, v42);
  if (v43 == 0.0)
  {
    v44 = vsub_f32(v41, v40);
    v45 = vmul_f32(v44, v44);
    v46 = vsub_f32(v42, v40);
    v47 = vmul_f32(v46, v46);
    v48 = vadd_f32(vzip1_s32(v45, v47), vzip2_s32(v45, v47));
    if ((vcgt_f32(vdup_lane_s32(v48, 1), v48).u32[0] & 1) == 0)
    {
      return;
    }
  }

  else if (v43 <= 0.0)
  {
    return;
  }

  v50 = v9[1].i32[0];
  v9[1].i32[0] = a2[-1].i32[1];
  a2[-1].i32[1] = v50;
  v51 = **a3;
  v52 = *a3[1];
  v53 = *(v51 + 8 * v9[1].u32[0]);
  v54 = *(v51 + 8 * v9->u32[1]);
  v55 = _simd_orient_pf2(v52, v53, v54);
  if (v55 == 0.0)
  {
    v56 = vsub_f32(v53, v52);
    v57 = vmul_f32(v56, v56);
    v58 = vsub_f32(v54, v52);
    v59 = vmul_f32(v58, v58);
    v60 = vadd_f32(vzip1_s32(v57, v59), vzip2_s32(v57, v59));
    if ((vcgt_f32(vdup_lane_s32(v60, 1), v60).u32[0] & 1) == 0)
    {
      return;
    }
  }

  else if (v55 <= 0.0)
  {
    return;
  }

  v62 = v9->i32[1];
  v61 = v9[1].u32[0];
  v63 = v9->u32[0];
  v9->i32[1] = v61;
  v9[1].i32[0] = v62;
  v64 = **a3;
  v65 = *a3[1];
  v66 = *(v64 + 8 * v61);
  v67 = *(v64 + 8 * v63);
  v68 = _simd_orient_pf2(v65, v66, v67);
  if (v68 == 0.0)
  {
    v69 = vsub_f32(v66, v65);
    v70 = vmul_f32(v69, v69);
    v71 = vsub_f32(v67, v65);
    v72 = vmul_f32(v71, v71);
    v73 = vadd_f32(vzip1_s32(v70, v72), vzip2_s32(v70, v72));
    if ((vcgt_f32(vdup_lane_s32(v73, 1), v73).u32[0] & 1) == 0)
    {
      return;
    }
  }

  else if (v68 <= 0.0)
  {
    return;
  }

  *v9 = vrev64_s32(*v9);
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t **a4)
{
  v6 = a2;
  v7 = a1;
  v8 = **a4;
  v9 = *a4[1];
  v10 = *(v8 + 8 * *a2);
  v11 = *(v8 + 8 * *a1);
  v12 = _simd_orient_pf2(v9, v10, v11);
  if (v12 != 0.0)
  {
    if (v12 > 0.0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v28 = **a4;
    v29 = *a4[1];
    v30 = *(v28 + 8 * *a3);
    v31 = *(v28 + 8 * *v6);
    v32 = _simd_orient_pf2(v29, v30, v31);
    if (v32 == 0.0)
    {
      v33 = vsub_f32(v30, v29);
      v34 = vmul_f32(v33, v33);
      v35 = vsub_f32(v31, v29);
      v36 = vmul_f32(v35, v35);
      v37 = vadd_f32(vzip1_s32(v34, v36), vzip2_s32(v34, v36));
      if (vcgt_f32(vdup_lane_s32(v37, 1), v37).u32[0])
      {
        goto LABEL_9;
      }
    }

    else if (v32 > 0.0)
    {
LABEL_9:
      v38 = *v6;
      *v6 = *a3;
      *a3 = v38;
      v39 = **a4;
      v40 = *a4[1];
      v41 = *(v39 + 8 * *v6);
      v42 = *(v39 + 8 * *v7);
      v43 = _simd_orient_pf2(v40, v41, v42);
      v44 = v43 <= 0.0;
      if (v43 == 0.0)
      {
        v45 = vsub_f32(v41, v40);
        v46 = vmul_f32(v45, v45);
        v47 = vsub_f32(v42, v40);
        v48 = vmul_f32(v47, v47);
        v49 = vadd_f32(vzip1_s32(v46, v48), vzip2_s32(v46, v48));
        if ((vcgt_f32(vdup_lane_s32(v49, 1), v49).u32[0] & 1) == 0)
        {
          return 1;
        }

        goto LABEL_20;
      }

      goto LABEL_19;
    }

    return 0;
  }

  v13 = vsub_f32(v10, v9);
  v14 = vmul_f32(v13, v13);
  v15 = vsub_f32(v11, v9);
  v16 = vmul_f32(v15, v15);
  v17 = vadd_f32(vzip1_s32(v14, v16), vzip2_s32(v14, v16));
  if ((vcgt_f32(vdup_lane_s32(v17, 1), v17).u8[0] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v18 = **a4;
  v19 = *a4[1];
  v20 = *(v18 + 8 * *a3);
  v21 = *(v18 + 8 * *v6);
  v22 = _simd_orient_pf2(v19, v20, v21);
  if (v22 == 0.0)
  {
    v23 = vsub_f32(v20, v19);
    v24 = vmul_f32(v23, v23);
    v25 = vsub_f32(v21, v19);
    v26 = vmul_f32(v25, v25);
    v27 = vadd_f32(vzip1_s32(v24, v26), vzip2_s32(v24, v26));
    if (vcgt_f32(vdup_lane_s32(v27, 1), v27).u32[0])
    {
LABEL_5:
      v6 = a3;
LABEL_20:
      v62 = *v7;
      *v7 = *v6;
      *v6 = v62;
      return 1;
    }
  }

  else if (v22 > 0.0)
  {
    goto LABEL_5;
  }

  v50 = *v7;
  *v7 = *v6;
  *v6 = v50;
  v51 = **a4;
  v52 = *a4[1];
  v53 = *(v51 + 8 * *a3);
  v54 = *(v51 + 8 * v50);
  v55 = _simd_orient_pf2(v52, v53, v54);
  v44 = v55 <= 0.0;
  if (v55 == 0.0)
  {
    v56 = vsub_f32(v53, v52);
    v57 = vmul_f32(v56, v56);
    v58 = vsub_f32(v54, v52);
    v59 = vmul_f32(v58, v58);
    v60 = vadd_f32(vzip1_s32(v57, v59), vzip2_s32(v57, v59));
    v7 = v6;
    v6 = a3;
    if ((vcgt_f32(vdup_lane_s32(v60, 1), v60).u32[0] & 1) == 0)
    {
      return 1;
    }

    goto LABEL_20;
  }

  v7 = v6;
  v6 = a3;
LABEL_19:
  if (!v44)
  {
    goto LABEL_20;
  }

  return 1;
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t **a6)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a2, a3, a6);
  v12 = **a6;
  v13 = *a6[1];
  v14 = *(v12 + 8 * *a4);
  v15 = *(v12 + 8 * *a3);
  v16 = _simd_orient_pf2(v13, v14, v15);
  if (v16 == 0.0)
  {
    v17 = vsub_f32(v14, v13);
    v18 = vmul_f32(v17, v17);
    v19 = vsub_f32(v15, v13);
    v20 = vmul_f32(v19, v19);
    v21 = vadd_f32(vzip1_s32(v18, v20), vzip2_s32(v18, v20));
    if ((vcgt_f32(vdup_lane_s32(v21, 1), v21).u8[0] & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v16 <= 0.0)
  {
    goto LABEL_12;
  }

  v22 = *a3;
  *a3 = *a4;
  *a4 = v22;
  v23 = **a6;
  v24 = *a6[1];
  v25 = *(v23 + 8 * *a3);
  v26 = *(v23 + 8 * *a2);
  v27 = _simd_orient_pf2(v24, v25, v26);
  if (v27 == 0.0)
  {
    v28 = vsub_f32(v25, v24);
    v29 = vmul_f32(v28, v28);
    v30 = vsub_f32(v26, v24);
    v31 = vmul_f32(v30, v30);
    v32 = vadd_f32(vzip1_s32(v29, v31), vzip2_s32(v29, v31));
    if ((vcgt_f32(vdup_lane_s32(v32, 1), v32).u8[0] & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v27 <= 0.0)
  {
    goto LABEL_12;
  }

  v33 = *a2;
  *a2 = *a3;
  *a3 = v33;
  v34 = **a6;
  v35 = *a6[1];
  v36 = *(v34 + 8 * *a2);
  v37 = *(v34 + 8 * *a1);
  v38 = _simd_orient_pf2(v35, v36, v37);
  if (v38 == 0.0)
  {
    v39 = vsub_f32(v36, v35);
    v40 = vmul_f32(v39, v39);
    v41 = vsub_f32(v37, v35);
    v42 = vmul_f32(v41, v41);
    v43 = vadd_f32(vzip1_s32(v40, v42), vzip2_s32(v40, v42));
    if ((vcgt_f32(vdup_lane_s32(v43, 1), v43).u8[0] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v38 > 0.0)
  {
LABEL_11:
    v44 = *a1;
    *a1 = *a2;
    *a2 = v44;
  }

LABEL_12:
  v45 = **a6;
  v46 = *a6[1];
  v47 = *(v45 + 8 * *a5);
  v48 = *(v45 + 8 * *a4);
  v49 = _simd_orient_pf2(v46, v47, v48);
  if (v49 == 0.0)
  {
    v50 = vsub_f32(v47, v46);
    v51 = vmul_f32(v50, v50);
    v52 = vsub_f32(v48, v46);
    v53 = vmul_f32(v52, v52);
    v54 = vadd_f32(vzip1_s32(v51, v53), vzip2_s32(v51, v53));
    if ((vcgt_f32(vdup_lane_s32(v54, 1), v54).u32[0] & 1) == 0)
    {
      return;
    }
  }

  else if (v49 <= 0.0)
  {
    return;
  }

  v55 = *a4;
  *a4 = *a5;
  *a5 = v55;
  v56 = **a6;
  v57 = *a6[1];
  v58 = *(v56 + 8 * *a4);
  v59 = *(v56 + 8 * *a3);
  v60 = _simd_orient_pf2(v57, v58, v59);
  if (v60 == 0.0)
  {
    v61 = vsub_f32(v58, v57);
    v62 = vmul_f32(v61, v61);
    v63 = vsub_f32(v59, v57);
    v64 = vmul_f32(v63, v63);
    v65 = vadd_f32(vzip1_s32(v62, v64), vzip2_s32(v62, v64));
    if ((vcgt_f32(vdup_lane_s32(v65, 1), v65).u32[0] & 1) == 0)
    {
      return;
    }
  }

  else if (v60 <= 0.0)
  {
    return;
  }

  v66 = *a3;
  *a3 = *a4;
  *a4 = v66;
  v67 = **a6;
  v68 = *a6[1];
  v69 = *(v67 + 8 * *a3);
  v70 = *(v67 + 8 * *a2);
  v71 = _simd_orient_pf2(v68, v69, v70);
  if (v71 == 0.0)
  {
    v72 = vsub_f32(v69, v68);
    v73 = vmul_f32(v72, v72);
    v74 = vsub_f32(v70, v68);
    v75 = vmul_f32(v74, v74);
    v76 = vadd_f32(vzip1_s32(v73, v75), vzip2_s32(v73, v75));
    if ((vcgt_f32(vdup_lane_s32(v76, 1), v76).u32[0] & 1) == 0)
    {
      return;
    }
  }

  else if (v71 <= 0.0)
  {
    return;
  }

  v77 = *a2;
  *a2 = *a3;
  *a3 = v77;
  v78 = **a6;
  v79 = *a6[1];
  v80 = *(v78 + 8 * *a2);
  v81 = *(v78 + 8 * *a1);
  v82 = _simd_orient_pf2(v79, v80, v81);
  if (v82 == 0.0)
  {
    v83 = vsub_f32(v80, v79);
    v84 = vmul_f32(v83, v83);
    v85 = vsub_f32(v81, v79);
    v86 = vmul_f32(v85, v85);
    v87 = vadd_f32(vzip1_s32(v84, v86), vzip2_s32(v84, v86));
    if ((vcgt_f32(vdup_lane_s32(v87, 1), v87).u32[0] & 1) == 0)
    {
      return;
    }
  }

  else if (v82 <= 0.0)
  {
    return;
  }

  v88 = *a1;
  *a1 = *a2;
  *a2 = v88;
}

void std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  if (a1 == a2)
  {
    return;
  }

  v5 = a1 + 1;
  if (a1 + 1 == a2)
  {
    return;
  }

  v7 = 0;
  v8 = a1;
  do
  {
    v9 = v8;
    v8 = v5;
    v10 = **a3;
    v11 = *a3[1];
    v12 = *(v10 + 8 * v9[1]);
    v13 = *(v10 + 8 * *v9);
    v14 = _simd_orient_pf2(v11, v12, v13);
    if (v14 == 0.0)
    {
      v15 = vsub_f32(v12, v11);
      v16 = vmul_f32(v15, v15);
      v17 = vsub_f32(v13, v11);
      v18 = vmul_f32(v17, v17);
      v19 = vadd_f32(vzip1_s32(v16, v18), vzip2_s32(v16, v18));
      if ((vcgt_f32(vdup_lane_s32(v19, 1), v19).u32[0] & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v14 <= 0.0)
    {
      goto LABEL_18;
    }

    v20 = v9[1];
    v9[1] = *v9;
    v21 = a1;
    if (v9 == a1)
    {
      goto LABEL_17;
    }

    v22 = v7;
    while (1)
    {
      v23 = **a3;
      v24 = *a3[1];
      v25 = *(v23 + 8 * v20);
      v26 = *(v23 + 8 * *(a1 + v22 - 4));
      v27 = _simd_orient_pf2(v24, v25, v26);
      if (v27 == 0.0)
      {
        v28 = vsub_f32(v25, v24);
        v29 = vmul_f32(v28, v28);
        v30 = vsub_f32(v26, v24);
        v31 = vmul_f32(v30, v30);
        v32 = vadd_f32(vzip1_s32(v29, v31), vzip2_s32(v29, v31));
        if ((vcgt_f32(vdup_lane_s32(v32, 1), v32).u32[0] & 1) == 0)
        {
          v21 = v9;
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      if (v27 <= 0.0)
      {
        break;
      }

LABEL_14:
      --v9;
      *(a1 + v22) = *(a1 + v22 - 4);
      v22 -= 4;
      if (!v22)
      {
        v21 = a1;
        goto LABEL_17;
      }
    }

    v21 = (a1 + v22);
LABEL_17:
    *v21 = v20;
LABEL_18:
    v5 = v8 + 1;
    v7 += 4;
  }

  while (v8 + 1 != a2);
}

void std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    for (i = a1 + 1; v4 + 1 != a2; i = v4 + 1)
    {
      v7 = v4;
      v4 = i;
      v8 = **a3;
      v9 = *a3[1];
      v10 = *(v8 + 8 * v7[1]);
      v11 = *(v8 + 8 * *v7);
      v12 = _simd_orient_pf2(v9, v10, v11);
      if (v12 == 0.0)
      {
        v13 = vsub_f32(v10, v9);
        v14 = vmul_f32(v13, v13);
        v15 = vsub_f32(v11, v9);
        v16 = vmul_f32(v15, v15);
        v17 = vadd_f32(vzip1_s32(v14, v16), vzip2_s32(v14, v16));
        if (vcgt_f32(vdup_lane_s32(v17, 1), v17).u32[0])
        {
          goto LABEL_7;
        }
      }

      else if (v12 > 0.0)
      {
LABEL_7:
        v18 = *v4;
        do
        {
          while (1)
          {
            v19 = v7;
            v7[1] = *v7;
            v20 = *--v7;
            v21 = **a3;
            v22 = *a3[1];
            v23 = *(v21 + 8 * v18);
            v24 = *(v21 + 8 * v20);
            v25 = _simd_orient_pf2(v22, v23, v24);
            if (v25 != 0.0)
            {
              break;
            }

            v26 = vsub_f32(v23, v22);
            v27 = vmul_f32(v26, v26);
            v28 = vsub_f32(v24, v22);
            v29 = vmul_f32(v28, v28);
            v30 = vadd_f32(vzip1_s32(v27, v29), vzip2_s32(v27, v29));
            if ((vcgt_f32(vdup_lane_s32(v30, 1), v30).u32[0] & 1) == 0)
            {
              goto LABEL_12;
            }
          }
        }

        while (v25 > 0.0);
LABEL_12:
        *v19 = v18;
      }
    }
  }
}

unsigned int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = **a3;
  v8 = *a3[1];
  v9 = *(v7 + 8 * *a1);
  v10 = *(v7 + 8 * *(a2 - 1));
  v11 = _simd_orient_pf2(v8, v9, v10);
  if (v11 == 0.0)
  {
    v12 = vsub_f32(v9, v8);
    v13 = vmul_f32(v12, v12);
    v14 = vsub_f32(v10, v8);
    v15 = vmul_f32(v14, v14);
    v16 = vadd_f32(vzip1_s32(v13, v15), vzip2_s32(v13, v15));
    if (vcgt_f32(vdup_lane_s32(v16, 1), v16).u32[0])
    {
LABEL_3:
      for (i = a1 + 1; ; ++i)
      {
        v18 = **a3;
        v19 = *a3[1];
        v20 = *(v18 + 8 * v6);
        v21 = *(v18 + 8 * *i);
        v22 = _simd_orient_pf2(v19, v20, v21);
        if (v22 == 0.0)
        {
          v23 = vsub_f32(v20, v19);
          v24 = vmul_f32(v23, v23);
          v25 = vsub_f32(v21, v19);
          v26 = vmul_f32(v25, v25);
          v27 = vadd_f32(vzip1_s32(v24, v26), vzip2_s32(v24, v26));
          if (vcgt_f32(vdup_lane_s32(v27, 1), v27).u32[0])
          {
            goto LABEL_17;
          }
        }

        else if (v22 > 0.0)
        {
          goto LABEL_17;
        }
      }
    }
  }

  else if (v11 > 0.0)
  {
    goto LABEL_3;
  }

  for (i = a1 + 1; i < v4; ++i)
  {
    v28 = **a3;
    v29 = *a3[1];
    v30 = *(v28 + 8 * v6);
    v31 = *(v28 + 8 * *i);
    v32 = _simd_orient_pf2(v29, v30, v31);
    if (v32 == 0.0)
    {
      v33 = vsub_f32(v30, v29);
      v34 = vmul_f32(v33, v33);
      v35 = vsub_f32(v31, v29);
      v36 = vmul_f32(v35, v35);
      v37 = vadd_f32(vzip1_s32(v34, v36), vzip2_s32(v34, v36));
      if (vcgt_f32(vdup_lane_s32(v37, 1), v37).u32[0])
      {
        break;
      }
    }

    else if (v32 > 0.0)
    {
      break;
    }
  }

LABEL_17:
  if (i >= v4)
  {
    goto LABEL_32;
  }

  do
  {
    while (1)
    {
      v38 = *--v4;
      v39 = **a3;
      v40 = *a3[1];
      v41 = *(v39 + 8 * v6);
      v42 = *(v39 + 8 * v38);
      v43 = _simd_orient_pf2(v40, v41, v42);
      if (v43 != 0.0)
      {
        break;
      }

      v44 = vsub_f32(v41, v40);
      v45 = vmul_f32(v44, v44);
      v46 = vsub_f32(v42, v40);
      v47 = vmul_f32(v46, v46);
      v48 = vadd_f32(vzip1_s32(v45, v47), vzip2_s32(v45, v47));
      if ((vcgt_f32(vdup_lane_s32(v48, 1), v48).u32[0] & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  while (v43 > 0.0);
LABEL_32:
  if (i < v4)
  {
    v49 = *i;
    *i++ = *v4;
    *v4 = v49;
    while (1)
    {
      v50 = **a3;
      v51 = *a3[1];
      v52 = *(v50 + 8 * v6);
      v53 = *(v50 + 8 * *i);
      v54 = _simd_orient_pf2(v51, v52, v53);
      if (v54 == 0.0)
      {
        v55 = vsub_f32(v52, v51);
        v56 = vmul_f32(v55, v55);
        v57 = vsub_f32(v53, v51);
        v58 = vmul_f32(v57, v57);
        v59 = vadd_f32(vzip1_s32(v56, v58), vzip2_s32(v56, v58));
        if (vcgt_f32(vdup_lane_s32(v59, 1), v59).u8[0])
        {
          do
          {
LABEL_30:
            while (1)
            {
              v60 = *--v4;
              v61 = **a3;
              v62 = *a3[1];
              v63 = *(v61 + 8 * v6);
              v64 = *(v61 + 8 * v60);
              v65 = _simd_orient_pf2(v62, v63, v64);
              if (v65 == 0.0)
              {
                break;
              }

              if (v65 <= 0.0)
              {
                goto LABEL_32;
              }
            }

            v66 = vsub_f32(v63, v62);
            v67 = vmul_f32(v66, v66);
            v68 = vsub_f32(v64, v62);
            v69 = vmul_f32(v68, v68);
            v70 = vadd_f32(vzip1_s32(v67, v69), vzip2_s32(v67, v69));
          }

          while ((vcgt_f32(vdup_lane_s32(v70, 1), v70).u32[0] & 1) != 0);
          goto LABEL_32;
        }
      }

      else if (v54 > 0.0)
      {
        goto LABEL_30;
      }

      ++i;
    }
  }

  if (i - 1 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 1) = v6;
  return i;
}

unsigned int *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v6 = 0;
  v7 = *a1;
  while (1)
  {
    v8 = **a3;
    v9 = *a3[1];
    v10 = *(v8 + 8 * a1[v6 + 1]);
    v11 = *(v8 + 8 * v7);
    v12 = _simd_orient_pf2(v9, v10, v11);
    if (v12 != 0.0)
    {
      break;
    }

    v13 = vsub_f32(v10, v9);
    v14 = vmul_f32(v13, v13);
    v15 = vsub_f32(v11, v9);
    v16 = vmul_f32(v15, v15);
    v17 = vadd_f32(vzip1_s32(v14, v16), vzip2_s32(v14, v16));
    if ((vcgt_f32(vdup_lane_s32(v17, 1), v17).u32[0] & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    ++v6;
  }

  if (v12 > 0.0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v18 = &a1[v6];
  v19 = &a1[v6 + 1];
  if (v6 * 4)
  {
    do
    {
      while (1)
      {
        v20 = *--a2;
        v21 = **a3;
        v22 = *a3[1];
        v23 = *(v21 + 8 * v20);
        v24 = *(v21 + 8 * v7);
        v25 = _simd_orient_pf2(v22, v23, v24);
        if (v25 != 0.0)
        {
          break;
        }

        v26 = vsub_f32(v23, v22);
        v27 = vmul_f32(v26, v26);
        v28 = vsub_f32(v24, v22);
        v29 = vmul_f32(v28, v28);
        v30 = vadd_f32(vzip1_s32(v27, v29), vzip2_s32(v27, v29));
        if (vcgt_f32(vdup_lane_s32(v30, 1), v30).u32[0])
        {
          goto LABEL_22;
        }
      }
    }

    while (v25 <= 0.0);
  }

  else
  {
    do
    {
      if (v19 >= a2)
      {
        break;
      }

      while (1)
      {
        v31 = *--a2;
        v32 = **a3;
        v33 = *a3[1];
        v34 = *(v32 + 8 * v31);
        v35 = *(v32 + 8 * v7);
        v36 = _simd_orient_pf2(v33, v34, v35);
        if (v36 == 0.0)
        {
          break;
        }

        if (v36 > 0.0 || v19 >= a2)
        {
          goto LABEL_22;
        }
      }

      v38 = vsub_f32(v34, v33);
      v39 = vmul_f32(v38, v38);
      v40 = vsub_f32(v35, v33);
      v41 = vmul_f32(v40, v40);
      v42 = vadd_f32(vzip1_s32(v39, v41), vzip2_s32(v39, v41));
    }

    while ((vmvn_s8(vcgt_f32(vdup_lane_s32(v42, 1), v42)).u32[0] & 1) != 0);
  }

LABEL_22:
  if (v19 >= a2)
  {
    goto LABEL_35;
  }

  v43 = &a1[v6 + 1];
  v44 = a2;
  while (2)
  {
    v45 = *v43;
    *v43++ = *v44;
    *v44 = v45;
    while (2)
    {
      v46 = **a3;
      v47 = *a3[1];
      v48 = *(v46 + 8 * *v43);
      v49 = *(v46 + 8 * v7);
      v50 = _simd_orient_pf2(v47, v48, v49);
      if (v50 != 0.0)
      {
        if (v50 <= 0.0)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      v51 = vsub_f32(v48, v47);
      v52 = vmul_f32(v51, v51);
      v53 = vsub_f32(v49, v47);
      v54 = vmul_f32(v53, v53);
      v55 = vadd_f32(vzip1_s32(v52, v54), vzip2_s32(v52, v54));
      if (vcgt_f32(vdup_lane_s32(v55, 1), v55).u8[0])
      {
LABEL_29:
        ++v43;
        continue;
      }

      break;
    }

    do
    {
LABEL_31:
      while (1)
      {
        v56 = *--v44;
        v57 = **a3;
        v58 = *a3[1];
        v59 = *(v57 + 8 * v56);
        v60 = *(v57 + 8 * v7);
        v61 = _simd_orient_pf2(v58, v59, v60);
        if (v61 == 0.0)
        {
          break;
        }

        if (v61 > 0.0)
        {
          goto LABEL_33;
        }
      }

      v62 = vsub_f32(v59, v58);
      v63 = vmul_f32(v62, v62);
      v64 = vsub_f32(v60, v58);
      v65 = vmul_f32(v64, v64);
      v66 = vadd_f32(vzip1_s32(v63, v65), vzip2_s32(v63, v65));
    }

    while ((vcgt_f32(vdup_lane_s32(v66, 1), v66).u32[0] & 1) == 0);
LABEL_33:
    if (v43 < v44)
    {
      continue;
    }

    break;
  }

  v18 = v43 - 1;
LABEL_35:
  if (v18 != a1)
  {
    *a1 = *v18;
  }

  *v18 = v7;
  return v18;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(int32x2_t *a1, int32x2_t *a2, uint64_t **a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, &a2[-1] + 1, a3);
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, &a1[1], &a1[1] + 1, &a2[-1] + 1, a3);
        return 1;
      }

      goto LABEL_12;
    }

    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, &a1[1], a3);
    v44 = **a3;
    v45 = *a3[1];
    v46 = *(v44 + 8 * a2[-1].u32[1]);
    v47 = *(v44 + 8 * a1[1].u32[0]);
    v48 = _simd_orient_pf2(v45, v46, v47);
    if (v48 == 0.0)
    {
      v49 = vsub_f32(v46, v45);
      v50 = vmul_f32(v49, v49);
      v51 = vsub_f32(v47, v45);
      v52 = vmul_f32(v51, v51);
      v53 = vadd_f32(vzip1_s32(v50, v52), vzip2_s32(v50, v52));
      if ((vcgt_f32(vdup_lane_s32(v53, 1), v53).u32[0] & 1) == 0)
      {
        return 1;
      }
    }

    else if (v48 <= 0.0)
    {
      return 1;
    }

    v55 = a1[1].i32[0];
    a1[1].i32[0] = a2[-1].i32[1];
    a2[-1].i32[1] = v55;
    v56 = **a3;
    v57 = *a3[1];
    v58 = *(v56 + 8 * a1[1].u32[0]);
    v59 = *(v56 + 8 * a1->u32[1]);
    v60 = _simd_orient_pf2(v57, v58, v59);
    if (v60 == 0.0)
    {
      v61 = vsub_f32(v58, v57);
      v62 = vmul_f32(v61, v61);
      v63 = vsub_f32(v59, v57);
      v64 = vmul_f32(v63, v63);
      v65 = vadd_f32(vzip1_s32(v62, v64), vzip2_s32(v62, v64));
      if ((vcgt_f32(vdup_lane_s32(v65, 1), v65).u32[0] & 1) == 0)
      {
        return 1;
      }
    }

    else if (v60 <= 0.0)
    {
      return 1;
    }

    v68 = a1->i32[1];
    v67 = a1[1].u32[0];
    v69 = a1->u32[0];
    a1->i32[1] = v67;
    a1[1].i32[0] = v68;
    v70 = **a3;
    v71 = *a3[1];
    v72 = *(v70 + 8 * v67);
    v73 = *(v70 + 8 * v69);
    v74 = _simd_orient_pf2(v71, v72, v73);
    if (v74 == 0.0)
    {
      v75 = vsub_f32(v72, v71);
      v76 = vmul_f32(v75, v75);
      v77 = vsub_f32(v73, v71);
      v78 = vmul_f32(v77, v77);
      v79 = vadd_f32(vzip1_s32(v76, v78), vzip2_s32(v76, v78));
      if ((vcgt_f32(vdup_lane_s32(v79, 1), v79).u32[0] & 1) == 0)
      {
        return 1;
      }
    }

    else if (v74 <= 0.0)
    {
      return 1;
    }

    *a1 = vrev64_s32(*a1);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = **a3;
    v8 = *a3[1];
    v9 = *(v7 + 8 * a2[-1].u32[1]);
    v10 = *(v7 + 8 * a1->u32[0]);
    v11 = _simd_orient_pf2(v8, v9, v10);
    if (v11 == 0.0)
    {
      v12 = vsub_f32(v9, v8);
      v13 = vmul_f32(v12, v12);
      v14 = vsub_f32(v10, v8);
      v15 = vmul_f32(v14, v14);
      v16 = vadd_f32(vzip1_s32(v13, v15), vzip2_s32(v13, v15));
      if ((vcgt_f32(vdup_lane_s32(v16, 1), v16).u32[0] & 1) == 0)
      {
        return 1;
      }
    }

    else if (v11 <= 0.0)
    {
      return 1;
    }

    v54 = a1->i32[0];
    a1->i32[0] = a2[-1].i32[1];
    a2[-1].i32[1] = v54;
    return 1;
  }

LABEL_12:
  v17 = a1 + 1;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, &a1[1], a3);
  v18 = (a1 + 12);
  if (&a1[1].u8[4] == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  while (2)
  {
    v21 = **a3;
    v22 = *a3[1];
    v23 = *(v21 + 8 * v18->u32[0]);
    v24 = *(v21 + 8 * v17->u32[0]);
    v25 = _simd_orient_pf2(v22, v23, v24);
    if (v25 == 0.0)
    {
      v26 = vsub_f32(v23, v22);
      v27 = vmul_f32(v26, v26);
      v28 = vsub_f32(v24, v22);
      v29 = vmul_f32(v28, v28);
      v30 = vadd_f32(vzip1_s32(v27, v29), vzip2_s32(v27, v29));
      if ((vcgt_f32(vdup_lane_s32(v30, 1), v30).u32[0] & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v25 <= 0.0)
    {
      goto LABEL_27;
    }

    v31 = v18->i32[0];
    v18->i32[0] = v17->i32[0];
    v32 = v19;
    while (1)
    {
      v33 = **a3;
      v34 = *a3[1];
      v35 = *(v33 + 8 * v31);
      v36 = *(v33 + 8 * *(&a1->u32[1] + v32));
      v37 = _simd_orient_pf2(v34, v35, v36);
      if (v37 != 0.0)
      {
        break;
      }

      v38 = vsub_f32(v35, v34);
      v39 = vmul_f32(v38, v38);
      v40 = vsub_f32(v36, v34);
      v41 = vmul_f32(v40, v40);
      v42 = vadd_f32(vzip1_s32(v39, v41), vzip2_s32(v39, v41));
      if ((vcgt_f32(vdup_lane_s32(v42, 1), v42).u32[0] & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_23:
      *(a1[1].i32 + v32) = *(&a1->i32[1] + v32);
      v32 -= 4;
      if (v32 == -8)
      {
        v43 = a1;
        goto LABEL_26;
      }
    }

    if (v37 > 0.0)
    {
      goto LABEL_23;
    }

LABEL_25:
    v43 = (a1 + v32 + 8);
LABEL_26:
    v43->i32[0] = v31;
    if (++v20 != 8)
    {
LABEL_27:
      v17 = v18;
      v19 += 4;
      v18 = (v18 + 4);
      if (v18 == a2)
      {
        return 1;
      }

      continue;
    }

    return &v18->u8[4] == a2;
  }
}

unsigned int *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t **a4)
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
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      while (1)
      {
        v13 = **a4;
        v14 = *a4[1];
        v15 = *(v13 + 8 * *v12);
        v16 = *(v13 + 8 * *a1);
        v17 = _simd_orient_pf2(v14, v15, v16);
        if (v17 != 0.0)
        {
          break;
        }

        v18 = vsub_f32(v15, v14);
        v19 = vmul_f32(v18, v18);
        v20 = vsub_f32(v16, v14);
        v21 = vmul_f32(v20, v20);
        v22 = vadd_f32(vzip1_s32(v19, v21), vzip2_s32(v19, v21));
        if (vcgt_f32(vdup_lane_s32(v22, 1), v22).u32[0])
        {
          goto LABEL_9;
        }

LABEL_10:
        if (++v12 == a3)
        {
          goto LABEL_14;
        }
      }

      if (v17 <= 0.0)
      {
        goto LABEL_10;
      }

LABEL_9:
      v23 = *v12;
      *v12 = *a1;
      *a1 = v23;
      std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8, a1);
      goto LABEL_10;
    }

LABEL_14:
    if (v8 >= 2)
    {
      v24 = a2 - 1;
      do
      {
        v25 = *a1;
        v26 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8);
        if (v24 == v26)
        {
          *v26 = v25;
        }

        else
        {
          *v26 = *v24;
          *v24 = v25;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, (v26 + 1), a4, v26 + 1 - a1);
        }

        --v24;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(uint64_t a1, uint64_t **a2, uint64_t a3, unsigned int *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v7 = v4 >> 1;
  if ((v4 >> 1) < (a4 - a1) >> 2)
  {
    return;
  }

  v10 = (a4 - a1) >> 1;
  v11 = v10 + 1;
  v12 = (a1 + 4 * (v10 + 1));
  v13 = v10 + 2;
  if (v10 + 2 < a3)
  {
    v14 = **a2;
    v15 = *a2[1];
    v16 = *(v14 + 8 * *v12);
    v17 = *(v14 + 8 * v12[1]);
    v18 = _simd_orient_pf2(v15, v16, v17);
    if (v18 == 0.0)
    {
      v19 = vsub_f32(v16, v15);
      v20 = vmul_f32(v19, v19);
      v21 = vsub_f32(v17, v15);
      v22 = vmul_f32(v21, v21);
      v23 = vadd_f32(vzip1_s32(v20, v22), vzip2_s32(v20, v22));
      if ((vcgt_f32(vdup_lane_s32(v23, 1), v23).u8[0] & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (v18 > 0.0)
    {
LABEL_6:
      ++v12;
      v11 = v13;
    }
  }

LABEL_7:
  v24 = **a2;
  v25 = *a2[1];
  v26 = *(v24 + 8 * *v12);
  v27 = *(v24 + 8 * *a4);
  v28 = _simd_orient_pf2(v25, v26, v27);
  if (v28 == 0.0)
  {
    v29 = vsub_f32(v26, v25);
    v30 = vmul_f32(v29, v29);
    v31 = vsub_f32(v27, v25);
    v32 = vmul_f32(v31, v31);
    v33 = vadd_f32(vzip1_s32(v30, v32), vzip2_s32(v30, v32));
    if (vcgt_f32(vdup_lane_s32(v33, 1), v33).u32[0])
    {
      return;
    }
  }

  else if (v28 > 0.0)
  {
    return;
  }

  v34 = *a4;
  *a4 = *v12;
  if (v7 >= v11)
  {
    while (1)
    {
      v36 = 2 * v11;
      v11 = (2 * v11) | 1;
      v35 = (a1 + 4 * v11);
      v37 = v36 + 2;
      if (v36 + 2 < a3)
      {
        v38 = **a2;
        v39 = *a2[1];
        v40 = *(v38 + 8 * *v35);
        v41 = *(v38 + 8 * v35[1]);
        v42 = _simd_orient_pf2(v39, v40, v41);
        if (v42 != 0.0)
        {
          if (v42 <= 0.0)
          {
            goto LABEL_19;
          }

LABEL_18:
          ++v35;
          v11 = v37;
          goto LABEL_19;
        }

        v43 = vsub_f32(v40, v39);
        v44 = vmul_f32(v43, v43);
        v45 = vsub_f32(v41, v39);
        v46 = vmul_f32(v45, v45);
        v47 = vadd_f32(vzip1_s32(v44, v46), vzip2_s32(v44, v46));
        if (vcgt_f32(vdup_lane_s32(v47, 1), v47).u8[0])
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      v48 = **a2;
      v49 = *a2[1];
      v50 = *(v48 + 8 * *v35);
      v51 = *(v48 + 8 * v34);
      v52 = _simd_orient_pf2(v49, v50, v51);
      if (v52 == 0.0)
      {
        v53 = vsub_f32(v50, v49);
        v54 = vmul_f32(v53, v53);
        v55 = vsub_f32(v51, v49);
        v56 = vmul_f32(v55, v55);
        v57 = vadd_f32(vzip1_s32(v54, v56), vzip2_s32(v54, v56));
        if (vcgt_f32(vdup_lane_s32(v57, 1), v57).u32[0])
        {
          break;
        }
      }

      else if (v52 > 0.0)
      {
        break;
      }

      *v12 = *v35;
      v12 = v35;
      if (v7 < v11)
      {
        goto LABEL_13;
      }
    }
  }

  v35 = v12;
LABEL_13:
  *v35 = v34;
}

_DWORD *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(_DWORD *a1, uint64_t **a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1;
    v9 = &a1[v6];
    a1 = v9 + 1;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 >= a3)
    {
      goto LABEL_6;
    }

    v13 = v9[2];
    v12 = v9 + 2;
    v14 = **a2;
    v15 = *a2[1];
    v16 = *(v14 + 8 * *(v12 - 1));
    v17 = *(v14 + 8 * v13);
    v18 = _simd_orient_pf2(v15, v16, v17);
    if (v18 == 0.0)
    {
      v19 = vsub_f32(v16, v15);
      v20 = vmul_f32(v19, v19);
      v21 = vsub_f32(v17, v15);
      v22 = vmul_f32(v21, v21);
      v23 = vadd_f32(vzip1_s32(v20, v22), vzip2_s32(v20, v22));
      if ((vcgt_f32(vdup_lane_s32(v23, 1), v23).u32[0] & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_5:
      a1 = v12;
      v6 = v11;
      goto LABEL_6;
    }

    if (v18 > 0.0)
    {
      goto LABEL_5;
    }

LABEL_6:
    *v8 = *a1;
  }

  while (v6 <= v7);
  return a1;
}

void std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<float>(unsigned long,geom::vector_type<float,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 4 * (v4 >> 1));
    v10 = **a3;
    v11 = *a3[1];
    v12 = *(v10 + 8 * *v9);
    v13 = *(v10 + 8 * *(a2 - 4));
    v14 = _simd_orient_pf2(v11, v12, v13);
    if (v14 == 0.0)
    {
      v15 = vsub_f32(v12, v11);
      v16 = vmul_f32(v15, v15);
      v17 = vsub_f32(v13, v11);
      v18 = vmul_f32(v17, v17);
      v19 = vadd_f32(vzip1_s32(v16, v18), vzip2_s32(v16, v18));
      if ((vcgt_f32(vdup_lane_s32(v19, 1), v19).u32[0] & 1) == 0)
      {
        return;
      }
    }

    else if (v14 <= 0.0)
    {
      return;
    }

    v20 = *(a2 - 4);
    *(a2 - 4) = *v9;
    if (v4 >= 2)
    {
      do
      {
        v22 = v8 - 1;
        v8 = (v8 - 1) >> 1;
        v21 = (a1 + 4 * v8);
        v23 = **a3;
        v24 = *a3[1];
        v25 = *(v23 + 8 * *v21);
        v26 = *(v23 + 8 * v20);
        v27 = _simd_orient_pf2(v24, v25, v26);
        if (v27 == 0.0)
        {
          v28 = vsub_f32(v25, v24);
          v29 = vmul_f32(v28, v28);
          v30 = vsub_f32(v26, v24);
          v31 = vmul_f32(v30, v30);
          v32 = vadd_f32(vzip1_s32(v29, v31), vzip2_s32(v29, v31));
          if ((vcgt_f32(vdup_lane_s32(v32, 1), v32).u32[0] & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        else if (v27 <= 0.0)
        {
          goto LABEL_7;
        }

        *v9 = *v21;
        v9 = (a1 + 4 * v8);
      }

      while (v22 > 1);
    }

    else
    {
LABEL_7:
      v21 = v9;
    }

    *v21 = v20;
  }
}

int32x2_t std::__introsort<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(int32x2_t *a1, int32x2_t *a2, uint64_t **a3, uint64_t a4, char a5, int32x2_t result)
{
LABEL_1:
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 2;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v25 = **a3;
      v52 = *(v25 + 16 * v10->u32[0]);
      v57 = *a3[1];
      v47 = *(v25 + 16 * a2[-1].u32[1]);
      *&result = _simd_orient_pd2(v57, v47, v52);
      if (*&result == 0.0)
      {
        v26 = vsubq_f64(v47, v57);
        v27 = vsubq_f64(v52, v57);
        v28 = vpaddq_f64(vmulq_f64(v26, v26), vmulq_f64(v27, v27));
        result = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v28, 1), v28));
        if ((result.i8[0] & 1) == 0)
        {
          return result;
        }

LABEL_52:
        v33 = v10->i32[0];
        v10->i32[0] = a2[-1].i32[1];
        a2[-1].i32[1] = v33;
        return result;
      }

      if (*&result > 0.0)
      {
        goto LABEL_52;
      }

      return result;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v10, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v10, a2, a3);
      }

      return result;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v10 + (v13 >> 1);
    if (v13 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v10 + (v13 >> 1), v10, &a2[-1] + 1, a3);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v10, v10 + (v13 >> 1), &a2[-1] + 1, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v10 + 1, v15 - 1, &a2[-1], a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(&v10[1], v10 + v14 + 1, &a2[-2] + 1, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v15 - 1, v15, v10 + v14 + 1, a3);
      v16 = v10->i32[0];
      v10->i32[0] = *v15;
      *v15 = v16;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = **a3;
    v51 = *(v17 + 16 * v10->u32[0]);
    v56 = *a3[1];
    v46 = *(v17 + 16 * v10[-1].u32[1]);
    v18 = _simd_orient_pd2(v56, v46, v51);
    if (v18 == 0.0)
    {
      v19 = vsubq_f64(v46, v56);
      v20 = vsubq_f64(v51, v56);
      v21 = vpaddq_f64(vmulq_f64(v19, v19), vmulq_f64(v20, v20));
      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v21, 1), v21)).u8[0] & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (v18 <= 0.0)
    {
LABEL_24:
      v10 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &>(v10, a2, a3);
      goto LABEL_25;
    }

LABEL_20:
    v22 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &>(v10, a2, a3);
    if ((v23 & 1) == 0)
    {
      goto LABEL_23;
    }

    v24 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(v10, v22, a3);
    v10 = (v22 + 1);
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>((v22 + 1), a2, a3))
    {
      a4 = -v12;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v24)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,false>(a1, v22, a3, -v12, a5 & 1, result);
      v10 = (v22 + 1);
LABEL_25:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v13 == 3)
  {

    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v10, v10 + 1, &a2[-1] + 1, a3);
    return result;
  }

  if (v13 != 4)
  {
    if (v13 == 5)
    {

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v10, v10 + 1, &v10[1], &v10[1] + 1, &a2[-1] + 1, a3);
      return result;
    }

    goto LABEL_10;
  }

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(v10, v10 + 1, &v10[1], a3);
  v29 = **a3;
  v53 = *(v29 + 16 * v10[1].u32[0]);
  v58 = *a3[1];
  v48 = *(v29 + 16 * a2[-1].u32[1]);
  *&result = _simd_orient_pd2(v58, v48, v53);
  if (*&result == 0.0)
  {
    v30 = vsubq_f64(v48, v58);
    v31 = vsubq_f64(v53, v58);
    v32 = vpaddq_f64(vmulq_f64(v30, v30), vmulq_f64(v31, v31));
    result = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v32, 1), v32));
    if ((result.i8[0] & 1) == 0)
    {
      return result;
    }
  }

  else if (*&result <= 0.0)
  {
    return result;
  }

  v34 = v10[1].i32[0];
  v10[1].i32[0] = a2[-1].i32[1];
  a2[-1].i32[1] = v34;
  v35 = **a3;
  v54 = *(v35 + 16 * v10->u32[1]);
  v59 = *a3[1];
  v49 = *(v35 + 16 * v10[1].u32[0]);
  *&result = _simd_orient_pd2(v59, v49, v54);
  if (*&result == 0.0)
  {
    v36 = vsubq_f64(v49, v59);
    v37 = vsubq_f64(v54, v59);
    v38 = vpaddq_f64(vmulq_f64(v36, v36), vmulq_f64(v37, v37));
    result = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v38, 1), v38));
    if ((result.i8[0] & 1) == 0)
    {
      return result;
    }
  }

  else if (*&result <= 0.0)
  {
    return result;
  }

  v40 = v10->i32[1];
  v39 = v10[1].u32[0];
  v41 = v10->u32[0];
  v10->i32[1] = v39;
  v10[1].i32[0] = v40;
  v42 = **a3;
  v55 = *(v42 + 16 * v41);
  v60 = *a3[1];
  v50 = *(v42 + 16 * v39);
  *&result = _simd_orient_pd2(v60, v50, v55);
  if (*&result == 0.0)
  {
    v43 = vsubq_f64(v50, v60);
    v44 = vsubq_f64(v55, v60);
    v45 = vpaddq_f64(vmulq_f64(v43, v43), vmulq_f64(v44, v44));
    result = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v45, 1), v45));
    if ((result.i8[0] & 1) == 0)
    {
      return result;
    }
  }

  else if (*&result <= 0.0)
  {
    return result;
  }

  result = vrev64_s32(*v10);
  *v10 = result;
  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t **a4)
{
  v6 = a2;
  v7 = a1;
  v8 = **a4;
  v43 = *(v8 + 16 * *a1);
  v48 = *a4[1];
  v38 = *(v8 + 16 * *a2);
  v9 = _simd_orient_pd2(v48, v38, v43);
  if (v9 != 0.0)
  {
    if (v9 > 0.0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v18 = **a4;
    v45 = *(v18 + 16 * *v6);
    v50 = *a4[1];
    v40 = *(v18 + 16 * *a3);
    v19 = _simd_orient_pd2(v50, v40, v45);
    if (v19 == 0.0)
    {
      v20 = vsubq_f64(v40, v50);
      v21 = vsubq_f64(v45, v50);
      v22 = vpaddq_f64(vmulq_f64(v20, v20), vmulq_f64(v21, v21));
      if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v22, 1), v22)).u32[0])
      {
        goto LABEL_9;
      }
    }

    else if (v19 > 0.0)
    {
LABEL_9:
      v23 = *v6;
      *v6 = *a3;
      *a3 = v23;
      v24 = **a4;
      v46 = *(v24 + 16 * *v7);
      v51 = *a4[1];
      v41 = *(v24 + 16 * *v6);
      v25 = _simd_orient_pd2(v51, v41, v46);
      v26 = v25 <= 0.0;
      if (v25 == 0.0)
      {
        v27 = vsubq_f64(v41, v51);
        v28 = vsubq_f64(v46, v51);
        v29 = vpaddq_f64(vmulq_f64(v27, v27), vmulq_f64(v28, v28));
        if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v29, 1), v29)).u32[0] & 1) == 0)
        {
          return 1;
        }

        goto LABEL_20;
      }

      goto LABEL_19;
    }

    return 0;
  }

  v10 = vsubq_f64(v38, v48);
  v11 = vsubq_f64(v43, v48);
  v12 = vpaddq_f64(vmulq_f64(v10, v10), vmulq_f64(v11, v11));
  if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v12, 1), v12)).u8[0] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v13 = **a4;
  v44 = *(v13 + 16 * *v6);
  v49 = *a4[1];
  v39 = *(v13 + 16 * *a3);
  v14 = _simd_orient_pd2(v49, v39, v44);
  if (v14 == 0.0)
  {
    v15 = vsubq_f64(v39, v49);
    v16 = vsubq_f64(v44, v49);
    v17 = vpaddq_f64(vmulq_f64(v15, v15), vmulq_f64(v16, v16));
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v17, 1), v17)).u32[0])
    {
LABEL_5:
      v6 = a3;
LABEL_20:
      v37 = *v7;
      *v7 = *v6;
      *v6 = v37;
      return 1;
    }
  }

  else if (v14 > 0.0)
  {
    goto LABEL_5;
  }

  v30 = *v7;
  *v7 = *v6;
  *v6 = v30;
  v31 = **a4;
  v47 = *(v31 + 16 * v30);
  v52 = *a4[1];
  v42 = *(v31 + 16 * *a3);
  v32 = _simd_orient_pd2(v52, v42, v47);
  v26 = v32 <= 0.0;
  if (v32 == 0.0)
  {
    v33 = vsubq_f64(v42, v52);
    v34 = vsubq_f64(v47, v52);
    v35 = vpaddq_f64(vmulq_f64(v33, v33), vmulq_f64(v34, v34));
    v7 = v6;
    v6 = a3;
    if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v35, 1), v35)).u32[0] & 1) == 0)
    {
      return 1;
    }

    goto LABEL_20;
  }

  v7 = v6;
  v6 = a3;
LABEL_19:
  if (!v26)
  {
    goto LABEL_20;
  }

  return 1;
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t **a6)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a2, a3, a6);
  v12 = **a6;
  v61 = *(v12 + 16 * *a3);
  v68 = *a6[1];
  v54 = *(v12 + 16 * *a4);
  v13 = _simd_orient_pd2(v68, v54, v61);
  if (v13 == 0.0)
  {
    v14 = vsubq_f64(v54, v68);
    v15 = vsubq_f64(v61, v68);
    v16 = vpaddq_f64(vmulq_f64(v14, v14), vmulq_f64(v15, v15));
    if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v16, 1), v16)).u8[0] & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v13 <= 0.0)
  {
    goto LABEL_12;
  }

  v17 = *a3;
  *a3 = *a4;
  *a4 = v17;
  v18 = **a6;
  v62 = *(v18 + 16 * *a2);
  v69 = *a6[1];
  v55 = *(v18 + 16 * *a3);
  v19 = _simd_orient_pd2(v69, v55, v62);
  if (v19 == 0.0)
  {
    v20 = vsubq_f64(v55, v69);
    v21 = vsubq_f64(v62, v69);
    v22 = vpaddq_f64(vmulq_f64(v20, v20), vmulq_f64(v21, v21));
    if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v22, 1), v22)).u8[0] & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v19 <= 0.0)
  {
    goto LABEL_12;
  }

  v23 = *a2;
  *a2 = *a3;
  *a3 = v23;
  v24 = **a6;
  v63 = *(v24 + 16 * *a1);
  v70 = *a6[1];
  v56 = *(v24 + 16 * *a2);
  v25 = _simd_orient_pd2(v70, v56, v63);
  if (v25 == 0.0)
  {
    v26 = vsubq_f64(v56, v70);
    v27 = vsubq_f64(v63, v70);
    v28 = vpaddq_f64(vmulq_f64(v26, v26), vmulq_f64(v27, v27));
    if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v28, 1), v28)).u8[0] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v25 > 0.0)
  {
LABEL_11:
    v29 = *a1;
    *a1 = *a2;
    *a2 = v29;
  }

LABEL_12:
  v30 = **a6;
  v64 = *(v30 + 16 * *a4);
  v71 = *a6[1];
  v57 = *(v30 + 16 * *a5);
  v31 = _simd_orient_pd2(v71, v57, v64);
  if (v31 == 0.0)
  {
    v32 = vsubq_f64(v57, v71);
    v33 = vsubq_f64(v64, v71);
    v34 = vpaddq_f64(vmulq_f64(v32, v32), vmulq_f64(v33, v33));
    if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v34, 1), v34)).u32[0] & 1) == 0)
    {
      return;
    }
  }

  else if (v31 <= 0.0)
  {
    return;
  }

  v35 = *a4;
  *a4 = *a5;
  *a5 = v35;
  v36 = **a6;
  v65 = *(v36 + 16 * *a3);
  v72 = *a6[1];
  v58 = *(v36 + 16 * *a4);
  v37 = _simd_orient_pd2(v72, v58, v65);
  if (v37 == 0.0)
  {
    v38 = vsubq_f64(v58, v72);
    v39 = vsubq_f64(v65, v72);
    v40 = vpaddq_f64(vmulq_f64(v38, v38), vmulq_f64(v39, v39));
    if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v40, 1), v40)).u32[0] & 1) == 0)
    {
      return;
    }
  }

  else if (v37 <= 0.0)
  {
    return;
  }

  v41 = *a3;
  *a3 = *a4;
  *a4 = v41;
  v42 = **a6;
  v66 = *(v42 + 16 * *a2);
  v73 = *a6[1];
  v59 = *(v42 + 16 * *a3);
  v43 = _simd_orient_pd2(v73, v59, v66);
  if (v43 == 0.0)
  {
    v44 = vsubq_f64(v59, v73);
    v45 = vsubq_f64(v66, v73);
    v46 = vpaddq_f64(vmulq_f64(v44, v44), vmulq_f64(v45, v45));
    if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v46, 1), v46)).u32[0] & 1) == 0)
    {
      return;
    }
  }

  else if (v43 <= 0.0)
  {
    return;
  }

  v47 = *a2;
  *a2 = *a3;
  *a3 = v47;
  v48 = **a6;
  v67 = *(v48 + 16 * *a1);
  v74 = *a6[1];
  v60 = *(v48 + 16 * *a2);
  v49 = _simd_orient_pd2(v74, v60, v67);
  if (v49 == 0.0)
  {
    v50 = vsubq_f64(v60, v74);
    v51 = vsubq_f64(v67, v74);
    v52 = vpaddq_f64(vmulq_f64(v50, v50), vmulq_f64(v51, v51));
    if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v52, 1), v52)).u32[0] & 1) == 0)
    {
      return;
    }
  }

  else if (v49 <= 0.0)
  {
    return;
  }

  v53 = *a1;
  *a1 = *a2;
  *a2 = v53;
}

void std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  if (a1 == a2)
  {
    return;
  }

  v5 = a1 + 1;
  if (a1 + 1 == a2)
  {
    return;
  }

  v7 = 0;
  v8 = a1;
  do
  {
    v9 = v8;
    v8 = v5;
    v10 = **a3;
    v25 = *(v10 + 16 * *v9);
    v27 = *a3[1];
    v23 = *(v10 + 16 * v9[1]);
    v11 = _simd_orient_pd2(v27, v23, v25);
    if (v11 == 0.0)
    {
      v12 = vsubq_f64(v23, v27);
      v13 = vsubq_f64(v25, v27);
      v14 = vpaddq_f64(vmulq_f64(v12, v12), vmulq_f64(v13, v13));
      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v14, 1), v14)).u32[0] & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v11 <= 0.0)
    {
      goto LABEL_18;
    }

    v15 = v9[1];
    v9[1] = *v9;
    v16 = a1;
    if (v9 == a1)
    {
      goto LABEL_17;
    }

    v17 = v7;
    while (1)
    {
      v18 = **a3;
      v26 = *(v18 + 16 * *(a1 + v17 - 4));
      v28 = *a3[1];
      v24 = *(v18 + 16 * v15);
      v19 = _simd_orient_pd2(v28, v24, v26);
      if (v19 == 0.0)
      {
        v20 = vsubq_f64(v24, v28);
        v21 = vsubq_f64(v26, v28);
        v22 = vpaddq_f64(vmulq_f64(v20, v20), vmulq_f64(v21, v21));
        if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v22, 1), v22)).u32[0] & 1) == 0)
        {
          v16 = v9;
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      if (v19 <= 0.0)
      {
        break;
      }

LABEL_14:
      --v9;
      *(a1 + v17) = *(a1 + v17 - 4);
      v17 -= 4;
      if (!v17)
      {
        v16 = a1;
        goto LABEL_17;
      }
    }

    v16 = (a1 + v17);
LABEL_17:
    *v16 = v15;
LABEL_18:
    v5 = v8 + 1;
    v7 += 4;
  }

  while (v8 + 1 != a2);
}

void std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    for (i = a1 + 1; v4 + 1 != a2; i = v4 + 1)
    {
      v7 = v4;
      v4 = i;
      v8 = **a3;
      v23 = *(v8 + 16 * *v7);
      v25 = *a3[1];
      v21 = *(v8 + 16 * v7[1]);
      v9 = _simd_orient_pd2(v25, v21, v23);
      if (v9 == 0.0)
      {
        v10 = vsubq_f64(v21, v25);
        v11 = vsubq_f64(v23, v25);
        v12 = vpaddq_f64(vmulq_f64(v10, v10), vmulq_f64(v11, v11));
        if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v12, 1), v12)).u32[0])
        {
          goto LABEL_7;
        }
      }

      else if (v9 > 0.0)
      {
LABEL_7:
        v13 = *v4;
        do
        {
          while (1)
          {
            v14 = v7;
            v7[1] = *v7;
            v15 = *--v7;
            v16 = **a3;
            v24 = *(v16 + 16 * v15);
            v26 = *a3[1];
            v22 = *(v16 + 16 * v13);
            v17 = _simd_orient_pd2(v26, v22, v24);
            if (v17 != 0.0)
            {
              break;
            }

            v18 = vsubq_f64(v22, v26);
            v19 = vsubq_f64(v24, v26);
            v20 = vpaddq_f64(vmulq_f64(v18, v18), vmulq_f64(v19, v19));
            if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v20, 1), v20)).u32[0] & 1) == 0)
            {
              goto LABEL_12;
            }
          }
        }

        while (v17 > 0.0);
LABEL_12:
        *v14 = v13;
      }
    }
  }
}

unsigned int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = **a3;
  v48 = *(v7 + 16 * *(a2 - 1));
  v54 = *a3[1];
  v42 = *(v7 + 16 * *a1);
  v8 = _simd_orient_pd2(v54, v42, v48);
  if (v8 == 0.0)
  {
    v9 = vsubq_f64(v42, v54);
    v10 = vsubq_f64(v48, v54);
    v11 = vpaddq_f64(vmulq_f64(v9, v9), vmulq_f64(v10, v10));
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v11, 1), v11)).u32[0])
    {
LABEL_3:
      for (i = a1 + 1; ; ++i)
      {
        v13 = **a3;
        v49 = *(v13 + 16 * *i);
        v55 = *a3[1];
        v43 = *(v13 + 16 * v6);
        v14 = _simd_orient_pd2(v55, v43, v49);
        if (v14 == 0.0)
        {
          v15 = vsubq_f64(v43, v55);
          v16 = vsubq_f64(v49, v55);
          v17 = vpaddq_f64(vmulq_f64(v15, v15), vmulq_f64(v16, v16));
          if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v17, 1), v17)).u32[0])
          {
            goto LABEL_17;
          }
        }

        else if (v14 > 0.0)
        {
          goto LABEL_17;
        }
      }
    }
  }

  else if (v8 > 0.0)
  {
    goto LABEL_3;
  }

  for (i = a1 + 1; i < v4; ++i)
  {
    v18 = **a3;
    v50 = *(v18 + 16 * *i);
    v56 = *a3[1];
    v44 = *(v18 + 16 * v6);
    v19 = _simd_orient_pd2(v56, v44, v50);
    if (v19 == 0.0)
    {
      v20 = vsubq_f64(v44, v56);
      v21 = vsubq_f64(v50, v56);
      v22 = vpaddq_f64(vmulq_f64(v20, v20), vmulq_f64(v21, v21));
      if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v22, 1), v22)).u32[0])
      {
        break;
      }
    }

    else if (v19 > 0.0)
    {
      break;
    }
  }

LABEL_17:
  if (i >= v4)
  {
    goto LABEL_32;
  }

  do
  {
    while (1)
    {
      v23 = *--v4;
      v24 = **a3;
      v51 = *(v24 + 16 * v23);
      v57 = *a3[1];
      v45 = *(v24 + 16 * v6);
      v25 = _simd_orient_pd2(v57, v45, v51);
      if (v25 != 0.0)
      {
        break;
      }

      v26 = vsubq_f64(v45, v57);
      v27 = vsubq_f64(v51, v57);
      v28 = vpaddq_f64(vmulq_f64(v26, v26), vmulq_f64(v27, v27));
      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v28, 1), v28)).u32[0] & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  while (v25 > 0.0);
LABEL_32:
  if (i < v4)
  {
    v29 = *i;
    *i++ = *v4;
    *v4 = v29;
    while (1)
    {
      v30 = **a3;
      v52 = *(v30 + 16 * *i);
      v58 = *a3[1];
      v46 = *(v30 + 16 * v6);
      v31 = _simd_orient_pd2(v58, v46, v52);
      if (v31 == 0.0)
      {
        v32 = vsubq_f64(v46, v58);
        v33 = vsubq_f64(v52, v58);
        v34 = vpaddq_f64(vmulq_f64(v32, v32), vmulq_f64(v33, v33));
        if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v34, 1), v34)).u8[0])
        {
          do
          {
LABEL_30:
            while (1)
            {
              v35 = *--v4;
              v36 = **a3;
              v53 = *(v36 + 16 * v35);
              v59 = *a3[1];
              v47 = *(v36 + 16 * v6);
              v37 = _simd_orient_pd2(v59, v47, v53);
              if (v37 == 0.0)
              {
                break;
              }

              if (v37 <= 0.0)
              {
                goto LABEL_32;
              }
            }

            v38 = vsubq_f64(v47, v59);
            v39 = vsubq_f64(v53, v59);
            v40 = vpaddq_f64(vmulq_f64(v38, v38), vmulq_f64(v39, v39));
          }

          while ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v40, 1), v40)).u32[0] & 1) != 0);
          goto LABEL_32;
        }
      }

      else if (v31 > 0.0)
      {
        goto LABEL_30;
      }

      ++i;
    }
  }

  if (i - 1 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 1) = v6;
  return i;
}

unsigned int *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int *,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v6 = 0;
  v7 = *a1;
  while (1)
  {
    v8 = **a3;
    v48 = *(v8 + 16 * v7);
    v53 = *a3[1];
    v43 = *(v8 + 16 * a1[v6 + 1]);
    v9 = _simd_orient_pd2(v53, v43, v48);
    if (v9 != 0.0)
    {
      break;
    }

    v10 = vsubq_f64(v43, v53);
    v11 = vsubq_f64(v48, v53);
    v12 = vpaddq_f64(vmulq_f64(v10, v10), vmulq_f64(v11, v11));
    if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v12, 1), v12)).u32[0] & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    ++v6;
  }

  if (v9 > 0.0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v13 = &a1[v6];
  v14 = &a1[v6 + 1];
  if (v6 * 4)
  {
    do
    {
      while (1)
      {
        v15 = *--a2;
        v16 = **a3;
        v49 = *(v16 + 16 * v7);
        v54 = *a3[1];
        v44 = *(v16 + 16 * v15);
        v17 = _simd_orient_pd2(v54, v44, v49);
        if (v17 != 0.0)
        {
          break;
        }

        v18 = vsubq_f64(v44, v54);
        v19 = vsubq_f64(v49, v54);
        v20 = vpaddq_f64(vmulq_f64(v18, v18), vmulq_f64(v19, v19));
        if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v20, 1), v20)).u32[0])
        {
          goto LABEL_22;
        }
      }
    }

    while (v17 <= 0.0);
  }

  else
  {
    do
    {
      if (v14 >= a2)
      {
        break;
      }

      while (1)
      {
        v21 = *--a2;
        v22 = **a3;
        v50 = *(v22 + 16 * v7);
        v55 = *a3[1];
        v45 = *(v22 + 16 * v21);
        v23 = _simd_orient_pd2(v55, v45, v50);
        if (v23 == 0.0)
        {
          break;
        }

        if (v23 > 0.0 || v14 >= a2)
        {
          goto LABEL_22;
        }
      }

      v25 = vsubq_f64(v45, v55);
      v26 = vsubq_f64(v50, v55);
      v27 = vpaddq_f64(vmulq_f64(v25, v25), vmulq_f64(v26, v26));
    }

    while ((vmovn_s64(vmvnq_s8(vcgtq_f64(vdupq_laneq_s64(v27, 1), v27))).u32[0] & 1) != 0);
  }

LABEL_22:
  if (v14 >= a2)
  {
    goto LABEL_35;
  }

  v28 = &a1[v6 + 1];
  v29 = a2;
  while (2)
  {
    v30 = *v28;
    *v28++ = *v29;
    *v29 = v30;
    while (2)
    {
      v31 = **a3;
      v51 = *(v31 + 16 * v7);
      v56 = *a3[1];
      v46 = *(v31 + 16 * *v28);
      v32 = _simd_orient_pd2(v56, v46, v51);
      if (v32 != 0.0)
      {
        if (v32 <= 0.0)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      v33 = vsubq_f64(v46, v56);
      v34 = vsubq_f64(v51, v56);
      v35 = vpaddq_f64(vmulq_f64(v33, v33), vmulq_f64(v34, v34));
      if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v35, 1), v35)).u8[0])
      {
LABEL_29:
        ++v28;
        continue;
      }

      break;
    }

    do
    {
LABEL_31:
      while (1)
      {
        v36 = *--v29;
        v37 = **a3;
        v52 = *(v37 + 16 * v7);
        v57 = *a3[1];
        v47 = *(v37 + 16 * v36);
        v38 = _simd_orient_pd2(v57, v47, v52);
        if (v38 == 0.0)
        {
          break;
        }

        if (v38 > 0.0)
        {
          goto LABEL_33;
        }
      }

      v39 = vsubq_f64(v47, v57);
      v40 = vsubq_f64(v52, v57);
      v41 = vpaddq_f64(vmulq_f64(v39, v39), vmulq_f64(v40, v40));
    }

    while ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v41, 1), v41)).u32[0] & 1) == 0);
LABEL_33:
    if (v28 < v29)
    {
      continue;
    }

    break;
  }

  v13 = v28 - 1;
LABEL_35:
  if (v13 != a1)
  {
    *a1 = *v13;
  }

  *v13 = v7;
  return v13;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(int32x2_t *a1, int32x2_t *a2, uint64_t **a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, &a2[-1] + 1, a3);
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, &a1[1], &a1[1] + 1, &a2[-1] + 1, a3);
        return 1;
      }

      goto LABEL_12;
    }

    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, &a1[1], a3);
    v29 = **a3;
    v59 = *(v29 + 16 * a1[1].u32[0]);
    v65 = *a3[1];
    v53 = *(v29 + 16 * a2[-1].u32[1]);
    v30 = _simd_orient_pd2(v65, v53, v59);
    if (v30 == 0.0)
    {
      v31 = vsubq_f64(v53, v65);
      v32 = vsubq_f64(v59, v65);
      v33 = vpaddq_f64(vmulq_f64(v31, v31), vmulq_f64(v32, v32));
      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v33, 1), v33)).u32[0] & 1) == 0)
      {
        return 1;
      }
    }

    else if (v30 <= 0.0)
    {
      return 1;
    }

    v35 = a1[1].i32[0];
    a1[1].i32[0] = a2[-1].i32[1];
    a2[-1].i32[1] = v35;
    v36 = **a3;
    v60 = *(v36 + 16 * a1->u32[1]);
    v66 = *a3[1];
    v54 = *(v36 + 16 * a1[1].u32[0]);
    v37 = _simd_orient_pd2(v66, v54, v60);
    if (v37 == 0.0)
    {
      v38 = vsubq_f64(v54, v66);
      v39 = vsubq_f64(v60, v66);
      v40 = vpaddq_f64(vmulq_f64(v38, v38), vmulq_f64(v39, v39));
      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v40, 1), v40)).u32[0] & 1) == 0)
      {
        return 1;
      }
    }

    else if (v37 <= 0.0)
    {
      return 1;
    }

    v43 = a1->i32[1];
    v42 = a1[1].u32[0];
    v44 = a1->u32[0];
    a1->i32[1] = v42;
    a1[1].i32[0] = v43;
    v45 = **a3;
    v61 = *(v45 + 16 * v44);
    v67 = *a3[1];
    v55 = *(v45 + 16 * v42);
    v46 = _simd_orient_pd2(v67, v55, v61);
    if (v46 == 0.0)
    {
      v47 = vsubq_f64(v55, v67);
      v48 = vsubq_f64(v61, v67);
      v49 = vpaddq_f64(vmulq_f64(v47, v47), vmulq_f64(v48, v48));
      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v49, 1), v49)).u32[0] & 1) == 0)
      {
        return 1;
      }
    }

    else if (v46 <= 0.0)
    {
      return 1;
    }

    *a1 = vrev64_s32(*a1);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = **a3;
    v56 = *(v7 + 16 * a1->u32[0]);
    v62 = *a3[1];
    v50 = *(v7 + 16 * a2[-1].u32[1]);
    v8 = _simd_orient_pd2(v62, v50, v56);
    if (v8 == 0.0)
    {
      v9 = vsubq_f64(v50, v62);
      v10 = vsubq_f64(v56, v62);
      v11 = vpaddq_f64(vmulq_f64(v9, v9), vmulq_f64(v10, v10));
      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v11, 1), v11)).u32[0] & 1) == 0)
      {
        return 1;
      }
    }

    else if (v8 <= 0.0)
    {
      return 1;
    }

    v34 = a1->i32[0];
    a1->i32[0] = a2[-1].i32[1];
    a2[-1].i32[1] = v34;
    return 1;
  }

LABEL_12:
  v12 = a1 + 1;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,0>(a1, a1 + 1, &a1[1], a3);
  v13 = (a1 + 12);
  if (&a1[1].u8[4] == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (2)
  {
    v16 = **a3;
    v57 = *(v16 + 16 * v12->u32[0]);
    v63 = *a3[1];
    v51 = *(v16 + 16 * v13->u32[0]);
    v17 = _simd_orient_pd2(v63, v51, v57);
    if (v17 == 0.0)
    {
      v18 = vsubq_f64(v51, v63);
      v19 = vsubq_f64(v57, v63);
      v20 = vpaddq_f64(vmulq_f64(v18, v18), vmulq_f64(v19, v19));
      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v20, 1), v20)).u32[0] & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v17 <= 0.0)
    {
      goto LABEL_27;
    }

    v21 = v13->i32[0];
    v13->i32[0] = v12->i32[0];
    v22 = v14;
    while (1)
    {
      v23 = **a3;
      v58 = *(v23 + 16 * *(&a1->u32[1] + v22));
      v64 = *a3[1];
      v52 = *(v23 + 16 * v21);
      v24 = _simd_orient_pd2(v64, v52, v58);
      if (v24 != 0.0)
      {
        break;
      }

      v25 = vsubq_f64(v52, v64);
      v26 = vsubq_f64(v58, v64);
      v27 = vpaddq_f64(vmulq_f64(v25, v25), vmulq_f64(v26, v26));
      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v27, 1), v27)).u32[0] & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_23:
      *(a1[1].i32 + v22) = *(&a1->i32[1] + v22);
      v22 -= 4;
      if (v22 == -8)
      {
        v28 = a1;
        goto LABEL_26;
      }
    }

    if (v24 > 0.0)
    {
      goto LABEL_23;
    }

LABEL_25:
    v28 = (a1 + v22 + 8);
LABEL_26:
    v28->i32[0] = v21;
    if (++v15 != 8)
    {
LABEL_27:
      v12 = v13;
      v14 += 4;
      v13 = (v13 + 4);
      if (v13 == a2)
      {
        return 1;
      }

      continue;
    }

    return &v13->u8[4] == a2;
  }
}

unsigned int *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t **a4)
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
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      while (1)
      {
        v13 = **a4;
        v25 = *(v13 + 16 * *a1);
        v26 = *a4[1];
        v24 = *(v13 + 16 * *v12);
        v14 = _simd_orient_pd2(v26, v24, v25);
        if (v14 != 0.0)
        {
          break;
        }

        v15 = vsubq_f64(v24, v26);
        v16 = vsubq_f64(v25, v26);
        v17 = vpaddq_f64(vmulq_f64(v15, v15), vmulq_f64(v16, v16));
        if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v17, 1), v17)).u32[0])
        {
          goto LABEL_9;
        }

LABEL_10:
        if (++v12 == a3)
        {
          goto LABEL_14;
        }
      }

      if (v14 <= 0.0)
      {
        goto LABEL_10;
      }

LABEL_9:
      v18 = *v12;
      *v12 = *a1;
      *a1 = v18;
      std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8, a1);
      goto LABEL_10;
    }

LABEL_14:
    if (v8 >= 2)
    {
      v19 = a2 - 1;
      do
      {
        v20 = *a1;
        v21 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, a4, v8);
        if (v19 == v21)
        {
          *v21 = v20;
        }

        else
        {
          *v21 = *v19;
          *v19 = v20;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(a1, (v21 + 1), a4, v21 + 1 - a1);
        }

        --v19;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(uint64_t a1, uint64_t **a2, uint64_t a3, unsigned int *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v7 = v4 >> 1;
  if ((v4 >> 1) < (a4 - a1) >> 2)
  {
    return;
  }

  v10 = (a4 - a1) >> 1;
  v11 = v10 + 1;
  v12 = (a1 + 4 * (v10 + 1));
  v13 = v10 + 2;
  if (v10 + 2 < a3)
  {
    v14 = **a2;
    v42 = *(v14 + 16 * v12[1]);
    v46 = *a2[1];
    v38 = *(v14 + 16 * *v12);
    v15 = _simd_orient_pd2(v46, v38, v42);
    if (v15 == 0.0)
    {
      v16 = vsubq_f64(v38, v46);
      v17 = vsubq_f64(v42, v46);
      v18 = vpaddq_f64(vmulq_f64(v16, v16), vmulq_f64(v17, v17));
      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v18, 1), v18)).u8[0] & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (v15 > 0.0)
    {
LABEL_6:
      ++v12;
      v11 = v13;
    }
  }

LABEL_7:
  v19 = **a2;
  v43 = *(v19 + 16 * *a4);
  v47 = *a2[1];
  v39 = *(v19 + 16 * *v12);
  v20 = _simd_orient_pd2(v47, v39, v43);
  if (v20 == 0.0)
  {
    v21 = vsubq_f64(v39, v47);
    v22 = vsubq_f64(v43, v47);
    v23 = vpaddq_f64(vmulq_f64(v21, v21), vmulq_f64(v22, v22));
    if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v23, 1), v23)).u32[0])
    {
      return;
    }
  }

  else if (v20 > 0.0)
  {
    return;
  }

  v24 = *a4;
  *a4 = *v12;
  if (v7 >= v11)
  {
    while (1)
    {
      v26 = 2 * v11;
      v11 = (2 * v11) | 1;
      v25 = (a1 + 4 * v11);
      v27 = v26 + 2;
      if (v26 + 2 < a3)
      {
        v28 = **a2;
        v44 = *(v28 + 16 * v25[1]);
        v48 = *a2[1];
        v40 = *(v28 + 16 * *v25);
        v29 = _simd_orient_pd2(v48, v40, v44);
        if (v29 != 0.0)
        {
          if (v29 <= 0.0)
          {
            goto LABEL_19;
          }

LABEL_18:
          ++v25;
          v11 = v27;
          goto LABEL_19;
        }

        v30 = vsubq_f64(v40, v48);
        v31 = vsubq_f64(v44, v48);
        v32 = vpaddq_f64(vmulq_f64(v30, v30), vmulq_f64(v31, v31));
        if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v32, 1), v32)).u8[0])
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      v33 = **a2;
      v45 = *(v33 + 16 * v24);
      v49 = *a2[1];
      v41 = *(v33 + 16 * *v25);
      v34 = _simd_orient_pd2(v49, v41, v45);
      if (v34 == 0.0)
      {
        v35 = vsubq_f64(v41, v49);
        v36 = vsubq_f64(v45, v49);
        v37 = vpaddq_f64(vmulq_f64(v35, v35), vmulq_f64(v36, v36));
        if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v37, 1), v37)).u32[0])
        {
          break;
        }
      }

      else if (v34 > 0.0)
      {
        break;
      }

      *v12 = *v25;
      v12 = v25;
      if (v7 < v11)
      {
        goto LABEL_13;
      }
    }
  }

  v25 = v12;
LABEL_13:
  *v25 = v24;
}

_DWORD *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(_DWORD *a1, uint64_t **a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1;
    v9 = &a1[v6];
    a1 = v9 + 1;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 >= a3)
    {
      goto LABEL_6;
    }

    v13 = v9[2];
    v12 = v9 + 2;
    v14 = **a2;
    v21 = *(v14 + 16 * v13);
    v22 = *a2[1];
    v20 = *(v14 + 16 * *(v12 - 1));
    v15 = _simd_orient_pd2(v22, v20, v21);
    if (v15 == 0.0)
    {
      v16 = vsubq_f64(v20, v22);
      v17 = vsubq_f64(v21, v22);
      v18 = vpaddq_f64(vmulq_f64(v16, v16), vmulq_f64(v17, v17));
      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v18, 1), v18)).u32[0] & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_5:
      a1 = v12;
      v6 = v11;
      goto LABEL_6;
    }

    if (v15 > 0.0)
    {
      goto LABEL_5;
    }

LABEL_6:
    *v8 = *a1;
  }

  while (v6 <= v7);
  return a1;
}

void std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,void geom::convex_hull_2<double>(unsigned long,geom::vector_type<double,(unsigned char)2,void>::value const*,std::vector<unsigned int> &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 4 * (v4 >> 1));
    v10 = **a3;
    v25 = *(v10 + 16 * *(a2 - 4));
    v27 = *a3[1];
    v23 = *(v10 + 16 * *v9);
    v11 = _simd_orient_pd2(v27, v23, v25);
    if (v11 == 0.0)
    {
      v12 = vsubq_f64(v23, v27);
      v13 = vsubq_f64(v25, v27);
      v14 = vpaddq_f64(vmulq_f64(v12, v12), vmulq_f64(v13, v13));
      if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v14, 1), v14)).u32[0] & 1) == 0)
      {
        return;
      }
    }

    else if (v11 <= 0.0)
    {
      return;
    }

    v15 = *(a2 - 4);
    *(a2 - 4) = *v9;
    if (v4 >= 2)
    {
      do
      {
        v17 = v8 - 1;
        v8 = (v8 - 1) >> 1;
        v16 = (a1 + 4 * v8);
        v18 = **a3;
        v26 = *(v18 + 16 * v15);
        v28 = *a3[1];
        v24 = *(v18 + 16 * *v16);
        v19 = _simd_orient_pd2(v28, v24, v26);
        if (v19 == 0.0)
        {
          v20 = vsubq_f64(v24, v28);
          v21 = vsubq_f64(v26, v28);
          v22 = vpaddq_f64(vmulq_f64(v20, v20), vmulq_f64(v21, v21));
          if ((vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v22, 1), v22)).u32[0] & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        else if (v19 <= 0.0)
        {
          goto LABEL_7;
        }

        *v9 = *v16;
        v9 = (a1 + 4 * v8);
      }

      while (v17 > 1);
    }

    else
    {
LABEL_7:
      v16 = v9;
    }

    *v16 = v15;
  }
}

uint64_t geom::compute_eigendecomposition_of_symmetric_matrix<float,3ul>(uint64_t a1, uint64_t a2, int a3)
{
  v3 = ssyev_NEWLAPACK();
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  ssyev_NEWLAPACK();
  return 0;
}

uint64_t geom::compute_eigendecomposition_of_symmetric_matrix<double,3ul>(uint64_t a1, uint64_t a2, int a3)
{
  v3 = dsyev_NEWLAPACK();
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  dsyev_NEWLAPACK();
  return 0;
}

uint64_t geom_ddg_evaluator_create_3f(unint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  v7 = 3 * a3;
  v8 = geom_ddg_evaluator_3f_obj_alloc();
  geom::ddg_evaluator<float>::ddg_evaluator(v8 + 16, a2, a1, a4, v7);
  return v8;
}

uint64_t geom_ddg_evaluator_create_3d(unint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  v7 = 3 * a3;
  v8 = geom_ddg_evaluator_3d_obj_alloc();
  geom::ddg_evaluator<double>::ddg_evaluator(v8 + 16, a2, a1, a4, v7);
  return v8;
}

void geom_ddg_evaluator_compute_laplacian_stencil_3f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  geom::ddg_evaluator<float>::compute_laplacian_stencil((a1 + 16), a3, a2, &v9);
  v7 = geom::collection_to_vector<float>(a4);
  if (v7 != &v9)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v7, v9, v10, (v10 - v9) >> 2);
  }

  v8 = geom::collection_to_vector<float>(a5);
  if (v8 != &__p)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v8, __p, v12, (v12 - __p) >> 2);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void geom_ddg_evaluator_compute_laplacian_stencil_3d(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  geom::ddg_evaluator<double>::compute_laplacian_stencil((a1 + 16), a3, a2, &v9);
  v7 = geom::collection_to_vector<float>(a4);
  if (v7 != &v9)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v7, v9, v10, (v10 - v9) >> 2);
  }

  v8 = geom::collection_to_vector<float>(a5);
  if (v8 != &__p)
  {
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>(v8, __p, v12, (v12 - __p) >> 3);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

void geom_ddg_evaluator_get_vertex_one_ring_3f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = geom::collection_to_vector<float>(a3);

  geom::ddg_evaluator<float>::get_vertex_one_ring(a1 + 16, v3, v5);
}

void geom_ddg_evaluator_get_vertex_one_ring_3d(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = geom::collection_to_vector<float>(a3);

  geom::ddg_evaluator<float>::get_vertex_one_ring(a1 + 16, v3, v5);
}

void geom_ddg_evaluator_get_vertex_incident_faces_3f(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = geom::collection_to_vector<float>(a3);

  geom::ddg_evaluator<float>::get_vertex_incident_faces(a1 + 16, v3, v5);
}

void geom_ddg_evaluator_get_vertex_incident_faces_3d(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = geom::collection_to_vector<float>(a3);

  geom::ddg_evaluator<float>::get_vertex_incident_faces(a1 + 16, v3, v5);
}

double geom_ddg_evaluator_compute_vertex_normal_3d@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, unsigned int a3@<W1>)
{
  geom::ddg_evaluator<double>::compute_vertex_normal((a1 + 16), a3, v6);
  result = *v6[0].i64;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

float64_t geom_ddg_evaluator_compute_vertex_mean_curvature_vector_3d@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, uint64_t a3@<X1>)
{
  geom::ddg_evaluator<double>::compute_vertex_mean_curvature_vector((a1 + 16), a3, v6);
  result = v6[0].f64[0];
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

uint64_t geom::ddg_evaluator<float>::stencil::~stencil(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

double geom_closest_point_to_triangle_3f(float32x4_t *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v7 = a2;
  v6[0] = a3;
  v6[1] = a4;
  v6[2] = a5;
  return geom::closest_point_to_triangle<float>(&v7, v6, a1);
}

double geom::closest_point_to_triangle<float>(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = vsubq_f32(v4, *a2);
  v6 = a2[2];
  v7 = vsubq_f32(v6, *a2);
  v8 = *a1;
  v9 = vsubq_f32(*a1, *a2);
  v10 = vmulq_f32(v5, v9);
  v11 = vmulq_f32(v7, v9);
  _D5 = vadd_f32(vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v10, v10, 8uLL)), vadd_f32(vzip1_s32(*v11.i8, *v10.i8), vzip2_s32(*v11.i8, *v10.i8)));
  *v10.i8 = vclez_f32(_D5);
  if (v10.i32[1] & v10.i32[0])
  {
    if (a3)
    {
      *a3 = xmmword_2500C1620;
      v3 = *a2;
    }

    return *v3.i64;
  }

  v13 = vsubq_f32(v8, v4);
  v14 = vmulq_f32(v5, v13);
  v15 = vmulq_f32(v7, v13);
  _D7 = vadd_f32(vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v14, v14, 8uLL)), vadd_f32(vzip1_s32(*v15.i8, *v14.i8), vzip2_s32(*v15.i8, *v14.i8)));
  if (_D7.f32[1] >= 0.0 && _D7.f32[0] <= _D7.f32[1])
  {
    v3 = a2[1];
    if (a3)
    {
      *a3 = xmmword_2500C1630;
      v3 = a2[1];
    }

    return *v3.i64;
  }

  __asm { FMLA            S6, S7, V5.S[1] }

  if (_D5.f32[1] != _D7.f32[1] && _D7.f32[1] <= 0.0 && _D5.f32[1] >= 0.0 && _S6 <= 0.0)
  {
    v22 = _D5.f32[1] / (_D5.f32[1] - _D7.f32[1]);
    if (a3)
    {
      *&v23 = 1.0 - v22;
      *(&v23 + 1) = _D5.f32[1] / (_D5.f32[1] - _D7.f32[1]);
      *a3 = v23;
      v3 = *a2;
    }

    v3.i64[0] = vmlaq_n_f32(v3, v5, v22).u64[0];
    return *v3.i64;
  }

  v24 = vsubq_f32(v8, v6);
  v25 = vmulq_f32(v5, v24);
  v26 = vmulq_f32(v7, v24);
  v27 = vadd_f32(vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v26, v26, 8uLL)), vadd_f32(vzip1_s32(*v25.i8, *v26.i8), vzip2_s32(*v25.i8, *v26.i8)));
  if (v27.f32[1] >= 0.0 && v27.f32[0] <= v27.f32[1])
  {
    if (a3)
    {
      *a3 = xmmword_2500C2810;
      v6 = a2[2];
    }

    v3.i64[0] = v6.i64[0];
    return *v3.i64;
  }

  v29 = (v27.f32[0] * _D5.f32[0]) - (_D5.f32[1] * v27.f32[1]);
  if (v27.f32[1] <= 0.0 && v29 <= 0.0 && _D5.f32[0] >= 0.0 && _D5.f32[0] != v27.f32[1])
  {
    v31 = _D5.f32[0] / (_D5.f32[0] - v27.f32[1]);
    if (a3)
    {
      v32.i32[1] = 0;
      v32.f32[0] = 1.0 - v31;
      v32.i64[1] = LODWORD(v31);
      *a3 = v32;
      v3 = *a2;
    }

LABEL_41:
    v3.i64[0] = vmlaq_n_f32(v3, v7, v31).u64[0];
    return *v3.i64;
  }

  v33 = (_D7.f32[1] * v27.f32[1]) - (v27.f32[0] * _D7.f32[0]);
  if (v33 > 0.0 || (v34 = _D7.f32[0] - _D7.f32[1], v34 < 0.0) || (v27.f32[0] - v27.f32[1]) < 0.0)
  {
    v35 = 1.0 / (_S6 + (v33 + v29));
    v36 = v29 * v35;
    v31 = _S6 * v35;
    if (a3)
    {
      v3.f32[0] = (1.0 - v36) - v31;
      v3.f32[1] = v36;
      v3.f32[2] = v31;
      *a3 = v3;
      v3 = *a2;
    }

    v3 = vmlaq_n_f32(v3, v5, v36);
    goto LABEL_41;
  }

  v37 = v34 / ((v27.f32[0] - v27.f32[1]) + v34);
  if (a3)
  {
    v38.i32[0] = 0;
    v38.f32[1] = 1.0 - v37;
    v38.i64[1] = LODWORD(v37);
    *a3 = v38;
    v4 = a2[1];
    v6 = a2[2];
  }

  v3.i64[0] = vmlaq_n_f32(v4, vsubq_f32(v6, v4), v37).u64[0];
  return *v3.i64;
}

float64_t geom_closest_point_to_triangle_3d@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, _OWORD *a3@<X8>, uint64_t a4@<X2>)
{
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a2[3];
  v12[2] = a2[2];
  v12[3] = v6;
  v7 = a2[5];
  v12[4] = a2[4];
  v12[5] = v7;
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  geom::closest_point_to_triangle<double>(v13, v12, a4, v11);
  result = v11[0].f64[0];
  v10 = v11[1];
  *a3 = v11[0];
  a3[1] = v10;
  return result;
}

float64x2_t *geom::closest_point_to_triangle<double>@<X0>(float64x2_t *result@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X2>, float64x2_t *a4@<X8>)
{
  v5 = a2[2];
  v4 = a2[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = vsubq_f64(v5, *a2);
  v9 = vsubq_f64(v4, v6);
  v11 = a2[4];
  v10 = a2[5];
  v12 = vsubq_f64(v11, *a2);
  v13 = vsubq_f64(v10, v6);
  v15 = *result;
  v14 = result[1];
  v16 = vsubq_f64(*result, *a2);
  v17 = vsubq_f64(v14, v6);
  v18 = vmulq_f64(v9, v17).f64[0] + vaddvq_f64(vmulq_f64(v8, v16));
  v19 = vmulq_f64(v13, v17).f64[0] + vaddvq_f64(vmulq_f64(v12, v16));
  if (v18 <= 0.0 && v19 <= 0.0)
  {
    if (a3)
    {
      *a3 = xmmword_2500C1650;
      *(a3 + 16) = 0u;
      v7 = *a2;
      v6 = a2[1];
    }

    goto LABEL_20;
  }

  v20 = vsubq_f64(v15, v5);
  v21 = vsubq_f64(v14, v4);
  v22 = vaddq_f64(vzip1q_s64(vmulq_f64(v13, v21), vmulq_f64(v9, v21)), vpaddq_f64(vmulq_f64(v12, v20), vmulq_f64(v8, v20)));
  if (v22.f64[1] >= 0.0 && v22.f64[0] <= v22.f64[1])
  {
    if (a3)
    {
      *a3 = xmmword_2500C1660;
      *(a3 + 16) = 0u;
      v5 = a2[2];
      v4 = a2[3];
    }

LABEL_19:
    v7 = v5;
    v6 = v4;
    goto LABEL_20;
  }

  v24 = v18 * v22.f64[0] - v22.f64[1] * v19;
  if (v18 == v22.f64[1] || v22.f64[1] > 0.0 || v18 < 0.0 || v24 > 0.0)
  {
    v27 = vsubq_f64(v15, v11);
    v28 = vsubq_f64(v14, v10);
    v29 = vaddq_f64(vzip1q_s64(vmulq_f64(v9, v28), vmulq_f64(v13, v28)), vpaddq_f64(vmulq_f64(v8, v27), vmulq_f64(v12, v27)));
    if (v29.f64[1] < 0.0 || v29.f64[0] > v29.f64[1])
    {
      v31 = v29.f64[0] * v19 - v18 * v29.f64[1];
      if (v29.f64[1] > 0.0 || v31 > 0.0 || (v19 >= 0.0 ? (_ZF = v19 == v29.f64[1]) : (_ZF = 1), _ZF))
      {
        v37 = v22.f64[1] * v29.f64[1] - v29.f64[0] * v22.f64[0];
        if (v37 <= 0.0 && v22.f64[0] - v22.f64[1] >= 0.0 && v29.f64[0] - v29.f64[1] >= 0.0)
        {
          v6.f64[0] = (v22.f64[0] - v22.f64[1]) / (v22.f64[0] - v22.f64[1] + v29.f64[0] - v29.f64[1]);
          if (a3)
          {
            *&v41 = 0;
            *(&v41 + 1) = 1.0 - v6.f64[0];
            *a3 = v41;
            *(a3 + 16) = v6;
            v5 = a2[2];
            v4 = a2[3];
            v11 = a2[4];
            v10 = a2[5];
          }

          v5 = vmlaq_n_f64(v5, vsubq_f64(v11, v5), v6.f64[0]);
          v4 = vmlaq_n_f64(v4, vsubq_f64(v10, v4), v6.f64[0]);
          goto LABEL_19;
        }

        v38 = 1.0 / (v24 + v37 + v31);
        v39 = v31 * v38;
        v4.f64[0] = v24 * v38;
        if (a3)
        {
          *&v40 = 1.0 - v39 - v4.f64[0];
          *(&v40 + 1) = v39;
          *a3 = v40;
          *(a3 + 16) = v4;
          v7 = *a2;
          v6 = a2[1];
        }

        v6 = vmlaq_n_f64(vmlaq_n_f64(v6, v9, v39), v13, v4.f64[0]);
        v7 = vmlaq_n_f64(vmlaq_n_f64(v7, v8, v39), v12, v4.f64[0]);
      }

      else
      {
        v8.f64[0] = v19 / (v19 - v29.f64[1]);
        if (a3)
        {
          *a3 = COERCE_UNSIGNED_INT64(1.0 - v8.f64[0]);
          *(a3 + 16) = v8;
          v7 = *a2;
          v6 = a2[1];
        }

        v6 = vmlaq_n_f64(v6, v13, v8.f64[0]);
        v7 = vmlaq_n_f64(v7, v12, v8.f64[0]);
      }
    }

    else
    {
      if (a3)
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        __asm { FMOV            V0.2D, #1.0 }

        *(a3 + 16) = _Q0;
        v11 = a2[4];
        v10 = a2[5];
      }

      v7 = v11;
      v6 = v10;
    }
  }

  else
  {
    v25 = v18 / (v18 - v22.f64[1]);
    if (a3)
    {
      *&v26 = 1.0 - v25;
      *(&v26 + 1) = v18 / (v18 - v22.f64[1]);
      *a3 = v26;
      *(a3 + 16) = 0u;
      v7 = *a2;
      v6 = a2[1];
    }

    v6 = vmlaq_n_f64(v6, v9, v25);
    v7 = vmlaq_n_f64(v7, v8, v25);
  }

LABEL_20:
  *a4 = v7;
  a4[1] = v6;
  return result;
}

float32x2_t geom_closest_point_to_circle_2f(uint64_t a1, int a2, float *a3, float32x2_t result)
{
  v4 = vsub_f32(result, a1);
  v5 = vmul_f32(v4, v4);
  v5.f32[0] = sqrtf(vaddv_f32(v5));
  v6 = v5.f32[0] - *&a2;
  if (a3)
  {
    *a3 = v6;
  }

  if (v6 != 0.0 && v6 > 0.000005)
  {
    return vmla_n_f32(a1, vdiv_f32(v4, vdup_lane_s32(v5, 0)), *&a2);
  }

  return result;
}

float64_t geom_closest_point_to_circle_2d(uint64_t a1, double *a2, float64x2_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = vsubq_f64(a3, *a1);
  v7 = sqrt(vaddvq_f64(vmulq_f64(v6, v6)));
  v8 = v7 - *&v5;
  if (a2)
  {
    *a2 = v8;
  }

  if (v8 == 0.0 || v8 <= 1.0e-10)
  {
    return a3.f64[0];
  }

  *&result = *&vmlaq_n_f64(v4, vdivq_f64(v6, vdupq_lane_s64(*&v7, 0)), *&v5);
  return result;
}

double geom_closest_point_to_sphere_3f(uint64_t a1, float *a2, float32x4_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = vsubq_f32(a3, *a1);
  v7 = vmulq_f32(v6, v6);
  v7.f32[0] = sqrtf(v7.f32[2] + vaddv_f32(*v7.f32));
  v8 = v7.f32[0] - *&v5;
  if (a2)
  {
    *a2 = v8;
  }

  if (v8 == 0.0 || v8 <= 0.000005)
  {
    return *a3.i64;
  }

  *&result = vmlaq_n_f32(v4, vdivq_f32(v6, vdupq_lane_s32(*v7.f32, 0)), *&v5).u64[0];
  return result;
}

float64x2_t *geom_closest_point_to_sphere_3d@<X0>(float64x2_t *result@<X0>, float64x2_t *a2@<X1>, double *a3@<X2>, float64x2_t *a4@<X8>)
{
  v5 = *result;
  v4 = result[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2].f64[0];
  v9 = vsubq_f64(*result, *a2);
  v10 = vsubq_f64(v4, v6);
  v11 = sqrt(vmulq_f64(v10, v10).f64[0] + vaddvq_f64(vmulq_f64(v9, v9)));
  v12 = v11 - v8;
  if (a3)
  {
    *a3 = v12;
  }

  if (v12 != 0.0 && v12 > 1.0e-10)
  {
    v13 = vdupq_lane_s64(*&v11, 0);
    v5 = vmlaq_n_f64(v7, vdivq_f64(v9, v13), v8);
    v4 = vmlaq_n_f64(v6, vdivq_f64(v10, v13), v8);
  }

  *a4 = v5;
  a4[1] = v4;
  return result;
}

void geom_find_best_rigid_transform_3f(unsigned int a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, _DWORD *a6)
{
  v7[0] = a2;
  v7[1] = a1;
  v6[0] = a3;
  v6[1] = a1;
  geom::find_best_rigid_transform<float>(v7, v6, a4, a5, a6);
}

void geom::find_best_rigid_transform<float>(float32x4_t **a1, float32x4_t **a2, float32x4_t *a3, float32x4_t *a4, _DWORD *a5)
{
  v9 = a1[1];
  if (v9)
  {
    v11 = *a1;
    v12 = 16 * v9;
    v13 = 0uLL;
    do
    {
      v14 = *v11++;
      v15.i32[1] = v14.i32[1];
      v13 = vaddq_f32(v13, v14);
      v12 -= 16;
    }

    while (v12);
    *v15.i32 = v9;
    v16 = vdupq_lane_s32(v15, 0);
    v17 = a2[1];
    if (v17)
    {
      v18 = *a2;
      v19 = 16 * v17;
      v20 = 0uLL;
      do
      {
        v21 = *v18++;
        v20 = vaddq_f32(v20, v21);
        v19 -= 16;
      }

      while (v19);
    }

    else
    {
      v20 = 0uLL;
    }

    v22 = vdivq_f32(v13, v16);
    v13.f32[0] = v17;
    v65 = v22;
    v66 = vdivq_f32(v20, vdupq_lane_s32(*v13.f32, 0));
    v70 = 0;
    v71 = 0;
    v72 = 0;
    __p = 0;
    v68 = 0;
    v69 = 0;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v70, v9);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, a2[1]);
    v24 = v70;
    if (a1[1])
    {
      v25 = 0;
      v26 = 0;
      v23 = v66;
      do
      {
        v24[v25] = vsubq_f32((*a1)[v25], v65);
        *(__p + v25) = vsubq_f32((*a2)[v25], v66);
        v24 = v70;
        v27 = vmulq_f32(*(v70 + v25), *(v70 + v25));
        v28 = __p;
        v29 = vmulq_f32(*(__p + v25), *(__p + v25));
        v26 = vadd_f32(v26, vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v27, v27, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v27.i8), vzip2_s32(*v29.i8, *v27.i8))));
        ++v25;
      }

      while (v25 < a1[1]);
    }

    else
    {
      v26 = 0;
      v28 = __p;
    }

    v64 = v26;
    if (v71 == v24)
    {
      v34 = 0uLL;
      v33 = 0uLL;
      v31 = 0uLL;
    }

    else
    {
      v30 = v71 - v24;
      v31 = 0uLL;
      v32 = 1;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v35 = *v28++;
        v36 = v35;
        v37 = *v24++;
        v23 = v37;
        v31 = vmlaq_n_f32(v31, v36, v37.f32[0]);
        v33 = vmlaq_lane_f32(v33, v36, *v37.f32, 1);
        v34 = vmlaq_laneq_f32(v34, v36, v37, 2);
      }

      while (v30 > v32++);
    }

    v39 = v34.f32[2];
    *v23.i32 = (v31.f32[0] - v33.f32[1]) - v34.f32[2];
    *&v40 = v34.f32[0] + v31.f32[2];
    *v41.i32 = v33.f32[2] - v34.f32[1];
    v42 = vdupq_lane_s32(*v34.f32, 0);
    v42.f32[1] = v33.f32[1] - v31.f32[0];
    v43 = vzip2q_s32(vzip1q_s32(v31, v34), vtrn1q_s32(v34, v31));
    v44 = vtrn2q_s32(vrev64q_s32(vaddq_f32(v33, v43)), vsubq_f32(v42, v43));
    *&v45 = vzip1q_s32(v23, v44).u64[0];
    *(&v45 + 1) = __PAIR64__(v41.u32[0], v40);
    v74[0] = v45;
    v74[1] = v44;
    DWORD1(v40) = v44.i32[2];
    v46.i32[1] = v31.i32[1];
    v46.f32[0] = v39 - v33.f32[1];
    *(&v40 + 1) = vsub_f32(v46, vzip1_s32(*v31.f32, *v33.f32));
    v41.i32[1] = v44.i32[3];
    v41.i32[2] = HIDWORD(v40);
    *&v41.i32[3] = v39 + (v33.f32[1] + v31.f32[0]);
    v74[2] = v40;
    v75 = v41;
    v73[0] = 0;
    v73[1] = 0;
    if (geom::compute_eigendecomposition_of_symmetric_matrix<float,4ul>(v74, v73, 1))
    {
      v47 = v75;
      v48 = vmulq_f32(v47, v47);
      v49 = vextq_s8(v48, v48, 8uLL);
      v49.f32[0] = vaddv_f32(vadd_f32(*v48.i8, *v49.f32));
      v50 = v64;
      if (v49.f32[0] == 1.0 || (v62 = fabsf(v49.f32[0]), v63.i64[0] = 0x3F0000003FLL, v63.i64[1] = 0x3F0000003FLL, v51 = vnegq_f32(v63), v62 != INFINITY) && fabsf(v49.f32[0] + -1.0) < (((v62 + 1.0) + 1.0) * 0.00001))
      {
        v49.i64[0] = 0;
        v51 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v49, vdupq_laneq_s32(v75, 3)), 0), vnegq_f32(v75), v75);
      }
    }

    else
    {
      v47.i64[0] = 0x3F0000003FLL;
      v47.i64[1] = 0x3F0000003FLL;
      v51 = vnegq_f32(v47);
      v50 = v64;
    }

    *a4 = v51;
    v47.i32[0] = 1.0;
    if (v50.f32[1] > 0.0)
    {
      v47.f32[0] = sqrtf(v50.f32[0] / v50.f32[1]);
    }

    *a5 = v47.i32[0];
    v52 = vmulq_f32(*a4, xmmword_2500CB720);
    v53 = vnegq_f32(v52);
    v54 = vtrn2q_s32(v52, vtrn1q_s32(v52, v53));
    v55 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v52, v53, 8uLL), *v65.f32, 1), vextq_s8(v54, v54, 8uLL), v65.f32[0]);
    v56 = vrev64q_s32(v52);
    v56.i32[0] = v53.i32[1];
    v56.i32[3] = v53.i32[2];
    v57 = vmlaq_laneq_f32(v55, v56, v65, 2);
    v58 = vnegq_f32(v57);
    v59 = vtrn2q_s32(v57, vtrn1q_s32(v57, v58));
    v60 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v57, v58, 8uLL), *a4->f32, 1), vextq_s8(v59, v59, 8uLL), COERCE_FLOAT(*a4));
    v61 = vrev64q_s32(v57);
    v61.i32[0] = v58.i32[1];
    v61.i32[3] = v58.i32[2];
    *a3 = vmlsq_lane_f32(v66, vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v57, *a4, 3), v61, *a4, 2), v60), *v47.f32, 0);
    if (__p)
    {
      v68 = __p;
      operator delete(__p);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }
  }

  else
  {
    *a3 = 0u;
    *a4 = xmmword_2500CA7D0;
    *a5 = 1065353216;
  }
}

void geom_find_best_rigid_transform_3d(unsigned int a1, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, float64x2_t *a5, void *a6)
{
  v7[0] = a2;
  v7[1] = a1;
  v6[0] = a3;
  v6[1] = a1;
  geom::find_best_rigid_transform<double>(v7, v6, a4, a5, a6);
}

void geom::find_best_rigid_transform<double>(float64x2_t **a1, float64x2_t **a2, float64x2_t *a3, float64x2_t *a4, void *a5)
{
  v9 = a1[1];
  if (v9)
  {
    v11 = *a1;
    v12 = 32 * v9;
    v13 = 0uLL;
    v14 = 0uLL;
    do
    {
      v15 = *v11;
      v16 = v11[1];
      v11 += 2;
      v14 = vaddq_f64(v14, v16);
      v13 = vaddq_f64(v13, v15);
      v12 -= 32;
    }

    while (v12);
    v15.f64[0] = v9;
    v82 = vdivq_f64(v14, v15);
    v80 = vdivq_f64(v13, vdupq_lane_s64(COERCE__INT64(v9), 0));
    *&v79 = vextq_s8(v80, v80, 8uLL).u64[0];
    v17 = a2[1];
    if (v17)
    {
      v18 = *a2;
      v19 = 32 * v17;
      v20 = 0uLL;
      v21 = 0uLL;
      do
      {
        v15 = *v18;
        v22 = v18[1];
        v18 += 2;
        v21 = vaddq_f64(v21, v22);
        v20 = vaddq_f64(v20, v15);
        v19 -= 32;
      }

      while (v19);
    }

    else
    {
      v20 = 0uLL;
      v21 = 0uLL;
    }

    v15.f64[0] = v17;
    v81 = vdivq_f64(v21, v15);
    v78 = vdivq_f64(v20, vdupq_lane_s64(COERCE__INT64(v17), 0));
    v77 = vextq_s8(v78, v78, 8uLL).u64[0];
    v86 = 0;
    v87 = 0;
    v88 = 0;
    __p = 0;
    v84 = 0;
    v85 = 0;
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&v86, v9);
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&__p, a2[1]);
    v24 = v86;
    v25 = __p;
    v26 = 0uLL;
    if (a1[1])
    {
      v27 = 0;
      *&v28.f64[0] = v80.i64[0];
      v28.f64[1] = v79;
      *&v29.f64[0] = v78.i64[0];
      *&v29.f64[1] = v77;
      do
      {
        v30 = &(*a1)[2 * v27];
        v31 = vsubq_f64(*v30, v28);
        v32 = vsubq_f64(v30[1], v82);
        v33 = &v24[4 * v27];
        *v33 = v31;
        v33[1] = v32;
        v34 = &(*a2)[2 * v27];
        v35 = vsubq_f64(*v34, v29);
        v36 = vsubq_f64(v34[1], v81);
        v37 = &v25[2 * v27];
        *v37 = v35;
        v37[1] = v36;
        v26 = vaddq_f64(v26, vaddq_f64(vzip1q_s64(vmulq_f64(v36, v36), vmulq_f64(v33[1], v33[1])), vpaddq_f64(vmulq_f64(v35, v35), vmulq_f64(*v33, *v33))));
        ++v27;
      }

      while (v27 < a1[1]);
    }

    v76 = v26;
    if (v87 == v24)
    {
      v44 = 0uLL;
      v45 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      v39 = 0uLL;
      v41 = 0uLL;
    }

    else
    {
      v38 = (v87 - v24) >> 5;
      v39 = 0uLL;
      v40 = 1;
      v41 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      do
      {
        v46 = *v25;
        v26 = v25[1];
        v25 += 2;
        v47 = v24[2];
        v48 = *v24;
        v24 += 4;
        v41 = vmlaq_n_f64(v41, v26, v48.f64[0]);
        v39 = vmlaq_n_f64(v39, v46, v48.f64[0]);
        v43 = vmlaq_laneq_f64(v43, v26, v48, 1);
        v42 = vmlaq_laneq_f64(v42, v46, v48, 1);
        v45 = vmlaq_n_f64(v45, v26, v47);
        v44 = vmlaq_n_f64(v44, v46, v47);
        v49 = v38 > v40++;
      }

      while (v49);
    }

    v26.f64[0] = *v39.i64 - v42.f64[1] - *v45.i64;
    *v23.i64 = *v44.i64 + *v41.i64;
    v50.f64[0] = v43.f64[0] - *&v44.i64[1];
    v51 = vzip1q_s64(v43, v44);
    v52.f64[0] = v42.f64[0];
    v52.f64[1] = v42.f64[1] - *v39.i64;
    v53 = vextq_s8(v39, v45, 8uLL);
    v54 = vextq_s8(v44, v41, 8uLL);
    v55 = vaddq_f64(v51, v54);
    v56 = vaddq_f64(v42, v53);
    v57 = vsubq_f64(v51, v54);
    v58 = vzip1q_s64(v23, v55);
    v55.i64[1] = *&v57.f64[1];
    v59 = vzip1q_s64(v26, v56);
    v56.i64[1] = *&vsubq_f64(v52, v53).f64[1];
    v23.i64[1] = *&v50.f64[0];
    v90[0] = v59;
    v90[1] = v23;
    v90[2] = v56;
    v90[3] = v55;
    *&v59.f64[1] = v39.i64[1];
    v59.f64[0] = *v45.i64 - v42.f64[1];
    v90[4] = v58;
    v91 = vsubq_f64(v59, vzip1q_s64(v39, v42));
    v50.f64[1] = v57.f64[1];
    *&v42.f64[0] = vdupq_laneq_s64(v91, 1).u64[0];
    v42.f64[1] = *v45.i64 + v42.f64[1] + *v39.i64;
    v92 = v50;
    v93 = v42;
    memset(v89, 0, sizeof(v89));
    v60 = geom::compute_eigendecomposition_of_symmetric_matrix<double,4ul>(v90, v89, 1);
    v62 = vdupq_n_s64(0x7FF8000000000000uLL);
    v63 = v62;
    if (v60)
    {
      v61 = v92;
      v62 = vaddq_f64(vmulq_f64(v61, v61), vmulq_f64(v93, v93));
      v62.f64[0] = vaddvq_f64(v62);
      if (v62.f64[0] == 1.0 || (v64 = fabs(v62.f64[0] + -1.0), v62 = vdupq_n_s64(0x7FF8000000000000uLL), v49 = v64 > 0.000001, v63 = v62, !v49))
      {
        v62.f64[0] = 0.0;
        v65 = vdupq_lane_s64(vcgtq_f64(v62, vdupq_laneq_s64(v93, 1)).i64[0], 0);
        v63 = vbslq_s8(v65, vnegq_f64(v93), v93);
        v62 = vbslq_s8(v65, vnegq_f64(v92), v92);
      }
    }

    *a4 = v62;
    a4[1] = v63;
    v61.f64[0] = 1.0;
    if (v76.f64[1] > 0.0)
    {
      v61.f64[0] = sqrt(v76.f64[0] / v76.f64[1]);
    }

    *a5 = *&v61.f64[0];
    v66 = a4[1];
    v67 = vmulq_f64(v66, xmmword_2500CB730);
    v68 = vnegq_f64(*a4);
    v69 = vextq_s8(v67, vnegq_f64(v67), 8uLL);
    v70 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v67, v79), v69, *v80.i64), vextq_s8(*a4, v68, 8uLL), v82.f64[0]);
    v71 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*a4, v79), vextq_s8(v68, *a4, 8uLL), *v80.i64), v69, v82.f64[0]);
    v72 = vnegq_f64(v70);
    v73 = vextq_s8(v71, vnegq_f64(v71), 8uLL);
    v74 = vmlaq_n_f64(vmulq_laneq_f64(v71, *a4, 1), v73, a4->f64[0]);
    v75 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v71, v66, 1), v73, v66.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v72, *a4, 1), vextq_s8(v70, v72, 8uLL), a4->f64[0]));
    *&v73.f64[0] = v78.i64[0];
    *&v73.f64[1] = v77;
    *a3 = vmlsq_lane_f64(v73, vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v70, v66, 1), vextq_s8(v72, v70, 8uLL), v66.f64[0]), v74), v61.f64[0], 0);
    a3[1] = vmlsq_f64(v81, v75, v61);
    if (__p)
    {
      v84 = __p;
      operator delete(__p);
    }

    if (v86)
    {
      v87 = v86;
      operator delete(v86);
    }
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
    *a4 = 0u;
    a4[1] = xmmword_2500C1660;
    *a5 = 0x3FF0000000000000;
  }
}

double geom_find_best_rigid_transform_matrix_3f(unsigned int a1, float32x4_t *a2, float32x4_t *a3)
{
  v5[0] = a2;
  v5[1] = a1;
  v4[0] = a3;
  v4[1] = a1;
  return geom::find_best_rigid_transform_matrix<float>(v5, v4);
}

double geom::find_best_rigid_transform_matrix<float>(float32x4_t **a1, float32x4_t **a2)
{
  *(v16.i64 + 4) = 0;
  v16.i32[0] = 0;
  v14 = 0.0;
  geom::find_best_rigid_transform<float>(a1, a2, &v16, &v15, &v14);
  _Q3 = v15;
  v3 = vmulq_f32(_Q3, _Q3);
  _S7 = v15.i32[2];
  v5 = vmuls_lane_f32(v15.f32[2], v15, 3);
  v6 = vmuls_lane_f32(v15.f32[1], v15, 3);
  v7.i32[3] = 0;
  v7.f32[0] = ((v3.f32[1] + v3.f32[2]) * -2.0) + 1.0;
  v7.f32[1] = (v5 + (v15.f32[0] * v15.f32[1])) + (v5 + (v15.f32[0] * v15.f32[1]));
  v7.f32[2] = -(v6 - (v15.f32[0] * v15.f32[2])) - (v6 - (v15.f32[0] * v15.f32[2]));
  *&result = vmulq_n_f32(v7, v14).u64[0];
  __asm { FMLA            S17, S7, V3.S[1] }

  return result;
}

float64_t geom_find_best_rigid_transform_matrix_3d@<D0>(unsigned int a1@<W0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6[0] = a2;
  v6[1] = a1;
  v5[0] = a3;
  v5[1] = a1;
  return geom::find_best_rigid_transform_matrix<double>(v6, v5, a4);
}

float64_t geom::find_best_rigid_transform_matrix<double>@<D0>(float64x2_t **a1@<X0>, float64x2_t **a2@<X1>, uint64_t a3@<X8>)
{
  v27 = 0;
  v26 = 0uLL;
  v23 = 0.0;
  geom::find_best_rigid_transform<double>(a1, a2, &v26, &v24, &v23);
  v4 = v24;
  v5 = v25;
  v6 = vmulq_f64(v5, v5).f64[0];
  v7 = vmulq_f64(v4, v4);
  v8.f64[0] = (v7.f64[1] + v6) * -2.0 + 1.0;
  v9 = v25.f64[1];
  v10 = vmuld_lane_f64(v5.f64[0], v5, 1);
  v11.f64[0] = vmuld_lane_f64(v24.f64[1], v25, 1);
  v8.f64[1] = v10 + v24.f64[0] * v24.f64[1] + v10 + v24.f64[0] * v24.f64[1];
  v12 = vmuld_lane_f64(v24.f64[0], v25, 1) + v24.f64[1] * v25.f64[0];
  v13 = v23;
  v14 = vmulq_n_f64(COERCE_UNSIGNED_INT64(-(v11.f64[0] - v24.f64[0] * v25.f64[0]) - (v11.f64[0] - v24.f64[0] * v25.f64[0])), v23);
  v15.f64[0] = -(v10 - v24.f64[0] * v24.f64[1]) - (v10 - v24.f64[0] * v24.f64[1]);
  v15.f64[1] = (v7.f64[0] + v6) * -2.0 + 1.0;
  *a3 = vmulq_n_f64(v8, v23);
  *(a3 + 16) = v14;
  *(a3 + 32) = vmulq_n_f64(v15, v13);
  *(a3 + 48) = vmulq_n_f64(COERCE_UNSIGNED_INT64(v12 + v12), v13);
  v11.f64[1] = -(v4.f64[0] * v9);
  v16 = vmlaq_n_f64(v11, v4, v5.f64[0]);
  *(a3 + 64) = vmulq_n_f64(vaddq_f64(v16, v16), v13);
  *(a3 + 80) = vmulq_n_f64(COERCE_UNSIGNED_INT64(vaddvq_f64(v7) * -2.0 + 1.0), v13);
  result = v26.f64[0];
  __asm { FMOV            V1.2D, #1.0 }

  *&_Q1 = v27;
  *(a3 + 96) = v26;
  *(a3 + 112) = _Q1;
  return result;
}

uint64_t geom::compute_eigendecomposition_of_symmetric_matrix<float,4ul>(uint64_t a1, uint64_t a2, int a3)
{
  v3 = ssyev_NEWLAPACK();
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  ssyev_NEWLAPACK();
  return 0;
}

uint64_t geom::compute_eigendecomposition_of_symmetric_matrix<double,4ul>(uint64_t a1, uint64_t a2, int a3)
{
  v3 = dsyev_NEWLAPACK();
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  dsyev_NEWLAPACK();
  return 0;
}

uint64_t geom::point_tree<float,(unsigned char)2>::point_tree(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  *a1 = 0;
  *(a1 + 1) = a3;
  *(a1 + 4) = a4;
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = 0x7F0000007FLL;
  v11 = vneg_f32(0x7F0000007FLL);
  *(a1 + 8) = v11;
  *(a1 + 16) = 0x7F0000007FLL;
  if (v9)
  {
    v12 = 8 * v9;
    do
    {
      v11 = vminnm_f32(*v8, v11);
      *(a1 + 8) = v11;
      v13 = *v8++;
      v10 = vmaxnm_f32(v13, v10);
      *(a1 + 16) = v10;
      v12 -= 8;
    }

    while (v12);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *a2;
  *(a1 + 48) = *(a2 + 8);
  *(a1 + 56) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  v15 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (a5)
  {
    v53 = vsub_f32(v14, v15);
    v16 = (&v53 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*&vcgt_f32(vdup_lane_s32(v53, 1), v53) & 1)));
    v17 = vld1_dup_f32(v16);
    v18 = vadd_f32(v15, v17);
    v15 = vminnm_f32(v15, v18);
    v14 = vmaxnm_f32(v14, v18);
    *(a1 + 8) = v15;
    *(a1 + 16) = v14;
  }

  *(a1 + 24) = vsub_f32(v14, v15);
  *(a1 + 32) = vmul_f32(vadd_f32(v14, v15), 0x3F0000003F000000);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1 + 88, (a1 + 24));
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1 + 208, (a1 + 32));
  std::vector<double>::resize((a1 + 64), *(a1 + 48));
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  if (v19 != v20)
  {
    v21 = 0;
    v22 = (v20 - v19 - 8) >> 3;
    v23 = vdupq_n_s64(v22);
    v24 = (v22 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v25 = xmmword_2500C1680;
    v26 = vdupq_n_s64(2uLL);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v23, v25));
      if (v27.i8[0])
      {
        *(v19 + 8 * v21) = v21;
      }

      if (v27.i8[4])
      {
        *(v19 + 8 * v21 + 8) = v21 + 1;
      }

      v21 += 2;
      v25 = vaddq_s64(v25, v26);
    }

    while (v24 != v21);
  }

  v28 = (v20 - v19) >> 3;
  v30 = *(a1 + 192);
  v29 = *(a1 + 200);
  if (v30 >= v29)
  {
    v32 = *(a1 + 184);
    v33 = v30 - v32;
    v34 = (v30 - v32) >> 4;
    v35 = v34 + 1;
    if ((v34 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v36 = v29 - v32;
    if (v36 >> 3 > v35)
    {
      v35 = v36 >> 3;
    }

    v37 = v36 >= 0x7FFFFFFFFFFFFFF0;
    v38 = 0xFFFFFFFFFFFFFFFLL;
    if (!v37)
    {
      v38 = v35;
    }

    if (v38)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1 + 184, v38);
    }

    v39 = v34;
    v40 = (16 * v34);
    *v40 = 0;
    v40[1] = v28;
    v31 = 16 * v34 + 16;
    v41 = &v40[-2 * v39];
    memcpy(v41, v32, v33);
    v42 = *(a1 + 184);
    *(a1 + 184) = v41;
    *(a1 + 192) = v31;
    *(a1 + 200) = 0;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else
  {
    *v30 = 0;
    *(v30 + 1) = v28;
    v31 = (v30 + 16);
  }

  *(a1 + 192) = v31;
  std::vector<unsigned long long>::push_back[abi:nn200100]((a1 + 112), &geom::point_tree<float,(unsigned char)2>::k_invalid_index);
  std::vector<unsigned long long>::push_back[abi:nn200100]((a1 + 136), &geom::point_tree<float,(unsigned char)2>::k_invalid_index);
  v55[0] = 0uLL;
  std::vector<std::array<std::bitset<64ul>,2ul>>::push_back[abi:nn200100](a1 + 160, v55);
  *(*(a1 + 168) - 16) = vdupq_n_s64(1uLL);
  v56 = 0u;
  memset(v55, 0, sizeof(v55));
  v54 = 0;
  std::deque<unsigned long long>::push_back(v55, &v54);
  v43 = *(&v56 + 1);
  if (*(&v56 + 1))
  {
    v44 = a4;
    do
    {
      v45 = *(*(*(&v55[0] + 1) + ((v56 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v56 & 0x1FF));
      *&v56 = v56 + 1;
      *(&v56 + 1) = v43 - 1;
      if (v56 >= 0x400)
      {
        operator delete(**(&v55[0] + 1));
        *(&v55[0] + 1) += 8;
        *&v56 = v56 - 512;
      }

      if (*(*(a1 + 184) + 16 * v45 + 8) - *(*(a1 + 184) + 16 * v45) > v44)
      {
        if (v45)
        {
          v46 = *(*(a1 + 160) + 16 * v45);
          v47 = 63 - __clz(v46);
          v48 = v46 ? v47 : 0;
        }

        else
        {
          v48 = 0;
        }

        if (a3 > v48)
        {
          geom::point_tree<float,(unsigned char)2>::split(a1, v45);
        }
      }

      if (*(*(a1 + 136) + 8 * v45) != -1)
      {
        for (i = 0; i != 4; ++i)
        {
          v50 = *(*(a1 + 136) + 8 * v45);
          if (v50 == -1)
          {
            v51 = -1;
          }

          else
          {
            v51 = i + v50;
          }

          v54 = v51;
          std::deque<unsigned long long>::push_back(v55, &v54);
        }
      }

      v43 = *(&v56 + 1);
    }

    while (*(&v56 + 1));
  }

  std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v55);
  return a1;
}

void std::vector<std::array<std::bitset<64ul>,2ul>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
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
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t geom::point_tree<float,(unsigned char)2>::depth(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 160) + 16 * a2);
    v3 = 63 - __clz(v2);
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void *geom::point_tree<float,(unsigned char)2>::split(unsigned __int8 *a1, unint64_t a2)
{
  v21 = a2;
  v3 = a1 + 112;
  v4 = (*(a1 + 15) - *(a1 + 14)) >> 3;
  v5 = a1 + 136;
  *(*(a1 + 17) + 8 * a2) = v4;
  std::vector<unsigned long long>::resize(a1 + 14, v4 + 4, &v21);
  std::vector<unsigned long long>::resize(v5, v4 + 4, &geom::point_tree<float,(unsigned char)2>::k_invalid_index);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v3 + 6, v4 + 4);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v3 + 9, v4 + 4);
  v6 = v21;
  if (v21)
  {
    v7 = *(*(v3 + 6) + 16 * v21);
    v8 = 63 - __clz(v7);
    if (v7)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  if (*a1 == v6)
  {
    v9 = v6 + 1;
    *a1 = v9;
    v10 = *(a1 + 24);
    v11 = ldexp(1.0, v9);
    *&v11 = v11;
    v22 = vdiv_f32(v10, vdup_lane_s32(*&v11, 0));
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_((a1 + 88), &v22);
  }

  v12 = 0;
  v13 = *(v3 + 6);
  do
  {
    v14 = 0;
    v15 = v4 + v12;
    v16 = 1;
    do
    {
      v17 = v16;
      v22 = *(v13 + 16 * v21 + 8 * v14);
      std::bitset<64ul>::operator<<=[abi:nn200100](&v22, 1uLL);
      v16 = 0;
      *(*(v3 + 6) + 16 * v15 + 8 * v14) = v22;
      v13 = *(v3 + 6);
      *(v13 + 16 * v15 + 8 * v14) = *(v13 + 16 * v15 + 8 * v14) & 0xFFFFFFFFFFFFFFFELL | (v12 >> v14) & 1;
      v14 = 1;
    }

    while ((v17 & 1) != 0);
    ++v12;
  }

  while (v12 != 4);
  v18 = v21;
  v19 = geom::point_tree<float,(unsigned char)2>::centroid(a1, v21);
  return geom::point_tree<float,(unsigned char)2>::partition(a1, v18, 0, 0, *(*(a1 + 23) + 16 * v21), *(*(a1 + 23) + 16 * v21 + 8), v19);
}

uint64_t geom::point_tree<float,(unsigned char)2>::child(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(*(a1 + 136) + 8 * a2);
  if (v3 == -1)
  {
    return -1;
  }

  else
  {
    return v3 + a3;
  }
}

float32x2_t geom::point_tree<float,(unsigned char)2>::bounds(float32x2_t *a1, unint64_t a2)
{
  if (a2)
  {
    v4 = geom::point_tree<float,(unsigned char)2>::centroid(a1, a2);
    v5 = *(*&a1[20] + 16 * a2);
    v6 = (63 - __clz(v5));
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = vmul_f32(*(*&a1[11] + 8 * v7), 0x3F0000003F000000);
    return vminnm_f32(vsub_f32(*&v4, v8), vminnm_f32(vadd_f32(*&v4, v8), vneg_f32(0x7F0000007FLL)));
  }

  else
  {
    return a1[1];
  }
}

double geom::point_tree<float,(unsigned char)2>::centroid(double *a1, unint64_t a2)
{
  v2 = *(a1 + 26);
  if (a2 < (*(a1 + 27) - v2) >> 3)
  {
    return *(v2 + 8 * a2);
  }

  v4 = 0;
  v5 = (*(a1 + 20) + 16 * a2);
  v6 = 63 - __clz(*v5);
  if (*v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 3);
  v3 = a1[4];
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = 0.0;
    if (v7)
    {
      v12 = v5[v4];
      v13 = 2;
      v14 = v7 - 1;
      do
      {
        if ((v12 >> v14))
        {
          v15 = 1.0;
        }

        else
        {
          v15 = 0.0;
        }

        v16 = powf(-1.0, v15);
        v11 = v11 + v16 * (1.0 / exp2(v13++));
        --v14;
      }

      while (v14 != -1);
    }

    v9 = 0;
    v19 = v8;
    v17 = *(&v19 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1)));
    v20 = v3;
    *(&v20 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1))) = *(&v20 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v4 & 1))) - (v17 * v11);
    v3 = v20;
    v4 = 1;
  }

  while ((v10 & 1) != 0);
  return v3;
}

double geom::point_tree<float,(unsigned char)2>::sides(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 160) + 16 * a2);
    v3 = (63 - __clz(v2));
    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return *(*(a1 + 88) + 8 * v4);
}

uint64_t geom::point_tree<float,(unsigned char)2>::node(uint64_t a1, unint64_t *a2)
{
  v13 = 1;
  v4 = std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,64ul>,true,true>(a2, 0, (a2 + 1), 0, &v13);
  result = 0;
  if ((v4 & 1) == 0)
  {
    result = 0;
    v6 = *a2;
    if (*a2)
    {
      v7 = __clz(v6);
      if (v7 != 63)
      {
        result = 0;
        v8 = 62 - v7;
        v9 = (63 - v7) - 1;
        do
        {
          v10 = *(*(a1 + 136) + 8 * result);
          if (v10 == -1)
          {
            break;
          }

          v11 = ((a2[1] >> v8) & 1) != 0 ? (v6 >> v8) & 1 | 2 : (v6 >> v8) & 1;
          result = v10 + v11;
          --v8;
        }

        while (v9--);
      }
    }
  }

  return result;
}

uint64_t geom::point_tree<float,(unsigned char)2>::depth_from_code(uint64_t a1, unint64_t *a2)
{
  v2 = 63 - __clz(*a2);
  if (*a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

unint64_t geom::point_tree<float,(unsigned char)2>::locate(uint64_t a1, float32x2_t *a2)
{
  v2 = vorr_s8(vcgt_f32(*a2, *(a1 + 16)), vcgt_f32(*(a1 + 8), *a2));
  if ((vpmax_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return -1;
  }

  if (**(a1 + 136) == -1)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = geom::point_tree<float,(unsigned char)2>::centroid(a1, v5);
    v7 = 0;
    v8 = 0;
    v9 = *a2;
    v10 = 1;
    do
    {
      v11 = v10;
      v20 = v9;
      v12 = *(&v20 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v7 & 1)));
      v21 = v6;
      v13 = *(&v21 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v7 & 1)));
      v14 = 1 << v7;
      v15 = v8 & ~v14;
      v8 |= v14;
      if (v12 < v13)
      {
        v8 = v15;
      }

      v7 = 1;
      v10 = 0;
    }

    while ((v11 & 1) != 0);
    v16 = *(a1 + 136);
    v17 = *(v16 + 8 * v5);
    v18 = v17 + v8;
    if (v17 == -1)
    {
      v5 = -1;
    }

    else
    {
      v5 = v18;
    }
  }

  while (*(v16 + 8 * v5) != -1);
  return v5;
}

uint64_t geom::point_tree<float,(unsigned char)2>::neighbor(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return -1;
  }

  v3 = (a1[20] + 16 * a2);
  v4 = 63 - __clz(a3);
  if ((a3 & 3) == 0)
  {
    v4 = 0;
  }

  if ((a3 & 1) != (v3[v4] & 1))
  {
    if (v4 >= 2)
    {
LABEL_30:
      abort();
    }

    v5 = *v3 & 1 | (2 * (v3[1] & 1));
    v6 = 1 << v4;
    if ((v5 & v6) != 0)
    {
      v7 = v5 & ~v6;
    }

    else
    {
      v7 = v5 | v6;
    }

    v8 = *(a1[17] + 8 * *(a1[14] + 8 * a2));
    v9 = v8 + v7;
    if (v8 == -1)
    {
      return -1;
    }

    else
    {
      return v9;
    }
  }

  v11 = 63 - __clz(*v3);
  v12 = *v3 && v11 >= 2u;
  if (!v12)
  {
    return -1;
  }

  v13 = v11;
  v14 = 2;
  while (((a3 ^ (v3[v4] >> (v14 - 1))) & 1) == 0)
  {
    v12 = v14++ >= v13;
    if (v12)
    {
      return -1;
    }
  }

  v15 = 0;
  v17 = *v3;
  v16 = *(&v17 + v4);
  do
  {
    if (v15 == 64)
    {
      goto LABEL_30;
    }

    if ((v16 & (1 << v15)) != 0)
    {
      v16 &= ~(1 << v15);
    }

    else
    {
      v16 |= 1 << v15;
    }

    ++v15;
    --v14;
  }

  while (v14);
  *(&v17 + v4) = v16;
  return geom::point_tree<float,(unsigned char)2>::node(a1, &v17);
}

uint64_t geom::point_tree<float,(unsigned char)2>::balance(unsigned __int8 *a1)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v20[0] = &unk_286292CB8;
  v20[1] = v18;
  v20[3] = v20;
  geom::point_tree<float,(unsigned char)2>::traverse(a1, 0, v20);
  std::__function::__value_func<void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::~__value_func[abi:nn200100](v20);
  v2 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    while (1)
    {
      v3 = *(*(*(&v18[0] + 1) + ((v19 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v19 & 0x1FF));
      *&v19 = v19 + 1;
      *(&v19 + 1) = v2 - 1;
      if (v19 >= 0x400)
      {
        operator delete(**(&v18[0] + 1));
        *(&v18[0] + 1) += 8;
        *&v19 = v19 - 512;
      }

      if (*(*(a1 + 17) + 8 * v3) == -1)
      {
        break;
      }

LABEL_26:
      v2 = *(&v19 + 1);
      if (!*(&v19 + 1))
      {
        return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v18);
      }
    }

    v4 = 0;
    while (1)
    {
      v5 = geom::point_tree<float,(unsigned char)2>::neighbor(a1, v3, v4);
      if (v5 != -1)
      {
        v6 = v5;
        if (*(*(a1 + 17) + 8 * v5) == -1)
        {
          break;
        }
      }

LABEL_25:
      if (++v4 == 4)
      {
        goto LABEL_26;
      }
    }

    if (v3)
    {
      v7 = *(*(a1 + 20) + 16 * v3);
      v8 = (63 - __clz(v7));
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = 0;
      if (v5)
      {
LABEL_13:
        v10 = *(*(a1 + 20) + 16 * v5);
        v11 = (63 - __clz(v10));
        if (v10)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

LABEL_18:
        if (v9 - v12 >= 2)
        {
          geom::point_tree<float,(unsigned char)2>::split(a1, v5);
          if (*(*(a1 + 17) + 8 * v6) != -1)
          {
            for (i = 0; i != 4; ++i)
            {
              v14 = *(*(a1 + 17) + 8 * v6);
              if (v14 == -1)
              {
                v15 = -1;
              }

              else
              {
                v15 = i + v14;
              }

              v17 = v15;
              std::deque<unsigned long long>::push_back(v18, &v17);
            }
          }
        }

        goto LABEL_25;
      }
    }

    v12 = 0;
    goto LABEL_18;
  }

  return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](v18);
}

void *geom::point_tree<float,(unsigned char)2>::traverse(void *result, int a2, uint64_t a3)
{
  v4 = result;
  if (a2 == 1)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = 0;
    std::deque<unsigned long long>::push_back(&v15, &v14);
    while (*(&v17 + 1))
    {
      v9 = *(*(*(&v15 + 1) + (((v17 + *(&v17 + 1) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v17 + *(&v17 + 1) - 1) & 0x1FF));
      --*(&v17 + 1);
      std::deque<std::pair<unsigned int,unsigned int>>::__maybe_remove_back_spare[abi:nn200100](&v15, 1);
      std::function<void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::operator()(a3, v4, v9);
      if (*(v4[17] + 8 * v9) != -1)
      {
        for (i = 3; i != -1; --i)
        {
          v11 = *(v4[17] + 8 * v9);
          if (v11 == -1)
          {
            v12 = -1;
          }

          else
          {
            v12 = i + v11;
          }

          v14 = v12;
          std::deque<unsigned long long>::push_back(&v15, &v14);
        }
      }
    }

    return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](&v15);
  }

  if (a2 == 2)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = 0;
    std::deque<unsigned long long>::push_back(&v15, &v14);
    while (*(&v17 + 1))
    {
      v5 = *(*(*(&v15 + 1) + ((v17 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v17 & 0x1FF));
      *&v17 = v17 + 1;
      --*(&v17 + 1);
      if (v17 >= 0x400)
      {
        operator delete(**(&v15 + 1));
        *(&v15 + 1) += 8;
        *&v17 = v17 - 512;
      }

      std::function<void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::operator()(a3, v4, v5);
      if (*(v4[17] + 8 * v5) != -1)
      {
        for (j = 0; j != 4; ++j)
        {
          v7 = *(v4[17] + 8 * v5);
          if (v7 == -1)
          {
            v8 = -1;
          }

          else
          {
            v8 = j + v7;
          }

          v14 = v8;
          std::deque<unsigned long long>::push_back(&v15, &v14);
        }
      }
    }

    return std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](&v15);
  }

  if (result[15] != result[14])
  {
    v13 = 0;
    do
    {
      result = std::function<void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::operator()(a3, v4, v13++);
    }

    while (v13 < (v4[15] - v4[14]) >> 3);
  }

  return result;
}

uint64_t std::function<void ()(geom::point_tree<float,(unsigned char)2> const&,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, a2, &v7);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return geom::point_tree<float,(unsigned char)2>::find_closest_point(v5, v6);
}

uint64_t geom::point_tree<float,(unsigned char)2>::find_closest_point(uint64_t a1, __n128 a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  geom::point_tree<float,(unsigned char)2>::find_k_nearest(a1, 1u, &__p, a2.n128_u64[0]);
  v2 = *__p;
  v5 = __p;
  operator delete(__p);
  return v2;
}

void geom::point_tree<float,(unsigned char)2>::find_k_nearest(uint64_t a1, unsigned int a2, void *a3, float32x2_t a4)
{
  v67 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    __p = 0;
    v62 = 0;
    v63 = 0;
    *&v60 = 0;
    v8 = vsub_f32(COERCE_FLOAT32X2_T(geom::point_tree<float,(unsigned char)2>::centroid(a1, 0)), a4);
    DWORD2(v60) = vaddv_f32(vmul_f32(v8, v8));
    std::vector<geom::point_tree<float,(unsigned char)2>::distance_query_item,std::allocator<geom::point_tree<float,(unsigned char)2>::distance_query_item>>::push_back[abi:nn200100](&__p, &v60);
    std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(__p, v62, &v59, (v62 - __p) >> 4);
    v9 = __p;
    v10 = v62;
    if (__p != v62)
    {
      v11 = INFINITY;
      do
      {
        v12 = *v9;
        v13 = (v10 - v9) >> 4;
        if (v13 >= 2)
        {
          v14 = 0;
          v60 = *v9;
          v15 = v9;
          do
          {
            v16 = v15;
            v15 += 2 * v14 + 2;
            v17 = 2 * v14;
            v14 = (2 * v14) | 1;
            v18 = v17 + 2;
            if (v18 < v13 && *(v15 + 2) > *(v15 + 6))
            {
              v15 += 2;
              v14 = v18;
            }

            *v16 = *v15;
          }

          while (v14 <= ((v13 - 2) >> 1));
          v19 = (v10 - 16);
          if (v15 == v19)
          {
            *v15 = v60;
          }

          else
          {
            *v15 = *v19;
            *v19 = v60;
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(v9, (v15 + 2), &v59, ((v15 + 2) - v9) >> 4);
          }

          v10 = v62;
        }

        v62 = v10 - 16;
        if (*(*(a1 + 136) + 8 * v12) == -1)
        {
          v27 = geom::point_tree<float,(unsigned char)2>::bounds(a1, v12);
          v29 = vsub_f32(vmaxnm_f32(vminnm_f32(a4, v28), v27), a4);
          if (vaddv_f32(vmul_f32(v29, v29)) <= (v11 * v11))
          {
            v30 = (*(a1 + 184) + 16 * v12);
            v31 = *v30;
            v32 = v30[1];
            if (v31 != v32)
            {
              v33 = *(a1 + 64);
              v34 = (v33 + 8 * v32);
              v35 = (v33 + 8 * v31);
              do
              {
                v36 = *v35;
                v37 = vsub_f32(*(*(a1 + 40) + 8 * *v35), a4);
                v38 = vaddv_f32(vmul_f32(v37, v37));
                v39 = v64;
                v40 = v65;
                v41 = (v65 - v64) >> 4;
                if (v41 == a2 && v38 < *(v64 + 2))
                {
                  if (a2 != 1)
                  {
                    v42 = 0;
                    v60 = *v64;
                    v43 = v64;
                    do
                    {
                      v44 = v43;
                      v43 += 16 * v42 + 16;
                      v45 = 2 * v42;
                      v42 = (2 * v42) | 1;
                      v46 = v45 + 2;
                      if (v46 < a2 && *(v43 + 2) < *(v43 + 6))
                      {
                        v43 += 16;
                        v42 = v46;
                      }

                      *v44 = *v43;
                    }

                    while (v42 <= ((a2 - 2) >> 1));
                    v47 = v40 - 16;
                    if (v43 == v47)
                    {
                      *v43 = v60;
                    }

                    else
                    {
                      *v43 = *v47;
                      *v47 = v60;
                      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(v39, (v43 + 16), &v59, (v43 + 16 - v39) >> 4);
                    }

                    v39 = v64;
                    v40 = v65;
                  }

                  v65 = v40 - 16;
                  v41 = (v40 - 16 - v39) >> 4;
                }

                if (v41 < a2)
                {
                  *&v60 = v36;
                  *(&v60 + 2) = v38;
                  std::vector<geom::point_tree<float,(unsigned char)2>::distance_query_item,std::allocator<geom::point_tree<float,(unsigned char)2>::distance_query_item>>::push_back[abi:nn200100](&v64, &v60);
                  std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(v64, v65, &v59, (v65 - v64) >> 4);
                }

                ++v35;
              }

              while (v35 != v34);
            }

            if (a2 == (v65 - v64) >> 4)
            {
              v11 = *(v64 + 2);
            }
          }
        }

        else
        {
          for (i = 0; i != 4; ++i)
          {
            v21 = *(*(a1 + 136) + 8 * v12);
            if (v21 == -1)
            {
              v22 = -1;
            }

            else
            {
              v22 = i + v21;
            }

            if (*(*(a1 + 184) + 16 * v22 + 8) != *(*(a1 + 184) + 16 * v22))
            {
              v23 = geom::point_tree<float,(unsigned char)2>::bounds(a1, v22);
              v25 = vsub_f32(vmaxnm_f32(vminnm_f32(a4, v24), v23), a4);
              if (vaddv_f32(vmul_f32(v25, v25)) <= (v11 * v11))
              {
                *&v60 = v22;
                v26 = vsub_f32(COERCE_FLOAT32X2_T(geom::point_tree<float,(unsigned char)2>::centroid(a1, v22)), a4);
                DWORD2(v60) = vaddv_f32(vmul_f32(v26, v26));
                std::vector<geom::point_tree<float,(unsigned char)2>::distance_query_item,std::allocator<geom::point_tree<float,(unsigned char)2>::distance_query_item>>::push_back[abi:nn200100](&__p, &v60);
                std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(__p, v62, &v59, (v62 - __p) >> 4);
              }
            }
          }
        }

        v9 = __p;
        v10 = v62;
      }

      while (__p != v62);
    }

    std::vector<double>::resize(a3, (v65 - v64) >> 4);
    v48 = a3[1] - *a3;
    if (v48)
    {
      v49 = v48 >> 3;
      v50 = v65;
      do
      {
        v51 = v64;
        --v49;
        *(*a3 + 8 * v49) = *v64;
        v52 = (v50 - v51) >> 4;
        if (v52 >= 2)
        {
          v53 = 0;
          v60 = *v51;
          v54 = v51;
          do
          {
            v55 = v54;
            v54 += 16 * v53 + 16;
            v56 = 2 * v53;
            v53 = (2 * v53) | 1;
            v57 = v56 + 2;
            if (v57 < v52 && *(v54 + 2) < *(v54 + 6))
            {
              v54 += 16;
              v53 = v57;
            }

            *v55 = *v54;
          }

          while (v53 <= ((v52 - 2) >> 1));
          v58 = v50 - 16;
          if (v54 == v58)
          {
            *v54 = v60;
          }

          else
          {
            *v54 = *v58;
            *v58 = v60;
            std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::less<geom::point_tree<float,(unsigned char)2>::distance_query_item> &,std::__wrap_iter<geom::point_tree<float,(unsigned char)2>::distance_query_item*>>(v51, (v54 + 16), &v59, (v54 + 16 - v51) >> 4);
          }

          v50 = v65;
        }

        v50 -= 16;
        v65 = v50;
      }

      while (v49);
    }

    if (__p)
    {
      v62 = __p;
      operator delete(__p);
    }

    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }
  }

  else
  {
    a3[1] = *a3;
  }
}

void geom::point_tree<float,(unsigned char)2>::precompute_cell_data(uint64_t a1)
{
  std::vector<double>::reserve((a1 + 208), (*(a1 + 120) - *(a1 + 112)) >> 3);
  if (*(a1 + 120) - *(a1 + 112) >= 9uLL)
  {
    v2 = 1;
    do
    {
      v3 = geom::point_tree<float,(unsigned char)2>::centroid(a1, v2);
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1 + 208, &v3);
      ++v2;
    }

    while (v2 < (*(a1 + 120) - *(a1 + 112)) >> 3);
  }
}

void std::vector<unsigned long long>::resize(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(result, a2 - v3, a3);
  }
}

void *geom::point_tree<float,(unsigned char)2>::partition(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v9 = result;
  if (a3 != 2)
  {
    v11 = a3;
    v12 = 8 * a5;
    v25 = a6;
    v13 = 8 * a6;
    do
    {
      v14 = v9[8];
      v15 = (v12 + v14);
      if (v12 != v13)
      {
        v16 = (v12 + v14);
        v15 = (v13 + v14);
        v17 = v9[5];
        v26 = a7;
        v18 = *(&v26 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
        while (2)
        {
          while (1)
          {
            v19 = *v16;
            if (*(v17 + 8 * *v16 + 4 * (v11 & 1)) >= v18)
            {
              break;
            }

            if (++v16 == v15)
            {
              goto LABEL_13;
            }
          }

          do
          {
            if (--v15 == v16)
            {
              v15 = v16;
              goto LABEL_13;
            }
          }

          while (*(v17 + 8 * *v15 + 4 * (v11 & 1)) >= v18);
          *v16++ = *v15;
          *v15 = v19;
          if (v15 != v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
      v12 = v15 - v14;
      v20 = (v15 - v14) >> 3;
      v21 = 1 << v11++;
      result = geom::point_tree<float,(unsigned char)2>::partition(v9, a2, v11, a4 & ~v21, a5, v20, a7);
      a4 |= v21;
      a5 = v20;
    }

    while (v11 != 2);
    a5 = v20;
    a6 = v25;
  }

  v22 = *(v9[17] + 8 * a2);
  if (v22 == -1)
  {
    v23 = -1;
  }

  else
  {
    v23 = v22 + a4;
  }

  v24 = (v9[23] + 16 * v23);
  *v24 = a5;
  v24[1] = a6;
  return result;
}

uint64_t geom::point_tree<float,(unsigned char)3>::point_tree(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  *a1 = 0;
  *(a1 + 1) = a3;
  *(a1 + 4) = a4;
  v8 = *a2;
  v9 = *(a2 + 8);
  v10.i64[0] = 0x7F0000007FLL;
  v10.i64[1] = 0x7F0000007FLL;
  v11 = vnegq_f32(v10);
  *(a1 + 16) = v11;
  *(a1 + 32) = v10;
  if (v9)
  {
    v12 = 16 * v9;
    do
    {
      v13 = *v8;
      v13.i32[3] = 0;
      v11.i32[3] = 0;
      v11 = vminnmq_f32(v13, v11);
      *(a1 + 16) = v11;
      v14 = *v8++;
      v15 = v14;
      v15.i32[3] = 0;
      v10.i32[3] = 0;
      v10 = vmaxnmq_f32(v15, v10);
      *(a1 + 32) = v10;
      v12 -= 16;
    }

    while (v12);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *a2;
  *(a1 + 88) = *(a2 + 8);
  *(a1 + 96) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  v16 = *(a1 + 32);
  v17 = *(a1 + 16);
  if (a5)
  {
    v18 = vsubq_f32(v16, v17);
    v60 = v18;
    if (v18.f32[2] <= *(&v60 | (4 * (v18.f32[1] > v18.f32[0]))))
    {
      v19 = v18.f32[1] > v18.f32[0];
    }

    else
    {
      v19 = 2;
    }

    v20 = (&v60 | (4 * v19));
    v21 = vld1q_dup_f32(v20);
    v22 = vaddq_f32(v17, v21);
    v17.i32[3] = 0;
    v22.i32[3] = 0;
    v17 = vminnmq_f32(v17, v22);
    v16.i32[3] = 0;
    v16 = vmaxnmq_f32(v16, v22);
    *(a1 + 16) = v17;
    *(a1 + 32) = v16;
  }

  *(a1 + 48) = vsubq_f32(v16, v17);
  v23 = vaddq_f32(v16, v17);
  v24.i64[0] = 0x3F0000003F000000;
  v24.i64[1] = 0x3F0000003F000000;
  *(a1 + 64) = vmulq_f32(v23, v24);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1 + 128, (a1 + 48));
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1 + 248, (a1 + 64));
  std::vector<double>::resize((a1 + 104), *(a1 + 88));
  v25 = *(a1 + 104);
  v26 = *(a1 + 112);
  if (v25 != v26)
  {
    v27 = 0;
    v28 = (v26 - v25 - 8) >> 3;
    v29 = vdupq_n_s64(v28);
    v30 = (v28 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v31 = xmmword_2500C1680;
    v32 = vdupq_n_s64(2uLL);
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v29, v31));
      if (v33.i8[0])
      {
        *(v25 + 8 * v27) = v27;
      }

      if (v33.i8[4])
      {
        *(v25 + 8 * v27 + 8) = v27 + 1;
      }

      v27 += 2;
      v31 = vaddq_s64(v31, v32);
    }

    while (v30 != v27);
  }

  v34 = (v26 - v25) >> 3;
  v36 = *(a1 + 232);
  v35 = *(a1 + 240);
  if (v36 >= v35)
  {
    v38 = *(a1 + 224);
    v39 = v36 - v38;
    v40 = (v36 - v38) >> 4;
    v41 = v40 + 1;
    if ((v40 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v42 = v35 - v38;
    if (v42 >> 3 > v41)
    {
      v41 = v42 >> 3;
    }

    v43 = v42 >= 0x7FFFFFFFFFFFFFF0;
    v44 = 0xFFFFFFFFFFFFFFFLL;
    if (!v43)
    {
      v44 = v41;
    }

    if (v44)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1 + 224, v44);
    }

    v45 = v40;
    v46 = (16 * v40);
    *v46 = 0;
    v46[1] = v34;
    v37 = 16 * v40 + 16;
    v47 = &v46[-2 * v45];
    memcpy(v47, v38, v39);
    v48 = *(a1 + 224);
    *(a1 + 224) = v47;
    *(a1 + 232) = v37;
    *(a1 + 240) = 0;
    if (v48)
    {
      operator delete(v48);
    }
  }

  else
  {
    *v36 = 0;
    *(v36 + 1) = v34;
    v37 = (v36 + 16);
  }

  *(a1 + 232) = v37;
  std::vector<unsigned long long>::push_back[abi:nn200100]((a1 + 152), &geom::point_tree<float,(unsigned char)3>::k_invalid_index);
  std::vector<unsigned long long>::push_back[abi:nn200100]((a1 + 176), &geom::point_tree<float,(unsigned char)3>::k_invalid_index);
  v62 = 0uLL;
  *&v63 = 0;
  std::vector<std::array<std::bitset<64ul>,3ul>>::push_back[abi:nn200100](a1 + 200, &v62);
  v49 = *(a1 + 208);
  *(v49 - 24) = vdupq_n_s64(1uLL);
  *(v49 - 8) = 1;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v61 = 0;
  std::deque<unsigned long long>::push_back(&v62, &v61);
  v50 = *(&v64 + 1);
  if (*(&v64 + 1))
  {
    v51 = a4;
    do
    {
      v52 = *(*(*(&v62 + 1) + ((v64 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v64 & 0x1FF));
      *&v64 = v64 + 1;
      *(&v64 + 1) = v50 - 1;
      if (v64 >= 0x400)
      {
        operator delete(**(&v62 + 1));
        *(&v62 + 1) += 8;
        *&v64 = v64 - 512;
      }

      if (*(*(a1 + 224) + 16 * v52 + 8) - *(*(a1 + 224) + 16 * v52) > v51)
      {
        if (v52)
        {
          v53 = *(*(a1 + 200) + 24 * v52);
          v54 = 63 - __clz(v53);
          v55 = v53 ? v54 : 0;
        }

        else
        {
          v55 = 0;
        }

        if (a3 > v55)
        {
          geom::point_tree<float,(unsigned char)3>::split(a1, v52);
        }
      }

      if (*(*(a1 + 176) + 8 * v52) != -1)
      {
        for (i = 0; i != 8; ++i)
        {
          v57 = *(*(a1 + 176) + 8 * v52);
          if (v57 == -1)
          {
            v58 = -1;
          }

          else
          {
            v58 = i + v57;
          }

          v61 = v58;
          std::deque<unsigned long long>::push_back(&v62, &v61);
        }
      }

      v50 = *(&v64 + 1);
    }

    while (*(&v64 + 1));
  }

  std::deque<std::pair<unsigned int,unsigned int>>::~deque[abi:nn200100](&v62);
  return a1;
}

void std::vector<std::array<std::bitset<64ul>,3ul>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<std::bitset<64ul>,3ul>>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
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
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t geom::point_tree<float,(unsigned char)3>::depth(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 200) + 24 * a2);
    v3 = 63 - __clz(v2);
    if (v2)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void *geom::point_tree<float,(unsigned char)3>::split(float32x4_t *a1, unint64_t a2)
{
  v20 = a2;
  v3 = &a1[9].i8[8];
  v4 = (a1[10].i64[0] - a1[9].i64[1]) >> 3;
  v5 = a1 + 11;
  *(a1[11].i64[0] + 8 * a2) = v4;
  std::vector<unsigned long long>::resize(&a1[9].i64[1], v4 + 8, &v20);
  std::vector<unsigned long long>::resize(v5, v4 + 8, &geom::point_tree<float,(unsigned char)3>::k_invalid_index);
  std::vector<std::array<std::bitset<64ul>,3ul>>::resize(v3 + 6, v4 + 8);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v3 + 9, v4 + 8);
  v6 = v20;
  if (v20)
  {
    v7 = *(*(v3 + 6) + 24 * v20);
    v8 = 63 - __clz(v7);
    if (v7)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a1->u8[0] == v6)
  {
    v9 = v6 + 1;
    a1->i8[0] = v9;
    v18 = a1[3];
    v10 = ldexp(1.0, v9);
    *&v10 = v10;
    v19 = vdivq_f32(v18, vdupq_lane_s32(*&v10, 0));
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(&a1[8], &v19);
  }

  v11 = 0;
  v12 = *(v3 + 6);
  v13 = 24 * v4;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v19.i64[0] = *(v12 + 24 * v20 + 8 * i);
      std::bitset<64ul>::operator<<=[abi:nn200100](&v19, 1uLL);
      *(*(v3 + 6) + v13 + 8 * i) = v19.i64[0];
      v12 = *(v3 + 6);
      *(v12 + v13 + 8 * i) = *(v12 + v13 + 8 * i) & 0xFFFFFFFFFFFFFFFELL | (v11 >> i) & 1;
    }

    ++v11;
    v13 += 24;
  }

  while (v11 != 8);
  v15 = v20;
  geom::point_tree<float,(unsigned char)3>::centroid(a1, v20);
  return geom::point_tree<float,(unsigned char)3>::partition(a1, v15, 0, 0, *(a1[14].i64[0] + 16 * v20), *(a1[14].i64[0] + 16 * v20 + 8), v16);
}

uint64_t geom::point_tree<float,(unsigned char)3>::child(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(*(a1 + 176) + 8 * a2);
  if (v3 == -1)
  {
    return -1;
  }

  else
  {
    return v3 + a3;
  }
}

float32x4_t geom::point_tree<float,(unsigned char)3>::bounds(float32x4_t *a1, unint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    geom::point_tree<float,(unsigned char)3>::centroid(a1, a2);
    v5 = 0;
    v6 = *(a1[12].i64[1] + 24 * a2);
    v7 = (63 - __clz(v6));
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9.i64[0] = 0x3F0000003F000000;
    v9.i64[1] = 0x3F0000003F000000;
    v10 = vmulq_f32(*(a1[8].i64[0] + 16 * v8), v9);
    v14[0] = vaddq_f32(v4, v10);
    v14[1] = vsubq_f32(v4, v10);
    v11.i64[0] = 0x7F0000007FLL;
    v11.i64[1] = 0x7F0000007FLL;
    result = vnegq_f32(v11);
    do
    {
      v13 = v14[v5];
      v13.i32[3] = 0;
      result.i32[3] = 0;
      result = vminnmq_f32(v13, result);
      v11.i32[3] = 0;
      v11 = vmaxnmq_f32(v13, v11);
      ++v5;
    }

    while (v5 != 2);
  }

  else
  {
    return a1[1];
  }

  return result;
}

void geom::point_tree<float,(unsigned char)3>::centroid(uint64_t a1, unint64_t a2)
{
  if (a2 >= (*(a1 + 256) - *(a1 + 248)) >> 4)
  {
    v2 = 0;
    v3 = (*(a1 + 200) + 24 * a2);
    v4 = 63 - __clz(*v3);
    if (*v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 64);
    v14 = *(a1 + 48);
    do
    {
      v15 = v6;
      v7 = 0.0;
      if (v5)
      {
        v8 = v3[v2];
        v9 = 2;
        v10 = v5 - 1;
        do
        {
          if ((v8 >> v10))
          {
            v11 = 1.0;
          }

          else
          {
            v11 = 0.0;
          }

          v12 = powf(-1.0, v11);
          v7 = v7 + v12 * (1.0 / exp2(v9++));
          --v10;
        }

        while (v10 != -1);
      }

      v16 = v14;
      v13 = *(&v16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2 & 3)));
      v17 = v15;
      *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2 & 3))) = *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2 & 3))) - (v13 * v7);
      v6 = v17;
      HIDWORD(v6) = HIDWORD(v15);
      ++v2;
    }

    while (v2 != 3);
  }
}

__n128 geom::point_tree<float,(unsigned char)3>::sides(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 200) + 24 * a2);
    v3 = (63 - __clz(v2));
    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return *(*(a1 + 128) + 16 * v4);
}

uint64_t geom::point_tree<float,(unsigned char)3>::node(uint64_t a1, unint64_t *a2)
{
  v12 = 1;
  v4 = std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,64ul>,true,true>(a2, 0, (a2 + 1), 0, &v12);
  result = 0;
  if ((v4 & 1) == 0)
  {
    result = 0;
    if (*a2)
    {
      v6 = __clz(*a2);
      if (v6 != 63)
      {
        result = 0;
        v7 = 63 - v6;
        do
        {
          v8 = *(*(a1 + 176) + 8 * result);
          if (v8 == -1)
          {
            break;
          }

          v9 = 0;
          v10 = 0;
          do
          {
            v11 = v10 & ~(1 << v9);
            v10 |= 1 << v9;
            if ((a2[v9] & (1 << (v7 - 1))) == 0)
            {
              v10 = v11;
            }

            ++v9;
          }

          while (v9 != 3);
          result = v8 + v10;
          --v7;
        }

        while (v7);
      }
    }
  }

  return result;
}

unint64_t geom::point_tree<float,(unsigned char)3>::locate(uint64_t a1, float32x4_t *a2)
{
  v2 = vorrq_s8(vcgtq_f32(*a2, *(a1 + 32)), vcgtq_f32(*(a1 + 16), *a2));
  v2.i32[3] = v2.i32[2];
  if ((vmaxvq_u32(v2) & 0x80000000) != 0)
  {
    return -1;
  }

  if (**(a1 + 176) == -1)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    geom::point_tree<float,(unsigned char)3>::centroid(a1, v5);
    v7 = 0;
    v8 = 0;
    v9 = *a2;
    do
    {
      v17 = v9;
      v10 = *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
      v16 = v6;
      v11 = v8 & ~(1 << v7);
      v8 |= 1 << v7;
      if (v10 < *(&v16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3))))
      {
        v8 = v11;
      }

      ++v7;
    }

    while (v7 != 3);
    v12 = *(a1 + 176);
    v13 = *(v12 + 8 * v5);
    v14 = v13 + v8;
    if (v13 == -1)
    {
      v5 = -1;
    }

    else
    {
      v5 = v14;
    }
  }

  while (*(v12 + 8 * v5) != -1);
  return v5;
}

uint64_t geom::point_tree<float,(unsigned char)3>::neighbor(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return -1;
  }

  v3 = (a1[25] + 24 * a2);
  v4 = 63 - __clz(a3);
  if ((a3 & 7) == 0)
  {
    v4 = 0;
  }

  if ((a3 & 1) != (v3[v4] & 1))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v6 & ~(1 << v5);
      v6 |= 1 << v5;
      if ((v3[v5] & 1) == 0)
      {
        v6 = v7;
      }

      ++v5;
    }

    while (v5 != 3);
    if (v4 >= 3)
    {
LABEL_34:
      abort();
    }

    v8 = 1 << v4;
    if ((v6 & v8) != 0)
    {
      v9 = v6 & ~v8;
    }

    else
    {
      v9 = v6 | v8;
    }

    v10 = *(a1[22] + 8 * *(a1[19] + 8 * a2));
    v11 = v10 + v9;
    if (v10 == -1)
    {
      return -1;
    }

    else
    {
      return v11;
    }
  }

  v13 = 63 - __clz(*v3);
  v14 = *v3 && v13 >= 2u;
  if (!v14)
  {
    return -1;
  }

  v15 = v13;
  v16 = 2;
  while (((a3 ^ (v3[v4] >> (v16 - 1))) & 1) == 0)
  {
    v14 = v16++ >= v15;
    if (v14)
    {
      return -1;
    }
  }

  v17 = 0;
  v18 = *v3;
  v21 = v3[2];
  v20 = v18;
  v19 = *(&v20 + v4);
  do
  {
    if (v17 == 64)
    {
      goto LABEL_34;
    }

    if ((v19 & (1 << v17)) != 0)
    {
      v19 &= ~(1 << v17);
    }

    else
    {
      v19 |= 1 << v17;
    }

    ++v17;
    --v16;
  }

  while (v16);
  *(&v20 + v4) = v19;
  return geom::point_tree<float,(unsigned char)3>::node(a1, &v20);
}