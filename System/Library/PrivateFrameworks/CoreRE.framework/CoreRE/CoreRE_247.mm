void re::pathprocessing::Bezier2::removeOverlaps(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6[8] = *MEMORY[0x1E69E9840];
  re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)const::SubBezier::SubBezier(&v5, a1, 0.0, 1.0);
  re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)const::SubBezier::SubBezier(v6, a2, 0.0, 1.0);
  operator new();
}

float32x2_t *re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)const::SubBezier::SubBezier(float32x2_t *a1, __int128 *a2, float a3, float a4)
{
  a1->f32[0] = a3;
  a1->f32[1] = a4;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v5 = *a2;
  a1[7] = a2[1];
  *a1[5].f32 = v5;
  re::pathprocessing::Bezier2::curveBetween(a1 + 5, a3, a4, &v17);
  *a1[2].f32 = v17;
  a1[4] = v18;
  v6 = a1[3];
  v7 = vsub_f32(a1[2], v6);
  v8 = vmul_f32(v7, v7);
  v8.i32[0] = vadd_f32(v8, vdup_lane_s32(v8, 1)).u32[0];
  v9 = vrsqrte_f32(v8.u32[0]);
  v10 = vmul_f32(v9, vrsqrts_f32(v8.u32[0], vmul_f32(v9, v9)));
  v8.i32[0] = vmul_f32(v10, vrsqrts_f32(v8.u32[0], vmul_f32(v10, v10))).u32[0];
  v11 = vsub_f32(a1[4], v6);
  v12 = vmul_f32(v11, v11);
  v13 = vmul_n_f32(v7, *v8.i32);
  v8.i32[0] = vadd_f32(v12, vdup_lane_s32(v12, 1)).u32[0];
  v14 = vrsqrte_f32(v8.u32[0]);
  v15 = vmul_f32(v14, vrsqrts_f32(v8.u32[0], vmul_f32(v14, v14)));
  a1[1].f32[0] = (vaddv_f32(vmul_f32(v13, vmul_n_f32(v11, vmul_f32(v15, vrsqrts_f32(v8.u32[0], vmul_f32(v15, v15))).f32[0]))) * 0.5) + 0.5;
  return a1;
}

void std::vector<re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier,std::allocator<re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v9 = (v3 - *a1) >> 6;
    v10 = v9 + 1;
    if ((v9 + 1) >> 58)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - *a1;
    if (v11 >> 5 > v10)
    {
      v10 = v11 >> 5;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFC0)
    {
      v12 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier>>(v12);
    }

    v13 = (v9 << 6);
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[3];
    v13[2] = a2[2];
    v13[3] = v16;
    *v13 = v14;
    v13[1] = v15;
    v8 = (v9 << 6) + 64;
    v17 = *(a1 + 8) - *a1;
    v18 = v13 - v17;
    memcpy(v13 - v17, *a1, v17);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v3[2] = a2[2];
    v3[3] = v7;
    *v3 = v5;
    v3[1] = v6;
    v8 = (v3 + 4);
  }

  *(a1 + 8) = v8;
}

float32x2_t re::pathprocessing::Bezier2::tangentAt(float32x2_t *a1, int a2, float a3)
{
  isLine = re::pathprocessing::Bezier2::isLine(a1);
  v7 = *a1;
  if (isLine)
  {
    result = vsub_f32(a1[2], v7);
    if (a2)
    {
      return result;
    }
  }

  else
  {
    result = vadd_f32(vmul_n_f32(vsub_f32(a1[1], v7), (1.0 - a3) + (1.0 - a3)), vmul_n_f32(vsub_f32(a1[2], a1[1]), a3 + a3));
    if (a2)
    {
      return result;
    }
  }

  v9 = vmul_f32(result, result);
  v9.i32[0] = vadd_f32(v9, vdup_lane_s32(v9, 1)).u32[0];
  v10 = vrsqrte_f32(v9.u32[0]);
  v11 = vmul_f32(v10, vrsqrts_f32(v9.u32[0], vmul_f32(v10, v10)));
  return vmul_n_f32(result, vmul_f32(v11, vrsqrts_f32(v9.u32[0], vmul_f32(v11, v11))).f32[0]);
}

uint64_t *re::pathprocessing::Bezier2::split@<X0>(float32x2_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a1;
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  if (*a2 == v4)
  {
    v22 = *a1->f32;
    v23 = a1[2];
    return std::vector<re::pathprocessing::Bezier2>::vector[abi:nn200100](a3, &v22, 1uLL);
  }

  else
  {
    result = std::vector<re::pathprocessing::Bezier2>::vector[abi:nn200100](a3, ((v4 - *a2) >> 2) + 1);
    v7 = *a2;
    if (a2[1] != *a2)
    {
      v8 = 0;
      v9 = 0;
      v10 = *result;
      v11 = 0.0;
      do
      {
        v12 = *(v7 + 4 * v9);
        v13 = (v12 - v11) / (1.0 - v11);
        v14 = *v3;
        v15 = v3[2];
        v16 = v3[1];
        v17 = (v10 + v8);
        *v17 = *v3;
        v18 = vadd_f32(vmul_n_f32(v16, v13), vmul_n_f32(v14, 1.0 - v13));
        v19 = vadd_f32(vmul_n_f32(v15, v13), vmul_n_f32(v16, 1.0 - v13));
        v20 = vadd_f32(vmul_n_f32(v19, v13), vmul_n_f32(v18, 1.0 - v13));
        v17[1] = v18;
        v17[2] = v20;
        ++v9;
        v21 = (*result + v8);
        v21[3] = v20;
        v21[4] = v19;
        v21[5] = v15;
        v10 = *result;
        v3 = (*result + 24 * v9);
        v7 = *a2;
        v8 += 24;
        v11 = v12;
      }

      while (v9 < (a2[1] - *a2) >> 2);
    }
  }

  return result;
}

uint64_t re::pathprocessing::Bezier2::intersectAxisAlignedLineMonotonic(re::pathprocessing::Bezier2 *this, float a2)
{
  v4 = *(this + 5);
  v5 = *(this + 1);
  if (v4 >= v5)
  {
    v6 = *(this + 1);
  }

  else
  {
    v6 = *(this + 5);
  }

  if (v5 >= v4)
  {
    v7 = *(this + 1);
  }

  else
  {
    v7 = *(this + 5);
  }

  if (v6 > 0.0)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    LODWORD(v8) = 0;
    if (v7 > 0.0)
    {
      v18[4] = v2;
      v18[5] = v3;
      re::pathprocessing::Polynomial::setCoefficients(v16, 0.0, 0.0, v5 + *(this + 3) * -2.0 + v4, *(this + 3) - v5 + *(this + 3) - v5, v5);
      if (v17)
      {
        v9 = 0;
        v10 = 8 * v17;
        do
        {
          v11 = *&v16[v9 + 5];
          v12 = v9 + 1;
          *(v18 + v9++) = v11;
          v10 -= 8;
        }

        while (v10);
        LODWORD(v8) = v18[0];
        if (v12 == 2)
        {
          v13 = vabds_f32(0.5, *v18);
          if (v13 > 1.0)
          {
            v13 = 1.0;
          }

          v14 = vabds_f32(0.5, *(v18 + 1));
          if (v14 > 1.0)
          {
            v14 = 1.0;
          }

          if (v13 >= v14)
          {
            return HIDWORD(v18[0]);
          }
        }

        else if (v12 != 1)
        {
          LODWORD(v8) = 0;
        }
      }

      else
      {
        LODWORD(v8) = 0;
      }
    }
  }

  return v8;
}

uint64_t re::pathprocessing::Bezier2::intersectLineSegment(double *a1, double *a2, _OWORD *a3, _OWORD *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  result = geom_intersect_line_segment_quadratic_bezier_2f();
  if (result)
  {
    v7 = result;
    *(&__dst + 1) = result;
    v8 = 4 * result;
    memcpy(&__dst, __src, v8);
    *a3 = __dst;
    *(&__dst + 1) = v7;
    memcpy(&__dst, v10, v8);
    *a4 = __dst;
    return 2;
  }

  return result;
}

uint64_t re::pathprocessing::Bezier2::intersectRay(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  if (re::pathprocessing::Bezier2::isPoint(a1))
  {
    return v80[0];
  }

  if (re::pathprocessing::Bezier2::isLine(a1))
  {
    v9 = a1[2];
    v10 = vsub_f32(v9, *a1);
    v11 = *a3;
    LODWORD(v12) = HIDWORD(*a3);
    if (fabsf((-v10.f32[1] * COERCE_FLOAT(*a3)) + (v10.f32[0] * v12)) >= 0.0001)
    {
      v13 = vsub_f32(*a1, *a2);
      v14 = vsub_f32(v9, *a2);
      v15 = vmla_n_f32(vmul_n_f32(vzip1_s32(v13, v14), -v12), vzip2_s32(v13, v14), v11.f32[0]);
      v16 = vcgt_f32(vdup_n_s32(0x38D1B717u), vabs_f32(v15));
      if ((v16.i8[4] & 1) != 0 || (v16.i8[0] & 1) != 0 || (veor_s8(vdup_lane_s32(v15, 1), v15).u32[0] & 0x80000000) != 0)
      {
        v17 = vdiv_f32(v15, vsub_f32(v15, vdup_lane_s32(v15, 1))).f32[0];
        v18 = vabs_f32(v11);
        v19 = *&vmvn_s8(vcge_f32(v18, vdup_lane_s32(v18, 1))) & 1;
        v20 = 1.0;
        if (((((a1[2].f32[v19] * v17) + (a1->f32[v19] * (1.0 - v17))) - a2->f32[v19]) / a3->f32[v19]) >= -0.0001)
        {
          if (v17 <= 1.0)
          {
            v20 = v17;
          }

          if (v17 < 0.0)
          {
            v20 = 0.0;
          }

          *v80 = v20;
        }
      }
    }

    return v80[0];
  }

  v21 = 0;
  *v8.f32 = *a2;
  v22 = *a3;
  v23 = vsub_f32(vadd_f32(*a3, *a2), *a2);
  *v7.i8 = vmul_n_f32(v23, 1.0 / sqrtf(vaddv_f32(vmul_f32(v23, v23))));
  v24 = v8;
  v24.i32[0] = *a2;
  v25 = vnegq_f32(v24);
  v25.i32[2] = 1.0;
  v26.i64[1] = 0;
  v28 = vtrn1q_s32(0, v7);
  v26.i32[0] = v7.i32[0];
  v27.i32[3] = 0;
  __dst = xmmword_1E3047670;
  v83 = xmmword_1E3047680;
  v84 = v25;
  v28.i32[0] = v7.i32[1];
  do
  {
    v29 = *(&__dst + v21);
    v26.f32[1] = -*&v7.i32[1];
    v30 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, v29.f32[0]), v28, *v29.f32, 1), xmmword_1E30476A0, v29, 2);
    *(&__src + v21) = v30;
    v21 += 16;
  }

  while (v21 != 48);
  v75 = *v8.f32;
  v31 = 0;
  v32 = __src;
  v33 = v86;
  *v29.f32 = *a1;
  *v30.f32 = a1[1];
  *v27.f32 = a1[2];
  v29.i32[2] = 1.0;
  v30.i32[2] = 1.0;
  v27.i32[2] = 1.0;
  v34 = v87;
  __dst = v29;
  v83 = v30;
  v84 = v27;
  do
  {
    *(&__src + v31) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*(&__dst + v31))), v33, *(&__dst + v31), 1), v34, *(&__dst + v31), 2);
    v31 += 16;
  }

  while (v31 != 48);
  v35.f32[0] = __src.f32[0] / __src.f32[2];
  v76 = vdiv_f32(*v86.i8, vdup_laneq_s32(v86, 2));
  v77 = __src.f32[1] / __src.f32[2];
  v35.f32[1] = __src.f32[1] / __src.f32[2];
  v72 = __src.f32[0] / __src.f32[2];
  v74 = v35;
  v81[0] = v35;
  v81[1] = v76;
  v79 = vdiv_f32(*v87.i8, vdup_laneq_s32(v87, 2));
  v81[2] = v79;
  if (re::pathprocessing::Bezier2::isLine(v81))
  {
    if (v77 == 0.0 && v79.f32[1] == 0.0)
    {
      return v80[0];
    }

    v38 = vsub_f32(v79, v74);
    v39 = vdup_lane_s32(v38, 0);
    v39.f32[0] = v72 + 1.0;
    *v38.i32 = v77;
    v40 = vmla_f32(vmul_f32(v39, COERCE_FLOAT32X2_T(-COERCE_DOUBLE(0x8000000080000000))), COERCE_FLOAT32X2_T(-2.00000048), v38);
    v41 = vdiv_f32(v40, vdup_lane_s32(v40, 1)).f32[0];
    if (v41 <= 0.0 || v41 >= 1.0)
    {
      return v80[0];
    }

    *&__dst = v41;
    __src.i64[0] = __dst;
    __src.i64[1] = 1;
    v43 = &__src.f32[1];
    v44 = v75;
    goto LABEL_47;
  }

  _V6.S[1] = v76.i32[1];
  _S1 = -2.0;
  __asm { FMLA            S2, S1, V6.S[1] }

  *v36.i32 = (v77 - v76.f32[1]) / (_S2 + v79.f32[1]);
  if (*v36.i32 > 0.0 && *v36.i32 < 1.0)
  {
    *v37.i32 = 1.0 - *v36.i32;
    v55 = vdup_lane_s32(v37, 0);
    v56 = vdup_lane_s32(v36, 0);
    v73 = 1.0 - *v36.i32;
    v78 = (v77 - v76.f32[1]) / (_S2 + v79.f32[1]);
    v57 = vadd_f32(vmul_n_f32(v79, *v36.i32 * *v36.i32), vadd_f32(vmul_n_f32(v74, *v37.i32 * *v37.i32), vmul_n_f32(v76, (*v36.i32 + *v36.i32) * (1.0 - *v36.i32))));
    *__src.f32 = v74;
    *&__src.u32[2] = vadd_f32(vmul_n_f32(v76, *v36.i32), vmul_n_f32(v74, 1.0 - *v36.i32));
    *v86.i8 = v57;
    v88 = re::pathprocessing::Bezier2::intersectAxisAlignedLineMonotonic(&__src, __src.f32[2]);
    v89 = v58;
    if (v58)
    {
      v59 = 0;
      v60 = 4 * v58;
      do
      {
        v61 = v59 + 1;
        *(&__dst + v59) = v78 * *(&v88 + v59);
        ++v59;
        v60 -= 4;
      }

      while (v60);
    }

    else
    {
      v61 = 0;
    }

    *__src.f32 = v57;
    *&__src.u32[2] = vadd_f32(vmul_f32(v79, v56), vmul_f32(v76, v55));
    *v86.i8 = v79;
    v88 = re::pathprocessing::Bezier2::intersectAxisAlignedLineMonotonic(&__src, __src.f32[2]);
    v89 = v62;
    if (v62)
    {
      v63 = 4 * v62;
      v64 = &v88;
      v44 = v75;
      do
      {
        v65 = *v64++;
        v54 = v61 + 1;
        *(&__dst + v61++) = v78 + (v65 * v73);
        v63 -= 4;
      }

      while (v63);
      goto LABEL_45;
    }

    v54 = v61;
  }

  else
  {
    __src.i64[0] = re::pathprocessing::Bezier2::intersectAxisAlignedLineMonotonic(v81, 1.0);
    __src.i64[1] = v52;
    if (v52)
    {
      v53 = (v52 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      memcpy(&__dst, &__src, 4 * (v52 - 1) + 4);
      v54 = v53 + 1;
    }

    else
    {
      v54 = 0;
    }
  }

  v44 = v75;
LABEL_45:
  __src.i64[0] = __dst;
  __src.i64[1] = v54;
  if (!v54)
  {
    return v80[0];
  }

  v43 = &__src.f32[v54];
LABEL_47:
  v66 = 0;
  v67 = *a1;
  v68 = a1[1];
  p_src = &__src;
  v70 = a1[2];
  do
  {
    v71 = *p_src;
    if (vaddv_f32(vmul_f32(v22, vsub_f32(vadd_f32(vmul_n_f32(v70, v71 * v71), vadd_f32(vmul_n_f32(v67, (1.0 - *p_src) * (1.0 - *p_src)), vmul_n_f32(v68, (v71 + v71) * (1.0 - *p_src)))), v44))) > 0.0)
    {
      *(v80 + v66++) = v71;
    }

    ++p_src;
  }

  while (p_src != v43);
  return v80[0];
}

uint64_t re::pathprocessing::Bezier2::intersectCurveWithCurve(float32x2_t *a1, float32x2_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = vsub_f32(a2[1], *a2);
  v11 = vsub_f32(a2[2], *a2);
  v12 = 1.0 / ((-v10.f32[1] * v11.f32[0]) + (v10.f32[0] * v11.f32[1]));
  v13 = 0.5 / vaddv_f32(vmul_f32(v10, v10));
  v11.f32[0] = 1.0 - ((vmuls_lane_f32(v10.f32[1], v11, 1) + (v11.f32[0] * v10.f32[0])) * v13);
  v14 = vsub_f32(*a1, *a2);
  v15 = v12 * ((-v10.f32[1] * v14.f32[0]) + (v10.f32[0] * v14.f32[1]));
  v16 = (v11.f32[0] * v15) + ((vmuls_lane_f32(v10.f32[1], v14, 1) + (v14.f32[0] * v10.f32[0])) * v13);
  v17 = vsub_f32(a1[1], *a2);
  v18 = v12 * ((-v10.f32[1] * v17.f32[0]) + (v10.f32[0] * v17.f32[1]));
  v19 = (v11.f32[0] * v18) + ((vmuls_lane_f32(v10.f32[1], v17, 1) + (v17.f32[0] * v10.f32[0])) * v13);
  v20 = vsub_f32(a1[2], *a2);
  v17.f32[0] = v12 * ((-v10.f32[1] * v20.f32[0]) + (v10.f32[0] * v20.f32[1]));
  v21 = (v11.f32[0] * v17.f32[0]) + ((vmuls_lane_f32(v10.f32[1], v20, 1) + (v20.f32[0] * v10.f32[0])) * v13);
  v22 = v16;
  v23 = v15;
  v24 = v19;
  v25 = v18;
  v26 = v17.f32[0];
  if (fabs(v16 + v19 * -2.0 + v21) < 0.005 && ((v27 = v24 + v24 + v22 * -2.0, v28 = v23 + v25 * -2.0 + v26, v29 = v27 * v27, v30 = v28 / (v27 * v27), v30 == 1.0) || fabs(v30 + -1.0) <= 0.005) && ((v31 = v25 + v25 + v23 * -2.0, v32 = (v28 + v28) * v22 / v29, v32 - v31 / v27 == 0.0) || vabdd_f64(v32, v31 / v27) <= 0.005) && ((v33 = v22 * v22 * v28 / v29 - v31 * v22 / v27 + v23, v33 == 0.0) || fabs(v33) <= 0.005))
  {
    v53 = 0;
    v57 = 0;
    result = re::pathprocessing::LineSegment::rangeOverlaps(&v52, v56, v16, v21, 0.0, 1.0);
    v45 = v53;
    if (v53)
    {
      v46 = v56;
      v47 = &v52;
      do
      {
        v48 = *v47++;
        v49 = *(a3 + 8);
        *(a3 + 8) = v49 + 1;
        *(a3 + 4 * v49) = v48;
        v50 = *v46++;
        v51 = *(a4 + 8);
        *(a4 + 8) = v51 + 1;
        *(a4 + 4 * v51) = v50;
        --v45;
      }

      while (v45);
    }
  }

  else
  {
    re::pathprocessing::Polynomial::setCoefficients(&v52, v22 * 4.0 * v24 - v22 * v22 + v22 * -2.0 * v21 + v24 * -4.0 * v24 + v24 * 4.0 * v21 - v21 * v21, v22 * -12.0 * v24 + v22 * 4.0 * v22 + v21 * 4.0 * v22 + v24 * 8.0 * v24 + v21 * -4.0 * v24, v22 * 12.0 * v24 + v22 * -6.0 * v22 + v21 * -2.0 * v22 + v24 * -4.0 * v24 + v23 + v25 * -2.0 + v26, v24 * -4.0 * v22 + v22 * 4.0 * v22 + v23 * -2.0 + v25 * 2.0, v23 - v22 * v22);
    if (v55)
    {
      result = 0;
      v35 = 8 * v55;
      v36 = &v54;
      do
      {
        v37 = *v36;
        if (fabsf(v37) >= 0.0001 || (v38 = vceq_f32(a2[2], *a1), (vpmin_u32(v38, v38).u32[0] & 0x80000000) == 0))
        {
          if (v37 != 1.0 && fabsf(v37 + -1.0) > 0.0001 || (v39 = vceq_f32(a1[2], *a2), (vpmin_u32(v39, v39).u32[0] & 0x80000000) == 0))
          {
            v40 = (v21 * (v37 * v37)) + ((v16 * ((1.0 - v37) * (1.0 - v37))) + (v19 * ((v37 + v37) * (1.0 - v37))));
            if (a5 == 1 || (v37 > 0.0 ? (v43 = v37 < 1.0) : (v43 = 0), v43 && (v40 > 0.0 ? (v44 = v40 < 1.0) : (v44 = 0), v44)))
            {
              v41 = *(a3 + 8);
              *(a3 + 8) = v41 + 1;
              *(a3 + 4 * v41) = v37;
              v42 = *(a4 + 8);
              *(a4 + 8) = v42 + 1;
              *(a4 + 4 * v42) = v40;
              result = 2;
            }
          }
        }

        ++v36;
        v35 -= 8;
      }

      while (v35);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void re::pathprocessing::Polynomial::setCoefficients(re::pathprocessing::Polynomial *this, double a2, double a3, double a4, double a5, double a6)
{
  *(this + 19) = 0;
  *this = a6;
  *(this + 1) = a5;
  *(this + 2) = a4;
  *(this + 3) = a3;
  *(this + 4) = a2;
  v7 = 4;
  while (fabs(*(this + v7)) < 0.00001)
  {
    *(this + v7--) = 0;
    if (v7 == -1)
    {
      *(this + 18) = 0;
      return;
    }
  }

  *(this + 18) = v7;
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v37 = *(this + 3);
      v38 = *(this + 2) / v37;
      v39 = *(this + 1) / v37;
      v40 = v39 + v38 * v38 / -3.0;
      v41 = *this / v37 + v38 * (v39 * -9.0 + (v38 + v38) * v38) / 27.0;
      v42 = v40 * (v40 * v40);
      v43 = v42 * 4.0 / 27.0 + v41 * v41;
      v44 = v38 / -3.0;
      if (v43 < 0.0)
      {
        v45 = sqrt(v40 / -3.0);
        v46 = acos(v41 * sqrt(-27.0 / v42) * -0.5);
        v47 = __sincos_stret(v46 / 3.0);
        *(this + 5) = v44 + v45 * (v47.__cosval + v47.__cosval);
        *(this + 6) = v44 - v45 * (v47.__cosval + v47.__sinval * 1.73205081);
        v12 = v44 + v45 * (v47.__sinval * 1.73205081 - v47.__cosval);
        v13 = 3;
        v14 = 2;
        goto LABEL_51;
      }

      v55 = sqrt(v43);
      v56 = (-v41 - v55) * 0.5;
      v57 = cbrt((v55 - v41) * 0.5);
      v58 = cbrt(v56);
      v14 = 0;
      v12 = v44 + v57 + v58;
LABEL_50:
      v13 = 1;
      goto LABEL_51;
    }

    if (v7 != 4)
    {
      return;
    }

    v15 = *(this + 4);
    v16 = *(this + 3) / v15;
    v17 = *(this + 2) / v15;
    v18 = *(this + 1) / v15;
    v19 = *this / v15;
    v20 = v19 * -4.0;
    re::pathprocessing::Polynomial::setCoefficients(&v59, 0.0, 1.0, -v17, v19 * -4.0 + v16 * v18, v17 * 4.0 * v19 + -(v16 * v16) * v19 - v18 * v18);
    v21 = v16 * v16 * 0.25 - v17 + v60;
    if (fabs(v21) <= 0.00001 || v21 == 0.0)
    {
      v21 = 0.0;
    }

    if (v21 <= 0.0)
    {
      if (v21 < 0.0)
      {
        return;
      }

      v48 = v20 + v60 * v60;
      if (v48 != 0.0 && fabs(v48) > 0.00001)
      {
        return;
      }

      if (v48 < 0.0)
      {
        v48 = 0.0;
      }

      v49 = sqrt(v48);
      v50 = v49 + v49;
      v51 = v16 * (v16 * 3.0) * 0.25 + v17 * -2.0;
      if (v51 + v50 > 0.00001)
      {
        v52 = sqrt(v51 + v50) * 0.5;
        v53 = *(this + 19);
        *(this + v53 + 5) = v16 * -0.25 + v52;
        *(this + 19) = v53 + 2;
        *(this + (v53 + 1) + 5) = v16 * -0.25 - v52;
      }

      v54 = v51 - v50;
      if (v54 <= 0.00001)
      {
        return;
      }

      v34 = sqrt(v54) * 0.5 + v16 * -0.25;
      v33 = *(this + 19);
      *(this + v33 + 5) = v34;
    }

    else
    {
      v23 = sqrt(v21);
      v24 = v16 * (v16 * 3.0) * 0.25 - v23 * v23 + v17 * -2.0;
      v25 = (v18 * -8.0 + v16 * 4.0 * v17 - v16 * v16 * v16) / (v23 * 4.0);
      v26 = v24 + v25;
      if (fabs(v24 + v25) <= 0.00001 || v26 == 0.0)
      {
        v26 = 0.0;
      }

      if (vabdd_f64(v24, v25) <= 0.00001 || v24 - v25 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v24 - v25;
      }

      if (v26 >= 0.0)
      {
        v30 = sqrt(v26);
        v31 = *(this + 19);
        *(this + v31 + 5) = v16 * -0.25 + (v23 + v30) * 0.5;
        *(this + 19) = v31 + 2;
        *(this + (v31 + 1) + 5) = v16 * -0.25 + (v23 - v30) * 0.5;
      }

      if (v29 < 0.0)
      {
        return;
      }

      v32 = sqrt(v29);
      v33 = *(this + 19);
      *(this + v33 + 5) = v16 * -0.25 + (v32 - v23) * 0.5;
      v34 = v16 * -0.25 - (v23 + v32) * 0.5;
    }

    *(this + 19) = v33 + 2;
    *(this + (v33 + 1) + 5) = v34;
    return;
  }

  if (v7 != 1)
  {
    if (v7 != 2)
    {
      return;
    }

    v8 = *(this + 2);
    v9 = *(this + 1) / v8;
    v10 = *this / v8 * -4.0 + v9 * v9;
    if (v10 > 0.0)
    {
      v11 = sqrt(v10);
      *(this + 5) = (v11 - v9) * 0.5;
      v12 = (-v9 - v11) * 0.5;
      v13 = 2;
      v14 = 1;
LABEL_51:
      *(this + 19) = v13;
      *(this + v14 + 5) = v12;
      return;
    }

    if (v10 != 0.0)
    {
      return;
    }

    v14 = 0;
    v12 = v9 * -0.5;
    goto LABEL_50;
  }

  v35 = *(this + 1);
  if (v35 != 0.0)
  {
    v36 = -*this / v35;
    *(this + 19) = 1;
    *(this + 5) = v36;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,false>(unint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 4;
  v10 = a2 - 8;
  v11 = a2 - 12;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 6;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result.n128_u32[0] = a2[-4].n128_u32[2];
        if (result.n128_f32[0] < *(v12 + 8))
        {
          v350 = *(v12 + 32);
          v386 = *(v12 + 48);
          v284 = *v12;
          v318 = *(v12 + 16);
          v152 = a2[-4];
          v153 = a2[-3];
          v154 = a2[-1];
          *(v12 + 32) = a2[-2];
          *(v12 + 48) = v154;
          *v12 = v152;
          *(v12 + 16) = v153;
          result = v284;
          a2[-2] = v350;
          a2[-1] = v386;
          a2[-4] = v284;
          a2[-3] = v318;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v162 = *(v12 + 72);
      v163 = *(v12 + 136);
      if (v162 >= *(v12 + 8))
      {
        if (v163 < v162)
        {
          v219 = *(v12 + 96);
          result = *(v12 + 112);
          v221 = *(v12 + 64);
          v220 = *(v12 + 80);
          v222 = *(v12 + 144);
          *(v12 + 64) = *(v12 + 128);
          *(v12 + 80) = v222;
          v223 = *(v12 + 176);
          *(v12 + 96) = *(v12 + 160);
          *(v12 + 112) = v223;
          *(v12 + 128) = v221;
          *(v12 + 144) = v220;
          *(v12 + 160) = v219;
          *(v12 + 176) = result;
          if (*(v12 + 72) < *(v12 + 8))
          {
            v357 = *(v12 + 32);
            v393 = *(v12 + 48);
            v290 = *v12;
            v325 = *(v12 + 16);
            v224 = *(v12 + 80);
            *v12 = *(v12 + 64);
            *(v12 + 16) = v224;
            v225 = *(v12 + 112);
            *(v12 + 32) = *(v12 + 96);
            *(v12 + 48) = v225;
            result = v290;
            *(v12 + 96) = v357;
            *(v12 + 112) = v393;
            *(v12 + 64) = v290;
            *(v12 + 80) = v325;
          }
        }
      }

      else if (v163 >= v162)
      {
        v360 = *(v12 + 32);
        v396 = *(v12 + 48);
        v293 = *v12;
        v328 = *(v12 + 16);
        v236 = *(v12 + 80);
        *v12 = *(v12 + 64);
        *(v12 + 16) = v236;
        v237 = *(v12 + 112);
        *(v12 + 32) = *(v12 + 96);
        *(v12 + 48) = v237;
        *(v12 + 96) = v360;
        *(v12 + 112) = v396;
        *(v12 + 64) = v293;
        *(v12 + 80) = v328;
        if (v163 < *(v12 + 72))
        {
          v238 = *(v12 + 96);
          result = *(v12 + 112);
          v240 = *(v12 + 64);
          v239 = *(v12 + 80);
          v241 = *(v12 + 144);
          *(v12 + 64) = *(v12 + 128);
          *(v12 + 80) = v241;
          v242 = *(v12 + 176);
          *(v12 + 96) = *(v12 + 160);
          *(v12 + 112) = v242;
          *(v12 + 128) = v240;
          *(v12 + 144) = v239;
          *(v12 + 160) = v238;
          *(v12 + 176) = result;
        }
      }

      else
      {
        v352 = *(v12 + 32);
        v388 = *(v12 + 48);
        v286 = *v12;
        v320 = *(v12 + 16);
        v164 = *(v12 + 144);
        *v12 = *(v12 + 128);
        *(v12 + 16) = v164;
        v165 = *(v12 + 176);
        *(v12 + 32) = *(v12 + 160);
        *(v12 + 48) = v165;
        result = v286;
        *(v12 + 160) = v352;
        *(v12 + 176) = v388;
        *(v12 + 128) = v286;
        *(v12 + 144) = v320;
      }

      result.n128_u32[0] = a2[-4].n128_u32[2];
      if (result.n128_f32[0] >= *(v12 + 136))
      {
        return result;
      }

      result = *(v12 + 128);
      v329 = *(v12 + 144);
      v361 = *(v12 + 160);
      v397 = *(v12 + 176);
      v244 = a2[-2];
      v243 = a2[-1];
      v245 = a2[-3];
      *(v12 + 128) = *v9;
      *(v12 + 144) = v245;
      *(v12 + 160) = v244;
      *(v12 + 176) = v243;
      a2[-2] = v361;
      a2[-1] = v397;
      *v9 = result;
      a2[-3] = v329;
      result.n128_u32[0] = *(v12 + 136);
      if (result.n128_f32[0] >= *(v12 + 72))
      {
        return result;
      }

      v246 = *(v12 + 96);
      result = *(v12 + 112);
      v248 = *(v12 + 64);
      v247 = *(v12 + 80);
      v249 = *(v12 + 144);
      *(v12 + 64) = *(v12 + 128);
      *(v12 + 80) = v249;
      v250 = *(v12 + 176);
      *(v12 + 96) = *(v12 + 160);
      *(v12 + 112) = v250;
      *(v12 + 128) = v248;
      *(v12 + 144) = v247;
      *(v12 + 160) = v246;
      *(v12 + 176) = result;
LABEL_185:
      result.n128_u32[0] = *(v12 + 72);
      if (result.n128_f32[0] < *(v12 + 8))
      {
        v362 = *(v12 + 32);
        v398 = *(v12 + 48);
        v294 = *v12;
        v330 = *(v12 + 16);
        v251 = *(v12 + 80);
        *v12 = *(v12 + 64);
        *(v12 + 16) = v251;
        v252 = *(v12 + 112);
        *(v12 + 32) = *(v12 + 96);
        *(v12 + 48) = v252;
        result = v294;
        *(v12 + 96) = v362;
        *(v12 + 112) = v398;
        *(v12 + 64) = v294;
        *(v12 + 80) = v330;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,0>(v12, (v12 + 64), (v12 + 128), (v12 + 192), &a2[-4], result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v166 = (v12 + 64);
      v168 = v12 == a2 || v166 == a2;
      if (a4)
      {
        if (!v168)
        {
          v169 = 0;
          v170 = v12;
          do
          {
            v171 = v166;
            result.n128_u32[0] = *(v170 + 72);
            if (result.n128_f32[0] < *(v170 + 8))
            {
              v172 = v166->n128_u64[0];
              v287 = *(v170 + 76);
              v321 = *(v170 + 92);
              v353 = *(v170 + 108);
              v389 = *(v170 + 124);
              v173 = v169;
              while (1)
              {
                v174 = (v12 + v173);
                v175 = *(v12 + v173 + 16);
                *(v174 + 4) = *(v12 + v173);
                *(v174 + 5) = v175;
                v176 = *(v12 + v173 + 48);
                *(v174 + 6) = *(v12 + v173 + 32);
                *(v174 + 7) = v176;
                if (!v173)
                {
                  break;
                }

                v173 -= 64;
                if (result.n128_f32[0] >= *(v174 - 14))
                {
                  v177 = v12 + v173 + 64;
                  goto LABEL_129;
                }
              }

              v177 = v12;
LABEL_129:
              *v177 = v172;
              *(v177 + 8) = result.n128_u32[0];
              result = v287;
              *(v177 + 60) = v389;
              *(v177 + 44) = v353;
              *(v177 + 28) = v321;
              *(v177 + 12) = v287;
            }

            v166 = v171 + 4;
            v169 += 64;
            v170 = v171;
          }

          while (&v171[4] != a2);
        }
      }

      else if (!v168)
      {
        do
        {
          v226 = v166;
          result.n128_u32[0] = *(a1 + 72);
          if (result.n128_f32[0] < *(a1 + 8))
          {
            v227 = v166->n128_u64[0];
            v291 = *(a1 + 76);
            v326 = *(a1 + 92);
            v358 = *(a1 + 108);
            v394 = *(a1 + 124);
            do
            {
              v228 = v166[-3];
              *v166 = v166[-4];
              v166[1] = v228;
              v229 = v166[-1];
              v166[2] = v166[-2];
              v166[3] = v229;
              v230 = v166[-8].n128_f32[2];
              v166 -= 4;
            }

            while (result.n128_f32[0] < v230);
            v166->n128_u64[0] = v227;
            v166->n128_u32[2] = result.n128_u32[0];
            result = v291;
            v166[3].n128_u32[3] = v394;
            *(v166 + 44) = v358;
            *(v166 + 28) = v326;
            *(v166 + 12) = v291;
          }

          v166 = v226 + 4;
          a1 = v226;
        }

        while (&v226[4] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v178 = (v13 - 2) >> 1;
        v179 = v178;
        do
        {
          v180 = v179;
          if (v178 >= v179)
          {
            v181 = (2 * v179) | 1;
            v182 = v12 + (v181 << 6);
            if (2 * v180 + 2 < v13 && *(v182 + 8) < *(v182 + 72))
            {
              v182 += 64;
              v181 = 2 * v180 + 2;
            }

            v183 = v12 + (v180 << 6);
            v184 = *(v183 + 8);
            if (*(v182 + 8) >= v184)
            {
              v185 = *v183;
              v390 = *(v183 + 60);
              v322 = *(v183 + 28);
              v354 = *(v183 + 44);
              v288 = *(v183 + 12);
              do
              {
                v186 = v183;
                v183 = v182;
                v187 = *v182;
                v188 = *(v182 + 16);
                v189 = *(v182 + 48);
                v186[2] = *(v182 + 32);
                v186[3] = v189;
                *v186 = v187;
                v186[1] = v188;
                if (v178 < v181)
                {
                  break;
                }

                v190 = 2 * v181;
                v181 = (2 * v181) | 1;
                v182 = v12 + (v181 << 6);
                v191 = v190 + 2;
                if (v191 < v13 && *(v182 + 8) < *(v182 + 72))
                {
                  v182 += 64;
                  v181 = v191;
                }
              }

              while (*(v182 + 8) >= v184);
              *v183 = v185;
              *(v183 + 8) = v184;
              *(v183 + 60) = v390;
              *(v183 + 44) = v354;
              *(v183 + 28) = v322;
              *(v183 + 12) = v288;
            }
          }

          v179 = v180 - 1;
        }

        while (v180);
        do
        {
          v192 = 0;
          v355 = *(v12 + 32);
          v391 = *(v12 + 48);
          v289 = *v12;
          v323 = *(v12 + 16);
          v193 = v12;
          do
          {
            v194 = &v193[4 * v192];
            v195 = (v194 + 16);
            v196 = (2 * v192) | 1;
            v192 = 2 * v192 + 2;
            if (v192 >= v13)
            {
              v192 = v196;
            }

            else
            {
              v197 = v194[18];
              v198 = v194[34];
              v199 = (v194 + 32);
              if (v197 >= v198)
              {
                v192 = v196;
              }

              else
              {
                v195 = v199;
              }
            }

            v200 = *v195;
            v201 = v195[1];
            v202 = v195[3];
            v193[2] = v195[2];
            v193[3] = v202;
            *v193 = v200;
            v193[1] = v201;
            v193 = v195;
          }

          while (v192 <= ((v13 - 2) >> 1));
          a2 -= 4;
          if (v195 == a2)
          {
            result = v289;
            v195[2] = v355;
            v195[3] = v391;
            *v195 = v289;
            v195[1] = v323;
          }

          else
          {
            v203 = *a2;
            v204 = a2[1];
            v205 = a2[3];
            v195[2] = a2[2];
            v195[3] = v205;
            *v195 = v203;
            v195[1] = v204;
            result = v289;
            a2[2] = v355;
            a2[3] = v391;
            *a2 = v289;
            a2[1] = v323;
            v206 = (&v195[4] - v12) >> 6;
            v207 = v206 < 2;
            v208 = v206 - 2;
            if (!v207)
            {
              v209 = v208 >> 1;
              v210 = v12 + (v209 << 6);
              result.n128_u32[0] = v195->n128_u32[2];
              if (*(v210 + 8) < result.n128_f32[0])
              {
                v211 = v195->n128_u64[0];
                v264 = v195[3].n128_i32[3];
                v258 = *(v195 + 28);
                v261 = *(v195 + 44);
                v255 = *(v195 + 12);
                do
                {
                  v212 = v195;
                  v195 = v210;
                  v213 = *v210;
                  v214 = *(v210 + 16);
                  v215 = *(v210 + 48);
                  v212[2] = *(v210 + 32);
                  v212[3] = v215;
                  *v212 = v213;
                  v212[1] = v214;
                  if (!v209)
                  {
                    break;
                  }

                  v209 = (v209 - 1) >> 1;
                  v210 = v12 + (v209 << 6);
                }

                while (*(v210 + 8) < result.n128_f32[0]);
                v195->n128_u64[0] = v211;
                v195->n128_u32[2] = result.n128_u32[0];
                result = v255;
                v195[3].n128_u32[3] = v264;
                *(v195 + 44) = v261;
                *(v195 + 28) = v258;
                *(v195 + 12) = v255;
              }
            }
          }

          v207 = v13-- <= 2;
        }

        while (!v207);
      }

      return result;
    }

    v14 = v12 + (v13 >> 1 << 6);
    v15 = a2[-4].n128_f32[2];
    if (v13 >= 0x81)
    {
      v16 = *(v14 + 8);
      if (v16 >= *(v12 + 8))
      {
        if (v15 < v16)
        {
          v333 = *(v14 + 32);
          v365 = *(v14 + 48);
          v267 = *v14;
          v297 = *(v14 + 16);
          v24 = *v9;
          v25 = a2[-3];
          v26 = a2[-1];
          *(v14 + 32) = a2[-2];
          *(v14 + 48) = v26;
          *v14 = v24;
          *(v14 + 16) = v25;
          a2[-2] = v333;
          a2[-1] = v365;
          *v9 = v267;
          a2[-3] = v297;
          if (*(v14 + 8) < *(v12 + 8))
          {
            v334 = *(v12 + 32);
            v366 = *(v12 + 48);
            v268 = *v12;
            v298 = *(v12 + 16);
            v27 = *v14;
            v28 = *(v14 + 16);
            v29 = *(v14 + 48);
            *(v12 + 32) = *(v14 + 32);
            *(v12 + 48) = v29;
            *v12 = v27;
            *(v12 + 16) = v28;
            *(v14 + 32) = v334;
            *(v14 + 48) = v366;
            *v14 = v268;
            *(v14 + 16) = v298;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          v331 = *(v12 + 32);
          v363 = *(v12 + 48);
          v265 = *v12;
          v295 = *(v12 + 16);
          v17 = *v9;
          v18 = a2[-3];
          v19 = a2[-1];
          *(v12 + 32) = a2[-2];
          *(v12 + 48) = v19;
          *v12 = v17;
          *(v12 + 16) = v18;
          goto LABEL_26;
        }

        v337 = *(v12 + 32);
        v369 = *(v12 + 48);
        v271 = *v12;
        v301 = *(v12 + 16);
        v36 = *v14;
        v37 = *(v14 + 16);
        v38 = *(v14 + 48);
        *(v12 + 32) = *(v14 + 32);
        *(v12 + 48) = v38;
        *v12 = v36;
        *(v12 + 16) = v37;
        *(v14 + 32) = v337;
        *(v14 + 48) = v369;
        *v14 = v271;
        *(v14 + 16) = v301;
        if (a2[-4].n128_f32[2] < *(v14 + 8))
        {
          v331 = *(v14 + 32);
          v363 = *(v14 + 48);
          v265 = *v14;
          v295 = *(v14 + 16);
          v39 = *v9;
          v40 = a2[-3];
          v41 = a2[-1];
          *(v14 + 32) = a2[-2];
          *(v14 + 48) = v41;
          *v14 = v39;
          *(v14 + 16) = v40;
LABEL_26:
          a2[-2] = v331;
          a2[-1] = v363;
          *v9 = v265;
          a2[-3] = v295;
        }
      }

      v42 = (v14 - 64);
      v43 = *(v14 - 56);
      v44 = a2[-8].n128_f32[2];
      if (v43 >= *(v12 + 72))
      {
        if (v44 < v43)
        {
          v338 = *(v14 - 32);
          v370 = *(v14 - 16);
          v272 = *v42;
          v302 = *(v14 - 48);
          v52 = *v10;
          v53 = a2[-7];
          v54 = a2[-5];
          *(v14 - 32) = a2[-6];
          *(v14 - 16) = v54;
          *v42 = v52;
          *(v14 - 48) = v53;
          a2[-6] = v338;
          a2[-5] = v370;
          *v10 = v272;
          a2[-7] = v302;
          if (*(v14 - 56) < *(v12 + 72))
          {
            v55 = *(v12 + 64);
            v303 = *(v12 + 80);
            v56 = *(v12 + 96);
            v371 = *(v12 + 112);
            v58 = *(v14 - 32);
            v57 = *(v14 - 16);
            v59 = *(v14 - 48);
            *(v12 + 64) = *v42;
            *(v12 + 80) = v59;
            *(v12 + 96) = v58;
            *(v12 + 112) = v57;
            *(v14 - 32) = v56;
            *(v14 - 16) = v371;
            *v42 = v55;
            *(v14 - 48) = v303;
          }
        }
      }

      else
      {
        if (v44 < v43)
        {
          v45 = *(v12 + 64);
          v46 = *(v12 + 80);
          v47 = *(v12 + 96);
          v48 = *(v12 + 112);
          v50 = a2[-6];
          v49 = a2[-5];
          v51 = a2[-7];
          *(v12 + 64) = *v10;
          *(v12 + 80) = v51;
          *(v12 + 96) = v50;
          *(v12 + 112) = v49;
          goto LABEL_38;
        }

        v66 = *(v12 + 64);
        v305 = *(v12 + 80);
        v67 = *(v12 + 96);
        v373 = *(v12 + 112);
        v69 = *(v14 - 32);
        v68 = *(v14 - 16);
        v70 = *(v14 - 48);
        *(v12 + 64) = *v42;
        *(v12 + 80) = v70;
        *(v12 + 96) = v69;
        *(v12 + 112) = v68;
        *(v14 - 32) = v67;
        *(v14 - 16) = v373;
        *v42 = v66;
        *(v14 - 48) = v305;
        if (a2[-8].n128_f32[2] < *(v14 - 56))
        {
          v340 = *(v14 - 32);
          v374 = *(v14 - 16);
          v274 = *v42;
          v306 = *(v14 - 48);
          v71 = *v10;
          v72 = a2[-7];
          v73 = a2[-5];
          *(v14 - 32) = a2[-6];
          *(v14 - 16) = v73;
          *v42 = v71;
          *(v14 - 48) = v72;
          v45 = v274;
          v46 = v306;
          v47 = v340;
          v48 = v374;
LABEL_38:
          a2[-6] = v47;
          a2[-5] = v48;
          *v10 = v45;
          a2[-7] = v46;
        }
      }

      v74 = (v14 + 64);
      v75 = *(v14 + 72);
      v76 = a2[-12].n128_f32[2];
      if (v75 >= *(v12 + 136))
      {
        if (v76 < v75)
        {
          v341 = *(v14 + 96);
          v375 = *(v14 + 112);
          v275 = *v74;
          v307 = *(v14 + 80);
          v84 = *v11;
          v85 = a2[-11];
          v86 = a2[-9];
          *(v14 + 96) = a2[-10];
          *(v14 + 112) = v86;
          *v74 = v84;
          *(v14 + 80) = v85;
          a2[-10] = v341;
          a2[-9] = v375;
          *v11 = v275;
          a2[-11] = v307;
          if (*(v14 + 72) < *(v12 + 136))
          {
            v87 = *(v12 + 128);
            v308 = *(v12 + 144);
            v88 = *(v12 + 160);
            v376 = *(v12 + 176);
            v90 = *(v14 + 96);
            v89 = *(v14 + 112);
            v91 = *(v14 + 80);
            *(v12 + 128) = *v74;
            *(v12 + 144) = v91;
            *(v12 + 160) = v90;
            *(v12 + 176) = v89;
            *(v14 + 96) = v88;
            *(v14 + 112) = v376;
            *v74 = v87;
            *(v14 + 80) = v308;
          }
        }
      }

      else
      {
        if (v76 < v75)
        {
          v77 = *(v12 + 128);
          v78 = *(v12 + 144);
          v79 = *(v12 + 160);
          v80 = *(v12 + 176);
          v82 = a2[-10];
          v81 = a2[-9];
          v83 = a2[-11];
          *(v12 + 128) = *v11;
          *(v12 + 144) = v83;
          *(v12 + 160) = v82;
          *(v12 + 176) = v81;
          goto LABEL_47;
        }

        v92 = *(v12 + 128);
        v309 = *(v12 + 144);
        v93 = *(v12 + 160);
        v377 = *(v12 + 176);
        v95 = *(v14 + 96);
        v94 = *(v14 + 112);
        v96 = *(v14 + 80);
        *(v12 + 128) = *v74;
        *(v12 + 144) = v96;
        *(v12 + 160) = v95;
        *(v12 + 176) = v94;
        *(v14 + 96) = v93;
        *(v14 + 112) = v377;
        *v74 = v92;
        *(v14 + 80) = v309;
        if (a2[-12].n128_f32[2] < *(v14 + 72))
        {
          v342 = *(v14 + 96);
          v378 = *(v14 + 112);
          v276 = *v74;
          v310 = *(v14 + 80);
          v97 = *v11;
          v98 = a2[-11];
          v99 = a2[-9];
          *(v14 + 96) = a2[-10];
          *(v14 + 112) = v99;
          *v74 = v97;
          *(v14 + 80) = v98;
          v77 = v276;
          v78 = v310;
          v79 = v342;
          v80 = v378;
LABEL_47:
          a2[-10] = v79;
          a2[-9] = v80;
          *v11 = v77;
          a2[-11] = v78;
        }
      }

      v100 = *(v14 + 8);
      v101 = *(v14 + 72);
      if (v100 >= *(v14 - 56))
      {
        if (v101 < v100)
        {
          v344 = *(v14 + 32);
          v380 = *(v14 + 48);
          v278 = *v14;
          v312 = *(v14 + 16);
          v104 = *(v14 + 80);
          *v14 = *v74;
          *(v14 + 16) = v104;
          v105 = *(v14 + 112);
          *(v14 + 32) = *(v14 + 96);
          *(v14 + 48) = v105;
          *(v14 + 96) = v344;
          *(v14 + 112) = v380;
          *v74 = v278;
          *(v14 + 80) = v312;
          if (*(v14 + 8) < *(v14 - 56))
          {
            v345 = *(v14 - 32);
            v381 = *(v14 - 16);
            v279 = *v42;
            v313 = *(v14 - 48);
            v106 = *(v14 + 16);
            *v42 = *v14;
            *(v14 - 48) = v106;
            v107 = *(v14 + 48);
            *(v14 - 32) = *(v14 + 32);
            *(v14 - 16) = v107;
            *(v14 + 32) = v345;
            *(v14 + 48) = v381;
            *v14 = v279;
            *(v14 + 16) = v313;
          }
        }
      }

      else
      {
        if (v101 < v100)
        {
          v343 = *(v14 - 32);
          v379 = *(v14 - 16);
          v277 = *v42;
          v311 = *(v14 - 48);
          v102 = *(v14 + 80);
          *v42 = *v74;
          *(v14 - 48) = v102;
          v103 = *(v14 + 112);
          *(v14 - 32) = *(v14 + 96);
          *(v14 - 16) = v103;
          goto LABEL_56;
        }

        v346 = *(v14 - 32);
        v382 = *(v14 - 16);
        v280 = *v42;
        v314 = *(v14 - 48);
        v108 = *(v14 + 16);
        *v42 = *v14;
        *(v14 - 48) = v108;
        v109 = *(v14 + 48);
        *(v14 - 32) = *(v14 + 32);
        *(v14 - 16) = v109;
        *(v14 + 32) = v346;
        *(v14 + 48) = v382;
        *v14 = v280;
        *(v14 + 16) = v314;
        if (*(v14 + 72) < *(v14 + 8))
        {
          v343 = *(v14 + 32);
          v379 = *(v14 + 48);
          v277 = *v14;
          v311 = *(v14 + 16);
          v110 = *(v14 + 80);
          *v14 = *v74;
          *(v14 + 16) = v110;
          v111 = *(v14 + 112);
          *(v14 + 32) = *(v14 + 96);
          *(v14 + 48) = v111;
LABEL_56:
          *(v14 + 96) = v343;
          *(v14 + 112) = v379;
          *v74 = v277;
          *(v14 + 80) = v311;
        }
      }

      v347 = *(v12 + 32);
      v383 = *(v12 + 48);
      v281 = *v12;
      v315 = *(v12 + 16);
      v112 = *v14;
      v113 = *(v14 + 16);
      v114 = *(v14 + 48);
      *(v12 + 32) = *(v14 + 32);
      *(v12 + 48) = v114;
      *v12 = v112;
      *(v12 + 16) = v113;
      *(v14 + 32) = v347;
      *(v14 + 48) = v383;
      *v14 = v281;
      *(v14 + 16) = v315;
      goto LABEL_58;
    }

    v20 = *(v12 + 8);
    if (v20 >= *(v14 + 8))
    {
      if (v15 < v20)
      {
        v335 = *(v12 + 32);
        v367 = *(v12 + 48);
        v269 = *v12;
        v299 = *(v12 + 16);
        v30 = *v9;
        v31 = a2[-3];
        v32 = a2[-1];
        *(v12 + 32) = a2[-2];
        *(v12 + 48) = v32;
        *v12 = v30;
        *(v12 + 16) = v31;
        a2[-2] = v335;
        a2[-1] = v367;
        *v9 = v269;
        a2[-3] = v299;
        if (*(v12 + 8) < *(v14 + 8))
        {
          v336 = *(v14 + 32);
          v368 = *(v14 + 48);
          v270 = *v14;
          v300 = *(v14 + 16);
          v33 = *v12;
          v34 = *(v12 + 16);
          v35 = *(v12 + 48);
          *(v14 + 32) = *(v12 + 32);
          *(v14 + 48) = v35;
          *v14 = v33;
          *(v14 + 16) = v34;
          *(v12 + 32) = v336;
          *(v12 + 48) = v368;
          *v12 = v270;
          *(v12 + 16) = v300;
        }
      }

      goto LABEL_58;
    }

    if (v15 < v20)
    {
      v332 = *(v14 + 32);
      v364 = *(v14 + 48);
      v266 = *v14;
      v296 = *(v14 + 16);
      v21 = *v9;
      v22 = a2[-3];
      v23 = a2[-1];
      *(v14 + 32) = a2[-2];
      *(v14 + 48) = v23;
      *v14 = v21;
      *(v14 + 16) = v22;
LABEL_35:
      a2[-2] = v332;
      a2[-1] = v364;
      *v9 = v266;
      a2[-3] = v296;
      goto LABEL_58;
    }

    v339 = *(v14 + 32);
    v372 = *(v14 + 48);
    v273 = *v14;
    v304 = *(v14 + 16);
    v60 = *v12;
    v61 = *(v12 + 16);
    v62 = *(v12 + 48);
    *(v14 + 32) = *(v12 + 32);
    *(v14 + 48) = v62;
    *v14 = v60;
    *(v14 + 16) = v61;
    *(v12 + 32) = v339;
    *(v12 + 48) = v372;
    *v12 = v273;
    *(v12 + 16) = v304;
    if (a2[-4].n128_f32[2] < *(v12 + 8))
    {
      v332 = *(v12 + 32);
      v364 = *(v12 + 48);
      v266 = *v12;
      v296 = *(v12 + 16);
      v63 = *v9;
      v64 = a2[-3];
      v65 = a2[-1];
      *(v12 + 32) = a2[-2];
      *(v12 + 48) = v65;
      *v12 = v63;
      *(v12 + 16) = v64;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v115 = *(v12 + 8);
LABEL_61:
      v116 = 0;
      v117 = *v12;
      v262 = *(v12 + 60);
      v256 = *(v12 + 28);
      v259 = *(v12 + 44);
      v253 = *(v12 + 12);
      do
      {
        v118 = *(v12 + v116 + 72);
        v116 += 64;
      }

      while (v118 < v115);
      v119 = v12 + v116;
      v120 = a2;
      if (v116 == 64)
      {
        v123 = a2;
        while (v119 < v123)
        {
          v121 = v123 - 4;
          v124 = v123[-4].n128_f32[2];
          v123 -= 4;
          if (v124 < v115)
          {
            goto LABEL_71;
          }
        }

        v121 = v123;
      }

      else
      {
        do
        {
          v121 = v120 - 4;
          v122 = v120[-4].n128_f32[2];
          v120 -= 4;
        }

        while (v122 >= v115);
      }

LABEL_71:
      v12 = v119;
      if (v119 < v121)
      {
        v125 = v121;
        do
        {
          v348 = *(v12 + 32);
          v384 = *(v12 + 48);
          v282 = *v12;
          v316 = *(v12 + 16);
          v126 = *v125;
          v127 = v125[1];
          v128 = v125[3];
          *(v12 + 32) = v125[2];
          *(v12 + 48) = v128;
          *v12 = v126;
          *(v12 + 16) = v127;
          v125[2] = v348;
          v125[3] = v384;
          *v125 = v282;
          v125[1] = v316;
          do
          {
            v129 = *(v12 + 72);
            v12 += 64;
          }

          while (v129 < v115);
          do
          {
            v130 = v125[-4].n128_f32[2];
            v125 -= 4;
          }

          while (v130 >= v115);
        }

        while (v12 < v125);
      }

      if (v12 - 64 != a1)
      {
        v131 = *(v12 - 64);
        v132 = *(v12 - 48);
        v133 = *(v12 - 16);
        *(a1 + 32) = *(v12 - 32);
        *(a1 + 48) = v133;
        *a1 = v131;
        *(a1 + 16) = v132;
      }

      *(v12 - 64) = v117;
      *(v12 - 56) = v115;
      result = v253;
      *(v12 - 4) = v262;
      *(v12 - 20) = v259;
      *(v12 - 36) = v256;
      *(v12 - 52) = v253;
      if (v119 < v121)
      {
        goto LABEL_82;
      }

      v134 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *>(a1, (v12 - 64), v253);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *>(v12, a2, v135))
      {
        a2 = (v12 - 64);
        if (!v134)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v134)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,false>(a1, (v12 - 64), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v115 = *(v12 + 8);
      if (*(v12 - 56) < v115)
      {
        goto LABEL_61;
      }

      v136 = *v12;
      v263 = *(v12 + 60);
      v257 = *(v12 + 28);
      v260 = *(v12 + 44);
      v254 = *(v12 + 12);
      if (v115 >= a2[-4].n128_f32[2])
      {
        v139 = v12 + 64;
        do
        {
          v12 = v139;
          if (v139 >= a2)
          {
            break;
          }

          v140 = *(v139 + 8);
          v139 += 64;
        }

        while (v115 >= v140);
      }

      else
      {
        v137 = v12;
        do
        {
          v12 = v137 + 64;
          v138 = *(v137 + 72);
          v137 += 64;
        }

        while (v115 >= v138);
      }

      v141 = a2;
      if (v12 < a2)
      {
        v142 = a2;
        do
        {
          v141 = v142 - 4;
          v143 = v142[-4].n128_f32[2];
          v142 -= 4;
        }

        while (v115 < v143);
      }

      while (v12 < v141)
      {
        v349 = *(v12 + 32);
        v385 = *(v12 + 48);
        v283 = *v12;
        v317 = *(v12 + 16);
        v144 = *v141;
        v145 = v141[1];
        v146 = v141[3];
        *(v12 + 32) = v141[2];
        *(v12 + 48) = v146;
        *v12 = v144;
        *(v12 + 16) = v145;
        v141[2] = v349;
        v141[3] = v385;
        *v141 = v283;
        v141[1] = v317;
        do
        {
          v147 = *(v12 + 72);
          v12 += 64;
        }

        while (v115 >= v147);
        do
        {
          v148 = v141[-4].n128_f32[2];
          v141 -= 4;
        }

        while (v115 < v148);
      }

      if (v12 - 64 != a1)
      {
        v149 = *(v12 - 64);
        v150 = *(v12 - 48);
        v151 = *(v12 - 16);
        *(a1 + 32) = *(v12 - 32);
        *(a1 + 48) = v151;
        *a1 = v149;
        *(a1 + 16) = v150;
      }

      a4 = 0;
      *(v12 - 64) = v136;
      *(v12 - 56) = v115;
      result = v254;
      *(v12 - 4) = v263;
      *(v12 - 20) = v260;
      *(v12 - 36) = v257;
      *(v12 - 52) = v254;
    }
  }

  result.n128_u32[0] = *(v12 + 72);
  v155 = a2[-4].n128_f32[2];
  if (result.n128_f32[0] >= *(v12 + 8))
  {
    if (v155 >= result.n128_f32[0])
    {
      return result;
    }

    result = *(v12 + 64);
    v324 = *(v12 + 80);
    v356 = *(v12 + 96);
    v392 = *(v12 + 112);
    v217 = a2[-2];
    v216 = a2[-1];
    v218 = a2[-3];
    *(v12 + 64) = *v9;
    *(v12 + 80) = v218;
    *(v12 + 96) = v217;
    *(v12 + 112) = v216;
    a2[-2] = v356;
    a2[-1] = v392;
    *v9 = result;
    a2[-3] = v324;
    goto LABEL_185;
  }

  if (v155 >= result.n128_f32[0])
  {
    v359 = *(v12 + 32);
    v395 = *(v12 + 48);
    v292 = *v12;
    v327 = *(v12 + 16);
    v231 = *(v12 + 80);
    *v12 = *(v12 + 64);
    *(v12 + 16) = v231;
    v232 = *(v12 + 112);
    *(v12 + 32) = *(v12 + 96);
    *(v12 + 48) = v232;
    result = v292;
    *(v12 + 96) = v359;
    *(v12 + 112) = v395;
    *(v12 + 64) = v292;
    *(v12 + 80) = v327;
    result.n128_u32[0] = a2[-4].n128_u32[2];
    if (result.n128_f32[0] >= *(v12 + 72))
    {
      return result;
    }

    result = *(v12 + 64);
    v159 = *(v12 + 80);
    v160 = *(v12 + 96);
    v161 = *(v12 + 112);
    v234 = a2[-2];
    v233 = a2[-1];
    v235 = a2[-3];
    *(v12 + 64) = *v9;
    *(v12 + 80) = v235;
    *(v12 + 96) = v234;
    *(v12 + 112) = v233;
  }

  else
  {
    v351 = *(v12 + 32);
    v387 = *(v12 + 48);
    v285 = *v12;
    v319 = *(v12 + 16);
    v156 = *v9;
    v157 = a2[-3];
    v158 = a2[-1];
    *(v12 + 32) = a2[-2];
    *(v12 + 48) = v158;
    *v12 = v156;
    *(v12 + 16) = v157;
    result = v285;
    v159 = v319;
    v160 = v351;
    v161 = v387;
  }

  a2[-2] = v160;
  a2[-1] = v161;
  *v9 = result;
  a2[-3] = v159;
  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,0>(float *a1, float *a2, float *a3, float *a4, __int128 *a5, __n128 result)
{
  v6 = a2[2];
  v7 = a3[2];
  if (v6 >= a1[2])
  {
    if (v7 < v6)
    {
      v14 = *(a2 + 2);
      result = *(a2 + 12);
      v16 = *a2;
      v15 = *(a2 + 1);
      v17 = *(a3 + 3);
      v19 = *a3;
      v18 = *(a3 + 1);
      *(a2 + 2) = *(a3 + 2);
      *(a2 + 3) = v17;
      *a2 = v19;
      *(a2 + 1) = v18;
      *a3 = v16;
      *(a3 + 1) = v15;
      *(a3 + 2) = v14;
      *(a3 + 3) = result;
      if (a2[2] < a1[2])
      {
        v20 = *(a1 + 2);
        result = *(a1 + 12);
        v22 = *a1;
        v21 = *(a1 + 1);
        v23 = *(a2 + 3);
        v25 = *a2;
        v24 = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v23;
        *a1 = v25;
        *(a1 + 1) = v24;
        *a2 = v22;
        *(a2 + 1) = v21;
        *(a2 + 2) = v20;
        *(a2 + 3) = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *(a1 + 2);
      result = *(a1 + 12);
      v10 = *a1;
      v9 = *(a1 + 1);
      v11 = *(a3 + 3);
      v13 = *a3;
      v12 = *(a3 + 1);
      *(a1 + 2) = *(a3 + 2);
      *(a1 + 3) = v11;
      *a1 = v13;
      *(a1 + 1) = v12;
LABEL_9:
      *a3 = v10;
      *(a3 + 1) = v9;
      *(a3 + 2) = v8;
      *(a3 + 3) = result;
      goto LABEL_10;
    }

    v26 = *(a1 + 2);
    result = *(a1 + 12);
    v28 = *a1;
    v27 = *(a1 + 1);
    v29 = *(a2 + 3);
    v31 = *a2;
    v30 = *(a2 + 1);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v29;
    *a1 = v31;
    *(a1 + 1) = v30;
    *a2 = v28;
    *(a2 + 1) = v27;
    *(a2 + 2) = v26;
    *(a2 + 3) = result;
    if (a3[2] < a2[2])
    {
      v8 = *(a2 + 2);
      result = *(a2 + 12);
      v10 = *a2;
      v9 = *(a2 + 1);
      v32 = *(a3 + 3);
      v34 = *a3;
      v33 = *(a3 + 1);
      *(a2 + 2) = *(a3 + 2);
      *(a2 + 3) = v32;
      *a2 = v34;
      *(a2 + 1) = v33;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4[2] < a3[2])
  {
    v35 = *(a3 + 2);
    result = *(a3 + 12);
    v37 = *a3;
    v36 = *(a3 + 1);
    v38 = *(a4 + 3);
    v40 = *a4;
    v39 = *(a4 + 1);
    *(a3 + 2) = *(a4 + 2);
    *(a3 + 3) = v38;
    *a3 = v40;
    *(a3 + 1) = v39;
    *a4 = v37;
    *(a4 + 1) = v36;
    *(a4 + 2) = v35;
    *(a4 + 3) = result;
    if (a3[2] < a2[2])
    {
      v41 = *(a2 + 2);
      result = *(a2 + 12);
      v43 = *a2;
      v42 = *(a2 + 1);
      v44 = *(a3 + 3);
      v46 = *a3;
      v45 = *(a3 + 1);
      *(a2 + 2) = *(a3 + 2);
      *(a2 + 3) = v44;
      *a2 = v46;
      *(a2 + 1) = v45;
      *a3 = v43;
      *(a3 + 1) = v42;
      *(a3 + 2) = v41;
      *(a3 + 3) = result;
      if (a2[2] < a1[2])
      {
        v47 = *(a1 + 2);
        result = *(a1 + 12);
        v49 = *a1;
        v48 = *(a1 + 1);
        v50 = *(a2 + 3);
        v52 = *a2;
        v51 = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v50;
        *a1 = v52;
        *(a1 + 1) = v51;
        *a2 = v49;
        *(a2 + 1) = v48;
        *(a2 + 2) = v47;
        *(a2 + 3) = result;
      }
    }
  }

  result.n128_u32[0] = *(a5 + 2);
  if (result.n128_f32[0] < a4[2])
  {
    v53 = *(a4 + 2);
    result = *(a4 + 12);
    v55 = *a4;
    v54 = *(a4 + 1);
    v56 = a5[3];
    v58 = *a5;
    v57 = a5[1];
    *(a4 + 2) = a5[2];
    *(a4 + 3) = v56;
    *a4 = v58;
    *(a4 + 1) = v57;
    *a5 = v55;
    a5[1] = v54;
    a5[2] = v53;
    a5[3] = result;
    result.n128_f32[0] = a4[2];
    if (result.n128_f32[0] < a3[2])
    {
      v59 = *(a3 + 2);
      result = *(a3 + 12);
      v61 = *a3;
      v60 = *(a3 + 1);
      v62 = *(a4 + 3);
      v64 = *a4;
      v63 = *(a4 + 1);
      *(a3 + 2) = *(a4 + 2);
      *(a3 + 3) = v62;
      *a3 = v64;
      *(a3 + 1) = v63;
      *a4 = v61;
      *(a4 + 1) = v60;
      *(a4 + 2) = v59;
      *(a4 + 3) = result;
      result.n128_f32[0] = a3[2];
      if (result.n128_f32[0] < a2[2])
      {
        v65 = *(a2 + 2);
        result = *(a2 + 12);
        v67 = *a2;
        v66 = *(a2 + 1);
        v68 = *(a3 + 3);
        v70 = *a3;
        v69 = *(a3 + 1);
        *(a2 + 2) = *(a3 + 2);
        *(a2 + 3) = v68;
        *a2 = v70;
        *(a2 + 1) = v69;
        *a3 = v67;
        *(a3 + 1) = v66;
        *(a3 + 2) = v65;
        *(a3 + 3) = result;
        result.n128_f32[0] = a2[2];
        if (result.n128_f32[0] < a1[2])
        {
          v71 = *(a1 + 2);
          result = *(a1 + 12);
          v73 = *a1;
          v72 = *(a1 + 1);
          v74 = *(a2 + 3);
          v76 = *a2;
          v75 = *(a2 + 1);
          *(a1 + 2) = *(a2 + 2);
          *(a1 + 3) = v74;
          *a1 = v76;
          *(a1 + 1) = v75;
          *a2 = v73;
          *(a2 + 1) = v72;
          *(a2 + 2) = v71;
          *(a2 + 3) = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *>(float *a1, __int128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 6;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v12 = a2 - 4;
      v13 = a1[18];
      v14 = *(a2 - 14);
      if (v13 < a1[2])
      {
        if (v14 >= v13)
        {
          v73 = *(a1 + 2);
          v72 = *(a1 + 3);
          v75 = *a1;
          v74 = *(a1 + 1);
          v76 = *(a1 + 5);
          *a1 = *(a1 + 4);
          *(a1 + 1) = v76;
          v77 = *(a1 + 7);
          *(a1 + 2) = *(a1 + 6);
          *(a1 + 3) = v77;
          *(a1 + 4) = v75;
          *(a1 + 5) = v74;
          *(a1 + 6) = v73;
          *(a1 + 7) = v72;
          if (*(a2 - 14) >= a1[18])
          {
            return 1;
          }

          v16 = *(a1 + 6);
          v15 = *(a1 + 7);
          v18 = *(a1 + 4);
          v17 = *(a1 + 5);
          v78 = *(a2 - 1);
          v80 = *v12;
          v79 = *(a2 - 3);
          *(a1 + 6) = *(a2 - 2);
          *(a1 + 7) = v78;
          *(a1 + 4) = v80;
          *(a1 + 5) = v79;
        }

        else
        {
          v16 = *(a1 + 2);
          v15 = *(a1 + 3);
          v18 = *a1;
          v17 = *(a1 + 1);
          v19 = *(a2 - 1);
          v21 = *v12;
          v20 = *(a2 - 3);
          *(a1 + 2) = *(a2 - 2);
          *(a1 + 3) = v19;
          *a1 = v21;
          *(a1 + 1) = v20;
        }

        *v12 = v18;
        *(a2 - 3) = v17;
        result = 1;
        *(a2 - 2) = v16;
        *(a2 - 1) = v15;
        return result;
      }

      if (v14 >= v13)
      {
        return 1;
      }

      v42 = *(a1 + 6);
      v41 = *(a1 + 7);
      v44 = *(a1 + 4);
      v43 = *(a1 + 5);
      v45 = *(a2 - 1);
      v47 = *v12;
      v46 = *(a2 - 3);
      *(a1 + 6) = *(a2 - 2);
      *(a1 + 7) = v45;
      *(a1 + 4) = v47;
      *(a1 + 5) = v46;
      *v12 = v44;
      *(a2 - 3) = v43;
      *(a2 - 2) = v42;
      *(a2 - 1) = v41;
LABEL_50:
      if (a1[18] < a1[2])
      {
        v122 = *(a1 + 2);
        v121 = *(a1 + 3);
        v124 = *a1;
        v123 = *(a1 + 1);
        v125 = *(a1 + 5);
        *a1 = *(a1 + 4);
        *(a1 + 1) = v125;
        v126 = *(a1 + 7);
        *(a1 + 2) = *(a1 + 6);
        *(a1 + 3) = v126;
        *(a1 + 4) = v124;
        *(a1 + 5) = v123;
        *(a1 + 6) = v122;
        *(a1 + 7) = v121;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_0 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 4, a3);
      return 1;
    }

    v32 = a1[18];
    v33 = a1[2];
    v34 = a1[34];
    if (v32 >= v33)
    {
      if (v34 < v32)
      {
        v61 = *(a1 + 6);
        v60 = *(a1 + 7);
        v63 = *(a1 + 4);
        v62 = *(a1 + 5);
        v64 = *(a1 + 9);
        *(a1 + 4) = *(a1 + 8);
        *(a1 + 5) = v64;
        v65 = *(a1 + 11);
        *(a1 + 6) = *(a1 + 10);
        *(a1 + 7) = v65;
        *(a1 + 8) = v63;
        *(a1 + 9) = v62;
        *(a1 + 10) = v61;
        *(a1 + 11) = v60;
        if (a1[18] < v33)
        {
          v67 = *(a1 + 2);
          v66 = *(a1 + 3);
          v69 = *a1;
          v68 = *(a1 + 1);
          v70 = *(a1 + 5);
          *a1 = *(a1 + 4);
          *(a1 + 1) = v70;
          v71 = *(a1 + 7);
          *(a1 + 2) = *(a1 + 6);
          *(a1 + 3) = v71;
          *(a1 + 4) = v69;
          *(a1 + 5) = v68;
          *(a1 + 6) = v67;
          *(a1 + 7) = v66;
        }
      }

      goto LABEL_47;
    }

    if (v34 >= v32)
    {
      v100 = *(a1 + 2);
      v99 = *(a1 + 3);
      v102 = *a1;
      v101 = *(a1 + 1);
      v103 = *(a1 + 5);
      *a1 = *(a1 + 4);
      *(a1 + 1) = v103;
      v104 = *(a1 + 7);
      *(a1 + 2) = *(a1 + 6);
      *(a1 + 3) = v104;
      *(a1 + 4) = v102;
      *(a1 + 5) = v101;
      *(a1 + 6) = v100;
      *(a1 + 7) = v99;
      if (v34 >= a1[18])
      {
        goto LABEL_47;
      }

      v36 = *(a1 + 6);
      v35 = *(a1 + 7);
      v38 = *(a1 + 4);
      v37 = *(a1 + 5);
      v105 = *(a1 + 9);
      *(a1 + 4) = *(a1 + 8);
      *(a1 + 5) = v105;
      v106 = *(a1 + 11);
      *(a1 + 6) = *(a1 + 10);
      *(a1 + 7) = v106;
    }

    else
    {
      v36 = *(a1 + 2);
      v35 = *(a1 + 3);
      v38 = *a1;
      v37 = *(a1 + 1);
      v39 = *(a1 + 9);
      *a1 = *(a1 + 8);
      *(a1 + 1) = v39;
      v40 = *(a1 + 11);
      *(a1 + 2) = *(a1 + 10);
      *(a1 + 3) = v40;
    }

    *(a1 + 8) = v38;
    *(a1 + 9) = v37;
    *(a1 + 10) = v36;
    *(a1 + 11) = v35;
LABEL_47:
    if (*(a2 - 14) >= a1[34])
    {
      return 1;
    }

    v107 = a2 - 4;
    v109 = *(a1 + 10);
    v108 = *(a1 + 11);
    v111 = *(a1 + 8);
    v110 = *(a1 + 9);
    v112 = *(a2 - 1);
    v114 = *(a2 - 4);
    v113 = *(a2 - 3);
    *(a1 + 10) = *(a2 - 2);
    *(a1 + 11) = v112;
    *(a1 + 8) = v114;
    *(a1 + 9) = v113;
    *v107 = v111;
    v107[1] = v110;
    v107[2] = v109;
    v107[3] = v108;
    if (a1[34] >= a1[18])
    {
      return 1;
    }

    v116 = *(a1 + 6);
    v115 = *(a1 + 7);
    v118 = *(a1 + 4);
    v117 = *(a1 + 5);
    v119 = *(a1 + 9);
    *(a1 + 4) = *(a1 + 8);
    *(a1 + 5) = v119;
    v120 = *(a1 + 11);
    *(a1 + 6) = *(a1 + 10);
    *(a1 + 7) = v120;
    *(a1 + 8) = v118;
    *(a1 + 9) = v117;
    *(a1 + 10) = v116;
    *(a1 + 11) = v115;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 14) < a1[2])
    {
      v5 = *(a1 + 2);
      v4 = *(a1 + 3);
      v7 = *a1;
      v6 = *(a1 + 1);
      v8 = *(a2 - 1);
      v10 = *(a2 - 4);
      v9 = *(a2 - 3);
      *(a1 + 2) = *(a2 - 2);
      *(a1 + 3) = v8;
      *a1 = v10;
      *(a1 + 1) = v9;
      *(a2 - 4) = v7;
      *(a2 - 3) = v6;
      result = 1;
      *(a2 - 2) = v5;
      *(a2 - 1) = v4;
      return result;
    }

    return 1;
  }

LABEL_13:
  v22 = a1 + 32;
  v23 = a1[18];
  v24 = a1[2];
  v25 = a1[34];
  if (v23 >= v24)
  {
    if (v25 < v23)
    {
      v49 = *(a1 + 6);
      v48 = *(a1 + 7);
      v51 = *(a1 + 4);
      v50 = *(a1 + 5);
      v52 = *(a1 + 9);
      *(a1 + 4) = *v22;
      *(a1 + 5) = v52;
      v53 = *(a1 + 11);
      *(a1 + 6) = *(a1 + 10);
      *(a1 + 7) = v53;
      *v22 = v51;
      *(a1 + 9) = v50;
      *(a1 + 10) = v49;
      *(a1 + 11) = v48;
      if (a1[18] < v24)
      {
        v55 = *(a1 + 2);
        v54 = *(a1 + 3);
        v57 = *a1;
        v56 = *(a1 + 1);
        v58 = *(a1 + 5);
        *a1 = *(a1 + 4);
        *(a1 + 1) = v58;
        v59 = *(a1 + 7);
        *(a1 + 2) = *(a1 + 6);
        *(a1 + 3) = v59;
        *(a1 + 4) = v57;
        *(a1 + 5) = v56;
        *(a1 + 6) = v55;
        *(a1 + 7) = v54;
      }
    }
  }

  else
  {
    if (v25 >= v23)
    {
      v82 = *(a1 + 2);
      v81 = *(a1 + 3);
      v84 = *a1;
      v83 = *(a1 + 1);
      v85 = *(a1 + 5);
      *a1 = *(a1 + 4);
      *(a1 + 1) = v85;
      v86 = *(a1 + 7);
      *(a1 + 2) = *(a1 + 6);
      *(a1 + 3) = v86;
      *(a1 + 4) = v84;
      *(a1 + 5) = v83;
      *(a1 + 6) = v82;
      *(a1 + 7) = v81;
      if (v25 >= a1[18])
      {
        goto LABEL_33;
      }

      v27 = *(a1 + 6);
      v26 = *(a1 + 7);
      v29 = *(a1 + 4);
      v28 = *(a1 + 5);
      v87 = *(a1 + 9);
      *(a1 + 4) = *v22;
      *(a1 + 5) = v87;
      v88 = *(a1 + 11);
      *(a1 + 6) = *(a1 + 10);
      *(a1 + 7) = v88;
    }

    else
    {
      v27 = *(a1 + 2);
      v26 = *(a1 + 3);
      v29 = *a1;
      v28 = *(a1 + 1);
      v30 = *(a1 + 9);
      *a1 = *v22;
      *(a1 + 1) = v30;
      v31 = *(a1 + 11);
      *(a1 + 2) = *(a1 + 10);
      *(a1 + 3) = v31;
    }

    *v22 = v29;
    *(a1 + 9) = v28;
    *(a1 + 10) = v27;
    *(a1 + 11) = v26;
  }

LABEL_33:
  v89 = (a1 + 48);
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v90 = 0;
  v91 = 0;
  while (1)
  {
    v92 = *(v89 + 2);
    if (v92 < v22[2])
    {
      v93 = *v89;
      v127 = *(v89 + 12);
      v128 = *(v89 + 28);
      v129 = *(v89 + 44);
      v130 = *(v89 + 15);
      v94 = v90;
      while (1)
      {
        v95 = a1 + v94;
        v96 = *(a1 + v94 + 144);
        *(v95 + 192) = *(a1 + v94 + 128);
        *(v95 + 208) = v96;
        v97 = *(a1 + v94 + 176);
        *(v95 + 224) = *(a1 + v94 + 160);
        *(v95 + 240) = v97;
        if (v94 == -128)
        {
          break;
        }

        v94 -= 64;
        if (v92 >= *(v95 + 72))
        {
          v98 = a1 + v94 + 192;
          goto LABEL_41;
        }
      }

      v98 = a1;
LABEL_41:
      *v98 = v93;
      *(v98 + 8) = v92;
      *(v98 + 12) = v127;
      *(v98 + 28) = v128;
      *(v98 + 44) = v129;
      *(v98 + 60) = v130;
      if (++v91 == 8)
      {
        return v89 + 8 == a2;
      }
    }

    v22 = v89;
    v90 += 64;
    v89 += 8;
    if (v89 == a2)
    {
      return 1;
    }
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,false>(unint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 4;
  v10 = a2 - 8;
  v11 = a2 - 12;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 6;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v150 = a2[-4].n128_f32[0];
        v149 = a2 - 4;
        result.n128_f32[0] = v150;
        if (v150 >= *v12)
        {
          return result;
        }

LABEL_106:
        v343 = *(v12 + 32);
        v376 = *(v12 + 48);
        v279 = *v12;
        v312 = *(v12 + 16);
        v154 = *v149;
        v155 = v149[1];
        v156 = v149[3];
        *(v12 + 32) = v149[2];
        *(v12 + 48) = v156;
        *v12 = v154;
        *(v12 + 16) = v155;
        result = v279;
        v157 = v312;
        v158 = v343;
        v159 = v376;
LABEL_107:
        v149[2] = v158;
        v149[3] = v159;
        *v149 = result;
        v149[1] = v157;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v151 = (v12 + 64);
      v160 = *(v12 + 64);
      v161 = (v12 + 128);
      v162 = *(v12 + 128);
      if (v160 >= *v12)
      {
        if (v162 < v160)
        {
          v216 = *(v12 + 96);
          result = *(v12 + 112);
          v218 = *v151;
          v217 = *(v12 + 80);
          v219 = *(v12 + 144);
          *v151 = *v161;
          *(v12 + 80) = v219;
          v220 = *(v12 + 176);
          *(v12 + 96) = *(v12 + 160);
          *(v12 + 112) = v220;
          *v161 = v218;
          *(v12 + 144) = v217;
          *(v12 + 160) = v216;
          *(v12 + 176) = result;
          if (*(v12 + 64) < *v12)
          {
            v348 = *(v12 + 32);
            v380 = *(v12 + 48);
            v284 = *v12;
            v318 = *(v12 + 16);
            v221 = *(v12 + 80);
            *v12 = *v151;
            *(v12 + 16) = v221;
            v222 = *(v12 + 112);
            *(v12 + 32) = *(v12 + 96);
            *(v12 + 48) = v222;
            result = v284;
            *(v12 + 96) = v348;
            *(v12 + 112) = v380;
            *v151 = v284;
            *(v12 + 80) = v318;
          }
        }
      }

      else if (v162 >= v160)
      {
        v351 = *(v12 + 32);
        v382 = *(v12 + 48);
        v287 = *v12;
        v321 = *(v12 + 16);
        v233 = *(v12 + 80);
        *v12 = *v151;
        *(v12 + 16) = v233;
        v234 = *(v12 + 112);
        *(v12 + 32) = *(v12 + 96);
        *(v12 + 48) = v234;
        *(v12 + 96) = v351;
        *(v12 + 112) = v382;
        *v151 = v287;
        *(v12 + 80) = v321;
        if (v162 < *(v12 + 64))
        {
          v235 = *(v12 + 96);
          result = *(v12 + 112);
          v237 = *v151;
          v236 = *(v12 + 80);
          v238 = *(v12 + 144);
          *v151 = *v161;
          *(v12 + 80) = v238;
          v239 = *(v12 + 176);
          *(v12 + 96) = *(v12 + 160);
          *(v12 + 112) = v239;
          *v161 = v237;
          *(v12 + 144) = v236;
          *(v12 + 160) = v235;
          *(v12 + 176) = result;
        }
      }

      else
      {
        v344 = *(v12 + 32);
        v377 = *(v12 + 48);
        v280 = *v12;
        v313 = *(v12 + 16);
        v163 = *(v12 + 144);
        *v12 = *v161;
        *(v12 + 16) = v163;
        v164 = *(v12 + 176);
        *(v12 + 32) = *(v12 + 160);
        *(v12 + 48) = v164;
        result = v280;
        *(v12 + 160) = v344;
        *(v12 + 176) = v377;
        *v161 = v280;
        *(v12 + 144) = v313;
      }

      result.n128_u32[0] = v9->n128_u32[0];
      if (v9->n128_f32[0] >= v161->n128_f32[0])
      {
        return result;
      }

      result = *v161;
      v322 = *(v12 + 144);
      v240 = *(v12 + 160);
      v383 = *(v12 + 176);
      v242 = a2[-2];
      v241 = a2[-1];
      v243 = a2[-3];
      *v161 = *v9;
      *(v12 + 144) = v243;
      *(v12 + 160) = v242;
      *(v12 + 176) = v241;
      a2[-2] = v240;
      a2[-1] = v383;
      *v9 = result;
      a2[-3] = v322;
      result.n128_u32[0] = v161->n128_u32[0];
      if (v161->n128_f32[0] >= v151->n128_f32[0])
      {
        return result;
      }

      v244 = *(v12 + 96);
      result = *(v12 + 112);
      v246 = *v151;
      v245 = *(v12 + 80);
      v247 = *(v12 + 144);
      *v151 = *v161;
      *(v12 + 80) = v247;
      v248 = *(v12 + 176);
      *(v12 + 96) = *(v12 + 160);
      *(v12 + 112) = v248;
      *v161 = v246;
      *(v12 + 144) = v245;
      *(v12 + 160) = v244;
      *(v12 + 176) = result;
LABEL_179:
      result.n128_u32[0] = *(v12 + 64);
      if (result.n128_f32[0] < *v12)
      {
        v352 = *(v12 + 32);
        v384 = *(v12 + 48);
        v288 = *v12;
        v323 = *(v12 + 16);
        v249 = v151[1];
        *v12 = *v151;
        *(v12 + 16) = v249;
        v250 = v151[3];
        *(v12 + 32) = v151[2];
        *(v12 + 48) = v250;
        result = v288;
        v151[2] = v352;
        v151[3] = v384;
        *v151 = v288;
        v151[1] = v323;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,0>(v12, (v12 + 64), (v12 + 128), (v12 + 192), a2 - 4, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v165 = (v12 + 64);
      v167 = v12 == a2 || v165 == a2;
      if (a4)
      {
        if (!v167)
        {
          v168 = 0;
          v169 = v12;
          do
          {
            v170 = v165;
            result.n128_u32[0] = *(v169 + 64);
            if (result.n128_f32[0] < *v169)
            {
              v281 = *(v169 + 68);
              v314 = *(v169 + 84);
              *v345 = *(v169 + 100);
              *&v345[12] = *(v169 + 112);
              v171 = v168;
              while (1)
              {
                v172 = (v12 + v171);
                v173 = *(v12 + v171 + 16);
                *(v172 + 4) = *(v12 + v171);
                *(v172 + 5) = v173;
                v174 = *(v12 + v171 + 48);
                *(v172 + 6) = *(v12 + v171 + 32);
                *(v172 + 7) = v174;
                if (!v171)
                {
                  break;
                }

                v171 -= 64;
                if (result.n128_f32[0] >= *(v172 - 16))
                {
                  v175 = v12 + v171 + 64;
                  goto LABEL_126;
                }
              }

              v175 = v12;
LABEL_126:
              *v175 = result.n128_u32[0];
              result = v281;
              *(v175 + 48) = *&v345[12];
              *(v175 + 36) = *v345;
              *(v175 + 20) = v314;
              *(v175 + 4) = v281;
            }

            v165 = v170 + 4;
            v168 += 64;
            v169 = v170;
          }

          while (&v170[4] != a2);
        }
      }

      else if (!v167)
      {
        do
        {
          v223 = v165;
          result.n128_u32[0] = *(a1 + 64);
          if (result.n128_f32[0] < *a1)
          {
            v285 = *(a1 + 68);
            v319 = *(a1 + 84);
            *v349 = *(a1 + 100);
            *&v349[12] = *(a1 + 112);
            v224 = v165;
            do
            {
              v225 = v224[-3];
              *v224 = v224[-4];
              v224[1] = v225;
              v226 = v224[-1];
              v224[2] = v224[-2];
              v224[3] = v226;
              v227 = v224[-8].n128_f32[0];
              v224 -= 4;
            }

            while (result.n128_f32[0] < v227);
            v224->n128_u32[0] = result.n128_u32[0];
            result = v285;
            v224[3] = *&v349[12];
            *(v224 + 36) = *v349;
            *(v224 + 20) = v319;
            *(v224 + 4) = v285;
          }

          v165 += 4;
          a1 = v223;
        }

        while (&v223[4] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v176 = (v13 - 2) >> 1;
        v177 = v176;
        do
        {
          v178 = v177;
          if (v176 >= v177)
          {
            v179 = (2 * v177) | 1;
            v180 = v12 + (v179 << 6);
            if (2 * v178 + 2 < v13 && *v180 < *(v180 + 64))
            {
              v180 += 64;
              v179 = 2 * v178 + 2;
            }

            v181 = v12 + (v178 << 6);
            v182 = *v181;
            if (*v180 >= *v181)
            {
              *&v346[12] = *(v181 + 48);
              v315 = *(v181 + 20);
              *v346 = *(v181 + 36);
              v282 = *(v181 + 4);
              do
              {
                v183 = v181;
                v181 = v180;
                v184 = *v180;
                v185 = *(v180 + 16);
                v186 = *(v180 + 48);
                v183[2] = *(v180 + 32);
                v183[3] = v186;
                *v183 = v184;
                v183[1] = v185;
                if (v176 < v179)
                {
                  break;
                }

                v187 = 2 * v179;
                v179 = (2 * v179) | 1;
                v180 = v12 + (v179 << 6);
                v188 = v187 + 2;
                if (v188 < v13 && *v180 < *(v180 + 64))
                {
                  v180 += 64;
                  v179 = v188;
                }
              }

              while (*v180 >= v182);
              *v181 = v182;
              *(v181 + 48) = *&v346[12];
              *(v181 + 36) = *v346;
              *(v181 + 20) = v315;
              *(v181 + 4) = v282;
            }
          }

          v177 = v178 - 1;
        }

        while (v178);
        do
        {
          v189 = 0;
          v347 = *(v12 + 32);
          v378 = *(v12 + 48);
          v283 = *v12;
          v316 = *(v12 + 16);
          v190 = v12;
          do
          {
            v191 = v190;
            v192 = &v190[4 * v189];
            v190 = v192 + 4;
            v193 = 2 * v189;
            v189 = (2 * v189) | 1;
            v194 = v193 + 2;
            if (v194 < v13)
            {
              v196 = v192[8].n128_f32[0];
              v195 = v192 + 8;
              if (v195[-4].n128_f32[0] < v196)
              {
                v190 = v195;
                v189 = v194;
              }
            }

            v197 = *v190;
            v198 = v190[1];
            v199 = v190[3];
            v191[2] = v190[2];
            v191[3] = v199;
            *v191 = v197;
            v191[1] = v198;
          }

          while (v189 <= ((v13 - 2) >> 1));
          a2 -= 4;
          if (v190 == a2)
          {
            result = v283;
            v190[2] = v347;
            v190[3] = v378;
            *v190 = v283;
            v190[1] = v316;
          }

          else
          {
            v200 = *a2;
            v201 = a2[1];
            v202 = a2[3];
            v190[2] = a2[2];
            v190[3] = v202;
            *v190 = v200;
            v190[1] = v201;
            result = v283;
            a2[2] = v347;
            a2[3] = v378;
            *a2 = v283;
            a2[1] = v316;
            v203 = (&v190[4] - v12) >> 6;
            v204 = v203 < 2;
            v205 = v203 - 2;
            if (!v204)
            {
              v206 = v205 >> 1;
              v207 = (v12 + (v206 << 6));
              result.n128_u32[0] = v190->n128_u32[0];
              if (v207->n128_f32[0] < v190->n128_f32[0])
              {
                *&v259[12] = v190[3];
                v256 = *(v190 + 20);
                *v259 = *(v190 + 36);
                v253 = *(v190 + 4);
                do
                {
                  v208 = v190;
                  v190 = v207;
                  v209 = *v207;
                  v210 = v207[1];
                  v211 = v207[3];
                  v208[2] = v207[2];
                  v208[3] = v211;
                  *v208 = v209;
                  v208[1] = v210;
                  if (!v206)
                  {
                    break;
                  }

                  v206 = (v206 - 1) >> 1;
                  v207 = (v12 + (v206 << 6));
                }

                while (v207->n128_f32[0] < result.n128_f32[0]);
                v190->n128_u32[0] = result.n128_u32[0];
                result = v253;
                v190[3] = *&v259[12];
                *(v190 + 36) = *v259;
                *(v190 + 20) = v256;
                *(v190 + 4) = v253;
              }
            }
          }

          v204 = v13-- <= 2;
        }

        while (!v204);
      }

      return result;
    }

    v14 = (v12 + (v13 >> 1 << 6));
    v15 = v14;
    v16 = v9->n128_f32[0];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_f32[0];
      if (v14->n128_f32[0] >= *v12)
      {
        if (v16 < v17)
        {
          v326 = v14[2];
          v355 = v14[3];
          v262 = *v14;
          v291 = v14[1];
          v25 = *v9;
          v26 = a2[-3];
          v27 = a2[-1];
          v14[2] = a2[-2];
          v14[3] = v27;
          *v14 = v25;
          v14[1] = v26;
          a2[-2] = v326;
          a2[-1] = v355;
          *v9 = v262;
          a2[-3] = v291;
          if (v14->n128_f32[0] < *v12)
          {
            v327 = *(v12 + 32);
            v356 = *(v12 + 48);
            v263 = *v12;
            v292 = *(v12 + 16);
            v28 = *v14;
            v29 = v14[1];
            v30 = v14[3];
            *(v12 + 32) = v14[2];
            *(v12 + 48) = v30;
            *v12 = v28;
            *(v12 + 16) = v29;
            v14[2] = v327;
            v14[3] = v356;
            *v14 = v263;
            v14[1] = v292;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v324 = *(v12 + 32);
          v353 = *(v12 + 48);
          v260 = *v12;
          v289 = *(v12 + 16);
          v18 = *v9;
          v19 = a2[-3];
          v20 = a2[-1];
          *(v12 + 32) = a2[-2];
          *(v12 + 48) = v20;
          *v12 = v18;
          *(v12 + 16) = v19;
          goto LABEL_26;
        }

        v330 = *(v12 + 32);
        v359 = *(v12 + 48);
        v266 = *v12;
        v295 = *(v12 + 16);
        v37 = *v14;
        v38 = v14[1];
        v39 = v14[3];
        *(v12 + 32) = v14[2];
        *(v12 + 48) = v39;
        *v12 = v37;
        *(v12 + 16) = v38;
        v14[2] = v330;
        v14[3] = v359;
        *v14 = v266;
        v14[1] = v295;
        if (v9->n128_f32[0] < v14->n128_f32[0])
        {
          v324 = v14[2];
          v353 = v14[3];
          v260 = *v14;
          v289 = v14[1];
          v40 = *v9;
          v41 = a2[-3];
          v42 = a2[-1];
          v14[2] = a2[-2];
          v14[3] = v42;
          *v14 = v40;
          v14[1] = v41;
LABEL_26:
          a2[-2] = v324;
          a2[-1] = v353;
          *v9 = v260;
          a2[-3] = v289;
        }
      }

      v43 = (v12 + 64);
      v44 = v14 - 4;
      v45 = v14[-4].n128_f32[0];
      v46 = v10->n128_f32[0];
      if (v45 >= *(v12 + 64))
      {
        if (v46 < v45)
        {
          v331 = v14[-2];
          v360 = v14[-1];
          v267 = *v44;
          v296 = v14[-3];
          v54 = *v10;
          v55 = a2[-7];
          v56 = a2[-5];
          v14[-2] = a2[-6];
          v14[-1] = v56;
          *v44 = v54;
          v14[-3] = v55;
          a2[-6] = v331;
          a2[-5] = v360;
          *v10 = v267;
          a2[-7] = v296;
          if (v44->n128_f32[0] < v43->n128_f32[0])
          {
            v57 = *v43;
            v297 = *(v12 + 80);
            v58 = *(v12 + 96);
            v361 = *(v12 + 112);
            v60 = v14[-2];
            v59 = v14[-1];
            v61 = v14[-3];
            *v43 = *v44;
            *(v12 + 80) = v61;
            *(v12 + 96) = v60;
            *(v12 + 112) = v59;
            v14[-2] = v58;
            v14[-1] = v361;
            *v44 = v57;
            v14[-3] = v297;
          }
        }
      }

      else
      {
        if (v46 < v45)
        {
          v47 = *v43;
          v48 = *(v12 + 80);
          v49 = *(v12 + 96);
          v50 = *(v12 + 112);
          v52 = a2[-6];
          v51 = a2[-5];
          v53 = a2[-7];
          *v43 = *v10;
          *(v12 + 80) = v53;
          *(v12 + 96) = v52;
          *(v12 + 112) = v51;
          goto LABEL_38;
        }

        v68 = *v43;
        v299 = *(v12 + 80);
        v69 = *(v12 + 96);
        v363 = *(v12 + 112);
        v71 = v14[-2];
        v70 = v14[-1];
        v72 = v14[-3];
        *v43 = *v44;
        *(v12 + 80) = v72;
        *(v12 + 96) = v71;
        *(v12 + 112) = v70;
        v14[-2] = v69;
        v14[-1] = v363;
        *v44 = v68;
        v14[-3] = v299;
        if (v10->n128_f32[0] < v44->n128_f32[0])
        {
          v333 = v14[-2];
          v364 = v14[-1];
          v269 = *v44;
          v300 = v14[-3];
          v73 = *v10;
          v74 = a2[-7];
          v75 = a2[-5];
          v14[-2] = a2[-6];
          v14[-1] = v75;
          *v44 = v73;
          v14[-3] = v74;
          v47 = v269;
          v48 = v300;
          v49 = v333;
          v50 = v364;
LABEL_38:
          a2[-6] = v49;
          a2[-5] = v50;
          *v10 = v47;
          a2[-7] = v48;
        }
      }

      v76 = (v12 + 128);
      v78 = v14[4].n128_f32[0];
      v77 = v14 + 4;
      v79 = v78;
      v80 = v11->n128_f32[0];
      if (v78 >= *(v12 + 128))
      {
        if (v80 < v79)
        {
          v334 = v77[2];
          v365 = v77[3];
          v270 = *v77;
          v301 = v77[1];
          v88 = *v11;
          v89 = a2[-11];
          v90 = a2[-9];
          v77[2] = a2[-10];
          v77[3] = v90;
          *v77 = v88;
          v77[1] = v89;
          a2[-10] = v334;
          a2[-9] = v365;
          *v11 = v270;
          a2[-11] = v301;
          if (v77->n128_f32[0] < v76->n128_f32[0])
          {
            v91 = *v76;
            v302 = *(v12 + 144);
            v92 = *(v12 + 160);
            v366 = *(v12 + 176);
            v94 = v77[2];
            v93 = v77[3];
            v95 = v77[1];
            *v76 = *v77;
            *(v12 + 144) = v95;
            *(v12 + 160) = v94;
            *(v12 + 176) = v93;
            v77[2] = v92;
            v77[3] = v366;
            *v77 = v91;
            v77[1] = v302;
          }
        }
      }

      else
      {
        if (v80 < v79)
        {
          v81 = *v76;
          v82 = *(v12 + 144);
          v83 = *(v12 + 160);
          v84 = *(v12 + 176);
          v86 = a2[-10];
          v85 = a2[-9];
          v87 = a2[-11];
          *v76 = *v11;
          *(v12 + 144) = v87;
          *(v12 + 160) = v86;
          *(v12 + 176) = v85;
          goto LABEL_47;
        }

        v96 = *v76;
        v303 = *(v12 + 144);
        v97 = *(v12 + 160);
        v367 = *(v12 + 176);
        v99 = v77[2];
        v98 = v77[3];
        v100 = v77[1];
        *v76 = *v77;
        *(v12 + 144) = v100;
        *(v12 + 160) = v99;
        *(v12 + 176) = v98;
        v77[2] = v97;
        v77[3] = v367;
        *v77 = v96;
        v77[1] = v303;
        if (v11->n128_f32[0] < v77->n128_f32[0])
        {
          v335 = v77[2];
          v368 = v77[3];
          v271 = *v77;
          v304 = v77[1];
          v101 = *v11;
          v102 = a2[-11];
          v103 = a2[-9];
          v77[2] = a2[-10];
          v77[3] = v103;
          *v77 = v101;
          v77[1] = v102;
          v81 = v271;
          v82 = v304;
          v83 = v335;
          v84 = v368;
LABEL_47:
          a2[-10] = v83;
          a2[-9] = v84;
          *v11 = v81;
          a2[-11] = v82;
        }
      }

      v104 = v15->n128_f32[0];
      v105 = v77->n128_f32[0];
      if (v15->n128_f32[0] >= v44->n128_f32[0])
      {
        if (v105 < v104)
        {
          v337 = v15[2];
          v370 = v15[3];
          v273 = *v15;
          v306 = v15[1];
          v108 = v77[1];
          *v15 = *v77;
          v15[1] = v108;
          v109 = v77[3];
          v15[2] = v77[2];
          v15[3] = v109;
          v77[2] = v337;
          v77[3] = v370;
          *v77 = v273;
          v77[1] = v306;
          if (v15->n128_f32[0] < v44->n128_f32[0])
          {
            v338 = v44[2];
            v371 = v44[3];
            v274 = *v44;
            v307 = v44[1];
            v110 = v15[1];
            *v44 = *v15;
            v44[1] = v110;
            v111 = v15[3];
            v44[2] = v15[2];
            v44[3] = v111;
            v15[2] = v338;
            v15[3] = v371;
            *v15 = v274;
            v15[1] = v307;
          }
        }
      }

      else
      {
        if (v105 < v104)
        {
          v336 = v44[2];
          v369 = v44[3];
          v272 = *v44;
          v305 = v44[1];
          v106 = v77[1];
          *v44 = *v77;
          v44[1] = v106;
          v107 = v77[3];
          v44[2] = v77[2];
          v44[3] = v107;
          goto LABEL_56;
        }

        v339 = v44[2];
        v372 = v44[3];
        v275 = *v44;
        v308 = v44[1];
        v112 = v15[1];
        *v44 = *v15;
        v44[1] = v112;
        v113 = v15[3];
        v44[2] = v15[2];
        v44[3] = v113;
        v15[2] = v339;
        v15[3] = v372;
        *v15 = v275;
        v15[1] = v308;
        if (v77->n128_f32[0] < v15->n128_f32[0])
        {
          v336 = v15[2];
          v369 = v15[3];
          v272 = *v15;
          v305 = v15[1];
          v114 = v77[1];
          *v15 = *v77;
          v15[1] = v114;
          v115 = v77[3];
          v15[2] = v77[2];
          v15[3] = v115;
LABEL_56:
          v77[2] = v336;
          v77[3] = v369;
          *v77 = v272;
          v77[1] = v305;
        }
      }

      v340 = *(v12 + 32);
      v373 = *(v12 + 48);
      v276 = *v12;
      v309 = *(v12 + 16);
      v116 = *v15;
      v117 = v15[1];
      v118 = v15[3];
      *(v12 + 32) = v15[2];
      *(v12 + 48) = v118;
      *v12 = v116;
      *(v12 + 16) = v117;
      v15[2] = v340;
      v15[3] = v373;
      *v15 = v276;
      v15[1] = v309;
      goto LABEL_58;
    }

    v21 = *v12;
    if (*v12 >= v14->n128_f32[0])
    {
      if (v16 < v21)
      {
        v328 = *(v12 + 32);
        v357 = *(v12 + 48);
        v264 = *v12;
        v293 = *(v12 + 16);
        v31 = *v9;
        v32 = a2[-3];
        v33 = a2[-1];
        *(v12 + 32) = a2[-2];
        *(v12 + 48) = v33;
        *v12 = v31;
        *(v12 + 16) = v32;
        a2[-2] = v328;
        a2[-1] = v357;
        *v9 = v264;
        a2[-3] = v293;
        if (*v12 < v14->n128_f32[0])
        {
          v329 = v14[2];
          v358 = v14[3];
          v265 = *v14;
          v294 = v14[1];
          v34 = *v12;
          v35 = *(v12 + 16);
          v36 = *(v12 + 48);
          v14[2] = *(v12 + 32);
          v14[3] = v36;
          *v14 = v34;
          v14[1] = v35;
          *(v12 + 32) = v329;
          *(v12 + 48) = v358;
          *v12 = v265;
          *(v12 + 16) = v294;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v21)
    {
      v332 = v14[2];
      v362 = v14[3];
      v268 = *v14;
      v298 = v14[1];
      v62 = *v12;
      v63 = *(v12 + 16);
      v64 = *(v12 + 48);
      v14[2] = *(v12 + 32);
      v14[3] = v64;
      *v14 = v62;
      v14[1] = v63;
      *(v12 + 32) = v332;
      *(v12 + 48) = v362;
      *v12 = v268;
      *(v12 + 16) = v298;
      if (v9->n128_f32[0] >= *v12)
      {
        goto LABEL_58;
      }

      v325 = *(v12 + 32);
      v354 = *(v12 + 48);
      v261 = *v12;
      v290 = *(v12 + 16);
      v65 = *v9;
      v66 = a2[-3];
      v67 = a2[-1];
      *(v12 + 32) = a2[-2];
      *(v12 + 48) = v67;
      *v12 = v65;
      *(v12 + 16) = v66;
    }

    else
    {
      v325 = v14[2];
      v354 = v14[3];
      v261 = *v14;
      v290 = v14[1];
      v22 = *v9;
      v23 = a2[-3];
      v24 = a2[-1];
      v14[2] = a2[-2];
      v14[3] = v24;
      *v14 = v22;
      v14[1] = v23;
    }

    a2[-2] = v325;
    a2[-1] = v354;
    *v9 = v261;
    a2[-3] = v290;
LABEL_58:
    --a3;
    v119 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 64) < v119)
    {
      v120 = 0;
      *&v257[12] = *(v12 + 48);
      v254 = *(v12 + 20);
      *v257 = *(v12 + 36);
      v251 = *(v12 + 4);
      do
      {
        v121 = *(v12 + v120 + 64);
        v120 += 64;
      }

      while (v121 < v119);
      v122 = v12 + v120;
      v123 = a2;
      if (v120 == 64)
      {
        v123 = a2;
        do
        {
          if (v122 >= v123)
          {
            break;
          }

          v125 = v123[-4].n128_f32[0];
          v123 -= 4;
        }

        while (v125 >= v119);
      }

      else
      {
        do
        {
          v124 = v123[-4].n128_f32[0];
          v123 -= 4;
        }

        while (v124 >= v119);
      }

      v12 += v120;
      if (v122 < v123)
      {
        v126 = v123;
        do
        {
          v341 = *(v12 + 32);
          v374 = *(v12 + 48);
          v277 = *v12;
          v310 = *(v12 + 16);
          v127 = *v126;
          v128 = v126[1];
          v129 = v126[3];
          *(v12 + 32) = v126[2];
          *(v12 + 48) = v129;
          *v12 = v127;
          *(v12 + 16) = v128;
          v126[2] = v341;
          v126[3] = v374;
          *v126 = v277;
          v126[1] = v310;
          do
          {
            v130 = *(v12 + 64);
            v12 += 64;
          }

          while (v130 < v119);
          do
          {
            v131 = v126[-4].n128_f32[0];
            v126 -= 4;
          }

          while (v131 >= v119);
        }

        while (v12 < v126);
      }

      if (v12 - 64 != a1)
      {
        v132 = *(v12 - 64);
        v133 = *(v12 - 48);
        v134 = *(v12 - 16);
        *(a1 + 32) = *(v12 - 32);
        *(a1 + 48) = v134;
        *a1 = v132;
        *(a1 + 16) = v133;
      }

      *(v12 - 64) = v119;
      result = v251;
      *(v12 - 16) = *&v257[12];
      *(v12 - 28) = *v257;
      *(v12 - 44) = v254;
      *(v12 - 60) = v251;
      if (v122 < v123)
      {
        goto LABEL_79;
      }

      v135 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *>(a1, v12 - 64, v251);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *>(v12, a2, v136))
      {
        a2 = (v12 - 64);
        if (!v135)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v135)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,false>(a1, (v12 - 64), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      *&v258[12] = *(v12 + 48);
      v255 = *(v12 + 20);
      *v258 = *(v12 + 36);
      v252 = *(v12 + 4);
      if (v119 >= v9->n128_f32[0])
      {
        v138 = v12 + 64;
        do
        {
          v12 = v138;
          if (v138 >= a2)
          {
            break;
          }

          v138 += 64;
        }

        while (v119 >= *v12);
      }

      else
      {
        do
        {
          v137 = *(v12 + 64);
          v12 += 64;
        }

        while (v119 >= v137);
      }

      v139 = a2;
      if (v12 < a2)
      {
        v139 = a2;
        do
        {
          v140 = v139[-4].n128_f32[0];
          v139 -= 4;
        }

        while (v119 < v140);
      }

      while (v12 < v139)
      {
        v342 = *(v12 + 32);
        v375 = *(v12 + 48);
        v278 = *v12;
        v311 = *(v12 + 16);
        v141 = *v139;
        v142 = v139[1];
        v143 = v139[3];
        *(v12 + 32) = v139[2];
        *(v12 + 48) = v143;
        *v12 = v141;
        *(v12 + 16) = v142;
        v139[2] = v342;
        v139[3] = v375;
        *v139 = v278;
        v139[1] = v311;
        do
        {
          v144 = *(v12 + 64);
          v12 += 64;
        }

        while (v119 >= v144);
        do
        {
          v145 = v139[-4].n128_f32[0];
          v139 -= 4;
        }

        while (v119 < v145);
      }

      if (v12 - 64 != a1)
      {
        v146 = *(v12 - 64);
        v147 = *(v12 - 48);
        v148 = *(v12 - 16);
        *(a1 + 32) = *(v12 - 32);
        *(a1 + 48) = v148;
        *a1 = v146;
        *(a1 + 16) = v147;
      }

      a4 = 0;
      *(v12 - 64) = v119;
      result = v252;
      *(v12 - 16) = *&v258[12];
      *(v12 - 28) = *v258;
      *(v12 - 44) = v255;
      *(v12 - 60) = v252;
    }
  }

  v151 = (v12 + 64);
  result.n128_u32[0] = *(v12 + 64);
  v152 = a2[-4].n128_u32[0];
  v149 = a2 - 4;
  v153 = *&v152;
  if (result.n128_f32[0] >= *v12)
  {
    if (v153 >= result.n128_f32[0])
    {
      return result;
    }

    result = *v151;
    v317 = *(v12 + 80);
    v212 = *(v12 + 96);
    v379 = *(v12 + 112);
    v214 = v149[2];
    v213 = v149[3];
    v215 = v149[1];
    *v151 = *v149;
    *(v12 + 80) = v215;
    *(v12 + 96) = v214;
    *(v12 + 112) = v213;
    v149[2] = v212;
    v149[3] = v379;
    *v149 = result;
    v149[1] = v317;
    goto LABEL_179;
  }

  if (v153 < result.n128_f32[0])
  {
    goto LABEL_106;
  }

  v350 = *(v12 + 32);
  v381 = *(v12 + 48);
  v286 = *v12;
  v320 = *(v12 + 16);
  v228 = *(v12 + 80);
  *v12 = *v151;
  *(v12 + 16) = v228;
  v229 = *(v12 + 112);
  *(v12 + 32) = *(v12 + 96);
  *(v12 + 48) = v229;
  result = v286;
  *(v12 + 96) = v350;
  *(v12 + 112) = v381;
  *v151 = v286;
  *(v12 + 80) = v320;
  result.n128_u32[0] = v149->n128_u32[0];
  if (v149->n128_f32[0] < *(v12 + 64))
  {
    result = *v151;
    v157 = *(v12 + 80);
    v158 = *(v12 + 96);
    v159 = *(v12 + 112);
    v231 = v149[2];
    v230 = v149[3];
    v232 = v149[1];
    *v151 = *v149;
    *(v12 + 80) = v232;
    *(v12 + 96) = v231;
    *(v12 + 112) = v230;
    goto LABEL_107;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,0>(__n128 *a1, float *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = *a2;
  v7 = a3->n128_f32[0];
  if (*a2 >= a1->n128_f32[0])
  {
    if (v7 < v6)
    {
      v14 = *(a2 + 8);
      result = *(a2 + 12);
      v16 = *a2;
      v15 = *(a2 + 4);
      v17 = a3[3];
      v19 = *a3;
      v18 = a3[1];
      *(a2 + 2) = a3[2];
      *(a2 + 3) = v17;
      *a2 = v19;
      *(a2 + 1) = v18;
      *a3 = v16;
      a3[1] = v15;
      a3[2] = v14;
      a3[3] = result;
      if (*a2 < a1->n128_f32[0])
      {
        v20 = a1[2];
        result = a1[3];
        v22 = *a1;
        v21 = a1[1];
        v23 = *(a2 + 3);
        v25 = *a2;
        v24 = *(a2 + 1);
        a1[2] = *(a2 + 8);
        a1[3] = v23;
        *a1 = v25;
        a1[1] = v24;
        *a2 = v22;
        *(a2 + 1) = v21;
        *(a2 + 2) = v20;
        *(a2 + 3) = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[2];
      result = a1[3];
      v10 = *a1;
      v9 = a1[1];
      v11 = a3[3];
      v13 = *a3;
      v12 = a3[1];
      a1[2] = a3[2];
      a1[3] = v11;
      *a1 = v13;
      a1[1] = v12;
LABEL_9:
      *a3 = v10;
      a3[1] = v9;
      a3[2] = v8;
      a3[3] = result;
      goto LABEL_10;
    }

    v26 = a1[2];
    result = a1[3];
    v28 = *a1;
    v27 = a1[1];
    v29 = *(a2 + 3);
    v31 = *a2;
    v30 = *(a2 + 1);
    a1[2] = *(a2 + 8);
    a1[3] = v29;
    *a1 = v31;
    a1[1] = v30;
    *a2 = v28;
    *(a2 + 1) = v27;
    *(a2 + 2) = v26;
    *(a2 + 3) = result;
    if (a3->n128_f32[0] < *a2)
    {
      v8 = *(a2 + 2);
      result = *(a2 + 12);
      v10 = *a2;
      v9 = *(a2 + 1);
      v32 = a3[3];
      v34 = *a3;
      v33 = a3[1];
      *(a2 + 2) = a3[2];
      *(a2 + 3) = v32;
      *a2 = v34;
      *(a2 + 1) = v33;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f32[0] < a3->n128_f32[0])
  {
    v35 = a3[2];
    result = a3[3];
    v37 = *a3;
    v36 = a3[1];
    v38 = a4[3];
    v40 = *a4;
    v39 = a4[1];
    a3[2] = a4[2];
    a3[3] = v38;
    *a3 = v40;
    a3[1] = v39;
    *a4 = v37;
    a4[1] = v36;
    a4[2] = v35;
    a4[3] = result;
    if (a3->n128_f32[0] < *a2)
    {
      v41 = *(a2 + 8);
      result = *(a2 + 12);
      v43 = *a2;
      v42 = *(a2 + 4);
      v44 = a3[3];
      v46 = *a3;
      v45 = a3[1];
      *(a2 + 2) = a3[2];
      *(a2 + 3) = v44;
      *a2 = v46;
      *(a2 + 1) = v45;
      *a3 = v43;
      a3[1] = v42;
      a3[2] = v41;
      a3[3] = result;
      if (*a2 < a1->n128_f32[0])
      {
        v47 = a1[2];
        result = a1[3];
        v49 = *a1;
        v48 = a1[1];
        v50 = *(a2 + 3);
        v52 = *a2;
        v51 = *(a2 + 1);
        a1[2] = *(a2 + 8);
        a1[3] = v50;
        *a1 = v52;
        a1[1] = v51;
        *a2 = v49;
        *(a2 + 1) = v48;
        *(a2 + 2) = v47;
        *(a2 + 3) = result;
      }
    }
  }

  result.n128_u32[0] = a5->n128_u32[0];
  if (a5->n128_f32[0] < a4->n128_f32[0])
  {
    v53 = a4[2];
    result = a4[3];
    v55 = *a4;
    v54 = a4[1];
    v56 = a5[3];
    v58 = *a5;
    v57 = a5[1];
    a4[2] = a5[2];
    a4[3] = v56;
    *a4 = v58;
    a4[1] = v57;
    *a5 = v55;
    a5[1] = v54;
    a5[2] = v53;
    a5[3] = result;
    result.n128_u32[0] = a4->n128_u32[0];
    if (a4->n128_f32[0] < a3->n128_f32[0])
    {
      v59 = a3[2];
      result = a3[3];
      v61 = *a3;
      v60 = a3[1];
      v62 = a4[3];
      v64 = *a4;
      v63 = a4[1];
      a3[2] = a4[2];
      a3[3] = v62;
      *a3 = v64;
      a3[1] = v63;
      *a4 = v61;
      a4[1] = v60;
      a4[2] = v59;
      a4[3] = result;
      result.n128_u32[0] = a3->n128_u32[0];
      if (a3->n128_f32[0] < *a2)
      {
        v65 = *(a2 + 8);
        result = *(a2 + 12);
        v67 = *a2;
        v66 = *(a2 + 4);
        v68 = a3[3];
        v70 = *a3;
        v69 = a3[1];
        *(a2 + 2) = a3[2];
        *(a2 + 3) = v68;
        *a2 = v70;
        *(a2 + 1) = v69;
        *a3 = v67;
        a3[1] = v66;
        a3[2] = v65;
        a3[3] = result;
        result.n128_f32[0] = *a2;
        if (*a2 < a1->n128_f32[0])
        {
          v71 = a1[2];
          result = a1[3];
          v73 = *a1;
          v72 = a1[1];
          v74 = *(a2 + 3);
          v76 = *a2;
          v75 = *(a2 + 1);
          a1[2] = *(a2 + 8);
          a1[3] = v74;
          *a1 = v76;
          a1[1] = v75;
          *a2 = v73;
          *(a2 + 1) = v72;
          *(a2 + 2) = v71;
          *(a2 + 3) = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 6;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 64);
      v7 = *(a1 + 64);
      v8 = *(a2 - 64);
      v4 = (a2 - 64);
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 < v7)
        {
LABEL_12:
          v11 = *(a1 + 32);
          v10 = *(a1 + 48);
          v13 = *a1;
          v12 = *(a1 + 16);
          v14 = v4[3];
          v16 = *v4;
          v15 = v4[1];
          *(a1 + 32) = v4[2];
          *(a1 + 48) = v14;
          *a1 = v16;
          *(a1 + 16) = v15;
LABEL_13:
          *v4 = v13;
          v4[1] = v12;
          result = 1;
          v4[2] = v11;
          v4[3] = v10;
          return result;
        }

        v72 = *(a1 + 32);
        v71 = *(a1 + 48);
        v74 = *a1;
        v73 = *(a1 + 16);
        v75 = *(a1 + 80);
        *a1 = *v6;
        *(a1 + 16) = v75;
        v76 = *(a1 + 112);
        *(a1 + 32) = *(a1 + 96);
        *(a1 + 48) = v76;
        *v6 = v74;
        *(a1 + 80) = v73;
        *(a1 + 96) = v72;
        *(a1 + 112) = v71;
        if (v4->n128_f32[0] < *(a1 + 64))
        {
          v11 = *(a1 + 96);
          v10 = *(a1 + 112);
          v13 = *v6;
          v12 = *(a1 + 80);
          v77 = v4[3];
          v79 = *v4;
          v78 = v4[1];
          *(a1 + 96) = v4[2];
          *(a1 + 112) = v77;
          *v6 = v79;
          *(a1 + 80) = v78;
          goto LABEL_13;
        }

        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v41 = *(a1 + 96);
      v40 = *(a1 + 112);
      v43 = *v6;
      v42 = *(a1 + 80);
      v44 = v4[3];
      v46 = *v4;
      v45 = v4[1];
      *(a1 + 96) = v4[2];
      *(a1 + 112) = v44;
      *v6 = v46;
      *(a1 + 80) = v45;
      *v4 = v43;
      v4[1] = v42;
      v4[2] = v41;
      v4[3] = v40;
LABEL_50:
      if (*(a1 + 64) < *a1)
      {
        v119 = *(a1 + 32);
        v118 = *(a1 + 48);
        v121 = *a1;
        v120 = *(a1 + 16);
        v122 = v6[1];
        *a1 = *v6;
        *(a1 + 16) = v122;
        v123 = v6[3];
        *(a1 + 32) = v6[2];
        *(a1 + 48) = v123;
        *v6 = v121;
        v6[1] = v120;
        result = 1;
        v6[2] = v119;
        v6[3] = v118;
        return result;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::$_2 &,re::pathprocessing::Bezier2::removeOverlaps(re::pathprocessing::Bezier2 const&,std::vector<float> &,std::vector<float> &)::SubBezier *,0>(a1, (a1 + 64), (a1 + 128), (a1 + 192), (a2 - 64), a3);
      return 1;
    }

    v6 = (a1 + 64);
    v29 = *(a1 + 64);
    v30 = (a1 + 128);
    v31 = *(a1 + 128);
    v32 = (a2 - 64);
    v33 = *a1;
    if (v29 >= *a1)
    {
      if (v31 < v29)
      {
        v60 = *(a1 + 96);
        v59 = *(a1 + 112);
        v62 = *v6;
        v61 = *(a1 + 80);
        v63 = *(a1 + 144);
        *v6 = *v30;
        *(a1 + 80) = v63;
        v64 = *(a1 + 176);
        *(a1 + 96) = *(a1 + 160);
        *(a1 + 112) = v64;
        *v30 = v62;
        *(a1 + 144) = v61;
        *(a1 + 160) = v60;
        *(a1 + 176) = v59;
        if (v6->n128_f32[0] < v33)
        {
          v66 = *(a1 + 32);
          v65 = *(a1 + 48);
          v68 = *a1;
          v67 = *(a1 + 16);
          v69 = *(a1 + 80);
          *a1 = *v6;
          *(a1 + 16) = v69;
          v70 = *(a1 + 112);
          *(a1 + 32) = *(a1 + 96);
          *(a1 + 48) = v70;
          *v6 = v68;
          *(a1 + 80) = v67;
          *(a1 + 96) = v66;
          *(a1 + 112) = v65;
        }
      }

      goto LABEL_47;
    }

    if (v31 >= v29)
    {
      v98 = *(a1 + 32);
      v97 = *(a1 + 48);
      v100 = *a1;
      v99 = *(a1 + 16);
      v101 = *(a1 + 80);
      *a1 = *v6;
      *(a1 + 16) = v101;
      v102 = *(a1 + 112);
      *(a1 + 32) = *(a1 + 96);
      *(a1 + 48) = v102;
      *v6 = v100;
      *(a1 + 80) = v99;
      *(a1 + 96) = v98;
      *(a1 + 112) = v97;
      if (v31 >= *(a1 + 64))
      {
        goto LABEL_47;
      }

      v35 = *(a1 + 96);
      v34 = *(a1 + 112);
      v37 = *v6;
      v36 = *(a1 + 80);
      v103 = *(a1 + 144);
      *v6 = *v30;
      *(a1 + 80) = v103;
      v104 = *(a1 + 176);
      *(a1 + 96) = *(a1 + 160);
      *(a1 + 112) = v104;
    }

    else
    {
      v35 = *(a1 + 32);
      v34 = *(a1 + 48);
      v37 = *a1;
      v36 = *(a1 + 16);
      v38 = *(a1 + 144);
      *a1 = *v30;
      *(a1 + 16) = v38;
      v39 = *(a1 + 176);
      *(a1 + 32) = *(a1 + 160);
      *(a1 + 48) = v39;
    }

    *v30 = v37;
    *(a1 + 144) = v36;
    *(a1 + 160) = v35;
    *(a1 + 176) = v34;
LABEL_47:
    if (*v32 >= v30->n128_f32[0])
    {
      return 1;
    }

    v106 = *(a1 + 160);
    v105 = *(a1 + 176);
    v108 = *v30;
    v107 = *(a1 + 144);
    v109 = *(a2 - 16);
    v111 = *v32;
    v110 = *(a2 - 48);
    *(a1 + 160) = *(a2 - 32);
    *(a1 + 176) = v109;
    *v30 = v111;
    *(a1 + 144) = v110;
    *v32 = v108;
    *(a2 - 48) = v107;
    *(a2 - 32) = v106;
    *(a2 - 16) = v105;
    if (v30->n128_f32[0] >= v6->n128_f32[0])
    {
      return 1;
    }

    v113 = *(a1 + 96);
    v112 = *(a1 + 112);
    v115 = *v6;
    v114 = *(a1 + 80);
    v116 = *(a1 + 144);
    *v6 = *v30;
    *(a1 + 80) = v116;
    v117 = *(a1 + 176);
    *(a1 + 96) = *(a1 + 160);
    *(a1 + 112) = v117;
    *v30 = v115;
    *(a1 + 144) = v114;
    *(a1 + 160) = v113;
    *(a1 + 176) = v112;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 64);
    v4 = (a2 - 64);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v18 = (a1 + 128);
  v19 = *(a1 + 128);
  v20 = (a1 + 64);
  v21 = *(a1 + 64);
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 < v21)
    {
      v48 = *(a1 + 96);
      v47 = *(a1 + 112);
      v50 = *v20;
      v49 = *(a1 + 80);
      v51 = *(a1 + 144);
      *v20 = *v18;
      *(a1 + 80) = v51;
      v52 = *(a1 + 176);
      *(a1 + 96) = *(a1 + 160);
      *(a1 + 112) = v52;
      *v18 = v50;
      *(a1 + 144) = v49;
      *(a1 + 160) = v48;
      *(a1 + 176) = v47;
      if (v20->n128_f32[0] < v22)
      {
        v54 = *(a1 + 32);
        v53 = *(a1 + 48);
        v56 = *a1;
        v55 = *(a1 + 16);
        v57 = *(a1 + 80);
        *a1 = *v20;
        *(a1 + 16) = v57;
        v58 = *(a1 + 112);
        *(a1 + 32) = *(a1 + 96);
        *(a1 + 48) = v58;
        *v20 = v56;
        *(a1 + 80) = v55;
        *(a1 + 96) = v54;
        *(a1 + 112) = v53;
      }
    }
  }

  else
  {
    if (v19 >= v21)
    {
      v81 = *(a1 + 32);
      v80 = *(a1 + 48);
      v83 = *a1;
      v82 = *(a1 + 16);
      v84 = *(a1 + 80);
      *a1 = *v20;
      *(a1 + 16) = v84;
      v85 = *(a1 + 112);
      *(a1 + 32) = *(a1 + 96);
      *(a1 + 48) = v85;
      *v20 = v83;
      *(a1 + 80) = v82;
      *(a1 + 96) = v81;
      *(a1 + 112) = v80;
      if (v19 >= *(a1 + 64))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 96);
      v23 = *(a1 + 112);
      v26 = *v20;
      v25 = *(a1 + 80);
      v86 = *(a1 + 144);
      *v20 = *v18;
      *(a1 + 80) = v86;
      v87 = *(a1 + 176);
      *(a1 + 96) = *(a1 + 160);
      *(a1 + 112) = v87;
    }

    else
    {
      v24 = *(a1 + 32);
      v23 = *(a1 + 48);
      v26 = *a1;
      v25 = *(a1 + 16);
      v27 = *(a1 + 144);
      *a1 = *v18;
      *(a1 + 16) = v27;
      v28 = *(a1 + 176);
      *(a1 + 32) = *(a1 + 160);
      *(a1 + 48) = v28;
    }

    *v18 = v26;
    *(a1 + 144) = v25;
    *(a1 + 160) = v24;
    *(a1 + 176) = v23;
  }

LABEL_33:
  v88 = a1 + 192;
  if (a1 + 192 == a2)
  {
    return 1;
  }

  v89 = 0;
  v90 = 0;
  while (1)
  {
    v91 = *v88;
    if (*v88 < v18->n128_f32[0])
    {
      v124 = *(v88 + 4);
      v125 = *(v88 + 20);
      *v126 = *(v88 + 36);
      *&v126[12] = *(v88 + 48);
      v92 = v89;
      while (1)
      {
        v93 = a1 + v92;
        v94 = *(a1 + v92 + 144);
        *(v93 + 192) = *(a1 + v92 + 128);
        *(v93 + 208) = v94;
        v95 = *(a1 + v92 + 176);
        *(v93 + 224) = *(a1 + v92 + 160);
        *(v93 + 240) = v95;
        if (v92 == -128)
        {
          break;
        }

        v92 -= 64;
        if (v91 >= *(v93 + 64))
        {
          v96 = a1 + v92 + 192;
          goto LABEL_41;
        }
      }

      v96 = a1;
LABEL_41:
      *v96 = v91;
      *(v96 + 4) = v124;
      *(v96 + 20) = v125;
      *(v96 + 36) = *v126;
      *(v96 + 48) = *&v126[12];
      if (++v90 == 8)
      {
        return v88 + 64 == a2;
      }
    }

    v18 = v88;
    v89 += 64;
    v88 += 64;
    if (v88 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::vector<re::pathprocessing::Bezier2>::vector[abi:nn200100](uint64_t *a1, __int128 *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](a1, a3);
  }

  return a1;
}

uint64_t *std::vector<re::pathprocessing::Bezier2>::vector[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

float32x2_t re::pathprocessing::QuadraticBezierBVH::build(uint64_t **this)
{
  std::vector<re::pathprocessing::Bounds2<float>>::resize(this + 2, 0xAAAAAAAAAAAAAAABLL * (((*this)[1] - **this) >> 3));
  v3 = **this;
  if ((*this)[1] != v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (v3 + v4);
      v8 = v7[1];
      v9 = vminnm_f32(*v7, v8);
      v10 = vmaxnm_f32(*v7, v8);
      v11 = v7[2];
      result = vmaxnm_f32(v10, v11);
      v12 = &this[2][v5];
      *v12 = vminnm_f32(v9, v11);
      v12[1] = result;
      ++v6;
      v3 = **this;
      v5 += 2;
      v4 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * (((*this)[1] - v3) >> 3));
  }

  return result;
}

void std::vector<re::pathprocessing::Bounds2<float>>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    std::vector<re::pathprocessing::Bounds2<float>>::__append(result, a2 - v2);
  }
}

void re::pathprocessing::QuadraticBezierBVH::buildGroup(uint64_t result, void *a2)
{
  if (*a2 != a2[1])
  {
    v6 = v3;
    v7 = v2;
    v8 = v4;
    v9 = v5;
    re::pathprocessing::QuadraticBezierBVH::buildGroupRange();
  }
}

uint64_t re::pathprocessing::QuadraticBezierBVH::intersect(uint64_t a1, float32x2_t *a2, float32x2_t *a3, uint64_t a4, float32x2_t *a5)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8))
  {
    v10 = *(a1 + 8);
    *__p = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = __p;
    std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Node const**>>(1uLL);
  }

  return 0;
}

uint64_t *std::unique_ptr<re::pathprocessing::QuadraticBezierBVH::Node>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<re::pathprocessing::QuadraticBezierBVH::Node>::reset[abi:nn200100]((v2 + 16), 0);
    std::unique_ptr<re::pathprocessing::QuadraticBezierBVH::Node>::reset[abi:nn200100]((v2 + 8), 0);

    JUMPOUT(0x1E6906520);
  }

  return result;
}

void std::vector<re::pathprocessing::Bounds2<float>>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v3) >> 4)
  {
    if (a2)
    {
      v9 = &v3[2 * a2];
      v10 = vneg_f32(0x7F0000007FLL);
      do
      {
        *v3 = v10;
        v3[1] = 0x7F0000007FLL;
        v3 += 2;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = v3 - *a1;
    v6 = a2 + (v5 >> 4);
    if (v6 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = v4 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = 16 * (v5 >> 4);
    v12 = (v11 + 16 * a2);
    v13 = vneg_f32(0x7F0000007FLL);
    v14 = v11;
    do
    {
      *v14 = v13;
      v14[1] = 0x7F0000007FLL;
      v14 += 2;
    }

    while (v14 != v12);
    v15 = *a1;
    v16 = *(a1 + 8) - *a1;
    v17 = v11 - v16;
    memcpy((v11 - v16), *a1, v16);
    *a1 = v17;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void std::__split_buffer<re::pathprocessing::QuadraticBezierBVH::Node const**>::emplace_front<re::pathprocessing::QuadraticBezierBVH::Node const**>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Node const**>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

uint64_t std::deque<re::pathprocessing::QuadraticBezierBVH::Node const*>::~deque[abi:nn200100](uint64_t a1)
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

void std::deque<re::pathprocessing::QuadraticBezierBVH::Node const*>::push_back(unint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v4) << 6) - 1;
  }

  v9 = a1[4];
  v8 = a1[5];
  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (v9 < 0x200)
    {
      v11 = a1[3];
      v12 = v11 - *a1;
      if (v6 < v12)
      {
        if (v11 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 >> 2;
      }

      v15 = a1;
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Node const**>>(v13);
    }

    a1[4] = v9 - 512;
    *&v14 = *v4;
    a1[1] = (v4 + 1);
    std::__split_buffer<re::pathprocessing::Node const**>::emplace_back<re::pathprocessing::Node const**&>(a1, &v14);
    v4 = a1[1];
    v8 = a1[5];
    v10 = a1[4] + v8;
  }

  *(*(v4 + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF)) = *a2;
  a1[5] = v8 + 1;
}

void re::pathprocessing::PathTopologyGenerator::getLoops(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v504 = *MEMORY[0x1E69E9840];
  re::pathprocessing::BezierGraphInfo::BezierGraphInfo(&v455, a1);
  v4 = re::pathprocessing::HDSMesh::HDSMesh(&v461, &v455);
  v473[0] = 0;
  v473[1] = 0;
  v474 = 0;
  v466 = 0u;
  v467 = 0u;
  v468 = 0u;
  v469 = 0u;
  v470 = 0u;
  v471 = 0u;
  v472 = 0;
  v5 = v457;
  v6 = v458;
  if (v457 == v458)
  {
    goto LABEL_159;
  }

  if (v455 != v456 && v459 != v460 && v465 == 1)
  {
    LOBYTE(v482) = 0;
    std::vector<BOOL>::vector(&__p, (v464 - v463) >> 4, &v482);
    *&v501 = 0;
    v8 = v463;
    v7 = v464;
    if (v464 != v463)
    {
      v9 = 0;
      v10 = 0uLL;
      do
      {
        if (((*(__p + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          v11 = v468;
          if (v468 >= *(&v468 + 1))
          {
            v13 = *(&v467 + 1);
            v14 = v468 - *(&v467 + 1);
            v15 = 0xCCCCCCCCCCCCCCCDLL * ((v468 - *(&v467 + 1)) >> 4) + 1;
            if (v15 > 0x333333333333333)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            if (0x999999999999999ALL * ((*(&v468 + 1) - *(&v467 + 1)) >> 4) > v15)
            {
              v15 = 0x999999999999999ALL * ((*(&v468 + 1) - *(&v467 + 1)) >> 4);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((*(&v468 + 1) - *(&v467 + 1)) >> 4) >= 0x199999999999999)
            {
              v16 = 0x333333333333333;
            }

            else
            {
              v16 = v15;
            }

            if (v16)
            {
              if (v16 <= 0x333333333333333)
              {
                operator new();
              }

LABEL_582:
              std::string::__throw_length_error[abi:nn200100]();
            }

            v17 = 16 * ((v468 - *(&v467 + 1)) >> 4);
            *(v17 + 64) = 0;
            *(v17 + 72) = 0;
            *v17 = -1;
            *(v17 + 8) = -1;
            *(v17 + 16) = v10;
            *(v17 + 32) = v10;
            *(v17 + 48) = v10;
            v18 = v17 - v14;
            if (v13 != v11)
            {
              v19 = v13;
              v20 = v18;
              do
              {
                *v20 = *v19;
                *(v20 + 24) = 0;
                *(v20 + 32) = 0;
                *(v20 + 16) = 0;
                *(v20 + 16) = *(v19 + 1);
                *(v20 + 32) = v19[4];
                v19[2] = 0;
                v19[3] = 0;
                v19[4] = 0;
                *(v20 + 40) = 0;
                *(v20 + 48) = 0;
                *(v20 + 56) = 0;
                *(v20 + 40) = *(v19 + 5);
                *(v20 + 56) = v19[7];
                v19[5] = 0;
                v19[6] = 0;
                v19[7] = 0;
                *(v20 + 64) = *(v19 + 4);
                v19 += 10;
                v20 += 80;
              }

              while (v19 != v11);
              do
              {
                std::allocator<re::pathprocessing::FaceGroup>::destroy[abi:nn200100](v13);
                v13 += 10;
              }

              while (v13 != v11);
              v13 = *(&v467 + 1);
            }

            v12 = v17 + 80;
            *(&v467 + 1) = v18;
            v468 = v12;
            if (v13)
            {
              operator delete(v13);
            }
          }

          else
          {
            *(v468 + 64) = 0;
            *(v11 + 72) = 0;
            *v11 = -1;
            *(v11 + 8) = -1;
            *(v11 + 16) = v10;
            *(v11 + 32) = v10;
            v12 = v11 + 80;
            *(v11 + 48) = v10;
          }

          *&v468 = v12;
          std::vector<unsigned long>::push_back[abi:nn200100]((v12 - 64), &v501);
          *(__p + ((v501 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v501;
          *&v498 = v501;
          memset(v492, 0, sizeof(v492));
          std::deque<unsigned long>::__append_with_size[abi:nn200100]<unsigned long const*>(v492, &v498, 1uLL);
          v482 = v492[0];
          v483 = v492[1];
          memset(v492, 0, sizeof(v492));
          *v484 = v492[2];
          std::deque<unsigned long>::~deque[abi:nn200100](v492);
          v21 = *&v484[8];
          if (*&v484[8])
          {
            v22 = (v12 - 40);
            do
            {
              v23 = v21 - 1;
              v24 = *(*(*(&v482 + 1) + (((*v484 + v23) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*v484 + v23) & 0x1FF));
              *&v484[8] = v23;
              std::deque<unsigned long>::__maybe_remove_back_spare[abi:nn200100](&v482, 1);
              v25 = (v463 + 16 * v24);
              v26 = *v25;
              do
              {
                v27 = v461 + 48 * v26;
                v28 = (v461 + 48 * *(v27 + 3));
                if (((*(__p + ((*v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v28) & 1) == 0)
                {
                  std::deque<unsigned long>::push_back(&v482, v461 + 6 * *(v27 + 3));
                  *(__p + ((*v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *v28;
                  std::vector<unsigned long>::push_back[abi:nn200100]((v12 - 64), v28);
                }

                v30 = *(v12 - 32);
                v29 = *(v12 - 24);
                if (v30 >= v29)
                {
                  v32 = *v22;
                  v33 = v30 - *v22;
                  v34 = v33 >> 3;
                  v35 = (v33 >> 3) + 1;
                  if (v35 >> 61)
                  {
LABEL_578:
                    std::string::__throw_length_error[abi:nn200100]();
                  }

                  v36 = v29 - v32;
                  if (v36 >> 2 > v35)
                  {
                    v35 = v36 >> 2;
                  }

                  v37 = v36 >= 0x7FFFFFFFFFFFFFF8;
                  v38 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v37)
                  {
                    v38 = v35;
                  }

                  if (v38)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(v12 - 40, v38);
                  }

                  *(8 * v34) = v26;
                  v31 = 8 * v34 + 8;
                  memcpy(0, v32, v33);
                  v39 = *(v12 - 40);
                  *(v12 - 40) = 0;
                  *(v12 - 32) = v31;
                  *(v12 - 24) = 0;
                  if (v39)
                  {
                    operator delete(v39);
                  }
                }

                else
                {
                  *v30 = v26;
                  v31 = (v30 + 8);
                }

                *(v12 - 32) = v31;
                v26 = *(v27 + 1);
              }

              while (v26 != *v25);
              v21 = *&v484[8];
            }

            while (*&v484[8]);
          }

          std::deque<unsigned long>::~deque[abi:nn200100](&v482);
          v9 = v501;
          v8 = v463;
          v7 = v464;
          v10 = 0uLL;
        }

        *&v501 = ++v9;
      }

      while (v9 < (v7 - v8) >> 4);
    }

    if (__p)
    {
      operator delete(__p);
    }

    v40 = 0x8E38E38E38E38E39 * ((v456 - v455) >> 3);
    v41 = v467;
    v42 = v466;
    if (v40 > (v467 - v466) >> 2)
    {
      if (v466)
      {
        *(&v466 + 1) = v466;
        operator delete(v466);
        v41 = 0;
        v466 = 0uLL;
        *&v467 = 0;
      }

      if (!(v40 >> 62))
      {
        v43 = v41 >> 1;
        if (v41 >> 1 <= v40)
        {
          v43 = v40;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v44 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v44 = v43;
        }

        std::vector<int>::__vallocate[abi:nn200100](&v466, v44);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v45 = *(&v466 + 1);
    v46 = *(&v466 + 1) - v466;
    v47 = (*(&v466 + 1) - v466) >> 2;
    if (v47 >= v40)
    {
      v48 = 0x8E38E38E38E38E39 * ((v456 - v455) >> 3);
    }

    else
    {
      v48 = (*(&v466 + 1) - v466) >> 2;
    }

    if (v48)
    {
      bzero(v466, 4 * v48);
    }

    v37 = v40 >= v47;
    v49 = v40 - v47;
    if (v49 != 0 && v37)
    {
      bzero(v45, ((4 * v40 - v46 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
      v50 = &v45[4 * v49];
    }

    else
    {
      v50 = &v42[4 * v40];
    }

    *(&v466 + 1) = v50;
    v51 = v50 - v42;
    if (v50 != v42)
    {
      v52 = 0;
      v53 = v51 >> 2;
      v54 = v455;
      if (v53 <= 1)
      {
        v53 = 1;
      }

      do
      {
        v55 = (v54 + 72 * v52);
        v56 = v55[1];
        if (v55[2] != v56)
        {
          v57 = v55[4];
          v58 = v55[5];
          v59 = (v56 + 8 * (v57 >> 9));
          v60 = *v59;
          v61 = &(*v59)[8 * (v57 & 0x1FF)];
          v62 = *(v56 + (((v58 + v57) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v58 + v57) & 0x1FF);
          if (v61 != v62)
          {
            v63 = *a1;
            v64 = *a2;
            v65 = *&v42[4 * v52];
            do
            {
              v66 = (v63 + 24 * *v61);
              v67 = *(v64 + 4 * *v61);
              v65 = v65 + ((-COERCE_FLOAT(HIDWORD(*v66)) * COERCE_FLOAT(*&v66[2])) + (COERCE_FLOAT(*v66) * COERCE_FLOAT(HIDWORD(*&v66[2])))) * 0.5;
              *&v42[4 * v52] = v65;
              if (v67 == 3)
              {
                v68 = vsub_f32(v66[1], *v66);
                v69 = vsub_f32(v66[2], *v66);
                v65 = v65 + (((-v68.f32[1] * v69.f32[0]) + (v68.f32[0] * v69.f32[1])) * 0.33333);
                *&v42[4 * v52] = v65;
              }

              v61 += 8;
              if (v61 - v60 == 4096)
              {
                v70 = v59[1];
                ++v59;
                v60 = v70;
                v61 = v70;
              }
            }

            while (v61 != v62);
          }
        }

        ++v52;
      }

      while (v52 != v53);
    }

    v71 = *(&v467 + 1);
    v72 = v463;
    if (v468 != *(&v467 + 1))
    {
      v73 = 0;
      v74 = v461;
      v75 = v455;
      v76 = 0xCCCCCCCCCCCCCCCDLL * ((v468 - *(&v467 + 1)) >> 4);
      if (v76 <= 1)
      {
        v76 = 1;
      }

      do
      {
        v77 = (v71 + 80 * v73);
        v78 = v77[2];
        v79 = v77[3];
        v80 = v79 - v78;
        if (v79 != v78)
        {
          v81 = 0;
          v82 = v80 >> 3;
          if (v82 <= 1)
          {
            v82 = 1;
          }

          v83 = INFINITY;
          do
          {
            v84 = 0;
            v85 = *(v78 + 8 * v81);
            v86 = &v72[2 * v85];
            v87 = 0.0;
            v88 = *v86;
            do
            {
              v89 = &v74[48 * v88];
              v90 = *&v42[4 * *(v89 + 4)];
              if (*(v89 + 10))
              {
                v90 = -v90;
              }

              v87 = v87 + v90;
              v88 = *(v89 + 1);
              ++v84;
            }

            while (v88 != *v86);
            if (v87 < v83)
            {
              *v77 = v85;
              v83 = v87;
            }

            if (fabsf(v87) < 0.0001 && v84 <= 2)
            {
              v86[1] |= 8uLL;
            }

            if (v84 == 1)
            {
              v86[1] |= 4uLL;
            }

            ++v81;
          }

          while (v81 != v82);
        }

        v72[2 * *v77 + 1] |= 1uLL;
        v92 = v72[2 * *v77];
        v93 = INFINITY;
        v94 = v92;
        do
        {
          v95 = &v74[48 * v94];
          v96 = (v75 + 72 * *(v95 + 4));
          v97 = v96[1];
          if (v96[2] != v97)
          {
            v98 = v96[4];
            v99 = v96[5];
            v100 = (v97 + 8 * (v98 >> 9));
            v101 = *v100;
            v102 = &(*v100)[8 * (v98 & 0x1FF)];
            v103 = *(v97 + (((v99 + v98) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v99 + v98) & 0x1FF);
            if (v102 != v103)
            {
              v104 = *a1 + 4;
              do
              {
                v105 = 0;
                v106 = *v102;
                v107 = v104 + 24 * *v102;
                v108 = 1;
                do
                {
                  v109 = v108;
                  v110 = *(v107 + 8 * v105);
                  if (v110 < v93)
                  {
                    v77[8] = v106;
                    v77[9] = v105;
                    v93 = v110;
                  }

                  v108 = 0;
                  v105 = 2;
                }

                while ((v109 & 1) != 0);
                if (++v102 - v101 == 4096)
                {
                  v111 = v100[1];
                  ++v100;
                  v101 = v111;
                  v102 = v111;
                }
              }

              while (v102 != v103);
            }
          }

          v94 = *(v95 + 1);
        }

        while (v94 != v92);
        ++v73;
      }

      while (v73 != v76);
    }

    v112 = *(&v470 + 1);
    v113 = v464 - v72;
    v114 = (v464 - v72) >> 4;
    v115 = *(&v471 + 1);
    if (v114 > (*(&v471 + 1) - *(&v470 + 1)) >> 2)
    {
      if (*(&v470 + 1))
      {
        *&v471 = *(&v470 + 1);
        operator delete(*(&v470 + 1));
        v115 = 0;
        *(&v470 + 1) = 0;
        v471 = 0uLL;
      }

      if (!(v114 >> 62))
      {
        v116 = v115 >> 1;
        if (v115 >> 1 <= v114)
        {
          v116 = v114;
        }

        if (v115 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v117 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v117 = v116;
        }

        std::vector<int>::__vallocate[abi:nn200100](&v470 + 1, v117);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v118 = v471;
    v119 = v471 - *(&v470 + 1);
    v120 = (v471 - *(&v470 + 1)) >> 2;
    if (v120 >= v114)
    {
      v121 = v114;
    }

    else
    {
      v121 = (v471 - *(&v470 + 1)) >> 2;
    }

    if (v121)
    {
      bzero(*(&v470 + 1), 4 * v121);
    }

    v37 = v114 >= v120;
    v122 = v114 - v120;
    if (v122 != 0 && v37)
    {
      bzero(v118, (((v113 >> 2) - v119 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
      v123 = &v118[4 * v122];
    }

    else
    {
      v123 = (v112 + 4 * v114);
    }

    *&v471 = v123;
    LOBYTE(v482) = 0;
    std::vector<BOOL>::vector(&__p, v114, &v482);
    v124 = *(&v467 + 1);
    for (i = v468; v124 != i; v124 += 10)
    {
      *(__p + ((*v124 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *v124;
      *&v501 = *v124;
      memset(v492, 0, sizeof(v492));
      std::deque<unsigned long>::__append_with_size[abi:nn200100]<unsigned long const*>(v492, &v501, 1uLL);
      v482 = v492[0];
      v483 = v492[1];
      memset(v492, 0, sizeof(v492));
      *v484 = v492[2];
      std::deque<unsigned long>::~deque[abi:nn200100](v492);
      while (*&v484[8])
      {
        v126 = *(*(*(&v482 + 1) + (((*v484 + *&v484[8] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*v484 + *&v484[8] - 1) & 0x1FF));
        --*&v484[8];
        std::deque<unsigned long>::__maybe_remove_back_spare[abi:nn200100](&v482, 1);
        v127 = (v463 + 16 * v126);
        v128 = *v127;
        v129 = *(*(&v470 + 1) + 4 * v126);
        v130 = __p;
        v131 = *v127;
        do
        {
          v132 = v461 + 48 * v131;
          v133 = v461 + 48 * *(v132 + 3);
          if (((*(v130 + ((*v133 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v133) & 1) == 0)
          {
            std::deque<unsigned long>::push_back(&v482, v461 + 6 * *(v132 + 3));
            v130 = __p;
            *(__p + ((*v133 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *v133;
            if (*(v133 + 10))
            {
              v134 = v129 - 1;
            }

            else
            {
              v134 = v129 + 1;
            }

            *(*(&v470 + 1) + 4 * *v133) = v134;
            v128 = *v127;
          }

          v131 = *(v132 + 1);
        }

        while (v131 != v128);
      }

      std::deque<unsigned long>::~deque[abi:nn200100](&v482);
    }

    v4 = __p;
    if (__p)
    {
      operator delete(__p);
    }

    v5 = v457;
    v6 = v458;
  }

  if (v5 == v6 || v455 == v456 || v459 == v460 || v465 != 1)
  {
LABEL_159:
    v141 = v482;
    v142 = v483;
    *a4 = 0;
    *(a4 + 8) = 3;
    *(a4 + 16) = &re::pathprocessing::PathProcessingErrorCategory(void)::instance;
    *(a4 + 24) = v141;
    *(a4 + 40) = v142;
    goto LABEL_160;
  }

  v135 = 0xCCCCCCCCCCCCCCCDLL * ((v468 - *(&v467 + 1)) >> 4);
  v136 = *(&v469 + 1);
  v137 = (*(&v469 + 1) - v469) >> 4;
  if (v135 > v137)
  {
    v138 = v135 - v137;
    if (v135 - v137 > (v470 - *(&v469 + 1)) >> 4)
    {
      if (v135 >> 60)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v139 = v470 - v469;
      if ((v470 - v469) >> 3 > v135)
      {
        v135 = v139 >> 3;
      }

      if (v139 >= 0x7FFFFFFFFFFFFFF0)
      {
        v140 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v140 = v135;
      }

      if (!(v140 >> 60))
      {
        operator new();
      }

      goto LABEL_582;
    }

    memset(*(&v469 + 1), 255, 16 * v138);
    v152 = v136 + 16 * v138;
    goto LABEL_191;
  }

  if (v135 < v137)
  {
    v152 = v469 - 0x3333333333333330 * ((v468 - *(&v467 + 1)) >> 4);
LABEL_191:
    *(&v469 + 1) = v152;
  }

  *&v492[0] = a1;
  memset(v492 + 8, 0, 32);
  re::pathprocessing::QuadraticBezierBVH::build(v492);
  LOBYTE(v482) = 0;
  std::vector<BOOL>::vector(&__p, 0x8E38E38E38E38E39 * ((v456 - v455) >> 3), &v482);
  v153 = *(&v467 + 1);
  v154 = v468;
  if (v468 != *(&v467 + 1))
  {
    v155 = 0;
    do
    {
      v482 = 0uLL;
      *&v483 = 0;
      v156 = v153 + 80 * v155;
      v157 = *(v156 + 40);
      v158 = *(v156 + 48);
      while (v157 != v158)
      {
        v159 = *(v461 + 6 * *v157 + 4);
        v160 = *(__p + 8 * (v159 >> 6));
        if (((1 << v159) & v160) == 0)
        {
          *(__p + 8 * (v159 >> 6)) = v160 | (1 << v159);
          v161 = (v455 + 72 * v159);
          v162 = v161[1];
          if (v161[2] != v162)
          {
            v163 = v161[4];
            v164 = (v162 + 8 * (v163 >> 9));
            v165 = (*v164 + 8 * (v163 & 0x1FF));
            v166 = *(v162 + (((v161[5] + v163) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v161[5] + v163) & 0x1FF);
            while (v165 != v166)
            {
              v167 = *v165++;
              *&v501 = v167;
              std::vector<unsigned long>::push_back[abi:nn200100](&v482, &v501);
              if ((v165 - *v164) == 4096)
              {
                v168 = v164[1];
                ++v164;
                v165 = v168;
              }
            }
          }
        }

        ++v157;
      }

      re::pathprocessing::QuadraticBezierBVH::buildGroup(v492, &v482);
      if (v482)
      {
        *(&v482 + 1) = v482;
        operator delete(v482);
      }

      ++v155;
      v153 = *(&v467 + 1);
      v154 = v468;
    }

    while (v155 < 0xCCCCCCCCCCCCCCCDLL * ((v468 - *(&v467 + 1)) >> 4));
  }

  if (v154 != v153)
  {
    v169 = 0;
    v170 = 0;
    v171 = 0;
    v172 = vneg_f32(0x7F0000007FLL);
    do
    {
      *&v482 = -1;
      *(&v482 + 1) = -1;
      *v484 = 0;
      v483 = 0uLL;
      *&v484[8] = v172;
      v173 = (*a1 + 24 * *(v153 + v169 + 64) + 8 * *(v153 + v169 + 72));
      *&v501 = 0xBF80000000000000;
      if (re::pathprocessing::QuadraticBezierBVH::intersect(v492, v173, &v501, v171, &v482))
      {
        v174 = (*a1 + 24 * *(&v482 + 1));
        v175 = v174[1];
        v176 = v174[2];
        v177 = vadd_f32(vmul_n_f32(v176, *&v484[12]), vsub_f32(vmul_n_f32(*v174, *&v484[12] + -1.0), vmul_n_f32(v175, (*&v484[12] * 2.0) + -1.0)));
        v178 = vadd_f32(v177, v177);
        if (v178.f32[0] == 0.0)
        {
          v179 = vadd_f32(v176, vsub_f32(*v174, vadd_f32(v175, v175)));
          v180 = vadd_f32(v179, v179).u32[0];
          if (*&v484[12] == 1.0 || *&v484[12] > 0.0 && v178.f32[1] < 0.0)
          {
            v178.i32[0] = v180 ^ 0x80000000;
          }

          else
          {
            v178.i32[0] = v180;
          }
        }

        v181 = (v461 + 48 * ((v178.f32[0] <= 0.0) | (2 * *(v459 + *(&v482 + 1)))));
        v182 = *v181;
        v183 = *(v463 + 2 * *v181 + 1);
        if ((v183 & 8) != 0)
        {
          if ((v183 & 4) != 0)
          {
            v184 = v181[3];
          }

          else
          {
            v184 = *(v461 + 6 * v181[1] + 3);
          }

          v182 = *(v461 + 6 * v184);
        }

        v185 = (v469 + v170);
        *v185 = v482;
        v185[1] = v182;
      }

      ++v171;
      v153 = *(&v467 + 1);
      v170 += 16;
      v169 += 80;
    }

    while (v171 < 0xCCCCCCCCCCCCCCCDLL * ((v468 - *(&v467 + 1)) >> 4));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (*&v492[1])
  {
    *(&v492[1] + 1) = *&v492[1];
    operator delete(*&v492[1]);
  }

  v186 = *(&v492[0] + 1);
  *(&v492[0] + 1) = 0;
  if (v186)
  {
    re::pathprocessing::QuadraticBezierBVH::Node::~Node(v186);
    MEMORY[0x1E6906520]();
  }

  v187 = v469;
  v188 = (*(&v469 + 1) - v469) >> 4;
  std::vector<std::vector<unsigned long>>::vector[abi:nn200100](v492, v188);
  v483 = 0u;
  *v484 = 0u;
  v482 = 0u;
  LOBYTE(v501) = 0;
  std::vector<BOOL>::vector(&__p, v188, &v501);
  *&v501 = 0;
  if (*(&v187 + 1) != v187)
  {
    v189 = 0;
    do
    {
      v190 = *(v469 + 16 * v189);
      if (v190 == -1)
      {
        std::deque<unsigned long>::push_back(&v482, &v501);
      }

      else
      {
        std::vector<unsigned long>::push_back[abi:nn200100]((*&v492[0] + 24 * v190), &v501);
      }

      v189 = v501 + 1;
      *&v501 = v189;
    }

    while (v189 < v188);
  }

  v480 = 0;
  v481 = 0;
  v479 = 0;
  std::vector<unsigned long>::reserve(&v479, v188);
  for (j = *&v484[8]; *&v484[8]; j = *&v484[8])
  {
    v192 = j - 1;
    *&v501 = *(*(*(&v482 + 1) + (((*v484 + v192) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*v484 + v192) & 0x1FF));
    *&v484[8] = v192;
    std::deque<unsigned long>::__maybe_remove_back_spare[abi:nn200100](&v482, 1);
    std::vector<unsigned long>::push_back[abi:nn200100](&v479, &v501);
    v193 = *&v492[0] + 24 * v501;
    v194 = *v193;
    v195 = *(v193 + 8);
    while (v194 != v195)
    {
      v196 = *v194++;
      *&v498 = v196;
      std::deque<unsigned long>::push_back(&v482, &v498);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::deque<unsigned long>::~deque[abi:nn200100](&v482);
  *&v482 = v492;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v482);
  v197 = v479;
  if (v480 != v479)
  {
    v198 = 0;
    v199 = (v480 - v479) >> 3;
    if (v199 <= 1)
    {
      v199 = 1;
    }

    v200 = *(&v470 + 1);
    v201 = v469;
    v202 = *(&v467 + 1);
    do
    {
      v203 = v197[v198];
      v204 = (v201 + 16 * v203);
      if (*v204 != -1)
      {
        v205 = v202 + 80 * v203;
        v206 = *(v205 + 16);
        v207 = *(v205 + 24);
        if (v206 != v207)
        {
          v208 = *(v200 + 4 * v204[1]);
          do
          {
            v209 = *v206++;
            *(v200 + 4 * v209) += v208;
          }

          while (v206 != v207);
        }
      }

      ++v198;
    }

    while (v198 != v199);
  }

  LOBYTE(v482) = 0;
  std::vector<BOOL>::vector(&v478, (v464 - v463) >> 4, &v482);
  v210 = v463;
  if (a3)
  {
    if (v464 != v463)
    {
      v211 = 0;
      v212 = (v464 - v463) >> 4;
      v213 = *(&v470 + 1);
      v214 = v478;
      if (v212 <= 1)
      {
        v212 = 1;
      }

      v215 = (v463 + 8);
      do
      {
        v216 = v211 >> 6;
        v217 = 1 << v211;
        if (*(v213 + 4 * v211))
        {
          v214[v216] |= v217;
          v219 = &v210[16 * v211 + 8];
          v218 = *v215 | 2;
        }

        else
        {
          v214[v216] &= ~v217;
          v218 = *v215 & 0xFFFFFFFFFFFFFFFDLL;
          v219 = v215;
        }

        *v219 = v218;
        ++v211;
        v215 += 2;
      }

      while (v212 != v211);
    }
  }

  else if (v464 != v463)
  {
    v220 = 0;
    v221 = (v464 - v463) >> 4;
    v222 = *(&v470 + 1);
    v223 = v478;
    if (v221 <= 1)
    {
      v221 = 1;
    }

    v224 = (v463 + 8);
    do
    {
      v225 = v220 >> 6;
      v226 = 1 << v220;
      if (*(v222 + 4 * v220))
      {
        v223[v225] |= v226;
        v227 = &v210[16 * v220 + 8];
        v228 = *v224 | 2;
      }

      else
      {
        v223[v225] &= ~v226;
        v228 = *v224 & 0xFFFFFFFFFFFFFFFDLL;
        v227 = v224;
      }

      *v227 = v228;
      ++v220;
      v224 += 2;
    }

    while (v221 != v220);
  }

  v475 = 0u;
  v476 = 0u;
  v477 = 1065353216;
  v229 = v479;
  if (v480 != v479)
  {
    v230 = 0;
    do
    {
      v231 = v229[v230];
      *&v492[0] = v231;
      v232 = *(v469 + 16 * v231 + 8);
      if (v232 == -1 || ((*(v478 + ((v232 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v232) & 1) == 0)
      {
        *&v482 = v492;
        std::__hash_table<std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v475, v231, &v482);
      }

      else
      {
        *&__p = v231;
        *&v501 = -1;
        v233 = vcnt_s8(*(&v475 + 8));
        v233.i16[0] = vaddlv_u8(v233);
        v234 = *(&v475 + 1) - 1;
        do
        {
          do
          {
LABEL_274:
            v235 = (v469 + 16 * v231);
            *&v501 = v235[1];
            v231 = *v235;
            *&__p = *v235;
          }

          while (!*(&v475 + 1));
          if (v233.u32[0] > 1uLL)
          {
            v236 = v231;
            if (v231 >= *(&v475 + 1))
            {
              v236 = v231 % *(&v475 + 1);
            }
          }

          else
          {
            v236 = v231 & v234;
          }

          v237 = *(v475 + 8 * v236);
        }

        while (!v237);
        do
        {
          while (1)
          {
            v237 = *v237;
            if (!v237)
            {
              goto LABEL_274;
            }

            v238 = v237[1];
            if (v238 == v231)
            {
              break;
            }

            if (v233.u32[0] > 1uLL)
            {
              if (v238 >= *(&v475 + 1))
              {
                v238 %= *(&v475 + 1);
              }
            }

            else
            {
              v238 &= v234;
            }

            if (v238 != v236)
            {
              goto LABEL_274;
            }
          }
        }

        while (v237[2] != v231);
        *&v482 = &__p;
        v239 = std::__hash_table<std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v475, v231, &v482);
        *&v482 = &v501;
        v240 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v239 + 3, v501, &v482);
        std::vector<unsigned long>::push_back[abi:nn200100](v240 + 3, v492);
      }

      ++v230;
      v229 = v479;
    }

    while (v230 < (v480 - v479) >> 3);
  }

  v490 = 0uLL;
  v491 = 0;
  v488 = 0;
  v487 = 0;
  v489 = 0;
  if (v462 != v461)
  {
    v241 = 0xAAAAAAAAAAAAAAABLL * ((v462 - v461) >> 4);
    if (v241 <= 0x555555555555555)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::HalfEdge>>(&v487, v241);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  __p = 0u;
  v495 = 0u;
  v496 = 1065353216;
  v243 = v463;
  v242 = v464;
  if (v464 != v463)
  {
    v244 = 0;
    v245 = 0;
    v246.n128_u64[0] = -1;
    v246.n128_u64[1] = -1;
    while (1)
    {
      v247 = &v243[v244];
      if ((v243[v244 + 8] & 8) == 0)
      {
        goto LABEL_314;
      }

      v248 = *v247;
      v249 = 48 * *v247;
      if (*v249 == -1)
      {
        goto LABEL_314;
      }

      v250 = *(v249 + 8);
      if (v250 == -1)
      {
        goto LABEL_314;
      }

      v251 = *(v249 + 16);
      if (v251 == -1)
      {
        goto LABEL_314;
      }

      v252 = *(v249 + 24);
      if (v252 == -1 || *(v249 + 32) == -1)
      {
        goto LABEL_314;
      }

      if (v251 != v250)
      {
        v472 = 1;
        MEMORY[0x1E6905F60](v473, "Invalid topology for degenerated face\n", v246);
        v501 = 0u;
        v502 = 0u;
        v503 = 1065353216;
        goto LABEL_394;
      }

      v253 = 48 * v252;
      if (v250 != v248)
      {
        break;
      }

      v254 = *(48 * v252 + 8);
      v255 = *(48 * v252 + 0x10);
      *(48 * v255 + 8) = v254;
      *(48 * v254 + 0x10) = v255;
LABEL_313:
      *(v249 + 32) = -1;
      *v249 = v246;
      *(v249 + 16) = v246;
      *(v253 + 32) = -1;
      *v253 = v246;
      *(v253 + 16) = v246;
      v243 = v463;
      v242 = v464;
LABEL_314:
      ++v245;
      v244 += 16;
      if (v245 >= (v242 - v243) >> 4)
      {
        goto LABEL_317;
      }
    }

    v256 = 48 * v250;
    v257 = *(48 * v250 + 0x18);
    v258 = 48 * v257;
    v259 = *(48 * v257 + 8);
    if (v252 == v259)
    {
      v260 = *(48 * v252 + 8);
      v261 = *(48 * v257 + 0x10);
      *(48 * v261 + 8) = v260;
      *(48 * v260 + 0x10) = v261;
      *(v258 + 32) = -1;
      *v258 = v246;
      *(v258 + 16) = v246;
    }

    else
    {
      if (v252 != *(48 * v257 + 0x10))
      {
        *(48 * v252 + 0x18) = v257;
        *(48 * v257 + 0x18) = *(v249 + 24);
        goto LABEL_312;
      }

      v262 = *(48 * v252 + 0x10);
      *(48 * v262 + 8) = v259;
      *(48 * *(48 * v257 + 8) + 0x10) = v262;
      *v258 = v246;
      *(48 * v257 + 0x10) = v246;
      *(48 * v257 + 0x20) = -1;
    }

    *(v253 + 32) = -1;
    *v253 = v246;
    *(v253 + 16) = v246;
LABEL_312:
    v253 = v256;
    goto LABEL_313;
  }

  v243 = v464;
LABEL_317:
  v498 = 0uLL;
  *&v499 = 0;
  LOBYTE(v482) = 0;
  std::vector<BOOL>::vector(v493, (v242 - v243) >> 4, &v482);
  v263 = v495;
  if (!v495)
  {
    goto LABEL_368;
  }

  do
  {
    if ((*(v493[0] + ((v263[2] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v263[2]))
    {
      goto LABEL_367;
    }

    v264 = *(&v498 + 1);
    if (*(&v498 + 1) >= v499)
    {
      v266 = 0xAAAAAAAAAAAAAAABLL * ((*(&v498 + 1) - v498) >> 3);
      v267 = v266 + 1;
      if (v266 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
LABEL_579:
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (0x5555555555555556 * ((v499 - v498) >> 3) > v267)
      {
        v267 = 0x5555555555555556 * ((v499 - v498) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v499 - v498) >> 3) >= 0x555555555555555)
      {
        v268 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v268 = v267;
      }

      *v484 = &v498;
      if (v268)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(&v498, v268);
      }

      v269 = (8 * ((*(&v498 + 1) - v498) >> 3));
      *v269 = 0;
      v269[1] = 0;
      v269[2] = 0;
      v265 = 24 * v266 + 24;
      v270 = v269 - (*(&v498 + 1) - v498);
      memcpy(v270, v498, *(&v498 + 1) - v498);
      v271 = v498;
      v272 = v499;
      *&v498 = v270;
      *(&v498 + 1) = v265;
      *&v499 = 0;
      *&v483 = v271;
      *(&v483 + 1) = v272;
      *&v482 = v271;
      *(&v482 + 1) = v271;
      std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(&v482);
    }

    else
    {
      **(&v498 + 1) = 0;
      *(v264 + 8) = 0;
      v265 = v264 + 24;
      *(v264 + 16) = 0;
    }

    *(&v498 + 1) = v265;
    v273 = (v265 - 24);
    *&v501 = v263[2];
    memset(v492, 0, sizeof(v492));
    std::deque<unsigned long>::__append_with_size[abi:nn200100]<unsigned long const*>(v492, &v501, 1uLL);
    v482 = v492[0];
    v483 = v492[1];
    memset(v492, 0, sizeof(v492));
    *v484 = v492[2];
    std::deque<unsigned long>::~deque[abi:nn200100](v492);
    v274 = *&v484[8];
    do
    {
      v275 = v274 - 1;
      v276 = *(*(*(&v482 + 1) + (((v275 + *v484) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v275 + *v484) & 0x1FF));
      *&v484[8] = v275;
      std::deque<unsigned long>::__maybe_remove_back_spare[abi:nn200100](&v482, 1);
      v277 = *(v493[0] + (v276 >> 6));
      if ((v277 & (1 << v276)) != 0)
      {
        goto LABEL_332;
      }

      *(v493[0] + (v276 >> 6)) = v277 | (1 << v276);
      v279 = *(v265 - 16);
      v278 = *(v265 - 8);
      if (v279 >= v278)
      {
        v281 = *v273;
        v282 = v279 - *v273;
        v283 = v282 >> 3;
        v284 = (v282 >> 3) + 1;
        if (v284 >> 61)
        {
          goto LABEL_578;
        }

        v285 = v278 - v281;
        if (v285 >> 2 > v284)
        {
          v284 = v285 >> 2;
        }

        if (v285 >= 0x7FFFFFFFFFFFFFF8)
        {
          v286 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v286 = v284;
        }

        if (v286)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(v265 - 24, v286);
        }

        *(8 * v283) = v276;
        v280 = 8 * v283 + 8;
        memcpy(0, v281, v282);
        v287 = *(v265 - 24);
        *(v265 - 24) = 0;
        *(v265 - 16) = v280;
        *(v265 - 8) = 0;
        if (v287)
        {
          operator delete(v287);
        }
      }

      else
      {
        *v279 = v276;
        v280 = (v279 + 8);
      }

      *(v265 - 16) = v280;
      if (!*(&__p + 1))
      {
        goto LABEL_577;
      }

      v288 = vcnt_s8(*(&__p + 8));
      v288.i16[0] = vaddlv_u8(v288);
      if (v288.u32[0] > 1uLL)
      {
        v289 = v276;
        if (v276 >= *(&__p + 1))
        {
          v289 = v276 % *(&__p + 1);
        }
      }

      else
      {
        v289 = (*(&__p + 1) - 1) & v276;
      }

      v290 = *(__p + 8 * v289);
      if (!v290 || (v291 = *v290) == 0)
      {
LABEL_577:
        abort();
      }

      while (1)
      {
        v292 = v291[1];
        if (v292 == v276)
        {
          break;
        }

        if (v288.u32[0] > 1uLL)
        {
          if (v292 >= *(&__p + 1))
          {
            v292 %= *(&__p + 1);
          }
        }

        else
        {
          v292 &= *(&__p + 1) - 1;
        }

        if (v292 != v289)
        {
          goto LABEL_577;
        }

LABEL_361:
        v291 = *v291;
        if (!v291)
        {
          goto LABEL_577;
        }
      }

      if (v291[2] != v276)
      {
        goto LABEL_361;
      }

      v293 = v291[3];
      v294 = v291[4];
      while (v293 != v294)
      {
        *&v492[0] = *v293;
        if (((*(v493[0] + ((*&v492[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SLOBYTE(v492[0])) & 1) == 0)
        {
          std::deque<unsigned long>::push_back(&v482, v492);
        }

        ++v293;
      }

LABEL_332:
      v274 = *&v484[8];
    }

    while (*&v484[8]);
    std::deque<unsigned long>::~deque[abi:nn200100](&v482);
LABEL_367:
    v263 = *v263;
  }

  while (v263);
LABEL_368:
  v501 = 0u;
  v502 = 0u;
  v503 = 1065353216;
  v295 = *(&v498 + 1);
  v296 = v498;
  if (*(&v498 + 1) == v498)
  {
    goto LABEL_391;
  }

  v297 = 0;
  while (2)
  {
    v298 = (v296 + 24 * v297);
    v299 = *v298;
    v300 = v298[1];
    if (*v298 == v300)
    {
      goto LABEL_390;
    }

    while (2)
    {
      v301 = *v299;
      if (!*(&v501 + 1))
      {
        goto LABEL_387;
      }

      v302 = vcnt_s8(*(&v501 + 8));
      v302.i16[0] = vaddlv_u8(v302);
      if (v302.u32[0] > 1uLL)
      {
        v303 = *v299;
        if (*(&v501 + 1) <= v301)
        {
          v303 = v301 % *(&v501 + 1);
        }
      }

      else
      {
        v303 = (*(&v501 + 1) - 1) & v301;
      }

      v304 = *(v501 + 8 * v303);
      if (!v304 || (v305 = *v304) == 0)
      {
LABEL_387:
        operator new();
      }

      while (2)
      {
        v306 = v305[1];
        if (v306 != v301)
        {
          if (v302.u32[0] > 1uLL)
          {
            if (v306 >= *(&v501 + 1))
            {
              v306 %= *(&v501 + 1);
            }
          }

          else
          {
            v306 &= *(&v501 + 1) - 1;
          }

          if (v306 != v303)
          {
            goto LABEL_387;
          }

          goto LABEL_386;
        }

        if (v305[2] != v301)
        {
LABEL_386:
          v305 = *v305;
          if (!v305)
          {
            goto LABEL_387;
          }

          continue;
        }

        break;
      }

      if (++v299 != v300)
      {
        continue;
      }

      break;
    }

    v295 = *(&v498 + 1);
    v296 = v498;
LABEL_390:
    if (++v297 < 0xAAAAAAAAAAAAAAABLL * ((v295 - v296) >> 3))
    {
      continue;
    }

    break;
  }

LABEL_391:
  if (v493[0])
  {
    operator delete(v493[0]);
  }

  *&v482 = &v498;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v482);
LABEL_394:
  std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::~__hash_table(&__p);
  if (v472 == 1)
  {
    v307 = 0;
    v308 = 0;
    v309 = 0;
    v482 = 0uLL;
    *&v483 = 0;
    goto LABEL_553;
  }

  __p = 0u;
  v495 = 0u;
  v496 = 1065353216;
  v498 = 0u;
  v499 = 0u;
  v500 = 1065353216;
  LOBYTE(v482) = 0;
  std::vector<BOOL>::vector(v493, 0xAAAAAAAAAAAAAAABLL * ((v488 - v487) >> 4), &v482);
  v310 = v476;
  if (!v476)
  {
    goto LABEL_550;
  }

  while (2)
  {
    v445 = v310;
    v311 = (*(&v467 + 1) + 80 * v310[2]);
    v482 = 0u;
    v483 = 0u;
    *&v484[8] = 0u;
    v485 = 0u;
    *v484 = 1065353216;
    v486 = 1065353216;
    v312 = v311[5];
    v313 = v311[6];
    if (v313 == v312)
    {
      goto LABEL_498;
    }

    v314 = 0;
    while (2)
    {
      v497 = *(v312 + 8 * v314);
      v315 = *(v493[0] + (v497 >> 6));
      if ((v315 & (1 << v497)) != 0)
      {
        goto LABEL_400;
      }

      *(v493[0] + (v497 >> 6)) = v315 | (1 << v497);
      v316 = (v487 + 48 * v497);
      v317 = *v316;
      if (*v316 == -1 || v316[1] == -1 || v316[2] == -1 || v316[3] == -1)
      {
        goto LABEL_400;
      }

      v318 = v316[4] == -1 || v317 == *v311;
      if (v318 || (*(v463 + 16 * v317 + 8) & 2) == 0)
      {
        goto LABEL_400;
      }

      v319 = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(v501, *(&v501 + 1), *v316);
      if (!v319)
      {
        *&v492[0] = v316;
        v323 = (std::__hash_table<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(&v484[8], v317, v492) + 3);
        goto LABEL_442;
      }

      v320 = v319[3];
      if (!*(&v482 + 1))
      {
        goto LABEL_429;
      }

      v321 = vcnt_s8(*(&v482 + 8));
      v321.i16[0] = vaddlv_u8(v321);
      if (v321.u32[0] > 1uLL)
      {
        v322 = v319[3];
        if (*(&v482 + 1) <= v320)
        {
          v322 = v320 % *(&v482 + 1);
        }
      }

      else
      {
        v322 = (*(&v482 + 1) - 1) & v320;
      }

      v324 = *(v482 + 8 * v322);
      if (!v324 || (v325 = *v324) == 0)
      {
LABEL_429:
        operator new();
      }

      while (2)
      {
        v326 = v325[1];
        if (v326 != v320)
        {
          if (v321.u32[0] > 1uLL)
          {
            if (v326 >= *(&v482 + 1))
            {
              v326 %= *(&v482 + 1);
            }
          }

          else
          {
            v326 &= *(&v482 + 1) - 1;
          }

          if (v326 != v322)
          {
            goto LABEL_429;
          }

          goto LABEL_428;
        }

        if (v325[2] != v320)
        {
LABEL_428:
          v325 = *v325;
          if (!v325)
          {
            goto LABEL_429;
          }

          continue;
        }

        break;
      }

      v327 = v325[4];
      v328 = v325[5];
      if (v327 < v328)
      {
        *v327 = 0;
        v327[1] = 0;
        v329 = (v327 + 3);
        v327[2] = 0;
        goto LABEL_441;
      }

      v330 = v325[3];
      v331 = 0xAAAAAAAAAAAAAAABLL * ((v327 - v330) >> 3);
      v332 = v331 + 1;
      if (v331 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_579;
      }

      v333 = 0xAAAAAAAAAAAAAAABLL * ((v328 - v330) >> 3);
      if (2 * v333 > v332)
      {
        v332 = 2 * v333;
      }

      if (v333 >= 0x555555555555555)
      {
        v334 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v334 = v332;
      }

      *&v492[2] = v325 + 3;
      if (v334)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>((v325 + 3), v334);
      }

      v335 = 24 * v331;
      *v335 = 0;
      *(v335 + 8) = 0;
      *(v335 + 16) = 0;
      v329 = 24 * v331 + 24;
      v336 = v325[3];
      v337 = v325[4] - v336;
      v338 = v335 - v337;
      memcpy((v335 - v337), v336, v337);
      v339 = v325[3];
      v325[3] = v338;
      v325[4] = v329;
      v340 = v325[5];
      v325[5] = 0;
      *&v492[1] = v339;
      *(&v492[1] + 1) = v340;
      *(&v492[0] + 1) = v339;
      *&v492[0] = v339;
      std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v492);
LABEL_441:
      v325[4] = v329;
      v323 = (v329 - 24);
LABEL_442:
      v341 = v497;
      do
      {
        v342 = v487;
        *(v493[0] + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v341;
        std::vector<unsigned long>::push_back[abi:nn200100](v323, &v497);
        v341 = v342[6 * v341 + 1];
        v497 = v341;
        v312 = v311[5];
      }

      while (v341 != *(v312 + 8 * v314));
      v313 = v311[6];
LABEL_400:
      if (++v314 < ((v313 - v312) >> 3))
      {
        continue;
      }

      break;
    }

    for (k = v483; ; k = *v450)
    {
      v450 = k;
      if (!k)
      {
        break;
      }

      v344 = *(&v490 + 1);
      v345 = v490;
      v346 = *(&v490 + 1) - v490;
      v347 = 0xAAAAAAAAAAAAAAABLL * ((*(&v490 + 1) - v490) >> 4);
      v497 = v347;
      if (*(&v490 + 1) >= v491)
      {
        v349 = v347 + 1;
        if (v347 + 1 > 0x555555555555555)
        {
LABEL_580:
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (0x5555555555555556 * ((v491 - v490) >> 4) > v349)
        {
          v349 = 0x5555555555555556 * ((v491 - v490) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v491 - v490) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v350 = 0x555555555555555;
        }

        else
        {
          v350 = v349;
        }

        *&v492[2] = &v490;
        if (v350)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IslandHalfEdgeLoop>>(v350);
        }

        v351 = (16 * ((*(&v490 + 1) - v490) >> 4));
        v351[1] = 0u;
        v351[2] = 0u;
        *v351 = 0u;
        v348 = 48 * v347 + 48;
        v352 = (48 * v347 - v346);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::pathprocessing::IslandHalfEdgeLoop>,re::pathprocessing::IslandHalfEdgeLoop*>(v345, v344, v352);
        v353 = v490;
        v354 = v491;
        *&v490 = v352;
        *(&v490 + 1) = v348;
        v491 = 0;
        *&v492[1] = v353;
        *(&v492[1] + 1) = v354;
        *(&v492[0] + 1) = v353;
        *&v492[0] = v353;
        std::__split_buffer<re::pathprocessing::IslandHalfEdgeLoop>::~__split_buffer(v492);
      }

      else
      {
        *(*(&v490 + 1) + 16) = 0u;
        v344[2] = 0u;
        v348 = (v344 + 3);
        *v344 = 0u;
      }

      *(&v490 + 1) = v348;
      std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,unsigned long &>(&v498, v450[2], v450 + 2, &v497);
      v355 = v450[3];
      v356 = v450[4];
      if (v356 - v355 == 24)
      {
        std::vector<unsigned long>::__move_assign(v348 - 48, v355);
      }

      else
      {
        v447 = v348 - 48;
        v448 = v348;
        if (v356 != v355)
        {
          v357 = 0;
          v358 = 0xAAAAAAAAAAAAAAABLL * ((v356 - v355) >> 3);
          v446 = (v348 - 24);
          if (v358 <= 1)
          {
            v358 = 1;
          }

          v449 = v358;
          do
          {
            v359 = v450[3] + 24 * v357;
            v360 = *v359;
            v361 = *(v359 + 8);
            if (*v359 != v361)
            {
              v362 = 0.0;
              do
              {
                v363 = *v360++;
                v364 = v461 + 48 * v363;
                v365 = *(v466 + 4 * *(v364 + 4));
                if (*(v364 + 10))
                {
                  v365 = -v365;
                }

                v362 = v362 + v365;
              }

              while (v360 != v361);
              if (fabsf(v362) >= 0.0001)
              {
                if (v362 <= 0.0)
                {
                  v366 = *(v448 - 16);
                  v367 = *(v448 - 8);
                  if (v366 >= v367)
                  {
                    v369 = 0xAAAAAAAAAAAAAAABLL * ((v366 - *v446) >> 3);
                    v370 = v369 + 1;
                    if (v369 + 1 > 0xAAAAAAAAAAAAAAALL)
                    {
                      goto LABEL_579;
                    }

                    v371 = 0xAAAAAAAAAAAAAAABLL * ((v367 - *v446) >> 3);
                    if (2 * v371 > v370)
                    {
                      v370 = 2 * v371;
                    }

                    if (v371 >= 0x555555555555555)
                    {
                      v372 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v372 = v370;
                    }

                    *&v492[2] = v446;
                    if (v372)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(v446, v372);
                    }

                    v373 = 24 * v369;
                    *v373 = 0;
                    *(v373 + 8) = 0;
                    *(v373 + 16) = 0;
                    v368 = 24 * v369 + 24;
                    v374 = *(v448 - 24);
                    v375 = *(v448 - 16) - v374;
                    v376 = (24 * v369 - v375);
                    memcpy(v376, v374, v375);
                    v377 = *(v448 - 24);
                    *(v448 - 24) = v376;
                    *(&v492[0] + 1) = v377;
                    *(v448 - 16) = v368;
                    *&v492[1] = v377;
                    v378 = *(v448 - 8);
                    *(v448 - 8) = 0;
                    *(&v492[1] + 1) = v378;
                    *&v492[0] = v377;
                    std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v492);
                  }

                  else
                  {
                    *v366 = 0;
                    v366[1] = 0;
                    v368 = (v366 + 3);
                    v366[2] = 0;
                  }

                  *(v448 - 16) = v368;
                  v379 = *v359;
                  if (*(v359 + 8) != *v359)
                  {
                    v380 = 0;
                    v381 = (v368 - 24);
                    v382 = *(v368 - 16);
                    do
                    {
                      v383 = v461 + 48 * v379[v380];
                      v384 = *(v368 - 8);
                      if (v382 >= v384)
                      {
                        v385 = *v381;
                        v386 = v382 - *v381;
                        v387 = (v386 >> 3) + 1;
                        if (v387 >> 61)
                        {
                          goto LABEL_578;
                        }

                        v388 = v384 - v385;
                        if (v388 >> 2 > v387)
                        {
                          v387 = v388 >> 2;
                        }

                        v37 = v388 >= 0x7FFFFFFFFFFFFFF8;
                        v389 = 0x1FFFFFFFFFFFFFFFLL;
                        if (!v37)
                        {
                          v389 = v387;
                        }

                        if (v389)
                        {
                          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(v368 - 24, v389);
                        }

                        v390 = (8 * (v386 >> 3));
                        *v390 = *(v383 + 3);
                        v382 = (v390 + 1);
                        memcpy(0, v385, v386);
                        v391 = *(v368 - 24);
                        *(v368 - 24) = 0;
                        *(v368 - 16) = v382;
                        *(v368 - 8) = 0;
                        if (v391)
                        {
                          operator delete(v391);
                        }
                      }

                      else
                      {
                        *v382 = *(v383 + 3);
                        v382 += 8;
                      }

                      *(v368 - 16) = v382;
                      ++v380;
                      v379 = *v359;
                    }

                    while (v380 < (*(v359 + 8) - *v359) >> 3);
                  }
                }

                else
                {
                  std::vector<unsigned long>::__move_assign(v447, (v450[3] + 24 * v357));
                }
              }
            }

            ++v357;
          }

          while (v357 != v449);
        }
      }
    }

LABEL_498:
    for (m = v485; m; m = *m)
    {
      v393 = *(&v490 + 1);
      v394 = v490;
      v395 = *(&v490 + 1) - v490;
      v396 = 0xAAAAAAAAAAAAAAABLL * ((*(&v490 + 1) - v490) >> 4);
      v497 = v396;
      if (*(&v490 + 1) >= v491)
      {
        v398 = v396 + 1;
        if (v396 + 1 > 0x555555555555555)
        {
          goto LABEL_580;
        }

        if (0x5555555555555556 * ((v491 - v490) >> 4) > v398)
        {
          v398 = 0x5555555555555556 * ((v491 - v490) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v491 - v490) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v399 = 0x555555555555555;
        }

        else
        {
          v399 = v398;
        }

        *&v492[2] = &v490;
        if (v399)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IslandHalfEdgeLoop>>(v399);
        }

        v400 = (16 * ((*(&v490 + 1) - v490) >> 4));
        v400[1] = 0u;
        v400[2] = 0u;
        *v400 = 0u;
        v397 = 48 * v396 + 48;
        v401 = v400 - v395;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::pathprocessing::IslandHalfEdgeLoop>,re::pathprocessing::IslandHalfEdgeLoop*>(v394, v393, (v400 - v395));
        v402 = v490;
        v403 = v491;
        *&v490 = v401;
        *(&v490 + 1) = v397;
        v491 = 0;
        *&v492[1] = v402;
        *(&v492[1] + 1) = v403;
        *(&v492[0] + 1) = v402;
        *&v492[0] = v402;
        std::__split_buffer<re::pathprocessing::IslandHalfEdgeLoop>::~__split_buffer(v492);
      }

      else
      {
        *(*(&v490 + 1) + 16) = 0u;
        v393[2] = 0u;
        v397 = (v393 + 3);
        *v393 = 0u;
      }

      *(&v490 + 1) = v397;
      std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,unsigned long &>(&__p, m[2], m + 2, &v497);
      std::vector<unsigned long>::__move_assign(v397 - 48, (m + 3));
    }

    v404 = v445[5];
    if (v404)
    {
      do
      {
        v405 = v404[2];
        v406 = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(v501, *(&v501 + 1), v405);
        if (v406)
        {
          v407 = *(&v498 + 1);
          v408 = v406[3];
          v409 = v498;
        }

        else
        {
          v407 = *(&__p + 1);
          v409 = __p;
          v408 = v405;
        }

        v410 = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(v409, v407, v408);
        v411 = v404[3];
        v412 = v404[4];
        v451 = v404;
        if (v411 != v412)
        {
          v413 = v490 + 48 * v410[3] + 24;
          do
          {
            v414 = (*(&v467 + 1) + 80 * *v411);
            v415 = v414[5];
            if (v414[6] != v415)
            {
              v416 = 0;
              v417 = v493[0];
              do
              {
                v497 = *(v415 + 8 * v416);
                v418 = v417[v497 >> 6];
                if ((v418 & (1 << v497)) == 0)
                {
                  v417[v497 >> 6] = v418 | (1 << v497);
                  v419 = (v487 + 48 * v497);
                  v420 = *v419;
                  if (*v419 != -1 && v419[1] != -1 && v419[2] != -1 && v419[3] != -1 && v419[4] != -1 && v420 != *v414 && (*(v463 + 16 * v420 + 8) & 2) == 0)
                  {
                    v421 = *(v413 + 8);
                    v422 = *(v413 + 16);
                    if (v421 >= v422)
                    {
                      v424 = 0xAAAAAAAAAAAAAAABLL * ((v421 - *v413) >> 3);
                      v425 = v424 + 1;
                      if (v424 + 1 > 0xAAAAAAAAAAAAAAALL)
                      {
                        goto LABEL_579;
                      }

                      v426 = 0xAAAAAAAAAAAAAAABLL * ((v422 - *v413) >> 3);
                      if (2 * v426 > v425)
                      {
                        v425 = 2 * v426;
                      }

                      if (v426 >= 0x555555555555555)
                      {
                        v427 = 0xAAAAAAAAAAAAAAALL;
                      }

                      else
                      {
                        v427 = v425;
                      }

                      *&v492[2] = v413;
                      if (v427)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(v413, v427);
                      }

                      v428 = 24 * v424;
                      *v428 = 0;
                      *(v428 + 8) = 0;
                      *(v428 + 16) = 0;
                      v423 = 24 * v424 + 24;
                      v429 = *(v413 + 8) - *v413;
                      v430 = v428 - v429;
                      memcpy((v428 - v429), *v413, v429);
                      v431 = *v413;
                      *v413 = v430;
                      *(&v492[0] + 1) = v431;
                      *(v413 + 8) = v423;
                      *&v492[1] = v431;
                      v432 = *(v413 + 16);
                      *(v413 + 16) = 0;
                      *(&v492[1] + 1) = v432;
                      *&v492[0] = v431;
                      std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v492);
                    }

                    else
                    {
                      *v421 = 0;
                      v421[1] = 0;
                      v423 = (v421 + 3);
                      v421[2] = 0;
                    }

                    *(v413 + 8) = v423;
                    do
                    {
                      std::vector<unsigned long>::push_back[abi:nn200100]((v423 - 24), &v497);
                      v497 = *(v487 + 6 * v497 + 2);
                      v417 = v493[0];
                      *(v493[0] + ((v497 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v497;
                    }

                    while (v497 != *(v414[5] + 8 * v416));
                  }
                }

                ++v416;
                v415 = v414[5];
              }

              while (v416 < (v414[6] - v415) >> 3);
            }

            ++v411;
          }

          while (v411 != v412);
        }

        v404 = *v451;
      }

      while (*v451);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::~__hash_table(&v484[8]);
    v433 = v483;
    if (v483)
    {
      do
      {
        v434 = *v433;
        *&v492[0] = v433 + 3;
        std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](v492);
        operator delete(v433);
        v433 = v434;
      }

      while (v434);
    }

    v435 = v482;
    *&v482 = 0;
    if (v435)
    {
      operator delete(v435);
    }

    v310 = *v445;
    if (*v445)
    {
      continue;
    }

    break;
  }

LABEL_550:
  v308 = *(&v490 + 1);
  v309 = v490;
  v482 = v490;
  v307 = v491;
  *&v483 = v491;
  v490 = 0uLL;
  v491 = 0;
  if (v493[0])
  {
    operator delete(v493[0]);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v498);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&__p);
LABEL_553:
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v501);
  if (v487)
  {
    v488 = v487;
    operator delete(v487);
  }

  *&v492[0] = &v490;
  std::vector<re::pathprocessing::IslandHalfEdgeLoop>::__destroy_vector::operator()[abi:nn200100](v492);
  if (v472)
  {
    v436 = v492;
  }

  else
  {
    *&v492[0] = v309;
    *(&v492[0] + 1) = v308;
    v436 = &v482;
    *&v492[1] = v307;
  }

  *v436 = 0;
  *(v436 + 1) = 0;
  *(v436 + 2) = 0;
  *&__p = &v482;
  std::vector<re::pathprocessing::IslandHalfEdgeLoop>::__destroy_vector::operator()[abi:nn200100](&__p);
  v437 = v476;
  if (v476)
  {
    do
    {
      v438 = *v437;
      std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::~__hash_table(v437 + 3);
      operator delete(v437);
      v437 = v438;
    }

    while (v438);
  }

  v439 = v475;
  *&v475 = 0;
  if (v439)
  {
    operator delete(v439);
  }

  if (v478)
  {
    operator delete(v478);
  }

  v440 = v479;
  if (v479)
  {
    v480 = v479;
    operator delete(v479);
  }

  if (v472 == 1)
  {
    if (v474 >= 0)
    {
      v441 = v473;
    }

    else
    {
      v441 = v473[0];
    }

    v442 = v482;
    v443 = v483;
    *a4 = 0;
    *(a4 + 8) = 3;
    *(a4 + 16) = &re::pathprocessing::PathProcessingErrorCategory(void)::instance;
    *(a4 + 24) = v442;
    *(a4 + 40) = v443;
  }

  else
  {
    if (*(&v492[0] + 1) != *&v492[0])
    {
      if (0xAAAAAAAAAAAAAAABLL * ((*(&v492[0] + 1) - *&v492[0]) >> 4) <= 0x555555555555555)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    __p = 0uLL;
    *&v495 = 0;
    *a4 = 1;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0;
    *&v483 = 0;
    v482 = 0uLL;
    *&v501 = &v482;
    std::vector<re::pathprocessing::BezierIslandInfo>::__destroy_vector::operator()[abi:nn200100](&v501);
    *&v501 = &__p;
    std::vector<re::pathprocessing::BezierIslandInfo>::__destroy_vector::operator()[abi:nn200100](&v501);
  }

  *&v482 = v492;
  std::vector<re::pathprocessing::IslandHalfEdgeLoop>::__destroy_vector::operator()[abi:nn200100](&v482);
LABEL_160:
  if (SHIBYTE(v474) < 0)
  {
    operator delete(v473[0]);
  }

  if (*(&v470 + 1))
  {
    *&v471 = *(&v470 + 1);
    operator delete(*(&v470 + 1));
  }

  if (v469)
  {
    *(&v469 + 1) = v469;
    operator delete(v469);
  }

  v143 = *(&v467 + 1);
  if (*(&v467 + 1))
  {
    v144 = v468;
    v145 = *(&v467 + 1);
    if (v468 != *(&v467 + 1))
    {
      do
      {
        v144 -= 10;
        std::allocator<re::pathprocessing::FaceGroup>::destroy[abi:nn200100](v144);
      }

      while (v144 != v143);
      v145 = *(&v467 + 1);
    }

    *&v468 = v143;
    operator delete(v145);
  }

  if (v466)
  {
    *(&v466 + 1) = v466;
    operator delete(v466);
  }

  if (v463)
  {
    v464 = v463;
    operator delete(v463);
  }

  if (v461)
  {
    v462 = v461;
    operator delete(v461);
  }

  if (v459)
  {
    v460 = v459;
    operator delete(v459);
  }

  v146 = v457;
  if (v457)
  {
    v147 = v458;
    v148 = v457;
    if (v458 != v457)
    {
      v149 = v458;
      do
      {
        v151 = *(v149 - 3);
        v149 -= 24;
        v150 = v151;
        if (v151)
        {
          *(v147 - 2) = v150;
          operator delete(v150);
        }

        v147 = v149;
      }

      while (v149 != v146);
      v148 = v457;
    }

    v458 = v146;
    operator delete(v148);
  }

  *&v482 = &v455;
  std::vector<re::pathprocessing::ContinuousEdge>::__destroy_vector::operator()[abi:nn200100](&v482);
}

void re::pathprocessing::PathTopologyGenerator::extractBoundary(uint64_t a1, void *a2, void *a3, int a4, const void **a5)
{
  if (a2 != a3)
  {
    do
    {
      v42 = a2;
      v7 = *(a1 + 96) + 48 * *a2;
      v8 = (*(a1 + 24) + 72 * *(v7 + 32));
      std::vector<re::pathprocessing::Bezier2>::reserve(a5, v8[5] - 0x5555555555555555 * ((a5[1] - *a5) >> 3));
      v9 = v8[5];
      if (*(v7 + 40) == a4)
      {
        if (v9)
        {
          v10 = 0;
          v11 = a5[1];
          do
          {
            v12 = **a1 + 24 * *(*(v8[1] + (((v10 + v8[4]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v10 + v8[4]) & 0x1FF));
            v13 = a5[2];
            if (v11 >= v13)
            {
              v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a5) >> 3);
              v16 = v15 + 1;
              if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_37;
              }

              v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a5) >> 3);
              if (2 * v17 > v16)
              {
                v16 = 2 * v17;
              }

              if (v17 >= 0x555555555555555)
              {
                v18 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v18 = v16;
              }

              if (v18)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a5, v18);
              }

              v19 = 8 * ((v11 - *a5) >> 3);
              v20 = *v12;
              *(v19 + 16) = *(v12 + 16);
              *v19 = v20;
              v11 = 24 * v15 + 24;
              v21 = a5[1] - *a5;
              v22 = 24 * v15 - v21;
              memcpy((v19 - v21), *a5, v21);
              v23 = *a5;
              *a5 = v22;
              a5[1] = v11;
              a5[2] = 0;
              if (v23)
              {
                operator delete(v23);
              }
            }

            else
            {
              v14 = *v12;
              *(v11 + 16) = *(v12 + 16);
              *v11 = v14;
              v11 += 24;
            }

            a5[1] = v11;
            ++v10;
          }

          while (v10 < v8[5]);
        }
      }

      else if (v9)
      {
        v24 = v9 - 1;
        do
        {
          if (v8[5] <= v24)
          {
            abort();
          }

          v25 = (**a1 + 24 * *(*(v8[1] + (((v24 + v8[4]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v24 + v8[4]) & 0x1FF)));
          v27 = v25[1];
          v26 = v25[2];
          v28 = *v25;
          v30 = a5[1];
          v29 = a5[2];
          if (v30 >= v29)
          {
            v32 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *a5) >> 3);
            v33 = v32 + 1;
            if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
LABEL_37:
              std::string::__throw_length_error[abi:nn200100]();
            }

            v34 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a5) >> 3);
            if (2 * v34 > v33)
            {
              v33 = 2 * v34;
            }

            if (v34 >= 0x555555555555555)
            {
              v35 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a5, v35);
            }

            v36 = 24 * v32;
            *v36 = v26;
            *(v36 + 8) = v27;
            *(v36 + 16) = v28;
            v31 = 24 * v32 + 24;
            v37 = a5[1] - *a5;
            v38 = (24 * v32 - v37);
            memcpy(v38, *a5, v37);
            v39 = *a5;
            *a5 = v38;
            a5[1] = v31;
            a5[2] = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *v30 = v26;
            *(v30 + 1) = v27;
            v31 = (v30 + 24);
            *(v30 + 2) = v28;
          }

          a5[1] = v31;
          --v24;
        }

        while (v24 != -1);
      }

      a2 = v42 + 1;
    }

    while (v42 + 1 != a3);
  }
}

void std::vector<re::pathprocessing::Bezier2>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void re::pathprocessing::QuadraticBezierBVH::Node::~Node(re::pathprocessing::QuadraticBezierBVH::Node *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    re::pathprocessing::QuadraticBezierBVH::Node::~Node(v2);
    MEMORY[0x1E6906520]();
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    re::pathprocessing::QuadraticBezierBVH::Node::~Node(v3);
    MEMORY[0x1E6906520]();
  }
}

void std::vector<re::pathprocessing::IslandHalfEdgeLoop>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::allocator<re::pathprocessing::IslandHalfEdgeLoop>::destroy[abi:nn200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<re::pathprocessing::IslandHalfEdgeLoop>::destroy[abi:nn200100](uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void std::vector<re::pathprocessing::BezierIslandInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::allocator<re::pathprocessing::BezierIslandInfo>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<re::pathprocessing::BezierIslandInfo>::destroy[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

void std::allocator<re::pathprocessing::FaceGroup>::destroy[abi:nn200100](void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IslandHalfEdgeLoop>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::pathprocessing::IslandHalfEdgeLoop>,re::pathprocessing::IslandHalfEdgeLoop*>(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = *v5;
      a3[2] = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      a3[3] = 0;
      a3[4] = 0;
      a3[5] = 0;
      *(a3 + 3) = *(v5 + 24);
      a3[5] = *(v5 + 40);
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
      v5 += 48;
      a3 += 6;
    }

    while (v5 != a2);
    do
    {
      std::allocator<re::pathprocessing::IslandHalfEdgeLoop>::destroy[abi:nn200100](v4);
      v4 += 48;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<re::pathprocessing::IslandHalfEdgeLoop>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::allocator<re::pathprocessing::IslandHalfEdgeLoop>::destroy[abi:nn200100](i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,unsigned long &>(void *a1, unint64_t a2, void *a3, uint64_t *a4)
{
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2;
    if (*&v4 <= a2)
    {
      v6 = a2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & a2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == a2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != a2)
  {
    goto LABEL_17;
  }
}

__n128 std::vector<unsigned long>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::vector<re::pathprocessing::PathCommand>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::PathCommand>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
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
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::PathCommand>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t re::SpatialCurve<re::Vector2<float>>::evaluateAt(uint64_t a1, __n128 a2, uint64_t a3)
{
  v3 = a2.n128_f32[0];
  v23 = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    v3 = re::BezierSpline<float>::evaluateAt(a1 + 208, a3, a2.n128_f32[0]);
  }

  SplineIndexForParameter = re::SpatialCurve<re::Vector2<float>>::findSplineIndexForParameter(a1, a3, v3);
  v7 = *(a1 + 184);
  if (v7 <= SplineIndexForParameter)
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v10 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 797;
    v18 = 2048;
    v19 = SplineIndexForParameter;
    v20 = 2048;
    v21 = v7;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(**(*(a1 + 200) + 24 * SplineIndexForParameter) + 120);
  v6.n128_f32[0] = v3;

  return v8(v6);
}

BOOL re::pathprocessing::computeNormal(_BOOL8 result, unint64_t a2, unint64_t a3, void *a4)
{
  if (a2 < a3)
  {
    v6 = a2;
    v7 = result;
    v8 = a3 - 1;
    v9 = 24 * a2;
    do
    {
      v10 = *v7;
      v11 = (*v7 + 24 * v8);
      isLine = re::pathprocessing::Bezier2::isLine(v11);
      v13 = *v11;
      if (isLine)
      {
        v14 = vsub_f32(v11[2], v13);
      }

      else
      {
        v15 = v11[1];
        v16 = vmul_f32(vsub_f32(v15, v13), 0);
        v17 = vsub_f32(v11[2], v15);
        v14 = vadd_f32(v16, vadd_f32(v17, v17));
      }

      result = re::pathprocessing::Bezier2::isLine((v10 + v9));
      v18 = *(v10 + v9);
      v19 = (v10 + v9);
      if (result)
      {
        v20 = v19[2];
        v21 = vsub_f32(v20, v18);
      }

      else
      {
        v22 = v19[1];
        v20 = v19[2];
        v23 = vsub_f32(v22, v18);
        v21 = vadd_f32(vadd_f32(v23, v23), vmul_f32(vsub_f32(v20, v22), 0));
      }

      v24 = vmul_f32(v14, v14);
      v24.i32[0] = vadd_f32(v24, vdup_lane_s32(v24, 1)).u32[0];
      v25 = vrsqrte_f32(v24.u32[0]);
      v26 = vmul_f32(v25, vrsqrts_f32(v24.u32[0], vmul_f32(v25, v25)));
      v27 = vmul_n_f32(v14, vmul_f32(v26, vrsqrts_f32(v24.u32[0], vmul_f32(v26, v26))).f32[0]);
      *v26.i32 = -*&v27.i32[1];
      v28 = vmul_f32(v21, v21);
      v28.i32[0] = vadd_f32(v28, vdup_lane_s32(v28, 1)).u32[0];
      v29 = vzip1_s32(v26, v27);
      v30 = vrsqrte_f32(v28.u32[0]);
      v31 = vmul_f32(v30, vrsqrts_f32(v28.u32[0], vmul_f32(v30, v30)));
      v32 = vmul_f32(v31, vrsqrts_f32(v28.u32[0], vmul_f32(v31, v31)));
      v33 = vmul_n_f32(v21, *v32.i32);
      *v32.i32 = -*&v33.i32[1];
      v34 = vmul_f32(vadd_f32(v29, vzip1_s32(v32, v33)), 0x3F0000003F000000);
      v35 = vaddv_f32(vmul_f32(v34, v34));
      if (fabsf(v35) < 1.0e-10)
      {
        v36 = vadd_f32(vsub_f32(*v11, vadd_f32(v11[1], v11[1])), v11[2]);
        v37 = vadd_f32(v36, v36);
        v38 = vmul_f32(v37, v37);
        v38.i32[0] = vadd_f32(v38, vdup_lane_s32(v38, 1)).u32[0];
        v39 = vrsqrte_f32(v38.u32[0]);
        v40 = vmul_f32(v39, vrsqrts_f32(v38.u32[0], vmul_f32(v39, v39)));
        v41 = vmul_n_f32(v37, vmul_f32(v40, vrsqrts_f32(v38.u32[0], vmul_f32(v40, v40))).f32[0]);
        v42 = vadd_f32(v20, vsub_f32(v18, vadd_f32(*(v10 + v9 + 8), *(v10 + v9 + 8))));
        v43 = vadd_f32(v42, v42);
        v44 = vmul_f32(v43, v43);
        v44.i32[0] = vadd_f32(v44, vdup_lane_s32(v44, 1)).u32[0];
        v45 = vrsqrte_f32(v44.u32[0]);
        v46 = vmul_f32(v45, vrsqrts_f32(v44.u32[0], vmul_f32(v45, v45)));
        v34 = vadd_f32(vmul_f32(v41, 0x3F0000003F000000), vmul_f32(vmul_n_f32(v43, vmul_f32(v46, vrsqrts_f32(v44.u32[0], vmul_f32(v46, v46))).f32[0]), 0x3F0000003F000000));
        v35 = vaddv_f32(vmul_f32(v34, v34));
      }

      v47 = vrsqrte_f32(LODWORD(v35));
      v48 = vmul_f32(v47, vrsqrts_f32(LODWORD(v35), vmul_f32(v47, v47)));
      *(*a4 + 8 * v6) = vmul_n_f32(v34, vmul_f32(v48, vrsqrts_f32(LODWORD(v35), vmul_f32(v48, v48))).f32[0]);
      v8 = v6;
      v9 += 24;
      ++v6;
    }

    while (a3 != v6);
  }

  return result;
}

uint64_t *re::pathprocessing::offsetBeziers(uint64_t *result, void *a2, unint64_t a3, unint64_t a4, uint64_t *a5, float a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  if (a4 > a3)
  {
    v12 = a4 - 1;
    v13 = 24 * a4 - 8;
    v14 = a3;
    do
    {
      v15 = *a5;
      v16 = (*a5 + v13);
      v17 = *result;
      v18 = *(*a2 + 4 * v12);
      if (v18 == 3)
      {
        v23 = *v16;
        v24 = v16[-2];
        v25 = vsub_f32(*v16, v24);
        *&a12 = -*&v25.i32[1];
        v26 = vzip1_s32(*&a12, v25);
        v27 = vmul_f32(v26, v26);
        v27.i32[0] = vadd_f32(v27, vdup_lane_s32(v27, 1)).u32[0];
        v28 = vrsqrte_f32(v27.u32[0]);
        v29 = vmul_f32(v28, vrsqrts_f32(v27.u32[0], vmul_f32(v28, v28)));
        v30 = vmul_n_f32(v26, vmul_f32(v29, vrsqrts_f32(v27.u32[0], vmul_f32(v29, v29))).f32[0]);
        a12 = COERCE_DOUBLE(vmul_n_f32(*(v17 + 8 * v12), a6));
        v31 = vadd_f32(v16[-1], vmul_n_f32(v30, a6));
        v16[-2] = vadd_f32(v24, *&a12);
        v16[-1] = v31;
        *v16 = vadd_f32(v23, vmul_n_f32(*(v17 + 8 * v14), a6));
      }

      else if (v18 == 2)
      {
        v19 = vadd_f32(v16[-2], vmul_n_f32(*(v17 + 8 * v12), a6));
        v16[-2] = v19;
        v20 = vmul_n_f32(*(v17 + 8 * v14), a6);
        v21 = (v15 + v13);
        v22 = vadd_f32(*(v15 + v13), v20);
        v21[-1] = vadd_f32(vmul_f32(v19, 0x3F0000003F000000), vmul_f32(v22, 0x3F0000003F000000));
        *v21 = v22;
      }

      v13 -= 24;
      v14 = --a4;
    }

    while (v12-- > a3);
  }

  return result;
}

void re::pathprocessing::createCapTriangles(uint64_t *a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v84 = 0uLL;
  v85 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v6 = (*(a3 + 8) - *a3) >> 4;
  v7 = *a1;
  v77 = *(a3 + 8) - *a3;
  v78 = v6;
  if (a1[1] != *a1)
  {
    v10 = 0;
    v11 = v6;
    do
    {
      v12 = (v7 + 24 * v10);
      v13 = v81;
      if (v81 == v82)
      {
        std::vector<re::Vector2<float>>::push_back[abi:nn200100](&v81, v12);
        ++v11;
        v13 = v81;
      }

      v14 = vceq_f32(v12[2], *v13);
      v15 = vpmin_u32(v14, v14).u32[0];
      if (*(*a2 + 4 * v10) == 3)
      {
        operator new();
      }

      std::vector<re::Vector2<float>>::push_back[abi:nn200100](&v81, &v12[2]);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = v81;
        v17 = v82;
        v18 = v82 - 8;
        v82 = v18;
        if ((v18 - v81) < 0x11)
        {
          goto LABEL_16;
        }

        if (v81 == v18)
        {
          v22 = 0.0;
        }

        else
        {
          v19 = *(v17 - 2);
          v20 = 0.0;
          do
          {
            v21 = *v16;
            v16 += 8;
            v20 = v20 + ((-*(&v21 + 1) * *&v19) + (*&v21 * *(&v19 + 1)));
            v19 = v21;
          }

          while (v16 != v18);
          v22 = v20 * 0.5;
        }

        if (fabsf(v22) >= 0.0001)
        {
          v23 = &v86;
        }

        else
        {
LABEL_16:
          v23 = &v84;
        }

        std::vector<std::vector<re::Vector2<float>>>::push_back[abi:nn200100](v23, &v81);
        v82 = v81;
      }

      else
      {
        ++v11;
      }

      ++v10;
      v7 = *a1;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    if (v81 != v82)
    {
      goto LABEL_76;
    }

    if (v86 != v87)
    {
      re::pathprocessing::triangulateIndexed(&v86, &__p);
      v25 = __p;
      v24 = v80;
      if (__p != v80)
      {
        v26 = __p;
        do
        {
          *v26 += v78;
          v26 += 4;
        }

        while (v26 != v24);
      }

      v27 = v24 - v25;
      v28 = (v24 - v25) >> 2;
      if (v28 >= 1)
      {
        v29 = *(a3 + 48);
        v30 = *(a3 + 56);
        v31 = *(a3 + 64);
        if (v31 - v30 >= v27)
        {
          if (v25 != v24)
          {
            memmove(*(a3 + 56), v25, v24 - v25);
          }

          *(a3 + 56) = &v30[v27];
        }

        else
        {
          v32 = v28 + (&v30[-v29] >> 2);
          if (v32 >> 62)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v33 = &v30[-v29] >> 2;
          v34 = v31 - v29;
          if (v34 >> 1 > v32)
          {
            v32 = v34 >> 1;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v35 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v32;
          }

          if (v35)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a3 + 48, v35);
          }

          v36 = 4 * v33;
          v37 = (v36 + v27);
          v38 = v36;
          do
          {
            v39 = *v25;
            v25 += 4;
            *v38++ = v39;
            v27 -= 4;
          }

          while (v27);
          memcpy(v37, v30, *(a3 + 56) - v30);
          v40 = *(a3 + 48);
          v41 = &v37[*(a3 + 56) - v30];
          *(a3 + 56) = v30;
          v42 = (v36 - (v30 - v40));
          memcpy(v42, v40, v30 - v40);
          v43 = *(a3 + 48);
          *(a3 + 48) = v42;
          *(a3 + 56) = v41;
          *(a3 + 64) = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }
      }

      v44 = v86;
      if (v86 != v87)
      {
        v45 = v87;
        do
        {
          std::vector<re::Vector3<float>>::reserve(a3, ((v44[1] - *v44) >> 3) + ((*(a3 + 8) - *a3) >> 4));
          v47 = *v44;
          v48 = v44[1];
          if (*v44 != v48)
          {
            v49 = *(a3 + 8);
            do
            {
              v50 = *(a3 + 16);
              if (v49 >= v50)
              {
                v51 = (v49 - *a3) >> 4;
                if ((v51 + 1) >> 60)
                {
                  goto LABEL_84;
                }

                v52 = v50 - *a3;
                v53 = v52 >> 3;
                if (v52 >> 3 <= (v51 + 1))
                {
                  v53 = v51 + 1;
                }

                if (v52 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v54 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v54 = v53;
                }

                if (v54)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a3, v54);
                }

                *&v46 = *v47;
                DWORD2(v46) = 0;
                *(16 * v51) = v46;
                v49 = (16 * v51 + 16);
                v55 = *(a3 + 8) - *a3;
                v56 = (16 * v51 - v55);
                memcpy(v56, *a3, v55);
                v57 = *a3;
                *a3 = v56;
                *(a3 + 8) = v49;
                *(a3 + 16) = 0;
                if (v57)
                {
                  operator delete(v57);
                }
              }

              else
              {
                *&v46 = *v47;
                DWORD2(v46) = 0;
                *v49++ = v46;
              }

              *(a3 + 8) = v49;
              ++v47;
            }

            while (v47 != v48);
          }

          v44 += 3;
        }

        while (v44 != v45);
      }

      if (__p)
      {
        v80 = __p;
        operator delete(__p);
      }
    }
  }

  v58 = (*(a3 + 8) - *a3) >> 4;
  v59 = v58 - v78;
  if (v58 != v78)
  {
    v60 = (v77 >> 4);
    v62 = *(a3 + 32);
    v61 = *(a3 + 40);
    if (v59 <= (v61 - v62) >> 4)
    {
      v67 = &v62[v59];
      v68 = 16 * v58 - 16 * v60;
      do
      {
        *v62++ = xmmword_1E30476A0;
        v68 -= 16;
      }

      while (v68);
      *(a3 + 32) = v67;
    }

    else
    {
      v63 = *(a3 + 24);
      v64 = v59 + ((v62 - v63) >> 4);
      if (v64 >> 60)
      {
LABEL_84:
        std::string::__throw_length_error[abi:nn200100]();
      }

      v65 = v61 - v63;
      if (v65 >> 3 > v64)
      {
        v64 = v65 >> 3;
      }

      if (v65 >= 0x7FFFFFFFFFFFFFF0)
      {
        v66 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v66 = v64;
      }

      if (v66)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a3 + 24, v66);
      }

      v69 = 16 * ((v62 - v63) >> 4);
      v70 = (v69 + 16 * v59);
      v71 = v69;
      v72 = 16 * v58 - 16 * v60;
      do
      {
        *v71++ = xmmword_1E30476A0;
        v72 -= 16;
      }

      while (v72);
      memcpy(v70, v62, *(a3 + 32) - v62);
      v73 = *(a3 + 24);
      v74 = &v70[*(a3 + 32) - v62];
      *(a3 + 32) = v62;
      v75 = (v69 - (v62 - v73));
      memcpy(v75, v73, v62 - v73);
      v76 = *(a3 + 24);
      *(a3 + 24) = v75;
      *(a3 + 32) = v74;
      *(a3 + 40) = 0;
      if (v76)
      {
        operator delete(v76);
      }
    }
  }

LABEL_76:
  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  v81 = &v84;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v81);
  *&v84 = &v86;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v84);
}

const void **std::vector<std::vector<re::Vector2<float>>>::push_back[abi:nn200100](const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<geo::math::Matrix<unsigned int,2,1>>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void std::vector<re::Vector3<float>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void re::pathprocessing::generateCapAndBevel(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t a5, void *a6, int a7, __n128 a8, float a9)
{
  if (a4)
  {
    v37 = a8.n128_f32[0];
    v17 = *a1;
    v16 = a1[1];
    memset(v41, 0, sizeof(v41));
    if (v16 != v17)
    {
      std::vector<unsigned long>::__vallocate[abi:nn200100](v41, 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3));
    }

    re::pathprocessing::computeNormal(a1, 0, **a3, v41);
    v24 = *a3;
    if (*(a3 + 8) - *a3 != 8)
    {
      v25 = 0;
      do
      {
        v26 = &v24[v25++];
        re::pathprocessing::computeNormal(a1, *v26, v26[1], v41);
        v24 = *a3;
      }

      while (v25 < ((*(a3 + 8) - *a3) >> 3) - 1);
    }

    memset(v40, 0, sizeof(v40));
    v27 = a1[1];
    if (v27 != *a1)
    {
      std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](v40, 0xAAAAAAAAAAAAAAABLL * ((v27 - *a1) >> 3));
    }

    re::pathprocessing::offsetBeziers(v41, a2, 0, *v24, v40, v37, v18, v19, v20, v21, v22, v23);
    v34 = *a3;
    if (*(a3 + 8) - *a3 != 8)
    {
      v35 = 0;
      do
      {
        v36 = &v34[v35++];
        re::pathprocessing::offsetBeziers(v41, a2, *v36, v36[1], v40, v37, v28, v29, v30, v31, v32, v33);
        v34 = *a3;
      }

      while (v35 < ((*(a3 + 8) - *a3) >> 3) - 1);
    }

    std::vector<re::SpatialCurve<re::Vector2<float>> *,std::allocator<re::SpatialCurve<re::Vector2<float>> *>>::vector[abi:nn200100](__p, a6);
    re::pathprocessing::createCapTriangles(v40, a2, a5, __p, a7);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    memset(v42, 0, sizeof(v42));
    std::vector<unsigned long>::__vallocate[abi:nn200100](v42, a9);
  }

  std::vector<re::SpatialCurve<re::Vector2<float>> *,std::allocator<re::SpatialCurve<re::Vector2<float>> *>>::vector[abi:nn200100](v38, a6);
  re::pathprocessing::createCapTriangles(a1, a2, a5, v38, a7);
  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }
}

unint64_t re::pathprocessing::convertCapToBottom(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, void *a7, float a8)
{
  v8 = a2 - result;
  if (a2 > result)
  {
    v9 = -a8;
    v10 = (16 * result) | 8;
    do
    {
      *(*a7 + v10) = v9 - *(*a7 + v10);
      v10 += 16;
      --v8;
    }

    while (v8);
  }

  v11 = a4 - a3;
  if (a4 > a3)
  {
    v12 = (16 * a3) | 8;
    do
    {
      *(a7[3] + v12) = -*(a7[3] + v12);
      v12 += 16;
      --v11;
    }

    while (v11);
  }

  if (a5 < a6)
  {
    v13 = a7[6];
    do
    {
      v14 = (v13 + 4 * a5);
      v15 = *v14;
      *v14 = v14[2];
      v14[2] = v15;
      a5 += 3;
    }

    while (a5 < a6);
  }

  return result;
}

void std::vector<re::Vector3<float>>::resize(uint64_t *a1, unint64_t a2)
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

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
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

        std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a1, v10);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

void re::pathprocessing::simpleExtrudeMesh(unsigned __int8 **a1@<X0>, uint64_t a2@<X1>, float32x2_t *a3@<X2>, std::vector<int> *a4@<X3>, unint64_t a5@<X8>)
{
  v6 = a3;
  v7 = a2;
  v268 = *MEMORY[0x1E69E9840];
  begin = a4->__begin_;
  end = a4->__end_;
  if (a3[1].i32[0])
  {
    v11 = a3->f32[1] <= 0.0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  v13 = re::pathprocessing::IndexedMesh::IndexedMesh(v247, a1, 1);
  if (v251 == v250)
  {
    v139 = v255[0];
    v140 = v255[1];
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = &re::pathprocessing::PathProcessingErrorCategory(void)::instance;
    *(a5 + 24) = v139;
    *(a5 + 40) = v140;
  }

  else
  {
    if ((v6[3].i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF && (v6[3].i32[1] & 0x7FFFFFFFu) <= 0x7F7FFFFF && (v6[4].i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF && (v6[4].i32[1] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v14 = v6[3];
      v15 = v6[4];
      v16 = vsub_f32(v247[0], v14);
    }

    else
    {
      v14 = v247[0];
      v15 = v247[1];
      v16 = v247[0];
    }

    v17 = vsub_f32(v15, v14);
    v18 = fmaxf(v17.f32[0], v17.f32[1]);
    v19 = v6->f32[1];
    v218 = v12;
    if ((v12 & 1) == 0)
    {
      v19 = 0.0;
    }

    if (v6[1].i8[4])
    {
      v20 = v18 * v19;
    }

    else
    {
      v20 = v19;
    }

    if (v6[1].i8[4])
    {
      v21 = v6->f32[0] * v18;
    }

    else
    {
      v21 = v6->f32[0];
    }

    v22 = -v21;
    v216 = v21;
    v23 = v20 - v21;
    if ((*&v6[2] & 4) != 0)
    {
      v22 = v23;
    }

    v224 = v22;
    v217 = v6[5].i32[0];
    re::pathprocessing::getBezierIslands(v247, v7, &v244);
    if (v244)
    {
      v25 = v245;
      if (v245 != *(&v245 + 1))
      {
        v26 = v20 >= v216;
        if ((v218 & 1) == 0)
        {
          v26 = v216 <= 0.0;
        }

        v213 = v26;
        v24.n128_u64[0] = 0x3F8000003EAAAAABLL;
        v215 = v6;
        v211 = end;
        v212 = a5;
        v185 = *(&v245 + 1);
        v198 = begin;
        do
        {
          v241 = 0;
          v242 = 0;
          v243 = 0;
          re::pathprocessing::subdivideBezierOnSelfIntersection(v25, v25 + 3, &v241, &v239, v24);
          v236 = 0;
          v237 = 0;
          v238 = 0;
          v214 = v25;
          if (v240 != v239)
          {
            if (!((0xAAAAAAAAAAAAAAABLL * ((v240 - v239) >> 3)) >> 62))
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(&v236, 0xAAAAAAAAAAAAAAABLL * ((v240 - v239) >> 3));
            }

            std::string::__throw_length_error[abi:nn200100]();
          }

          v28 = a4->__begin_;
          v27 = a4->__end_;
          v30 = a4[1].__begin_;
          v29 = a4[1].__end_;
          v32 = a4[2].__begin_;
          v31 = a4[2].__end_;
          v33 = v215;
          if (v215[2].i8[0])
          {
            __p = 0;
            __dst = 0;
            v235 = 0;
            if (v242 != v241)
            {
              std::vector<unsigned long>::__vallocate[abi:nn200100](&__p, (v242 - v241) >> 3);
            }

            v34 = v215[1].u32[0];
            memset(v232, 0, sizeof(v232));
            v24.n128_f32[0] = v20;
            re::pathprocessing::generateCapAndBevel(&v239, &v236, &__p, v218 & 1, a4, v232, v217, v24, v34);
            v33 = v215;
            if (__p)
            {
              __dst = __p;
              operator delete(__p);
            }
          }

          v35 = v33[2];
          if ((v35.i8[0] & 4) != 0)
          {
            v36 = v27 - v28;
            v37 = (v27 - v28) >> 4;
            v38 = v29 - v30;
            v39 = (v29 - v30) >> 4;
            v40 = v31 - v32;
            v41 = v31 - v32;
            if (v35.i8[0])
            {
              v43 = v39;
              v226 = v41;
              v44 = a4->__end_ - a4->__begin_;
              v45 = a4[1].__begin_;
              v46 = a4[1].__end_;
              v219 = a4[2].__begin_;
              v47 = (v44 >> 4) - v37;
              v48 = v47;
              v225 = v44 >> 4;
              v221 = a4[2].__end_;
              v222 = (v44 >> 4) + v47;
              std::vector<re::Vector3<float>>::resize(a4, v222);
              if (v47)
              {
                do
                {
                  *(a4->__begin_ + v44) = *(a4->__begin_ + v36);
                  v44 += 16;
                  v36 += 16;
                  --v48;
                }

                while (v48);
              }

              v49 = v46 - v45;
              v50 = (v46 - v45) >> 4;
              std::vector<re::Vector3<float>>::resize(&a4[1], v50 - v43 + v50);
              if (v50 != v43)
              {
                v51 = v50 - v43;
                do
                {
                  *(a4[1].__begin_ + v49) = *(a4[1].__begin_ + v38);
                  v49 += 16;
                  v38 += 16;
                  --v51;
                }

                while (v51);
              }

              v52 = v221 - v219;
              std::vector<unsigned int>::resize(a4 + 2, v52 - v226 + v52);
              if (v52 != v226)
              {
                v53 = a4[2].__begin_;
                v54 = (v53 + v40);
                v55 = (v53 + v221 - v219);
                v56 = v52 - v226;
                do
                {
                  v57 = *v54++;
                  *v55++ = v57 + v47;
                  --v56;
                }

                while (v56);
              }

              re::pathprocessing::convertCapToBottom(v225, v222, v50, v50 - v43 + v50, v52, v52 - v226 + v52, a4, v216);
              v33 = v215;
            }

            else
            {
              v229 = 0;
              v230 = 0;
              v231 = 0;
              if (v242 != v241)
              {
                std::vector<unsigned long>::__vallocate[abi:nn200100](&v229, (v242 - v241) >> 3);
              }

              v33 = v215;
              v42 = v215[1].u32[0];
              memset(v228, 0, sizeof(v228));
              v24.n128_f32[0] = v20;
              re::pathprocessing::generateCapAndBevel(&v239, &v236, &v229, v218 & 1, a4, v228, v217, v24, v42);
              if (v229)
              {
                v230 = v229;
                operator delete(v229);
              }

              re::pathprocessing::convertCapToBottom(v37, (a4->__end_ - a4->__begin_) >> 4, v39, (a4[1].__end_ - a4[1].__begin_) >> 4, v41, a4[2].__end_ - a4[2].__begin_, a4, v216);
            }
          }

          if ((v33[2].i8[0] & 2) != 0 && !v213 && v240 != v239)
          {
            v58 = 0;
            v59 = 0xAAAAAAAAAAAAAAABLL * ((v240 - v239) >> 3);
            if (v59 <= 1)
            {
              v59 = 1;
            }

            v220 = v59;
            do
            {
              v61 = a4->__begin_;
              v60 = a4->__end_;
              v62 = *(8 * v58);
              if (*v62 == 1)
              {
                if ((*(*(v62 + 208) + 40))(v62 + 208))
                {
                  v63 = (*(*(v62 + 208) + 40))(v62 + 208);
                }

                else
                {
                  v63 = 0xFFFF;
                }

                re::Spline<float>::knotAtIndex(v62 + 208, v63);
                v65 = v66;
              }

              else
              {
                v64 = *(v62 + 184);
                if (v64)
                {
                  v65 = *(*(v62 + 200) + 24 * v64 - 8);
                }

                else
                {
                  v65 = 0.0;
                }
              }

              v67 = (v239 + 24 * v58);
              v223 = v58;
              if (re::pathprocessing::Bezier2::isLine(v67))
              {
                v70 = 1;
              }

              else
              {
                v71 = (v65 * v217);
                if (v71 <= 1)
                {
                  v72 = 1;
                }

                else
                {
                  v72 = v71;
                }

                if (re::pathprocessing::Bezier2::isPoint(v67))
                {
                  v70 = 1;
                }

                else
                {
                  v70 = v72;
                }
              }

              v73 = 0;
              v74 = (v60 - v61) >> 4;
              v75 = v70;
              do
              {
                v69.n128_f32[0] = v65 * (v73 / v75);
                v77 = re::SpatialCurve<re::Vector2<float>>::evaluateAt(v62, v69, v68);
                if (*v62 == 1)
                {
                  v78 = re::BezierSpline<float>::evaluateAt(v62 + 208, v76, v65 * (v73 / v75));
                  SplineIndexForParameter = re::SpatialCurve<re::Vector2<float>>::findSplineIndexForParameter(v62, v79, v78);
                  v81 = *(v62 + 184);
                  if (v81 <= SplineIndexForParameter)
                  {
                    goto LABEL_163;
                  }

                  v82 = *(*(v62 + 200) + 24 * SplineIndexForParameter);
                  v83 = (*(*v82 + 128))(v82, 1, v78);
                  v85 = v83;
                  v86 = sqrtf(vaddv_f32(vmul_f32(v83, v83)));
                  if (v86 > 0.0)
                  {
                    v85 = vmul_n_f32(v83, 1.0 / v86);
                  }
                }

                else
                {
                  SplineIndexForParameter = re::SpatialCurve<re::Vector2<float>>::findSplineIndexForParameter(v62, v76, v65 * (v73 / v75));
                  v81 = *(v62 + 184);
                  if (v81 <= SplineIndexForParameter)
                  {
                    *v258 = 0;
                    v256 = 0u;
                    v257 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v143 = MEMORY[0x1E69E9C10];
                    v144 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v265[0]) = 136315906;
                    *(v265 + 4) = "operator[]";
                    WORD6(v265[0]) = 1024;
                    if (v144)
                    {
                      v145 = 3;
                    }

                    else
                    {
                      v145 = 2;
                    }

                    *(v265 + 14) = 797;
                    WORD1(v265[1]) = 2048;
                    *(&v265[1] + 4) = SplineIndexForParameter;
                    WORD6(v265[1]) = 2048;
                    *(&v265[1] + 14) = v81;
                    _os_log_send_and_compose_impl(v145, v258, v255, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v265, 38, v185, v198);
                    _os_crash_msg();
                    __break(1u);
LABEL_163:
                    *v258 = 0;
                    v256 = 0u;
                    v257 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v146 = MEMORY[0x1E69E9C10];
                    v147 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v265[0]) = 136315906;
                    *(v265 + 4) = "operator[]";
                    WORD6(v265[0]) = 1024;
                    if (v147)
                    {
                      v148 = 3;
                    }

                    else
                    {
                      v148 = 2;
                    }

                    *(v265 + 14) = 797;
                    WORD1(v265[1]) = 2048;
                    *(&v265[1] + 4) = SplineIndexForParameter;
                    WORD6(v265[1]) = 2048;
                    *(&v265[1] + 14) = v81;
                    _os_log_send_and_compose_impl(v148, v258, v255, 80, &dword_1E1C61000, v146, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v265, 38, v185, v198);
                    _os_crash_msg();
                    __break(1u);
                    v254 = 0;
                    v266 = 0u;
                    v267 = 0u;
                    memset(v265, 0, sizeof(v265));
                    v149 = MEMORY[0x1E69E9C10];
                    v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v258 = 136315906;
                    *&v258[4] = "operator[]";
                    v259 = 1024;
                    if (v150)
                    {
                      v151 = 3;
                    }

                    else
                    {
                      v151 = 2;
                    }

                    v260 = 789;
                    v261 = 2048;
                    v262 = 0;
                    v263 = 2048;
                    v264 = 0;
                    _os_log_send_and_compose_impl(v151, &v254, v265, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v258, 38, v186, v199);
                    _os_crash_msg();
                    __break(1u);
                    v254 = 0;
                    v266 = 0u;
                    v267 = 0u;
                    memset(v265, 0, sizeof(v265));
                    v152 = MEMORY[0x1E69E9C10];
                    v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v258 = 136315906;
                    *&v258[4] = "operator[]";
                    v259 = 1024;
                    if (v153)
                    {
                      v154 = 3;
                    }

                    else
                    {
                      v154 = 2;
                    }

                    v260 = 797;
                    v261 = 2048;
                    v262 = 0;
                    v263 = 2048;
                    v264 = 0;
                    _os_log_send_and_compose_impl(v154, &v254, v265, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v258, 38, v187, v200);
                    _os_crash_msg();
                    __break(1u);
                    v254 = 0;
                    v266 = 0u;
                    v267 = 0u;
                    memset(v265, 0, sizeof(v265));
                    v155 = MEMORY[0x1E69E9C10];
                    v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v258 = 136315906;
                    *&v258[4] = "operator[]";
                    v259 = 1024;
                    if (v156)
                    {
                      v157 = 3;
                    }

                    else
                    {
                      v157 = 2;
                    }

                    v260 = 789;
                    v261 = 2048;
                    v262 = 0;
                    v263 = 2048;
                    v264 = 0;
                    _os_log_send_and_compose_impl(v157, &v254, v265, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v258, 38, v188, v201);
                    _os_crash_msg();
                    __break(1u);
                    *v258 = 0;
                    v256 = 0u;
                    v257 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v158 = MEMORY[0x1E69E9C10];
                    v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v265[0]) = 136315906;
                    *(v265 + 4) = "operator[]";
                    WORD6(v265[0]) = 1024;
                    if (v159)
                    {
                      v160 = 3;
                    }

                    else
                    {
                      v160 = 2;
                    }

                    *(v265 + 14) = 789;
                    WORD1(v265[1]) = 2048;
                    *(&v265[1] + 4) = SplineIndexForParameter;
                    WORD6(v265[1]) = 2048;
                    *(&v265[1] + 14) = v81;
                    _os_log_send_and_compose_impl(v160, v258, v255, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v265, 38, v189, v202);
                    _os_crash_msg();
                    __break(1u);
                    *v258 = 0;
                    v256 = 0u;
                    v257 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v161 = MEMORY[0x1E69E9C10];
                    v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v265[0]) = 136315906;
                    *(v265 + 4) = "operator[]";
                    WORD6(v265[0]) = 1024;
                    if (v162)
                    {
                      v163 = 3;
                    }

                    else
                    {
                      v163 = 2;
                    }

                    *(v265 + 14) = 789;
                    WORD1(v265[1]) = 2048;
                    *(&v265[1] + 4) = SplineIndexForParameter;
                    WORD6(v265[1]) = 2048;
                    *(&v265[1] + 14) = v81;
                    _os_log_send_and_compose_impl(v163, v258, v255, 80, &dword_1E1C61000, v161, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v265, 38, v190, v203);
                    _os_crash_msg();
                    __break(1u);
                    *v258 = 0;
                    v256 = 0u;
                    v257 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v164 = MEMORY[0x1E69E9C10];
                    v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v265[0]) = 136315906;
                    *(v265 + 4) = "operator[]";
                    WORD6(v265[0]) = 1024;
                    if (v165)
                    {
                      v166 = 3;
                    }

                    else
                    {
                      v166 = 2;
                    }

                    *(v265 + 14) = 789;
                    WORD1(v265[1]) = 2048;
                    *(&v265[1] + 4) = v58;
                    WORD6(v265[1]) = 2048;
                    *(&v265[1] + 14) = v77;
                    _os_log_send_and_compose_impl(v166, v258, v255, 80, &dword_1E1C61000, v164, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v265, 38, v191, v204);
                    _os_crash_msg();
                    __break(1u);
                    *v258 = 0;
                    v256 = 0u;
                    v257 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v167 = MEMORY[0x1E69E9C10];
                    v168 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v265[0]) = 136315906;
                    *(v265 + 4) = "operator[]";
                    WORD6(v265[0]) = 1024;
                    if (v168)
                    {
                      v169 = 3;
                    }

                    else
                    {
                      v169 = 2;
                    }

                    *(v265 + 14) = 789;
                    WORD1(v265[1]) = 2048;
                    *(&v265[1] + 4) = v81;
                    WORD6(v265[1]) = 2048;
                    *(&v265[1] + 14) = v77;
                    _os_log_send_and_compose_impl(v169, v258, v255, 80, &dword_1E1C61000, v167, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v265, 38, v192, v205);
                    _os_crash_msg();
                    __break(1u);
                    *v258 = 0;
                    v256 = 0u;
                    v257 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v170 = MEMORY[0x1E69E9C10];
                    v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v265[0]) = 136315906;
                    *(v265 + 4) = "operator[]";
                    WORD6(v265[0]) = 1024;
                    if (v171)
                    {
                      v172 = 3;
                    }

                    else
                    {
                      v172 = 2;
                    }

                    *(v265 + 14) = 789;
                    WORD1(v265[1]) = 2048;
                    *(&v265[1] + 4) = v70;
                    WORD6(v265[1]) = 2048;
                    *(&v265[1] + 14) = v77;
                    _os_log_send_and_compose_impl(v172, v258, v255, 80, &dword_1E1C61000, v170, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v265, 38, v193, v206);
                    _os_crash_msg();
                    __break(1u);
                    *v258 = 0;
                    v256 = 0u;
                    v257 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v173 = MEMORY[0x1E69E9C10];
                    v174 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v265[0]) = 136315906;
                    *(v265 + 4) = "operator[]";
                    WORD6(v265[0]) = 1024;
                    if (v174)
                    {
                      v175 = 3;
                    }

                    else
                    {
                      v175 = 2;
                    }

                    *(v265 + 14) = 789;
                    WORD1(v265[1]) = 2048;
                    *(&v265[1] + 4) = v70 + 1;
                    WORD6(v265[1]) = 2048;
                    *(&v265[1] + 14) = SplineIndexForParameter;
                    _os_log_send_and_compose_impl(v175, v258, v255, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v265, 38, v194, v207);
                    _os_crash_msg();
                    __break(1u);
                    v253 = 0;
                    v266 = 0u;
                    v267 = 0u;
                    memset(v265, 0, sizeof(v265));
                    v176 = MEMORY[0x1E69E9C10];
                    v177 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v258 = 136315906;
                    *&v258[4] = "operator[]";
                    v259 = 1024;
                    if (v177)
                    {
                      v178 = 3;
                    }

                    else
                    {
                      v178 = 2;
                    }

                    v260 = 789;
                    v261 = 2048;
                    v262 = v70 + 1;
                    v263 = 2048;
                    v264 = v77;
                    _os_log_send_and_compose_impl(v178, &v253, v265, 80, &dword_1E1C61000, v176, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v258, 38, v195, v208);
                    _os_crash_msg();
                    __break(1u);
                    v254 = 0;
                    v266 = 0u;
                    v267 = 0u;
                    memset(v265, 0, sizeof(v265));
                    v179 = MEMORY[0x1E69E9C10];
                    v180 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v258 = 136315906;
                    *&v258[4] = "operator[]";
                    v259 = 1024;
                    if (v180)
                    {
                      v181 = 3;
                    }

                    else
                    {
                      v181 = 2;
                    }

                    v260 = 789;
                    v261 = 2048;
                    v262 = v58;
                    v263 = 2048;
                    v264 = v77;
                    _os_log_send_and_compose_impl(v181, &v254, v265, 80, &dword_1E1C61000, v179, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v258, 38, v196, v209);
                    _os_crash_msg();
                    __break(1u);
                    *v258 = 0;
                    v256 = 0u;
                    v257 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v182 = MEMORY[0x1E69E9C10];
                    v183 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v265[0]) = 136315906;
                    *(v265 + 4) = "operator[]";
                    WORD6(v265[0]) = 1024;
                    if (v183)
                    {
                      v184 = 3;
                    }

                    else
                    {
                      v184 = 2;
                    }

                    *(v265 + 14) = 789;
                    WORD1(v265[1]) = 2048;
                    *(&v265[1] + 4) = 0;
                    WORD6(v265[1]) = 2048;
                    *(&v265[1] + 14) = 0;
                    _os_log_send_and_compose_impl(v184, v258, v255, 80, &dword_1E1C61000, v182, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v265, 38, v197, v210);
                    _os_crash_msg();
                    __break(1u);
LABEL_203:
                    std::string::__throw_length_error[abi:nn200100]();
                  }

                  v87 = *(*(v62 + 200) + 24 * SplineIndexForParameter);
                  v85 = (*(*v87 + 128))(v87, 1, v65 * (v73 / v75));
                }

                *&v84 = v77;
                v89 = a4->__end_;
                value = a4->__end_cap_.__value_;
                if (v89 >= value)
                {
                  v92 = (v89 - a4->__begin_) >> 4;
                  if ((v92 + 1) >> 60)
                  {
                    goto LABEL_203;
                  }

                  v93 = value - a4->__begin_;
                  v94 = v93 >> 3;
                  if (v93 >> 3 <= (v92 + 1))
                  {
                    v94 = v92 + 1;
                  }

                  if (v93 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v95 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v95 = v94;
                  }

                  v227 = v84;
                  if (v95)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a4, v95);
                  }

                  v58 = 0;
                  v96 = v84;
                  *(&v96 + 2) = -v20;
                  *(16 * v92) = v96;
                  v91 = (16 * v92 + 16);
                  v97 = a4->__end_ - a4->__begin_;
                  v98 = (16 * v92 - v97);
                  memcpy(v98, a4->__begin_, v97);
                  v99 = a4->__begin_;
                  a4->__begin_ = v98;
                  a4->__end_ = v91;
                  a4->__end_cap_.__value_ = 0;
                  if (v99)
                  {
                    operator delete(v99);
                  }

                  v84 = v227;
                }

                else
                {
                  v90 = v84;
                  *(&v90 + 2) = -v20;
                  *v89 = v90;
                  v91 = v89 + 4;
                }

                a4->__end_ = v91;
                v100 = a4->__end_cap_.__value_;
                if (v91 >= v100)
                {
                  v102 = (v91 - a4->__begin_) >> 4;
                  if ((v102 + 1) >> 60)
                  {
                    goto LABEL_203;
                  }

                  v103 = v100 - a4->__begin_;
                  v104 = v103 >> 3;
                  if (v103 >> 3 <= (v102 + 1))
                  {
                    v104 = v102 + 1;
                  }

                  if (v103 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v105 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v105 = v104;
                  }

                  if (v105)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a4, v105);
                  }

                  v58 = 0;
                  *(&v84 + 2) = v224;
                  *(16 * v102) = v84;
                  v101 = (16 * v102 + 16);
                  v106 = a4->__end_ - a4->__begin_;
                  v107 = (16 * v102 - v106);
                  memcpy(v107, a4->__begin_, v106);
                  v108 = a4->__begin_;
                  a4->__begin_ = v107;
                  a4->__end_ = v101;
                  a4->__end_cap_.__value_ = 0;
                  if (v108)
                  {
                    operator delete(v108);
                  }
                }

                else
                {
                  *(&v84 + 2) = v224;
                  *v91 = v84;
                  v101 = v91 + 4;
                }

                v109 = HIDWORD(v85) ^ 0x80000000;
                v110 = v85;
                a4->__end_ = v101;
                v112 = a4[1].__end_;
                v111 = a4[1].__end_cap_.__value_;
                if (v112 >= v111)
                {
                  v114 = a4[1].__begin_;
                  v115 = (v112 - v114) >> 4;
                  if ((v115 + 1) >> 60)
                  {
                    goto LABEL_203;
                  }

                  v116 = v111 - v114;
                  v117 = v116 >> 3;
                  if (v116 >> 3 <= (v115 + 1))
                  {
                    v117 = v115 + 1;
                  }

                  if (v116 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v118 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v118 = v117;
                  }

                  if (v118)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(&a4[1], v118);
                  }

                  v58 = 0;
                  *(16 * v115) = __PAIR64__(v85, v109);
                  v113 = (16 * v115 + 16);
                  v119 = a4[1].__begin_;
                  v120 = (a4[1].__end_ - v119);
                  v121 = (16 * v115 - v120);
                  memcpy(v121, v119, v120);
                  v122 = a4[1].__begin_;
                  a4[1].__begin_ = v121;
                  a4[1].__end_ = v113;
                  a4[1].__end_cap_.__value_ = 0;
                  if (v122)
                  {
                    operator delete(v122);
                  }

                  v109 = HIDWORD(v85) ^ 0x80000000;
                  v110 = v85;
                }

                else
                {
                  *v112 = __PAIR64__(v85, v109);
                  v113 = v112 + 4;
                }

                a4[1].__end_ = v113;
                v123 = a4[1].__end_cap_.__value_;
                if (v113 >= v123)
                {
                  v125 = a4[1].__begin_;
                  v126 = (v113 - v125) >> 4;
                  if ((v126 + 1) >> 60)
                  {
                    goto LABEL_203;
                  }

                  v127 = v123 - v125;
                  v128 = v127 >> 3;
                  if (v127 >> 3 <= (v126 + 1))
                  {
                    v128 = v126 + 1;
                  }

                  if (v127 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v129 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v129 = v128;
                  }

                  if (v129)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(&a4[1], v129);
                  }

                  v58 = 0;
                  *(16 * v126) = __PAIR64__(v110, v109);
                  v124 = (16 * v126 + 16);
                  v130 = a4[1].__begin_;
                  v131 = (a4[1].__end_ - v130);
                  v132 = (16 * v126 - v131);
                  memcpy(v132, v130, v131);
                  v133 = a4[1].__begin_;
                  a4[1].__begin_ = v132;
                  a4[1].__end_ = v124;
                  a4[1].__end_cap_.__value_ = 0;
                  if (v133)
                  {
                    operator delete(v133);
                  }
                }

                else
                {
                  v69.n128_u64[1] = 0;
                  v69.n128_u32[1] = v110;
                  *v113 = __PAIR64__(v110, v109);
                  v124 = v113 + 4;
                }

                a4[1].__end_ = v124;
                ++v73;
              }

              while (v70 + 1 != v73);
              do
              {
                LODWORD(v255[0]) = v74;
                v134 = vadd_s32(vdup_n_s32(v74), 0x300000001);
                DWORD1(v255[0]) = v134.i32[0];
                *(v255 + 12) = v134;
                DWORD2(v255[0]) = v74 + 2;
                DWORD1(v255[1]) = v74 + 2;
                std::vector<unsigned int>::__insert_with_size[abi:nn200100]<unsigned int *,unsigned int *>(&a4[2], a4[2].__end_, v255, &v255[1] + 8);
                LODWORD(v74) = v74 + 2;
                --v70;
              }

              while (v70);
              v58 = v223 + 1;
            }

            while (v223 + 1 != v220);
          }

          end = v211;
          a5 = v212;
          begin = v198;
          if (v236)
          {
            v237 = v236;
            operator delete(v236);
          }

          v6 = v215;
          if (v239)
          {
            v240 = v239;
            operator delete(v239);
          }

          if (v241)
          {
            v242 = v241;
            operator delete(v241);
          }

          v25 = v214 + 6;
        }

        while (v214 + 6 != v185);
      }

      v135 = (end - begin) >> 4;
      v136 = a4->__begin_;
      v137 = a4->__end_ - a4->__begin_;
      if (v6[1].i8[4])
      {
        if (end - begin < v137)
        {
          v138 = 4 * v135;
          do
          {
            *&v136[v138] = vadd_f32(v16, *&v136[v138]);
            *&v136[v138] = vmulq_n_f32(*&v136[v138], 1.0 / v18);
            ++v135;
            v136 = a4->__begin_;
            v138 += 4;
          }

          while (v135 < (a4->__end_ - a4->__begin_) >> 4);
        }
      }

      else if (end - begin < v137)
      {
        v142 = 4 * v135;
        do
        {
          *&v136[v142] = vadd_f32(v16, *&v136[v142]);
          ++v135;
          v136 = a4->__begin_;
          v142 += 4;
        }

        while (v135 < (a4->__end_ - a4->__begin_) >> 4);
      }

      *a5 = 1;
    }

    else
    {
      v255[0] = v245;
      re::DynamicString::DynamicString(&v255[1], &v246);
      *a5 = 0;
      *(a5 + 8) = v255[0];
      v141 = *(&v255[2] + 1);
      *(a5 + 24) = *&v255[1];
      *(a5 + 48) = v141;
      *(a5 + 32) = *(&v255[1] + 8);
    }

    re::Result<std::vector<re::pathprocessing::BezierIslandInfo>,re::DetailedError>::~Result(&v244);
  }

  std::__tree<unsigned long long>::destroy(v252, v252[1]);
  if (v250)
  {
    v251 = v250;
    operator delete(v250);
  }

  if (v248)
  {
    v249 = v248;
    operator delete(v248);
  }
}