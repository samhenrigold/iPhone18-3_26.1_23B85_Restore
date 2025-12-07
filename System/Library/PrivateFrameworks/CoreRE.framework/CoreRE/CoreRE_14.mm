float32x4_t anonymous namespace::calculateFABRIKChain(float32x4_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = *(a4 + 8);
  if (a3)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = *(a4 + 8);
  }

  v8 = v5;
  if (v4 <= v5)
  {
    goto LABEL_30;
  }

  result = *a1;
  *(*(a4 + 16) + 16 * v5) = *a1;
  if (v5 + v6 != v7)
  {
    v4 = v5 + v6;
    v10 = ((a3 ^ 1u) << 63) >> 63;
    v11 = v7 - v6;
    while (1)
    {
      v12 = v10 + v4;
      v8 = *(a2 + 8);
      if (v8 <= v10 + v4)
      {
        break;
      }

      v8 = *(a4 + 8);
      if (v8 <= v4)
      {
        goto LABEL_22;
      }

      v12 = v5;
      if (v8 <= v5)
      {
        goto LABEL_26;
      }

      v13 = *(a4 + 16);
      v14 = *(v13 + 16 * v5);
      v15 = vsubq_f32(*(v13 + 16 * v4), v14);
      v16 = vmulq_f32(v15, v15);
      *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
      *v16.f32 = vrsqrte_f32(v17);
      *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
      result = vaddq_f32(v14, vmulq_n_f32(vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]), *(*(a2 + 16) + 4 * v10 + 4 * v4)));
      *(v13 + 16 * v4) = result;
      v4 += v6;
      v5 += v6;
      if (v11 == v5)
      {
        return result;
      }
    }

    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v34 = 476;
    v35 = 2048;
    v36 = v12;
    v37 = 2048;
    v38 = v8;
    _os_log_send_and_compose_impl(v19, &v30, &v39, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
    _os_crash_msg();
    __break(1u);
LABEL_22:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v34 = 468;
    v35 = 2048;
    v36 = v4;
    v37 = 2048;
    v38 = v8;
    _os_log_send_and_compose_impl(v22, &v30, &v39, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v34 = 468;
    v35 = 2048;
    v36 = v12;
    v37 = 2048;
    v38 = v8;
    _os_log_send_and_compose_impl(v25, &v30, &v39, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
    _os_crash_msg();
    __break(1u);
LABEL_30:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v34 = 468;
    v35 = 2048;
    v36 = v8;
    v37 = 2048;
    v38 = v4;
    _os_log_send_and_compose_impl(v28, &v30, &v39, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

__n128 anonymous namespace::lookAtTransformFromReference(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, int32x4_t a5, float32x4_t a6, float a7)
{
  v12 = vsubq_f32(a6, *(a2 + 48));
  v13 = vmulq_f32(v12, v12);
  *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(v14);
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
  v15 = vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
  v16 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
  v17 = vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL);
  v18 = vnegq_f32(v15);
  v19 = vmlaq_f32(vmulq_f32(v17, v18), a5, v16);
  v20 = vmulq_f32(v19, v19);
  v21 = v20.f32[1] + (v20.f32[2] + v20.f32[0]);
  if (v21 >= 0.0001)
  {
    v23 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
  }

  else
  {
    v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v18), v17, v16);
    v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
    v17 = vmulq_f32(v22, v22);
    v21 = *&v17.i32[1] + (*&v17.i32[2] + *v17.i32);
  }

  *v17.i32 = sqrtf(v21);
  v104.columns[2] = vdivq_f32(v23, vdupq_lane_s32(*v17.i8, 0));
  v94 = vextq_s8(vuzp1q_s32(v104.columns[2], v104.columns[2]), v104.columns[2], 0xCuLL);
  v95 = v104.columns[2];
  v24 = vmlaq_f32(vmulq_f32(v94, v18), v104.columns[2], v16);
  v104.columns[1] = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
  v92 = v15;
  v104.columns[0] = v15;
  v96 = v104.columns[1];
  v105 = __invert_f3(v104);
  v25 = 0;
  v26 = *(a2 + 16);
  v27 = *(a2 + 32);
  v98 = *a2;
  v99 = v26;
  v100 = v27;
  do
  {
    *(&v101 + v25 * 8) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105.columns[0], COERCE_FLOAT(*(&v98 + v25 * 8))), v105.columns[1], v98.n128_u64[v25], 1), v105.columns[2], *(&v98 + v25 * 8), 2);
    v25 += 2;
  }

  while (v25 != 6);
  v97 = *a3;
  v28 = vsubq_f32(*a4, *a3);
  v30 = vmulq_f32(v28, v28);
  v29 = vaddv_f32(*v30.f32);
  v30.i32[1] = 0;
  *&v31 = v30.f32[2] + v29;
  v32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v30.f32[2] + v29));
  v33 = vmul_f32(v32, vrsqrts_f32(v31, vmul_f32(v32, v32)));
  v34 = vmulq_n_f32(v28, vmul_f32(v33, vrsqrts_f32(v31, vmul_f32(v33, v33))).f32[0]);
  v35 = v34;
  v36 = vmulq_f32(v34, v34);
  v37 = vaddv_f32(*v36.f32);
  v38 = fabsf(v36.f32[2] + v37);
  v88 = v34;
  if (v38 >= 1.0e-10)
  {
    v30.f32[0] = v36.f32[2] + v37;
    v39 = vrsqrte_f32(*v30.f32);
    v40 = vmul_f32(v39, vrsqrts_f32(*v30.f32, vmul_f32(v39, v39)));
    v35 = vmulq_n_f32(v34, vmul_f32(v40, vrsqrts_f32(*v30.f32, vmul_f32(v40, v40))).f32[0]);
  }

  v86 = v36.f32[2] + v37;
  v87 = v35;
  v93 = v34;
  v90 = v102;
  v91 = v101;
  v89 = v103;
  v41 = __sincosf_stret(a7 * 0.5);
  v42 = vmulq_n_f32(v87, v41.__sinval);
  v43 = vmuls_lane_f32(v41.__sinval, v87, 2);
  v44 = v92;
  v45 = vmulq_f32(v44, v44);
  v46 = v45.f32[2] + vaddv_f32(*v45.f32);
  if (fabsf(v46) >= 1.0e-10)
  {
    v47 = v46;
    v48 = vrsqrte_f32(LODWORD(v46));
    v49 = vmul_f32(v48, vrsqrts_f32(LODWORD(v47), vmul_f32(v48, v48)));
    v44 = vmulq_n_f32(v92, vmul_f32(v49, vrsqrts_f32(LODWORD(v47), vmul_f32(v49, v49))).f32[0]);
  }

  *&v42.i32[2] = v43;
  v50 = v88;
  if (v38 >= 1.0e-10)
  {
    v51 = vrsqrte_f32(LODWORD(v86));
    v52 = vmul_f32(v51, vrsqrts_f32(LODWORD(v86), vmul_f32(v51, v51)));
    v50 = vmulq_n_f32(v93, vmul_f32(v52, vrsqrts_f32(LODWORD(v86), vmul_f32(v52, v52))).f32[0]);
  }

  v53 = v42;
  v53.i32[3] = LODWORD(v41.__cosval);
  v54 = vmulq_f32(v44, v50);
  v55 = v54.f32[2] + vaddv_f32(*v54.f32);
  if (v55 == -1.0 || (v56 = ((fabsf(v55) + 1.0) + 1.0) * 0.00001, v57 = v55 + 1.0, fabsf(v57) < v56))
  {
    if (fabsf(*&v44.i32[2]) >= 0.00001)
    {
      v58.i32[0] = 0;
      v58.f32[1] = -*&v44.i32[2];
      v58.i64[1] = v44.u32[1];
    }

    else
    {
      v58 = vtrn1q_s32(COERCE_UNSIGNED_INT(-*&v44.i32[1]), v44);
    }

    v59 = vmulq_f32(v58, v58);
    *&v60 = v59.f32[2] + vaddv_f32(*v59.f32);
    *v59.f32 = vrsqrte_f32(v60);
    *v59.f32 = vmul_f32(*v59.f32, vrsqrts_f32(v60, vmul_f32(*v59.f32, *v59.f32)));
    v61 = vmulq_n_f32(v58, vmul_f32(*v59.f32, vrsqrts_f32(v60, vmul_f32(*v59.f32, *v59.f32))).f32[0]);
    v62 = 0.0;
  }

  else
  {
    v84 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v44)), v50, vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL));
    v85 = vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL);
    *v84.i32 = sqrtf(v57 + v57);
    v62 = *v84.i32 * 0.5;
    v61 = vdivq_f32(v85, vdupq_lane_s32(*v84.i8, 0));
  }

  v63 = 0;
  v64 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL), vnegq_f32(v42)), v61, vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL));
  v65 = vmlaq_n_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), v61, v53, 3), v42, v62);
  v66 = vmulq_f32(v53, v61);
  v67 = -((v66.f32[2] + vaddv_f32(*v66.f32)) - (v41.__cosval * v62));
  v68 = vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL);
  v69 = vnegq_f32(v65);
  v70 = vmlaq_f32(vmulq_f32(v94, v69), v95, v68);
  v71 = vaddq_f32(v70, v70);
  v72 = vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL);
  v73 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL), v69), v72, v68);
  v74 = vaddq_f32(vaddq_f32(v95, vmulq_n_f32(v72, v67)), vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL));
  v75 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL), v69), v96, v68);
  v76 = vaddq_f32(v75, v75);
  v77 = vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL);
  v78 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), v69), v77, v68);
  v79 = vaddq_f32(vaddq_f32(v96, vmulq_n_f32(v77, v67)), vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL));
  v98 = v91;
  v99 = v90;
  v100 = v89;
  do
  {
    *(&v101 + v63 * 8) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*(&v98 + v63 * 8))), v79, v98.n128_u64[v63], 1), v74, *(&v98 + v63 * 8), 2);
    v63 += 2;
  }

  while (v63 != 6);
  result = v101;
  v80 = v102;
  result.n128_u32[3] = 0;
  v82 = v103;
  HIDWORD(v80) = 0;
  HIDWORD(v82) = 0;
  v83 = v97;
  v83.i32[3] = 1.0;
  *a1 = result;
  *(a1 + 16) = v80;
  *(a1 + 32) = v82;
  *(a1 + 48) = v83;
  return result;
}

void re::BezierSpline<re::Vector3<float>>::~BezierSpline(void *a1)
{
  re::Spline<re::Vector3<float>>::~Spline(a1);

  JUMPOUT(0x1E6906520);
}

void re::BezierSpline<re::Vector3<float>>::resizeSpans(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    re::DynamicArray<re::Vector3<float>>::resize(a1 + 8, (3 * a2 + 1));
    *(a1 + 138) = a2;
    if ((*(a1 + 136) & 1) == 0)
    {

      re::DynamicArray<float>::resize(a1 + 48, a2 + 1);
    }
  }

  else
  {
    *(a1 + 24) = 0;
    ++*(a1 + 32);
    *(a1 + 138) = 0;
    if ((*(a1 + 136) & 1) == 0)
    {
      *(a1 + 64) = 0;
      ++*(a1 + 72);
    }
  }
}

void *re::BezierSpline<re::Vector3<float>>::reserveSpans(void *result, int a2)
{
  if (a2)
  {
    v2 = 3 * a2 + 1;
  }

  else
  {
    v2 = 0;
  }

  if (result[2] < v2)
  {
    return re::DynamicArray<re::Quaternion<float>>::setCapacity(result + 1, v2);
  }

  return result;
}

uint64_t re::Spline<re::Vector3<float>>::knotCount(uint64_t a1)
{
  if ((*(*a1 + 40))(a1))
  {
    return ((*(*a1 + 40))(a1) + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t re::Spline<re::Vector3<float>>::knotAtIndex(uint64_t result, unsigned int a2)
{
  v3 = result;
  v19 = *MEMORY[0x1E69E9840];
  if (*(result + 136) == 1)
  {
    result = (*(*result + 40))(result);
    if (result != a2)
    {
      return (*(*v3 + 40))(v3);
    }
  }

  else
  {
    v4 = a2;
    v5 = *(result + 64);
    if (v5 <= a2)
    {
      v9 = 0;
      memset(v18, 0, sizeof(v18));
      v6 = MEMORY[0x1E69E9C10];
      v10 = 136315906;
      v11 = "operator[]";
      v12 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }

      v13 = 797;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = v5;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::BezierSpline<re::Vector3<float>>::findSpanIndex(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 128);
    if (v3 >= a3)
    {
      LOWORD(v4) = 0;
    }

    else
    {
      v4 = *(a1 + 138);
      v5 = *(a1 + 132);
      if (v5 <= a3)
      {
        LOWORD(v4) = v4 - 1;
      }

      else
      {
        v4 = (((a3 - v3) / (v5 - v3)) * v4);
      }
    }

    LOWORD(result) = v4;
    return result;
  }

  if ((*(a1 + 64) - 1) < 0x10000)
  {
    LOWORD(result) = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
    return result;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
  result = _os_crash("assertion failure: (!overflow) m_knots.size() (%zu) too large for 16-bit integer", v7);
  __break(1u);
  return result;
}

BOOL re::Spline<re::Vector3<float>>::areKnotsNormalized(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    v2 = *(a1 + 80);
    if (fabsf(*v2) < 0.00001)
    {
      v3 = v2[v1 - 1];
      return v3 == 1.0 || fabsf(v3 + -1.0) < (((fabsf(v3) + 1.0) + 1.0) * 0.00001);
    }

    return 0;
  }

  if (fabsf(*(a1 + 128)) >= 0.00001)
  {
    return 0;
  }

  v3 = *(a1 + 132);
  return v3 == 1.0 || fabsf(v3 + -1.0) < (((fabsf(v3) + 1.0) + 1.0) * 0.00001);
}

uint64_t re::Spline<re::Vector3<float>>::normalizeKnots(uint64_t result)
{
  v1 = *(result + 64);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = *(result + 80);
    v4 = *v3;
    v5 = v1 - 1;
    v6 = v3[v5];
    *v3 = 0.0;
    if (v5 >= 2)
    {
      v7 = v6 - v4;
      v8 = v3 + 1;
      do
      {
        *v8 = (*v8 - v4) / v7;
        ++v8;
        --v2;
      }

      while (v2);
    }

    v3[v5] = 1.0;
  }

  return result;
}

uint64_t re::Spline<re::Vector3<float>>::setNonUniformKnots(uint64_t a1)
{
  *(a1 + 136) = 0;
  if ((*(*a1 + 40))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    re::DynamicArray<float>::resize(a1 + 48, v2 + 1);
  }

  else
  {
    *(a1 + 64) = 0;
    ++*(a1 + 72);
  }

  return 1;
}

uint64_t re::Spline<re::Vector3<float>>::setNonUniformKnots(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *(a1 + 136) = 0;
  re::DynamicArray<float>::operator=(a1 + 48, a2);
  v4 = a2[2];
  if (!v4)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 797;
    v15 = 2048;
    v16 = 0;
    v17 = 2048;
    v18 = 0;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a2[4];
  *(a1 + 128) = *v5;
  *(a1 + 132) = v5[v4 - 1];
  return 1;
}

uint64_t re::Spline<re::Vector3<float>>::setNonUniformKnotAtIndex(uint64_t a1, unsigned int a2, float a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 64);
  if (v4 <= a2)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  *(*(a1 + 80) + 4 * a2) = a3;
  return 1;
}

uint64_t re::Spline<re::Vector3<float>>::setUniformKnots(uint64_t result, float a2, float a3)
{
  *(result + 136) = 1;
  *(result + 64) = 0;
  ++*(result + 72);
  *(result + 128) = a2;
  *(result + 132) = a3;
  return result;
}

double re::BezierSpline<re::Vector3<float>>::evaluateAt(uint64_t a1, uint64_t a2, float a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136) == 1)
  {
    v7 = *(a1 + 128);
    if (v7 >= a3)
    {
      LOWORD(v8) = 0;
      v11 = 0;
    }

    else
    {
      v8 = *(a1 + 138);
      v9 = *(a1 + 132);
      if (v9 <= a3)
      {
        LOWORD(v8) = v8 - 1;
        v11 = 0x3F80000000000000;
      }

      else
      {
        v10 = ((a3 - v7) / (v9 - v7)) * v8;
        v8 = v10;
        v11 = COERCE_UNSIGNED_INT(v10 - v10) << 32;
      }
    }

    NonUniformSpan = v11 | v8;
  }

  else
  {
    v12 = *(a1 + 64) - 1;
    if (v12 >= 0x10000)
    {
      goto LABEL_31;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v14 = (3 * NonUniformSpan);
  v15 = *(a1 + 24);
  if (v15 <= v14)
  {
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = v14;
    v39 = 2048;
    v40 = v15;
    _os_log_send_and_compose_impl(v19, &v32, &v41, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v3 = (v14 + 1);
  if (v15 <= v3)
  {
LABEL_19:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = v3;
    v39 = 2048;
    v40 = v15;
    _os_log_send_and_compose_impl(v22, &v32, &v41, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_23;
  }

  v4 = (v14 + 2);
  if (v15 <= v4)
  {
LABEL_23:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = v4;
    v39 = 2048;
    v40 = v15;
    _os_log_send_and_compose_impl(v25, &v32, &v41, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  v5 = (v14 + 3);
  if (v15 <= v5)
  {
LABEL_27:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = v5;
    v39 = 2048;
    v40 = v15;
    _os_log_send_and_compose_impl(v28, &v32, &v41, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
LABEL_31:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, v12);
    _os_crash("assertion failure: (!overflow) m_knots.size() (%zu) too large for 16-bit integer", v29);
    __break(1u);
  }

  v16 = *(a1 + 40);
  *&result = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*(v16 + 16 * v14), (1.0 - *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1)))), vmulq_n_f32(*(v16 + 16 * v3), (((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))) * 3.0) * *(&NonUniformSpan + 1))), vmulq_n_f32(*(v16 + 16 * v4), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * 3.0))), vmulq_n_f32(*(v16 + 16 * v5), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * *(&NonUniformSpan + 1))).u64[0];
  return result;
}

unint64_t re::BezierSpline<re::Vector3<float>>::evaluateDerivativeAt(uint64_t a1, uint64_t a2, float a3)
{
  v3 = a2;
  v95 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136) == 1)
  {
    v5 = *(a1 + 138);
    v6 = *(a1 + 128);
    v7 = *(a1 + 132);
    if (v6 >= a3)
    {
      LOWORD(v9) = 0;
      v10 = 0;
    }

    else if (v7 <= a3)
    {
      LOWORD(v9) = v5 - 1;
      v10 = 0x3F80000000000000;
    }

    else
    {
      v8 = ((a3 - v6) / (v7 - v6)) * v5;
      v9 = v8;
      v10 = COERCE_UNSIGNED_INT(v8 - v8) << 32;
    }

    v12 = v5 / (v7 - v6);
    NonUniformSpan = v10 | v9;
  }

  else
  {
    if ((*(a1 + 64) - 1) >= 0x10000)
    {
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
      _os_crash("assertion failure: (!overflow) m_knots.size() (%zu) too large for 16-bit integer", v78);
      __break(1u);
LABEL_32:
      v81 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v39 = MEMORY[0x1E69E9C10];
      v40 = v16;
      v82 = 136315906;
      v83 = "operator[]";
      v84 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      v85 = 797;
      v86 = 2048;
      v87 = v40;
      v88 = 2048;
      v89 = v3;
      _os_log_send_and_compose_impl(v41, &v81, &v90, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v82, 38, v79, v80);
      _os_crash_msg();
      __break(1u);
      goto LABEL_36;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v13 = 3 * NonUniformSpan;
  v14 = 0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v34 = (3 * NonUniformSpan) + 2;
      v3 = *(a1 + 24);
      if (v3 > v34)
      {
        v35 = (3 * NonUniformSpan) + 3;
        if (v3 > v35)
        {
          v36 = *(a1 + 40);
          v19 = (v12 * 6.0) * v12;
          v37 = (v36 + 16 * v13);
          v21 = vaddq_f32(vmulq_n_f32(vaddq_f32(v37[1], vsubq_f32(*(v36 + 16 * v35), vaddq_f32(*(v36 + 16 * v34), *(v36 + 16 * v34)))), *(&NonUniformSpan + 1)), vmulq_n_f32(vaddq_f32(*v37, vsubq_f32(*(v36 + 16 * v34), vaddq_f32(v37[1], v37[1]))), 1.0 - *(&NonUniformSpan + 1)));
          return vmulq_n_f32(v21, v19).u64[0];
        }

        goto LABEL_56;
      }

      goto LABEL_44;
    }

    if (v3 == 3)
    {
      v3 = (3 * NonUniformSpan) + 3;
      v22 = *(a1 + 24);
      if (v22 <= v3)
      {
LABEL_36:
        v81 = 0;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v90 = 0u;
        v42 = MEMORY[0x1E69E9C10];
        v43 = v22;
        v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v82 = 136315906;
        v83 = "operator[]";
        v84 = 1024;
        if (v44)
        {
          v45 = 3;
        }

        else
        {
          v45 = 2;
        }

        v85 = 797;
        v86 = 2048;
        v87 = v3;
        v88 = 2048;
        v89 = v43;
        _os_log_send_and_compose_impl(v45, &v81, &v90, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v82, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
        goto LABEL_40;
      }

      __asm { FMOV            V3.4S, #3.0 }

      return vmulq_n_f32(vsubq_f32(vaddq_f32(vsubq_f32(*(*(a1 + 40) + 16 * v3), vmulq_f32(*(*(a1 + 40) + 16 * (3 * NonUniformSpan) + 32), _Q3)), vmulq_f32(*(*(a1 + 40) + 16 * (3 * NonUniformSpan) + 16), _Q3)), *(*(a1 + 40) + 16 * (3 * NonUniformSpan))), ((v12 * 6.0) * v12) * v12).u64[0];
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v15 = (3 * NonUniformSpan);
      v16 = (v15 + 1);
      v3 = *(a1 + 24);
      if (v3 > v16)
      {
        v17 = (v15 + 2);
        if (v3 > v17)
        {
          v18 = (v15 + 3);
          if (v3 > v18)
          {
            v19 = v12 * 3.0;
            v20 = *(a1 + 40);
            v21 = vaddq_f32(vaddq_f32(vmulq_n_f32(vsubq_f32(*(v20 + 16 * v16), *(v20 + 16 * (3 * NonUniformSpan))), (1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))), vmulq_n_f32(vsubq_f32(*(v20 + 16 * v17), *(v20 + 16 * v16)), ((1.0 - *(&NonUniformSpan + 1)) + (1.0 - *(&NonUniformSpan + 1))) * *(&NonUniformSpan + 1))), vmulq_n_f32(vsubq_f32(*(v20 + 16 * v18), *(v20 + 16 * v17)), *(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)));
            return vmulq_n_f32(v21, v19).u64[0];
          }

          goto LABEL_60;
        }

        goto LABEL_48;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v28 = (3 * NonUniformSpan);
    v3 = *(a1 + 24);
    if (v3 <= v13)
    {
LABEL_40:
      v81 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v46 = MEMORY[0x1E69E9C10];
      v47 = v28;
      v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v82 = 136315906;
      v83 = "operator[]";
      v84 = 1024;
      if (v48)
      {
        v49 = 3;
      }

      else
      {
        v49 = 2;
      }

      v85 = 797;
      v86 = 2048;
      v87 = v47;
      v88 = 2048;
      v89 = v3;
      _os_log_send_and_compose_impl(v49, &v81, &v90, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v82, 38, v79, v80);
      _os_crash_msg();
      __break(1u);
LABEL_44:
      v81 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v50 = MEMORY[0x1E69E9C10];
      v51 = v34;
      v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v82 = 136315906;
      v83 = "operator[]";
      v84 = 1024;
      if (v52)
      {
        v53 = 3;
      }

      else
      {
        v53 = 2;
      }

      v85 = 797;
      v86 = 2048;
      v87 = v51;
      v88 = 2048;
      v89 = v3;
      _os_log_send_and_compose_impl(v53, &v81, &v90, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v82, 38, v79, v80);
      _os_crash_msg();
      __break(1u);
LABEL_48:
      v81 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v54 = MEMORY[0x1E69E9C10];
      v55 = v17;
      v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v82 = 136315906;
      v83 = "operator[]";
      v84 = 1024;
      if (v56)
      {
        v57 = 3;
      }

      else
      {
        v57 = 2;
      }

      v85 = 797;
      v86 = 2048;
      v87 = v55;
      v88 = 2048;
      v89 = v3;
      _os_log_send_and_compose_impl(v57, &v81, &v90, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v82, 38, v79, v80);
      _os_crash_msg();
      __break(1u);
      goto LABEL_52;
    }

    v29 = (3 * NonUniformSpan);
    v30 = (v29 + 1);
    if (v3 <= v30)
    {
LABEL_52:
      v81 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v58 = MEMORY[0x1E69E9C10];
      v59 = v30;
      v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v82 = 136315906;
      v83 = "operator[]";
      v84 = 1024;
      if (v60)
      {
        v61 = 3;
      }

      else
      {
        v61 = 2;
      }

      v85 = 797;
      v86 = 2048;
      v87 = v59;
      v88 = 2048;
      v89 = v3;
      _os_log_send_and_compose_impl(v61, &v81, &v90, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v82, 38, v79, v80);
      _os_crash_msg();
      __break(1u);
LABEL_56:
      v81 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v62 = MEMORY[0x1E69E9C10];
      v63 = v35;
      v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v82 = 136315906;
      v83 = "operator[]";
      v84 = 1024;
      if (v64)
      {
        v65 = 3;
      }

      else
      {
        v65 = 2;
      }

      v85 = 797;
      v86 = 2048;
      v87 = v63;
      v88 = 2048;
      v89 = v3;
      _os_log_send_and_compose_impl(v65, &v81, &v90, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v82, 38, v79, v80);
      _os_crash_msg();
      __break(1u);
LABEL_60:
      v81 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v66 = MEMORY[0x1E69E9C10];
      v67 = v18;
      v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v82 = 136315906;
      v83 = "operator[]";
      v84 = 1024;
      if (v68)
      {
        v69 = 3;
      }

      else
      {
        v69 = 2;
      }

      v85 = 797;
      v86 = 2048;
      v87 = v67;
      v88 = 2048;
      v89 = v3;
      _os_log_send_and_compose_impl(v69, &v81, &v90, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v82, 38, v79, v80);
      _os_crash_msg();
      __break(1u);
      goto LABEL_64;
    }

    v31 = (v29 + 2);
    if (v3 <= v31)
    {
LABEL_64:
      v81 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v70 = MEMORY[0x1E69E9C10];
      v71 = v31;
      v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v82 = 136315906;
      v83 = "operator[]";
      v84 = 1024;
      if (v72)
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }

      v85 = 797;
      v86 = 2048;
      v87 = v71;
      v88 = 2048;
      v89 = v3;
      _os_log_send_and_compose_impl(v73, &v81, &v90, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v82, 38, v79, v80);
      _os_crash_msg();
      __break(1u);
LABEL_68:
      v81 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v74 = MEMORY[0x1E69E9C10];
      v75 = v32;
      v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v82 = 136315906;
      v83 = "operator[]";
      v84 = 1024;
      if (v76)
      {
        v77 = 3;
      }

      else
      {
        v77 = 2;
      }

      v85 = 797;
      v86 = 2048;
      v87 = v75;
      v88 = 2048;
      v89 = v3;
      _os_log_send_and_compose_impl(v77, &v81, &v90, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v82, 38, v79, v80);
      _os_crash_msg();
      __break(1u);
    }

    v32 = (v29 + 3);
    if (v3 <= v32)
    {
      goto LABEL_68;
    }

    v33 = *(a1 + 40);
    return vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*(v33 + 16 * v28), (1.0 - *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1)))), vmulq_n_f32(*(v33 + 16 * v30), (((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))) * 3.0) * *(&NonUniformSpan + 1))), vmulq_n_f32(*(v33 + 16 * v31), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * 3.0))), vmulq_n_f32(*(v33 + 16 * v32), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * *(&NonUniformSpan + 1))).u64[0];
  }

  return v14;
}

float re::BezierSpline<re::Vector3<float>>::evaluateLengthAt(uint64_t a1, uint64_t a2, float a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136) == 1)
  {
    v7 = *(a1 + 128);
    if (v7 >= a3)
    {
      LOWORD(v8) = 0;
    }

    else
    {
      v8 = *(a1 + 138);
      v9 = *(a1 + 132);
      if (v9 <= a3)
      {
        LOWORD(v8) = v8 - 1;
      }

      else
      {
        v8 = (((a3 - v7) / (v9 - v7)) * v8);
      }
    }

    NonUniformSpan = v8;
  }

  else
  {
    if ((*(a1 + 64) - 1) >= 0x10000)
    {
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
      _os_crash("assertion failure: (!overflow) m_knots.size() (%zu) too large for 16-bit integer", v26);
      __break(1u);
      goto LABEL_23;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    if (NonUniformSpan)
    {
      v4 = NonUniformSpan - 1;
      if (v3 > v4)
      {
        v11 = *(*(a1 + 120) + 4 * v4);
        goto LABEL_19;
      }

LABEL_23:
      v29 = 0;
      memset(v38, 0, sizeof(v38));
      v24 = MEMORY[0x1E69E9C10];
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v33 = 797;
      v34 = 2048;
      v35 = v4;
      v36 = 2048;
      v37 = v3;
      _os_log_send_and_compose_impl(v25, &v29, v38, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v27, v28);
      _os_crash_msg();
      __break(1u);
    }

LABEL_18:
    v11 = 0.0;
    goto LABEL_19;
  }

  if (!NonUniformSpan)
  {
    goto LABEL_18;
  }

  v12 = 0;
  v11 = 0.0;
  do
  {
    v11 = v11 + (*(*a1 + 152))(a1, v12);
    v12 = (v12 + 1);
  }

  while (NonUniformSpan != v12);
LABEL_19:
  v13 = (*(*a1 + 56))(a1, NonUniformSpan);
  v14 = (v13 + a3) * 0.5;
  v15 = (a3 - v13) * 0.5;
  v16 = (qword_1ECEF6BB0 + 4);
  v17 = 0.0;
  v18 = 16;
  do
  {
    v19 = *v16;
    v20.i64[0] = (*(*a1 + 128))(a1, 1, v14 + (v15 * *(v16 - 1)));
    v20.i64[1] = v21;
    v22 = vmulq_f32(v20, v20);
    v17 = v17 + (v19 * sqrtf(v22.f32[2] + vaddv_f32(*v22.f32)));
    v16 += 2;
    --v18;
  }

  while (v18);
  return v11 + (v15 * v17);
}

uint64_t re::BezierSpline<re::Vector3<float>>::calculateMonomialBasisForSpan(uint64_t a1, __int16 a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = (3 * a2);
  v7 = *(a1 + 24);
  if (v7 <= v6)
  {
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v37 = 797;
    v38 = 2048;
    v39 = v6;
    v40 = 2048;
    v41 = v7;
    _os_log_send_and_compose_impl(v16, &v33, &v42, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v8 = (3 * a2);
  *a3 = *(*(a1 + 40) + 16 * v6);
  v3 = (v8 + 1);
  v7 = *(a1 + 24);
  if (v7 <= v3)
  {
LABEL_12:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v37 = 797;
    v38 = 2048;
    v39 = v3;
    v40 = 2048;
    v41 = v7;
    _os_log_send_and_compose_impl(v19, &v33, &v42, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  __asm { FMOV            V0.4S, #3.0 }

  *(a3 + 16) = vmulq_f32(vsubq_f32(*(*(a1 + 40) + 16 * v3), *(*(a1 + 40) + 16 * v6)), _Q0);
  v7 = *(a1 + 24);
  if (v7 <= v6)
  {
LABEL_16:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v37 = 797;
    v38 = 2048;
    v39 = v6;
    v40 = 2048;
    v41 = v7;
    _os_log_send_and_compose_impl(v22, &v33, &v42, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  if (v7 <= v3)
  {
LABEL_20:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v37 = 797;
    v38 = 2048;
    v39 = v3;
    v40 = 2048;
    v41 = v7;
    _os_log_send_and_compose_impl(v25, &v33, &v42, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v4 = (v8 + 2);
  if (v7 <= v4)
  {
LABEL_24:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v37 = 797;
    v38 = 2048;
    v39 = v4;
    v40 = 2048;
    v41 = v7;
    _os_log_send_and_compose_impl(v28, &v33, &v42, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
LABEL_28:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v37 = 797;
    v38 = 2048;
    v39 = v7;
    v40 = 2048;
    v41 = v5;
    _os_log_send_and_compose_impl(v31, &v33, &v42, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
  }

  *(a3 + 32) = vmulq_f32(vaddq_f32(*(*(a1 + 40) + 16 * v4), vsubq_f32(*(*(a1 + 40) + 16 * v6), vaddq_f32(*(*(a1 + 40) + 16 * v3), *(*(a1 + 40) + 16 * v3)))), _Q0);
  v7 = (v8 + 3);
  v5 = *(a1 + 24);
  if (v5 <= v7)
  {
    goto LABEL_28;
  }

  *(a3 + 48) = vsubq_f32(vaddq_f32(*(*(a1 + 40) + 16 * v7), vmulq_f32(vsubq_f32(*(*(a1 + 40) + 16 * v3), *(*(a1 + 40) + 16 * v4)), _Q0)), *(*(a1 + 40) + 16 * v6));
  return 4;
}

float re::BezierSpline<re::Vector3<float>>::evaluateSpanLength(uint64_t a1, unsigned __int16 a2)
{
  v4 = (*(*a1 + 56))(a1, a2);
  v5 = (*(*a1 + 56))(a1, (a2 + 1));
  v6 = (v4 + v5) * 0.5;
  v7 = (v5 - v4) * 0.5;
  v8 = (qword_1ECEF6BB0 + 4);
  v9 = 0.0;
  v10 = 16;
  do
  {
    v11 = *v8;
    v12.i64[0] = (*(*a1 + 128))(a1, 1, v6 + (v7 * *(v8 - 1)));
    v12.i64[1] = v13;
    v14 = vmulq_f32(v12, v12);
    v9 = v9 + (v11 * sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)));
    v8 += 2;
    --v10;
  }

  while (v10);
  return v7 * v9;
}

void re::DynamicArray<re::Vector3<float>>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 16 * v4), 16 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

unint64_t re::internal::findNonUniformSpan(uint64_t a1, unsigned int a2, unsigned int a3, float a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 16);
  if (v6 <= a2)
  {
LABEL_34:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v39 = 797;
    v40 = 2048;
    v41 = v5;
    v42 = 2048;
    v43 = v6;
    _os_log_send_and_compose_impl(v24, &v35, &v44, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 4 * a2);
  if (v8 >= a4)
  {
    goto LABEL_17;
  }

  v5 = a3;
  if (v6 <= a3)
  {
LABEL_38:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v39 = 797;
    v40 = 2048;
    v41 = v5;
    v42 = 2048;
    v43 = v6;
    _os_log_send_and_compose_impl(v27, &v35, &v44, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
    _os_crash_msg();
    __break(1u);
    goto LABEL_42;
  }

  v9 = *(v7 + 4 * a3);
  if (v9 > a4)
  {
    v5 = (a3 + a2) >> 1;
    if (v6 > v5)
    {
      v10 = a3;
      while (1)
      {
        v4 = (v5 + 1);
        if (v6 <= v4)
        {
          break;
        }

        if (*(v7 + 4 * v5) <= a4)
        {
          v9 = *(v7 + 4 * v4);
          if (v9 >= a4)
          {
            goto LABEL_24;
          }

          a2 = (v5 + 1);
        }

        else
        {
          v10 = v5 - 1;
        }

        v5 = (a2 + v10) >> 1;
        if (v6 <= v5)
        {
          goto LABEL_13;
        }
      }

      v35 = 0;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v36 = 136315906;
      v37 = "operator[]";
      v38 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v39 = 797;
      v40 = 2048;
      v41 = (v5 + 1);
      v42 = 2048;
      v43 = v6;
      _os_log_send_and_compose_impl(v21, &v35, &v44, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
      _os_crash_msg();
      __break(1u);
      goto LABEL_34;
    }

LABEL_13:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v39 = 797;
    v40 = 2048;
    v41 = v5;
    v42 = 2048;
    v43 = v6;
    _os_log_send_and_compose_impl(v12, &v35, &v44, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
    _os_crash_msg();
    __break(1u);
LABEL_17:
    v4 = v5 + 1;
    if (v6 <= v5 + 1)
    {
LABEL_42:
      v35 = 0;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v36 = 136315906;
      v37 = "operator[]";
      v38 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v39 = 797;
      v40 = 2048;
      v41 = v4;
      v42 = 2048;
      v43 = v6;
      _os_log_send_and_compose_impl(v30, &v35, &v44, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
      _os_crash_msg();
      __break(1u);
LABEL_46:
      v35 = 0;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v31 = MEMORY[0x1E69E9C10];
      v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v36 = 136315906;
      v37 = "operator[]";
      v38 = 1024;
      if (v32)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v39 = 797;
      v40 = 2048;
      v41 = v4;
      v42 = 2048;
      v43 = v6;
      _os_log_send_and_compose_impl(v33, &v35, &v44, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
      _os_crash_msg();
      __break(1u);
    }

    v13 = 1.0 / (*(v7 + 4 * v4) - v8);
    v14 = v8 - v8;
    return v5 | (COERCE_UNSIGNED_INT(v14 * v13) << 32);
  }

  v5 = (a3 - 1);
  v4 = v5 + 1;
  if (v6 <= v5 + 1)
  {
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v39 = 797;
    v40 = 2048;
    v41 = v5 + 1;
    v42 = 2048;
    v43 = v6;
    _os_log_send_and_compose_impl(v16, &v35, &v44, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
    _os_crash_msg();
    __break(1u);
LABEL_24:
    if (v5 == a3 - 1 || v9 > a4)
    {
      v18 = *(v7 + 4 * v5);
      v5 = v5;
      v13 = 1.0 / (v9 - v18);
      v14 = a4 - v18;
      return v5 | (COERCE_UNSIGNED_INT(v14 * v13) << 32);
    }

    v5 = v4;
    v4 = v5 + 1;
    if (v6 <= v5 + 1)
    {
      goto LABEL_46;
    }
  }

  v17 = *(v7 + 4 * v5);
  v13 = 1.0 / (*(v7 + 4 * v4) - v17);
  v14 = v9 - v17;
  return v5 | (COERCE_UNSIGNED_INT(v14 * v13) << 32);
}

uint64_t re::DynamicArray<float>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<float>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<int>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<float>::copy(a1, a2);
    }
  }

  return a1;
}

void **re::DynamicArray<float>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<int>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 4 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 4 * v5, (*(a2 + 32) + 4 * v5), 4 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 4 * v4);
  }

  v3[2] = v4;
  return result;
}

void *re::Spline<re::Vector3<float>>::~Spline(void *a1)
{
  *a1 = &unk_1F5CB05B0;
  v2 = a1 + 1;
  re::DynamicArray<unsigned long>::deinit((a1 + 11));
  re::DynamicArray<unsigned long>::deinit((a1 + 6));
  re::DynamicArray<unsigned long>::deinit(v2);
  return a1;
}

uint64_t re::EvaluationDependencyMap::init@<X0>(void *a1@<X0>, re::Allocator *a2@<X1>, re::EvaluationTree *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = a2;
  v141 = *MEMORY[0x1E69E9840];
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0;
  v102 = 0;
  v104 = 0;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v86 = 0u;
  memset(v85, 0, sizeof(v85));
  v11 = v84;
  memset(v84, 0, sizeof(v84));
  re::EvaluationTree::resolveAliasRegisters(a3, a2, a4, &v105, &v102, &v90, &v87, v84);
  v79[0] = 1;
  v127 = 0u;
  v126 = 0u;
  v125 = 0u;
  memset(v124, 0, sizeof(v124));
  memset(v123, 0, sizeof(v123));
  memset(v122, 0, sizeof(v122));
  memset(v121, 0, sizeof(v121));
  memset(v120, 0, sizeof(v120));
  memset(v119, 0, sizeof(v119));
  memset(v118, 0, sizeof(v118));
  v12 = *(a3 + 210);
  re::FixedArray<BOOL>::init<>(a1, v8, v12);
  re::FixedArray<BOOL>::init<>(v122, v8, v12);
  re::FixedArray<unsigned long>::init<>(v118, v8, v12);
  v13 = *(a3 + 215);
  re::FixedArray<BOOL>::init<>(a1 + 3, v8, v13);
  re::FixedArray<BOOL>::init<>(&v122[1] + 1, v8, v13);
  re::FixedArray<unsigned long>::init<>(&v118[1] + 1, v8, v13);
  v14 = *(a3 + 220);
  re::FixedArray<BOOL>::init<>(a1 + 6, v8, v14);
  re::FixedArray<BOOL>::init<>(v123, v8, v14);
  re::FixedArray<unsigned long>::init<>(v119, v8, v14);
  v15 = *(a3 + 225);
  re::FixedArray<BOOL>::init<>(a1 + 9, v8, v15);
  re::FixedArray<BOOL>::init<>(&v123[1] + 1, v8, v15);
  re::FixedArray<unsigned long>::init<>(&v119[1] + 1, v8, v15);
  v16 = *(a3 + 230);
  re::FixedArray<BOOL>::init<>(a1 + 12, v8, v16);
  re::FixedArray<BOOL>::init<>(v124, v8, v16);
  re::FixedArray<unsigned long>::init<>(v120, v8, v16);
  v17 = *(a3 + 235);
  re::FixedArray<BOOL>::init<>(a1 + 15, v8, v17);
  re::FixedArray<BOOL>::init<>(&v124[1] + 1, v8, v17);
  re::FixedArray<unsigned long>::init<>(&v120[1] + 1, v8, v17);
  v18 = *(a3 + 240);
  re::FixedArray<BOOL>::init<>(a1 + 18, v8, v18);
  re::FixedArray<BOOL>::init<>(&v125, v8, v18);
  re::FixedArray<unsigned long>::init<>(v121, v8, v18);
  v19 = *(a3 + 245);
  re::FixedArray<BOOL>::init<>(a1 + 21, v8, v19);
  re::FixedArray<BOOL>::init<>(&v126 + 1, v8, v19);
  re::FixedArray<unsigned long>::init<>(&v121[1] + 1, v8, v19);
  v78 = 0;
  v21 = v79[0];
  if ((v79[0] & 1) == 0)
  {
LABEL_44:
    *a6 = v21;
    *(a6 + 8) = v80;
    *(a6 + 24) = v81;
    *(a6 + 48) = v83;
    *(a6 + 32) = v82;
    goto LABEL_45;
  }

  v22 = *(&v86 + 1);
  if (*(&v86 + 1))
  {
    v23 = 0;
    v24 = 0;
    while (1)
    {
      v25 = *(&v86 + 1);
      if (*(&v86 + 1) <= v24)
      {
        break;
      }

      v26 = v86;
      v21 = v79[0];
      if ((v79[0] & 1) == 0)
      {
        goto LABEL_44;
      }

      v11 = v26 + v23;
      v21 = v79[0];
      if ((v79[0] & 1) == 0)
      {
        goto LABEL_44;
      }

      v21 = v79[0];
      if ((v79[0] & 1) == 0)
      {
        goto LABEL_44;
      }

      v24 = (v24 + 1);
      v23 += 24;
      if (v22 == v24)
      {
        goto LABEL_9;
      }
    }

LABEL_138:
    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v24, v25);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v67, v71);
    __break(1u);
    goto LABEL_139;
  }

LABEL_9:
  v76 = a6;
  if (a5)
  {
    v27 = *(a3 + 255);
    if (v27)
    {
      v28 = *(a3 + 257);
      v29 = 8 * v27;
      while (1)
      {
        v30 = v79[0];
        if ((v79[0] & 1) == 0)
        {
          break;
        }

        ++v28;
        v29 -= 8;
        if (!v29)
        {
          goto LABEL_14;
        }
      }

LABEL_135:
      *v76 = v30;
      *(v76 + 8) = v80;
      *(v76 + 24) = v81;
      *(v76 + 48) = v83;
      *(v76 + 32) = v82;
LABEL_45:
      v83 = 0;
      v81 = 0;
      v82 = 0uLL;
      goto LABEL_46;
    }
  }

LABEL_14:
  v11 = v78;
  a1[48] = v8;
  a1[49] = v11;
  v77 = a5;
  if (v11)
  {
    if (v11 >> 60)
    {
      goto LABEL_140;
    }

    v31 = (*(*v8 + 32))(v8, 16 * v11, 8);
    a1[50] = v31;
    if (!v31)
    {
LABEL_141:
      re::internal::assertLog(4, v20, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v32 = (v11 - 1);
    if (v11 != 1)
    {
      do
      {
        *v31 = -1;
        *(v31 + 8) = -1;
        v31 += 16;
        --v32;
      }

      while (v32);
    }

    *v31 = -1;
    *(v31 + 8) = -1;
  }

  v33 = 0;
  v24 = (a1 + 24);
  v11 = v118;
  do
  {
    v34 = *(v118 + v33 * 8 + 8);
    v35 = &a1[v33];
    v35[24] = v8;
    v35[25] = v34;
    if (v34)
    {
      if (v34 >> 60)
      {
        re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v34);
        _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v66, v70);
        __break(1u);
LABEL_137:
        re::internal::assertLog(4, v20, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
        goto LABEL_138;
      }

      v36 = (*(*v8 + 32))(v8, 16 * v34, 8);
      a1[v33 + 26] = v36;
      if (!v36)
      {
        goto LABEL_137;
      }

      v37 = v36;
      if (v34 != 1)
      {
        bzero(v36, 16 * v34 - 16);
        v37 += 2 * v34 - 2;
      }

      *v37 = 0;
      v37[1] = 0;
    }

    v33 += 3;
  }

  while (v33 != 24);
  v38 = 0;
  for (i = 0; i != 8; ++i)
  {
    v40 = v118 + 24 * i;
    v41 = *(v40 + 1);
    if (v41)
    {
      v42 = 0;
      v43 = 0;
      v44 = (v24 + 24 * i);
      while (1)
      {
        v45 = *(v40 + 1);
        if (v45 <= v43)
        {
          break;
        }

        v45 = v44[1];
        if (v45 <= v43)
        {
          goto LABEL_131;
        }

        v46 = *(*(v40 + 2) + 8 * v43);
        v47 = (v44[2] + v42);
        *v47 = a1[50] + 16 * v38;
        v47[1] = v46;
        v38 += v46;
        ++v43;
        v42 += 16;
        if (v41 == v43)
        {
          goto LABEL_34;
        }
      }

      v117 = 0;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v136 = 0u;
      v60 = MEMORY[0x1E69E9C10];
      v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v128 = 136315906;
      v129 = "operator[]";
      v130 = 1024;
      if (v61)
      {
        v62 = 3;
      }

      else
      {
        v62 = 2;
      }

      v131 = 468;
      v132 = 2048;
      v133 = v43;
      v134 = 2048;
      v135 = v45;
      _os_log_send_and_compose_impl(v62, &v117, &v136, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v74, v75);
      _os_crash_msg();
      __break(1u);
LABEL_131:
      v117 = 0;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v136 = 0u;
      v63 = MEMORY[0x1E69E9C10];
      v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v128 = 136315906;
      v129 = "operator[]";
      v130 = 1024;
      if (v64)
      {
        v65 = 3;
      }

      else
      {
        v65 = 2;
      }

      v131 = 468;
      v132 = 2048;
      v133 = v43;
      v134 = 2048;
      v135 = v45;
      _os_log_send_and_compose_impl(v65, &v117, &v136, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v74, v75);
      _os_crash_msg();
      __break(1u);
      goto LABEL_135;
    }

LABEL_34:
    ;
  }

  v11 = v84;
  if (v22)
  {
    v49 = 0;
    v8 = 0;
    while (1)
    {
      v50 = *(&v86 + 1);
      if (*(&v86 + 1) <= v8)
      {
        break;
      }

      v11 = v86 + v49;
      v8 = (v8 + 1);
      v49 += 24;
      if (v22 == v8)
      {
        goto LABEL_39;
      }
    }

LABEL_139:
    re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v50);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v68, v72);
    __break(1u);
LABEL_140:
    re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v11);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v69, v73);
    __break(1u);
    goto LABEL_141;
  }

LABEL_39:
  if (v77)
  {
    v51 = *(a3 + 255);
    if (v51)
    {
      v52 = *(a3 + 257);
      v53 = 8 * v51;
      do
      {
        v54 = *v52++;
        v53 -= 8;
      }

      while (v53);
    }
  }

  *v76 = 1;
LABEL_46:
  for (j = 168; j != -24; j -= 24)
  {
    re::FixedArray<CoreIKTransform>::deinit((v118 + j));
  }

  for (k = 0; k != -192; k -= 24)
  {
    v57 = (v122 + k);
    v58 = *(&v126 + k + 8);
    if (v58)
    {
      if (v57[22])
      {
        (*(*v58 + 40))(v58, *(&v127 + k + 8));
        v57[22] = 0;
        v57[23] = 0;
      }

      v57[21] = 0;
    }
  }

  if (v79[0] & 1) == 0 && v81 && (v82)
  {
    (*(*v81 + 40))();
  }

  if (v87 && v88)
  {
    (*(*v87 + 40))();
  }

  if (*(&v100 + 1))
  {
    if (v101)
    {
      (*(**(&v100 + 1) + 40))();
      v101 = 0uLL;
    }

    *(&v100 + 1) = 0;
  }

  if (v99)
  {
    if (*(&v99 + 1))
    {
      (*(*v99 + 40))();
      *(&v99 + 1) = 0;
      *&v100 = 0;
    }

    *&v99 = 0;
  }

  if (*(&v97 + 1))
  {
    if (v98)
    {
      (*(**(&v97 + 1) + 40))();
      v98 = 0uLL;
    }

    *(&v97 + 1) = 0;
  }

  if (v96)
  {
    if (*(&v96 + 1))
    {
      (*(*v96 + 40))();
      *(&v96 + 1) = 0;
      *&v97 = 0;
    }

    *&v96 = 0;
  }

  if (*(&v94 + 1))
  {
    if (v95)
    {
      (*(**(&v94 + 1) + 40))();
      v95 = 0uLL;
    }

    *(&v94 + 1) = 0;
  }

  if (v93)
  {
    if (*(&v93 + 1))
    {
      (*(*v93 + 40))();
      *(&v93 + 1) = 0;
      *&v94 = 0;
    }

    *&v93 = 0;
  }

  if (*(&v91 + 1))
  {
    if (v92)
    {
      (*(**(&v91 + 1) + 40))();
      v92 = 0uLL;
    }

    *(&v91 + 1) = 0;
  }

  if (v90 && *(&v90 + 1))
  {
    (*(*v90 + 40))();
  }

  if (v102 && v103)
  {
    (*(*v102 + 40))();
  }

  if (*(&v115 + 1))
  {
    if (v116)
    {
      (*(**(&v115 + 1) + 40))();
      v116 = 0uLL;
    }

    *(&v115 + 1) = 0;
  }

  if (v114)
  {
    if (*(&v114 + 1))
    {
      (*(*v114 + 40))();
      *(&v114 + 1) = 0;
      *&v115 = 0;
    }

    *&v114 = 0;
  }

  if (*(&v112 + 1))
  {
    if (v113)
    {
      (*(**(&v112 + 1) + 40))();
      v113 = 0uLL;
    }

    *(&v112 + 1) = 0;
  }

  if (v111)
  {
    if (*(&v111 + 1))
    {
      (*(*v111 + 40))();
      *(&v111 + 1) = 0;
      *&v112 = 0;
    }

    *&v111 = 0;
  }

  if (*(&v109 + 1))
  {
    if (v110)
    {
      (*(**(&v109 + 1) + 40))();
      v110 = 0uLL;
    }

    *(&v109 + 1) = 0;
  }

  if (v108)
  {
    if (*(&v108 + 1))
    {
      (*(*v108 + 40))();
      *(&v108 + 1) = 0;
      *&v109 = 0;
    }

    *&v108 = 0;
  }

  if (*(&v106 + 1))
  {
    if (v107)
    {
      (*(**(&v106 + 1) + 40))();
      v107 = 0uLL;
    }

    *(&v106 + 1) = 0;
  }

  result = v105;
  if (v105)
  {
    if (*(&v105 + 1))
    {
      return (*(*v105 + 40))();
    }
  }

  return result;
}

void re::anonymous namespace::countRegisterDependenciesForType<int>(re::Allocator *result, re::EvaluationTree *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, char *a8)
{
  v8 = a4[1];
  if (v8)
  {
    v14 = a3;
    v17 = 0;
    while (1)
    {
      v18 = a4[1];
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v21);
    __break(1u);
  }
}

void re::anonymous namespace::countRegisterDependenciesForType<unsigned int>(re::Allocator *result, re::EvaluationTree *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char *a8)
{
  v8 = *(a4 + 24);
  if (v8)
  {
    v14 = a3;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 24);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v21);
    __break(1u);
  }
}

void re::anonymous namespace::countRegisterDependenciesForType<float>(re::Allocator *result, re::EvaluationTree *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char *a8)
{
  v8 = *(a4 + 40);
  if (v8)
  {
    v14 = a3;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 40);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v21);
    __break(1u);
  }
}

void re::anonymous namespace::countRegisterDependenciesForType<re::Matrix3x3<float>>(re::Allocator *result, re::EvaluationTree *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char *a8)
{
  v8 = *(a4 + 56);
  if (v8)
  {
    v14 = a3;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 56);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v21);
    __break(1u);
  }
}

void re::anonymous namespace::countRegisterDependenciesForType<re::Matrix4x4<float>>(re::Allocator *result, re::EvaluationTree *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char *a8)
{
  v8 = *(a4 + 72);
  if (v8)
  {
    v14 = a3;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 72);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v21);
    __break(1u);
  }
}

void re::anonymous namespace::countRegisterDependenciesForType<re::Quaternion<float>>(re::Allocator *result, re::EvaluationTree *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char *a8)
{
  v8 = *(a4 + 88);
  if (v8)
  {
    v14 = a3;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 88);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v21);
    __break(1u);
  }
}

void re::anonymous namespace::countRegisterDependenciesForType<re::Vector2<float>>(re::Allocator *result, re::EvaluationTree *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char *a8)
{
  v8 = *(a4 + 104);
  if (v8)
  {
    v14 = a3;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 104);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v21);
    __break(1u);
  }
}

void re::anonymous namespace::countRegisterDependenciesForType<re::Vector3<float>>(re::Allocator *result, re::EvaluationTree *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char *a8)
{
  v8 = *(a4 + 120);
  if (v8)
  {
    v14 = a3;
    v17 = 0;
    while (1)
    {
      v18 = *(a4 + 120);
      if (v18 <= v17)
      {
        break;
      }

      if (*a8 != 1 || v17 >= v8)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v21);
    __break(1u);
  }
}

void re::anonymous namespace::countRegisterDependencies(re::Allocator *a1, re::EvaluationTree *a2, char a3, unsigned int a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, char *a9)
{
  i = a5;
  v130 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    ++*a8;
    v16 = a7 + 24 * a4;
    v17 = *(v16 + 8);
    if (v17 <= a5)
    {
      goto LABEL_85;
    }

    v18 = a4;
    ++*(*(v16 + 16) + 8 * a5);
  }

  else
  {
    v18 = a4;
  }

  v19 = a6 + 24 * v18;
  v17 = *(v19 + 8);
  if (v17 <= a5)
  {
    goto LABEL_81;
  }

  v20 = *(v19 + 16);
  v21 = *(v20 + a5);
  if (v21 != 2)
  {
    if (v21 == 1)
    {
      *v83 = a1;
      memset(&v83[8], 0, 24);
      re::DynamicString::setCapacity(v83, 0x80uLL);
      re::DynamicString::appendf(v83, "A circular dependency has been detected with register type %u, register id %zu.", a4, i);
      LOBYTE(v95) = 0;
      *(&v95 + 1) = 4000;
      v96[0] = &re::AnimationErrorCategory(void)::instance;
      *&v96[1] = *v83;
      v96[3] = *&v83[16];
      *&v97 = *&v83[24];
      re::Result<re::Unit,re::DetailedError>::operator=(a9, &v95);
      if (v95 & 1) == 0 && v96[1] && (v96[2])
      {
        (*(*v96[1] + 40))();
      }
    }

    else
    {
      v63 = a6 + 24 * v18;
      *(v20 + a5) = 1;
      re::EvaluationTree::getRegister(v70, a2, v18, a5);
      v22 = &(&re::kEvaluationCommandDescriptions)[2 * v70[0]];
      v65 = *(v22 + 9);
      if (*(v22 + 9))
      {
        v23 = 0;
        v66 = v22 + 10;
        v64 = i;
        do
        {
          v24 = v66[v23];
          v25 = *&v70[2 * v23 + 2];
          v67 = v23;
          if (v24 == 253)
          {
            v32 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a2 + 1608, v25);
            v68 = *(v32 + 40);
            v69 = v32;
            if (v68)
            {
              for (i = 0; i != v68; ++i)
              {
                v33 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v69, i);
                v34 = v33[5];
                if (v34 != -1)
                {
                  v35 = v34 - 0x7FFFFFFFFFFFFFFFLL;
                  if ((v34 - 0x7FFFFFFFFFFFFFFFLL) >= 0)
                  {
                    v29 = *(a2 + 88);
                    while (v29 > v35)
                    {
                      v34 = *(*(a2 + 90) + 8 * v35);
                      v35 = v34 - 0x7FFFFFFFFFFFFFFFLL;
                      if ((v34 - 0x7FFFFFFFFFFFFFFFLL) < 0)
                      {
                        goto LABEL_32;
                      }
                    }

                    *&v72 = 0;
                    v97 = 0u;
                    v98 = 0u;
                    memset(v96, 0, sizeof(v96));
                    v95 = 0u;
                    v47 = MEMORY[0x1E69E9C10];
                    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v83 = 136315906;
                    *&v83[4] = "operator[]";
                    *&v83[12] = 1024;
                    if (v48)
                    {
                      v49 = 3;
                    }

                    else
                    {
                      v49 = 2;
                    }

                    *&v83[14] = 797;
                    *&v83[18] = 2048;
                    *&v83[20] = v35;
                    *&v83[28] = 2048;
                    *&v83[30] = v29;
                    _os_log_send_and_compose_impl(v49, &v72, &v95, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v83, 38, v61, v63);
                    _os_crash_msg();
                    __break(1u);
LABEL_77:
                    v71 = 0;
                    v75 = 0u;
                    v76 = 0u;
                    v73 = 0u;
                    v74 = 0u;
                    v72 = 0u;
                    v17 = MEMORY[0x1E69E9C10];
                    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v122 = 136315906;
                    v123 = "operator[]";
                    v124 = 1024;
                    if (v50)
                    {
                      v51 = 3;
                    }

                    else
                    {
                      v51 = 2;
                    }

                    v125 = 468;
                    v126 = 2048;
                    v127 = i;
                    v128 = 2048;
                    v129 = v29;
                    _os_log_send_and_compose_impl(v51, &v71, &v72, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v122, 38, v61, v63);
                    _os_crash_msg();
                    __break(1u);
LABEL_81:
                    *&v72 = 0;
                    v97 = 0u;
                    v98 = 0u;
                    memset(v96, 0, sizeof(v96));
                    v95 = 0u;
                    v52 = MEMORY[0x1E69E9C10];
                    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v83 = 136315906;
                    *&v83[4] = "operator[]";
                    *&v83[12] = 1024;
                    if (v53)
                    {
                      v54 = 3;
                    }

                    else
                    {
                      v54 = 2;
                    }

                    *&v83[14] = 468;
                    *&v83[18] = 2048;
                    *&v83[20] = i;
                    *&v83[28] = 2048;
                    *&v83[30] = v17;
                    _os_log_send_and_compose_impl(v54, &v72, &v95, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v83, 38, v61, v62);
                    _os_crash_msg();
                    __break(1u);
LABEL_85:
                    *&v72 = 0;
                    v97 = 0u;
                    v98 = 0u;
                    memset(v96, 0, sizeof(v96));
                    v95 = 0u;
                    v55 = MEMORY[0x1E69E9C10];
                    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v83 = 136315906;
                    *&v83[4] = "operator[]";
                    *&v83[12] = 1024;
                    if (v56)
                    {
                      v57 = 3;
                    }

                    else
                    {
                      v57 = 2;
                    }

                    *&v83[14] = 468;
                    *&v83[18] = 2048;
                    *&v83[20] = i;
                    *&v83[28] = 2048;
                    *&v83[30] = v17;
                    _os_log_send_and_compose_impl(v57, &v72, &v95, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v83, 38, v61, v62);
                    _os_crash_msg();
                    __break(1u);
LABEL_89:
                    *&v72 = 0;
                    v97 = 0u;
                    v98 = 0u;
                    memset(v96, 0, sizeof(v96));
                    v95 = 0u;
                    v58 = MEMORY[0x1E69E9C10];
                    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v83 = 136315906;
                    *&v83[4] = "operator[]";
                    *&v83[12] = 1024;
                    if (v59)
                    {
                      v60 = 3;
                    }

                    else
                    {
                      v60 = 2;
                    }

                    *&v83[14] = 468;
                    *&v83[18] = 2048;
                    *&v83[20] = i;
                    *&v83[28] = 2048;
                    *&v83[30] = v17;
                    _os_log_send_and_compose_impl(v60, &v72, &v95, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v83, 38, v61, v63);
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_32:
                  if (*a9 != 1)
                  {
                    return;
                  }
                }

                v36 = *v33;
                v37 = *(*v33 + 1304);
                *v83 = *(*v33 + 1320);
                *&v83[8] = v37;
                v38 = v36[168];
                *&v83[16] = v36[170];
                *&v83[24] = v38;
                v39 = v36[173];
                *&v83[32] = v36[175];
                v84 = v39;
                v40 = v36[178];
                v85 = v36[180];
                v86 = v40;
                v41 = v36[183];
                v87 = v36[185];
                v88 = v41;
                v42 = v36[188];
                v89 = v36[190];
                v90 = v42;
                v43 = v36[193];
                v91 = v36[195];
                v92 = v43;
                v44 = v36[200];
                v45 = v36[198];
                v93 = v44;
                v94 = v45;
                v104 = 0u;
                v105 = 0u;
                v102 = 0u;
                v103 = 0u;
                v100 = 0u;
                v101 = 0u;
                v98 = 0u;
                v99 = 0u;
                v97 = 0u;
                v95 = 0u;
                memset(v96, 0, sizeof(v96));
                re::EvaluationTree::resolveAliasRegisters(a2, a1, v83, &v95);
                *&v72 = v96[0];
                *(&v72 + 1) = *(&v95 + 1);
                *&v73 = v96[3];
                *(&v73 + 1) = v96[2];
                *&v74 = v98;
                *(&v74 + 1) = *(&v97 + 1);
                *&v75 = *(&v99 + 1);
                *(&v75 + 1) = v99;
                *&v76 = v101;
                *(&v76 + 1) = *(&v100 + 1);
                v77 = *(&v102 + 1);
                v78 = v102;
                v79 = v104;
                v80 = *(&v103 + 1);
                v81 = *(&v105 + 1);
                v82 = v105;
                v46 = *a9;
                if (*(&v104 + 1))
                {
                  if (v105)
                  {
                    (*(**(&v104 + 1) + 40))();
                    v105 = 0uLL;
                  }

                  *(&v104 + 1) = 0;
                }

                if (v103)
                {
                  if (*(&v103 + 1))
                  {
                    (*(*v103 + 40))();
                    *(&v103 + 1) = 0;
                    *&v104 = 0;
                  }

                  *&v103 = 0;
                }

                if (*(&v101 + 1))
                {
                  if (v102)
                  {
                    (*(**(&v101 + 1) + 40))();
                    v102 = 0uLL;
                  }

                  *(&v101 + 1) = 0;
                }

                if (v100)
                {
                  if (*(&v100 + 1))
                  {
                    (*(*v100 + 40))();
                    *(&v100 + 1) = 0;
                    *&v101 = 0;
                  }

                  *&v100 = 0;
                }

                if (*(&v98 + 1))
                {
                  if (v99)
                  {
                    (*(**(&v98 + 1) + 40))();
                    v99 = 0uLL;
                  }

                  *(&v98 + 1) = 0;
                }

                if (v97)
                {
                  if (*(&v97 + 1))
                  {
                    (*(*v97 + 40))();
                    *(&v97 + 1) = 0;
                    *&v98 = 0;
                  }

                  *&v97 = 0;
                }

                if (v96[1])
                {
                  if (v96[2])
                  {
                    (*(*v96[1] + 40))();
                    v96[2] = 0;
                    v96[3] = 0;
                  }

                  v96[1] = 0;
                }

                if (v95 && *(&v95 + 1))
                {
                  (*(*v95 + 40))();
                }

                if ((v46 & 1) == 0)
                {
                  return;
                }
              }
            }
          }

          else if (v24 == 254)
          {
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v97 = 0u;
            v95 = 0u;
            memset(v96, 0, sizeof(v96));
            CallbackData = re::EvaluationTree::getCallbackData(a2, v25);
            re::EvaluationTree::resolveAliasRegisters(a2, a1, CallbackData, &v95);
            *v83 = v96[1];
            *&v83[8] = v96[0];
            *&v83[16] = v97;
            *&v83[24] = v96[3];
            *&v83[32] = *(&v98 + 1);
            v84 = v98;
            v85 = v100;
            v86 = *(&v99 + 1);
            v87 = *(&v101 + 1);
            v88 = v101;
            v89 = v103;
            v90 = *(&v102 + 1);
            v91 = *(&v104 + 1);
            v92 = v104;
            v93 = v106;
            v94 = *(&v105 + 1);
            if (*a9 != 1)
            {
LABEL_71:
              re::EvaluationCallbackData::~EvaluationCallbackData(&v95);
              return;
            }

            v27 = v107;
            if (v107)
            {
              v28 = 0;
              i = 0;
              do
              {
                v29 = v107;
                if (v107 <= i)
                {
                  goto LABEL_77;
                }

                v30 = *(&v107 + 1);
                if (*a9 != 1)
                {
                  goto LABEL_71;
                }

                v31 = v30 + v28;
                if (*a9 != 1)
                {
                  goto LABEL_71;
                }

                if (*a9 != 1)
                {
                  goto LABEL_71;
                }

                ++i;
                v28 += 24;
              }

              while (v27 != i);
            }

            re::EvaluationCallbackData::~EvaluationCallbackData(&v95);
          }

          else
          {
            if (*a9 != 1)
            {
              return;
            }
          }

          v23 = v67 + 1;
          i = v64;
        }

        while (v67 + 1 != v65);
      }

      v17 = *(v63 + 8);
      if (v17 <= i)
      {
        goto LABEL_89;
      }

      *(*(v63 + 16) + i) = 2;
    }
  }
}

void re::anonymous namespace::storeRegisterDependenciesForType<int>(re::EvaluationTree *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a4[1];
  if (v7)
  {
    v15 = 0;
    while (1)
    {
      v16 = a4[1];
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v18);
    __break(1u);
  }
}

void re::anonymous namespace::storeRegisterDependenciesForType<unsigned int>(re::EvaluationTree *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 24);
  if (v7)
  {
    v13 = a2;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 24);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v18);
    __break(1u);
  }
}

void re::anonymous namespace::storeRegisterDependenciesForType<float>(re::EvaluationTree *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 40);
  if (v7)
  {
    v13 = a2;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 40);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v18);
    __break(1u);
  }
}

void re::anonymous namespace::storeRegisterDependenciesForType<re::Matrix3x3<float>>(re::EvaluationTree *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 56);
  if (v7)
  {
    v13 = a2;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 56);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v18);
    __break(1u);
  }
}

void re::anonymous namespace::storeRegisterDependenciesForType<re::Matrix4x4<float>>(re::EvaluationTree *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 72);
  if (v7)
  {
    v13 = a2;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 72);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v18);
    __break(1u);
  }
}

void re::anonymous namespace::storeRegisterDependenciesForType<re::Quaternion<float>>(re::EvaluationTree *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 88);
  if (v7)
  {
    v13 = a2;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 88);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v18);
    __break(1u);
  }
}

void re::anonymous namespace::storeRegisterDependenciesForType<re::Vector2<float>>(re::EvaluationTree *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 104);
  if (v7)
  {
    v13 = a2;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 104);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v18);
    __break(1u);
  }
}

void re::anonymous namespace::storeRegisterDependenciesForType<re::Vector3<float>>(re::EvaluationTree *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 120);
  if (v7)
  {
    v13 = a2;
    v15 = 0;
    while (1)
    {
      v16 = *(a4 + 120);
      if (v16 <= v15)
      {
        break;
      }

      if (v7 == v15)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v18);
    __break(1u);
  }
}

void re::anonymous namespace::storeRegisterDependencies(re::EvaluationTree *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a5;
  v133 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v71[0] = &unk_1F5CCF7F8;
  v71[1] = "Scratch Pad";
  if (a2 != 255)
  {
    v14 = a7 + 24 * a4;
    v15 = *(v14 + 8);
    if (v15 <= a5)
    {
      goto LABEL_73;
    }

    v16 = a8 + 24 * a4;
    v15 = *(v16 + 8);
    if (v15 <= a5)
    {
LABEL_77:
      *&v74 = 0;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v97 = 0u;
      v58 = MEMORY[0x1E69E9C10];
      v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v85 = 136315906;
      *&v85[4] = "operator[]";
      *&v85[12] = 1024;
      if (v59)
      {
        v60 = 3;
      }

      else
      {
        v60 = 2;
      }

      *&v85[14] = 468;
      *&v85[18] = 2048;
      *&v85[20] = v11;
      *&v85[28] = 2048;
      *&v85[30] = v15;
      _os_log_send_and_compose_impl(v60, &v74, &v97, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v63, v64);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v17 = *(v14 + 16);
      v18 = (*(v16 + 16) + 16 * a5);
      v19 = *(v17 + 8 * a5) - 1;
      *(v17 + 8 * a5) = v19;
      v20 = v18[1];
      if (v20 > v19)
      {
        v21 = *v18 + 16 * v19;
        *v21 = a2;
        *(v21 + 8) = a3;
        goto LABEL_6;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v19, v20);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v61, v62);
    __break(1u);
  }

LABEL_6:
  v22 = a6 + 24 * a4;
  v15 = *(v22 + 8);
  if (v15 <= a5)
  {
    goto LABEL_69;
  }

  v23 = *(v22 + 16);
  if ((*(v23 + a5) & 1) == 0)
  {
    *(v23 + a5) = 1;
    re::EvaluationTree::getRegister(v70, a1, a4, a5);
    v24 = &(&re::kEvaluationCommandDescriptions)[2 * v70[0]];
    v66 = *(v24 + 9);
    if (*(v24 + 9))
    {
      v25 = 0;
      v65 = v24 + 10;
      do
      {
        v26 = v65[v25];
        v27 = *&v70[2 * v25 + 2];
        v67 = v25;
        if (v26 == 253)
        {
          v33 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a1 + 1608, v27);
          v68 = *(v33 + 40);
          v69 = v33;
          if (v68)
          {
            for (i = 0; i != v68; ++i)
            {
              v34 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v69, i);
              v35 = v34[5];
              if (v35 != -1)
              {
                v36 = v35 - 0x7FFFFFFFFFFFFFFFLL;
                if ((v35 - 0x7FFFFFFFFFFFFFFFLL) >= 0)
                {
                  v15 = *(a1 + 88);
                  while (v15 > v36)
                  {
                    v35 = *(*(a1 + 90) + 8 * v36);
                    v36 = v35 - 0x7FFFFFFFFFFFFFFFLL;
                    if ((v35 - 0x7FFFFFFFFFFFFFFFLL) < 0)
                    {
                      goto LABEL_24;
                    }
                  }

                  *&v74 = 0;
                  v100 = 0u;
                  v101 = 0u;
                  v98 = 0u;
                  v99 = 0u;
                  v97 = 0u;
                  v47 = MEMORY[0x1E69E9C10];
                  v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v85 = 136315906;
                  *&v85[4] = "operator[]";
                  *&v85[12] = 1024;
                  if (v48)
                  {
                    v49 = 3;
                  }

                  else
                  {
                    v49 = 2;
                  }

                  *&v85[14] = 797;
                  *&v85[18] = 2048;
                  *&v85[20] = v36;
                  *&v85[28] = 2048;
                  *&v85[30] = v15;
                  _os_log_send_and_compose_impl(v49, &v74, &v97, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v63, v64);
                  _os_crash_msg();
                  __break(1u);
LABEL_65:
                  v73 = 0;
                  v77 = 0u;
                  v78 = 0u;
                  v75 = 0u;
                  v76 = 0u;
                  v74 = 0u;
                  v11 = MEMORY[0x1E69E9C10];
                  v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v125 = 136315906;
                  v126 = "operator[]";
                  v127 = 1024;
                  if (v50)
                  {
                    v51 = 3;
                  }

                  else
                  {
                    v51 = 2;
                  }

                  v128 = 468;
                  v129 = 2048;
                  v130 = i;
                  v131 = 2048;
                  v132 = v15;
                  _os_log_send_and_compose_impl(v51, &v73, &v74, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v125, 38, v63, v64);
                  _os_crash_msg();
                  __break(1u);
LABEL_69:
                  *&v74 = 0;
                  v100 = 0u;
                  v101 = 0u;
                  v98 = 0u;
                  v99 = 0u;
                  v97 = 0u;
                  v52 = MEMORY[0x1E69E9C10];
                  v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v85 = 136315906;
                  *&v85[4] = "operator[]";
                  *&v85[12] = 1024;
                  if (v53)
                  {
                    v54 = 3;
                  }

                  else
                  {
                    v54 = 2;
                  }

                  *&v85[14] = 468;
                  *&v85[18] = 2048;
                  *&v85[20] = v11;
                  *&v85[28] = 2048;
                  *&v85[30] = v15;
                  _os_log_send_and_compose_impl(v54, &v74, &v97, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v63, v64);
                  _os_crash_msg();
                  __break(1u);
LABEL_73:
                  *&v74 = 0;
                  v100 = 0u;
                  v101 = 0u;
                  v98 = 0u;
                  v99 = 0u;
                  v97 = 0u;
                  v55 = MEMORY[0x1E69E9C10];
                  v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v85 = 136315906;
                  *&v85[4] = "operator[]";
                  *&v85[12] = 1024;
                  if (v56)
                  {
                    v57 = 3;
                  }

                  else
                  {
                    v57 = 2;
                  }

                  *&v85[14] = 468;
                  *&v85[18] = 2048;
                  *&v85[20] = v11;
                  *&v85[28] = 2048;
                  *&v85[30] = v15;
                  _os_log_send_and_compose_impl(v57, &v74, &v97, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v63, v64);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_77;
                }

LABEL_24:
              }

              v37 = *v34;
              v38 = *(*v34 + 1304);
              *v85 = *(*v34 + 1320);
              *&v85[8] = v38;
              v39 = v37[168];
              *&v85[16] = v37[170];
              *&v85[24] = v39;
              v40 = v37[173];
              *&v85[32] = v37[175];
              v86 = v40;
              v41 = v37[178];
              v87 = v37[180];
              v88 = v41;
              v42 = v37[183];
              v89 = v37[185];
              v90 = v42;
              v43 = v37[188];
              v91 = v37[190];
              v92 = v43;
              v44 = v37[193];
              v93 = v37[195];
              v94 = v44;
              v45 = v37[200];
              v46 = v37[198];
              v95 = v45;
              v96 = v46;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v101 = 0u;
              v102 = 0u;
              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              re::EvaluationTree::resolveAliasRegisters(a1, v71, v85, &v97);
              *&v74 = v98;
              *(&v74 + 1) = *(&v97 + 1);
              *&v75 = *(&v99 + 1);
              *(&v75 + 1) = v99;
              *&v76 = v101;
              *(&v76 + 1) = *(&v100 + 1);
              *&v77 = *(&v102 + 1);
              *(&v77 + 1) = v102;
              *&v78 = v104;
              *(&v78 + 1) = *(&v103 + 1);
              v79 = *(&v105 + 1);
              v80 = v105;
              v81 = v107;
              v82 = *(&v106 + 1);
              v83 = *(&v108 + 1);
              v84 = v108;
              if (*(&v107 + 1))
              {
                if (v108)
                {
                  (*(**(&v107 + 1) + 40))();
                  v108 = 0uLL;
                }

                *(&v107 + 1) = 0;
              }

              if (v106)
              {
                if (*(&v106 + 1))
                {
                  (*(*v106 + 40))();
                  *(&v106 + 1) = 0;
                  *&v107 = 0;
                }

                *&v106 = 0;
              }

              if (*(&v104 + 1))
              {
                if (v105)
                {
                  (*(**(&v104 + 1) + 40))();
                  v105 = 0uLL;
                }

                *(&v104 + 1) = 0;
              }

              if (v103)
              {
                if (*(&v103 + 1))
                {
                  (*(*v103 + 40))();
                  *(&v103 + 1) = 0;
                  *&v104 = 0;
                }

                *&v103 = 0;
              }

              if (*(&v101 + 1))
              {
                if (v102)
                {
                  (*(**(&v101 + 1) + 40))();
                  v102 = 0uLL;
                }

                *(&v101 + 1) = 0;
              }

              if (v100)
              {
                if (*(&v100 + 1))
                {
                  (*(*v100 + 40))();
                  *(&v100 + 1) = 0;
                  *&v101 = 0;
                }

                *&v100 = 0;
              }

              if (*(&v98 + 1))
              {
                if (v99)
                {
                  (*(**(&v98 + 1) + 40))();
                  v99 = 0uLL;
                }

                *(&v98 + 1) = 0;
              }

              if (v97 && *(&v97 + 1))
              {
                (*(*v97 + 40))();
              }
            }
          }
        }

        else if (v26 == 254)
        {
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          CallbackData = re::EvaluationTree::getCallbackData(a1, v27);
          re::EvaluationTree::resolveAliasRegisters(a1, v71, CallbackData, &v97);
          *v85 = *(&v98 + 1);
          *&v85[8] = v98;
          *&v85[16] = v100;
          *&v85[24] = *(&v99 + 1);
          *&v85[32] = *(&v101 + 1);
          v86 = v101;
          v87 = v103;
          v88 = *(&v102 + 1);
          v89 = *(&v104 + 1);
          v90 = v104;
          v91 = v106;
          v92 = *(&v105 + 1);
          v93 = *(&v107 + 1);
          v94 = v107;
          v95 = v109;
          v96 = *(&v108 + 1);
          v29 = v110;
          if (v110)
          {
            v30 = 0;
            i = 0;
            do
            {
              v15 = v110;
              if (v110 <= i)
              {
                goto LABEL_65;
              }

              v32 = *(&v110 + 1) + v30;
              ++i;
              v30 += 24;
            }

            while (v29 != i);
          }

          re::EvaluationCallbackData::~EvaluationCallbackData(&v97);
        }

        else
        {
        }

        v25 = v67 + 1;
      }

      while (v67 + 1 != v66);
    }
  }

  re::Allocator::~Allocator(v71);
}

uint64_t re::Result<re::Unit,re::DetailedError>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      *a1 = 0;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 40) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 48) = *(a2 + 48);
      v3 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 24) = 0;
      v4 = *(a2 + 40);
      *(a2 + 48) = 0;
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      *(a1 + 32) = v3;
      *(a1 + 40) = v4;
      *(a2 + 32) = v6;
      *(a2 + 40) = v5;
    }
  }

  else if (*a2)
  {
    re::DynamicString::deinit((a1 + 24));
    *a1 = 1;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    re::DynamicString::operator=((a1 + 24), (a2 + 24));
  }

  return a1;
}

void *re::EvaluationTree::getRegister(uint64_t a1, void *a2, unsigned __int8 a3, uint64_t a4)
{
  *a1 = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {

        return re::EvaluationTree::getRegister<re::Vector2<float>>(a2, a4, a1);
      }

      else
      {
        if (a3 != 7)
        {
          goto LABEL_35;
        }

        return re::EvaluationTree::getRegister<re::Vector3<float>>(a2, a4, a1);
      }
    }

    else if (a3 == 4)
    {

      return re::EvaluationTree::getRegister<re::Matrix4x4<float>>(a2, a4, a1);
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_35;
      }

      return re::EvaluationTree::getRegister<re::Quaternion<float>>(a2, a4, a1);
    }
  }

  else
  {
    if (a3 <= 1u)
    {
      if (a3)
      {

        return re::EvaluationTree::getRegister<unsigned int>(a2, a4, a1);
      }

      else
      {

        return re::EvaluationTree::getRegister<int>(a2, a4, a1);
      }
    }

    if (a3 != 2)
    {
      if (a3 == 3)
      {

        return re::EvaluationTree::getRegister<re::Matrix3x3<float>>(a2, a4, a1);
      }

LABEL_35:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 885, a3);
      result = _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v6);
      __break(1u);
      return result;
    }

    return re::EvaluationTree::getRegister<float>(a2, a4, a1);
  }
}

void *re::EvaluationTree::getRegister<int>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  v60 = *MEMORY[0x1E69E9840];
  v4 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if (a2 - 0x7FFFFFFFFFFFFFFFLL >= 0)
  {
    v5 = result[83];
    do
    {
      if (v5 <= v4)
      {
        goto LABEL_85;
      }

      v3 = *(result[85] + 8 * v4);
      v4 = v3 - 0x7FFFFFFFFFFFFFFFLL;
    }

    while ((v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0);
  }

  v5 = result[210];
  if (v5 <= v3)
  {
LABEL_89:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = v3;
    v53 = 2048;
    v54 = v5;
    _os_log_send_and_compose_impl(v42, &v46, &v55, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  v6 = (result[212] + 32 * v3);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
  v8 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v9 = *(v8 + 9);
  if (*(v8 + 9))
  {
    v10 = 0;
    v11 = v6 + 8;
    v12 = v8 + 10;
    do
    {
      v4 = *&v11[8 * v10] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v4 & 0x8000000000000000) == 0)
      {
        v13 = v12[v10];
        if (v12[v10] <= 3u)
        {
          if (v12[v10] <= 1u)
          {
            if (!v12[v10])
            {
              v5 = result[83];
              while (v5 > v4)
              {
                v14 = *(result[85] + 8 * v4);
                v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_50;
                }
              }

              goto LABEL_57;
            }

            v5 = result[88];
            while (v5 > v4)
            {
              v14 = *(result[90] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_69;
          }

          if (v13 == 2)
          {
            v5 = result[93];
            while (v5 > v4)
            {
              v14 = *(result[95] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_65;
          }

          if (v13 == 3)
          {
            v5 = result[98];
            while (v5 > v4)
            {
              v14 = *(result[100] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_61;
          }

          goto LABEL_93;
        }

        if (v12[v10] <= 5u)
        {
          if (v13 == 4)
          {
            v5 = result[103];
            while (v5 > v4)
            {
              v14 = *(result[105] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_73;
          }

          if (v13 == 5)
          {
            v5 = result[108];
            while (v5 > v4)
            {
              v14 = *(result[110] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_81;
          }

          goto LABEL_93;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            v5 = result[118];
            while (v5 > v4)
            {
              v14 = *(result[120] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v16, &v46, &v55, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_57:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v17 = MEMORY[0x1E69E9C10];
            v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v18)
            {
              v19 = 3;
            }

            else
            {
              v19 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v19, &v46, &v55, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_61:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v20 = MEMORY[0x1E69E9C10];
            v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v21)
            {
              v22 = 3;
            }

            else
            {
              v22 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v22, &v46, &v55, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_65:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v23 = MEMORY[0x1E69E9C10];
            v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v24)
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v25, &v46, &v55, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_69:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v26 = MEMORY[0x1E69E9C10];
            v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v27)
            {
              v28 = 3;
            }

            else
            {
              v28 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v28, &v46, &v55, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_73:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v29 = MEMORY[0x1E69E9C10];
            v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v30)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v31, &v46, &v55, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_77:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v32 = MEMORY[0x1E69E9C10];
            v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v33)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v34, &v46, &v55, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_81:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v37, &v46, &v55, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_85:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v3 = MEMORY[0x1E69E9C10];
            v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v38)
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v39, &v46, &v55, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
            goto LABEL_89;
          }

LABEL_93:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13);
          _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v43);
          __break(1u);
        }

        v5 = result[113];
        do
        {
          if (v5 <= v4)
          {
            goto LABEL_77;
          }

          v14 = *(result[115] + 8 * v4);
          v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_50:
        *(a3 + v10 + 1) = v14;
      }

      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

void *re::EvaluationTree::getRegister<unsigned int>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  v60 = *MEMORY[0x1E69E9840];
  v4 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if (a2 - 0x7FFFFFFFFFFFFFFFLL >= 0)
  {
    v5 = result[88];
    do
    {
      if (v5 <= v4)
      {
        goto LABEL_85;
      }

      v3 = *(result[90] + 8 * v4);
      v4 = v3 - 0x7FFFFFFFFFFFFFFFLL;
    }

    while ((v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0);
  }

  v5 = result[215];
  if (v5 <= v3)
  {
LABEL_89:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = v3;
    v53 = 2048;
    v54 = v5;
    _os_log_send_and_compose_impl(v42, &v46, &v55, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  v6 = (result[217] + 32 * v3);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
  v8 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v9 = *(v8 + 9);
  if (*(v8 + 9))
  {
    v10 = 0;
    v11 = v6 + 8;
    v12 = v8 + 10;
    do
    {
      v4 = *&v11[8 * v10] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v4 & 0x8000000000000000) == 0)
      {
        v13 = v12[v10];
        if (v12[v10] <= 3u)
        {
          if (v12[v10] <= 1u)
          {
            if (!v12[v10])
            {
              v5 = result[83];
              while (v5 > v4)
              {
                v14 = *(result[85] + 8 * v4);
                v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_50;
                }
              }

              goto LABEL_57;
            }

            v5 = result[88];
            while (v5 > v4)
            {
              v14 = *(result[90] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_69;
          }

          if (v13 == 2)
          {
            v5 = result[93];
            while (v5 > v4)
            {
              v14 = *(result[95] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_65;
          }

          if (v13 == 3)
          {
            v5 = result[98];
            while (v5 > v4)
            {
              v14 = *(result[100] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_61;
          }

          goto LABEL_93;
        }

        if (v12[v10] <= 5u)
        {
          if (v13 == 4)
          {
            v5 = result[103];
            while (v5 > v4)
            {
              v14 = *(result[105] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_73;
          }

          if (v13 == 5)
          {
            v5 = result[108];
            while (v5 > v4)
            {
              v14 = *(result[110] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_81;
          }

          goto LABEL_93;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            v5 = result[118];
            while (v5 > v4)
            {
              v14 = *(result[120] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v16, &v46, &v55, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_57:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v17 = MEMORY[0x1E69E9C10];
            v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v18)
            {
              v19 = 3;
            }

            else
            {
              v19 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v19, &v46, &v55, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_61:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v20 = MEMORY[0x1E69E9C10];
            v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v21)
            {
              v22 = 3;
            }

            else
            {
              v22 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v22, &v46, &v55, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_65:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v23 = MEMORY[0x1E69E9C10];
            v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v24)
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v25, &v46, &v55, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_69:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v26 = MEMORY[0x1E69E9C10];
            v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v27)
            {
              v28 = 3;
            }

            else
            {
              v28 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v28, &v46, &v55, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_73:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v29 = MEMORY[0x1E69E9C10];
            v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v30)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v31, &v46, &v55, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_77:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v32 = MEMORY[0x1E69E9C10];
            v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v33)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v34, &v46, &v55, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_81:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v37, &v46, &v55, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_85:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v3 = MEMORY[0x1E69E9C10];
            v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v38)
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v39, &v46, &v55, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
            goto LABEL_89;
          }

LABEL_93:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13);
          _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v43);
          __break(1u);
        }

        v5 = result[113];
        do
        {
          if (v5 <= v4)
          {
            goto LABEL_77;
          }

          v14 = *(result[115] + 8 * v4);
          v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_50:
        *(a3 + v10 + 1) = v14;
      }

      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

void *re::EvaluationTree::getRegister<float>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  v60 = *MEMORY[0x1E69E9840];
  v4 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if (a2 - 0x7FFFFFFFFFFFFFFFLL >= 0)
  {
    v5 = result[93];
    do
    {
      if (v5 <= v4)
      {
        goto LABEL_85;
      }

      v3 = *(result[95] + 8 * v4);
      v4 = v3 - 0x7FFFFFFFFFFFFFFFLL;
    }

    while ((v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0);
  }

  v5 = result[220];
  if (v5 <= v3)
  {
LABEL_89:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = v3;
    v53 = 2048;
    v54 = v5;
    _os_log_send_and_compose_impl(v42, &v46, &v55, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  v6 = (result[222] + 32 * v3);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
  v8 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v9 = *(v8 + 9);
  if (*(v8 + 9))
  {
    v10 = 0;
    v11 = v6 + 8;
    v12 = v8 + 10;
    do
    {
      v4 = *&v11[8 * v10] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v4 & 0x8000000000000000) == 0)
      {
        v13 = v12[v10];
        if (v12[v10] <= 3u)
        {
          if (v12[v10] <= 1u)
          {
            if (!v12[v10])
            {
              v5 = result[83];
              while (v5 > v4)
              {
                v14 = *(result[85] + 8 * v4);
                v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_50;
                }
              }

              goto LABEL_57;
            }

            v5 = result[88];
            while (v5 > v4)
            {
              v14 = *(result[90] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_69;
          }

          if (v13 == 2)
          {
            v5 = result[93];
            while (v5 > v4)
            {
              v14 = *(result[95] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_65;
          }

          if (v13 == 3)
          {
            v5 = result[98];
            while (v5 > v4)
            {
              v14 = *(result[100] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_61;
          }

          goto LABEL_93;
        }

        if (v12[v10] <= 5u)
        {
          if (v13 == 4)
          {
            v5 = result[103];
            while (v5 > v4)
            {
              v14 = *(result[105] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_73;
          }

          if (v13 == 5)
          {
            v5 = result[108];
            while (v5 > v4)
            {
              v14 = *(result[110] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_81;
          }

          goto LABEL_93;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            v5 = result[118];
            while (v5 > v4)
            {
              v14 = *(result[120] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v16, &v46, &v55, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_57:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v17 = MEMORY[0x1E69E9C10];
            v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v18)
            {
              v19 = 3;
            }

            else
            {
              v19 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v19, &v46, &v55, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_61:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v20 = MEMORY[0x1E69E9C10];
            v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v21)
            {
              v22 = 3;
            }

            else
            {
              v22 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v22, &v46, &v55, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_65:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v23 = MEMORY[0x1E69E9C10];
            v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v24)
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v25, &v46, &v55, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_69:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v26 = MEMORY[0x1E69E9C10];
            v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v27)
            {
              v28 = 3;
            }

            else
            {
              v28 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v28, &v46, &v55, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_73:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v29 = MEMORY[0x1E69E9C10];
            v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v30)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v31, &v46, &v55, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_77:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v32 = MEMORY[0x1E69E9C10];
            v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v33)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v34, &v46, &v55, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_81:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v37, &v46, &v55, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_85:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v3 = MEMORY[0x1E69E9C10];
            v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v38)
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v39, &v46, &v55, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
            goto LABEL_89;
          }

LABEL_93:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13);
          _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v43);
          __break(1u);
        }

        v5 = result[113];
        do
        {
          if (v5 <= v4)
          {
            goto LABEL_77;
          }

          v14 = *(result[115] + 8 * v4);
          v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_50:
        *(a3 + v10 + 1) = v14;
      }

      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

void *re::EvaluationTree::getRegister<re::Matrix3x3<float>>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  v60 = *MEMORY[0x1E69E9840];
  v4 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if (a2 - 0x7FFFFFFFFFFFFFFFLL >= 0)
  {
    v5 = result[98];
    do
    {
      if (v5 <= v4)
      {
        goto LABEL_85;
      }

      v3 = *(result[100] + 8 * v4);
      v4 = v3 - 0x7FFFFFFFFFFFFFFFLL;
    }

    while ((v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0);
  }

  v5 = result[225];
  if (v5 <= v3)
  {
LABEL_89:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = v3;
    v53 = 2048;
    v54 = v5;
    _os_log_send_and_compose_impl(v42, &v46, &v55, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  v6 = (result[227] + 32 * v3);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
  v8 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v9 = *(v8 + 9);
  if (*(v8 + 9))
  {
    v10 = 0;
    v11 = v6 + 8;
    v12 = v8 + 10;
    do
    {
      v4 = *&v11[8 * v10] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v4 & 0x8000000000000000) == 0)
      {
        v13 = v12[v10];
        if (v12[v10] <= 3u)
        {
          if (v12[v10] <= 1u)
          {
            if (!v12[v10])
            {
              v5 = result[83];
              while (v5 > v4)
              {
                v14 = *(result[85] + 8 * v4);
                v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_50;
                }
              }

              goto LABEL_57;
            }

            v5 = result[88];
            while (v5 > v4)
            {
              v14 = *(result[90] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_69;
          }

          if (v13 == 2)
          {
            v5 = result[93];
            while (v5 > v4)
            {
              v14 = *(result[95] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_65;
          }

          if (v13 == 3)
          {
            v5 = result[98];
            while (v5 > v4)
            {
              v14 = *(result[100] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_61;
          }

          goto LABEL_93;
        }

        if (v12[v10] <= 5u)
        {
          if (v13 == 4)
          {
            v5 = result[103];
            while (v5 > v4)
            {
              v14 = *(result[105] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_73;
          }

          if (v13 == 5)
          {
            v5 = result[108];
            while (v5 > v4)
            {
              v14 = *(result[110] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_81;
          }

          goto LABEL_93;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            v5 = result[118];
            while (v5 > v4)
            {
              v14 = *(result[120] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v16, &v46, &v55, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_57:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v17 = MEMORY[0x1E69E9C10];
            v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v18)
            {
              v19 = 3;
            }

            else
            {
              v19 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v19, &v46, &v55, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_61:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v20 = MEMORY[0x1E69E9C10];
            v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v21)
            {
              v22 = 3;
            }

            else
            {
              v22 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v22, &v46, &v55, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_65:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v23 = MEMORY[0x1E69E9C10];
            v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v24)
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v25, &v46, &v55, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_69:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v26 = MEMORY[0x1E69E9C10];
            v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v27)
            {
              v28 = 3;
            }

            else
            {
              v28 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v28, &v46, &v55, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_73:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v29 = MEMORY[0x1E69E9C10];
            v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v30)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v31, &v46, &v55, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_77:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v32 = MEMORY[0x1E69E9C10];
            v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v33)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v34, &v46, &v55, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_81:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v37, &v46, &v55, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_85:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v3 = MEMORY[0x1E69E9C10];
            v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v38)
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v39, &v46, &v55, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
            goto LABEL_89;
          }

LABEL_93:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13);
          _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v43);
          __break(1u);
        }

        v5 = result[113];
        do
        {
          if (v5 <= v4)
          {
            goto LABEL_77;
          }

          v14 = *(result[115] + 8 * v4);
          v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_50:
        *(a3 + v10 + 1) = v14;
      }

      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

void *re::EvaluationTree::getRegister<re::Matrix4x4<float>>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  v60 = *MEMORY[0x1E69E9840];
  v4 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if (a2 - 0x7FFFFFFFFFFFFFFFLL >= 0)
  {
    v5 = result[103];
    do
    {
      if (v5 <= v4)
      {
        goto LABEL_85;
      }

      v3 = *(result[105] + 8 * v4);
      v4 = v3 - 0x7FFFFFFFFFFFFFFFLL;
    }

    while ((v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0);
  }

  v5 = result[230];
  if (v5 <= v3)
  {
LABEL_89:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = v3;
    v53 = 2048;
    v54 = v5;
    _os_log_send_and_compose_impl(v42, &v46, &v55, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  v6 = (result[232] + 32 * v3);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
  v8 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v9 = *(v8 + 9);
  if (*(v8 + 9))
  {
    v10 = 0;
    v11 = v6 + 8;
    v12 = v8 + 10;
    do
    {
      v4 = *&v11[8 * v10] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v4 & 0x8000000000000000) == 0)
      {
        v13 = v12[v10];
        if (v12[v10] <= 3u)
        {
          if (v12[v10] <= 1u)
          {
            if (!v12[v10])
            {
              v5 = result[83];
              while (v5 > v4)
              {
                v14 = *(result[85] + 8 * v4);
                v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_50;
                }
              }

              goto LABEL_57;
            }

            v5 = result[88];
            while (v5 > v4)
            {
              v14 = *(result[90] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_69;
          }

          if (v13 == 2)
          {
            v5 = result[93];
            while (v5 > v4)
            {
              v14 = *(result[95] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_65;
          }

          if (v13 == 3)
          {
            v5 = result[98];
            while (v5 > v4)
            {
              v14 = *(result[100] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_61;
          }

          goto LABEL_93;
        }

        if (v12[v10] <= 5u)
        {
          if (v13 == 4)
          {
            v5 = result[103];
            while (v5 > v4)
            {
              v14 = *(result[105] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_73;
          }

          if (v13 == 5)
          {
            v5 = result[108];
            while (v5 > v4)
            {
              v14 = *(result[110] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_81;
          }

          goto LABEL_93;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            v5 = result[118];
            while (v5 > v4)
            {
              v14 = *(result[120] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v16, &v46, &v55, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_57:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v17 = MEMORY[0x1E69E9C10];
            v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v18)
            {
              v19 = 3;
            }

            else
            {
              v19 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v19, &v46, &v55, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_61:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v20 = MEMORY[0x1E69E9C10];
            v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v21)
            {
              v22 = 3;
            }

            else
            {
              v22 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v22, &v46, &v55, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_65:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v23 = MEMORY[0x1E69E9C10];
            v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v24)
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v25, &v46, &v55, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_69:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v26 = MEMORY[0x1E69E9C10];
            v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v27)
            {
              v28 = 3;
            }

            else
            {
              v28 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v28, &v46, &v55, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_73:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v29 = MEMORY[0x1E69E9C10];
            v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v30)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v31, &v46, &v55, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_77:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v32 = MEMORY[0x1E69E9C10];
            v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v33)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v34, &v46, &v55, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_81:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v37, &v46, &v55, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_85:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v3 = MEMORY[0x1E69E9C10];
            v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v38)
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v39, &v46, &v55, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
            goto LABEL_89;
          }

LABEL_93:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13);
          _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v43);
          __break(1u);
        }

        v5 = result[113];
        do
        {
          if (v5 <= v4)
          {
            goto LABEL_77;
          }

          v14 = *(result[115] + 8 * v4);
          v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_50:
        *(a3 + v10 + 1) = v14;
      }

      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

void *re::EvaluationTree::getRegister<re::Quaternion<float>>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  v60 = *MEMORY[0x1E69E9840];
  v4 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if (a2 - 0x7FFFFFFFFFFFFFFFLL >= 0)
  {
    v5 = result[108];
    do
    {
      if (v5 <= v4)
      {
        goto LABEL_85;
      }

      v3 = *(result[110] + 8 * v4);
      v4 = v3 - 0x7FFFFFFFFFFFFFFFLL;
    }

    while ((v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0);
  }

  v5 = result[235];
  if (v5 <= v3)
  {
LABEL_89:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = v3;
    v53 = 2048;
    v54 = v5;
    _os_log_send_and_compose_impl(v42, &v46, &v55, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  v6 = (result[237] + 32 * v3);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
  v8 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v9 = *(v8 + 9);
  if (*(v8 + 9))
  {
    v10 = 0;
    v11 = v6 + 8;
    v12 = v8 + 10;
    do
    {
      v4 = *&v11[8 * v10] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v4 & 0x8000000000000000) == 0)
      {
        v13 = v12[v10];
        if (v12[v10] <= 3u)
        {
          if (v12[v10] <= 1u)
          {
            if (!v12[v10])
            {
              v5 = result[83];
              while (v5 > v4)
              {
                v14 = *(result[85] + 8 * v4);
                v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_50;
                }
              }

              goto LABEL_57;
            }

            v5 = result[88];
            while (v5 > v4)
            {
              v14 = *(result[90] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_69;
          }

          if (v13 == 2)
          {
            v5 = result[93];
            while (v5 > v4)
            {
              v14 = *(result[95] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_65;
          }

          if (v13 == 3)
          {
            v5 = result[98];
            while (v5 > v4)
            {
              v14 = *(result[100] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_61;
          }

          goto LABEL_93;
        }

        if (v12[v10] <= 5u)
        {
          if (v13 == 4)
          {
            v5 = result[103];
            while (v5 > v4)
            {
              v14 = *(result[105] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_73;
          }

          if (v13 == 5)
          {
            v5 = result[108];
            while (v5 > v4)
            {
              v14 = *(result[110] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_81;
          }

          goto LABEL_93;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            v5 = result[118];
            while (v5 > v4)
            {
              v14 = *(result[120] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v16, &v46, &v55, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_57:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v17 = MEMORY[0x1E69E9C10];
            v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v18)
            {
              v19 = 3;
            }

            else
            {
              v19 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v19, &v46, &v55, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_61:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v20 = MEMORY[0x1E69E9C10];
            v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v21)
            {
              v22 = 3;
            }

            else
            {
              v22 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v22, &v46, &v55, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_65:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v23 = MEMORY[0x1E69E9C10];
            v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v24)
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v25, &v46, &v55, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_69:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v26 = MEMORY[0x1E69E9C10];
            v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v27)
            {
              v28 = 3;
            }

            else
            {
              v28 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v28, &v46, &v55, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_73:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v29 = MEMORY[0x1E69E9C10];
            v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v30)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v31, &v46, &v55, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_77:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v32 = MEMORY[0x1E69E9C10];
            v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v33)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v34, &v46, &v55, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_81:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v37, &v46, &v55, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_85:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v3 = MEMORY[0x1E69E9C10];
            v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v38)
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v39, &v46, &v55, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
            goto LABEL_89;
          }

LABEL_93:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13);
          _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v43);
          __break(1u);
        }

        v5 = result[113];
        do
        {
          if (v5 <= v4)
          {
            goto LABEL_77;
          }

          v14 = *(result[115] + 8 * v4);
          v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_50:
        *(a3 + v10 + 1) = v14;
      }

      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

void *re::EvaluationTree::getRegister<re::Vector2<float>>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  v60 = *MEMORY[0x1E69E9840];
  v4 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if (a2 - 0x7FFFFFFFFFFFFFFFLL >= 0)
  {
    v5 = result[113];
    do
    {
      if (v5 <= v4)
      {
        goto LABEL_85;
      }

      v3 = *(result[115] + 8 * v4);
      v4 = v3 - 0x7FFFFFFFFFFFFFFFLL;
    }

    while ((v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0);
  }

  v5 = result[240];
  if (v5 <= v3)
  {
LABEL_89:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = v3;
    v53 = 2048;
    v54 = v5;
    _os_log_send_and_compose_impl(v42, &v46, &v55, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  v6 = (result[242] + 32 * v3);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
  v8 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v9 = *(v8 + 9);
  if (*(v8 + 9))
  {
    v10 = 0;
    v11 = v6 + 8;
    v12 = v8 + 10;
    do
    {
      v4 = *&v11[8 * v10] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v4 & 0x8000000000000000) == 0)
      {
        v13 = v12[v10];
        if (v12[v10] <= 3u)
        {
          if (v12[v10] <= 1u)
          {
            if (!v12[v10])
            {
              v5 = result[83];
              while (v5 > v4)
              {
                v14 = *(result[85] + 8 * v4);
                v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_50;
                }
              }

              goto LABEL_57;
            }

            v5 = result[88];
            while (v5 > v4)
            {
              v14 = *(result[90] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_69;
          }

          if (v13 == 2)
          {
            v5 = result[93];
            while (v5 > v4)
            {
              v14 = *(result[95] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_65;
          }

          if (v13 == 3)
          {
            v5 = result[98];
            while (v5 > v4)
            {
              v14 = *(result[100] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_61;
          }

          goto LABEL_93;
        }

        if (v12[v10] <= 5u)
        {
          if (v13 == 4)
          {
            v5 = result[103];
            while (v5 > v4)
            {
              v14 = *(result[105] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_73;
          }

          if (v13 == 5)
          {
            v5 = result[108];
            while (v5 > v4)
            {
              v14 = *(result[110] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_81;
          }

          goto LABEL_93;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            v5 = result[118];
            while (v5 > v4)
            {
              v14 = *(result[120] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v16, &v46, &v55, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_57:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v17 = MEMORY[0x1E69E9C10];
            v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v18)
            {
              v19 = 3;
            }

            else
            {
              v19 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v19, &v46, &v55, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_61:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v20 = MEMORY[0x1E69E9C10];
            v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v21)
            {
              v22 = 3;
            }

            else
            {
              v22 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v22, &v46, &v55, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_65:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v23 = MEMORY[0x1E69E9C10];
            v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v24)
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v25, &v46, &v55, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_69:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v26 = MEMORY[0x1E69E9C10];
            v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v27)
            {
              v28 = 3;
            }

            else
            {
              v28 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v28, &v46, &v55, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_73:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v29 = MEMORY[0x1E69E9C10];
            v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v30)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v31, &v46, &v55, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_77:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v32 = MEMORY[0x1E69E9C10];
            v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v33)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v34, &v46, &v55, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_81:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v37, &v46, &v55, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_85:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v3 = MEMORY[0x1E69E9C10];
            v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v38)
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v39, &v46, &v55, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
            goto LABEL_89;
          }

LABEL_93:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13);
          _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v43);
          __break(1u);
        }

        v5 = result[113];
        do
        {
          if (v5 <= v4)
          {
            goto LABEL_77;
          }

          v14 = *(result[115] + 8 * v4);
          v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_50:
        *(a3 + v10 + 1) = v14;
      }

      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

void *re::EvaluationTree::getRegister<re::Vector3<float>>(void *result, uint64_t a2, _OWORD *a3)
{
  v3 = a2;
  v60 = *MEMORY[0x1E69E9840];
  v4 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if (a2 - 0x7FFFFFFFFFFFFFFFLL >= 0)
  {
    v5 = result[118];
    do
    {
      if (v5 <= v4)
      {
        goto LABEL_85;
      }

      v3 = *(result[120] + 8 * v4);
      v4 = v3 - 0x7FFFFFFFFFFFFFFFLL;
    }

    while ((v3 - 0x7FFFFFFFFFFFFFFFLL) >= 0);
  }

  v5 = result[245];
  if (v5 <= v3)
  {
LABEL_89:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = v3;
    v53 = 2048;
    v54 = v5;
    _os_log_send_and_compose_impl(v42, &v46, &v55, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  v6 = (result[247] + 32 * v3);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
  v8 = &(&re::kEvaluationCommandDescriptions)[2 * *a3];
  v9 = *(v8 + 9);
  if (*(v8 + 9))
  {
    v10 = 0;
    v11 = v6 + 8;
    v12 = v8 + 10;
    do
    {
      v4 = *&v11[8 * v10] - 0x7FFFFFFFFFFFFFFFLL;
      if ((v4 & 0x8000000000000000) == 0)
      {
        v13 = v12[v10];
        if (v12[v10] <= 3u)
        {
          if (v12[v10] <= 1u)
          {
            if (!v12[v10])
            {
              v5 = result[83];
              while (v5 > v4)
              {
                v14 = *(result[85] + 8 * v4);
                v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
                if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
                {
                  goto LABEL_50;
                }
              }

              goto LABEL_57;
            }

            v5 = result[88];
            while (v5 > v4)
            {
              v14 = *(result[90] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_69;
          }

          if (v13 == 2)
          {
            v5 = result[93];
            while (v5 > v4)
            {
              v14 = *(result[95] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_65;
          }

          if (v13 == 3)
          {
            v5 = result[98];
            while (v5 > v4)
            {
              v14 = *(result[100] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_61;
          }

          goto LABEL_93;
        }

        if (v12[v10] <= 5u)
        {
          if (v13 == 4)
          {
            v5 = result[103];
            while (v5 > v4)
            {
              v14 = *(result[105] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_73;
          }

          if (v13 == 5)
          {
            v5 = result[108];
            while (v5 > v4)
            {
              v14 = *(result[110] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            goto LABEL_81;
          }

          goto LABEL_93;
        }

        if (v13 != 6)
        {
          if (v13 == 7)
          {
            v5 = result[118];
            while (v5 > v4)
            {
              v14 = *(result[120] + 8 * v4);
              v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
              if (v14 - 0x7FFFFFFFFFFFFFFFLL < 0)
              {
                goto LABEL_50;
              }
            }

            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v16, &v46, &v55, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_57:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v17 = MEMORY[0x1E69E9C10];
            v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v18)
            {
              v19 = 3;
            }

            else
            {
              v19 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v19, &v46, &v55, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_61:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v20 = MEMORY[0x1E69E9C10];
            v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v21)
            {
              v22 = 3;
            }

            else
            {
              v22 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v22, &v46, &v55, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_65:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v23 = MEMORY[0x1E69E9C10];
            v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v24)
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v25, &v46, &v55, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_69:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v26 = MEMORY[0x1E69E9C10];
            v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v27)
            {
              v28 = 3;
            }

            else
            {
              v28 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v28, &v46, &v55, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_73:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v29 = MEMORY[0x1E69E9C10];
            v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v30)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v31, &v46, &v55, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_77:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v32 = MEMORY[0x1E69E9C10];
            v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v33)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v34, &v46, &v55, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_81:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v37, &v46, &v55, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_85:
            v46 = 0;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = 0u;
            v3 = MEMORY[0x1E69E9C10];
            v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v47 = 136315906;
            v48 = "operator[]";
            v49 = 1024;
            if (v38)
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v50 = 797;
            v51 = 2048;
            v52 = v4;
            v53 = 2048;
            v54 = v5;
            _os_log_send_and_compose_impl(v39, &v46, &v55, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
            goto LABEL_89;
          }

LABEL_93:
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "getRegister", 866, v13);
          _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v43);
          __break(1u);
        }

        v5 = result[113];
        do
        {
          if (v5 <= v4)
          {
            goto LABEL_77;
          }

          v14 = *(result[115] + 8 * v4);
          v4 = v14 - 0x7FFFFFFFFFFFFFFFLL;
        }

        while (v14 - 0x7FFFFFFFFFFFFFFFLL >= 0);
LABEL_50:
        *(a3 + v10 + 1) = v14;
      }

      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

void re::FixedArray<BOOL>::init<>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    v5 = (*(*a2 + 32))(a2, a3, 1);
    a1[2] = v5;
    if (v5)
    {
      v7 = v5;
      v8 = a3 - 1;
      if (v8)
      {
        bzero(v5, v8);
        v7 += v8;
      }

      *v7 = 0;
    }

    else
    {
      re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }
  }
}

uint64_t re::FullBodyIKSolver::FullBodyIKSolver(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 16) = 0;
  v6 = (a1 + 16);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 80) = 0u;
  v7 = (a1 + 80);
  v12[0] = &unk_1F5CB0660;
  v12[3] = v12;
  v13 = CoreIKGenericSolverCreate();
  v14[3] = v14;
  v14[0] = &unk_1F5CB0660;
  std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::operator=[abi:nn200100](v6, &v13);
  std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::~unique_ptr[abi:nn200100](&v13);
  std::__function::__value_func<void ()(CoreIKGenericSolver *)>::~__value_func[abi:nn200100](v12);
  re::StringID::operator=(a1, a3);
  v8 = MEMORY[0x1E6903C40](a2);
  v9 = MEMORY[0x1E6903720](a2);
  return a1;
}

uint64_t *std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(CoreIKGenericSolver *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(CoreIKGenericSolver *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

BOOL re::FullBodyIKSolver::solve(void *a1, re::RigDataValue *this, re::RigDataValue **a3)
{
  v4 = this;
  v51 = *MEMORY[0x1E69E9840];
  v6 = *(this + 32);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      *v38 = 0x3F8000003F800000;
      *&v38[8] = 1065353216;
      *&v38[16] = 0;
      *&v38[24] = 0x3F80000000000000;
      *&v38[32] = 0;
      *&v38[40] = 0;
      v9 = re::RigDataValue::attributeValue(v4, v8);
      re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(v9, v38);
      v10 = a1[14];
      if (v10 <= v8)
      {
        break;
      }

      v12 = *&v38[16];
      v11 = *&v38[24];
      v13 = *&v38[40];
      v14 = (a1[15] + v7);
      *v14 = *&v38[32];
      v14[1] = v13;
      v14[2] = v12;
      v14[3] = v11;
      ++v8;
      v7 += 32;
      if (v6 == v8)
      {
        goto LABEL_5;
      }
    }

    v37 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v46 = 0u;
    v47 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v39 = 136315906;
    *&v39[4] = "operator[]";
    v40 = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v41 = 468;
    v42 = 2048;
    v43 = v8;
    v44 = 2048;
    v45 = v10;
    _os_log_send_and_compose_impl(v29, &v37, &v46, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v36);
    _os_crash_msg();
    __break(1u);
LABEL_25:
    *v39 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v46 = 0u;
    v47 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v38 = 136315906;
    *&v38[4] = "operator[]";
    *&v38[12] = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    *&v38[14] = 468;
    *&v38[18] = 2048;
    *&v38[20] = v8;
    *&v38[28] = 2048;
    *&v38[30] = v10;
    _os_log_send_and_compose_impl(v32, v39, &v46, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v38, 38, v36, v37);
    _os_crash_msg();
    __break(1u);
LABEL_29:
    v37 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v46 = 0u;
    v47 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v39 = 136315906;
    *&v39[4] = "operator[]";
    v40 = 1024;
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v41 = 476;
    v42 = 2048;
    v43 = v4;
    v44 = 2048;
    v45 = v10;
    _os_log_send_and_compose_impl(v35, &v37, &v46, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v36);
    _os_crash_msg();
    __break(1u);
  }

LABEL_5:
  v15 = a1[2];
  if (a1[8])
  {
    v16 = 0;
    v8 = 0;
    do
    {
      MEMORY[0x1E6903A00](v15, v8);
      if (CoreIKGenericConstraintHasLookAtEnabled())
      {
        v10 = a1[11];
        if (v10 <= v8)
        {
          goto LABEL_25;
        }

        CoreIKGenericConstraintSetLookAtTarget();
      }

      CoreIKGenericConstraintSetTargetTranslation();
      CoreIKGenericConstraintSetTargetOrientation();
      ++v8;
      v16 += 48;
    }

    while (v8 < a1[8]);
  }

  v17 = CoreIKGenericSolverSolve();
  if (v17 == 1)
  {
    v22 = *(v4 + 32);
    if (v22)
    {
      for (i = 0; i != v22; ++i)
      {
        *&v46 = 0x3F8000003F800000;
        *(&v46 + 1) = 1065353216;
        *&v47 = 0;
        *(&v47 + 1) = 0x3F80000000000000;
        v48 = 0uLL;
        v24 = re::RigDataValue::attributeValue(v4, i);
        re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(v24, &v46);
        v25 = re::RigDataValue::attributeValue(a3, i);
        re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v25, &v46);
      }
    }
  }

  else
  {
    v18 = a3[32];
    if (v18)
    {
      v19 = 0;
      v4 = 0;
      while (1)
      {
        v10 = a1[14];
        if (v10 <= v4)
        {
          break;
        }

        v20 = (a1[15] + v19);
        *v38 = 0x3F8000003F800000;
        *&v38[8] = 1065353216;
        *&v38[16] = v20[1];
        *&v38[32] = *v20;
        v21 = re::RigDataValue::attributeValue(a3, v4);
        re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v21, v38);
        v4 = (v4 + 1);
        v19 += 32;
        if (v18 == v4)
        {
          return v17 != 1;
        }
      }

      goto LABEL_29;
    }
  }

  return v17 != 1;
}

uint64_t re::FullBodyIKSolver::taskName(re::FullBodyIKSolver *this)
{
  v1 = MEMORY[0x1E6903A00](*(this + 2));
  v2 = MEMORY[0x1E69038E0](v1);

  return MEMORY[0x1EEDF9208](v2);
}

uint64_t re::FullBodyIKSolver::taskTargetName(re::FullBodyIKSolver *this)
{
  v1 = MEMORY[0x1E6903A00](*(this + 2));
  v2 = MEMORY[0x1E69038E0](v1);

  return MEMORY[0x1EEDF9200](v2);
}

void re::FullBodyIKSolver::taskPositionEnabled(re::FullBodyIKSolver *this)
{
  v1 = MEMORY[0x1E6903A00](*(this + 2));
  MEMORY[0x1E69038E0](v1);

  JUMPOUT(0x1E6903B30);
}

void re::FullBodyIKSolver::taskRotationEnabled(re::FullBodyIKSolver *this)
{
  v1 = MEMORY[0x1E6903A00](*(this + 2));
  MEMORY[0x1E69038E0](v1);

  JUMPOUT(0x1E6903B10);
}

__n128 re::FullBodyIKSolver::taskLookAtTarget(re::FullBodyIKSolver *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 11);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 476;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 12) + 16 * a2);
}

uint64_t re::FullBodyIKSolver::setTaskLookAtTarget(uint64_t result, unint64_t a2, __n128 a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(result + 88);
  if (v4 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 468;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v4;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  *(*(result + 96) + 16 * a2) = a3;
  return result;
}

uint64_t re::FullBodyIKSolver::setTaskTargetPosition(uint64_t result, unint64_t a2, __n128 a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(result + 64);
  if (v4 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 468;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v4;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  *(*(result + 72) + 48 * a2 + 32) = a3;
  return result;
}

__n128 re::FullBodyIKSolver::taskTargetRotation(re::FullBodyIKSolver *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 8);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 476;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 9) + 48 * a2 + 16);
}

uint64_t re::FullBodyIKSolver::setTaskTargetRotation(uint64_t this, unint64_t a2, simd_quatf a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(this + 64);
  if (v4 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 468;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v4;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 72) + 48 * a2 + 16) = a3;
  return this;
}

uint64_t re::FullBodyIKSolver::setTaskTargetParameters(uint64_t a1, unint64_t a2, __n128 a3, float a4, __n128 a5, float a6)
{
  re::FullBodyIKSolver::setTaskTargetPosition(a1, a2, a3);
  MEMORY[0x1E6903A00](*(a1 + 16), a2);
  CoreIKGenericConstraintSetTranslationTargetBlendWeight();
  v8 = a5;
  re::FullBodyIKSolver::setTaskTargetRotation(a1, a2, v8);
  MEMORY[0x1E6903A00](*(a1 + 16), a2);

  return CoreIKGenericConstraintSetOrientationTargetBlendWeight();
}

void *re::allocInfo_FullBodyIKSolver(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1906A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1906A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1906B0, "FullBodyIKSolver");
    __cxa_guard_release(&qword_1EE1906A8);
  }

  return &unk_1EE1906B0;
}

void re::initInfo_FullBodyIKSolver(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0xE798B206CD368F8CLL;
  v12[1] = "FullBodyIKSolver";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1906A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1906A0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "m_name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    _MergedGlobals_17 = v10;
    __cxa_guard_release(&qword_1EE1906A0);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &_MergedGlobals_17;
  *(this + 9) = re::internal::defaultConstruct<re::FullBodyIKSolver>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FullBodyIKSolver>;
  *(this + 13) = re::internal::defaultConstructV2<re::FullBodyIKSolver>;
  *(this + 14) = re::internal::defaultDestructV2<re::FullBodyIKSolver>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

double re::internal::defaultConstruct<re::FullBodyIKSolver>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  return result;
}

void re::internal::defaultDestruct<re::FullBodyIKSolver>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 10);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 7);
  std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::~unique_ptr[abi:nn200100](a3 + 2);

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::FullBodyIKSolver>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

void re::internal::defaultDestructV2<re::FullBodyIKSolver>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 7);
  std::unique_ptr<CoreIKGenericSolver,std::function<void ()(CoreIKGenericSolver*)>>::~unique_ptr[abi:nn200100](a1 + 2);

  re::StringID::destroyString(a1);
}

uint64_t std::__function::__func<re::FullBodyIKSolver::FullBodyIKSolver(CoreIKRig *,re::StringID const&)::$_0,std::allocator<re::FullBodyIKSolver::FullBodyIKSolver(CoreIKRig *,re::StringID const&)::$_0>,void ()(CoreIKGenericSolver *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(CoreIKGenericSolver *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(CoreIKGenericSolver *)>::operator=[abi:nn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(CoreIKGenericSolver *)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *re::FixedArray<re::Pose<float>>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 32 * a3, 16);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      result[1] = 0;
      result[2] = 0;
      result[3] = 0x3F80000000000000;
      result += 4;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x3F80000000000000;
  return result;
}

void _ZN2re10FixedArrayIDv3_fE4initIJEEEvPNS_9AllocatorEmDpOT_(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 16 * a3;
  v6 = (*(*a2 + 32))(a2, 16 * a3, 16);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 16);
    v8 = (v8 + v5 - 16);
  }

  *v8 = 0u;
}

double re::TimelineClip::totalDuration(re::TimelineClip *this)
{
  re::TimelineClip::defaultDuration(this);
  if (*(this + 136) == 1)
  {
    v2 = *(this + 18);
  }

  return *(this + 16) + v2 / fabsf(*(this + 38));
}

uint64_t re::TimelineClip::defaultDuration(re::TimelineClip *this)
{
  result = dyld_program_sdk_at_least();
  if (!result || !*(this + 156))
  {
    result = *(this + 9);
    if (result)
    {
      return (*(*result + 40))(result);
    }
  }

  return result;
}

float re::TimelineClip::timelineDesc@<S0>(re::TimelineClip *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 9);
  if (v4)
  {
    v5 = 0.0;
    if (*(this + 80) == 1)
    {
      v5 = *(this + 11);
    }

    (*(*v4 + 40))(v4);
    if (*(this + 96) == 1)
    {
      v7 = *(this + 13);
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  if (*(this + 136) != 1 || (v8 = *(this + 18), v8 == 0.0))
  {
    re::TimelineClip::defaultDuration(this);
  }

  v9 = v8;
  v10 = *(this + 16);
  *a2 = v10;
  *(a2 + 4) = v9;
  v11 = *(this + 38);
  if (*(this + 120))
  {
    v11 = -v11;
  }

  v12 = v5;
  *(a2 + 8) = v11;
  *(a2 + 12) = v12;
  result = v7;
  v14 = *(this + 14);
  *(a2 + 16) = result;
  *(a2 + 20) = v14;
  *(a2 + 24) = *(this + 156);
  *(a2 + 25) = *(this + 16);
  return result;
}

void re::TimelineClip::~TimelineClip(re::TimelineClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TimelineClip::debugLogData(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v53, a2);
    re::Timeline::debugLogData(a1, v53);
    v5 = *&v53[0];
    if (*&v53[0])
    {
      if (BYTE8(v53[0]))
      {
        v5 = (*(**&v53[0] + 40))();
      }

      memset(v53, 0, sizeof(v53));
    }

    if (*(a1 + 80) == 1)
    {
      v6 = re::animationLogObjects(v5);
      v5 = re::AnimationLogObjects::loggingEnabled(v6);
      if (v5)
      {
        v39 = *re::animationLogObjects(v5);
        v5 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
        if (v5)
        {
          if (*(a2 + 8))
          {
            v40 = *(a2 + 16);
          }

          else
          {
            v40 = a2 + 9;
          }

          v49 = *(a1 + 88);
          *buf = 136315394;
          v55 = v40;
          v56 = 2048;
          v57 = v49;
          _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "ANIM: %sclipStart: %f\n", buf, 0x16u);
        }
      }
    }

    if (*(a1 + 96) == 1)
    {
      v7 = re::animationLogObjects(v5);
      v5 = re::AnimationLogObjects::loggingEnabled(v7);
      if (v5)
      {
        v41 = *re::animationLogObjects(v5);
        v5 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
        if (v5)
        {
          if (*(a2 + 8))
          {
            v42 = *(a2 + 16);
          }

          else
          {
            v42 = a2 + 9;
          }

          v50 = *(a1 + 104);
          *buf = 136315394;
          v55 = v42;
          v56 = 2048;
          v57 = v50;
          _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "ANIM: %sclipEnd: %f\n", buf, 0x16u);
        }
      }
    }

    v8 = re::animationLogObjects(v5);
    v9 = re::AnimationLogObjects::loggingEnabled(v8);
    if (v9)
    {
      v31 = *re::animationLogObjects(v9);
      v9 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (*(a2 + 8))
        {
          v32 = *(a2 + 16);
        }

        else
        {
          v32 = a2 + 9;
        }

        v45 = *(a1 + 112);
        *buf = 136315394;
        v55 = v32;
        v56 = 2048;
        v57 = v45;
        _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "ANIM: %sclipOffset: %f\n", buf, 0x16u);
      }
    }

    v10 = re::animationLogObjects(v9);
    v11 = re::AnimationLogObjects::loggingEnabled(v10);
    if (v11)
    {
      v33 = *re::animationLogObjects(v11);
      v11 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (*(a2 + 8))
        {
          v34 = *(a2 + 16);
        }

        else
        {
          v34 = a2 + 9;
        }

        *&v46 = COERCE_DOUBLE("false");
        if (*(a1 + 120))
        {
          *&v46 = COERCE_DOUBLE("true");
        }

        *buf = 136315394;
        v55 = v34;
        v56 = 2080;
        v57 = *&v46;
        _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "ANIM: %sclipReversed: %s\n", buf, 0x16u);
      }
    }

    v12 = re::animationLogObjects(v11);
    v13 = re::AnimationLogObjects::loggingEnabled(v12);
    if (v13)
    {
      v35 = *re::animationLogObjects(v13);
      v13 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (*(a2 + 8))
        {
          v36 = *(a2 + 16);
        }

        else
        {
          v36 = a2 + 9;
        }

        v47 = *(a1 + 128);
        *buf = 136315394;
        v55 = v36;
        v56 = 2048;
        v57 = v47;
        _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "ANIM: %sdelay: %f\n", buf, 0x16u);
      }
    }

    if (*(a1 + 136) == 1)
    {
      v14 = re::animationLogObjects(v13);
      v13 = re::AnimationLogObjects::loggingEnabled(v14);
      if (v13)
      {
        v43 = *re::animationLogObjects(v13);
        v13 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (*(a2 + 8))
          {
            v44 = *(a2 + 16);
          }

          else
          {
            v44 = a2 + 9;
          }

          v51 = *(a1 + 144);
          *buf = 136315394;
          v55 = v44;
          v56 = 2048;
          v57 = v51;
          _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, "ANIM: %sduration: %f\n", buf, 0x16u);
        }
      }
    }

    v15 = re::animationLogObjects(v13);
    v16 = re::AnimationLogObjects::loggingEnabled(v15);
    if (v16)
    {
      v37 = *re::animationLogObjects(v16);
      v16 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (*(a2 + 8))
        {
          v38 = *(a2 + 16);
        }

        else
        {
          v38 = a2 + 9;
        }

        v48 = *(a1 + 152);
        *buf = 136315394;
        v55 = v38;
        v56 = 2048;
        v57 = v48;
        _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "ANIM: %sspeed: %f\n", buf, 0x16u);
      }
    }

    v17 = *(a1 + 156);
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v28 = re::animationLogObjects(v16);
        v29 = re::AnimationLogObjects::loggingEnabled(v28);
        if (!v29)
        {
          return;
        }

        v20 = *re::animationLogObjects(v29);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        if (*(a2 + 8))
        {
          v30 = *(a2 + 16);
        }

        else
        {
          v30 = a2 + 9;
        }

        *buf = 136315138;
        v55 = v30;
        v52 = "ANIM: %sloopBehavior: RepeatCumulative\n";
      }

      else
      {
        if (v17 != 3)
        {
          return;
        }

        v22 = re::animationLogObjects(v16);
        v23 = re::AnimationLogObjects::loggingEnabled(v22);
        if (!v23)
        {
          return;
        }

        v20 = *re::animationLogObjects(v23);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        if (*(a2 + 8))
        {
          v24 = *(a2 + 16);
        }

        else
        {
          v24 = a2 + 9;
        }

        *buf = 136315138;
        v55 = v24;
        v52 = "ANIM: %sloopBehavior: AutoReverse\n";
      }
    }

    else if (*(a1 + 156))
    {
      if (v17 != 1)
      {
        return;
      }

      v18 = re::animationLogObjects(v16);
      v19 = re::AnimationLogObjects::loggingEnabled(v18);
      if (!v19)
      {
        return;
      }

      v20 = *re::animationLogObjects(v19);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      if (*(a2 + 8))
      {
        v21 = *(a2 + 16);
      }

      else
      {
        v21 = a2 + 9;
      }

      *buf = 136315138;
      v55 = v21;
      v52 = "ANIM: %sloopBehavior: Repeat\n";
    }

    else
    {
      v25 = re::animationLogObjects(v16);
      v26 = re::AnimationLogObjects::loggingEnabled(v25);
      if (!v26)
      {
        return;
      }

      v20 = *re::animationLogObjects(v26);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      if (*(a2 + 8))
      {
        v27 = *(a2 + 16);
      }

      else
      {
        v27 = a2 + 9;
      }

      *buf = 136315138;
      v55 = v27;
      v52 = "ANIM: %sloopBehavior: Constant\n";
    }

    _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, v52, buf, 0xCu);
  }
}

ArcSharedObject *re::BlendShapeWeightsDefinition::BlendShapeWeightsDefinition(ArcSharedObject *a1, uint64_t a2, const StringID **a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v6 + 16) = a2;
  *v6 = &unk_1F5CB0788;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 24) = 0u;
  v7 = (v6 + 24);
  *(v6 + 68) = 0u;
  *(v6 + 84) = 0x7FFFFFFFLL;
  *(v6 + 96) = 0;
  re::FixedArray<re::StringID>::init<>((v6 + 24), a2, a3[1]);
  re::FixedArray<re::StringID>::operator=(v7, a3);
  v8 = a3[1];
  if (v8)
  {
    v9 = *a3;
    v10 = 16 * v8;
    do
    {
      v11 = re::StringID::StringID(v15, v9);
      v12 = v15[0];
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v15[0] >> 31) ^ (v15[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v15[0] >> 31) ^ (v15[0] >> 1))) >> 27));
      *(a1 + 12) ^= (*(a1 + 12) << 6) + (*(a1 + 12) >> 2) - 0x61C8864680B583E9 + (v13 ^ (v13 >> 31));
      if (v12)
      {
        if (v15[0])
        {
        }
      }

      ++v9;
      v10 -= 16;
    }

    while (v10);
  }

  re::BlendShapeWeightsDefinition::buildWeightNameMap(a1);
  return a1;
}

void re::BlendShapeWeightsDefinition::buildWeightNameMap(re::BlendShapeWeightsDefinition *this)
{
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(this + 48, *(this + 3), 2 * *(this + 8));
  v8 = 0;
  if (*(this + 4))
  {
    v2 = 0;
    do
    {
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 48, (*(this + 5) + 16 * v2), &v8);
      v2 = v8 + 1;
      v8 = v2;
      v3 = *(this + 4);
    }

    while (v2 < v3);
    v10 = 0;
    if (v3)
    {
      for (i = 0; i < v3; v10 = i)
      {
        v5 = strrchr(*(*(this + 5) + 16 * i + 8), 47);
        if (v5)
        {
          v6 = v5;
          v8 = 0;
          v9 = &str_67;
          v7 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 48, &v8, &v10);
          if (v8)
          {
            if (v8)
            {
            }
          }

          i = v10;
          v3 = *(this + 4);
        }

        ++i;
      }
    }
  }
}

void re::BlendShapeWeights::init(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;

  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1 + 3, v4);
}

void re::BlendShapeWeights::deinit(re::BlendShapeWeights *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this);
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }
}

void re::BlendShapeWeights::reset(uint64_t *a1, uint64_t *a2)
{
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1 + 3, *a2);
  if (a1[1] != *(a1[3] + 32))
  {
    v4 = *a1;
    if (!*a1)
    {
    }

    re::FixedArray<CoreIKTransform>::deinit(a1);
    v5 = *(a1[3] + 32);

    re::FixedArray<int>::init<>(a1, v4, v5);
  }
}

void *re::allocInfo_BlendShapeWeights(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190758, "BlendShapeWeights");
    __cxa_guard_release(&_MergedGlobals_18);
  }

  return &unk_1EE190758;
}

void re::initInfo_BlendShapeWeights(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0x3826001B6619E1D6;
  v12[1] = "BlendShapeWeights";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE190750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190750))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "weights";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE190748 = v10;
    __cxa_guard_release(&qword_1EE190750);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE190748;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeWeights>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeWeights>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeWeights>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeWeights>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<float>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionFixedArray<float>::IntrospectionFixedArray(&re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_float(1, a2);
  if ((re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info, 0);
    qword_1EE186D88 = 0x1800000004;
    dword_1EE186D90 = v8;
    word_1EE186D94 = 0;
    *&xmmword_1EE186D98 = 0;
    *(&xmmword_1EE186D98 + 1) = 0xFFFFFFFFLL;
    qword_1EE186DA8 = v7;
    unk_1EE186DB0 = 0;
    re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info = &unk_1F5CB07D0;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186D98 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::FixedArray<float>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::BlendShapeWeights>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::BlendShapeWeights>(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t *re::AnimationValueTraits<re::BlendShapeWeights>::copy(uint64_t *result, uint64_t *a2)
{
  v4 = result;
  v37 = *MEMORY[0x1E69E9840];
  v5 = result[3];
  v6 = *(v5 + 32);
  v7 = a2[3];
  if (v6 == *(v7 + 32) && *(v5 + 96) == *(v7 + 96))
  {

    return re::FixedArray<float>::operator=(a2, result);
  }

  else if (v6)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v4[3];
      v11 = *(v10 + 32);
      if (v11 <= v9)
      {
        break;
      }

      v12 = *(v10 + 40);
      v2 = a2[3];
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v12 + v8) >> 31) ^ (*(v12 + v8) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v12 + v8) >> 31) ^ (*(v12 + v8) >> 1))) >> 27));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v2 + 48, (v12 + v8), v13 ^ (v13 >> 31), &v32);
      if (HIDWORD(v32) != 0x7FFFFFFF)
      {
        v11 = v4[1];
        if (v11 <= v9)
        {
          goto LABEL_19;
        }

        v11 = *(*(v2 + 64) + 32 * HIDWORD(v32) + 24);
        v2 = a2[1];
        if (v2 <= v11)
        {
          goto LABEL_23;
        }

        *(a2[2] + 4 * v11) = *(v4[2] + 4 * v9);
      }

      ++v9;
      v8 += 16;
      if (v6 == v9)
      {
        return result;
      }
    }

    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v27 = 476;
    v28 = 2048;
    v29 = v9;
    v30 = 2048;
    v31 = v11;
    _os_log_send_and_compose_impl(v15, &v23, &v32, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
LABEL_19:
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v27 = 476;
    v28 = 2048;
    v29 = v9;
    v30 = 2048;
    v31 = v11;
    _os_log_send_and_compose_impl(v18, &v23, &v32, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v27 = 468;
    v28 = 2048;
    v29 = v11;
    v30 = 2048;
    v31 = v2;
    _os_log_send_and_compose_impl(v21, &v23, &v32, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}