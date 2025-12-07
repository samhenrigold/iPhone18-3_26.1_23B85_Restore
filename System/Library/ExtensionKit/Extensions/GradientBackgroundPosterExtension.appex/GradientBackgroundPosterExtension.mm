double __vfx_script_Gradient_graph_12(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 24);
  v4 = *(arguments_buffer + 40);
  v3 = *(arguments_buffer + 48);
  v5 = **(arguments_buffer + 8);
  v156 = **(arguments_buffer + 16);
  v6 = **(arguments_buffer + 32);
  vfx_script_clock_time();
  *&v7 = v7;
  v8 = sinf(*&v7 * 4.0);
  v9 = vrsqrteq_f32(xmmword_100043A10);
  v10 = vmulq_f32(v9, vrsqrtsq_f32(xmmword_100043A10, vmulq_f32(v9, v9)));
  v150 = vmulq_f32(vmulq_f32(v10, vrsqrtsq_f32(xmmword_100043A10, vmulq_f32(v10, v10))), xmmword_100043A20);
  v11 = __sincosf_stret((((v8 * 180.0) * 3.1416) / 180.0) * 0.5);
  v12 = vmulq_n_f32(v150, v11.__sinval);
  v12.i32[3] = LODWORD(v11.__cosval);
  if (v5)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  v14 = vbslq_s8(vdupq_n_s32(v13), v12, v156);
  v15 = *v2;
  v16 = vmulq_f32(*v2, v14);
  v151 = *v2;
  v157 = v14;
  if (vaddv_f32(vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL))) >= 0.0)
  {
    v39 = vsubq_f32(v14, v15);
    v40 = vmulq_f32(v39, v39);
    v41 = vaddq_f32(v15, v14);
    v42 = vmulq_f32(v41, v41);
    v43 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v40.i8, *&vextq_s8(v40, v40, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)))));
    v44 = v43 + v43;
    v45 = 1.0;
    _ZF = (v43 + v43) == 0.0;
    v46 = 1.0;
    if (!_ZF)
    {
      v46 = sinf(v44) / v44;
    }

    v47 = v46;
    v48 = vrecpe_f32(LODWORD(v46));
    v49 = vmul_f32(v48, vrecps_f32(LODWORD(v47), v48));
    LODWORD(v50) = vmul_f32(v49, vrecps_f32(LODWORD(v47), v49)).u32[0];
    if ((v44 * 0.05) != 0.0)
    {
      v143 = v50;
      v49.f32[0] = sinf(v44 * 0.05);
      v50 = v143;
      v45 = v49.f32[0] / (v44 * 0.05);
    }

    v49.f32[0] = (v50 * v45) * 0.05;
    v51 = vdupq_lane_s32(v49, 0);
    v52 = v44 * 0.95;
    v53 = 1.0;
    if (v52 != 0.0)
    {
      v138 = v51;
      v144 = v50;
      v54 = sinf(v52);
      v51 = v138;
      v50 = v144;
      v53 = v54 / v52;
    }

    v37 = v157;
    v38 = vmlaq_f32(vmulq_n_f32(v151, (v50 * v53) * 0.95), v157, v51);
  }

  else
  {
    v17 = vaddq_f32(v15, v14);
    v18 = vmulq_f32(v17, v17);
    v19 = vsubq_f32(v14, v15);
    v20 = vmulq_f32(v19, v19);
    v21 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)))));
    v22 = v21 + v21;
    v23 = 1.0;
    _ZF = (v21 + v21) == 0.0;
    v25 = 1.0;
    if (!_ZF)
    {
      v25 = sinf(v22) / v22;
    }

    v26 = v25;
    v27 = vrecpe_f32(LODWORD(v25));
    v28 = vmul_f32(v27, vrecps_f32(LODWORD(v26), v27));
    LODWORD(v29) = vmul_f32(v28, vrecps_f32(LODWORD(v26), v28)).u32[0];
    if ((v22 * 0.05) != 0.0)
    {
      v141 = v29;
      v30 = sinf(v22 * 0.05);
      v29 = v141;
      v23 = v30 / (v22 * 0.05);
    }

    v31.i32[1] = v151.i32[1];
    v32 = vnegq_f32(v151);
    *v31.i32 = (v29 * v23) * 0.05;
    v33 = vdupq_lane_s32(v31, 0);
    v34 = v22 * 0.95;
    v35 = 1.0;
    if (v34 != 0.0)
    {
      v142 = v29;
      v152 = v32;
      v137 = v33;
      v36 = sinf(v34);
      v33 = v137;
      v29 = v142;
      v32 = v152;
      v35 = v36 / v34;
    }

    v37 = v157;
    v38 = vmlaq_f32(vmulq_n_f32(v32, (v29 * v35) * 0.95), v157, v33);
  }

  v55 = vmulq_f32(v38, v38);
  *v55.i8 = vadd_f32(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
  v56 = vdupq_lane_s32(vadd_f32(*v55.i8, vdup_lane_s32(*v55.i8, 1)), 0);
  v57 = vrsqrteq_f32(v56);
  v58 = vmulq_f32(v57, vrsqrtsq_f32(v56, vmulq_f32(v57, v57)));
  _Q1 = vbslq_s8(vceqzq_f32(v56), v38, vmulq_f32(vmulq_f32(v58, vrsqrtsq_f32(v56, vmulq_f32(v58, v58))), v38));
  *v2 = _Q1;
  _Q2 = vmulq_f32(v37, v37);
  *_Q2.i8 = vadd_f32(*_Q2.i8, *&vextq_s8(_Q2, _Q2, 8uLL));
  _Q0 = vdivq_f32(vmulq_f32(v37, xmmword_100043A30), vdupq_lane_s32(vadd_f32(*_Q2.i8, vdup_lane_s32(*_Q2.i8, 1)), 0));
  _Q2.i32[0] = _Q0.i32[3];
  v62 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL), vnegq_f32(_Q1)), _Q0, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
  v63 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(_Q1, _Q0, 3), _Q0, _Q1, 3), vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL));
  __asm { FMLA            S0, S2, V1.S[3]; float }

  v67 = v63;
  v67.i32[3] = _Q0.i32[0];
  v153 = v63;
  v158 = v67;
  v68 = acosf(_Q0.f32[0]);
  v69 = v68 + v68;
  v70 = fminf(v69, (v6 * 3.1416) / 180.0) * 0.5;
  v71 = sinf(v69 * 0.5);
  v72 = 0.0;
  if (v71 >= 0.000001)
  {
    v72 = sinf(v70) / v71;
  }

  v145 = v72;
  v73 = cosf(v70);
  *v74.i8 = vmul_n_f32(*v153.f32, v145);
  v74.i64[1] = __PAIR64__(LODWORD(v73), COERCE_UNSIGNED_INT(vmuls_lane_f32(v145, v153, 2)));
  v75 = vbslq_s8(vdupq_n_s32(0), v158, v74);
  v76 = *v4;
  v77 = vmulq_f32(*v4, v75);
  v154 = *v4;
  v159 = v75;
  if (vaddv_f32(vadd_f32(*v77.i8, *&vextq_s8(v77, v77, 8uLL))) >= 0.0)
  {
    v98 = vsubq_f32(v75, v76);
    v99 = vmulq_f32(v98, v98);
    v100 = vaddq_f32(v76, v75);
    v101 = vmulq_f32(v100, v100);
    v102 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v99.i8, *&vextq_s8(v99, v99, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v101.i8, *&vextq_s8(v101, v101, 8uLL)))));
    v103 = v102 + v102;
    v104 = 1.0;
    _ZF = (v102 + v102) == 0.0;
    v105 = 1.0;
    if (!_ZF)
    {
      v105 = sinf(v103) / v103;
    }

    v106 = v105;
    v107 = vrecpe_f32(LODWORD(v105));
    v108 = vmul_f32(v107, vrecps_f32(LODWORD(v106), v107));
    LODWORD(v109) = vmul_f32(v108, vrecps_f32(LODWORD(v106), v108)).u32[0];
    if ((v103 * 0.05) != 0.0)
    {
      v148 = v109;
      v108.f32[0] = sinf(v103 * 0.05);
      v109 = v148;
      v104 = v108.f32[0] / (v103 * 0.05);
    }

    v108.f32[0] = (v109 * v104) * 0.05;
    v110 = vdupq_lane_s32(v108, 0);
    v111 = v103 * 0.95;
    v112 = 1.0;
    if (v111 != 0.0)
    {
      v140 = v110;
      v149 = v109;
      v113 = sinf(v111);
      v110 = v140;
      v109 = v149;
      v112 = v113 / v111;
    }

    v97 = vmlaq_f32(vmulq_n_f32(v154, (v109 * v112) * 0.95), v159, v110);
  }

  else
  {
    v78 = vaddq_f32(v76, v75);
    v79 = vmulq_f32(v78, v78);
    v80 = vsubq_f32(v75, v76);
    v81 = vmulq_f32(v80, v80);
    v82 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v79.i8, *&vextq_s8(v79, v79, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v81.i8, *&vextq_s8(v81, v81, 8uLL)))));
    v83 = v82 + v82;
    v84 = 1.0;
    _ZF = (v82 + v82) == 0.0;
    v85 = 1.0;
    if (!_ZF)
    {
      v85 = sinf(v83) / v83;
    }

    v86 = v85;
    v87 = vrecpe_f32(LODWORD(v85));
    v88 = vmul_f32(v87, vrecps_f32(LODWORD(v86), v87));
    LODWORD(v89) = vmul_f32(v88, vrecps_f32(LODWORD(v86), v88)).u32[0];
    if ((v83 * 0.05) != 0.0)
    {
      v146 = v89;
      v90 = sinf(v83 * 0.05);
      v89 = v146;
      v84 = v90 / (v83 * 0.05);
    }

    v91.i32[1] = v154.i32[1];
    v92 = vnegq_f32(v154);
    *v91.i32 = (v89 * v84) * 0.05;
    v93 = vdupq_lane_s32(v91, 0);
    v94 = v83 * 0.95;
    v95 = 1.0;
    if (v94 != 0.0)
    {
      v147 = v89;
      v155 = v92;
      v139 = v93;
      v96 = sinf(v94);
      v93 = v139;
      v89 = v147;
      v92 = v155;
      v95 = v96 / v94;
    }

    v97 = vmlaq_f32(vmulq_n_f32(v92, (v89 * v95) * 0.95), v159, v93);
  }

  v114 = vmulq_f32(v97, v97);
  v115 = 0;
  *v114.i8 = vadd_f32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
  _Q1 = vdupq_lane_s32(vadd_f32(*v114.i8, vdup_lane_s32(*v114.i8, 1)), 0);
  v116 = vrsqrteq_f32(_Q1);
  v117 = vmulq_f32(v116, vrsqrtsq_f32(_Q1, vmulq_f32(v116, v116)));
  _Q2 = vbslq_s8(vceqzq_f32(_Q1), v97, vmulq_f32(vmulq_f32(v117, vrsqrtsq_f32(_Q1, vmulq_f32(v117, v117))), v97));
  _S3 = _Q2.i32[1];
  _S5 = _Q2.i32[2];
  __asm { FMLS            S1, S5, V2.S[2] }

  _S6 = _Q2.i32[3];
  __asm { FMLA            S1, S6, V2.S[3] }

  v122 = vmuls_lane_f32(_Q2.f32[2], _Q2, 3);
  v123.f32[0] = vmuls_lane_f32(_Q2.f32[1], _Q2, 3);
  v124.i32[3] = 0;
  v124.i32[0] = _Q1.i32[0];
  v124.f32[1] = (v122 + (_Q2.f32[0] * _Q2.f32[1])) + (v122 + (_Q2.f32[0] * _Q2.f32[1]));
  _Q1.i32[3] = 0;
  v124.f32[2] = -(v123.f32[0] - (_Q2.f32[0] * _Q2.f32[2])) - (v123.f32[0] - (_Q2.f32[0] * _Q2.f32[2]));
  __asm
  {
    FMLA            S4, S3, V2.S[1]
    FMLA            S4, S6, V2.S[3]
    FMLA            S16, S5, V2.S[1]
  }

  _Q1.f32[0] = -(v122 - (_Q2.f32[0] * _Q2.f32[1])) - (v122 - (_Q2.f32[0] * _Q2.f32[1]));
  _Q1.f32[1] = _S4 - (_Q2.f32[0] * _Q2.f32[0]);
  *v4 = _Q2;
  v123.f32[1] = -(_Q2.f32[0] * _Q2.f32[3]);
  v129 = vmla_laneq_f32(v123, *_Q2.f32, _Q2, 2);
  *v132.f32 = vadd_f32(v129, v129);
  __asm
  {
    FMLA            S6, S5, V2.S[2]
    FMLS            S5, S3, V2.S[1]
  }

  v132.i64[1] = _S5;
  v160[0] = xmmword_100043A20;
  v160[1] = xmmword_100043A40;
  v160[2] = xmmword_100043A50;
  v160[3] = xmmword_100043A60;
  do
  {
    _Q1.f32[2] = _S16 + _S16;
    v161[v115] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v124, COERCE_FLOAT(v160[v115])), _Q1, *&v160[v115], 1), v132, v160[v115], 2), xmmword_100043A70, v160[v115], 3);
    ++v115;
  }

  while (v115 != 4);
  result = *v161;
  v134 = v161[1];
  v135 = v161[2];
  v136 = v161[3];
  *v3 = v161[0];
  v3[1] = v134;
  v3[2] = v135;
  v3[3] = v136;
  return result;
}

float __vfx_script_Gradient_graph_13(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v31 = *(arguments_buffer + 72);
  v32 = *(arguments_buffer + 48);
  v30 = *(arguments_buffer + 88);
  v29 = *(arguments_buffer + 104);
  v28 = *(arguments_buffer + 120);
  v3 = *(arguments_buffer + 136);
  v4 = *(arguments_buffer + 152);
  v5 = *(arguments_buffer + 168);
  v6 = *(arguments_buffer + 176);
  v7 = *(arguments_buffer + 192);
  v8 = *(arguments_buffer + 200);
  v9 = *(arguments_buffer + 216);
  v10 = *(arguments_buffer + 224);
  v11 = **(arguments_buffer + 8);
  v12 = **(arguments_buffer + 16);
  v13 = **(arguments_buffer + 24);
  v14 = **(arguments_buffer + 40);
  v24 = **(arguments_buffer + 56);
  v26 = **(arguments_buffer + 80);
  v27 = **(arguments_buffer + 64);
  v25 = **(arguments_buffer + 96);
  v23 = **(arguments_buffer + 112);
  v15 = **(arguments_buffer + 128);
  v16 = **(arguments_buffer + 144);
  v17 = **(arguments_buffer + 160);
  v22 = **(arguments_buffer + 184);
  v18 = **(arguments_buffer + 208);
  vfx_script_clock_time();
  *&v19 = v19;
  *&v19 = fmaxf(*&v19 - v13, 0.0);
  *v2 = v11 + ((v12 - v11) * (1.0 - (1.0 / ((((*&v19 / 3.0) * (*&v19 / 3.0)) * 16.0) + 1.0))));
  vfx_script_clock_time();
  *&v20 = v20;
  *v10 = LODWORD(v20);
  *v9 = v14 + v18;
  *v8 = *v2;
  *v7 = v22;
  *v6 = v24;
  *v5 = v17;
  *v4 = v16;
  *v3 = v15;
  *v28 = v23;
  *v29 = v25;
  *v30 = v26;
  result = v27;
  *v31 = v27;
  *v32 = v14;
  return result;
}

__n128 __vfx_script_Gradient_graph_14(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  result = **arguments_buffer;
  **(arguments_buffer + 24) = **(arguments_buffer + 16);
  *v2 = result;
  return result;
}

__n128 __vfx_script_Gradient_graph_17(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v3 = arguments_buffer[1];
  v2 = arguments_buffer[2];
  v4 = arguments_buffer[3];
  v5 = arguments_buffer[4];
  [vfx_script_get_world_renderer() qword_10005F9F8];
  *v3 = vbsl_s8(vcgt_f32(vabd_f32(v6, *v3), vdup_n_s32(0x42480000u)), v6, *v3);
  [vfx_script_get_world_renderer() qword_10005F9F0];
  *v8.i32 = v7 * 1.5;
  *v9.i8 = vdiv_f32(*v3, vdup_lane_s32(v8, 0));
  v18 = vandq_s8(v9, vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmvn_s8(vceqz_f32(v8)), 0)), 0x1FuLL)));
  *v5 = *&v18.i32[1];
  [vfx_script_get_world_renderer() qword_10005F9F8];
  v10.f32[0] = vdiv_f32(v10, vdup_lane_s32(v10, 1)).f32[0];
  v10.f32[1] = 1.0 / v10.f32[0];
  __asm { FMOV            V1.2S, #1.0 }

  v16 = vminnm_f32(v10, _D1);
  *v4 = vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(vadd_f32(v16, v16)), vdupq_n_s64(0x3FF199999999999AuLL)));
  result = v18;
  *v2 = *v18.i32;
  return result;
}

float __vfx_script_Gradient_graph_18(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v3 = *(arguments_buffer + 16);
  v4 = **(arguments_buffer + 24);
  vfx_script_clock_delta_time();
  v6 = v4 * v5;
  *v3 = v6;
  result = v6 + *v2;
  *v2 = result;
  return result;
}

void *__vfx_script_Gradient_graph_25(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  result = vfx_script_get_arguments_buffer();
  v2 = result[1];
  v3 = *result[3];
  if (*&v3 == 0.0 || *(&v3 + 1) == 0.0 || *(&v3 + 2) == 0.0 || (v4 = *result[2], *&v4 == 1.0) || *(&v4 + 1) == 1.0 || *(&v4 + 2) == 1.0)
  {
    vfx_script_tick();
    vfx_script_string_create();
    [v2 qword_10005F9E8];

    return vfx_script_string_destroy();
  }

  return result;
}

uint64_t __vfx_script_Gradient_trigger_15(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v3 = vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  v4 = *(arguments_buffer + 40);
  v7 = *v3;
  [vfx_script_get_world_renderer() qword_10005F9F8];
  *v4 = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(1.0 - COERCE_FLOAT(vdiv_f32(v7, v5).i32[1]), v5, 1)), v7.u32[0]);
  vfx_script_string_create();
  [v2 qword_10005F9E8];
  vfx_script_clock_time();
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Gradient_trigger_16(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  v1 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_string_create();
  [v1 qword_10005F9E8];
  vfx_script_string_destroy();
  return vfx_script_graph_log();
}

uint64_t __vfx_script_Gradient_trigger_19(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v3 = *(arguments_buffer + 16);
  v4 = *(arguments_buffer + 32);
  v5 = *(arguments_buffer + 40);
  v6 = **(arguments_buffer + 24);
  vfx_script_string_create();
  [v5 qword_10005F9E8];
  *v4 = v6;
  *v3 = -1097229926;
  vfx_script_clock_time();
  *&v7 = v7;
  *v2 = LODWORD(v7);
  vfx_script_tick();
  vfx_script_clock_time();
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Gradient_trigger_20(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v3 = *(arguments_buffer + 16);
  v4 = *(arguments_buffer + 32);
  v5 = *(arguments_buffer + 40);
  v6 = **(arguments_buffer + 24);
  vfx_script_string_create();
  [v5 qword_10005F9E8];
  *v4 = v6;
  *v3 = -1082130432;
  vfx_script_clock_time();
  *&v7 = v7;
  *v2 = LODWORD(v7);
  vfx_script_tick();
  vfx_script_clock_time();
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Gradient_trigger_21(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  v1 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_string_create();
  [v1 qword_10005F9E8];

  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Gradient_trigger_22(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[4];
  v5 = arguments_buffer[6];
  v55 = arguments_buffer[2];
  v56 = arguments_buffer[5];
  v7 = arguments_buffer[7];
  v6 = arguments_buffer[8];
  v9 = arguments_buffer[9];
  v8 = arguments_buffer[10];
  v10 = arguments_buffer[12];
  v57 = *arguments_buffer[11];
  vfx_script_string_create();
  [v10 qword_10005F9E8];
  *v3 = v57;
  v12 = *v2;
  if (*v2 > 1)
  {
    if (v12 == 2)
    {
      *v43.i32 = *&v57 + *(&v57 + 2);
      v43.i32[1] = DWORD1(v57);
      v11.i32[0] = 1120403456;
      v44 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v57, v11), 0), *&v57, v43);
      [vfx_script_get_world_renderer() qword_10005F9F8];
      v46 = vbic_s8(vdiv_f32(v44, v45), vceqz_f32(v45));
      v45.f32[0] = vdiv_f32(v45, vdup_lane_s32(v45, 1)).f32[0];
      v45.f32[1] = 1.0 / v45.f32[0];
      __asm
      {
        FMOV            V2.2S, #1.0
        FMOV            V3.2S, #-1.0
      }

      v49 = vmul_f32(vminnm_f32(v45, _D2), vmla_f32(_D3, 0x4000000040000000, v46));
      v49.i32[1] = vneg_f32(v49).i32[1];
      *v6 = v49;
      vfx_script_clock_time();
      *&v50 = v50;
      *v7 = LODWORD(v50);
    }

    else
    {
      if (v12 != 3)
      {
        return vfx_script_string_destroy();
      }

      *v27.i32 = *&v57 + *(&v57 + 2);
      v27.i32[1] = DWORD1(v57);
      v11.i32[0] = 1120403456;
      v28 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v57, v11), 0), *&v57, v27);
      [vfx_script_get_world_renderer() qword_10005F9F8];
      v30 = vbic_s8(vdiv_f32(v28, v29), vceqz_f32(v29));
      v29.f32[0] = vdiv_f32(v29, vdup_lane_s32(v29, 1)).f32[0];
      v29.f32[1] = 1.0 / v29.f32[0];
      __asm
      {
        FMOV            V2.2S, #1.0
        FMOV            V3.2S, #-1.0
      }

      v33 = vmul_f32(vminnm_f32(v29, _D2), vmla_f32(_D3, 0x4000000040000000, v30));
      v33.i32[1] = vneg_f32(v33).i32[1];
      *v8 = v33;
      vfx_script_clock_time();
      *&v34 = v34;
      *v9 = LODWORD(v34);
    }
  }

  else
  {
    if (v12)
    {
      if (v12 != 1)
      {
        return vfx_script_string_destroy();
      }

      *v13.i32 = *&v57 + *(&v57 + 2);
      v13.i32[1] = DWORD1(v57);
      v11.i32[0] = 1120403456;
      v14 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v57, v11), 0), *&v57, v13);
      [vfx_script_get_world_renderer() qword_10005F9F8];
      v16 = vbic_s8(vdiv_f32(v14, v15), vceqz_f32(v15));
      v15.f32[0] = vdiv_f32(v15, vdup_lane_s32(v15, 1)).f32[0];
      v15.f32[1] = 1.0 / v15.f32[0];
      __asm
      {
        FMOV            V2.2S, #1.0
        FMOV            V3.2S, #-1.0
      }

      v23 = vmul_f32(vminnm_f32(v15, _D2), vmla_f32(_D3, 0x4000000040000000, v16));
      v23.i32[1] = vneg_f32(v23).i32[1];
      *v5 = v23;
      vfx_script_clock_time();
      v25 = v24;
      v26 = v56;
    }

    else
    {
      *v35.i32 = *&v57 + *(&v57 + 2);
      v35.i32[1] = DWORD1(v57);
      v11.i32[0] = 1120403456;
      v36 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v57, v11), 0), *&v57, v35);
      [vfx_script_get_world_renderer() qword_10005F9F8];
      v38 = vbic_s8(vdiv_f32(v36, v37), vceqz_f32(v37));
      v37.f32[0] = vdiv_f32(v37, vdup_lane_s32(v37, 1)).f32[0];
      v37.f32[1] = 1.0 / v37.f32[0];
      __asm
      {
        FMOV            V2.2S, #1.0
        FMOV            V3.2S, #-1.0
      }

      v41 = vmul_f32(vminnm_f32(v37, _D2), vmla_f32(_D3, 0x4000000040000000, v38));
      v41.i32[1] = vneg_f32(v41).i32[1];
      *v4 = v41;
      vfx_script_clock_time();
      v25 = v42;
      v26 = v55;
    }

    *v26 = v25;
  }

  v51 = *v2 + 1;
  _NF = -v51 < 0;
  v52 = -v51 & 3;
  v53 = v51 & 3;
  if (!_NF)
  {
    v53 = -v52;
  }

  *v2 = v53;
  vfx_script_tick();
  vfx_script_clock_time();
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Gradient_trigger_23(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v3 = arguments_buffer[2];
  v4 = arguments_buffer[4];
  v6 = arguments_buffer[5];
  v5 = arguments_buffer[6];
  v7 = arguments_buffer[8];
  v55 = arguments_buffer[7];
  v56 = arguments_buffer[3];
  v9 = arguments_buffer[9];
  v8 = arguments_buffer[10];
  v10 = arguments_buffer[12];
  v57 = *arguments_buffer[11];
  vfx_script_string_create();
  [v10 qword_10005F9E8];
  *v3 = v57;
  v12 = *v2;
  if (*v2 > 1)
  {
    if (v12 == 2)
    {
      *v43.i32 = *&v57 + *(&v57 + 2);
      v43.i32[1] = DWORD1(v57);
      v11.i32[0] = 1120403456;
      v44 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v57, v11), 0), *&v57, v43);
      [vfx_script_get_world_renderer() qword_10005F9F8];
      v46 = vbic_s8(vdiv_f32(v44, v45), vceqz_f32(v45));
      v45.f32[0] = vdiv_f32(v45, vdup_lane_s32(v45, 1)).f32[0];
      v45.f32[1] = 1.0 / v45.f32[0];
      __asm
      {
        FMOV            V2.2S, #1.0
        FMOV            V3.2S, #-1.0
      }

      v49 = vmul_f32(vminnm_f32(v45, _D2), vmla_f32(_D3, 0x4000000040000000, v46));
      v49.i32[1] = vneg_f32(v49).i32[1];
      *v5 = v49;
      vfx_script_clock_time();
      *&v50 = v50;
      *v6 = LODWORD(v50);
      goto LABEL_13;
    }

    if (v12 != 3)
    {
      return vfx_script_string_destroy();
    }

    *v27.i32 = *&v57 + *(&v57 + 2);
    v27.i32[1] = DWORD1(v57);
    v11.i32[0] = 1120403456;
    v28 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v57, v11), 0), *&v57, v27);
    [vfx_script_get_world_renderer() qword_10005F9F8];
    v30 = vbic_s8(vdiv_f32(v28, v29), vceqz_f32(v29));
    v29.f32[0] = vdiv_f32(v29, vdup_lane_s32(v29, 1)).f32[0];
    v29.f32[1] = 1.0 / v29.f32[0];
    __asm
    {
      FMOV            V2.2S, #1.0
      FMOV            V3.2S, #-1.0
    }

    v33 = vmul_f32(vminnm_f32(v29, _D2), vmla_f32(_D3, 0x4000000040000000, v30));
    v33.i32[1] = vneg_f32(v33).i32[1];
    *v4 = v33;
    vfx_script_clock_time();
    v25 = v34;
    v26 = v56;
  }

  else
  {
    if (!v12)
    {
      *v35.i32 = *&v57 + *(&v57 + 2);
      v35.i32[1] = DWORD1(v57);
      v11.i32[0] = 1120403456;
      v36 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v57, v11), 0), *&v57, v35);
      [vfx_script_get_world_renderer() qword_10005F9F8];
      v38 = vbic_s8(vdiv_f32(v36, v37), vceqz_f32(v37));
      v37.f32[0] = vdiv_f32(v37, vdup_lane_s32(v37, 1)).f32[0];
      v37.f32[1] = 1.0 / v37.f32[0];
      __asm
      {
        FMOV            V2.2S, #1.0
        FMOV            V3.2S, #-1.0
      }

      v41 = vmul_f32(vminnm_f32(v37, _D2), vmla_f32(_D3, 0x4000000040000000, v38));
      v41.i32[1] = vneg_f32(v41).i32[1];
      *v8 = v41;
      vfx_script_clock_time();
      *&v42 = v42;
      *v9 = LODWORD(v42);
      goto LABEL_13;
    }

    if (v12 != 1)
    {
      return vfx_script_string_destroy();
    }

    *v13.i32 = *&v57 + *(&v57 + 2);
    v13.i32[1] = DWORD1(v57);
    v11.i32[0] = 1120403456;
    v14 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v57, v11), 0), *&v57, v13);
    [vfx_script_get_world_renderer() qword_10005F9F8];
    v16 = vbic_s8(vdiv_f32(v14, v15), vceqz_f32(v15));
    v15.f32[0] = vdiv_f32(v15, vdup_lane_s32(v15, 1)).f32[0];
    v15.f32[1] = 1.0 / v15.f32[0];
    __asm
    {
      FMOV            V2.2S, #1.0
      FMOV            V3.2S, #-1.0
    }

    v23 = vmul_f32(vminnm_f32(v15, _D2), vmla_f32(_D3, 0x4000000040000000, v16));
    v23.i32[1] = vneg_f32(v23).i32[1];
    *v7 = v23;
    vfx_script_clock_time();
    v25 = v24;
    v26 = v55;
  }

  *v26 = v25;
LABEL_13:
  v51 = *v2 + 1;
  _NF = -v51 < 0;
  v52 = -v51 & 3;
  v53 = v51 & 3;
  if (!_NF)
  {
    v53 = -v52;
  }

  *v2 = v53;
  vfx_script_tick();
  vfx_script_clock_time();
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Gradient_trigger_24(uint64_t a1)
{
  if (qword_10005F860 != -1)
  {
    sub_1000412D8();
  }

  v1 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_string_create();
  [v1 qword_10005F9E8];
  vfx_script_tick();

  return vfx_script_string_destroy();
}

void sub_1000036A4(id a1)
{
  qword_10005F868 = sel_registerName("setValue:forKeyPath:");
  qword_10005F870 = sel_registerName("valueForKeyPath:");
  qword_10005F878 = objc_lookUpClass("NSString");
  qword_10005F880 = sel_registerName("stringWithUTF8String:");
  qword_10005F888 = objc_lookUpClass("VFXTransaction");
  qword_10005F890 = sel_registerName("begin");
  qword_10005F898 = sel_registerName("setAnimationDurationAsFloat:");
  qword_10005F8A0 = sel_registerName("commit");
  qword_10005F8A8 = objc_lookUpClass("NSDictionary");
  qword_10005F8B0 = objc_lookUpClass("NSMutableDictionary");
  qword_10005F8B8 = sel_registerName("dictionary");
  qword_10005F8C0 = sel_registerName("setValue:forKey:");
  qword_10005F8C8 = sel_registerName("setObject:forKey:");
  qword_10005F8D0 = objc_lookUpClass("NSValue");
  qword_10005F8D8 = objc_lookUpClass("NSNumber");
  qword_10005F8E0 = sel_registerName("numberWithBool:");
  qword_10005F8E8 = sel_registerName("numberWithFloat:");
  qword_10005F8F0 = sel_registerName("numberWithUnsignedInteger:");
  qword_10005F8F8 = sel_registerName("firstObject");
  qword_10005F900 = sel_registerName("count");
  qword_10005F908 = objc_lookUpClass("VFXNode");
  qword_10005F910 = sel_registerName("addAnimationAsset:forKey:");
  qword_10005F918 = sel_registerName("removeAllAnimations");
  qword_10005F920 = sel_registerName("removeAnimationForKey:");
  qword_10005F928 = sel_registerName("script_rootNode");
  qword_10005F930 = sel_registerName("clone");
  qword_10005F938 = sel_registerName("parentNode");
  qword_10005F940 = sel_registerName("addChildNode:");
  qword_10005F948 = sel_registerName("childNodes");
  qword_10005F950 = sel_registerName("deepClone");
  qword_10005F958 = sel_registerName("insertChildNode:atIndex:");
  qword_10005F960 = sel_registerName("removeFromParentNode");
  qword_10005F968 = sel_registerName("childNodeWithName:");
  qword_10005F970 = sel_registerName("convertPosition:fromNode:");
  qword_10005F978 = sel_registerName("convertVector:fromNode:");
  qword_10005F980 = sel_registerName("convertTransform:fromNode:");
  qword_10005F988 = sel_registerName("convertPosition:toNode:");
  qword_10005F990 = sel_registerName("convertVector:toNode:");
  qword_10005F998 = sel_registerName("convertTransform:toNode:");
  qword_10005F9A0 = sel_registerName("localTranslateBy:");
  qword_10005F9A8 = sel_registerName("localRotateBy:");
  qword_10005F9B0 = sel_registerName("rotateBy:aroundTarget:");
  qword_10005F9B8 = sel_registerName("projectPoint:");
  qword_10005F9C0 = sel_registerName("unprojectPoint:");
  qword_10005F9C8 = sel_registerName("script_hitTest:options:");
  qword_10005F9D0 = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  qword_10005F9D8 = sel_registerName("node");
  qword_10005F9E0 = sel_registerName("setState:");
  qword_10005F9E8 = sel_registerName("setStateNamed:");
  qword_10005F9F0 = sel_registerName("_contentsScaleFactor");
  qword_10005F9F8 = sel_registerName("_screenSize");
  qword_10005FA00 = sel_registerName("physicsBody");
  qword_10005FA08 = sel_registerName("script_instantiate:");
  qword_10005FA10 = sel_registerName("geometryIndex");
  qword_10005FA18 = sel_registerName("faceIndex");
  qword_10005FA20 = sel_registerName("localCoordinates");
  qword_10005FA28 = sel_registerName("worldCoordinates");
  qword_10005FA30 = sel_registerName("localNormal");
  qword_10005FA38 = sel_registerName("worldNormal");
  qword_10005FA40 = sel_registerName("modelTransform");
  qword_10005FA48 = sel_registerName("boneNode");
  qword_10005FA50 = sel_registerName("uv0");
  qword_10005FA58 = sel_registerName("presentationBoneNode");
  qword_10005FA60 = sel_registerName("presentationNode");
  qword_10005FA68 = sel_registerName("applyForce:impulse:");
  qword_10005FA70 = sel_registerName("applyForce:atPosition:impulse:");
  qword_10005FA78 = sel_registerName("applyTorque:impulse:");
  qword_10005FA80 = sel_registerName("presentationObject");
}

id convert(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 color];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

void sub_100003CD4()
{
  v1 = v0;
  [v0 bounds];
  v6 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation;
  if ((*&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  if ((*&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  if ((*&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  if ((*&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  sub_1000054B8(&qword_10005F300, &qword_100043C98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100043A80;
  v12 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView];
  *(inited + 32) = v12;
  v69 = inited + 32;
  v13 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_label];
  *(inited + 40) = v13;
  v71 = *&CGAffineTransformIdentity.c;
  v72 = *&CGAffineTransformIdentity.a;
  v70 = *&CGAffineTransformIdentity.tx;
  v14 = inited & 0xC000000000000001;
  v66 = &v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_configuration];
  v15 = v12;
  v16 = v13;
  v17 = 0;
  v18 = 0;
  v19 = &stru_10005A000;
  v20 = &stru_10005A000;
  *&v21 = 136315138;
  v65 = v21;
  v67 = v6;
  v68 = v15;
  do
  {
    v22 = v17;
    if (v14)
    {
      v23 = sub_100041D3C();
    }

    else
    {
      v23 = *(v69 + 8 * v18);
    }

    v24 = v23;
    offs = v19[119].offs;
    *&v73.a = v72;
    *&v73.c = v71;
    *&v73.tx = v70;
    [v23 offs];
    [v24 setBounds:{v7, v8, v9, v10}];
    v74.origin.x = v7;
    v74.origin.y = v8;
    v74.size.width = v9;
    v74.size.height = v10;
    MidX = CGRectGetMidX(v74);
    v75.origin.x = v7;
    v75.origin.y = v8;
    v75.size.width = v9;
    v75.size.height = v10;
    [v24 v20[119].type];
    v27 = *&v1[v6];
    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v49 = v1;
        v50 = sub_10004164C();
        v51 = sub_100041AAC();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *&v73.a = v53;
          *v52 = v65;
          v54 = *(v66 + 4);
          v55 = *(v66 + 5);

          v56 = sub_10000B1E4(v54, v55, &v73);
          v19 = &stru_10005A000;

          *(v52 + 4) = v56;
          v15 = v68;
          _os_log_impl(&_mh_execute_header, v50, v51, "#%s updateLayout right", v52, 0xCu);
          sub_100005500(v53);
          v6 = v67;
        }

        v20 = &stru_10005A000;
        v78.origin.x = v7;
        v78.origin.y = v8;
        v78.size.width = v9;
        v78.size.height = v10;
        MidY = CGRectGetMidY(v78);
        v79.origin.x = v7;
        v79.origin.y = v8;
        v79.size.width = v9;
        v79.size.height = v10;
        [v24 setCenter:{MidY, CGRectGetMidX(v79)}];
        v48 = 1.57079633;
        goto LABEL_33;
      }

      if (v27 == 4)
      {
        v36 = v1;
        v37 = sub_10004164C();
        v38 = sub_100041AAC();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *&v73.a = v40;
          *v39 = v65;
          v42 = *(v66 + 4);
          v41 = *(v66 + 5);

          v43 = sub_10000B1E4(v42, v41, &v73);
          v20 = &stru_10005A000;

          *(v39 + 4) = v43;
          v6 = v67;
          _os_log_impl(&_mh_execute_header, v37, v38, "#%s updateLayout left", v39, 0xCu);
          sub_100005500(v40);
          v15 = v68;
        }

        v76.origin.x = v7;
        v76.origin.y = v8;
        v76.size.width = v9;
        v76.size.height = v10;
        v44 = CGRectGetMidY(v76);
        v77.origin.x = v7;
        v77.origin.y = v8;
        v77.size.width = v9;
        v77.size.height = v10;
        [v24 v20[119].type];
        CGAffineTransformMakeRotation(&v73, -1.57079633);
        v45 = *&v73.a;
        v46 = *&v73.c;
        v47 = *&v73.tx;
        v19 = &stru_10005A000;
        goto LABEL_34;
      }

LABEL_35:

      goto LABEL_15;
    }

    if (v27 >= 2)
    {
      if (v27 == 2)
      {
        v48 = 3.14159265;
LABEL_33:
        CGAffineTransformMakeRotation(&v73, v48);
        v45 = *&v73.a;
        v46 = *&v73.c;
        v47 = *&v73.tx;
LABEL_34:
        v58 = v19[119].offs;
        *&v73.a = v45;
        *&v73.c = v46;
        *&v73.tx = v47;
        [v24 v58];
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    v28 = v1;
    v29 = sub_10004164C();
    v30 = sub_100041AAC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v73.a = v32;
      *v31 = v65;
      v33 = *(v66 + 4);
      v34 = *(v66 + 5);

      v35 = sub_10000B1E4(v33, v34, &v73);
      v19 = &stru_10005A000;

      *(v31 + 4) = v35;
      v15 = v68;
      _os_log_impl(&_mh_execute_header, v29, v30, "#%s updateLayout portrait", v31, 0xCu);
      sub_100005500(v32);
      v6 = v67;
    }

    v20 = &stru_10005A000;
LABEL_15:
    v17 = 1;
    v18 = 1;
  }

  while ((v22 & 1) == 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  v59 = [v15 subviews];
  sub_10000554C();
  v60 = sub_10004198C();

  if (v60 >> 62)
  {
    v61 = sub_100041DDC();
    if (!v61)
    {
      goto LABEL_45;
    }

LABEL_38:
    if (v61 >= 1)
    {
      v62 = 0;
      do
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v63 = sub_100041D3C();
        }

        else
        {
          v63 = *(v60 + 8 * v62 + 32);
        }

        v64 = v63;
        ++v62;
        [v15 bounds];
        [v64 setFrame:?];
      }

      while (v61 != v62);
      goto LABEL_45;
    }

    __break(1u);
  }

  else
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_38;
    }

LABEL_45:
  }
}

void sub_1000043C4(void *a1, _BYTE *a2)
{
  v3 = v2;
  v6 = [a1 superview];
  v7 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView];
  if (!v6 || (v8 = v6, sub_10000554C(), v9 = v7, v10 = sub_100041C3C(), v8, v9, (v10 & 1) == 0))
  {
    v11 = v3;
    v12 = a1;
    v13 = sub_10004164C();
    v14 = sub_100041AAC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v15 = 136315650;
      v18 = &v11[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_configuration];
      v19 = *&v11[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_configuration + 32];
      v20 = *(v18 + 5);

      v21 = sub_10000B1E4(v19, v20, &v24);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v12;
      *(v15 + 22) = 2112;
      *(v15 + 24) = v7;
      *v16 = v12;
      v16[1] = v7;
      v22 = v7;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "#%s PlaceholderView add%@ to contentView %@", v15, 0x20u);
      sub_1000054B8(&qword_10005E240, &qword_100043C90);
      swift_arrayDestroy();

      sub_100005500(v17);
    }

    *a2 = 1;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    [v7 addSubview:v12];
  }
}

id sub_10000476C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PlaceholderView(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for PlaceholderView(uint64_t a1)
{
  result = qword_10005CDC0;
  if (!qword_10005CDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000048CC(uint64_t a1)
{
  result = sub_10004166C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100004998(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000049B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_100004A44(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004A50(uint64_t a1, int a2)
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

uint64_t sub_100004A70(uint64_t result, int a2, int a3)
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

Swift::Int sub_100004B7C(uint64_t a1, uint64_t a2)
{
  sub_100041F1C();
  swift_getWitnessTable();
  sub_1000415CC();
  return sub_100041F3C();
}

uint64_t sub_100004BF4(uint64_t a1, id *a2)
{
  result = sub_1000417DC();
  *a2 = 0;
  return result;
}

uint64_t sub_100004C70(uint64_t a1, id *a2)
{
  v3 = sub_1000417EC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004CF4@<X0>(uint64_t *a1@<X8>)
{
  sub_1000417FC();
  v2 = sub_1000417CC();

  *a1 = v2;
  return result;
}

uint64_t sub_100004D3C()
{
  sub_1000417FC();
  v0 = sub_10004193C();

  return v0;
}

uint64_t sub_100004D7C(uint64_t a1)
{
  sub_1000417FC();
  sub_1000418BC();
}

Swift::Int sub_100004DD4()
{
  sub_1000417FC();
  sub_100041F1C();
  sub_1000418BC();
  v0 = sub_100041F3C();

  return v0;
}

void *sub_100004E48@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004E64(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1000415BC();
}

uint64_t sub_100004ED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000417FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004EFC(void *a1, uint64_t *a2)
{
  v2 = sub_1000417FC();
  v4 = v3;
  if (v2 == sub_1000417FC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100041EEC();
  }

  return v7 & 1;
}

uint64_t sub_100004F84(uint64_t a1)
{
  v2 = sub_1000056E0(&qword_10005CFA8, type metadata accessor for CIImageRepresentationOption, &unk_10004402C);
  v3 = sub_1000056E0(&qword_10005CFB0, type metadata accessor for CIImageRepresentationOption, &unk_100043ED4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005044@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000417CC();

  *a2 = v3;
  return result;
}

uint64_t sub_10000508C(uint64_t a1)
{
  v2 = sub_1000056E0(&qword_10005CFB8, type metadata accessor for VFXWorldLoaderOption, &unk_100044070);
  v3 = sub_1000056E0(&qword_10005CFC0, type metadata accessor for VFXWorldLoaderOption, &unk_100043DB4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

char *sub_100005148(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10004166C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_label;
  *&v3[v10] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] = 0;
  v11 = *(v7 + 16);
  v11(v9, a1, v6);
  objc_allocWithZone(type metadata accessor for SnapshotView(0));
  sub_100005408(a2, v29);
  v12 = sub_100006EA4(a2, v9);
  sub_100005464(a2);
  *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_snapshotView] = v12;
  v13 = &v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_configuration];
  v14 = *(a2 + 104);
  v15 = *(a2 + 112);
  v16 = *(a2 + 80);
  *(v13 + 4) = *(a2 + 64);
  *(v13 + 5) = v16;
  *(v13 + 6) = *(a2 + 96);
  *(v13 + 110) = *(a2 + 110);
  v17 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 1) = v17;
  v18 = *(a2 + 48);
  *(v13 + 2) = *(a2 + 32);
  *(v13 + 3) = v18;
  v11(&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_logger], a1, v6);
  v19 = objc_allocWithZone(UIView);
  sub_100005408(a2, v29);
  v20 = [v19 initWithFrame:{0.0, 0.0, v14, v15}];
  *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView] = v20;
  v21 = type metadata accessor for PlaceholderView(0);
  v28.receiver = v3;
  v28.super_class = v21;
  v22 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, v14, v15);
  v23 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView;
  v24 = *&v22[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView];
  v25 = v22;
  [v24 setAutoresizesSubviews:0];
  [*&v22[v23] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 addSubview:*&v22[v23]];
  sub_100003CD4();
  v26 = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_snapshotView];
  sub_1000043C4(v26, v29);

  sub_100003CD4();
  (*(v7 + 8))(a1, v6);
  return v25;
}

uint64_t sub_1000054B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005500(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_10000554C()
{
  result = qword_10005CF30;
  if (!qword_10005CF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CF30);
  }

  return result;
}

__n128 sub_1000055D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000055F4(uint64_t a1, int a2)
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

uint64_t sub_100005614(uint64_t result, int a2, int a3)
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

uint64_t sub_1000056E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100005900(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_10000597C(uint64_t a1)
{
  v3 = v1;
  sub_100005408(a1, v10);
  v4 = sub_10004164C();
  v5 = sub_100041AAC();

  sub_100005464(a1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v10[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v8 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

    v9 = sub_10000B1E4(v7, v8, v10);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10000B1E4(*(a1 + 32), *(a1 + 40), v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "#%s snapshot: viewConfiguration updated old tagId: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000611C();
}

id sub_100005AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = &v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration];
  if (v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout] != 1)
  {
    v18 = *(v3 + 5);
    v27[4] = *(v3 + 4);
    v27[5] = v18;
    v28[0] = *(v3 + 6);
    *(v28 + 14) = *(v3 + 110);
    v19 = *(v3 + 1);
    v27[0] = *v3;
    v27[1] = v19;
    v20 = *(v3 + 3);
    v27[2] = *(v3 + 2);
    v27[3] = v20;
    sub_100005408(v27, v21);
    sub_10001A9FC(v21);
    result = sub_100005464(v27);
    v17 = v26;
    v13 = v25;
    v11 = v23;
    v12 = v24;
    v6 = v22;
    v5 = v21[2];
    v4 = v21[3];
    v14 = v21[0];
    v16 = v21[1];
    goto LABEL_10;
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = *(v3 + 25);

  result = [v1 frame];
  v9 = v8;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = [v1 frame];
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 < 9.22337204e18)
  {
    v11 = v9;
    v12 = v10;
    v13 = *(v3 + 30);

    v14 = sub_100021E98(v5, v4);
    v16 = v15;

    v17 = 0;
LABEL_10:
    *a1 = v14;
    *(a1 + 8) = v16;
    *(a1 + 16) = v5;
    *(a1 + 24) = v4;
    *(a1 + 32) = v6;
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 60) = v17;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_100005CC0()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_100007410;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10000F91C;
  v6[3] = &unk_1000559D8;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:1 repeats:v3 block:0.0166666667];
  _Block_release(v3);
  v5 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_timer);
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_timer) = v4;
}

void sub_100005DD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100023628();
    [v3 setBackgroundColor:v4];
  }
}

id sub_100005E48(uint64_t a1)
{
  v3 = sub_10004163C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000F51C(0);
  sub_100041BEC();
  v8 = *(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  v9 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v9, v3);
  v10 = v8;
  sub_10004161C();

  (*(v4 + 8))(v6, v3);
  v11 = v1;
  v12 = sub_10004164C();
  v13 = sub_100041AAC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v14 = 136315394;
    v17 = *&v11[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v18 = *&v11[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

    v19 = sub_10000B1E4(v17, v18, &v24);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = *&v11[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_imageView];
    *(v14 + 14) = v20;
    *v15 = v20;
    v21 = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "#%s snapshot: imageView %@", v14, 0x16u);
    sub_1000073A8(v15);

    sub_100005500(v16);
  }

  v22 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_imageView;
  [*&v11[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_imageView] setAlpha:1.0];
  return [*&v11[v22] setImage:a1];
}

void sub_10000611C()
{
  v1 = v0;
  v2 = sub_10004166C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotManagerSet;
  if (v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotManagerSet] != 1)
  {
    goto LABEL_7;
  }

  v49 = v3;
  v7 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 80];
  v59[4] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 64];
  v59[5] = v7;
  v60[0] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 96];
  *(v60 + 14) = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 110];
  v8 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 16];
  v59[0] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration];
  v59[1] = v8;
  v9 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 48];
  v59[2] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
  v59[3] = v9;
  sub_100005408(v59, v55);
  sub_10001A9FC(v51);
  sub_100005464(v59);
  v10 = sub_10001AB00();
  v12 = v11;
  sub_100007314(v51);
  v13 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotReader];
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = (v13 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration);
  v16 = v14[1];
  v15 = v14[2];
  v17 = *v14;
  *(v58 + 13) = *(v14 + 45);
  v57[1] = v16;
  v58[0] = v15;
  v57[0] = v17;
  sub_1000072B8(v57, v55);
  v18 = sub_10001AB00();
  v20 = v19;
  sub_100007314(v57);
  if (v10 == v18 && v12 == v20)
  {

    return;
  }

  v21 = sub_100041EEC();

  v3 = v49;
  if ((v21 & 1) == 0)
  {
LABEL_7:
    sub_100005AF0(v52);
    v22 = v53;
    if (v53)
    {
      [*&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_imageView] setAlpha:0.0];
      v23 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_logger;
      sub_1000072B8(v52, v55);
      v24 = v1;
      v48 = v23;
      v25 = sub_10004164C();
      v26 = sub_100041AAC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v49 = v3;
        v28 = v27;
        v29 = swift_slowAlloc();
        v47 = v6;
        v45 = v29;
        *&v55[0] = v29;
        *v28 = 136315650;
        v46 = v5;
        v30 = v2;
        v32 = *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
        v31 = *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

        v33 = sub_10000B1E4(v32, v31, v55);
        v2 = v30;

        *(v28 + 4) = v33;
        v5 = v46;
        *(v28 + 12) = 2048;
        *(v28 + 14) = v22;
        *(v28 + 22) = 2048;
        sub_100007314(v52);
        *(v28 + 24) = v54;
        sub_100007314(v52);
        _os_log_impl(&_mh_execute_header, v25, v26, "#%s snapshot: update manager for size %ldx%ld", v28, 0x20u);
        sub_100005500(v45);
        v6 = v47;

        v3 = v49;
      }

      else
      {
        sub_100007314(v52);
        sub_100007314(v52);
      }

      v34 = *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 48];
      v36 = *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration];
      v35 = *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 16];
      v55[2] = *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
      v55[3] = v34;
      v55[0] = v36;
      v55[1] = v35;
      v38 = *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 80];
      v37 = *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 96];
      v39 = *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 64];
      *(v56 + 14) = *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 110];
      v55[5] = v38;
      v56[0] = v37;
      v55[4] = v39;
      (*(v3 + 16))(v5, &v1[v48], v2);
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = objc_allocWithZone(type metadata accessor for SnapshotReader(0));
      sub_100005408(v55, &v50);
      v42 = sub_1000086E8(v55, v5, sub_1000073A0, v40);

      sub_100005464(v55);
      v43 = *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotReader];
      *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotReader] = v42;

      v1[v6] = 1;
    }

    else
    {
      sub_100007314(v52);
    }
  }
}

void sub_1000065A8(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_10004164C();
    v8 = sub_100041AAC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136315394;
      v10 = *&v6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
      v11 = *&v6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

      v12 = sub_10000B1E4(v10, v11, &v16);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      if (a2)
      {
        v13 = 1953066601;
      }

      else
      {
        v13 = 0x6163696669746F6ELL;
      }

      if (a2)
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xEC0000006E6F6974;
      }

      v15 = sub_10000B1E4(v13, v14, &v16);

      *(v9 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "#%s snapshot: image updated from %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    sub_100005E48(a1);
  }
}

id sub_100006784()
{
  v66.receiver = v0;
  v66.super_class = type metadata accessor for SnapshotView(0);
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v1 = v0;
  v2 = sub_10004164C();
  v3 = sub_100041AAC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v67[0] = v5;
    *v4 = 136315650;
    v6 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v7 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

    v8 = sub_10000B1E4(v6, v7, v67);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    [v1 bounds];
    *(v4 + 14) = v9;
    *(v4 + 22) = 2048;
    [v1 bounds];
    *(v4 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s snapshotView layoutsubview %fx%f", v4, 0x20u);
    sub_100005500(v5);
  }

  result = [v1 bounds];
  if (v12 != 0.0)
  {
    v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout] = 1;
    v13 = &v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration];
    v14 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 48];
    v16 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration];
    v15 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 16];
    v54 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v55 = v14;
    v52 = v16;
    v53 = v15;
    v18 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 80];
    v17 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 96];
    v19 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 64];
    *&v58[14] = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration + 110];
    v57 = v18;
    *v58 = v17;
    v56 = v19;
    sub_100005408(&v52, v67);
    [v1 bounds];
    v21 = v20;
    v23 = v22;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v50 = v55;
    v27 = BYTE8(v55);
    v28 = v56;
    v48 = BYTE9(v56);
    v49 = BYTE8(v56);
    v46 = *(&v57 + 1);
    v47 = v57;
    v29 = v56;

    sub_100005464(&v52);
    v59[0] = v24;
    v59[1] = v25;
    v59[2] = v26;
    *&v60 = v50;
    BYTE8(v60) = v27;
    *&v61 = v28;
    BYTE8(v61) = v49;
    BYTE9(v61) = v48;
    *&v62 = v47;
    *(&v62 + 1) = v46;
    *v63 = *v58;
    v63[2] = v58[2];
    *&v63[4] = *&v58[4];
    *&v63[8] = v21;
    *&v63[16] = v23;
    *&v63[24] = *&v58[24];
    v63[28] = v58[28];
    v63[29] = v58[29];
    v30 = *v13;
    v31 = *(v13 + 1);
    v32 = *(v13 + 3);
    v67[2] = *(v13 + 2);
    v67[3] = v32;
    v67[0] = v30;
    v67[1] = v31;
    v33 = *(v13 + 4);
    v34 = *(v13 + 5);
    v35 = *(v13 + 6);
    *(v68 + 14) = *(v13 + 110);
    v67[5] = v34;
    v68[0] = v35;
    v67[4] = v33;
    v37 = *(v13 + 5);
    v36 = *(v13 + 6);
    v38 = *(v13 + 4);
    *(v65 + 14) = *(v13 + 110);
    v64[5] = v37;
    v65[0] = v36;
    v64[4] = v38;
    v39 = *v13;
    v40 = *(v13 + 1);
    v41 = *(v13 + 3);
    v64[2] = *(v13 + 2);
    v64[3] = v41;
    v64[0] = v39;
    v64[1] = v40;
    v42 = v60;
    *(v13 + 2) = v26;
    *(v13 + 3) = v42;
    *v13 = v24;
    *(v13 + 1) = v25;
    v43 = v61;
    v44 = v62;
    v45 = *v63;
    *(v13 + 110) = *&v63[14];
    *(v13 + 5) = v44;
    *(v13 + 6) = v45;
    *(v13 + 4) = v43;
    sub_100005408(v67, v51);
    sub_100005408(v59, v51);
    sub_100005464(v64);
    sub_10000597C(v67);
    sub_100005464(v67);
    return sub_100005464(v59);
  }

  return result;
}

id sub_100006C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnapshotView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SnapshotView(uint64_t a1)
{
  result = qword_10005D210;
  if (!qword_10005D210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006DE4(uint64_t a1)
{
  result = sub_10004166C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_100006EA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004163C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotManagerSet] = 0;
  *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_snapshotReader] = 0;
  v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout] = 0;
  *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_timer] = 0;
  v9 = sub_10000F51C(0);
  sub_100041BEC();
  v10 = *(v9 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v6 + 16))(v8, v9 + v11, v5);
  v12 = v10;
  sub_10004161C();

  (*(v6 + 8))(v8, v5);
  v13 = &v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_viewConfiguration];
  v14 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v14;
  v13[6] = *(a1 + 96);
  *(v13 + 110) = *(a1 + 110);
  v15 = *(a1 + 16);
  *v13 = *a1;
  v13[1] = v15;
  v16 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v16;
  v17 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_logger;
  v18 = sub_10004166C();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v2[v17], a2, v18);
  v20 = objc_allocWithZone(UIImage);
  sub_100005408(a1, v33);
  v21 = [v20 init];
  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];

  *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension12SnapshotView_imageView] = v22;
  v23 = *(a1 + 104);
  v24 = *(a1 + 112);
  v25 = type metadata accessor for SnapshotView(0);
  v32.receiver = v2;
  v32.super_class = v25;
  v26 = v22;
  v27 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, v23, v24);
  v28 = v26;
  v29 = v27;
  [v29 bounds];
  [v28 setFrame:?];
  [v28 setAutoresizingMask:18];
  [v29 addSubview:v28];
  [v28 setContentMode:0];

  v30 = [objc_opt_self() blackColor];
  [v29 setBackgroundColor:v30];

  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  if ([qword_1000611A0 nullMode])
  {
    sub_100005CC0();
  }

  else
  {
    sub_10000611C();
  }

  (*(v19 + 8))(a2, v18);
  return v29;
}

uint64_t sub_100007368()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000073A8(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005E240, &qword_100043C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100007430()
{
  if (qword_10005CD38 != -1)
  {
    swift_once();
  }

  v1 = qword_100061130;
  v2 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 16];
  v7[0] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration];
  v7[1] = v2;
  v8[0] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32];
  *(v8 + 13) = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 45];
  v3 = v0;
  sub_1000072B8(v7, v6);
  sub_100008230(v3, v7, v1);
  sub_100007314(v7);

  v5.receiver = v3;
  v5.super_class = type metadata accessor for SnapshotReader(0);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for SnapshotReader(uint64_t a1)
{
  result = qword_10005D270;
  if (!qword_10005D270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000770C(char a1)
{
  v2 = v1;
  if (qword_10005CD38 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 16);
  v40[0] = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration);
  v40[1] = v4;
  v41[0] = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32);
  *(v41 + 13) = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 45);
  sub_10001D094(v40, &v30);
  v5 = v31;
  if (v31)
  {
    v6 = v30;
    v34[0] = v30;
    v34[1] = v31;
    v35 = v32;
    v36[0] = v33[0];
    *(v36 + 13) = *(v33 + 13);
    v26 = v32;
    v27[0] = v33[0];
    *(v27 + 13) = *(v33 + 13);
    v7 = sub_10001AB00();
    v9 = v8;
    v10 = (v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration);
    v11 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration + 16);
    v28[0] = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration);
    v28[1] = v11;
    v29[0] = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration + 32);
    *(v29 + 13) = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration + 45);
    if (*(&v28[0] + 1))
    {
      v12 = v7;
      v13 = v10[1];
      v37 = *v10;
      v38 = v13;
      v39[0] = v10[2];
      v14 = v39[0];
      *(v39 + 13) = *(v10 + 45);
      v23 = v37;
      v24 = v13;
      v25[0] = v14;
      *(v25 + 13) = *(v39 + 13);
      sub_1000072B8(&v23, v22);
      v15 = sub_10001AB00();
      v17 = v16;
      sub_100007D6C(v28);
      if (v12 == v15 && v9 == v17)
      {

LABEL_10:
        sub_100007D6C(&v30);
        return;
      }

      v18 = sub_100041EEC();

      if (v18)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v19 = v10[1];
    v23 = *v10;
    v24 = v19;
    v25[0] = v10[2];
    *(v25 + 13) = *(v10 + 45);
    *v10 = v6;
    *(v10 + 1) = v5;
    v20 = v27[0];
    v10[1] = v26;
    v10[2] = v20;
    *(v10 + 45) = *(v27 + 13);
    sub_1000072B8(v34, v22);
    sub_100007D6C(&v23);
    v21 = sub_100007960();
    sub_100007D6C(&v30);
    if (v21)
    {
      (*(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_updateBlock))(v21, a1 & 1);
    }
  }
}

id sub_100007960()
{
  v1 = v0;
  v2 = sub_1000414BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005CD40 != -1)
  {
    swift_once();
  }

  sub_100007D34(v2, qword_100061138);
  v19[0] = sub_10001AD94();
  v19[1] = v6;
  v20._countAndFlagsBits = 0x636965682ELL;
  v20._object = 0xE500000000000000;
  sub_1000418CC(v20);
  sub_10004146C();

  v7 = sub_10004140C();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = objc_allocWithZone(UIImage);
  v11 = sub_1000417CC();
  v12 = [v10 initWithContentsOfFile:v11];

  if (v12)
  {
  }

  else
  {
    v13 = v1;

    v14 = sub_10004164C();
    v15 = sub_100041ABC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_10000B1E4(*&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_tagID], *&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_tagID + 8], v19);
      *(v16 + 12) = 2080;
      v17 = sub_10000B1E4(v7, v9, v19);

      *(v16 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v14, v15, "#%s snapshotReader: loading failed at path %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  return v12;
}

uint64_t sub_100007C70(uint64_t a1)
{
  result = sub_10004166C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100007D34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100007D6C(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005D280, &unk_100044DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007DD4(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = sub_100008058(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_100041DDC();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_100041DDC())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = sub_100041D3C();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v19 = v12;
    v13 = a1(&v19);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = sub_100041D3C();
    v15 = sub_100041D3C();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_10003980C(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_10003980C(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    *(v18 + 8 * v10 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_100041DDC();
}

unint64_t sub_100008058(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_100041DDC();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_100041D3C();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

unint64_t sub_100008174(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_100041DDC();
    }

    result = sub_100041D4C();
    *v2 = result;
  }

  return result;
}

void sub_100008230(uint64_t a1, float *a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  os_unfair_lock_lock(v6);
  v7 = swift_beginAccess();
  v8 = *(a3 + 24);
  if (*(v8 + 16))
  {

    v9 = sub_10002C50C(a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v19 = v11;
  __chkstk_darwin(v7);
  v17[2] = a1;
  v17[3] = &off_100055A00;
  v12 = sub_100007DD4(sub_100008400, v17);
  if (v19 >> 62)
  {
    v16 = v12;
    v13 = sub_100041DDC();
    v12 = v16;
    if (v13 >= v16)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= v12)
    {
LABEL_9:
      sub_1000085CC(v12, v13);
      v14 = v19;
      swift_beginAccess();
      sub_1000072B8(a2, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18[0] = *(a3 + 24);
      *(a3 + 24) = 0x8000000000000000;
      sub_10002DCE0(v14, a2, isUniquelyReferenced_nonNull_native);
      sub_100007314(a2);
      *(a3 + 24) = v18[0];
      swift_endAccess();
      os_unfair_lock_unlock(v6);
      return;
    }
  }

  __break(1u);
}

void sub_100008420(uint64_t a1, float *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(a3 + 24);
  if (*(v6 + 16))
  {

    v7 = sub_10002C50C(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
    }

    else
    {
      v9 = &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v14 = v9;
  type metadata accessor for SnapshotManager.WeakObserver();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 24) = &off_100055A00;
  swift_unknownObjectWeakAssign();
  sub_10004196C();
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000419AC();
  }

  sub_1000419CC();
  v11 = v14;
  swift_beginAccess();
  sub_1000072B8(a2, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a3 + 24);
  *(a3 + 24) = 0x8000000000000000;
  sub_10002DCE0(v11, a2, isUniquelyReferenced_nonNull_native);
  sub_100007314(a2);
  *(a3 + 24) = v13[0];
  swift_endAccess();
  os_unfair_lock_unlock(v5);
}

uint64_t sub_1000085CC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_100041DDC();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_100041DDC();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100008174(result, 1);

  return sub_100039898(v5, v3, 0);
}

void sub_1000086A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

char *sub_1000086E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = &v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration];
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *(v10 + 45) = 0u;
  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_logger;
  v12 = sub_10004166C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v5[v11], a2, v12);
  v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_isSnapshotMode] = *(a1 + 96);
  sub_10001A9FC(v26);
  v14 = &v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration];
  v15 = v26[1];
  *v14 = v26[0];
  v14[1] = v15;
  v14[2] = v27[0];
  *(v14 + 45) = *(v27 + 13);
  v16 = *(a1 + 32);
  *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_tagID] = v16;
  v28 = v16;
  v17 = &v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_updateBlock];
  *v17 = a3;
  v17[1] = a4;
  sub_1000088F8(&v28, v29);
  v25.receiver = v5;
  v25.super_class = type metadata accessor for SnapshotReader(0);

  v18 = objc_msgSendSuper2(&v25, "init");
  sub_10000770C(1);
  if (qword_10005CD38 != -1)
  {
    swift_once();
  }

  v19 = qword_100061130;
  v21 = *&v18[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 16];
  v20 = *&v18[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32];
  v22 = *&v18[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration];
  *&v30[13] = *&v18[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 45];
  v29[1] = v21;
  *v30 = v20;
  v29[0] = v22;
  sub_1000072B8(v29, &v24);
  sub_100008420(v18, v29, v19);
  sub_100007314(v29);

  (*(v13 + 8))(a2, v12);
  return v18;
}

void sub_100008954(void *a1, uint64_t a2, __n128 a3, __n128 a4, double a5)
{
  v31 = a3;
  v32 = a4;
  v6 = sub_10004166C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 rootNode];
  v11 = sub_1000417CC();
  v33 = [v10 childNodeWithName:v11 recursively:1];

  if (v33)
  {
    v12 = objc_opt_self();
    [v12 begin];
    v13 = [v33 parameters];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() valueWithVFXFloat3:v31.n128_f64[0]];
      v16 = sub_1000417CC();
      [v14 setObject:v15 forKeyedSubscript:v16];
      swift_unknownObjectRelease();
    }

    v17 = [v33 parameters];
    if (v17)
    {
      v18 = v17;
      v19 = [objc_opt_self() valueWithVFXFloat4:v32.n128_f64[0]];
      v20 = sub_1000417CC();
      [v18 setObject:v19 forKeyedSubscript:v20];
      swift_unknownObjectRelease();
    }

    v21 = [v33 parameters];
    if (v21)
    {
      v22 = v21;
      isa = sub_100041A2C().super.super.isa;
      v24 = sub_1000417CC();
      [v22 setObject:isa forKeyedSubscript:v24];
      swift_unknownObjectRelease();
    }

    [v12 commit];
    v25 = v33;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      (*(v7 + 16))(v9, Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger, v6);

      v28 = sub_10004164C();
      v29 = sub_100041A9C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Could not find parametersNode", v30, 2u);
      }

      (*(v7 + 8))(v9, v6);
    }
  }
}

id sub_100008D48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 deviceMotionRotation];
  v4 = sub_100041B3C();
  sub_100008E70(v18, v4, &v16);
  v11 = v16;
  v5 = *v17;
  [a1 deviceMotionRotation];
  v13 = v16.f64[0];
  [a1 deviceMotionRotation];
  v14 = __PAIR128__(*&v16.f64[1], *&v13);
  [a1 deviceMotionRotation];
  v10 = v17[0];
  [a1 deviceMotionRotation];
  v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v14), __PAIR128__(v17[1], v10));
  *&v6 = vcvt_f32_f64(v11);
  *&v7 = v5;
  *(&v6 + 1) = v7;
  v12 = v6;
  result = [a1 deviceMotionUpdateInterval];
  *a2 = v12;
  *(a2 + 16) = v15;
  *(a2 + 32) = v9;
  *(a2 + 40) = 0;
  return result;
}

void sub_100008E70(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  _Q1 = *a1;
  if (a2 == 2)
  {
    v6 = *a1;
    _Q1.i64[0] = *(a1 + 16);
  }

  else if (a2 == 1)
  {
    v6 = vextq_s8(_Q1, *(a1 + 16), 8uLL);
  }

  else
  {
    v6 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v7 = *(a1 + 24);
  v25 = v6;
  _D9 = v6.f64[1];
  _V4.D[1] = v7;
  __asm { FMLA            D0, D1, V4.D[1] }

  v26 = *_Q1.i64;
  *&v15 = atan2(_D0 + _D0, (vmulq_f64(v6, v6).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v24 = v15;
  v16 = v7 * v25.f64[0] - _D9 * v26 + v7 * v25.f64[0] - _D9 * v26;
  if (v16 > 1.0)
  {
    v16 = 1.0;
  }

  if (v16 < -1.0)
  {
    v16 = -1.0;
  }

  v23 = asin(v16);
  _V2.D[1] = v25.f64[1];
  _V4.D[1] = v7;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v21 = atan2f(*&_D0, *&_D1);
  if (a2 == 2)
  {
    *v22.i64 = v23;
    v22.i64[1] = v21;
    v21 = v24;
  }

  else if (a2 == 1)
  {
    v22.i64[0] = v24;
    *&v22.i64[1] = v23;
  }

  else
  {
    v22 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v21 = 0x7FF8000000000000;
  }

  *a3 = v22;
  *(a3 + 16) = v21;
  *(a3 + 32) = a2;
}

uint64_t sub_100008FBC(uint64_t a1)
{
  sub_100009678(a1);

  sub_1000097B0(v1 + 32);
  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_logger;
  v3 = sub_10004166C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SimulationSpeedManager(uint64_t a1)
{
  result = qword_10005D2B8;
  if (!qword_10005D2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000090C8(uint64_t a1)
{
  result = sub_10004166C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100009184(double a1)
{
  v2 = v1;
  v3 = sub_10004155C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = aBlock - v9;
  if (!*(v1 + 16))
  {
    v11 = sub_10004164C();
    v12 = sub_100041A9C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Start monitoring VFXWorld simulation speed", v13, 2u);
    }

    sub_10004154C();
    sub_10004151C();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = objc_allocWithZone(NSTimer);

    isa = sub_10004152C().super.isa;
    aBlock[4] = sub_100009790;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F91C;
    aBlock[3] = &unk_100055A38;
    v17 = _Block_copy(aBlock);
    v18 = [v15 initWithFireDate:isa interval:1 repeats:v17 block:0.333333333];
    _Block_release(v17);

    v19 = *(v2 + 16);
    *(v2 + 16) = v18;
    v20 = v18;

    if (v20)
    {
      v21 = [objc_opt_self() mainRunLoop];
      [v21 addTimer:v20 forMode:NSRunLoopCommonModes];
    }

    v22 = *(v4 + 8);
    v22(v7, v3);
    return (v22)(v10, v3);
  }

  return result;
}

void *sub_10000948C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = result[3];
    v5 = *(v4 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v5);
    v6 = *(v4 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
    v7 = sub_100016BEC();

    os_unfair_lock_unlock(v5);

    v8 = v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed;
    if ((v7 & 0x100000000) != 0)
    {
      if ((*(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed + 4) & 1) == 0)
      {
        v9 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed);
        goto LABEL_7;
      }
    }

    else
    {
      if (*(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed + 4))
      {
        goto LABEL_15;
      }

      v9 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed);
      if (*&v7 != v9)
      {
LABEL_7:
        if (v9 > 0.0)
        {
          if ((v7 & 0x100000000) == 0 && *&v7 > 0.0)
          {
          }

          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_19;
          }

          result = swift_unknownObjectWeakLoadStrong();
          if (result)
          {
            v10 = result;
            v11 = *(result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
            if (!v11)
            {
              __break(1u);
              return result;
            }

            v12 = *(v11 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

            os_unfair_lock_lock(v12);
            v13 = *(v11 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
            sub_10003FC50(v13, 0, v10, 0xD000000000000012, 0x8000000100046460);

            os_unfair_lock_unlock(v12);
            swift_unknownObjectRelease();
          }

LABEL_18:
          swift_unknownObjectRelease();
LABEL_19:
          *v8 = v7;
          *(v8 + 4) = BYTE4(v7) & 1;
        }

LABEL_15:
        if ((v7 & 0x100000000) != 0 || *&v7 <= 0.0)
        {
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_100009678(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v2 = v1;
    v3 = sub_10004164C();
    v4 = sub_100041A9C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stop monitoring VFXWorld simulation speed", v5, 2u);
    }

    [*(v2 + 16) invalidate];
    v6 = *(v2 + 16);
    *(v2 + 16) = 0;
  }
}

uint64_t sub_100009758()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009798(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000097D8(uint64_t a1)
{
  v2 = v1;
  sub_100041CFC();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v4 = sub_10002C594(v11);
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_10000B78C(*(a1 + 56) + 32 * v4, v12);
  sub_10000BAB0(v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_100041CFC();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_10002C594(v11);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_10000B78C(*(a1 + 56) + 32 * v6, v12);
  sub_10000BAB0(v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:

    goto LABEL_12;
  }

  sub_100041CFC();
  if (!*(a1 + 16) || (v8 = sub_10002C594(v11), (v9 & 1) == 0))
  {
LABEL_11:

    sub_10000BAB0(v11);
    goto LABEL_12;
  }

  sub_10000B78C(*(a1 + 56) + 32 * v8, v12);
  sub_10000BAB0(v11);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    type metadata accessor for KeyboardDataUpdate();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v2 + 16) = 105;
  strcpy((v2 + 20), "duracurve");
  *(v2 + 30) = 0;
  return v2;
}

void sub_1000099FC(void *a1)
{
  v2 = [a1 parameters];
  if (v2)
  {
    v3 = v2;
    isa = sub_1000419DC().super.super.isa;
    v5 = sub_1000417CC();
    [v3 setObject:isa forKeyedSubscript:v5];
    swift_unknownObjectRelease();
  }

  v6 = [a1 parameters];
  if (v6)
  {
    v7 = v6;
    v8 = sub_100041A2C().super.super.isa;
    v9 = sub_1000417CC();
    [v7 setObject:v8 forKeyedSubscript:v9];
    swift_unknownObjectRelease();
  }

  v10 = [a1 parameters];
  if (v10)
  {
    v11 = v10;
    v12 = sub_100041A5C().super.super.isa;
    v13 = sub_1000417CC();
    [v11 setObject:v12 forKeyedSubscript:v13];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100009BF0(uint64_t a1)
{
  v2 = v1;
  sub_100041CFC();
  if (*(a1 + 16) && (v4 = sub_10002C594(v15), (v5 & 1) != 0))
  {
    sub_10000B78C(*(a1 + 56) + 32 * v4, v16);
    sub_10000BAB0(v15);
    sub_10000BB04(0, &qword_10005D658, NSValue_ptr);
    if (swift_dynamicCast())
    {
      [0xD000000000000016 CGRectValue];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v2[4] = v7;
      v2[5] = v9;
      v2[6] = v11;
      v2[7] = v13;
      return sub_1000097D8(a1);
    }
  }

  else
  {

    sub_10000BAB0(v15);
  }

  type metadata accessor for KeyboardFrameDidChangeDataUpdate();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_100009D80(uint64_t a1)
{
  v2 = v1;
  sub_100041CFC();
  if (*(a1 + 16))
  {
    v4 = sub_10002C594(v25);
    if (v5)
    {
      sub_10000B78C(*(a1 + 56) + 32 * v4, v26);
      sub_10000BAB0(v25);
      sub_10000BB04(0, &qword_10005D658, NSValue_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_10:

        goto LABEL_9;
      }

      [0x6D6172466D6F7266 CGRectValue];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      sub_100041CFC();
      if (*(a1 + 16))
      {
        v14 = sub_10002C594(v25);
        if (v15)
        {
          sub_10000B78C(*(a1 + 56) + 32 * v14, v26);
          sub_10000BAB0(v25);
          if (swift_dynamicCast())
          {
            [0x656D6172466F74 CGRectValue];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;

            *(v2 + 32) = v7;
            *(v2 + 40) = v9;
            *(v2 + 48) = v11;
            *(v2 + 56) = v13;
            *(v2 + 64) = 0;
            *(v2 + 72) = v17;
            *(v2 + 80) = v19;
            *(v2 + 88) = v21;
            *(v2 + 96) = v23;
            *(v2 + 104) = 0;
            return sub_1000097D8(a1);
          }

          goto LABEL_10;
        }
      }
    }
  }

  sub_10000BAB0(v25);
LABEL_9:
  type metadata accessor for KeyboardVisibilityDataUpdate();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_100009FA8(void *a1)
{
  sub_1000099FC(a1);
  v3 = [a1 parameters];
  if (v3)
  {
    v4 = v3;
    if (*(v1 + 64))
    {
      isa = 0;
    }

    else
    {
      isa = sub_100041C2C().super.isa;
    }

    v6 = sub_1000417CC();
    [v4 setObject:isa forKeyedSubscript:v6];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if ((*(v1 + 64) & 1) != 0 || (*(v1 + 104) & 1) != 0 || (v15.origin.x = 0.0, v15.origin.y = 0.0, v15.size.width = 0.0, v15.size.height = 0.0, !CGRectEqualToRect(*(v1 + 72), v15)))
  {
    v10 = [a1 parameters];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    if (*(v1 + 104))
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_100041C2C().super.isa;
    }

    v13 = sub_1000417CC();
    [v11 setObject:v12 forKeyedSubscript:?];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = [a1 parameters];
    if (!v7)
    {
      return;
    }

    v8 = v7;
    v9 = sub_100041C2C().super.isa;
    v13 = sub_1000417CC();
    [v8 setObject:v9 forKeyedSubscript:?];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000A228(uint64_t a1)
{
  v2 = sub_10004168C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000416DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v10 = sub_100041B0C();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10000B864;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_100055AB0;
  v13 = _Block_copy(aBlock);

  sub_1000416AC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000B884();
  sub_1000054B8(&unk_10005D640, "B|");
  sub_10000B8DC();
  sub_100041CAC();
  sub_100041B1C();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

char *sub_10000A4E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    type metadata accessor for TranscriptBackgroundEventHandlerFactory();
    v5 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger;
    v6 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
    v8 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    v7 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
    v33[2] = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v33[3] = v6;
    v33[0] = v8;
    v33[1] = v7;
    v10 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
    v9 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
    v11 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
    *(v34 + 14) = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
    v33[5] = v10;
    v34[0] = v9;
    v33[4] = v11;
    v12 = v4;
    sub_100005408(v33, v27);
    sub_100016FD4(&v4[v5], v4, a2, v33, &v28);
    sub_100005464(v33);

    if (!v29)
    {

      return sub_10000B988(&v28);
    }

    sub_10000B9F0(&v28, v30);
    v13 = *&v12[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder];
    if (*(v13 + 24) == 1)
    {
      v14 = v31;
      v15 = v32;
      result = sub_10000BA6C(v30, v31);
      if (!*&v12[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor])
      {
        __break(1u);
        return result;
      }

      v16 = *(v15 + 8);

      v16(v17, v14, v15);
    }

    else
    {
      v18 = *(v13 + 16);

      os_unfair_lock_lock(v18);
      sub_10000BA08(v30, v27);
      swift_beginAccess();
      v19 = *(v13 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + 32) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_10003914C(0, v19[2] + 1, 1, v19);
        *(v13 + 32) = v19;
      }

      v21 = v19[2];
      v22 = v19[3];
      v23 = v21 + 1;
      if (v21 >= v22 >> 1)
      {
        v24 = v19;
        v25 = v19[2];
        v26 = sub_10003914C((v22 > 1), v21 + 1, 1, v24);
        v21 = v25;
        v19 = v26;
      }

      v19[2] = v23;
      sub_10000B9F0(v27, &v19[5 * v21 + 4]);
      *(v13 + 32) = v19;
      swift_endAccess();
      os_unfair_lock_unlock(v18);
    }

    return sub_100005500(v30);
  }

  return result;
}

void sub_10000A758(char a1, void (*a2)(id))
{
  v42 = 0;
  v3 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;
  v4 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
  if (!v4)
  {
    __break(1u);
    goto LABEL_59;
  }

  v7 = *(v4 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

  os_unfair_lock_lock(v7);
  v8 = *(v4 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_10000AD90(v8, v2, &v42, a1);

  os_unfair_lock_unlock(v7);

  if (v42 == 1)
  {
    if (a1 <= 2u)
    {
      v24 = 0x416B636162706154;
      v25 = 0xEC00000064656464;
      if (a1 != 1)
      {
        v24 = 0x526B636162706154;
        v25 = 0xEE006465766F6D65;
      }

      if (a1)
      {
        v13 = v24;
      }

      else
      {
        v13 = 0x7265746E45646944;
      }

      if (a1)
      {
        v14 = v25;
      }

      else
      {
        v14 = 0xEC00000074616843;
      }
    }

    else
    {
      v9 = 0x8000000100046590;
      v10 = 0x6C6C6F7263537349;
      if (a1 == 5)
      {
        v10 = 0xD000000000000010;
      }

      else
      {
        v9 = 0xEB00000000676E69;
      }

      v11 = 0x80000001000465D0;
      v12 = 0xD000000000000016;
      if (a1 != 3)
      {
        v12 = 0xD000000000000010;
        v11 = 0x80000001000465B0;
      }

      if (a1 <= 4u)
      {
        v13 = v12;
      }

      else
      {
        v13 = v10;
      }

      if (a1 <= 4u)
      {
        v14 = v11;
      }

      else
      {
        v14 = v9;
      }
    }

    v26 = v2;
    v27 = sub_100039FB8(v13, v14);

    if (v27)
    {
      v28 = objc_opt_self();
      v29 = [v28 begin];
      if (a2)
      {
        a2(v29);
      }

      v30 = *(v26 + v3);
      if (v30)
      {
        v31 = *(v30 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

        os_unfair_lock_lock(v31);
        v32 = *(v30 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
        v33 = [v32 rootNode];
        v34 = sub_1000417CC();
        v35 = [v33 childNodeWithName:v34 recursively:1];

        if (v35)
        {
          v39 = sub_1000417CC();

          [v35 setStateNamed:v39];
        }

        os_unfair_lock_unlock(v31);

        [v28 commit];
        return;
      }

LABEL_59:
      __break(1u);
    }
  }

  else
  {
    oslog = sub_10004164C();
    v15 = sub_100041A9C();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v41 = v17;
      *v16 = 136315138;
      if (a1 <= 2u)
      {
        v36 = 0x416B636162706154;
        v37 = 0xEC00000064656464;
        if (a1 != 1)
        {
          v36 = 0x526B636162706154;
          v37 = 0xEE006465766F6D65;
        }

        if (a1)
        {
          v22 = v36;
        }

        else
        {
          v22 = 0x7265746E45646944;
        }

        if (a1)
        {
          v23 = v37;
        }

        else
        {
          v23 = 0xEC00000074616843;
        }
      }

      else
      {
        v18 = 0x8000000100046590;
        v19 = 0x6C6C6F7263537349;
        if (a1 == 5)
        {
          v19 = 0xD000000000000010;
        }

        else
        {
          v18 = 0xEB00000000676E69;
        }

        v20 = 0x80000001000465D0;
        v21 = 0xD000000000000016;
        if (a1 != 3)
        {
          v21 = 0xD000000000000010;
          v20 = 0x80000001000465B0;
        }

        if (a1 <= 4u)
        {
          v22 = v21;
        }

        else
        {
          v22 = v19;
        }

        if (a1 <= 4u)
        {
          v23 = v20;
        }

        else
        {
          v23 = v18;
        }
      }

      v38 = sub_10000B1E4(v22, v23, &v41);

      *(v16 + 4) = v38;
      _os_log_impl(&_mh_execute_header, oslog, v15, "State %s does not exist for this effect, ignoring.", v16, 0xCu);
      sub_100005500(v17);
    }

    else
    {
    }
  }
}

void sub_10000AD90(void *a1, uint64_t a2, char *a3, char a4)
{
  LOBYTE(v4) = a4;
  v6 = [a1 rootNode];
  v7 = sub_1000417CC();
  v8 = [v6 childNodeWithName:v7 recursively:1];

  if (v8)
  {
    v9 = [v8 states];
    if (v9)
    {
      v10 = v9;
      sub_1000054B8(&qword_10005D628, &unk_100044340);
      v11 = sub_10004198C();

      v33 = v8;
      v34 = a3;
      if (v11 >> 62)
      {
        goto LABEL_52;
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        while (1)
        {
          v13 = 0;
          v14 = v4;
          while ((v11 & 0xC000000000000001) != 0)
          {
            v4 = sub_100041D3C();
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

LABEL_11:
            v16 = [v4 name];
            if (v16)
            {
              v17 = v16;
              v18 = sub_1000417FC();
              v20 = v19;
            }

            else
            {
              v18 = 0;
              v20 = 0;
            }

            v21 = 0x6C6C6F7263537349;
            if (v14 == 5)
            {
              v21 = 0xD000000000000010;
            }

            v23 = 0x80000001000465B0;
            v22 = 0x8000000100046590;
            if (v14 != 5)
            {
              v22 = 0xEB00000000676E69;
            }

            v24 = 0xD000000000000016;
            if (v14 == 3)
            {
              v23 = 0x80000001000465D0;
            }

            else
            {
              v24 = 0xD000000000000010;
            }

            if (v14 <= 4)
            {
              v21 = v24;
              v22 = v23;
            }

            v25 = 0x416B636162706154;
            if (v14 != 1)
            {
              v25 = 0x526B636162706154;
            }

            v26 = 0xEC00000064656464;
            if (v14 != 1)
            {
              v26 = 0xEE006465766F6D65;
            }

            if (!v14)
            {
              v25 = 0x7265746E45646944;
              v26 = 0xEC00000074616843;
            }

            if (v14 <= 2)
            {
              v27 = v25;
            }

            else
            {
              v27 = v21;
            }

            if (v14 <= 2)
            {
              v28 = v26;
            }

            else
            {
              v28 = v22;
            }

            if (v20)
            {
              if (v18 == v27 && v20 == v28)
              {

                swift_unknownObjectRelease();
                goto LABEL_50;
              }

              v29 = sub_100041EEC();

              swift_unknownObjectRelease();
              if (v29)
              {

LABEL_50:
                v32 = 1;
                goto LABEL_54;
              }
            }

            else
            {

              swift_unknownObjectRelease();
            }

            ++v13;
            if (v15 == v12)
            {
              goto LABEL_53;
            }
          }

          if (v13 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_52:
          v12 = sub_100041DDC();
          if (!v12)
          {
            goto LABEL_53;
          }
        }

        v4 = *(v11 + 8 * v13 + 32);
        swift_unknownObjectRetain();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_42;
        }

        goto LABEL_11;
      }

LABEL_53:

      v32 = 0;
LABEL_54:
      a3 = v34;
    }

    else
    {

      v32 = 0;
    }

    *a3 = v32;
  }

  else
  {
LABEL_43:
    oslog = sub_10004164C();
    v30 = sub_100041A9C();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v30, "No states node", v31, 2u);
    }
  }
}

unint64_t sub_10000B1E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B2B0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000B78C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005500(v11);
  return v7;
}

unint64_t sub_10000B2B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000B3BC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100041D5C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000B3BC(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000B408(a1, a2);
  sub_10000B538(&off_1000554A8);
  return v3;
}

char *sub_10000B408(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000B624(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100041D5C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000418DC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000B624(v10, 0);
        result = sub_100041D0C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000B538(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000B698(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000B624(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000054B8(&qword_10005D620, &unk_100044330);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000B698(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000054B8(&qword_10005D620, &unk_100044330);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000B78C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B7EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B824()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B86C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000B884()
{
  result = qword_10005F830;
  if (!qword_10005F830)
  {
    sub_10004168C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F830);
  }

  return result;
}

unint64_t sub_10000B8DC()
{
  result = qword_10005F840;
  if (!qword_10005F840)
  {
    sub_10000B940(&unk_10005D640, "B|");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F840);
  }

  return result;
}

uint64_t sub_10000B940(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000B988(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005D650, &qword_100044350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B9F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000BA08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000BA6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000BB04(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000BB4C()
{
  sub_100005500((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_10000BB8C(uint64_t a1, double a2)
{
  if (a2 == 0.0)
  {
    if (*(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) != a1)
    {
      *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) = a1;
      v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
      swift_beginAccess();
      v5 = *(v2 + v4);
      v6 = 1 << *(v5 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(v5 + 64);
      v9 = (v6 + 63) >> 6;

      v10 = 0;
      while (v8)
      {
LABEL_11:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = *(*(v5 + 56) + ((v10 << 9) | (8 * v12)));
        v14 = *&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation];
        *&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] = a1;
        if (v14 != a1)
        {
          v15 = v13;
          sub_100003CD4();
        }
      }

      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {

          return;
        }

        v8 = *(v5 + 64 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = a1;
    v20[4] = sub_10000CC30;
    v20[5] = v18;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_100028728;
    v20[3] = &unk_100055B00;
    v19 = _Block_copy(v20);

    [v17 animateWithDuration:v19 animations:a2];
    _Block_release(v19);
  }
}

void sub_10000BD98(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) != a2)
  {
    *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) = a2;
    v3 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
    swift_beginAccess();
    v5 = *(a1 + v3);
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    while (v8)
    {
LABEL_10:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = *(*(v5 + 56) + ((v10 << 9) | (8 * v12)));
      v14 = *&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation];
      *&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] = a2;
      if (v14 != a2)
      {
        v15 = v13;
        sub_100003CD4();
      }
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        return;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10000BED0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
  swift_beginAccess();
  v7 = sub_10000BA6C(v6, v6[3]);
  v26 = *v7;
  v27 = v7[1];
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100044360;
  v9 = sub_1000229F4(v26);
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_10000CBA4();
  *(v8 + 64) = v12;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v13 = sub_1000229F4(v27);
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 72) = v13;
  *(v8 + 80) = v14;
  v15 = sub_10004181C();
  v17 = v16;
  v18 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
  swift_beginAccess();
  v19 = *(v3 + v18);
  if (*(v19 + 16) && (, v20 = sub_10002C494(v15, v17), v22 = v21, , (v22 & 1) != 0))
  {
    v23 = *(*(v19 + 56) + 8 * v20);
    v24 = v23;
  }

  else
  {

    v23 = 0;
  }

  swift_beginAccess();

  sub_100027F74(v23, a1, a2);
  return swift_endAccess();
}

uint64_t sub_10000C08C(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_10000BA6C(a3, a3[3]);
    v10 = v7[1];
    v11 = *v7;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_100033608(a1, Strong, v11, v10, 1.0);
      if ((sub_10002F4C4(v6, v11, v10) & 1) == 0)
      {
        sub_10000C14C(1.0);
      }
    }
  }

  return result;
}

void sub_10000C14C(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_10002C494(0xD000000000000011, 0x80000001000467B0);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      if (qword_10005CD70 != -1)
      {
        swift_once();
      }

      if ([qword_1000611A0 posterKitEditor])
      {
      }

      else
      {
        [*(v8 + 16) setAlpha:1.0];

        v9 = sub_10004164C();
        v10 = sub_100041ACC();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v49[0] = v47;
          *v11 = 134218242;
          *(v11 + 4) = 0x3FF0000000000000;
          *(v11 + 12) = 2080;
          swift_beginAccess();
          v12 = sub_10000BA6C((v8 + 24), *(v8 + 48));
          v44 = v12[1];
          v45 = *v12;
          sub_1000054B8(&unk_10005D9B0, &unk_100044760);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_100044360;
          v14 = sub_1000229F4(v45);
          v16 = v15;
          *(v13 + 56) = &type metadata for String;
          v17 = sub_10000CBA4();
          *(v13 + 64) = v17;
          *(v13 + 32) = v14;
          *(v13 + 40) = v16;
          v18 = sub_1000229F4(v44);
          *(v13 + 96) = &type metadata for String;
          *(v13 + 104) = v17;
          *(v13 + 72) = v18;
          *(v13 + 80) = v19;
          v20 = sub_10004181C();
          v22 = sub_10000B1E4(v20, v21, v49);

          *(v11 + 14) = v22;
          _os_log_impl(&_mh_execute_header, v9, v10, "current view alpha %f %s", v11, 0x16u);
          sub_100005500(v47);
        }
      }
    }

    else
    {
    }
  }

  v23 = *(v2 + v4);
  if (*(v23 + 16))
  {

    v24 = sub_10002C494(0xD000000000000010, 0x80000001000467D0);
    if (v25)
    {
      v26 = *(*(v23 + 56) + 8 * v24);

      if (qword_10005CD70 != -1)
      {
        swift_once();
      }

      if ([qword_1000611A0 posterKitEditor])
      {
      }

      else
      {
        [*(v26 + 16) setAlpha:a1];
        v27 = [*(v26 + 16) superview];
        if (v27)
        {
          v28 = v27;
          [v27 bringSubviewToFront:*(v26 + 16)];
        }

        v29 = sub_10004164C();
        v30 = sub_100041ACC();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v50 = v32;
          *v31 = 134218242;
          *(v31 + 4) = a1;
          *(v31 + 12) = 2080;
          swift_beginAccess();
          v33 = sub_10000BA6C((v26 + 24), *(v26 + 48));
          v46 = *v33;
          v48 = v33[1];
          sub_1000054B8(&unk_10005D9B0, &unk_100044760);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_100044360;
          v35 = sub_1000229F4(v46);
          v37 = v36;
          *(v34 + 56) = &type metadata for String;
          v38 = sub_10000CBA4();
          *(v34 + 64) = v38;
          *(v34 + 32) = v35;
          *(v34 + 40) = v37;
          v39 = sub_1000229F4(v48);
          *(v34 + 96) = &type metadata for String;
          *(v34 + 104) = v38;
          *(v34 + 72) = v39;
          *(v34 + 80) = v40;
          v41 = sub_10004181C();
          v43 = sub_10000B1E4(v41, v42, &v50);

          *(v31 + 14) = v43;
          _os_log_impl(&_mh_execute_header, v29, v30, "target view alpha %f %s", v31, 0x16u);
          sub_100005500(v32);
        }
      }
    }

    else
    {
    }
  }
}

id sub_10000C6B4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10004164C();
  v4 = sub_100041ACC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000B1E4(0xD000000000000018, 0x8000000100046790, v26);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100005500(v6);
  }

  v7 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v8 = *(v2 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_11:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      result = [*(*(*(v8 + 56) + ((v15 << 9) | (8 * v16))) + 16) removeFromSuperview];
      if (!v11)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_11;
    }
  }

  *(v2 + v7) = &_swiftEmptyDictionarySingleton;

  v17 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
  swift_beginAccess();
  v18 = *(v2 + v17);
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v22 = (v19 + 63) >> 6;

  for (i = 0; v21; result = [*(*(v18 + 56) + ((v24 << 9) | (8 * v25))) removeFromSuperview])
  {
    v24 = i;
LABEL_21:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
  }

  while (1)
  {
    v24 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      *(v2 + v17) = &_swiftEmptyDictionarySingleton;
    }

    v21 = *(v18 + 64 + 8 * v24);
    ++i;
    if (v21)
    {
      i = v24;
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10000C97C()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000097B0(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_delegate);
  sub_100005500((v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_factory));

  sub_100005500((v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ViewsManager(uint64_t a1)
{
  result = qword_10005D690;
  if (!qword_10005D690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CABC(uint64_t a1)
{
  result = sub_10004166C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10000CBA4()
{
  result = qword_10005F260;
  if (!qword_10005F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F260);
  }

  return result;
}

uint64_t sub_10000CBF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CC38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CC50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000054B8(&unk_10005D9C0, &unk_1000444A0);
    v2 = sub_100041E0C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000B78C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000E988(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000E988(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000E988(v31, v32);
    result = sub_100041CDC(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000E988(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10000D0A8(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_10000D180;

  return sub_10000E1B4(v7);
}

uint64_t sub_10000D180(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_1000413DC();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_10000E93C();
    isa = sub_10004197C().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id sub_10000D35C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientTranscriptBackgroundPosterDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GradientTranscriptBackgroundPosterDelegate(uint64_t a1)
{
  result = qword_10005D990;
  if (!qword_10005D990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000D454(uint64_t a1)
{
  result = sub_10004166C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000D4E4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000D534()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000D5F4;

  return sub_10000D0A8(v2, v3, v5, v4);
}

uint64_t sub_10000D5F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000D6E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000E9A0;

  return v6();
}

uint64_t sub_10000D7D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000E9A0;

  return sub_10000D6E8(v2, v3, v4);
}

uint64_t sub_10000D890(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000D5F4;

  return v7();
}

uint64_t sub_10000D97C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000D9BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000E9A0;

  return sub_10000D890(a1, v4, v5, v6);
}

uint64_t sub_10000DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000054B8(&qword_10005D9A0, &qword_100044440);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000DD44(a3, v23 - v10);
  v12 = sub_100041A0C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000DDB4(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000419FC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1000419EC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_10004188C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000DDB4(a3);

    return v21;
  }

LABEL_8:
  sub_10000DDB4(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10000DD44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000054B8(&qword_10005D9A0, &qword_100044440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DDB4(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005D9A0, &qword_100044440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DE1C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000DF14;

  return v6(a1);
}

uint64_t sub_10000DF14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000E00C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E044(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E9A0;

  return sub_10000DE1C(a1, v4);
}

uint64_t sub_10000E0FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D5F4;

  return sub_10000DE1C(a1, v4);
}

uint64_t sub_10000E1B4(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;

  return _swift_task_switch(sub_10000E244, 0, 0);
}

uint64_t sub_10000E244()
{
  v54 = v0;
  v1 = [*(v0 + 112) context];
  if (v1)
  {
    v2 = v1;
    v49 = sub_10004178C();
  }

  else
  {
    v49 = 0;
  }

  sub_10002583C();
  v4 = v3;
  v48 = v3[1].i64[0];
  if (v48)
  {
    v47 = objc_opt_self();
    v5 = 0;
    v46 = PRPosterRoleBackdrop;
    v6 = v4 + 3;
    do
    {
      v51 = v6[-1];
      v50 = v6;
      v52 = *v6;
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100044360;
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100044400;
      *(v8 + 56) = &type metadata for Float;
      *(v8 + 64) = &protocol witness table for Float;
      *(v8 + 32) = v51.i32[0];
      *(v8 + 96) = &type metadata for Float;
      *(v8 + 104) = &protocol witness table for Float;
      *(v8 + 72) = v51.i32[1];
      *(v8 + 112) = v51.i32[2];
      *(v8 + 136) = &type metadata for Float;
      *(v8 + 144) = &protocol witness table for Float;
      *(v8 + 176) = &type metadata for Float;
      *(v8 + 184) = &protocol witness table for Float;
      *(v8 + 152) = v51.i32[3];
      v9 = sub_10004181C();
      v11 = v10;
      *(v7 + 56) = &type metadata for String;
      v12 = sub_10000CBA4();
      *(v7 + 64) = v12;
      *(v7 + 32) = v9;
      *(v7 + 40) = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100044400;
      *(v13 + 56) = &type metadata for Float;
      *(v13 + 64) = &protocol witness table for Float;
      *(v13 + 32) = v52.i32[0];
      *(v13 + 96) = &type metadata for Float;
      *(v13 + 104) = &protocol witness table for Float;
      *(v13 + 72) = v52.i32[1];
      *(v13 + 112) = v52.i32[2];
      *(v13 + 136) = &type metadata for Float;
      *(v13 + 144) = &protocol witness table for Float;
      *(v13 + 176) = &type metadata for Float;
      *(v13 + 184) = &protocol witness table for Float;
      *(v13 + 152) = v52.i32[3];
      v14 = sub_10004181C();
      *(v7 + 96) = &type metadata for String;
      *(v7 + 104) = v12;
      *(v7 + 72) = v14;
      *(v7 + 80) = v15;
      v16 = sub_10004181C();
      v18 = v17;
      v19 = sub_10002806C(v51, v52);
      v21 = v20;
      v22 = sub_1000417CC();
      v23 = [v47 mutableDescriptorWithIdentifier:v22 role:v46];

      if (v49)
      {
        *(v0 + 40) = &type metadata for Int;
        *(v0 + 16) = v5;
        sub_10000E988((v0 + 16), (v0 + 48));

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53[0] = v49;
        sub_10002E150((v0 + 48), 0x6564724F74726F73, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
        v25 = v53[0];
        *(v0 + 40) = &type metadata for String;
        *(v0 + 16) = 0xD000000000000012;
        *(v0 + 24) = 0x8000000100046940;
        sub_10000E988((v0 + 16), (v0 + 48));
        v26 = swift_isUniquelyReferenced_nonNull_native();
        v53[0] = v25;
        sub_10002E150((v0 + 48), 0xD000000000000010, 0x8000000100046920, v26);
        v27 = v53[0];
        *(v0 + 40) = &type metadata for String;
        *(v0 + 16) = v16;
        *(v0 + 24) = v18;
        sub_10000E988((v0 + 16), (v0 + 48));
        v28 = swift_isUniquelyReferenced_nonNull_native();
        v53[0] = v27;
        sub_10002E150((v0 + 48), 0x6D6F74737563, 0xE600000000000000, v28);
        v29 = v53[0];
        *(v0 + 40) = &type metadata for String;
        *(v0 + 16) = v19;
        *(v0 + 24) = v21;
        sub_10000E988((v0 + 16), (v0 + 48));
        v30 = swift_isUniquelyReferenced_nonNull_native();
        v53[0] = v29;
        sub_10002E150((v0 + 48), 0xD000000000000012, 0x8000000100046960, v30);
        sub_10000CC50(v53[0]);

        isa = sub_10004177C().super.isa;

        *(v0 + 16) = 0;
        v32 = [v23 storeUserInfo:isa error:v0 + 16];

        v33 = *(v0 + 16);
        if (v32)
        {
          v34 = v33;
        }

        else
        {
          v35 = v33;
          sub_1000413EC();

          swift_willThrow();
          swift_errorRetain();
          v36 = sub_10004164C();
          v37 = sub_100041ABC();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v53[0] = v39;
            *v38 = 136315138;
            swift_getErrorValue();
            v40 = sub_100041F0C();
            v42 = sub_10000B1E4(v40, v41, v53);

            *(v38 + 4) = v42;
            _os_log_impl(&_mh_execute_header, v36, v37, "error while storing user info : %s", v38, 0xCu);
            sub_100005500(v39);
          }

          else
          {
          }
        }
      }

      else
      {
      }

      v43 = v23;
      sub_10004196C();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000419AC();
      }

      ++v5;
      sub_1000419CC();

      v6 = v50 + 2;
    }

    while (v48 != v5);
  }

  else
  {
  }

  v44 = *(v0 + 8);

  return v44(&_swiftEmptyArrayStorage);
}

unint64_t sub_10000E93C()
{
  result = qword_10005D9A8;
  if (!qword_10005D9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005D9A8);
  }

  return result;
}

_OWORD *sub_10000E988(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_10000E9D8()
{
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100061088 = result;
  return result;
}

void sub_10000EA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  if ([qword_1000611A0 metalCapture])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_10000EAC8();
    }
  }
}

uint64_t sub_10000EAC8()
{
  v42 = sub_10004141C();
  v39 = *(v42 - 8);
  v0 = v39;
  __chkstk_darwin(v42);
  v2 = v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000054B8(&qword_10005DAD0, &unk_1000444C0);
  __chkstk_darwin(v3 - 8);
  v5 = v38 - v4;
  v6 = sub_1000414BC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v41 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v38 - v11;
  __chkstk_darwin(v10);
  v14 = v38 - v13;
  v40 = 0x80000001000469F0;
  v15 = NSTemporaryDirectory();
  v16 = sub_1000417FC();
  v38[1] = v17;
  v38[2] = v16;

  (*(v7 + 56))(v5, 1, 1, v6);
  v18 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v19 = *(v0 + 104);
  v20 = v42;
  v19(v2, enum case for URL.DirectoryHint.inferFromPath(_:), v42);
  sub_10004149C();
  v43[0] = 0xD000000000000014;
  v43[1] = v40;
  v21 = v18;
  v22 = v6;
  v19(v2, v21, v20);
  sub_10000EF68();
  sub_1000414AC();
  (*(v39 + 8))(v2, v20);
  v23 = *(v7 + 8);
  v23(v12, v6);
  v24 = *(v7 + 16);
  v25 = v41;
  v42 = v14;
  v24();
  v26 = sub_10004164C();
  v27 = sub_100041A9C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v23;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43[0] = v30;
    *v29 = 136315138;
    sub_10000EFBC();
    v31 = sub_100041EDC();
    v32 = v22;
    v34 = v33;
    v28(v25, v32);
    v35 = sub_10000B1E4(v31, v34, v43);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "triggerProgrammaticCapture at %s", v29, 0xCu);
    sub_100005500(v30);

    v22 = v32;
    v36 = v28;
  }

  else
  {

    v23(v25, v22);
    v36 = v23;
  }

  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  [qword_1000611A0 setMetalCapture:0];
  return v36(v42, v22);
}

unint64_t sub_10000EF68()
{
  result = qword_10005DAD8;
  if (!qword_10005DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DAD8);
  }

  return result;
}

unint64_t sub_10000EFBC()
{
  result = qword_10005DAE0;
  if (!qword_10005DAE0)
  {
    sub_1000414BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DAE0);
  }

  return result;
}

uint64_t sub_10000F014(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E656964617247;
  }

  else
  {
    v3 = 0x63696D616E7944;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E656964617247;
  }

  else
  {
    v5 = 0x63696D616E7944;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100041EEC();
  }

  return v8 & 1;
}

Swift::Int sub_10000F0BC()
{
  sub_100041F1C();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_10000F140(uint64_t a1)
{
  sub_1000418BC();
}

Swift::Int sub_10000F1B0()
{
  sub_100041F1C();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_10000F230@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000554F8;
  v8._object = v3;
  v5 = sub_100041E2C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10000F290(uint64_t *a1@<X8>)
{
  v2 = 0x63696D616E7944;
  if (*v1)
  {
    v2 = 0x746E656964617247;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10000F2D0()
{
  sub_10000F704();
  v0 = sub_100041C5C();
  type metadata accessor for Signpost(0);
  v1 = swift_allocObject();
  v2 = v0;
  result = sub_10004162C();
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog) = v2;
  qword_100061090 = v1;
  return result;
}

uint64_t sub_10000F380()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  v2 = sub_10004163C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Signpost(uint64_t a1)
{
  result = qword_10005DB28;
  if (!qword_10005DB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F480(uint64_t a1)
{
  result = sub_10004163C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000F51C(char a1)
{
  v2 = sub_10004163C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005CD28 != -1)
  {
    swift_once();
  }

  v6 = qword_100061090;
  sub_10000F704();
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  v13 = a1 & 1;

  sub_100041DBC();
  v14._countAndFlagsBits = 0x6F69736E65747845;
  v14._object = 0xE90000000000006ELL;
  sub_1000418CC(v14);
  v7 = sub_100041C5C();
  v8 = *(v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  *(v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog) = v7;
  v9 = v7;

  sub_10004162C();
  v10 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v3 + 40))(v6 + v10, v5, v2);
  swift_endAccess();
  return v6;
}

unint64_t sub_10000F704()
{
  result = qword_10005DBF0;
  if (!qword_10005DBF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005DBF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Signpost.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Signpost.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000F8C8()
{
  result = qword_10005DBF8;
  if (!qword_10005DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DBF8);
  }

  return result;
}

void sub_10000F91C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10000F984(size_t a1, size_t a2, size_t a3)
{
  v4 = v3;
  v8 = v3[2];
  if (v8)
  {
    v9 = v8;
    if (IOSurfaceGetWidth(v9) != a1)
    {
      Height = IOSurfaceGetHeight(v9);

      if (Height == a2)
      {
        goto LABEL_6;
      }

      v11 = v4[2];
      v4[2] = 0;

      v4[3] = 0;
      swift_unknownObjectRelease();
      v9 = v4[4];
      v4[4] = 0;
    }

LABEL_6:
    v12 = v4[2];
    if (v12)
    {
      goto LABEL_11;
    }
  }

  v13 = sub_10004164C();
  v14 = sub_100041ACC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = a1;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v13, v14, "create surface %ldx%ld", v15, 0x16u);
  }

  sub_1000054B8(&qword_10005DE70, &qword_100044630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000445A0;
  *(inited + 32) = kIOSurfaceWidth;
  *(inited + 40) = a1;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = kIOSurfaceHeight;
  *(inited + 80) = a2;
  *(inited + 104) = &type metadata for Int;
  *(inited + 112) = kIOSurfaceBytesPerElement;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Int;
  *(inited + 152) = kIOSurfaceBytesPerRow;
  *(inited + 160) = a3;
  *(inited + 184) = &type metadata for Int;
  *(inited + 192) = kIOSurfaceAllocSize;
  if ((a3 * a2) >> 64 != (a3 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_24;
  }

  *(inited + 200) = a3 * a2;
  *(inited + 224) = &type metadata for Int;
  *(inited + 232) = kIOSurfacePixelFormat;
  *(inited + 264) = &type metadata for UInt32;
  *(inited + 240) = 1278226488;
  v17 = inited;
  v18 = kIOSurfaceWidth;
  v19 = kIOSurfaceHeight;
  v20 = kIOSurfaceBytesPerElement;
  v21 = kIOSurfaceBytesPerRow;
  v22 = kIOSurfaceAllocSize;
  v23 = kIOSurfacePixelFormat;
  sub_1000331F4(v17);
  swift_setDeallocating();
  sub_1000054B8(&qword_10005DE78, &qword_100044638);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_100011598(&unk_10005DE80, type metadata accessor for CFString, &unk_100043FE8);
  isa = sub_10004177C().super.isa;

  v25 = IOSurfaceCreate(isa);

  v26 = v4[2];
  v4[2] = v25;

  v12 = v4[2];
  if (!v12)
  {
    return;
  }

LABEL_11:
  if (v4[3])
  {
    v27 = v12;
    if (!v4[4])
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v28 = objc_allocWithZone(MTLTextureDescriptor);
  v29 = v12;
  v30 = [v28 init];
  [v30 setPixelFormat:10];
  [v30 setWidth:a3];
  [v30 setHeight:a2];
  v31 = MTLCreateSystemDefaultDevice();
  if (!v31)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v32 = [v31 newTextureWithDescriptor:v30 iosurface:v29 plane:0];

  swift_unknownObjectRelease();
  v4[3] = v32;
  swift_unknownObjectRelease();
  if (!v4[4])
  {
LABEL_16:
    DeviceGray = CGColorSpaceCreateDeviceGray();
    BaseAddress = IOSurfaceGetBaseAddress(v12);
    v35 = sub_1000115E0(BaseAddress, a1, a2, a3, DeviceGray);
    v36 = v4[4];
    v4[4] = v35;
    v37 = v35;

    if (v37)
    {
      CGContextScaleCTM(v37, 1.0, -1.0);
    }

    v38 = v4[4];
    if (v38)
    {
      v39 = -a2;
      v40 = v38;
      CGContextTranslateCTM(v40, 0.0, v39);
    }

    v12 = DeviceGray;
  }

LABEL_21:
}

uint64_t sub_10000FDF8(CGContext *a1, uint64_t a2, void *a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v17 = sub_10004158C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextBeginPath(a1);
  CGAffineTransformMakeScale(&v39, a2 / a4, 1.0);
  v40.origin.x = a6;
  v40.origin.y = a7;
  v40.size.width = a8;
  v40.size.height = a9;
  v41 = CGRectApplyAffineTransform(v40, &v39);
  if (a3 == 2)
  {
    v31 = CGPathCreateWithRoundedRect(v41, 15.0, 15.0, 0);
    CGContextAddPath(a1, v31);

    v30 = 0x3F80101010101010;
  }

  else if (a3 == 1)
  {
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
    v26 = CGRectGetWidth(v41);
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v27 = CGRectGetHeight(v42);
    if (v27 < v26)
    {
      v26 = v27;
    }

    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v28 = x - (v26 - CGRectGetWidth(v43)) * 0.5;
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v45.origin.y = y - (v26 - CGRectGetHeight(v44)) * 0.5;
    v45.origin.x = v28;
    v45.size.width = v26;
    v45.size.height = v26;
    v29 = CGPathCreateWithEllipseInRect(v45, 0);
    CGContextAddPath(a1, v29);

    v30 = 0x3F88181818181818;
  }

  else
  {
    if (a3)
    {
      v32 = v41.origin.y;
      v33 = v41.origin.x;
      v34 = a3;
      CGContextSaveGState(a1);
      CGContextTranslateCTM(a1, v33, v32);
      CGContextAddPath(a1, v34);
      CGContextRestoreGState(a1);
      sub_1000114A0(a3);
    }

    else
    {
      v21 = CGPathCreateWithRoundedRect(v41, 15.0, 15.0, 0);
      CGContextAddPath(a1, v21);
    }

    v30 = 0x3F70101010101010;
  }

  v35 = *&v30;
  CGContextClosePath(a1);
  v36 = [objc_allocWithZone(UIColor) initWithWhite:v35 alpha:1.0];
  v37 = [v36 CGColor];

  CGContextSetFillColorWithColor(a1, v37);
  (*(v18 + 104))(v20, enum case for CGPathFillRule.winding(_:), v17);
  sub_100041A8C();
  return (*(v18 + 8))(v20, v17);
}

void (*sub_100010130(void (*result)(CGContext *, uint64_t), double a2, double a3))(CGContext *, uint64_t)
{
  if (a2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = ceilf(vcvts_n_f32_s64(a2, 4uLL)) * 16.0;
  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v4 <= -9.2234e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 >= 9.2234e18)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = a3;
  v7 = v4;
  sub_10000F984(v4, a3, v4);
  v8 = *(v3 + 32);
  if (!v8 || !*(v3 + 16))
  {
    return 0;
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 blackColor];
  v12 = [v11 CGColor];

  CGContextSetFillColorWithColor(v10, v12);
  sub_1000054B8(&qword_10005DE68, "f~");
  v13._rawValue = swift_allocObject();
  *(v13._rawValue + 1) = xmmword_1000445B0;
  *(v13._rawValue + 4) = 0;
  *(v13._rawValue + 5) = 0;
  *(v13._rawValue + 6) = v7;
  *(v13._rawValue + 7) = v6;
  sub_100041A7C(v13);

  if (v5)
  {
    v5(v10, v7);
  }

  CGContextFlush(v10);

  return swift_unknownObjectRetain();
}

uint64_t sub_100010354()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtensionP33_77D8BCAD73742E8786BBD6C6E080525512MaskProvider_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100010430(uint64_t a1)
{
  result = sub_10004166C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000104D0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer) = 0;
  v5 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_logger;
  v6 = sub_10004166C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_asset) = a2;
  type metadata accessor for MaskProvider(0);
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = 0;
  (*(v7 + 32))(v8 + OBJC_IVAR____TtC33GradientBackgroundPosterExtensionP33_77D8BCAD73742E8786BBD6C6E080525512MaskProvider_logger, a1, v6);
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_provider) = v8;
  return v2;
}

uint64_t sub_1000105CC(double a1, double a2, double a3)
{
  v6 = sub_10004168C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000416DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004164C();
  v15 = sub_100041A9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v14, v15, "Starting timer to clear mask after %fs", v16, 0xCu);
  }

  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v17 = sub_100041B0C();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  aBlock[4] = sub_100011544;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_100055CF8;
  v20 = _Block_copy(aBlock);

  sub_1000416AC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100011598(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_10000B8DC();
  sub_100041CAC();
  sub_100041B1C();
  _Block_release(v20);

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

void sub_100010954(uint64_t a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a3;
    *(v11 + 32) = a4;
    v15[4] = sub_10001158C;
    v15[5] = v11;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_10000F91C;
    v15[3] = &unk_100055D48;
    v12 = _Block_copy(v15);

    v13 = [v9 scheduledTimerWithTimeInterval:0 repeats:v12 block:a2];
    _Block_release(v12);
    v14 = *(v8 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer);
    *(v8 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer) = v13;
  }
}

void sub_100010AF4(void *a1, uint64_t a2, double a3, double a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer;
    v10 = *(Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer);
    if (v10 && (sub_10000BB04(0, &qword_10005DE60, NSTimer_ptr), v11 = v10, v12 = a1, v13 = sub_100041C3C(), v11, v12, (v13 & 1) != 0))
    {
      v14 = sub_10004164C();
      v15 = sub_100041AAC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Timer fired to clear mask", v16, 2u);
      }

      v17 = *(v8 + v9);
      *(v8 + v9) = 0;

      sub_1000111C0(v18, a3, a4);
    }

    else
    {
      v19 = sub_10004164C();
      v20 = sub_100041A9C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Not the right taimer bailing out", v21, 2u);
      }
    }
  }
}

uint64_t sub_100010CE0()
{
  v0 = sub_10004168C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000416DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v8 = sub_100041B0C();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000114EC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_100055CA8;
  v10 = _Block_copy(aBlock);

  sub_1000416AC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100011598(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_10000B8DC();
  sub_100041CAC();
  sub_100041B1C();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_100010FA8(uint64_t a1)
{
  v1 = sub_10004166C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v2 + 16))(v4, Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_logger, v1);

    v6 = sub_10004164C();
    v7 = sub_100041AAC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Invalidating timer to clear mask", v8, 2u);
    }

    (*(v2 + 8))(v4, v1);
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer);

    [v10 invalidate];
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer);
    *(v11 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_timer) = 0;
  }
}

id sub_1000111C0(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_10004164C();
  v8 = sub_100041AAC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Clearing mask", v9, 2u);
  }

  v10 = *(v4 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_asset);
  v11 = *(v4 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_provider);
  sub_100010130(0, a2, a3);
  swift_unknownObjectRelease();
  v12 = *(v11 + 24);

  return [v10 setTexture:v12];
}

uint64_t sub_1000112C0()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000113B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000113EC(uint64_t a1)
{
  result = sub_10004166C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000114A0(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

uint64_t sub_1000114B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000114F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001150C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100011554()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_100011618()
{
  v1 = *v0;
  sub_100041F1C();
  sub_100041F2C(v1);
  return sub_100041F3C();
}

Swift::Int sub_10001168C()
{
  v1 = *v0;
  sub_100041F1C();
  sub_100041F2C(v1);
  return sub_100041F3C();
}

uint64_t sub_1000116D0()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x76696C4177656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6580592;
  }
}

uint64_t sub_100011720@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000150E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100011760(uint64_t a1)
{
  v2 = sub_1000153D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001179C(uint64_t a1)
{
  v2 = sub_1000153D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000117D8(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_1000054B8(&qword_10005E268, &qword_100044800);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_10000BA6C(a1, a1[3]);
  sub_1000153D0();
  sub_100041F5C();
  v11[15] = 0;
  sub_100041ECC();
  if (!v4)
  {
    v11[14] = 1;
    sub_100041E9C();
    v11[13] = 2;
    sub_100041EBC();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_100011990(uint64_t a1@<X8>, void *a2@<X0>)
{
  v6 = sub_100015204(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
  }
}

uint64_t sub_1000119E8()
{
  type metadata accessor for PIDObserver(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_logger;
  v2 = sub_10004166C();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v4 = v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_pid;
  *v4 = 0;
  *(v4 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_shouldRunAsSnapshot) = 0;
  qword_1000610A0 = v0;
  return result;
}

uint64_t sub_100011A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10004155C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = sub_10004166C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_logger;
  swift_beginAccess();
  sub_100014FA4(v14, v4 + v17);
  swift_endAccess();
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;

  v18 = [objc_opt_self() processInfo];
  v19 = [v18 processIdentifier];

  v20 = v4 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_pid;
  *v20 = v19;
  *(v20 + 4) = 0;
  sub_10004154C();
  sub_10004153C();
  v22 = v21;
  (*(v9 + 8))(v11, v8);
  v23 = sub_10004164C();
  v24 = sub_100041A9C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = v26;
    *v25 = 136315138;
    v36 = v19;
    v37 = v22;
    v38 = 0;
    v27 = sub_10004186C();
    v29 = sub_10000B1E4(v27, v28, &v35);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "pid: %s", v25, 0xCu);
    sub_100005500(v26);
  }

  v30 = sub_100012B10();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_100039030(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_100039030((v31 > 1), v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  v33 = &v30[24 * v32];
  *(v33 + 8) = v19;
  *(v33 + 5) = v22;
  *(v33 + 6) = 0;
  sub_10001257C(v30);

  return sub_100011E5C();
}

uint64_t sub_100011E5C()
{
  v1 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  sub_100012B10();
  v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_logger;
  swift_beginAccess();
  sub_100014E14(v0 + v4, v3);
  v5 = sub_10004166C();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v3, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_10004164C();
    v9 = sub_100041A9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_10004199C();
      v14 = v13;

      v15 = sub_10000B1E4(v12, v14, &v16);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "pidList: %s", v10, 0xCu);
      sub_100005500(v11);
    }

    else
    {
    }

    return (*(v6 + 8))(v3, v5);
  }

  return result;
}

uint64_t sub_100012084()
{
  v1 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_pid);
  v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_pid + 4);
  sub_100011E5C();
  v3 = sub_100012B10();
  v4 = v3;
  v5 = *(v3 + 2);
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = v3 + 48;
  v7 = *(v3 + 2);
  while (1)
  {
    v8 = *(v6 - 4) == v1 ? v2 : 1;
    if ((v8 & 1) == 0)
    {
      break;
    }

    v6 += 3;
    if (!--v7)
    {
      goto LABEL_29;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *(v6 - 1);
  v12 = *v6;
  while (*&v3[v9 + 32] != v1)
  {
    ++v10;
    v9 += 24;
    if (v5 == v10)
    {
      v10 = *(v3 + 2);
      goto LABEL_19;
    }
  }

  v13 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_15;
  }

  v4 = sub_100039870(v4);
LABEL_15:
  v5 = *(v4 + 2);
  if (v13 != v5)
  {
    v14 = (v4 + 32);
    v19 = &v4[v9 + 72];
    while (v13 < v5)
    {
      v20 = *(v19 - 4);
      if (v20 != v1)
      {
        if (v13 != v10)
        {
          if (v10 >= v5)
          {
            goto LABEL_41;
          }

          v21 = v14 + 24 * v10;
          v22 = *v21;
          v23 = *(v21 + 8);
          v24 = *(v21 + 16);
          v25 = *(v19 - 1);
          v26 = *v19;
          *v21 = v20;
          *(v21 + 8) = v25;
          *(v21 + 16) = v26;
          *(v19 - 4) = v22;
          *(v19 - 1) = v23;
          *v19 = v24;
          v5 = *(v4 + 2);
        }

        ++v10;
      }

      v13 = (v13 + 1);
      v19 += 24;
      if (v13 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = v10 + 1;
LABEL_17:
  if (v5 < v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v10 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_19:
  v14 = v10 - v5;
  v13 = v10;
  if (__OFADD__(v5, v10 - v5))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v4;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v4 + 3) >> 1)
  {
    if (v5 <= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    v4 = sub_100039030(isUniquelyReferenced_nonNull_native, v16, 1, v4);
    v27 = v4;
  }

  v13 = &v27;
  sub_100039998(v10, v5, 0);
  v10 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    goto LABEL_45;
  }

  v5 = *(v4 + 2);
  v14 = *(v4 + 3);
  v13 = (v5 + 1);
  if (v5 < v14 >> 1)
  {
    goto LABEL_28;
  }

LABEL_46:
  v4 = sub_100039030((v14 > 1), v13, 1, v4);
LABEL_28:
  *(v4 + 2) = v13;
  v17 = &v4[24 * v5];
  *(v17 + 8) = v1;
  *(v17 + 5) = v11;
  *(v17 + 6) = v10;
  sub_10001257C(v4);
LABEL_29:

  return sub_100011E5C();
}

uint64_t sub_100012300()
{
  v1 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_pid);
  v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_pid + 4);
  sub_100011E5C();
  v3 = sub_100012B10();
  v4 = v3;
  v5 = *(v3 + 2);
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = v3 + 48;
  v7 = *(v3 + 2);
  while (1)
  {
    v8 = *(v6 - 4) == v1 ? v2 : 1;
    if ((v8 & 1) == 0)
    {
      break;
    }

    v6 += 3;
    if (!--v7)
    {
      goto LABEL_29;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *(v6 - 1);
  v12 = *v6;
  while (*&v3[v9 + 32] != v1)
  {
    ++v10;
    v9 += 24;
    if (v5 == v10)
    {
      v10 = *(v3 + 2);
      goto LABEL_19;
    }
  }

  v13 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_15;
  }

  v4 = sub_100039870(v4);
LABEL_15:
  v5 = *(v4 + 2);
  if (v13 != v5)
  {
    v14 = (v4 + 32);
    v19 = &v4[v9 + 72];
    while (v13 < v5)
    {
      v20 = *(v19 - 4);
      if (v20 != v1)
      {
        if (v13 != v10)
        {
          if (v10 >= v5)
          {
            goto LABEL_41;
          }

          v21 = v14 + 24 * v10;
          v22 = *v21;
          v23 = *(v21 + 8);
          v24 = *(v21 + 16);
          v25 = *(v19 - 1);
          v26 = *v19;
          *v21 = v20;
          *(v21 + 8) = v25;
          *(v21 + 16) = v26;
          *(v19 - 4) = v22;
          *(v19 - 1) = v23;
          *v19 = v24;
          v5 = *(v4 + 2);
        }

        ++v10;
      }

      v13 = (v13 + 1);
      v19 += 24;
      if (v13 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = v10 + 1;
LABEL_17:
  if (v5 < v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v10 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_19:
  v14 = v10 - v5;
  v13 = v10;
  if (__OFADD__(v5, v10 - v5))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v4;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v4 + 3) >> 1)
  {
    if (v5 <= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    v4 = sub_100039030(isUniquelyReferenced_nonNull_native, v16, 1, v4);
    v27 = v4;
  }

  v13 = &v27;
  sub_100039998(v10, v5, 0);
  v10 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    goto LABEL_45;
  }

  v5 = *(v4 + 2);
  v14 = *(v4 + 3);
  v13 = (v5 + 1);
  if (v5 < v14 >> 1)
  {
    goto LABEL_28;
  }

LABEL_46:
  v4 = sub_100039030((v14 > 1), v13, 1, v4);
LABEL_28:
  *(v4 + 2) = v13;
  v17 = &v4[24 * v5];
  *(v17 + 8) = v1;
  *(v17 + 5) = v11;
  *(v17 + 6) = v10;
  sub_10001257C(v4);
LABEL_29:

  return sub_100011E5C();
}

Class sub_10001257C(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  __chkstk_darwin(v2 - 8);
  v27[0] = v27 - v3;
  v4 = sub_10004155C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004133C();
  swift_allocObject();
  v27[2] = sub_10004132C();
  sub_10004154C();
  sub_10004153C();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 48);
    v12 = &_swiftEmptyArrayStorage;
    do
    {
      v16 = *(v11 - 1);
      if (v9 - v16 < 60.0)
      {
        v17 = *(v11 - 4);
        v18 = *v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100022DAC(0, v12[2] + 1, 1);
          v12 = v28;
        }

        v14 = v12[2];
        v13 = v12[3];
        if (v14 >= v13 >> 1)
        {
          sub_100022DAC((v13 > 1), v14 + 1, 1);
          v12 = v28;
        }

        v12[2] = v14 + 1;
        v15 = &v12[3 * v14];
        *(v15 + 8) = v17;
        *(v15 + 5) = v16;
        *(v15 + 6) = v18;
      }

      v11 += 3;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v28 = v12;
  sub_1000054B8(&qword_10005E228, &unk_100044778);
  sub_100014ED8(&qword_10005E248, sub_100014F50, &protocol conformance descriptor for <A> [A]);
  v20 = sub_10004131C();
  v22 = v21;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  v23 = qword_1000611A0;
  result = sub_1000414EC().super.isa;
  if (*(v27[1] + 24))
  {
    v25 = result;

    v26 = sub_1000417CC();

    [v23 setObject:v25 forKey:v26];

    return sub_100014E84(v20, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100012B10()
{
  v1 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  result = __chkstk_darwin(v1 - 8);
  if (qword_10005CD70 != -1)
  {
    result = swift_once();
    if (*(v0 + 24))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    __break(1u);
    return result;
  }

  if (!*(v0 + 24))
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = qword_1000611A0;

  v4 = sub_1000417CC();

  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    sub_100041C9C();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_10004130C();
      swift_allocObject();
      sub_1000412FC();
      sub_1000054B8(&qword_10005E228, &unk_100044778);
      sub_100014ED8(&qword_10005E230, sub_100014DC0, &protocol conformance descriptor for <A> [A]);
      sub_1000412EC();

      sub_100014E84(v6, v7);
      return *&v10[0];
    }
  }

  else
  {
    sub_100015014(v10, &qword_10005E220, &qword_100044770);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100012F30()
{

  sub_100015014(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_logger, &qword_10005E218, &qword_100045260);

  return swift_deallocClassInstance();
}

void sub_100012FD4(uint64_t a1)
{
  sub_100013084(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100013084(uint64_t a1)
{
  if (!qword_10005DED8)
  {
    sub_10004166C();
    v1 = sub_100041C6C();
    if (!v2)
    {
      atomic_store(v1, &qword_10005DED8);
    }
  }
}

uint64_t sub_1000130DC(uint64_t a1)
{
  sub_100014310(a1);
  sub_1000097B0(v1 + 32);
  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_logger;
  v3 = sub_10004166C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1000131CC()
{
  v0 = sub_10004168C();
  v33 = *(v0 - 8);
  v34 = v0;
  __chkstk_darwin(v0);
  v32 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100041B8C();
  v25 = *(v28 - 8);
  v26 = v25;
  __chkstk_darwin(v28);
  v27 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100041AFC();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100041BFC();
  __chkstk_darwin(v6);
  v7 = sub_1000416DC();
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000BB04(0, &unk_10005E1C0, OS_dispatch_queue_serial_ptr);
  v23[0] = "Thermal state changed ";
  v23[1] = v10;
  sub_1000416CC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100014D78(&unk_10005F2D0, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_1000054B8(&unk_10005E1D0, ">~");
  sub_100014D24(&qword_10005F2E0, &unk_10005E1D0, ">~");
  sub_100041CAC();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v24);
  v11 = sub_100041C0C();
  sub_10000BB04(0, &qword_10005E1E0, OS_dispatch_source_ptr);
  sub_1000054B8(&qword_10005E1E8, "@~");
  v12 = v26;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000445B0;
  sub_100041B4C();
  aBlock[0] = v13;
  sub_100014D78(&qword_10005E1F0, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent, &protocol conformance descriptor for OS_dispatch_source.MemoryPressureEvent);
  sub_1000054B8(&qword_10005E1F8, &unk_100044750);
  sub_100014D24(&qword_10005E200, &qword_10005E1F8, &unk_100044750);
  v14 = v27;
  v15 = v28;
  sub_100041CAC();
  v16 = v11;
  v17 = sub_100041B9C();

  (*(v12 + 8))(v14, v15);
  swift_getObjectType();
  v18 = swift_allocObject();
  v19 = v31;
  swift_weakInit();
  aBlock[4] = sub_100014D04;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_100055D98;
  v20 = _Block_copy(aBlock);

  sub_1000416AC();
  v21 = v32;
  sub_1000140B4();
  sub_100041BAC();
  _Block_release(v20);
  (*(v33 + 8))(v21, v34);
  (*(v29 + 8))(v9, v30);

  sub_100041BBC();
  *(v19 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource) = v17;
  swift_unknownObjectRelease();
  v22 = *(v19 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureQueue);
  *(v19 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureQueue) = v11;
}

uint64_t sub_1000137E0(uint64_t a1)
{
  v1 = sub_100041B8C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v59 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v59 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v59 - v13;
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!*(result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource))
    {
    }

    v62 = v5;
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_100041C1C();
    swift_unknownObjectRelease();
    (*(v2 + 32))(v16, v14, v1);
    sub_1000149EC();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100044650;
    *(v24 + 56) = &type metadata for Float;
    *(v24 + 64) = &protocol witness table for Float;
    *(v24 + 32) = v19;
    *(v24 + 96) = &type metadata for Float;
    *(v24 + 104) = &protocol witness table for Float;
    *(v24 + 72) = v21;
    *(v24 + 136) = &type metadata for Float;
    *(v24 + 144) = &protocol witness table for Float;
    *(v24 + 112) = v23;
    v63 = sub_10004181C();
    v26 = v25;
    v27 = *(v2 + 16);
    v64 = v16;
    v61 = v27;
    (v27)(v11);
    sub_100041B5C();
    sub_100014D78(&qword_10005E208, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent, &protocol conformance descriptor for OS_dispatch_source.MemoryPressureEvent);
    v28 = sub_1000417BC();
    v29 = *(v2 + 8);
    v29(v8, v1);
    if (v28)
    {
      v29(v11, v1);

      v30 = sub_10004164C();
      v31 = sub_100041A9C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v65 = v33;
        *v32 = 136315138;
        v34 = sub_10000B1E4(v63, v26, &v65);

        *(v32 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "MemoryFootprint: normal %s", v32, 0xCu);
        sub_100005500(v33);

LABEL_10:

        return (v29)(v64, v1);
      }

      goto LABEL_15;
    }

    sub_100041B6C();
    v35 = sub_1000417BC();
    v29(v8, v1);
    if (v35)
    {
      v29(v11, v1);

      v30 = sub_10004164C();
      v36 = sub_100041A9C();

      if (os_log_type_enabled(v30, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v65 = v38;
        *v37 = 136315138;
        v39 = sub_10000B1E4(v63, v26, &v65);

        *(v37 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v30, v36, "MemoryFootprint: warning %s", v37, 0xCu);
        sub_100005500(v38);

        goto LABEL_10;
      }

LABEL_15:

      return (v29)(v64, v1);
    }

    sub_100041B7C();
    v40 = sub_1000417BC();
    v29(v8, v1);
    v29(v11, v1);
    if (v40)
    {

      v30 = sub_10004164C();
      v41 = sub_100041A9C();

      if (os_log_type_enabled(v30, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v65 = v43;
        *v42 = 136315138;
        v44 = sub_10000B1E4(v63, v26, &v65);

        *(v42 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v30, v41, "MemoryFootprint: critical %s", v42, 0xCu);
        sub_100005500(v43);

        return (v29)(v64, v1);
      }

      goto LABEL_15;
    }

    v60 = v29;
    v45 = v62;
    v46 = v64;
    v61(v62, v64, v1);

    v47 = sub_10004164C();
    v48 = sub_100041A9C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v65 = v61;
      *v49 = 136315394;
      sub_100014D78(&qword_10005E210, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent, &protocol conformance descriptor for OS_dispatch_source.MemoryPressureEvent);
      v50 = sub_100041EDC();
      v52 = v51;
      v53 = v45;
      v54 = v60;
      v60(v53, v1);
      v55 = sub_10000B1E4(v50, v52, &v65);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      v56 = sub_10000B1E4(v63, v26, &v65);

      *(v49 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "MemoryFootprint: state %s %s", v49, 0x16u);
      swift_arrayDestroy();

      return v54(v64, v1);
    }

    else
    {

      v57 = v45;
      v58 = v60;
      v60(v57, v1);
      return v58(v46, v1);
    }
  }

  return result;
}

uint64_t sub_1000140B4()
{
  sub_10004168C();
  sub_100014D78(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
  return sub_100041CAC();
}

void sub_10001418C(uint64_t a1)
{
  if ((*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_isMonitoring) & 1) == 0)
  {
    v2 = v1;
    *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_isMonitoring) = 1;
    v3 = sub_10004164C();
    v4 = sub_100041A9C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Start monitoring lower power and thermal state.", v5, 2u);
    }

    v6 = objc_opt_self();
    v7 = [v6 defaultCenter];
    [v7 addObserver:v2 selector:"thermalStateDidChangeWithNotification:" name:NSProcessInfoThermalStateDidChangeNotification object:0];

    v8 = [v6 defaultCenter];
    [v8 addObserver:v2 selector:"lowPowerModeStateDidChangeWithNotification:" name:NSProcessInfoPowerStateDidChangeNotification object:0];
  }
}

void sub_100014310(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_isMonitoring) == 1)
  {
    v2 = v1;
    *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_isMonitoring) = 0;
    v3 = sub_10004164C();
    v4 = sub_100041A9C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stop monitoring lower power and thermal state.", v5, 2u);
    }

    v6 = [objc_opt_self() defaultCenter];
    [v6 removeObserver:v2];
  }
}

void sub_10001442C()
{
  if (*(v0 + 16))
  {
    v1 = 0;
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = v4 > 3;
    LOBYTE(v4) = v4 & 0xF;
    v6 = 8u >> v4;
    v7 = 4u >> v4;
    v8 = 3u >> v4;
    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6;
    }

    if (v5)
    {
      v1 = 0;
    }

    else
    {
      v1 = v7;
    }

    if (v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = v8;
    }
  }

  v9 = [objc_opt_self() processInfo];
  v10 = [v9 thermalState];

  *(v0 + 24) = v10;
  if (*(v0 + 16))
  {
LABEL_13:
    if (v3)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v10 < 2)
  {
    goto LABEL_18;
  }

  if (v10 != 2)
  {
    if (v10 == 3)
    {
      goto LABEL_13;
    }

LABEL_18:
    if (v2)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v1)
  {
    return;
  }

LABEL_21:
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  sub_100041D2C(24);

  v11 = *(v0 + 24);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 0xE700000000000000;
      v13._countAndFlagsBits = 0x73756F69726573;
      goto LABEL_33;
    }

    if (v11 == 3)
    {
      v12 = 0xE800000000000000;
      v13._countAndFlagsBits = 0x6C61636974697263;
      goto LABEL_33;
    }

LABEL_30:
    v12 = 0xE600000000000000;
    v13._countAndFlagsBits = 0x6E776F6B6E75;
    goto LABEL_33;
  }

  if (!v11)
  {
    v12 = 0xE700000000000000;
    v13._countAndFlagsBits = 0x6C616E696D6F6ELL;
    goto LABEL_33;
  }

  if (v11 != 1)
  {
    goto LABEL_30;
  }

  v12 = 0xE400000000000000;
  v13._countAndFlagsBits = 1919508838;
LABEL_33:
  v13._object = v12;
  sub_1000418CC(v13);

  sub_100027780(0xD000000000000016, 0x8000000100046CC0);

  swift_unknownObjectRelease();
}

void sub_100014664()
{
  if (*(v0 + 16))
  {
    v1 = 0;
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = v4 > 3;
    LOBYTE(v4) = v4 & 0xF;
    v6 = 8u >> v4;
    v7 = 4u >> v4;
    v8 = 3u >> v4;
    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6;
    }

    if (v5)
    {
      v1 = 0;
    }

    else
    {
      v1 = v7;
    }

    if (v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = v8;
    }
  }

  v9 = [objc_opt_self() processInfo];
  v10 = [v9 isLowPowerModeEnabled];

  *(v0 + 16) = v10;
  if (v10)
  {
LABEL_13:
    if (v3)
    {
      return;
    }

    goto LABEL_21;
  }

  v11 = *(v0 + 24);
  if (v11 < 2)
  {
LABEL_18:
    if (v2)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v11 != 2)
  {
    if (v11 == 3)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (v1)
  {
    return;
  }

LABEL_21:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100041D2C(21);

    if (*(v0 + 16))
    {
      v12._countAndFlagsBits = 1702195828;
    }

    else
    {
      v12._countAndFlagsBits = 0x65736C6166;
    }

    if (*(v0 + 16))
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v12._object = v13;
    sub_1000418CC(v12);

    sub_100027780(0xD000000000000013, 0x8000000100046CA0);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100014838(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_10004135C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004134C();

  a4(v9);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001492C(uint64_t a1)
{
  result = sub_10004166C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000149EC()
{
  v0 = sub_10004185C();
  __chkstk_darwin(v0 - 8);
  memset(v12, 0, 372);
  v11 = 93;
  v1 = task_info(mach_task_self_, 0x16u, v12, &v11);
  if (v1)
  {
    if (mach_error_string(v1))
    {
      sub_10004184C();
      v3 = sub_10004182C();
      v4 = v2;
      if (v2)
      {
        v5 = v2;
      }

      else
      {
        v5 = 0xED0000726F727245;
      }

      v6 = sub_10004164C();
      v7 = sub_100041ABC();

      if (os_log_type_enabled(v6, v7))
      {
        if (!v4)
        {
          v3 = 0x206E776F6E6B6E55;
        }

        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v13 = v9;
        *v8 = 136315138;
        v10 = sub_10000B1E4(v3, v5, &v13);

        *(v8 + 4) = v10;
        _os_log_impl(&_mh_execute_header, v6, v7, "Error with task_info() in memoryUsageInMBytes: %s", v8, 0xCu);
        sub_100005500(v9);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100014CCC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014D24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B940(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100014DC0()
{
  result = qword_10005E238;
  if (!qword_10005E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E238);
  }

  return result;
}

uint64_t sub_100014E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014E84(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100014ED8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B940(&qword_10005E228, &unk_100044778);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100014F50()
{
  result = qword_10005E250;
  if (!qword_10005E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E250);
  }

  return result;
}

uint64_t sub_100014FA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015014(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000054B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 initializeBufferWithCopyOfBuffer for PIDObserver.PidData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PIDObserver.PidData(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PIDObserver.PidData(uint64_t result, int a2, int a3)
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

uint64_t sub_1000150E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580592 && a2 == 0xE300000000000000;
  if (v3 || (sub_100041EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_100041EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76696C4177656976 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_100041EEC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_100015204(void *a1)
{
  v2 = sub_1000054B8(&qword_10005E258, &qword_1000447F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_10000BA6C(a1, a1[3]);
  sub_1000153D0();
  sub_100041F4C();
  v12 = 0;
  sub_100041E7C();
  v11 = 1;
  sub_100041E4C();
  v8 = v7;
  v10 = 2;
  sub_100041E6C();
  (*(v3 + 8))(v5, v2);
  sub_100005500(a1);
  return v8;
}

unint64_t sub_1000153D0()
{
  result = qword_10005E260;
  if (!qword_10005E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E260);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PIDObserver.PidData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PIDObserver.PidData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100015580()
{
  result = qword_10005E270;
  if (!qword_10005E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E270);
  }

  return result;
}

unint64_t sub_1000155D8()
{
  result = qword_10005E278;
  if (!qword_10005E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E278);
  }

  return result;
}

unint64_t sub_100015630()
{
  result = qword_10005E280;
  if (!qword_10005E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E280);
  }

  return result;
}

uint64_t sub_100015684(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *(v6 + 45) = 0u;
  v7 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_logger;
  v8 = sub_10004166C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3 + v7, a2, v8);
  *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_isSnapshotMode) = *(a1 + 96);
  sub_10001A9FC(v20);
  v10 = (v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
  v11 = v20[1];
  *v10 = v20[0];
  v10[1] = v11;
  v10[2] = v21[0];
  *(v10 + 45) = *(v21 + 13);
  v12 = *(a1 + 40);
  v13 = (v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID);
  *v13 = *(a1 + 32);
  v13[1] = v12;
  v14 = qword_10005CD38;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 16);
  v24[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
  v24[1] = v15;
  v25[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 32);
  *(v25 + 13) = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 45);
  sub_10001D094(v24, v22);
  sub_100005464(a1);
  (*(v9 + 8))(a2, v8);
  v16 = (v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v17 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
  v26[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v26[1] = v17;
  v27[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
  *(v27 + 13) = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 45);
  v18 = v22[1];
  *v16 = v22[0];
  v16[1] = v18;
  v16[2] = v23[0];
  *(v16 + 45) = *(v23 + 13);
  sub_100007D6C(v26);
  return v3;
}

BOOL sub_100015870()
{
  v1 = v0;
  if (qword_10005CD30 != -1)
  {
    swift_once();
  }

  if (*(qword_1000610A0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11PIDObserver_shouldRunAsSnapshot) == 1)
  {

    v2 = sub_10004164C();
    v3 = sub_100041A9C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *&v23 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_10000B1E4(*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), &v23);
      _os_log_impl(&_mh_execute_header, v2, v3, "#%s PIDObserver: shouldRunAsSnapshot", v4, 0xCu);
      sub_100005500(v5);
    }

    return 0;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_isSnapshotMode) != 1)
    {
      return 1;
    }

    v7 = (v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
    v8 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
    v19[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
    v19[1] = v8;
    v20[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
    *(v20 + 13) = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 45);
    if (!*(&v19[0] + 1))
    {
      return 1;
    }

    v23 = v19[0];
    v9 = v7[2];
    v10 = *v7;
    v24 = v7[1];
    v25[0] = v9;
    *(v25 + 13) = *(v7 + 45);
    v17[0] = v10;
    v17[1] = v24;
    v18[0] = v9;
    *(v18 + 13) = *(v25 + 13);
    sub_1000072B8(v17, v21);
    v11 = sub_10001AB00();
    v13 = v12;
    sub_100007D6C(v19);
    v14 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 16);
    v21[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
    v21[1] = v14;
    v22[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 32);
    *(v22 + 13) = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 45);
    if (v11 == sub_10001AB00() && v13 == v15)
    {

      return 0;
    }

    v16 = sub_100041EEC();

    return (v16 & 1) == 0;
  }
}

void sub_100015AFC(id a1, void (*a2)(uint64_t), void *a3)
{
  v5 = v3;
  v7 = (v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v8 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
  v102[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v102[1] = v8;
  v103[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
  *(v103 + 13) = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 45);
  if (*(&v102[0] + 1))
  {
    v99[2] = v102[0];
    v9 = v7[2];
    v10 = *v7;
    v100 = v7[1];
    v101[0] = v9;
    *(v101 + 13) = *(v7 + 45);
    aBlock = v10;
    v93 = v100;
    v94[0] = v9;
    *(v94 + 13) = *(v101 + 13);
    sub_1000072B8(&aBlock, v98);
    v11 = sub_10001AB00();
    v13 = v12;
    sub_100007D6C(v102);
    v4 = v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration;
    v14 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 16);
    v98[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
    v98[1] = v14;
    v99[0] = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 32);
    *(v99 + 13) = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 45);
    if (v11 == sub_10001AB00() && v13 == v15)
    {

LABEL_6:

      v17 = sub_10004164C();
      v18 = sub_100041ACC();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v90[0]._countAndFlagsBits = swift_slowAlloc();
        *v19 = 136315394;
        *(v19 + 4) = sub_10000B1E4(*(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), &v90[0]._countAndFlagsBits);
        *(v19 + 12) = 2080;
        v20 = *(v4 + 16);
        v95 = *v4;
        v96 = v20;
        v97[0] = *(v4 + 32);
        *(v97 + 13) = *(v4 + 45);
        v21 = sub_10001AC30();
        v23 = sub_10000B1E4(v21, v22, &v90[0]._countAndFlagsBits);

        *(v19 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "#%s snapshot: exist for %s", v19, 0x16u);
        swift_arrayDestroy();
      }

      if (a2)
      {
        a2(1);
      }

      return;
    }

    v16 = sub_100041EEC();

    if (v16)
    {
      goto LABEL_6;
    }
  }

  [a1 bounds];
  x = v105.origin.x;
  y = v105.origin.y;
  width = v105.size.width;
  height = v105.size.height;
  v28 = CGRectGetWidth(v105);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v28 < 9.22337204e18)
  {
    v82 = a1;
    v4 = v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration;
    if (*(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 40) != v28)
    {
LABEL_19:

      v30 = sub_10004164C();
      v31 = sub_100041AAC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        aBlock._countAndFlagsBits = swift_slowAlloc();
        *v32 = 136315906;
        *(v32 + 4) = sub_10000B1E4(*(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), &aBlock._countAndFlagsBits);
        *(v32 + 12) = 2080;
        v33 = *(v4 + 16);
        v95 = *v4;
        v96 = v33;
        v97[0] = *(v4 + 32);
        *(v97 + 13) = *(v4 + 45);
        v34 = sub_10001AC30();
        v36 = sub_10000B1E4(v34, v35, &aBlock._countAndFlagsBits);

        *(v32 + 14) = v36;
        *(v32 + 22) = 2048;
        *(v32 + 24) = width;
        *(v32 + 32) = 2048;
        *(v32 + 34) = height;
        _os_log_impl(&_mh_execute_header, v30, v31, "#%s snapshot: size are not matching %s vs %fx%f", v32, 0x2Au);
        swift_arrayDestroy();
      }

LABEL_22:
      if (qword_10005CD70 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_54;
    }

    v106.origin.x = x;
    v106.origin.y = y;
    v106.size.width = width;
    v106.size.height = height;
    v29 = CGRectGetHeight(v106);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        if (*(v4 + 48) == v29)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  swift_once();
LABEL_23:
  v37 = [qword_1000611A0 useVFXSnapshot];
  v38 = [qword_1000611A0 useCASnapshot];
  if (v37)
  {

    v39 = sub_10004164C();
    v40 = sub_100041AAC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock._countAndFlagsBits = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_10000B1E4(*(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), &aBlock._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v39, v40, "#%s snapshot: from vfxview", v41, 0xCu);
      sub_100005500(v42);
    }

    v43 = [v82 snapshot];
    goto LABEL_27;
  }

  if ((v38 & 1) == 0)
  {
    v49 = v4;
    v50 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{width, height}];
    v51 = swift_allocObject();
    *(v51 + 2) = v82;
    v51[3] = x;
    v51[4] = y;
    v51[5] = width;
    v51[6] = height;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1000169E8;
    *(v52 + 24) = v51;
    v53 = v51;
    *&v94[0] = sub_100016A14;
    *(&v94[0] + 1) = v52;
    aBlock._countAndFlagsBits = _NSConcreteStackBlock;
    aBlock._object = 1107296256;
    *&v93 = sub_1000283DC;
    *(&v93 + 1) = &unk_100055F28;
    v54 = _Block_copy(&aBlock);
    v55 = v82;

    v43 = [v50 imageWithActions:v54];

    _Block_release(v54);
    LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

    if ((v50 & 1) == 0)
    {
      v4 = v49;
      v45 = v53;
      v44 = sub_1000169E8;
      goto LABEL_34;
    }

LABEL_58:
    __break(1u);
    return;
  }

  v104.width = width;
  v104.height = height;
  UIGraphicsBeginImageContext(v104);
  v46 = UIGraphicsGetCurrentContext();
  if (v46)
  {
    v47 = v46;
    v48 = [v82 layer];
    [v48 renderInContext:v47];

    v43 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (v43)
    {

LABEL_27:
      v44 = 0;
      v45 = 0;
LABEL_34:

      v56 = v43;
      v57 = sub_10004164C();
      v58 = sub_100041ACC();

      if (os_log_type_enabled(v57, v58))
      {
        v83 = v45;
        v59 = v44;
        v60 = v4;
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        aBlock._countAndFlagsBits = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_10000B1E4(*(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), &aBlock._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v57, v58, "#%s snapshot: generated", v61, 0xCu);
        sub_100005500(v62);

        v4 = v60;
        v44 = v59;
        v45 = v83;
      }

      if (qword_10005CD38 != -1)
      {
        swift_once();
      }

      v63 = *(v4 + 16);
      aBlock = *v4;
      v93 = v63;
      v94[0] = *(v4 + 32);
      *(v94 + 13) = *(v4 + 45);
      v64 = sub_10001E8F0(v56, &aBlock, a2, a3);

      if (v64)
      {
        v65 = *(v4 + 16);
        v90[0] = *v4;
        v90[1] = v65;
        v91[0] = *(v4 + 32);
        *(v91 + 13) = *(v4 + 45);
        sub_10001D094(v90, v88);

        v66 = v7[1];
        v86[0] = *v7;
        v86[1] = v66;
        v87[0] = v7[2];
        *(v87 + 13) = *(v7 + 45);
        v67 = v88[1];
        *v7 = v88[0];
        v7[1] = v67;
        v7[2] = v89[0];
        *(v7 + 45) = *(v89 + 13);
        sub_100007D6C(v86);
        sub_100016A34(v44, v45);
      }

      else
      {

        sub_100016A34(v44, v45);
      }

      return;
    }

    v75 = sub_10004164C();
    v76 = sub_100041AAC();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v90[0]._countAndFlagsBits = swift_slowAlloc();
      *v77 = 136315394;
      *(v77 + 4) = sub_10000B1E4(*(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), &v90[0]._countAndFlagsBits);
      *(v77 + 12) = 2080;
      v78 = *(v4 + 16);
      aBlock = *v4;
      v93 = v78;
      v94[0] = *(v4 + 32);
      *(v94 + 13) = *(v4 + 45);
      v79 = sub_10001AC30();
      v81 = sub_10000B1E4(v79, v80, &v90[0]._countAndFlagsBits);

      *(v77 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "#%s snapshot: cannot create image for %s", v77, 0x16u);
      swift_arrayDestroy();
    }

    if (a2)
    {
      a2(0);
    }
  }

  else
  {

    v68 = sub_10004164C();
    v69 = sub_100041AAC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v90[0]._countAndFlagsBits = swift_slowAlloc();
      *v70 = 136315394;
      *(v70 + 4) = sub_10000B1E4(*(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8), &v90[0]._countAndFlagsBits);
      *(v70 + 12) = 2080;
      v71 = *(v4 + 16);
      aBlock = *v4;
      v93 = v71;
      v94[0] = *(v4 + 32);
      *(v94 + 13) = *(v4 + 45);
      v72 = sub_10001AC30();
      v74 = sub_10000B1E4(v72, v73, &v90[0]._countAndFlagsBits);

      *(v70 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v68, v69, "#%s snapshot: cannot create context for %s", v70, 0x16u);
      swift_arrayDestroy();
    }

    if (a2)
    {
      a2(0);
    }
  }
}

uint64_t sub_1000167A8()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1000086A4(*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration), *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 8), *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16), *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SnapshotWriter(uint64_t a1)
{
  result = qword_10005E2E0;
  if (!qword_10005E2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000168F8(uint64_t a1)
{
  result = sub_10004166C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}