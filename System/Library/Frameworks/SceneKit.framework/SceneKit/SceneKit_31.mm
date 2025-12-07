void C3DCullingContextSetupMatricesToIdentity(uint64_t a1)
{
  for (i = 0; i != 384; i += 64)
  {
    C3DMatrix4x4MakeIdentity(a1 + i + 592);
    C3DMatrix4x4MakeIdentity(a1 + i + 976);
    C3DMatrix4x4MakeIdentity(a1 + i + 1360);
    C3DMatrix4x4MakeIdentity(a1 + i + 1744);
    C3DMatrix4x4MakeIdentity(a1 + i + 2704);
    C3DMatrix4x4MakeIdentity(a1 + i + 3088);
    C3DMatrix4x4MakeIdentity(a1 + i + 3472);
    C3DMatrix4x4MakeIdentity(a1 + i + 3856);
  }
}

__n128 C3DCullingContextSetupPointOfViewMatrices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 4096;
  v9 = *(a1 + 4697);
  CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a2, a2);
  if ((*(v8 + 600) & 1) == 0 && v9 == 2)
  {
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    memset(&v129, 0, sizeof(v129));
    ProjectionInfos = C3DNodeGetProjectionInfos(a3, &v129);
    if ((ProjectionInfos & 1) == 0)
    {
      v12 = scn_default_log(ProjectionInfos, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        C3DCullingContextSetupLOD_cold_1(v12, v11, v13, v14, v15, v16, v17, v18);
      }
    }

    if ((v129.columns[0].i8[0] & 2) != 0 || C3DEngineContextGetAutoAdjustZRange(a2, v11))
    {
      C3DAdjustZRangeOfProjectionInfos(&v129, a3, a1 + 4640, *(a1 + 4728));
    }

    v19 = &v129.columns[0].i64[1];
    if (*(v8 + 598))
    {
      v20 = (v8 + 648);
    }

    else
    {
      v20 = &v129.columns[0].i64[1];
    }

    if (!*(v8 + 598))
    {
      v19 = (v8 + 648);
    }

    *v19 = *v20;
    *(v8 + 599) = (v129.columns[0].i8[0] & 0x20) != 0;
    v21 = (a1 + 3472);
    Matrix = C3DProjectionInfosGetMatrix(&v129, (a1 + 4640), CoordinatesSystemOptions);
    v23 = *(Matrix + 2);
    v24 = *(Matrix + 3);
    v25 = *(Matrix + 1);
    *(a1 + 3472) = *Matrix;
    *(a1 + 3520) = v24;
    *(a1 + 3504) = v23;
    *(a1 + 3488) = v25;
    v26 = (a1 + 2704);
    C3DNodeComputeWorldMatrix(a3, a1 + 2704);
    if (a3 == a4)
    {
      v69 = *(a1 + 2720);
      *(a1 + 592) = *v26;
      *(a1 + 608) = v69;
      v70 = *(a1 + 2752);
      *(a1 + 624) = *(a1 + 2736);
      *(a1 + 640) = v70;
      v71 = *(a1 + 3488);
      *(a1 + 1360) = *v21;
      *(a1 + 1376) = v71;
      result = *(a1 + 3504);
      v72 = *(a1 + 3520);
      *(a1 + 1392) = result;
      *(a1 + 1408) = v72;
    }

    else
    {
      v27 = C3DNodeGetProjectionInfos(a4, &v129);
      if ((v27 & 1) == 0)
      {
        v29 = scn_default_log(v27, v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          C3DCullingContextSetupLOD_cold_1(v29, v28, v30, v31, v32, v33, v34, v35);
        }
      }

      if ((v129.columns[0].i8[0] & 2) != 0 || C3DEngineContextGetAutoAdjustZRange(a2, v28))
      {
        C3DAdjustZRangeOfProjectionInfos(&v129, a3, a1 + 4640, *(a1 + 4728));
      }

      *(v8 + 648) = *(v129.columns + 8);
      v36 = C3DProjectionInfosGetMatrix(&v129, (a1 + 4640), CoordinatesSystemOptions);
      v37 = *(v36 + 2);
      v38 = *(v36 + 3);
      v39 = *(v36 + 1);
      *(a1 + 1360) = *v36;
      *(a1 + 1408) = v38;
      *(a1 + 1392) = v37;
      *(a1 + 1376) = v39;
      result.n128_u64[0] = C3DNodeComputeWorldMatrix(a4, a1 + 592).n128_u64[0];
    }

    if (*(v8 + 532) >= 2u)
    {
      v73 = a1 + 2768;
      v74 = 1;
      do
      {
        v75 = *v21;
        v76 = *(a1 + 3488);
        v77 = *(a1 + 3520);
        *(v73 + 800) = *(a1 + 3504);
        *(v73 + 816) = v77;
        *(v73 + 768) = v75;
        *(v73 + 784) = v76;
        result = *v26;
        v78 = *(a1 + 2720);
        v79 = *(a1 + 2752);
        *(v73 + 32) = *(a1 + 2736);
        *(v73 + 48) = v79;
        *v73 = result;
        *(v73 + 16) = v78;
        v73 += 64;
        ++v74;
      }

      while (v74 < *(v8 + 532));
    }

    return result;
  }

  EyeCount = C3DEngineContextGetEyeCount(a2);
  *(v8 + 532) = EyeCount;
  v120 = a1;
  if (!v9)
  {
LABEL_40:
    if (EyeCount)
    {
      v80 = 0;
      v81 = a1 + 3472;
      do
      {
        EyeMatrix4x4 = C3DEngineContextGetEyeMatrix4x4(a2, 1, v80);
        v83 = a1 + 3088 + (v80 << 6);
        v84 = EyeMatrix4x4[3];
        v86 = *EyeMatrix4x4;
        v85 = EyeMatrix4x4[1];
        *(v83 + 32) = EyeMatrix4x4[2];
        *(v83 + 48) = v84;
        *v83 = v86;
        *(v83 + 16) = v85;
        v87 = C3DEngineContextGetEyeMatrix4x4(a2, 0, v80);
        v89 = *v87;
        v88 = v87[1];
        v90 = v87[2];
        v91 = v87[3];
        if ((CoordinatesSystemOptions & 8) != 0)
        {
          v92 = 0;
          v140 = *v87;
          v141 = v88;
          v142 = v90;
          v143 = v91;
          memset(&v129, 0, sizeof(v129));
          do
          {
            v129.columns[v92 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*(&v140 + v92 * 4))), xmmword_21C27F8C0, *&v140.f32[v92], 1), xmmword_21C27F900, *(&v140 + v92 * 4), 2), xmmword_21C27FDD0, *(&v140 + v92 * 4), 3);
            v92 += 4;
          }

          while (v92 != 16);
          v89 = v129.columns[0];
          v88 = v129.columns[1];
          v90 = v129.columns[2];
          v91 = v129.columns[3];
        }

        *(v81 + (v80 << 6)) = v89;
        v93 = (v81 + (v80 << 6));
        v93[1] = v88;
        v93[2] = v90;
        v93[3] = v91;
        v94 = a1 + 2704 + (v80 << 6);
        *v94 = __invert_f4(*v83);
        v95 = (a1 + 592 + (v80 << 6));
        v96 = *(v94 + 16);
        *v95 = *v94;
        v95[1] = v96;
        v97 = *(v94 + 48);
        v95[2] = *(v94 + 32);
        v95[3] = v97;
        v98 = (a1 + 1360 + (v80 << 6));
        v99 = *v93;
        v100 = v93[1];
        v101 = v93[3];
        v98[2] = v93[2];
        v98[3] = v101;
        *v98 = v99;
        v98[1] = v100;
        ++v80;
      }

      while (v80 < *(v8 + 532));
    }

    goto LABEL_50;
  }

  if (v9 != 1)
  {
    if (*(v8 + 600) != 1)
    {
      v102 = scn_default_log(EyeCount, v42);
      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        C3DCullingContextSetupPointOfViewMatrices_cold_3(v102, v103, v104, v105, v106, v107, v108, v109);
      }

      goto LABEL_50;
    }

    goto LABEL_40;
  }

  memset(&v128, 0, sizeof(v128));
  C3DNodeComputeWorldMatrix(a3, &v128);
  v144 = __invert_f4(v128);
  v125 = v144.columns[1];
  v126 = v144.columns[0];
  v123 = v144.columns[3];
  v124 = v144.columns[2];
  if (*(v8 + 532))
  {
    v43 = 0;
    v44 = a1 + 3472;
    v122 = a1 + 3088;
    v121 = a1 + 2704;
    v45 = a1 + 592;
    v46 = a1 + 1360;
    do
    {
      v47 = C3DEngineContextGetEyeMatrix4x4(a2, 0, v43);
      v49 = *v47;
      v48 = v47[1];
      v50 = v47[2];
      v51 = v47[3];
      if ((CoordinatesSystemOptions & 8) != 0)
      {
        v52 = 0;
        v140 = *v47;
        v141 = v48;
        v142 = v50;
        v143 = v51;
        memset(&v129, 0, sizeof(v129));
        do
        {
          v129.columns[v52 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*(&v140 + v52 * 4))), xmmword_21C27F8C0, *&v140.f32[v52], 1), xmmword_21C27F900, *(&v140 + v52 * 4), 2), xmmword_21C27FDD0, *(&v140 + v52 * 4), 3);
          v52 += 4;
        }

        while (v52 != 16);
        v49 = v129.columns[0];
        v48 = v129.columns[1];
        v50 = v129.columns[2];
        v51 = v129.columns[3];
      }

      *(v44 + (v43 << 6)) = v49;
      v53 = (v44 + (v43 << 6));
      v53[1] = v48;
      v53[2] = v50;
      v53[3] = v51;
      v54 = C3DEngineContextGetEyeMatrix4x4(a2, 1, v43);
      v55 = 0;
      v56 = *v54;
      v57 = v54[1];
      v58 = v54[2];
      v59 = v54[3];
      v140 = v126;
      v141 = v125;
      v142 = v124;
      v143 = v123;
      memset(&v129, 0, sizeof(v129));
      do
      {
        v129.columns[v55 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*(&v140 + v55 * 4))), v57, *&v140.f32[v55], 1), v58, *(&v140 + v55 * 4), 2), v59, *(&v140 + v55 * 4), 3);
        v55 += 4;
      }

      while (v55 != 16);
      v145 = v129;
      v60 = (v122 + (v43 << 6));
      *v60 = v129.columns[0];
      v60[1] = v145.columns[1];
      v60[2] = v145.columns[2];
      v60[3] = v145.columns[3];
      v61 = v121 + (v43 << 6);
      *v61 = __invert_f4(v145);
      v62 = (v45 + (v43 << 6));
      v63 = *(v61 + 16);
      *v62 = *v61;
      v62[1] = v63;
      v64 = *(v61 + 48);
      v62[2] = *(v61 + 32);
      v62[3] = v64;
      v65 = (v46 + (v43 << 6));
      v66 = *v53;
      v67 = v53[1];
      v68 = v53[3];
      v65[2] = v53[2];
      v65[3] = v68;
      *v65 = v66;
      v65[1] = v67;
      ++v43;
    }

    while (v43 < *(v8 + 532));
  }

LABEL_50:
  v120[290] = C3DEngineContextGetViewportAtIndex(a2, 0);
  v110.i32[0] = v120[219].n128_i32[2];
  v111 = v110.f32[0];
  v112 = v120[220].n128_f32[2];
  v113 = v112;
  if (v120[219].n128_f32[3] == 0.0)
  {
    v114 = (v113 + -1.0) / v111;
    v115 = (v113 + 1.0) / v111;
    *&v115 = v115;
    v116 = -(1.0 - v113) / v111;
    if (v112 < -1.0)
    {
      v117 = v116;
    }

    else
    {
      v117 = v114;
    }

    *&v116 = v112 / v110.f32[0];
    if (v112 < -1.0)
    {
      v116 = v115;
    }
  }

  else
  {
    v118 = v112 < -2.0;
    v110.f32[0] = v112 / v110.f32[0];
    v119 = v113 / (v111 + 1.0);
    v116 = v113 / (v111 + -1.0);
    *&v116 = v116;
    v117 = v119;
    if (!v118)
    {
      v116 = *&v110;
    }
  }

  v110.f32[0] = v117;
  result = vcvtq_f64_f32(vbsl_s8(vdup_lane_s32(vcgt_f32(*&v116, v110), 0), vrev64_s32(__PAIR64__(v110.u32[0], LODWORD(v116))), __PAIR64__(v110.u32[0], LODWORD(v116))));
  *(v8 + 648) = result;
  return result;
}

void C3DCullingContextSetupCullingMatricesAndPlanes(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a1;
  v7 = (a1 + 4096);
  CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a2, a2);
  v11 = CoordinatesSystemOptions;
  if (v7[535] == 1)
  {
    v270 = v7[536];
  }

  else
  {
    v270 = 0;
  }

  v271 = v6;
  if (v7[532])
  {
    v12 = 0;
    v13 = v6 + 2704;
    v14 = v6 + 3088;
    v272 = v6 + 3856;
    v274 = v6 + 3472;
    v15 = v6 + 2128;
    do
    {
      v16 = v14;
      v17 = v13;
      if (v7[535])
      {
        if (v7[536])
        {
          v16 = v14;
        }

        else
        {
          v16 = v13;
        }

        if (v7[536])
        {
          v17 = v13;
        }

        else
        {
          v17 = v14;
        }
      }

      *(v16 + (v12 << 6)) = __invert_f4(*(v17 + (v12 << 6)));
      v18 = v274 + (v12 << 6);
      if (a5)
      {
        if (C3DEngineContextIsJitteringEnabled(a2))
        {
          JitteringStep = C3DEngineContextGetJitteringStep(a2);
          v282 = 0u;
          v283 = 0u;
          v280 = 0u;
          v281 = 0u;
          C3DEngineContextComputeJitterMatrix(a2, JitteringStep, &v280);
          v20 = 0;
          v21 = v280;
          v22 = v281;
          v23 = v282;
          v24 = v283;
          v25 = *(v18 + 16);
          v26 = *(v18 + 32);
          v27 = *(v18 + 48);
          v284.columns[0] = *v18;
          v284.columns[1] = v25;
          v284.columns[2] = v26;
          v284.columns[3] = v27;
          v285 = 0u;
          v286 = 0u;
          v287 = 0u;
          v288 = 0u;
          do
          {
            *(&v285 + v20 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*&v284.columns[v20])), v22, *v284.columns[v20].f32, 1), v23, v284.columns[v20], 2), v24, v284.columns[v20], 3);
            ++v20;
          }

          while (v20 != 4);
          v28 = v286;
          v29 = v287;
          v30 = v288;
          *v18 = v285;
          *(v18 + 16) = v28;
          *(v18 + 32) = v29;
          *(v18 + 48) = v30;
        }

        CoordinatesSystemOptions = C3DEngineContextIsTemporalAntialiasingEnabled(a2);
        if (CoordinatesSystemOptions)
        {
          TAAJitter = C3DEngineContextGetTAAJitter(a2, 0);
          v32 = *(v18 + 48);
          *&v33 = vadd_f32(TAAJitter, *v32.i8);
          *(&v33 + 1) = vextq_s8(v32, v32, 8uLL).u64[0];
          *(v18 + 48) = v33;
        }
      }

      v34 = 0;
      v35 = *v18;
      v36 = *(v18 + 16);
      v37 = *(v18 + 32);
      v38 = *(v18 + 48);
      v39 = (v14 + (v12 << 6));
      v40 = v39[1];
      v41 = v39[2];
      v42 = v39[3];
      v284.columns[0] = *v39;
      v284.columns[1] = v40;
      v284.columns[2] = v41;
      v284.columns[3] = v42;
      v285 = 0u;
      v286 = 0u;
      v287 = 0u;
      v288 = 0u;
      do
      {
        *(&v285 + v34 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*&v284.columns[v34])), v36, *v284.columns[v34].f32, 1), v37, v284.columns[v34], 2), v38, v284.columns[v34], 3);
        ++v34;
      }

      while (v34 != 4);
      v43 = (v272 + (v12 << 6));
      v44 = v285;
      v45 = v286;
      v47 = v287;
      v46 = v288;
      *v43 = v285;
      v43[1] = v45;
      v43[2] = v47;
      v43[3] = v46;
      v48 = v15 + 96 * v12;
      v49.f32[0] = *&v44.i32[3] - *v44.i32;
      v50 = vextq_s8(v46, v46, 8uLL).u64[0];
      v51 = vextq_s8(v47, v47, 8uLL).u64[0];
      v52 = vzip2_s32(v51, v50);
      v53 = vzip1_s32(*v47.i8, *v46.i8);
      v49.f32[1] = *&v45.i32[3] - *v45.i32;
      *&v49.u32[2] = vsub_f32(v52, v53);
      v54 = vmulq_f32(v49, v49);
      *&v55 = v54.f32[2] + vaddv_f32(*v54.f32);
      *v54.f32 = vrsqrte_f32(v55);
      *v54.f32 = vmul_f32(*v54.f32, vrsqrts_f32(v55, vmul_f32(*v54.f32, *v54.f32)));
      v56 = vmulq_n_f32(v49, vmul_f32(*v54.f32, vrsqrts_f32(v55, vmul_f32(*v54.f32, *v54.f32))).f32[0]);
      v54.f32[0] = *&v44.i32[3] + *v44.i32;
      v54.f32[1] = *&v45.i32[3] + *v45.i32;
      *&v54.u32[2] = vadd_f32(v52, v53);
      v57 = vmulq_f32(v54, v54);
      *&v58 = v57.f32[2] + vaddv_f32(*v57.f32);
      *v57.f32 = vrsqrte_f32(v58);
      *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32)));
      *v48 = v56;
      *(v48 + 16) = vmulq_n_f32(v54, vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32))).f32[0]);
      v54.f32[0] = *&v44.i32[3] + *&v44.i32[1];
      *v59.f32 = vzip2_s32(*v47.i8, *v46.i8);
      v54.f32[1] = *&v45.i32[3] + *&v45.i32[1];
      *&v54.u32[2] = vadd_f32(v52, *v59.f32);
      v60 = vmulq_f32(v54, v54);
      *&v61 = v60.f32[2] + vaddv_f32(*v60.f32);
      *v60.f32 = vrsqrte_f32(v61);
      *v60.f32 = vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32)));
      v62 = vmulq_n_f32(v54, vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32))).f32[0]);
      v56.f32[0] = *&v44.i32[3] - *&v44.i32[1];
      v56.f32[1] = *&v45.i32[3] - *&v45.i32[1];
      *&v56.u32[2] = vsub_f32(v52, *v59.f32);
      v63 = vmulq_f32(v56, v56);
      v57.f32[0] = v63.f32[2] + vaddv_f32(*v63.f32);
      *v63.f32 = vrsqrte_f32(v57.u32[0]);
      *v63.f32 = vmul_f32(*v63.f32, vrsqrts_f32(v57.u32[0], vmul_f32(*v63.f32, *v63.f32)));
      v59.f32[0] = *&v44.i32[3] - *&v44.i32[2];
      v64 = vzip1_s32(v51, v50);
      v59.f32[1] = *&v45.i32[3] - *&v45.i32[2];
      *&v59.u32[2] = vsub_f32(v52, v64);
      v65 = vmulq_f32(v59, v59);
      *&v66 = v65.f32[2] + vaddv_f32(*v65.f32);
      *(v48 + 32) = v62;
      *(v48 + 48) = vmulq_n_f32(v56, vmul_f32(*v63.f32, vrsqrts_f32(v57.u32[0], vmul_f32(*v63.f32, *v63.f32))).f32[0]);
      *v65.f32 = vrsqrte_f32(v66);
      *v65.f32 = vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32)));
      *(v48 + 64) = vmulq_n_f32(v59, vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32))).f32[0]);
      v67 = (v48 + 64);
      if (v11)
      {
        v68.i64[0] = vzip2q_s32(v44, v45).u64[0];
        v68.i64[1] = __PAIR64__(v46.u32[2], v47.u32[2]);
      }

      else
      {
        v68.f32[0] = *&v44.i32[3] + *&v44.i32[2];
        v68.f32[1] = *&v45.i32[3] + *&v45.i32[2];
        *&v68.u32[2] = vadd_f32(v52, v64);
      }

      v69 = (v48 + 80);
      if ((v11 & 8) != 0)
      {
        *v69 = *v67;
      }

      else
      {
        v67 = v69;
      }

      v70 = vmulq_f32(v68, v68);
      *&v71 = v70.f32[2] + vaddv_f32(*v70.f32);
      *v70.f32 = vrsqrte_f32(v71);
      *v70.f32 = vmul_f32(*v70.f32, vrsqrts_f32(v71, vmul_f32(*v70.f32, *v70.f32)));
      *v67 = vmulq_n_f32(v68, vmul_f32(*v70.f32, vrsqrts_f32(v71, vmul_f32(*v70.f32, *v70.f32))).f32[0]);
      ++v12;
      v72 = v7[532];
    }

    while (v12 < v72);
    v73 = v7 + 600;
    v74 = v7[600];
    if (v74)
    {
      v6 = v271;
      if (v72 == 2)
      {
        goto LABEL_38;
      }

LABEL_33:
      v75 = scn_default_log(CoordinatesSystemOptions, v9);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
      {
        C3DCullingContextSetupCullingMatricesAndPlanes_cold_1(v75, v76, v77, v78, v79, v80, v81, v82);
      }

      goto LABEL_38;
    }

    v6 = v271;
  }

  else
  {
    v73 = v7 + 600;
    v74 = v7[600];
    if (v74)
    {
      goto LABEL_33;
    }

    LODWORD(v72) = 0;
  }

  if (v270)
  {
LABEL_38:
    *(v6 + 4624) = 1;
LABEL_39:
    v83 = 0;
    v84 = v6 + 976;
    v85 = v6 + 1744;
    v86 = v6 + 1360;
    v267 = v6 + 3472;
    v268 = v6 + 3088;
    v273 = v6 + 3856;
    v265 = (v6 + 3408);
    v266 = (v6 + 3024);
    v275 = v6 + 16;
    v277 = v6 + 592;
    v269 = v6 + 2128;
    __asm { FMOV            V0.4S, #1.0 }

    v264 = HIDWORD(_Q0);
    while (1)
    {
      v92 = (v85 + (v83 << 6));
      if (a3 == a4)
      {
        if (v270)
        {
          v102 = 0;
          v103 = (v277 + (v83 << 6));
          v104 = *v266;
          v105 = v266[1];
          v106 = v266[3];
          v103[2] = v266[2];
          v103[3] = v106;
          *v103 = v104;
          v103[1] = v105;
          v107 = (v84 + (v83 << 6));
          v108 = v265[3];
          v110 = *v265;
          v109 = v265[1];
          v107[2] = v265[2];
          v107[3] = v108;
          *v107 = v110;
          v107[1] = v109;
          v111 = *(v6 + 4752);
          v112 = -v111;
          v113 = v111;
          v114 = v111 > 0.0 ? v111 : v112 + 1.0;
          *&v115 = 2.0 / (v113 - v112);
          v116 = v115;
          v117.i32[0] = 0;
          v117.i64[1] = 0;
          v117.i32[1] = v115;
          v118 = v112 - v114;
          *&v119 = 1.0 / (v112 - v114);
          v120.i64[0] = 0;
          v120.i64[1] = v119;
          v121 = -(v112 + v113) / (v113 - v112);
          v123.f32[0] = v121;
          v123.f32[1] = v121;
          *&v122 = v112 / v118;
          v123.i64[1] = __PAIR64__(v264, v122);
          v124 = (v86 + (v83 << 6));
          *v124 = v116.u32[0];
          v124[1] = v117.u64[0];
          v124[2] = v120;
          v124[3] = v123;
          v125 = v107[1];
          v126 = v107[2];
          v127 = v107[3];
          v284.columns[0] = *v107;
          v284.columns[1] = v125;
          v284.columns[2] = v126;
          v284.columns[3] = v127;
          v285 = 0u;
          v286 = 0u;
          v287 = 0u;
          v288 = 0u;
          do
          {
            *(&v285 + v102 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v116, COERCE_FLOAT(*&v284.columns[v102])), v117, *v284.columns[v102].f32, 1), v120, v284.columns[v102], 2), v123, v284.columns[v102], 3);
            ++v102;
          }

          while (v102 != 4);
          v128 = v286;
          v129 = v287;
          v130 = v288;
          *v92 = v285;
          v92[1] = v128;
          v92[2] = v129;
          v92[3] = v130;
        }

        else
        {
          v131 = (v268 + (v83 << 6));
          v132 = v131[1];
          v133 = (v84 + (v83 << 6));
          *v133 = *v131;
          v133[1] = v132;
          v134 = v131[3];
          v133[2] = v131[2];
          v133[3] = v134;
          v135 = (v86 + (v83 << 6));
          v136 = (v267 + (v83 << 6));
          v137 = v136[1];
          *v135 = *v136;
          v135[1] = v137;
          v138 = v136[3];
          v135[2] = v136[2];
          v135[3] = v138;
          v139 = (v273 + (v83 << 6));
          v140 = *v139;
          v141 = v139[1];
          v142 = v139[3];
          v92[2] = v139[2];
          v92[3] = v142;
          *v92 = v140;
          v92[1] = v141;
        }
      }

      else
      {
        v289 = __invert_f4(*(v277 + (v83 << 6)));
        v93 = 0;
        *(v84 + (v83 << 6)) = v289;
        v94 = (v86 + (v83 << 6));
        v95 = *v94;
        v96 = v94[1];
        v97 = v94[2];
        v98 = v94[3];
        v284 = v289;
        v285 = 0u;
        v286 = 0u;
        v287 = 0u;
        v288 = 0u;
        do
        {
          *(&v285 + v93 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v95, COERCE_FLOAT(*&v284.columns[v93])), v96, *v284.columns[v93].f32, 1), v97, v284.columns[v93], 2), v98, v284.columns[v93], 3);
          ++v93;
        }

        while (v93 != 4);
        v99 = v286;
        v100 = v287;
        v101 = v288;
        *v92 = v285;
        v92[1] = v99;
        v92[2] = v100;
        v92[3] = v101;
        v6 = v271;
      }

      if (*v73 != 1)
      {
        break;
      }

      if (v83)
      {
        v143 = v83 - 1;
        v144 = (v273 + ((v83 - 1) << 6));
        v145 = (v273 + (v83 << 6));
        v147 = *v144;
        v146 = *(v144 + 1);
        v148 = *(v144 + 2);
        v149 = *(v144 + 3);
        v150 = *v145;
        v151 = v145[1];
        v153 = v145[2];
        v152 = v145[3];
        v154 = *&v149.i32[3];
        v155 = *(&v152 + 3) - *&v152;
        LODWORD(v156) = HIDWORD(*v144);
        v10.i32[0] = HIDWORD(*v145);
        v157 = *(&v151 + 3);
        v158 = *(&v153 + 3);
        if ((*&v149.i32[3] - *v149.i32) >= (*(&v152 + 3) - *&v152))
        {
          v155 = *&v149.i32[3] - *v149.i32;
          LODWORD(v154) = HIDWORD(v145[3]);
          v159 = *&v153;
          LODWORD(v160) = HIDWORD(v145[2]);
          v161 = *&v151;
          LODWORD(v162) = HIDWORD(v145[1]);
          LODWORD(v163) = *v145;
          LODWORD(v164) = HIDWORD(*v145);
          LODWORD(v153) = v144[2];
          LODWORD(v158) = HIDWORD(v144[2]);
          LODWORD(v151) = v146.i32[0];
          LODWORD(v157) = HIDWORD(v144[1]);
          LODWORD(v150) = *v144;
          v10.i32[0] = HIDWORD(*v144);
        }

        else
        {
          LODWORD(v152) = v149.i32[0];
          LODWORD(v159) = v144[2];
          LODWORD(v160) = HIDWORD(v144[2]);
          v161 = v146.f32[0];
          LODWORD(v162) = HIDWORD(v144[1]);
          LODWORD(v163) = *v144;
          LODWORD(v164) = HIDWORD(*v144);
        }

        v192 = v269 + 96 * v143;
        v193 = vextq_s8(v149, v149, 8uLL).u64[0];
        v194 = vextq_s8(v148, v148, 8uLL).u64[0];
        v195 = vzip2_s32(v194, v193);
        v10.f32[0] = v10.f32[0] - *&v150;
        v10.f32[1] = v157 - *&v151;
        v10.f32[2] = v158 - *&v153;
        v196 = vzip1_s32(v194, v193);
        v197 = vmulq_f32(v10, v10);
        v10.f32[3] = v155;
        v197.f32[0] = v197.f32[2] + vaddv_f32(*v197.f32);
        v199 = vrsqrte_f32(v197.u32[0]);
        v200 = vmul_f32(v199, vrsqrts_f32(v197.u32[0], vmul_f32(v199, v199)));
        v201 = vmulq_n_f32(v10, vmul_f32(v200, vrsqrts_f32(v197.u32[0], vmul_f32(v200, v200))).f32[0]);
        v197.f32[0] = v163 + v164;
        v202 = *&v152 + v154;
        v197.f32[1] = v161 + v162;
        v197.f32[2] = v159 + v160;
        v203 = vmulq_f32(v197, v197);
        v197.f32[3] = v202;
        v203.f32[0] = v203.f32[2] + vaddv_f32(*v203.f32);
        v204 = vrsqrte_f32(v203.u32[0]);
        *v205.f32 = vmul_f32(v204, vrsqrts_f32(v203.u32[0], vmul_f32(v204, v204)));
        v206.f32[0] = v156 + v147.f32[1];
        v207 = vzip2_s32(*v148.i8, *v149.i8);
        v206.f32[1] = v146.f32[3] + v146.f32[1];
        *&v206.u32[2] = vadd_f32(v195, v207);
        *v192 = v201;
        *(v192 + 16) = vmulq_n_f32(v197, vmul_f32(*v205.f32, vrsqrts_f32(v203.u32[0], vmul_f32(*v205.f32, *v205.f32))).f32[0]);
        v208 = vmulq_f32(v206, v206);
        v205.f32[0] = v208.f32[2] + vaddv_f32(*v208.f32);
        *v208.f32 = vrsqrte_f32(v205.u32[0]);
        *v208.f32 = vmul_f32(*v208.f32, vrsqrts_f32(v205.u32[0], vmul_f32(*v208.f32, *v208.f32)));
        v209 = vmulq_n_f32(v206, vmul_f32(*v208.f32, vrsqrts_f32(v205.u32[0], vmul_f32(*v208.f32, *v208.f32))).f32[0]);
        v205.f32[0] = v156 - v147.f32[1];
        v205.f32[1] = v146.f32[3] - v146.f32[1];
        *&v205.u32[2] = vsub_f32(v195, v207);
        v210 = vmulq_f32(v205, v205);
        v203.f32[0] = v210.f32[2] + vaddv_f32(*v210.f32);
        *v210.f32 = vrsqrte_f32(v203.u32[0]);
        *v210.f32 = vmul_f32(*v210.f32, vrsqrts_f32(v203.u32[0], vmul_f32(*v210.f32, *v210.f32)));
        v211 = vmulq_n_f32(v205, vmul_f32(*v210.f32, vrsqrts_f32(v203.u32[0], vmul_f32(*v210.f32, *v210.f32))).f32[0]);
        v205.f32[0] = v156 - v147.f32[2];
        v205.f32[1] = v146.f32[3] - v146.f32[2];
        *&v205.u32[2] = vsub_f32(v195, v196);
        *(v192 + 32) = v209;
        *(v192 + 48) = v211;
        v212 = vmulq_f32(v205, v205);
        v209.f32[0] = v212.f32[2] + vaddv_f32(*v212.f32);
        *v212.f32 = vrsqrte_f32(v209.u32[0]);
        *v212.f32 = vmul_f32(*v212.f32, vrsqrts_f32(v209.u32[0], vmul_f32(*v212.f32, *v212.f32)));
        v213 = (v192 + 80);
        *(v192 + 64) = vmulq_n_f32(v205, vmul_f32(*v212.f32, vrsqrts_f32(v209.u32[0], vmul_f32(*v212.f32, *v212.f32))).f32[0]);
        v214 = (v192 + 64);
        v215.f32[0] = v156 + v147.f32[2];
        v216 = v146.f32[3] + v146.f32[2];
        if (v11)
        {
          v215.f32[0] = v147.f32[2];
          v216 = v146.f32[2];
        }

        if ((v11 & 8) != 0)
        {
          v146 = *v214;
          *v213 = *v214;
        }

        else
        {
          v214 = v213;
        }

        v146.i32[0] = 0;
        v147.i32[0] = v11 & 1;
        v215.f32[1] = v216;
        *&v215.u32[2] = vbsl_s8(vdup_lane_s32(vceq_s32(*v147.f32, *v146.f32), 0), vadd_f32(v195, v196), v196);
        v217 = vmulq_f32(v215, v215);
        *&v218 = v217.f32[2] + vaddv_f32(*v217.f32);
        *v217.f32 = vrsqrte_f32(v218);
        *v217.f32 = vmul_f32(*v217.f32, vrsqrts_f32(v218, vmul_f32(*v217.f32, *v217.f32)));
        *v214 = vmulq_n_f32(v215, vmul_f32(*v217.f32, vrsqrts_f32(v218, vmul_f32(*v217.f32, *v217.f32))).f32[0]);
        v219 = (v85 + (v143 << 6));
        v221 = *v219;
        v220 = *(v219 + 1);
        v222 = *(v219 + 2);
        v223 = *(v219 + 3);
        v224 = *v92;
        v225 = v92[1];
        v227 = v92[2];
        v226 = v92[3];
        v228 = *&v223.i32[3];
        v229 = *&v226.i32[3] - *v226.i32;
        LODWORD(v230) = HIDWORD(*v219);
        v10.i32[0] = HIDWORD(*v92);
        v231 = *&v225.i32[3];
        v232 = *&v227.i32[3];
        if ((*&v223.i32[3] - *v223.i32) >= (*&v226.i32[3] - *v226.i32))
        {
          v229 = *&v223.i32[3] - *v223.i32;
          LODWORD(v228) = HIDWORD(*&v92[3]);
          v233 = *v227.i32;
          LODWORD(v234) = HIDWORD(*&v92[2]);
          v235 = *v225.i32;
          LODWORD(v236) = HIDWORD(*&v92[1]);
          LODWORD(v237) = *v92;
          LODWORD(v238) = HIDWORD(*v92);
          v227.i32[0] = v219[2];
          LODWORD(v232) = HIDWORD(v219[2]);
          v225.i32[0] = v220.i32[0];
          LODWORD(v231) = HIDWORD(v219[1]);
          v224.i32[0] = *v219;
          v10.i32[0] = HIDWORD(*v219);
        }

        else
        {
          v226.i32[0] = v223.i32[0];
          LODWORD(v233) = v219[2];
          LODWORD(v234) = HIDWORD(v219[2]);
          v235 = v220.f32[0];
          LODWORD(v236) = HIDWORD(v219[1]);
          LODWORD(v237) = *v219;
          LODWORD(v238) = HIDWORD(*v219);
        }

        v239 = v275 + 96 * v143;
        v240 = vextq_s8(v223, v223, 8uLL).u64[0];
        v241 = vextq_s8(v222, v222, 8uLL).u64[0];
        v242 = vzip2_s32(v241, v240);
        v10.f32[0] = v10.f32[0] - *v224.i32;
        v10.f32[1] = v231 - *v225.i32;
        v10.f32[2] = v232 - *v227.i32;
        v243 = vzip1_s32(v241, v240);
        v244 = vmulq_f32(v10, v10);
        v10.f32[3] = v229;
        v244.f32[0] = v244.f32[2] + vaddv_f32(*v244.f32);
        v245 = vrsqrte_f32(v244.u32[0]);
        v246 = vmul_f32(v245, vrsqrts_f32(v244.u32[0], vmul_f32(v245, v245)));
        v247 = vmulq_n_f32(v10, vmul_f32(v246, vrsqrts_f32(v244.u32[0], vmul_f32(v246, v246))).f32[0]);
        v244.f32[0] = v237 + v238;
        v248 = *v226.i32 + v228;
        v244.f32[1] = v235 + v236;
        v244.f32[2] = v233 + v234;
        v249 = vmulq_f32(v244, v244);
        v244.f32[3] = v248;
        v249.f32[0] = v249.f32[2] + vaddv_f32(*v249.f32);
        v250 = vrsqrte_f32(v249.u32[0]);
        *v251.f32 = vmul_f32(v250, vrsqrts_f32(v249.u32[0], vmul_f32(v250, v250)));
        v252.f32[0] = v230 + v221.f32[1];
        v253 = vzip2_s32(*v222.i8, *v223.i8);
        v252.f32[1] = v220.f32[3] + v220.f32[1];
        *&v252.u32[2] = vadd_f32(v242, v253);
        *v239 = v247;
        *(v239 + 16) = vmulq_n_f32(v244, vmul_f32(*v251.f32, vrsqrts_f32(v249.u32[0], vmul_f32(*v251.f32, *v251.f32))).f32[0]);
        v254 = vmulq_f32(v252, v252);
        v251.f32[0] = v254.f32[2] + vaddv_f32(*v254.f32);
        *v254.f32 = vrsqrte_f32(v251.u32[0]);
        *v254.f32 = vmul_f32(*v254.f32, vrsqrts_f32(v251.u32[0], vmul_f32(*v254.f32, *v254.f32)));
        v255 = vmulq_n_f32(v252, vmul_f32(*v254.f32, vrsqrts_f32(v251.u32[0], vmul_f32(*v254.f32, *v254.f32))).f32[0]);
        v251.f32[0] = v230 - v221.f32[1];
        v251.f32[1] = v220.f32[3] - v220.f32[1];
        *&v251.u32[2] = vsub_f32(v242, v253);
        v256 = vmulq_f32(v251, v251);
        v249.f32[0] = v256.f32[2] + vaddv_f32(*v256.f32);
        *v256.f32 = vrsqrte_f32(v249.u32[0]);
        *v256.f32 = vmul_f32(*v256.f32, vrsqrts_f32(v249.u32[0], vmul_f32(*v256.f32, *v256.f32)));
        v257 = vmulq_n_f32(v251, vmul_f32(*v256.f32, vrsqrts_f32(v249.u32[0], vmul_f32(*v256.f32, *v256.f32))).f32[0]);
        v251.f32[0] = v230 - v221.f32[2];
        v251.f32[1] = v220.f32[3] - v220.f32[2];
        *&v251.u32[2] = vsub_f32(v242, v243);
        *(v239 + 32) = v255;
        *(v239 + 48) = v257;
        v258 = vmulq_f32(v251, v251);
        v255.f32[0] = v258.f32[2] + vaddv_f32(*v258.f32);
        *v258.f32 = vrsqrte_f32(v255.u32[0]);
        *v258.f32 = vmul_f32(*v258.f32, vrsqrts_f32(v255.u32[0], vmul_f32(*v258.f32, *v258.f32)));
        v259 = (v239 + 80);
        *(v239 + 64) = vmulq_n_f32(v251, vmul_f32(*v258.f32, vrsqrts_f32(v255.u32[0], vmul_f32(*v258.f32, *v258.f32))).f32[0]);
        v189 = (v239 + 64);
        v260 = v230 + v221.f32[2];
        if (v11)
        {
          v190.f32[0] = v221.f32[2];
        }

        else
        {
          v190.f32[0] = v260;
        }

        if (v11)
        {
          v261 = v220.f32[2];
        }

        else
        {
          v261 = v220.f32[3] + v220.f32[2];
        }

        if ((v11 & 8) != 0)
        {
          v220 = *v189;
          *v259 = *v189;
        }

        else
        {
          v189 = v259;
        }

        v220.i32[0] = 0;
        v221.i32[0] = v11 & 1;
        v190.f32[1] = v261;
        *&v190.u32[2] = vbsl_s8(vdup_lane_s32(vceq_s32(*v221.f32, *v220.f32), 0), vadd_f32(v242, v243), v243);
        goto LABEL_81;
      }

LABEL_82:
      if (++v83 >= (*(v6 + 4624) + *v73))
      {
        return;
      }
    }

    v165 = v275 + 96 * v83;
    v166 = *v92;
    v167 = v92[1];
    v169 = v92[2];
    v168 = v92[3];
    LODWORD(v170) = HIDWORD(*v92);
    v171.f32[0] = v170 - COERCE_FLOAT(*v92);
    v172 = vextq_s8(v168, v168, 8uLL).u64[0];
    v173 = vextq_s8(v169, v169, 8uLL).u64[0];
    v174 = vzip2_s32(v173, v172);
    v175 = vzip1_s32(*v169.i8, *v168.i8);
    v171.f32[1] = *&v167.i32[3] - *v167.i32;
    *&v171.u32[2] = vsub_f32(v174, v175);
    v176 = vmulq_f32(v171, v171);
    *&v177 = v176.f32[2] + vaddv_f32(*v176.f32);
    *v176.f32 = vrsqrte_f32(v177);
    *v176.f32 = vmul_f32(*v176.f32, vrsqrts_f32(v177, vmul_f32(*v176.f32, *v176.f32)));
    v178 = vmulq_n_f32(v171, vmul_f32(*v176.f32, vrsqrts_f32(v177, vmul_f32(*v176.f32, *v176.f32))).f32[0]);
    v176.f32[0] = v170 + COERCE_FLOAT(*v92);
    v176.f32[1] = *&v167.i32[3] + *v167.i32;
    *&v176.u32[2] = vadd_f32(v174, v175);
    v179 = vmulq_f32(v176, v176);
    *&v180 = v179.f32[2] + vaddv_f32(*v179.f32);
    *v179.f32 = vrsqrte_f32(v180);
    *v179.f32 = vmul_f32(*v179.f32, vrsqrts_f32(v180, vmul_f32(*v179.f32, *v179.f32)));
    *v165 = v178;
    *(v165 + 16) = vmulq_n_f32(v176, vmul_f32(*v179.f32, vrsqrts_f32(v180, vmul_f32(*v179.f32, *v179.f32))).f32[0]);
    v176.f32[0] = v170 + *&v166.i32[1];
    *v181.f32 = vzip2_s32(*v169.i8, *v168.i8);
    v176.f32[1] = *&v167.i32[3] + *&v167.i32[1];
    *&v176.u32[2] = vadd_f32(v174, *v181.f32);
    v182 = vmulq_f32(v176, v176);
    *&v183 = v182.f32[2] + vaddv_f32(*v182.f32);
    *v182.f32 = vrsqrte_f32(v183);
    *v182.f32 = vmul_f32(*v182.f32, vrsqrts_f32(v183, vmul_f32(*v182.f32, *v182.f32)));
    v184 = vmulq_n_f32(v176, vmul_f32(*v182.f32, vrsqrts_f32(v183, vmul_f32(*v182.f32, *v182.f32))).f32[0]);
    v178.f32[0] = v170 - *&v166.i32[1];
    v178.f32[1] = *&v167.i32[3] - *&v167.i32[1];
    *&v178.u32[2] = vsub_f32(v174, *v181.f32);
    v185 = vmulq_f32(v178, v178);
    v179.f32[0] = v185.f32[2] + vaddv_f32(*v185.f32);
    *v185.f32 = vrsqrte_f32(v179.u32[0]);
    *v185.f32 = vmul_f32(*v185.f32, vrsqrts_f32(v179.u32[0], vmul_f32(*v185.f32, *v185.f32)));
    v181.f32[0] = v170 - *&v166.i32[2];
    v186 = vzip1_s32(v173, v172);
    v181.f32[1] = *&v167.i32[3] - *&v167.i32[2];
    *&v181.u32[2] = vsub_f32(v174, v186);
    v187 = vmulq_f32(v181, v181);
    *&v188 = v187.f32[2] + vaddv_f32(*v187.f32);
    *(v165 + 32) = v184;
    *(v165 + 48) = vmulq_n_f32(v178, vmul_f32(*v185.f32, vrsqrts_f32(v179.u32[0], vmul_f32(*v185.f32, *v185.f32))).f32[0]);
    *v187.f32 = vrsqrte_f32(v188);
    *v187.f32 = vmul_f32(*v187.f32, vrsqrts_f32(v188, vmul_f32(*v187.f32, *v187.f32)));
    *(v165 + 64) = vmulq_n_f32(v181, vmul_f32(*v187.f32, vrsqrts_f32(v188, vmul_f32(*v187.f32, *v187.f32))).f32[0]);
    v189 = (v165 + 64);
    if (v11)
    {
      v190.i64[0] = vzip2q_s32(v166, v167).u64[0];
      v190.i64[1] = __PAIR64__(v168.u32[2], v169.u32[2]);
    }

    else
    {
      v190.f32[0] = v170 + *&v166.i32[2];
      v190.f32[1] = *&v167.i32[3] + *&v167.i32[2];
      *&v190.u32[2] = vadd_f32(v174, v186);
    }

    v191 = (v165 + 80);
    if ((v11 & 8) != 0)
    {
      *v191 = *v189;
    }

    else
    {
      v189 = v191;
    }

LABEL_81:
    v262 = vmulq_f32(v190, v190);
    *&v263 = v262.f32[2] + vaddv_f32(*v262.f32);
    *v262.f32 = vrsqrte_f32(v263);
    *v262.f32 = vmul_f32(*v262.f32, vrsqrts_f32(v263, vmul_f32(*v262.f32, *v262.f32)));
    *v189 = vmulq_n_f32(v190, vmul_f32(*v262.f32, vrsqrts_f32(v263, vmul_f32(*v262.f32, *v262.f32))).f32[0]);
    goto LABEL_82;
  }

  *(v6 + 4624) = v72;
  if (v72 + v74)
  {
    goto LABEL_39;
  }
}

void C3DCullingContextSetupMirrorMatrices(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 4096;
  memset(v6, 0, sizeof(v6));
  C3DComputeMirrorMatrix(*(a1 + 4728), a2, v6);
  if (*(v3 + 532))
  {
    v4 = 0;
    v5 = a1 + 2704;
    do
    {
      C3DMatrix4x4Mult(v5, v6, v5);
      C3DMatrix4x4Mult(v5 - 2112, v6, (v5 - 2112));
      if (*(v3 + 600) == 1)
      {
        *(v5 + 384) = __invert_f4(*v5);
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < *(v3 + 532));
  }
}

void C3DCullingContextSetupMirrorFrustumPlanes(uint64_t a1, uint64_t a2)
{
  v8.n128_u32[2] = 0;
  v8.n128_u64[0] = 0;
  C3DSceneGetUpAxis(*(a1 + 4728), &v8);
  v7 = 0uLL;
  C3DComputeMirrorPlane(a2, &v8, &v7);
  v4 = *(a1 + 4628);
  if (*(a1 + 4628))
  {
    v5 = v7;
    v6 = (a1 + 96);
    do
    {
      *v6 = v5;
      v6 += 6;
      --v4;
    }

    while (v4);
  }
}

double C3DCullingContextInitialize(__n128 *a1, __n128 *a2, uint64_t *a3, unsigned int a4)
{
  *&v74[5] = *MEMORY[0x277D85DE8];
  v8 = a1 + 256;
  Scene = C3DEngineContextGetScene(a2, a2);
  EnginePipeline = C3DSceneGetEnginePipeline(Scene, v9);
  FXContext = C3DEngineContextGetFXContext(a2, v11);
  v71 = a3[638];
  v13 = *a3;
  a1[296].n128_u64[0] = a2;
  v8[37].n128_u8[4] = C3DEngineContextIsWarmUp(a2);
  a1->n128_u64[0] = EnginePipeline;
  v72 = a2;
  ValuesPtr = C3DEngineContextGetScene(a2, v14);
  a1[295].n128_u64[1] = ValuesPtr;
  v17 = *(a3 + 24);
  v8[33].n128_u8[4] = v17;
  v8[33].n128_u8[7] = *(a3 + 27);
  v8[37].n128_u8[6] = 0;
  if (v17)
  {
    v18 = 0;
    v19 = a3 + 4;
    v20 = &a1[307].n128_u32[3];
    do
    {
      if (v19[v18])
      {
        v21 = scn_default_log(ValuesPtr, v16);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          C3DCullingContextInitialize_cold_1(buf, v74, v21);
        }
      }

      CullingData = C3DFXContextCreateCullingData(FXContext, a4);
      v19[v18] = CullingData;
      ValuesPtr = C3DArrayGetValuesPtr(CullingData, v23);
      *(v20 - 3) = ValuesPtr;
      *(v20 - 1) = 0;
      *v20 = a4;
      ++v18;
      v20 += 4;
    }

    while (v18 < v8[33].n128_u8[4]);
  }

  v8[33].n128_u8[8] = *(a3 + 26);
  a1[291].n128_u64[0] = v13;
  if (v13)
  {
    v24 = C3DFXPassRequiresLighting(v13, v16);
  }

  else
  {
    v24 = 0;
  }

  v8[37].n128_u8[5] = v24;
  v8[57].n128_u8[0] = 0;
  v8[33].n128_u8[6] = v13[30].n128_u8[0];
  v8[37].n128_u16[4] = 512;
  RootNode = C3DFXPassGetRootNode(v13, v16);
  a1[292].n128_u64[0] = RootNode;
  if (!RootNode)
  {
    v27 = Scene;
    if (!Scene)
    {
      v28 = scn_default_log(0, v26);
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
      v27 = 0;
      if (v29)
      {
        C3DSceneCreateHitTestResultsWithSegment_cold_1(v28, v26, v30, v31, v32, v33, v34, v35);
        v27 = 0;
      }
    }

    a1[292].n128_u64[0] = C3DSceneGetRootNode(v27, v26);
  }

  a1[292].n128_u64[1] = v71;
  if (C3DFXPassGetHasCustomViewport(v13, v26))
  {
    Viewport = C3DFXPassGetViewport(v13, v36);
  }

  else
  {
    Viewport = C3DEngineContextGetViewport(v72);
  }

  a1[290] = Viewport;
  PointOfView = C3DFXPassGetPointOfView(v13, v37);
  v41 = PointOfView;
  if (!PointOfView)
  {
    PointOfView = C3DEngineContextGetPointOfViewForCulling(v72, v39);
    v41 = C3DEngineContextGetPointOfView(v72, v42);
  }

  v8[37].n128_u8[1] = C3DFXPassGetDrawOnlyShadowCaster(v13, v39);
  v43 = a1[292].n128_i64[1];
  ForceJitteringOff = C3DFXPassGetForceJitteringOff(*a3, v44);
  v47 = ForceJitteringOff;
  if (!a1[295].n128_u64[1])
  {
    v48 = scn_default_log(ForceJitteringOff, v46);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      C3DCullingContextInitialize_cold_3(v48, v46, v49, v50, v51, v52, v53, v54);
      if (v41)
      {
        goto LABEL_23;
      }

LABEL_34:
      C3DCullingContextSetupMatricesToIdentity(a1);
      goto LABEL_35;
    }
  }

  if (!v41)
  {
    goto LABEL_34;
  }

LABEL_23:
  if (v8[33].n128_u8[8] == 1)
  {
    __setupCubeMapRendering(a1, v72, v41);
  }

  else
  {
    Light = C3DNodeGetLight(v41, v46);
    if (Light && C3DLightGetCastsShadow(Light, v56) && v8[37].n128_u8[1] == 1)
    {
      LightingSystem = C3DSceneGetLightingSystem(a1[295].n128_i64[1], v57);
      CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(v72, v59);
      C3DLightingSystemComputeShadowMatrices(LightingSystem, v41, &a1[169], &a1[217], 0, 0, 0, CoordinatesSystemOptions);
    }

    else
    {
      C3DCullingContextSetupPointOfViewMatrices(a1, v72, v41, PointOfView);
    }
  }

  if (v43)
  {
    C3DCullingContextSetupMirrorMatrices(a1, v43);
    C3DCullingContextSetupCullingMatricesAndPlanes(a1, v72, v41, PointOfView, v47 ^ 1);
    C3DCullingContextSetupMirrorFrustumPlanes(a1, v43);
  }

  else
  {
    C3DCullingContextSetupCullingMatricesAndPlanes(a1, v72, v41, PointOfView, v47 ^ 1);
  }

LABEL_35:
  a1[295].n128_u64[0] = C3DEngineContextGetAuthoringEnvironment(v72, 0);
  v8[37].n128_u8[0] = C3DFXPassGetIgnoreInifiniteFloor(v13, v61);
  a1[294].n128_u64[0] = C3DFXPassGetIncludeCategoryMask(v13, v62);
  if (v71)
  {
    Floor = C3DNodeGetFloor(v71, v63);
    if (Floor)
    {
      a1[294].n128_u64[0] &= C3DFloorGetReflectionCategoryBitMask(Floor);
    }
  }

  a1[294].n128_u64[0] &= C3DGetPovCategoryMask(PointOfView, v63);
  a1[294].n128_u64[1] = C3DFXPassGetExcludeCategoryMask(v13, v65);
  v8[37].n128_u16[1] = 0;
  a1[313].n128_u64[1] = __shouldPushRenderableElementsToVisible;
  if (v41)
  {
    v67 = C3DNodeGetLight(v41, v66);
    if (v67)
    {
      if (C3DLightGetType(v67, v68) == 4)
      {
        v8[37].n128_u16[1] = 256;
      }
    }
  }

  return C3DCullingContextSetupLOD(a1, v72);
}

void C3DCullingContextCull(uint64_t a1)
{
  C3DEngineContextGetFrameIndex(*(a1 + 4736));
  kdebug_trace();
  Stats = C3DEngineContextGetStats(*(a1 + 4736), v2);
  v4 = CACurrentMediaTime();
  v5 = *(a1 + 4672);
  RootNode = C3DSceneGetRootNode(*(a1 + 4728), v6);
  if (*(a1 + 4624))
  {
    v9 = RootNode;
    v10 = 0;
    do
    {
      if (*(a1 + 4692) == 1)
      {
        if (v5 == v9)
        {
          v11 = 0;
          do
          {
            if ((*(a1 + 4630) >> v11))
            {
              LayerRootNode = C3DSceneGetLayerRootNode(*(a1 + 4728), v11);
              if (LayerRootNode)
              {
                __CullInside(a1, v10, LayerRootNode);
              }
            }

            v11 = (v11 + 1);
          }

          while (v11 != 4);
        }

        else
        {
          __CullInside(a1, 0, *(a1 + 4672));
        }
      }

      else if (v5 == v9)
      {
        CullingSystem = C3DSceneGetCullingSystem(*(a1 + 4728), v8);
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 0x40000000;
        v15[2] = __C3DCullingContextCull_block_invoke;
        v15[3] = &__block_descriptor_tmp_6_5;
        v15[4] = a1;
        v15[5] = v10;
        C3DCullingSystemQueryMake(v15, &v16);
        v16 = *(a1 + 4704);
        if (*(a1 + 4690))
        {
          v14 = 3;
        }

        else
        {
          v14 = 1;
        }

        DWORD1(v17) = v14;
        if (*(a1 + 4691) == 1)
        {
          DWORD1(v17) = v14 | 4;
        }

        if (*(a1 + 4689) == 1)
        {
          LODWORD(v17) = 8;
        }

        DWORD2(v17) = *(a1 + 4630);
        C3DCullingSystemCull(CullingSystem);
      }

      else
      {
        __Cull(a1, 0, *(a1 + 4672));
      }

      ++v10;
    }

    while (v10 < *(a1 + 4624));
  }

  *(Stats + 104) = *(Stats + 104) + CACurrentMediaTime() - v4;
  C3DEngineContextGetFrameIndex(*(a1 + 4736));
  kdebug_trace();
}

void __C3DCullingContextCull_block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if ((*(*(a1 + 32) + 5016))())
      {
        C3DCullingContextForcePushGeometryRenderableElementsToVisible(*(a1 + 32), *(a1 + 40), *a2);
      }

      ++a2;
      --v3;
    }

    while (v3);
  }
}

void C3D::DOFBlurCoCXPass::DOFBlurCoCXPass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC84C0;
  v5[14] = a4;
}

double C3D::DOFBlurCoCXPass::setup(C3D::DOFBlurCoCXPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = (*(*this + 88))(this);
  v3 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  v3[8] = fmax(*(v2 + 8) * 0.5 / **(this + 14) * 0.25, 1.0);
  v3[9] = fmax(*(v2 + 12) * 0.5 / **(this + 14) * 0.25, 1.0);
  v3[14] = 115;
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v4[8] = fmax(*(v2 + 8) * 0.5 / **(this + 14) * 0.25, 1.0);
  result = fmax(*(v2 + 12) * 0.5 / **(this + 14) * 0.25, 1.0);
  v4[9] = result;
  v4[14] = 115;
  return result;
}

void *C3D::DOFBlurCoCXPass::compile(C3D::DOFBlurCoCXPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v4);
  *(this + 15) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::DOFBlurCoCXPass::execute(C3D::Pass *this, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = *(this + 14);
  v6 = *(v4 + 40);
  v5 = *(v4 + 48);
  if ((*a2)->_buffers[0] == v6)
  {
    if (v3->_offsets[0] == v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3->_buffers[0] = v6;
  }

  v3->_offsets[0] = v5;
  v3->_buffersToBind[0] |= 1uLL;
LABEL_5:
  v7 = C3D::Pass::inputTextureAtIndex(this, 0);
  if (v3->_textures[0] != v7)
  {
    v3->_textures[0] = v7;
    v3->_texturesToBind[0] |= 1uLL;
  }

  v8 = C3D::Pass::outputTextureAtIndex(this, 0);
  if (v3->_textures[1] != v8)
  {
    v3->_textures[1] = v8;
    v3->_texturesToBind[0] |= 2uLL;
  }

  v9 = C3D::Pass::outputTextureAtIndex(this, 0);
  v11 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(this + 15) + 16, v10);
  v12 = [(SCNMTLOpenSubdivComputeEvaluator *)v11 computeEvaluator];

  return SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v9, v12);
}

void C3D::DOFBlurCoCXPassResource::~DOFBlurCoCXPassResource(C3D::DOFBlurCoCXPassResource *this)
{
  *this = &unk_282DC8530;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC8530;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t C3DFXMetalProgramGetTypeID()
{
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetTypeID_cold_1();
  }

  return C3DFXMetalProgramGetTypeID_typeID;
}

CFHashCode C3DFXMetalProgramUpdateHashWithCommonProfileHashCode(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    v4 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramUpdateHashWithCommonProfileHashCode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = CFHash(cf);
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * result) ^ ((0x9DDFEA08EB382D69 * result) >> 47));
  *(a1 + 168) = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
  return result;
}

uint64_t C3DFXMetalProgramGetHash(void *a1)
{
  v2 = CFGetTypeID(a1);
  v4 = v2;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetTypeID_cold_1();
  }

  if (v4 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v5 = scn_default_log(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  return a1[21];
}

uint64_t C3DFXMetalProgramCreateFromLibrary(const void *a1, const void *a2, int a3, const void *a4, const void *a5)
{
  v10 = C3DFXMetalProgramCreate();
  v11 = *(v10 + 80);
  if (v11 != a1)
  {
    if (v11)
    {
      CFRelease(v11);
      *(v10 + 80) = 0;
    }

    if (a1)
    {
      v12 = CFRetain(a1);
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 80) = v12;
  }

  v13 = *(v10 + 88);
  if (v13 != a2)
  {
    if (v13)
    {
      CFRelease(v13);
      *(v10 + 88) = 0;
    }

    if (a2)
    {
      v14 = CFRetain(a2);
    }

    else
    {
      v14 = 0;
    }

    *(v10 + 88) = v14;
  }

  v15 = *(v10 + 96);
  if (v15)
  {
    CFRelease(v15);
    *(v10 + 96) = 0;
  }

  v16 = *(v10 + 104);
  if (v16)
  {
    CFRelease(v16);
    *(v10 + 104) = 0;
  }

  v17 = *(v10 + 112);
  if (v17)
  {
    CFRelease(v17);
    *(v10 + 112) = 0;
  }

  v18 = *(v10 + 120);
  if (v18)
  {
    CFRelease(v18);
    *(v10 + 120) = 0;
  }

  *(v10 + 144) = a3;
  *(v10 + 152) = _Block_copy(a4);
  *(v10 + 160) = _Block_copy(a5);
  _C3DFXMetalProgramUpdateHashWithLibrary(v10);
  return v10;
}

uint64_t C3DFXMetalProgramCreateFromSource(const void *a1, const void *a2, int a3, const void *a4, const void *a5, const void *a6, const void *a7, int a8, char a9)
{
  v17 = C3DFXMetalProgramCreate();
  v18 = *(v17 + 80);
  if (v18 != a1)
  {
    if (v18)
    {
      CFRelease(v18);
      *(v17 + 80) = 0;
    }

    if (a1)
    {
      v19 = CFRetain(a1);
    }

    else
    {
      v19 = 0;
    }

    *(v17 + 80) = v19;
  }

  v20 = *(v17 + 88);
  if (v20 != a2)
  {
    if (v20)
    {
      CFRelease(v20);
      *(v17 + 88) = 0;
    }

    if (a2)
    {
      v21 = CFRetain(a2);
    }

    else
    {
      v21 = 0;
    }

    *(v17 + 88) = v21;
  }

  v22 = *(v17 + 96);
  if (v22 != a4)
  {
    if (v22)
    {
      CFRelease(v22);
      *(v17 + 96) = 0;
    }

    if (a4)
    {
      v23 = CFRetain(a4);
    }

    else
    {
      v23 = 0;
    }

    *(v17 + 96) = v23;
  }

  v24 = *(v17 + 104);
  if (v24 != a5)
  {
    if (v24)
    {
      CFRelease(v24);
      *(v17 + 104) = 0;
    }

    if (a5)
    {
      v25 = CFRetain(a5);
    }

    else
    {
      v25 = 0;
    }

    *(v17 + 104) = v25;
  }

  v26 = *(v17 + 112);
  if (v26 != a6)
  {
    if (v26)
    {
      CFRelease(v26);
      *(v17 + 112) = 0;
    }

    if (a6)
    {
      v27 = CFRetain(a6);
    }

    else
    {
      v27 = 0;
    }

    *(v17 + 112) = v27;
  }

  v28 = *(v17 + 120);
  if (v28 != a7)
  {
    if (v28)
    {
      CFRelease(v28);
      *(v17 + 120) = 0;
    }

    if (a7)
    {
      v29 = CFRetain(a7);
    }

    else
    {
      v29 = 0;
    }

    *(v17 + 120) = v29;
  }

  *(v17 + 144) = a3;
  v30 = *(v17 + 152);
  if (v30)
  {
    CFRelease(v30);
    *(v17 + 152) = 0;
  }

  v31 = *(v17 + 160);
  if (v31)
  {
    CFRelease(v31);
    *(v17 + 160) = 0;
  }

  *(v17 + 176) = a8;
  if (a9)
  {
    _C3DFXMetalProgramUpdateHashWithSource(v17);
  }

  return v17;
}

void _C3DFXMetalProgramUpdateHashWithSource(void *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4800000000;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v12 = a1;
  v2 = a1[10];
  if (v2)
  {
    v2 = CFHash(v2);
  }

  *&v13 = v2;
  v3 = a1[11];
  if (v3)
  {
    v3 = CFHash(v3);
  }

  *(&v13 + 1) = v3;
  v4 = a1[12];
  if (v4)
  {
    v4 = CFHash(v4);
  }

  v15 = 0;
  v14 = v4;
  v5 = a1[14];
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = ___C3DFXMetalProgramUpdateHashWithSource_block_invoke;
    v8[3] = &unk_278301DE0;
    v8[4] = &v9;
    C3DCFDictionaryApplyBlockBySortingStringKeys(v5, v8);
  }

  v6 = 0;
  v7 = 0x3EDF6BA1375BCBF0;
  do
  {
    v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v10[v6 + 3]) ^ ((0xC6A4A7935BD1E995 * v10[v6 + 3]) >> 47))) ^ v7);
    ++v6;
  }

  while (v6 != 6);
  a1[21] = (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
  _Block_object_dispose(&v9, 8);
}

uint64_t C3DFXMetalProgramCreateFromLibraryWithConstants(const void *a1, const void *a2, int a3, const void *a4, const void *a5, const void *a6)
{
  v12 = C3DFXMetalProgramCreate();
  v13 = *(v12 + 80);
  if (v13 != a1)
  {
    if (v13)
    {
      CFRelease(v13);
      *(v12 + 80) = 0;
    }

    if (a1)
    {
      v14 = CFRetain(a1);
    }

    else
    {
      v14 = 0;
    }

    *(v12 + 80) = v14;
  }

  v15 = *(v12 + 88);
  if (v15 != a2)
  {
    if (v15)
    {
      CFRelease(v15);
      *(v12 + 88) = 0;
    }

    if (a2)
    {
      v16 = CFRetain(a2);
    }

    else
    {
      v16 = 0;
    }

    *(v12 + 88) = v16;
  }

  v17 = *(v12 + 96);
  if (v17)
  {
    CFRelease(v17);
    *(v12 + 96) = 0;
  }

  v18 = *(v12 + 104);
  if (v18)
  {
    CFRelease(v18);
    *(v12 + 104) = 0;
  }

  v19 = *(v12 + 112);
  if (v19)
  {
    CFRelease(v19);
    *(v12 + 112) = 0;
  }

  v20 = *(v12 + 120);
  if (v20)
  {
    CFRelease(v20);
    *(v12 + 120) = 0;
  }

  v21 = *(v12 + 128);
  if (v21 != a4)
  {
    if (v21)
    {
      CFRelease(v21);
      *(v12 + 128) = 0;
    }

    if (a4)
    {
      v22 = CFRetain(a4);
    }

    else
    {
      v22 = 0;
    }

    *(v12 + 128) = v22;
  }

  *(v12 + 144) = a3;
  *(v12 + 152) = _Block_copy(a5);
  *(v12 + 160) = _Block_copy(a6);
  _C3DFXMetalProgramUpdateHashWithLibrary(v12);
  return v12;
}

uint64_t C3DFXMetalProgramCreateFromSourceWithConstants(const void *a1, const void *a2, int a3, const void *a4, const void *a5, const void *a6, const void *a7, int a8)
{
  v16 = C3DFXMetalProgramCreate();
  v17 = *(v16 + 80);
  if (v17 != a1)
  {
    if (v17)
    {
      CFRelease(v17);
      *(v16 + 80) = 0;
    }

    if (a1)
    {
      v18 = CFRetain(a1);
    }

    else
    {
      v18 = 0;
    }

    *(v16 + 80) = v18;
  }

  v19 = *(v16 + 88);
  if (v19 != a2)
  {
    if (v19)
    {
      CFRelease(v19);
      *(v16 + 88) = 0;
    }

    if (a2)
    {
      v20 = CFRetain(a2);
    }

    else
    {
      v20 = 0;
    }

    *(v16 + 88) = v20;
  }

  v21 = *(v16 + 96);
  if (v21 != a4)
  {
    if (v21)
    {
      CFRelease(v21);
      *(v16 + 96) = 0;
    }

    if (a4)
    {
      v22 = CFRetain(a4);
    }

    else
    {
      v22 = 0;
    }

    *(v16 + 96) = v22;
  }

  v23 = *(v16 + 104);
  if (v23)
  {
    CFRelease(v23);
    *(v16 + 104) = 0;
  }

  v24 = *(v16 + 112);
  if (v24 != a5)
  {
    if (v24)
    {
      CFRelease(v24);
      *(v16 + 112) = 0;
    }

    if (a5)
    {
      v25 = CFRetain(a5);
    }

    else
    {
      v25 = 0;
    }

    *(v16 + 112) = v25;
  }

  v26 = *(v16 + 120);
  if (v26 != a6)
  {
    if (v26)
    {
      CFRelease(v26);
      *(v16 + 120) = 0;
    }

    if (a6)
    {
      v27 = CFRetain(a6);
    }

    else
    {
      v27 = 0;
    }

    *(v16 + 120) = v27;
  }

  v28 = *(v16 + 128);
  if (v28 != a7)
  {
    if (v28)
    {
      CFRelease(v28);
      *(v16 + 128) = 0;
    }

    if (a7)
    {
      v29 = CFRetain(a7);
    }

    else
    {
      v29 = 0;
    }

    *(v16 + 128) = v29;
  }

  *(v16 + 144) = a3;
  v30 = *(v16 + 152);
  if (v30)
  {
    CFRelease(v30);
    *(v16 + 152) = 0;
  }

  v31 = *(v16 + 160);
  if (v31)
  {
    CFRelease(v31);
    *(v16 + 160) = 0;
  }

  if (a8)
  {
    _C3DFXMetalProgramUpdateHashWithSource(v16);
  }

  return v16;
}

uint64_t C3DFXMetalProgramGetFunctionName(CFTypeRef cf, uint64_t a2)
{
  v2 = a2;
  if (!cf)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = CFGetTypeID(cf);
  v14 = v12;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v14 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v15 = scn_default_log(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  return *(cf + v2 + 10);
}

CFHashCode C3DFXMetalProgramReplaceSourceCodeWithLibrary(void *cf, const void *a2, const void *a3)
{
  if (!cf)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = CFGetTypeID(cf);
  v16 = v14;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v16 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v17 = scn_default_log(v14, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  v25 = cf[12];
  if (v25)
  {
    CFRelease(v25);
    cf[12] = 0;
  }

  v26 = cf[19];
  if (v26)
  {
    CFRelease(v26);
    cf[19] = 0;
  }

  v27 = cf[20];
  if (v27)
  {
    CFRelease(v27);
    cf[20] = 0;
  }

  cf[19] = _Block_copy(a2);
  cf[20] = _Block_copy(a3);
  return _C3DFXMetalProgramUpdateHashWithLibrary(cf);
}

CFTypeRef C3DFXMetalProgramSetFunctionName(char *cf, uint64_t a2, CFTypeRef a3)
{
  v4 = a2;
  if (!cf)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = CFGetTypeID(cf);
  v16 = v14;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v16 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v17 = scn_default_log(v14, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  v25 = cf + 80;
  result = *&v25[8 * v4];
  if (result != a3)
  {
    if (result)
    {
      CFRelease(result);
      *&v25[8 * v4] = 0;
    }

    if (a3)
    {
      result = CFRetain(a3);
    }

    else
    {
      result = 0;
    }

    *&v25[8 * v4] = result;
  }

  return result;
}

uint64_t C3DFXMetalProgramGetSourceCode(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v13 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v14 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return *(cf + 12);
}

uint64_t C3DFXMetalProgramGetSourceCodeForShaderCollection(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v13 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v14 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return *(cf + 13);
}

uint64_t C3DFXMetalProgramGetPreprocessorsMacros(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v13 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v14 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return *(cf + 14);
}

uint64_t C3DFXMetalProgramGetPreprocessorAllPossibleMacros(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v13 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v14 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return *(cf + 15);
}

uint64_t C3DFXMetalProgramGetLanguageVersion(unsigned int *cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v13 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v14 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return cf[44];
}

uint64_t C3DFXMetalProgramGetConstants(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v13 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v14 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return *(cf + 16);
}

uint64_t C3DFXMetalProgramGetBufferBindings(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v13 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v14 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return *(cf + 17);
}

void C3DFXMetalProgramSetBufferBinding(void *a1, const void *a2, const void *a3)
{
  v6 = CFGetTypeID(a1);
  v8 = v6;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetTypeID_cold_1();
  }

  if (v8 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v9 = scn_default_log(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  Mutable = a1[17];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    a1[17] = Mutable;
  }

  if (a3)
  {
    CFDictionarySetValue(Mutable, a2, a3);
  }

  else
  {
    CFDictionaryRemoveValue(Mutable, a2);
  }
}

uint64_t C3DFXMetalProgramGetLinkedFunctionsFamilies(unsigned int *cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetFunctionName_cold_2();
  }

  if (v13 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v14 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return cf[36];
}

uint64_t C3DFXMetalProgramGetLibraryProviderBlock(void *a1)
{
  v2 = CFGetTypeID(a1);
  v4 = v2;
  if (C3DFXMetalProgramGetTypeID_onceToken != -1)
  {
    C3DFXMetalProgramGetTypeID_cold_1();
  }

  if (v4 != C3DFXMetalProgramGetTypeID_typeID)
  {
    v5 = scn_default_log(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DFXMetalProgramGetHash_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  return a1[20];
}

id _C3DFXMetalProgramCFFinalize(void *a1)
{
  v2 = 0;
  v3 = a1 + 10;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = v3[v2];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v7 = a1[17];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[12];
  if (v8)
  {
    CFRelease(v8);
    a1[12] = 0;
  }

  v9 = a1[13];
  if (v9)
  {
    CFRelease(v9);
    a1[13] = 0;
  }

  v10 = a1[14];
  if (v10)
  {
    CFRelease(v10);
    a1[14] = 0;
  }

  v11 = a1[15];
  if (v11)
  {
    CFRelease(v11);
    a1[15] = 0;
  }

  v12 = a1[16];
  if (v12)
  {
    CFRelease(v12);
    a1[16] = 0;
  }

  v13 = a1[19];
  if (v13)
  {
    CFRelease(v13);
    a1[19] = 0;
  }

  v14 = a1[20];
  if (v14)
  {
    CFRelease(v14);
    a1[20] = 0;
  }

  return C3DFXProgramCFFinalize(a1);
}

uint64_t __C3DFXPassInputGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXPassInputGetTypeID_typeID = result;
  qword_281744438 = _C3DFXPassInputCopyInstanceVariables;
  return result;
}

uint64_t C3DFXPassInputCreate()
{
  if (C3DFXPassInputGetTypeID_onceToken != -1)
  {
    C3DFXPassInputCreate_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DFXPassInputGetTypeID_typeID, 96);
  *(result + 16) = 0;
  *(result + 40) = -1;
  *(result + 24) = 1;
  return result;
}

void C3DFXPassInputSetSemantic(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 32) = v2;
}

void C3DFXPassInputSetChannelIndex(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 104) = v2;
}

uint64_t C3DFXPassInputGetSymbolName(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 56);
}

CFTypeRef C3DFXPassInputSetSymbolName(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 56);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 56) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 56) = result;
  }

  return result;
}

CFTypeRef C3DFXPassInputSetSampler(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 72);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 72) = result;
  }

  return result;
}

void C3DFXPassInputSetUniformIndex(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 40) = a2;
}

void *C3DFXPassInputSetBindingBlock(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 96);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
    v6 = 3;
  }

  else
  {
    result = 0;
    v6 = 2;
  }

  *(a1 + 96) = result;
  *(a1 + 16) = v6;
  return result;
}

void __updateRequireLighting(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(result + 24);
  v11 = v10 > 6;
  v12 = (1 << v10) & 0x4C;
  v13 = v11 || v12 == 0;
  if (v13 || (v14 = *(result + 96)) != 0 && ((CommonProfileIfNoTechnique = C3DMaterialGetCommonProfileIfNoTechnique(v14, a2)) == 0 || C3DEffectCommonProfileGetLightingModel(CommonProfileIfNoTechnique, v16) == 4))
  {
    v17 = *(result + 184) & 0xFFFF7FFF;
  }

  else
  {
    v17 = *(result + 184) | 0x8000;
  }

  *(result + 184) = v17;
}

uint64_t __C3DFXPassGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXPassGetTypeID_typeID = result;
  qword_281744520 = _C3DFXPassCopyInstanceVariables;
  return result;
}

uint64_t C3DFXPassCreate()
{
  if (C3DFXPassGetTypeID_onceToken != -1)
  {
    C3DFXPassCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DFXPassGetTypeID_typeID, 560);
  *(Instance + 536) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v1 = *(Instance + 184);
  *(Instance + 376) = 0x3FF0000000000000;
  *(Instance + 384) = 0x3FF0000000000000;
  *(Instance + 368) = *(Instance + 368) & 0xF8 | 1;
  *(Instance + 480) = 1;
  *(Instance + 32) = 1;
  *(Instance + 180) = 1;
  *(Instance + 184) = v1 | 0x310B;
  return Instance;
}

CFTypeRef C3DFXPassSetProgramName(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 48);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 48) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 48) = result;
  }

  return result;
}

CFTypeRef C3DFXPassSetMetalVertexShaderFunction(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 56);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 56) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 56) = result;
  }

  return result;
}

CFTypeRef C3DFXPassSetMetalFragmentShaderFunction(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 64);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 64) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 64) = result;
  }

  return result;
}

CFTypeRef C3DFXPassSetMetalLibraryName(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 72);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 72) = result;
  }

  return result;
}

void C3DFXPassSetClientProgram(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 80) = v2;
}

CFTypeRef C3DFXPassSetProgram(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 88);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 88) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 88) = result;
  }

  return result;
}

uint64_t C3DFXPassGetProgram(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88);
}

BOOL C3DFXPassGetProgramIsOpaque(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 180) != 0;
}

void C3DFXPassSetDrawInstruction(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  *(a1 + 24) = v2;
  __updateRequireLighting(a1, a2);
}

uint64_t C3DFXPassGetDrawInstruction(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

void C3DFXPassSetMaterial(_BOOL8 updated, CFTypeRef cf)
{
  v3 = updated;
  if (!updated && (v4 = scn_default_log(0, cf), updated = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    __updateRequireLighting_cold_1(v4, cf, v5, v6, v7, v8, v9, v10);
    if (cf)
    {
      goto LABEL_6;
    }
  }

  else if (cf)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(updated, cf);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryAppendMaterial_cold_2(v11, cf, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = *(v3 + 96);
  if (v18 != cf)
  {
    if (v18)
    {
      CFRelease(v18);
      *(v3 + 96) = 0;
    }

    if (cf)
    {
      v19 = CFRetain(cf);
    }

    else
    {
      v19 = 0;
    }

    *(v3 + 96) = v19;
  }

  __updateRequireLighting(v3, cf);
}

uint64_t C3DFXPassGetMaterial(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

void C3DFXPassSetClearBehavior(uint64_t result, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  if (!result)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a3)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  if (a4)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  *(result + 184) = v16 | v6 | v17 | *(result + 184) & 0xFFFFFFF8;
}

uint64_t C3DFXPassGetClearColor(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((C3DFXPassGetUsesSceneBackgroundColor(a1, a2) & 1) == 0)
  {
    return *(a1 + 128);
  }

  return v2;
}

uint64_t C3DFXPassGetUsesSceneBackgroundColor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 185) >> 1) & 1;
}

CFStringRef C3DFXPassSetName(_BOOL8 updated, CFStringRef theString)
{
  v3 = updated;
  if (!updated && (v4 = scn_default_log(0, theString), updated = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    __updateRequireLighting_cold_1(v4, theString, v5, v6, v7, v8, v9, v10);
    if (theString)
    {
      goto LABEL_6;
    }
  }

  else if (theString)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(updated, theString);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DEntityGetAttribute_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  result = *(v3 + 16);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
      *(v3 + 16) = 0;
    }

    if (theString)
    {
      result = CFStringCreateCopy(*MEMORY[0x277CBECE8], theString);
    }

    else
    {
      result = 0;
    }

    *(v3 + 16) = result;
  }

  return result;
}

uint64_t C3DFXPassGetName(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DFXPassIsTopLevel(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 186) >> 5) & 1;
}

void C3DFXPassSetPointOfView(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 448) = a2;
}

uint64_t C3DFXPassGetPointOfView(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 448);
}

void C3DFXPassSetViewport(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = scn_default_log(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      __updateRequireLighting_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  result[11].n128_u32[2] |= 0x40000u;
  result[9] = a3;
}

uint64_t C3DFXPassGetSubViewport(float32x4_t *a1, float32x4_t *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[11].u32[2];
  if ((v12 & 0x80000) != 0)
  {
    v13.i64[0] = a2->i64[1];
    v13.i64[1] = v13.i64[0];
    *a2 = vrndaq_f32(vmulq_f32(v13, a1[10]));
  }

  return (v12 >> 19) & 1;
}

uint64_t C3DFXPassGetHasCustomViewport(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 186) >> 2) & 1;
}

__n128 C3DFXPassGetViewport(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1[9];
}

CFTypeRef C3DFXPassSetRootNode(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 456);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 456) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 456) = result;
  }

  return result;
}

uint64_t C3DFXPassGetRootNode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 456);
}

uint64_t C3DFXPassGetNodes(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 464);
}

uint64_t C3DFXPassGetLayerMask(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 480);
}

CFTypeRef C3DFXPassSetMirrorNode(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 472);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 472) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 472) = result;
  }

  return result;
}

uint64_t C3DFXPassGetMirrorNode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 472);
}

void C3DFXPassSetInstallViewport(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 4096;
  }

  else
  {
    v12 = 0;
  }

  *(result + 184) = *(result + 184) & 0xFFFFEFFF | v12;
}

uint64_t C3DFXPassGetIgnoreInifiniteFloor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 184) >> 5) & 1;
}

uint64_t C3DFXPassGetDrawOnlyShadowCaster(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 185) >> 2) & 1;
}

uint64_t C3DFXPassHasConstantAlpha(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 185) & 1;
}

uint64_t C3DFXPassGetIncludeCategoryMask(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 200);
}

uint64_t C3DFXPassGetExcludeCategoryMask(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 208);
}

uint64_t C3DFXPassRequiresLighting(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 185) >> 7;
}

uint64_t C3DFXPassGetForceJitteringOff(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 184) >> 7;
}

BOOL C3DFXPassGetUpdatesMainFrameBuffer(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 184) & 0x40) == 0;
}

void C3DFXPassSetUpdatesMainFrameBuffer(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 0;
  }

  else
  {
    v12 = 64;
  }

  *(result + 184) = *(result + 184) & 0xFFFFFFBF | v12;
}

uint64_t C3DFXPassGetStorage(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 40);
  if (v11 && (v12 = *(v11 + 96)) != 0)
  {
    return *v12;
  }

  else
  {
    return 0;
  }
}

double C3DFXPassSetupWithPropertyList(uint64_t a1, void *a2, const __CFDictionary *a3)
{
  v5 = a1;
  v125 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = [objc_msgSend(a2 valueForKey:{@"draw", "lowercaseString"}];
  if (objc_msgSend_isEqualToString_(v14) & 1) != 0 || (objc_msgSend_isEqualToString_(v14))
  {
    isEqualToString = 3;
  }

  else if (objc_msgSend_isEqualToString_(v14))
  {
    isEqualToString = 8;
  }

  else if (objc_msgSend_isEqualToString_(v14))
  {
    isEqualToString = 6;
  }

  else if (objc_msgSend_isEqualToString_(v14))
  {
    isEqualToString = 2;
  }

  else if (objc_msgSend_isEqualToString_(v14))
  {
    isEqualToString = 4;
  }

  else if (objc_msgSend_isEqualToString_(v14))
  {
    isEqualToString = 7;
  }

  else if (objc_msgSend_isEqualToString_(v14) & 1) != 0 || (objc_msgSend_isEqualToString_(v14))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v14);
  }

  C3DFXPassSetDrawInstruction(v5, isEqualToString);
  v16 = [objc_msgSend(a2 valueForKey:{@"stage", "lowercaseString"}];
  if (objc_msgSend_isEqualToString_(v16))
  {
    v17 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v16))
  {
    v17 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v16))
  {
    v17 = 3;
  }

  else
  {
    objc_msgSend_isEqualToString_(v16);
    v17 = 4;
  }

  *(v5 + 28) = v17;
  if ([a2 objectForKey:@"ignoreFloors"])
  {
    if ([objc_msgSend(a2 objectForKey:{@"ignoreFloors", "BOOLValue"}])
    {
      v18 = 32;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFFFFFDF | v18;
  if ([a2 objectForKey:@"onlyShadowCasters"])
  {
    if ([objc_msgSend(a2 objectForKey:{@"onlyShadowCasters", "BOOLValue"}])
    {
      v19 = 1024;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFFFFBFF | v19;
  if ([a2 objectForKey:@"onlyMovableNodes"])
  {
    if ([objc_msgSend(a2 objectForKey:{@"onlyMovableNodes", "BOOLValue"}])
    {
      v20 = 2048;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFFFF7FF | v20;
  v21 = 256;
  if ([a2 objectForKey:@"hasConstantAlpha"])
  {
    if ([objc_msgSend(a2 objectForKey:{@"hasConstantAlpha", "BOOLValue"}])
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFFFFEFF | v21;
  v22 = 4096;
  if ([a2 objectForKey:@"installViewport"])
  {
    if ([objc_msgSend(a2 objectForKey:{@"installViewport", "BOOLValue"}])
    {
      v22 = 4096;
    }

    else
    {
      v22 = 0;
    }
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFFFEFFF | v22;
  v23 = 0x2000;
  if ([a2 objectForKey:@"isViewDependant"])
  {
    if ([objc_msgSend(a2 objectForKey:{@"isViewDependant", "BOOLValue"}])
    {
      v23 = 0x2000;
    }

    else
    {
      v23 = 0;
    }
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFFFDFFF | v23;
  if ([objc_msgSend(a2 objectForKey:{@"overridesCustomProgram", "BOOLValue"}])
  {
    v24 = 0x100000;
  }

  else
  {
    v24 = 0;
  }

  *(v5 + 184) = *(v5 + 184) & 0xFFEFFFFF | v24;
  v25 = [a2 objectForKey:@"layerMask"];
  if (v25)
  {
    *(v5 + 480) = _maskValue(v25);
  }

  v26 = [a2 objectForKey:@"includeCategoryMask"];
  if (v26)
  {
    v27 = _maskValue(v26);
  }

  else
  {
    v27 = -1;
  }

  *(v5 + 200) = v27;
  v28 = [a2 objectForKey:@"excludeCategoryMask"];
  if (v28)
  {
    v28 = _maskValue(v28);
  }

  *(v5 + 208) = v28;
  v29 = [a2 objectForKey:@"viewport"];
  if (v29)
  {
    *(v5 + 184) |= 0x40000u;
    *context = 0;
    LODWORD(v119[0]) = 0;
    v120 = 0;
    sscanf([v29 UTF8String], "%f %f %f %f", context, v119, &v120 + 4, &v120);
    *&v30 = __PAIR64__(v119[0], *context);
    *(&v30 + 1) = __PAIR64__(v120, HIDWORD(v120));
    *(v5 + 144) = v30;
  }

  v31 = [objc_msgSend(a2 objectForKey:{@"samples", "intValue"}];
  if (!v31)
  {
    LOBYTE(v31) = (*(v5 + 24) & 0xFFFFFFFB) == 0;
  }

  *(v5 + 176) = v31;
  memset(v119, 0, 28);
  v32 = [a2 objectForKey:{@"cullMode", C3DRasterizerStatesDescGetDefault(v119)}];
  v33 = v32 != 0;
  if (v32)
  {
    v34 = v32;
    if (objc_msgSend_isEqualToString_(v32) & 1) != 0 || (objc_msgSend_isEqualToString_(v34))
    {
      v35 = 1;
    }

    else if (objc_msgSend_isEqualToString_(v34) & 1) != 0 || (objc_msgSend_isEqualToString_(v34))
    {
      v35 = 2;
    }

    else
    {
      if ((objc_msgSend_isEqualToString_(v34) & 1) == 0)
      {
        v113 = objc_msgSend_isEqualToString_(v34);
        if ((v113 & 1) == 0)
        {
          v115 = scn_default_log(v113, v114);
          if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            C3DFXPassSetupWithPropertyList_cold_2();
          }
        }
      }

      v35 = 0;
    }

    LODWORD(v119[0]) = v35;
  }

  v36 = [a2 objectForKey:@"colorStates"];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 objectForKey:@"clearColor"];
    if (v38)
    {
      v39 = v38;
      v40 = objc_msgSend_isEqualToString_(v38);
      v41 = *(v5 + 184);
      if (v40)
      {
        v42 = v41 | 0x200;
      }

      else
      {
        *(v5 + 184) = v41 & 0xFFFFFDFF;
        sscanf([v39 UTF8String], "%f %f %f %f", v5 + 128, v5 + 132, v5 + 136, v5 + 140);
        v42 = *(v5 + 184);
      }

      *(v5 + 184) = v42 | 1;
    }

    v43 = [v37 objectForKey:@"clear"];
    if (v43)
    {
      *(v5 + 184) = *(v5 + 184) & 0xFFFFFFFE | [v43 BOOLValue];
    }
  }

  v44 = [a2 objectForKey:@"depthStates"];
  if (!v44)
  {
    goto LABEL_85;
  }

  v45 = v44;
  v46 = [v44 objectForKey:@"enableWrite"];
  if (v46)
  {
    BYTE9(v119[0]) = [v46 BOOLValue];
    v33 = 1;
  }

  v47 = [v45 objectForKey:@"enableRead"];
  if (v47)
  {
    BYTE8(v119[0]) = [v47 BOOLValue];
    v33 = 1;
  }

  v48 = [v45 objectForKey:@"clear"];
  if (v48)
  {
    if ([v48 BOOLValue])
    {
      v49 = 2;
    }

    else
    {
      v49 = 0;
    }

    *(v5 + 184) = *(v5 + 184) & 0xFFFFFFFD | v49;
  }

  v50 = [v45 objectForKey:@"func"];
  if (!v50)
  {
LABEL_85:
    v52 = [a2 objectForKey:@"stencilStates"];
    if (!v52)
    {
      v53 = 0;
      if (!v33)
      {
        goto LABEL_100;
      }

      goto LABEL_99;
    }

    goto LABEL_86;
  }

  BYTE10(v119[0]) = _depthFuncNameToDepthFunc(v50, v51);
  v52 = [a2 objectForKey:@"stencilStates"];
  if (v52)
  {
LABEL_86:
    v54 = v52;
    v55 = [v52 objectForKey:@"enable"];
    if (v55)
    {
      v53 = [v55 BOOLValue];
    }

    else
    {
      v53 = 1;
    }

    BYTE11(v119[0]) = v53;
    v56 = [v54 objectForKey:@"clear"];
    if (v56)
    {
      if ([v56 BOOLValue])
      {
        v57 = 4;
      }

      else
      {
        v57 = 0;
      }

      *(v5 + 184) = *(v5 + 184) & 0xFFFFFFF3 | v57;
    }

    v58 = [v54 objectForKey:@"behavior"];
    if (v58)
    {
      _stencilActionDescrToStencilAction(v58, v119 + 13);
    }

    v59 = [v54 objectForKey:@"backFaceBehavior"];
    if (v59)
    {
      BYTE12(v119[0]) = 1;
      _stencilActionDescrToStencilAction(v59, &v119[1] + 4);
    }

    goto LABEL_99;
  }

  v53 = 0;
LABEL_99:
  *context = v119[0];
  *&context[12] = *(v119 + 12);
  v60 = C3DRasterizerStatesCreate(context);
  C3DFXPassSetRasterizerStates(v5, v60);
  C3DRasterizerStatesRelease(v60);
LABEL_100:
  v61 = [a2 objectForKey:@"blendStates"];
  if (!v61)
  {
    goto LABEL_131;
  }

  v63 = v61;
  objc_opt_class();
  v118 = a3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v63 = [MEMORY[0x277CBEA60] arrayWithObject:v63];
  }

  v64 = [v63 count];
  if (v64 >= 5)
  {
    v66 = scn_default_log(v64, v65);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      C3DFXPassSetupWithPropertyList_cold_3(v66);
    }

    v67 = 4;
    goto LABEL_108;
  }

  v67 = v64;
  if (v64 >= 1)
  {
LABEL_108:
    v116 = v53;
    v117 = v5;
    v68 = 0;
    v69 = &context[3];
    do
    {
      v70 = [v63 objectAtIndex:v68];
      v71 = [v70 objectForKey:@"enable"];
      if (v71)
      {
        v72 = [v71 BOOLValue];
      }

      else
      {
        v72 = 1;
      }

      *(v69 - 3) = v72;
      v73 = [v70 objectForKey:@"colorSrc"];
      if (v73)
      {
        v75 = _blendFactorFromString(v73, v74);
      }

      else
      {
        v75 = 1;
      }

      *(v69 - 1) = v75;
      v76 = [v70 objectForKey:@"colorDst"];
      if (v76)
      {
        v78 = _blendFactorFromString(v76, v77);
      }

      else
      {
        v78 = 5;
      }

      *v69 = v78;
      *(v69 - 2) = 0;
      v79 = [v70 objectForKey:@"alphaSrc"];
      if (v79)
      {
        v81 = _blendFactorFromString(v79, v80);
        *(v69 - 2) = 1;
      }

      else
      {
        v81 = 1;
      }

      v69[2] = v81;
      v82 = [v70 objectForKey:@"alphaDst"];
      if (v82)
      {
        v84 = _blendFactorFromString(v82, v83);
        *(v69 - 2) = 1;
      }

      else
      {
        v84 = 5;
      }

      v69[3] = v84;
      v85 = [v70 objectForKey:@"colorOp"];
      if (v85)
      {
        LOBYTE(v85) = _blendOpFromString(v85, v86);
      }

      v69[1] = v85;
      v87 = [v70 objectForKey:@"alphaOp"];
      if (v87)
      {
        LOBYTE(v87) = _blendOpFromString(v87, v88);
        *(v69 - 2) = 1;
      }

      v69[4] = v87;
      ++v68;
      v69 += 8;
    }

    while (v67 != v68);
    v5 = v117;
    v53 = v116;
  }

  v89 = C3DBlendStatesCreate(context, v67);
  C3DFXPassSetBlendStates(v5, v89);
  CFRelease(v89);
  a3 = v118;
LABEL_131:
  Name = C3DFXPassGetName(v5, v62);
  Value = CFDictionaryGetValue(a3, @"passes");
  v92 = CFDictionaryGetValue(a3, @"targets");
  if (Value)
  {
    v94 = v92;
    v95 = CFDictionaryGetValue(Value, Name);
    if (v95)
    {
      v97 = CFDictionaryGetValue(v95, @"outputs");
      if (v97)
      {
        v98 = v97;
        memset(v123, 0, sizeof(v123));
        *&context[16] = 0u;
        memset(v122, 0, sizeof(v122));
        *&context[8] = v94;
        *context = 0x1003F800000;
        memset_pattern16(v122, &xmmword_21C2814B0, 0x20uLL);
        __asm { FMOV            V0.2S, #1.0 }

        *&v123[12] = _D0;
        v124 = 0;
        v123[22] = v53;
        DrawInstruction = C3DFXPassGetDrawInstruction(v5, v104);
        v106 = 0;
        if (DrawInstruction <= 6 && ((1 << DrawInstruction) & 0x4C) != 0)
        {
          context[4] = 1;
          v106 = 41;
        }

        *&context[24] = 0;
        v123[8] = v106;
        CFDictionaryApplyFunction(v98, _parseTargets, context);
        v107 = 0;
        *(v5 + 363) = *(v5 + 363) & 0xFC | context[4] ^ 1 | (2 * v123[21]);
        *(v5 + 360) = v123[8];
        *(v5 + 424) = *&v123[12];
        v108 = v124;
        v109 = (v5 + 299);
        v110 = ((context[5] & 1) == 0) | (2 * v123[20]);
        do
        {
          if (context[v107 + 24])
          {
            v111 = *v109 & 0xEC | v110;
            *(v109 - 3) = context[v107 + 24];
            *v109 = v111 | (16 * v123[v107]);
            *(v5 + 392 + 4 * v107) = *(v122 + v107);
            *(v109 - 1) = v108;
            *(v5 + 368) = *(v5 + 368) & 0xF8 | (v107 + 1) & 7;
          }

          ++v107;
          v109 += 8;
        }

        while (v107 != 8);
        if (*&context[16] == 0.0 || *&context[20] == 0.0)
        {
          C3DFramebufferDescriptionSetViewportDependant(v5 + 288, 1);
        }

        else
        {
          C3DFramebufferDescriptionSetViewportDependant(v5 + 288, 0);
          *(v5 + 288) = *&context[16];
        }

        result = *context;
        *(v5 + 376) = *context;
        *(v5 + 384) = result;
      }

      else
      {
        *(v5 + 360) = 0;
        *(v5 + 296) = 0;
      }
    }

    else
    {
      v112 = scn_default_log(0, v96);
      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        *context = 138412546;
        *&context[4] = v5;
        *&context[12] = 2112;
        *&context[14] = Name;
        _os_log_impl(&dword_21BEF7000, v112, OS_LOG_TYPE_DEFAULT, "Warning: can't create a fbo description for pass %@ - can't find pass description with name %@", context, 0x16u);
      }
    }
  }

  return result;
}

uint64_t _maskValue(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [a1 unsignedIntegerValue];
  }

  else if ([a1 hasPrefix:@"0x"])
  {
    v3 = 0;
    sscanf([a1 cStringUsingEncoding:4], "%lu", &v3);
    return v3;
  }

  else
  {

    return [a1 integerValue];
  }
}

uint64_t _depthFuncNameToDepthFunc(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"never"))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 4;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 5;
  }

  if ((objc_msgSend_isEqualToString_(a1) & 1) == 0)
  {
    isEqualToString = objc_msgSend_isEqualToString_(a1);
    if (isEqualToString)
    {
      return 7;
    }

    v7 = scn_default_log(isEqualToString, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _depthFuncNameToDepthFunc_cold_1();
    }
  }

  return 6;
}

void *_stencilActionDescrToStencilAction(void *a1, _BYTE *a2)
{
  v4 = [a1 valueForKey:@"depthFail"];
  if (v4)
  {
    a2[5] = _stencilOpNameToOp(v4, v5);
  }

  v6 = [a1 valueForKey:@"fail"];
  if (v6)
  {
    a2[6] = _stencilOpNameToOp(v6, v7);
  }

  v8 = [a1 valueForKey:@"pass"];
  if (v8)
  {
    a2[4] = _stencilOpNameToOp(v8, v9);
  }

  v10 = [a1 valueForKey:@"function"];
  if (v10)
  {
    *a2 = _depthFuncNameToDepthFunc(v10, v11);
  }

  v12 = [a1 valueForKey:@"readMask"];
  if (v12)
  {
    a2[1] = [v12 unsignedCharValue];
  }

  v13 = [a1 valueForKey:@"writeMask"];
  if (v13)
  {
    a2[2] = [v13 unsignedCharValue];
  }

  result = [a1 valueForKey:@"referenceValue"];
  if (result)
  {
    result = [result unsignedCharValue];
    a2[3] = result;
  }

  return result;
}

CFTypeRef C3DFXPassSetRasterizerStates(uint64_t a1, CFTypeRef a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 112);
  if (result != a2)
  {
    C3DRasterizerStatesRelease(result);
    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *(a1 + 112) = result;
  }

  return result;
}

CFTypeRef C3DFXPassSetBlendStates(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 104);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 104) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 104) = result;
  }

  return result;
}

void _parseTargets(const void *a1, const void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 8);
  if (v5)
  {
    Value = CFDictionaryGetValue(v5, a2);
  }

  else
  {
    Value = 0;
  }

  if (CFEqual(a1, @"color") || CFEqual(a1, @"color0"))
  {
    v7 = 1;
LABEL_7:
    *(a3 + 5) = 0;
    if (Value)
    {
      v8 = CFDictionaryGetValue(Value, @"format");
      if (v8)
      {
        v9 = v8;
        v10 = C3DRenderBufferFormatFromString(v8);
        if (v10)
        {
LABEL_13:
          v13 = (v7 - 1);
          *(a3 + v13 + 24) = v10;
          *(a3 + v13 + 64) = [-[__CFDictionary objectForKeyedSubscript:](Value objectForKeyedSubscript:{@"mipmapped", "BOOLValue"}];
          if (!Value)
          {
            return;
          }

          v14 = CFDictionaryGetValue(Value, @"scaleFactor");
          if (v14)
          {
            CFNumberGetValue(v14, kCFNumberFloatType, (a3 + 4 * v13 + 32));
          }

          goto LABEL_16;
        }

        v12 = scn_default_log(v10, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = v9;
          _os_log_impl(&dword_21BEF7000, v12, OS_LOG_TYPE_DEFAULT, "Warning: unknown texture format : %@", buf, 0xCu);
        }
      }
    }

    LOBYTE(v10) = 1;
    goto LABEL_13;
  }

  if (CFEqual(a1, @"color1"))
  {
    v7 = 2;
    goto LABEL_7;
  }

  if (CFEqual(a1, @"color2"))
  {
    v7 = 3;
    goto LABEL_7;
  }

  if (CFEqual(a1, @"color3"))
  {
    v7 = 4;
    goto LABEL_7;
  }

  if (!CFEqual(a1, @"depth"))
  {
    v26 = CFEqual(a1, @"stencil");
    if (v26)
    {
      *(a3 + 4) = 0;
      *(a3 + 72) = 44;
      if (!Value)
      {
        return;
      }

      v28 = CFDictionaryGetValue(Value, @"scaleFactor");
      if (v28)
      {
        CFNumberGetValue(v28, kCFNumberFloatType, (a3 + 80));
      }

      v7 = 5;
      goto LABEL_16;
    }

    v30 = scn_default_log(v26, v27);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      _parseTargets_cold_1();
    }
  }

  *(a3 + 4) = 0;
  if (!Value)
  {
    if (*(a3 + 86))
    {
      v29 = 44;
    }

    else
    {
      v29 = 41;
    }

    *(a3 + 72) = v29;
    return;
  }

  v20 = CFDictionaryGetValue(Value, @"format");
  if (!v20)
  {
    goto LABEL_40;
  }

  v21 = v20;
  v22 = C3DRenderBufferFormatFromString(v20);
  if (!v22)
  {
    v24 = scn_default_log(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v21;
      _os_log_impl(&dword_21BEF7000, v24, OS_LOG_TYPE_DEFAULT, "Warning: unknown depth texture format : %@", buf, 0xCu);
    }

LABEL_40:
    if (*(a3 + 86))
    {
      LOBYTE(v22) = 44;
    }

    else
    {
      LOBYTE(v22) = 41;
    }
  }

  *(a3 + 72) = v22;
  v25 = CFDictionaryGetValue(Value, @"scaleFactor");
  if (v25)
  {
    CFNumberGetValue(v25, kCFNumberFloatType, (a3 + 76));
  }

  v7 = 0;
LABEL_16:
  v15 = CFDictionaryGetValue(Value, @"scaleFactor");
  if (v15)
  {
    CFNumberGetValue(v15, kCFNumberFloatType, a3);
  }

  v16 = CFDictionaryGetValue(Value, @"size");
  if (v16)
  {
    v31 = 0;
    *buf = 0;
    CString = SCNStringGetCString(v16);
    sscanf(CString, "%fx%f", buf, &v31);
    *(a3 + 16) = __PAIR64__(v31, *buf);
  }

  v18 = CFDictionaryGetValue(Value, @"target");
  if (v18 && CFEqual(v18, @"texture_rectangle"))
  {
    if (v7 == 1)
    {
      *(a3 + 84) = 1;
    }

    else
    {
      *(a3 + 85) = 1;
    }
  }

  v19 = CFDictionaryGetValue(Value, @"usage");
  if (v19)
  {
    *(a3 + 88) = SCNTextureUsageFromStrings(v19);
  }
}

void C3DFXPassBindInputWithSymbol(uint64_t a1, const void *a2, void *a3)
{
  v6 = C3DFXPassAddInputWithName(a1, a2);
  C3DFXPassInputSetSymbolName(v6, a3);
  v7 = *(a1 + 40);
  v14 = 0;
  ValueOffsetForSymbol = C3DFXTechniqueGetValueOffsetForSymbol(v7, a3, &v14, 0);
  *(v6 + 4) = 2;
  *(v6 + 10) = v14;
  v6[3] = 1;
  v6[11] = ValueOffsetForSymbol;
  v9 = CFGetTypeID(*(a1 + 88));
  if (v9 == C3DFXGLSLProgramGetTypeID(v9, v10))
  {
    UniformIndex = C3DFXGLSLProgramGetUniformIndex(*(a1 + 88), a2);
    if (UniformIndex == -1)
    {
      NextUniformIndex = C3DFXGLSLProgramGetNextUniformIndex(*(a1 + 88), v12);
      v6[5] = NextUniformIndex;
      C3DFXGLSLProgramSetUniformIndex(*(a1 + 88), a2, NextUniformIndex);
    }

    else
    {
      v6[5] = UniformIndex;
    }
  }
}

void *C3DFXPassAddInputWithName(_BOOL8 IsMainPass_cold_2, const void *a2)
{
  v3 = IsMainPass_cold_2;
  if (!IsMainPass_cold_2 && (v4 = scn_default_log(0, a2), IsMainPass_cold_2 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DFXContextIsMainPass_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(IsMainPass_cold_2, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DFXPassAddInputWithName_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = *(v3 + 520);
  if (v19 == *(v3 + 528))
  {
    v20 = 2 * v19;
    if (v20 <= 1)
    {
      v20 = 1;
    }

    *(v3 + 528) = v20;
    *(v3 + 512) = malloc_type_realloc(*(v3 + 512), 8 * v20, 0x2004093837F09uLL);
  }

  v21 = C3DFXPassInputCreate();
  v22 = *(v3 + 512);
  v23 = *(v3 + 520);
  *(v3 + 520) = v23 + 1;
  *(v22 + 8 * v23) = v21;
  v21[6] = CFRetain(a2);
  CFDictionaryAddValue(*(v3 + 536), a2, v21);
  return v21;
}

void C3DFXPassBindInputWithSemantic(uint64_t a1, const void *a2, int a3)
{
  v6 = C3DFXPassAddInputWithName(a1, a2);
  C3DFXPassInputSetSymbolName(v6, a2);
  *(v6 + 8) = a3;
  if ((a3 - 20) <= 8)
  {
    *(v6 + 4) = 1;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    v8 = CFGetTypeID(v7);
    if (v8 == C3DFXGLSLProgramGetTypeID(v8, v9))
    {
      UniformIndex = C3DFXGLSLProgramGetUniformIndex(*(a1 + 88), a2);
      if (UniformIndex == -1)
      {
        NextUniformIndex = C3DFXGLSLProgramGetNextUniformIndex(*(a1 + 88), v11);
        v6[5] = NextUniformIndex;
        v13 = *(a1 + 88);

        C3DFXGLSLProgramSetUniformIndex(v13, a2, NextUniformIndex);
      }

      else
      {
        v6[5] = UniformIndex;
      }
    }
  }
}

const void *C3DFXPassGetInputWithName(_BOOL8 IsMainPass_cold_2, void *key)
{
  v3 = IsMainPass_cold_2;
  if (!IsMainPass_cold_2 && (v4 = scn_default_log(0, key), IsMainPass_cold_2 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DFXContextIsMainPass_cold_2(v4, key, v5, v6, v7, v8, v9, v10);
    if (key)
    {
      return CFDictionaryGetValue(*(v3 + 536), key);
    }
  }

  else if (key)
  {
    return CFDictionaryGetValue(*(v3 + 536), key);
  }

  v11 = scn_default_log(IsMainPass_cold_2, key);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DFXPassAddInputWithName_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  return CFDictionaryGetValue(*(v3 + 536), key);
}

void C3DFXPassInitialize(uint64_t *a1, uint64_t a2)
{
  v115 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 187) & 8) != 0)
  {
    v4 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXPassInitialize_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *a1;
  v12 = *(*a1 + 48);
  if (a2 == 1 && v12 || !a2 && *(v11 + 56))
  {
    v14 = C3DFXPassGetDrawInstruction(v11, a2) == 3 || C3DFXPassGetDrawInstruction(*a1, v13) == 6;
    Program = C3DFXPassGetProgram(*a1, v13);
    if (!Program && v14)
    {
      Program = C3DFXPassGetMaterial(*a1, a2);
      if (!Program)
      {
        goto LABEL_19;
      }

      Program = C3DMaterialGetTechnique(Program, a2);
      if (!Program)
      {
        goto LABEL_19;
      }

      v16 = Program;
      Program = C3DFXTechniqueGetPassCount(Program, a2);
      if (Program != 1)
      {
        goto LABEL_19;
      }

      PassAtIndex = C3DFXTechniqueGetPassAtIndex(v16, 0);
      Program = C3DFXPassGetProgram(PassAtIndex, v18);
    }

    if (Program)
    {
      goto LABEL_76;
    }

LABEL_19:
    if (a2 == 1)
    {
      if (!v12 || (Program = C3DFXGLSLProgramCreateWithName(v12)) == 0)
      {
        v19 = scn_default_log(Program, a2);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          C3DFXPassInitialize_cold_4();
        }

        goto LABEL_76;
      }

      goto LABEL_29;
    }

    v20 = *(*a1 + 40);
    if (!v20)
    {
LABEL_55:
      v53 = *a1;
      v54 = *(*a1 + 72);
      if (v54)
      {
        v54 = C3DGetTextResourceWithNameAllowingHotReload(v54);
        v55 = v54;
        v53 = *a1;
      }

      else
      {
        v55 = 0;
      }

      v56 = *(v53 + 56);
      v57 = *(v53 + 64);
      v58 = SCNMetalLanguageVersion(v54, a2);
      v30 = C3DFXMetalProgramCreateFromSource(v56, v57, 0, v55, 0, 0, 0, v58, 1);
      C3DFXProgramSetClientProgram(v30, *(*a1 + 80));
      if (!v30)
      {
        v85 = scn_default_log(Program, a2);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          C3DFXPassInitialize_cold_2(a1, v85);
        }

        goto LABEL_76;
      }

LABEL_59:
      if (v14)
      {
        v59 = C3DMaterialCreate(Program, a2);
        C3DMaterialSetDoubleSided(v59, 1);
        C3DFXProgramSetOpaque(v30, 1);
        C3DMaterialSetupSinglePassTechniqueWithProgram(v59, v30);
        Technique = C3DMaterialGetTechnique(v59, v60);
        PassCount = C3DFXTechniqueGetPassCount(Technique, v62);
        if (PassCount != 1)
        {
          v65 = scn_default_log(PassCount, v64);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
          {
            C3DFXPassInitialize_cold_3(v65, v66, v67, v68, v69, v70, v71, v72);
          }
        }

        v73 = C3DFXTechniqueGetPassAtIndex(Technique, 0);
        RenderContext = C3DEngineContextGetRenderContext(a1[3], v74);
        v76 = *a1;
        if (RenderContext)
        {
          v77 = v76[65];
          v73[66] = v77;
          v73[65] = v77;
          v78 = 8 * v77;
          v79 = malloc_type_malloc(8 * v77, 0x33BE6EF2uLL);
          v73[64] = v79;
          memcpy(v79, *(*a1 + 512), v78);
          v80 = v73[65];
          if (v80 >= 1)
          {
            for (i = 0; i < v80; ++i)
            {
              v82 = *(v73[64] + 8 * i);
              if (v82)
              {
                CFRetain(v82);
                v80 = v73[65];
              }
            }
          }
        }

        else
        {
          *(v73 + 65) = *(v76 + 65);
          v73[64] = v76[64];
          v76[66] = 0;
          *(v76 + 32) = 0u;
        }

        C3DFXTechniqueSetParentTechnique(Technique, a1[1]);
        C3DFXPassSetMaterial(*a1, v59);
        CFRelease(v59);
      }

      else
      {
        C3DFXPassSetProgram(*a1, v30);
        IsOpaque = C3DFXPassGetProgramIsOpaque(*a1, v83);
        C3DFXProgramSetOpaque(v30, IsOpaque);
      }

      CFRelease(v30);
      goto LABEL_76;
    }

    v21 = v20[17];
    if (!v21)
    {
      if (!v20[18] && !v20[19])
      {
        goto LABEL_55;
      }

      v31 = C3DEngineContextGetRenderContext(a1[3], a2);
      if (!v31)
      {
        goto LABEL_55;
      }

      v32 = v31;
      if (v20[18])
      {
        v33 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
      }

      else
      {
        v33 = [MEMORY[0x277CCA8D8] mainBundle];
      }

      v46 = v33;
      v47 = v20[19];
      if (v47)
      {
        v48 = [v33 URLForResource:v47 withExtension:@"metallib"];
        if (!v48)
        {
          v51 = scn_default_log(0, v49);
          if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_55;
          }

          v52 = v20[19];
          *buf = 138412546;
          v110 = v52;
          v111 = 2112;
          v112 = v46;
          v38 = "Warning: Unable to find metal library named %@ in bundle %@";
          v41 = v51;
          goto LABEL_42;
        }

        v50 = [-[SCNMTLRenderContext device](v32) newLibraryWithURL:v48 error:0];
      }

      else
      {
        v50 = [-[SCNMTLRenderContext device](v32) newDefaultLibraryWithBundle:v33 error:0];
      }

      v21 = v50;
      if (!v21)
      {
        goto LABEL_55;
      }
    }

    v22 = [v21 functionNames];
    v23 = [v22 containsObject:*(*a1 + 56)];
    v24 = [v22 containsObject:*(*a1 + 64)];
    v26 = v24;
    if (v23 && (v24 & 1) != 0)
    {
      v27 = CFHash(v21);
      v29 = *(*a1 + 56);
      v28 = *(*a1 + 64);
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __C3DFXPassInitialize_block_invoke;
      v108[3] = &__block_descriptor_40_e5_Q8__0l;
      v108[4] = v27;
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __C3DFXPassInitialize_block_invoke_2;
      v107[3] = &unk_278301E10;
      v107[4] = v21;
      Program = C3DFXMetalProgramCreateFromLibrary(v29, v28, 0, v108, v107);
      if (Program)
      {
LABEL_29:
        v30 = Program;
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    v34 = scn_default_log(v24, v25);
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (!v35)
      {
        goto LABEL_55;
      }

      v36 = *(*a1 + 16);
      v37 = *(*a1 + 64);
      *buf = 138412546;
      v110 = v36;
      v111 = 2112;
      v112 = v37;
      v38 = "Warning: Technique for pass %@ has a custom Metal library, but the %@ fragment function is missing";
    }

    else
    {
      if (!v26)
      {
        if (!v35)
        {
          goto LABEL_55;
        }

        v43 = *(*a1 + 16);
        v45 = *(*a1 + 56);
        v44 = *(*a1 + 64);
        *buf = 138412802;
        v110 = v43;
        v111 = 2112;
        v112 = v45;
        v113 = 2112;
        v114 = v44;
        v38 = "Warning: Technique for pass %@ has a custom Metal library, but the %@ and %@ vertex and fragment functions are missing";
        v41 = v34;
        v42 = 32;
        goto LABEL_45;
      }

      if (!v35)
      {
        goto LABEL_55;
      }

      v39 = *(*a1 + 16);
      v40 = *(*a1 + 56);
      *buf = 138412546;
      v110 = v39;
      v111 = 2112;
      v112 = v40;
      v38 = "Warning: Technique for pass %@ has a custom Metal library, but the %@ vertex function is missing";
    }

    v41 = v34;
LABEL_42:
    v42 = 22;
LABEL_45:
    _os_log_impl(&dword_21BEF7000, v41, OS_LOG_TYPE_DEFAULT, v38, buf, v42);
    goto LABEL_55;
  }

LABEL_76:
  v86 = *a1;
  v87 = *(*a1 + 216);
  if (v87)
  {
    v87(a1, a2);
    v86 = *a1;
  }

  v88 = C3DFXPassGetProgram(v86, a2);
  if (a2 == 1)
  {
    v89 = v88;
    if (v88)
    {
      v90 = *a1;
      v91 = CFGetTypeID(v88);
      TypeID = C3DFXGLSLProgramGetTypeID(v91, v92);
      if (v91 == TypeID)
      {
        if (*(v90 + 520) >= 1)
        {
          v95 = 0;
          do
          {
            v96 = *(*(v90 + 512) + 8 * v95);
            if ((*(v96 + 80) & 4) != 0)
            {
              if (!*(v96 + 32))
              {
                v97 = scn_default_log(TypeID, v94);
                if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
                {
                  C3DFXPassInitialize_cold_6(buf, &v110, v97);
                }
              }

              TypeID = C3DVertexAttribFromParameterSemantic(*(v96 + 32), *(v96 + 104));
              if (TypeID != 14)
              {
                C3DFXGLSLProgramSetAttributeIndex(v89, *(v96 + 48), TypeID);
              }
            }

            else
            {
              TypeID = C3DFXGLSLProgramGetUniformIndex(v89, *(v96 + 48));
              if (TypeID == -1)
              {
                NextUniformIndex = C3DFXGLSLProgramGetNextUniformIndex(v89, v94);
                *(v96 + 40) = NextUniformIndex;
                C3DFXGLSLProgramSetUniformIndex(v89, *(v96 + 48), NextUniformIndex);
              }

              else
              {
                *(v96 + 40) = TypeID;
              }
            }

            ++v95;
          }

          while (v95 < *(v90 + 520));
        }
      }

      else
      {
        v99 = scn_default_log(TypeID, v94);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
        {
          C3DFXPassInitialize_cold_5(v99, v100, v101, v102, v103, v104, v105, v106);
        }
      }
    }
  }
}

uint64_t C3DFXPassSetup(uint64_t result)
{
  v1 = *(*result + 224);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t C3DFXPassWillExecute(uint64_t *a1, uint64_t a2)
{
  result = C3DEngineContextGetFXContext(a1[3], a2);
  *(result + 120) = a1[9];
  v4 = *(*a1 + 240);
  if (v4)
  {

    return v4(a1);
  }

  return result;
}

uint64_t C3DFXPassExecute(uint64_t result)
{
  v1 = *(*result + 248);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t C3DFXPassDidExecute(uint64_t result)
{
  v1 = *(*result + 256);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t C3DFXPassReshape(uint64_t result)
{
  v1 = *(*result + 264);
  if (v1)
  {
    return v1();
  }

  return result;
}

void C3DFXPassAddInputsWithDescription(uint64_t a1, CFDictionaryRef theDict, uint64_t a3)
{
  context[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = scn_default_log(0, theDict);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      if (theDict)
      {
        goto LABEL_4;
      }

LABEL_11:
      *(a1 + 520) = 0;
      return;
    }
  }

  if (!theDict)
  {
    goto LABEL_11;
  }

LABEL_4:
  Count = CFDictionaryGetCount(theDict);
  v16 = Count;
  *(a1 + 520) = 0;
  if (Count < 1)
  {
    v17 = 0;
  }

  else
  {
    *(a1 + 512) = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    context[0] = a1;
    context[1] = a3;
    CFDictionaryApplyFunction(theDict, _convertInputsDescriptionToInputs, context);
    v17 = *(a1 + 520);
  }

  if (v17 != v16)
  {
    v18 = scn_default_log(Count, v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      C3DFXPassAddInputsWithDescription_cold_2(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }
}

void _convertInputsDescriptionToInputs(const void *a1, void *a2, _BOOL8 *a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v5 = a3[1];
  v7 = C3DFXPassAddInputWithName(*a3, a1);
  v8 = CFGetTypeID(a2);
  TypeID = CFDictionaryGetTypeID();
  if (v8 == TypeID)
  {
    Value = CFDictionaryGetValue(a2, @"target");
    v12 = CFDictionaryGetValue(a2, @"sampler");
    if (!v12)
    {
      v12 = a2;
    }

    TypeID = C3DTextureSamplerCreateWithPropertyList(v12);
    v7[9] = TypeID;
    a2 = Value;
  }

  if (!a2)
  {
    v13 = scn_default_log(TypeID, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      _convertInputsDescriptionToInputs_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  C3DFXPassInputSetSymbolName(v7, a2);
  if (CFEqual(a2, @"COLOR"))
  {
    v21 = 0;
    *(v7 + 80) |= 1u;
    v22 = *(v6 + 184) | 0x2000000;
LABEL_12:
    *(v6 + 184) = v22;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"DEPTH"))
  {
    v21 = 0;
    *(v7 + 80) |= 2u;
    v22 = *(v6 + 184) | 0x4000000;
    goto LABEL_12;
  }

  Description = C3DFXTechniqueGetDescription(v5, v23);
  if (!Description)
  {
    goto LABEL_22;
  }

  v25 = Description;
  v26 = CFDictionaryGetValue(Description, @"targets");
  if (!v26 || (v21 = CFDictionaryGetValue(v26, a2)) == 0)
  {
    v27 = CFDictionaryGetValue(v25, @"symbols");
    if (v27)
    {
      v29 = CFDictionaryGetValue(v27, a2);
LABEL_21:
      v21 = v29;
      goto LABEL_13;
    }

    if (_convertSemanticStringToSemantic(a2, v28))
    {
      v30 = @"semantic";
      v31[0] = a2;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      goto LABEL_21;
    }

LABEL_22:
    v21 = 0;
  }

LABEL_13:
  _setupInput(v6, v7, a1, v5, v21);
}

void C3DFXPassAddOutputsWithDescription(uint64_t a1, CFDictionaryRef theDict, uint64_t a3)
{
  v26[3] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = scn_default_log(0, theDict);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      if (theDict)
      {
        goto LABEL_4;
      }

LABEL_11:
      *(a1 + 440) = 0;
      return;
    }
  }

  if (!theDict)
  {
    goto LABEL_11;
  }

LABEL_4:
  Count = CFDictionaryGetCount(theDict);
  v16 = Count;
  *(a1 + 440) = 0;
  if (Count < 1)
  {
    v17 = 0;
  }

  else
  {
    *(a1 + 432) = malloc_type_malloc(Count << 6, 0x1060040C031C1FFuLL);
    v26[1] = a3;
    v26[2] = 0;
    v26[0] = a1;
    CFDictionaryApplyFunction(theDict, _convertOutputsDescriptionToOutputs, v26);
    v17 = *(a1 + 440);
  }

  if (v16 < v17)
  {
    v18 = scn_default_log(Count, v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      C3DFXPassAddOutputsWithDescription_cold_2(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }
}

void _convertOutputsDescriptionToOutputs(const void *a1, CFTypeRef cf1, uint64_t *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v5 = a3[1];
  if (CFEqual(cf1, @"COLOR"))
  {
    *(v6 + 184) |= 0xA00000u;
    if (!CFEqual(cf1, @"DEPTH"))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!CFEqual(cf1, @"DEPTH"))
  {
    Description = C3DFXTechniqueGetDescription(v5, v7);
    if (Description)
    {
      v15 = Description;
      Value = CFDictionaryGetValue(Description, @"targets");
      if (Value)
      {
        v17 = CFDictionaryGetValue(Value, cf1);
        if (v17)
        {
LABEL_22:
          v9 = *(v6 + 432) + (*(v6 + 440) << 6);
          *(v9 + 48) = 0;
          *(v9 + 20) = 0;
          *v9 = 1065353216;
          v19 = CFDictionaryGetValue(v17, @"global");
          if (v19 && CFBooleanGetValue(v19))
          {
            *(v9 + 20) = 2147483646;
          }

          v8 = (v6 + 440);
          v20 = CFDictionaryGetValue(v17, @"persistent");
          if (v20 && CFBooleanGetValue(v20))
          {
            *(v9 + 20) = 0x7FFFFFFF;
          }

          v21 = CFDictionaryGetValue(v17, @"clearColor");
          if (v21)
          {
            sscanf([v21 UTF8String], "%f %f %f %f", v9 + 32, v9 + 36, v9 + 40, v9 + 44);
            v10 = 0;
            *(v9 + 48) = 1;
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_7;
        }
      }

      Description = CFDictionaryGetValue(v15, @"symbols");
      if (Description)
      {
        Description = CFDictionaryGetValue(Description, cf1);
        if (Description)
        {
          v17 = Description;
          v18 = scn_default_log(Description, v14);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v27 = cf1;
            _os_log_impl(&dword_21BEF7000, v18, OS_LOG_TYPE_DEFAULT, "Warning: symbol named %@ should be in targets not symbols", buf, 0xCu);
          }

          goto LABEL_22;
        }
      }
    }

    v22 = scn_default_log(Description, v14);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = cf1;
      _os_log_impl(&dword_21BEF7000, v22, OS_LOG_TYPE_DEFAULT, "Warning: _convertOutputsDescriptionToOutputs - can't find output named %@", buf, 0xCu);
    }

    return;
  }

LABEL_5:
  *(v6 + 184) |= 0x1200000u;
LABEL_6:
  v8 = (v6 + 440);
  v9 = *(v6 + 432) + (*(v6 + 440) << 6);
  *(v9 + 48) = 0;
  *(v9 + 20) = 0;
  *v9 = 1065353216;
  v10 = 1;
LABEL_7:
  if (CFEqual(a1, @"color") || CFEqual(a1, @"color0"))
  {
    v11 = 1;
LABEL_10:
    *(v9 + 16) = v11;
    *(v6 + 184) |= 0x200000u;
    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = CFRetain(cf1);
    }

    *(v9 + 8) = v12;
    ++*v8;
    return;
  }

  if (CFEqual(a1, @"color1"))
  {
    v11 = 2;
    goto LABEL_10;
  }

  if (CFEqual(a1, @"color2"))
  {
    v11 = 3;
    goto LABEL_10;
  }

  if (CFEqual(a1, @"color3"))
  {
    v11 = 4;
    goto LABEL_10;
  }

  if (CFEqual(a1, @"depth"))
  {
    v11 = 0;
    goto LABEL_10;
  }

  v23 = CFEqual(a1, @"stencil");
  if (v23)
  {
    v11 = 5;
    goto LABEL_10;
  }

  v25 = scn_default_log(v23, v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    _convertOutputsDescriptionToOutputs_cold_1();
  }
}

uint64_t C3DFXPassRequireFBO(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 184);
  if ((v3 & 0x400000) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = (a3 ^ 1) & (v3 >> 21);
  }

  if (*(a1 + 24))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

BOOL C3DFXPassIsOverridingPrograms(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextIsMainPass_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96) != 0;
}

const void *C3DFXPassGetOverridingProgramHashCode(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  if (!C3DFXPassIsOverridingPrograms(a2, a2))
  {
    return 0;
  }

  v6 = a2[70];
  if (!v6)
  {
    v7 = *(MEMORY[0x277CBF150] + 16);
    *&v55.version = *MEMORY[0x277CBF150];
    *&v55.release = v7;
    v55.equal = *(MEMORY[0x277CBF150] + 32);
    v55.release = C3DProgramHashCodeReleaseCallBack;
    a2[70] = CFDictionaryCreateMutable(0, 0, 0, &v55);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, a2, __RendererElementWillDie, @"kC3DNotificationRendererElementWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v6 = a2[70];
  }

  Value = CFDictionaryGetValue(v6, a3);
  if (!Value)
  {
    Material = C3DFXPassGetMaterial(a2, v9);
    if (Material)
    {
      v13 = Material;
      if (C3DMaterialGetCommonProfileIfNoTechnique(Material, v12))
      {
        Node = C3DRendererElementGetNode(a3);
        if (a1)
        {
          RenderContext = C3DEngineContextGetRenderContext(a1, v14);
          v18 = a3 + 36;
          v17 = a3[36];
          if (RenderContext)
          {
            if ([(SCNMTLRenderContext *)RenderContext reverseZ])
            {
              v19 = -128;
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }

          v24 = (v17 >> 11) & 7;
          CommonProfileConditioners = C3DEngineContextGetCommonProfileConditioners(a1);
          PreferredRenderMode = C3DEngineContextGetPreferredRenderMode(a1);
          v26 = 8 * (PreferredRenderMode & 3);
          if ((PreferredRenderMode & 3) != 0)
          {
            v27 = 32 * (C3DEngineContextGetPreferredMultiVertexOutputStreamGenerator(a1) & 3);
          }

          else
          {
            v27 = 0;
          }

          v22 = v19 | v24 | v26 | v27;
          v23 = C3DEngineContextGetEyeCount(a1) << 16;
        }

        else
        {
          CommonProfileConditioners = 0;
          v18 = a3 + 36;
          v22 = (a3[36] >> 11) & 7;
          v23 = 0x10000;
        }

        v28 = C3DRendererElementGetMaterial(a3, v14);
        Geometry = C3DRendererElementGetGeometry(a3, v29);
        if (!C3DRendererElementIsOpaque(a3) || (v22 & 0x18) != 0) && (C3DFXPassGetDrawOnlyShadowCaster(a2, v31) & 1) != 0 || v28 && (C3DEntityHasShaderModifiers(v28, 0))
        {
          v32 = *v18;
LABEL_35:
          a3[36] = v32 | 0x400;
          v47 = CommonProfileConditioners | (v22 << 24);
          v48 = C3DRendererElementGetGeometry(a3, v31);
          Mesh = C3DRendererElementGetMesh(a3, v49);
          MeshElement = C3DRendererElementGetMeshElement(a3, v51);
          v46 = C3DRendererElementGetMaterial(a3, v53);
          v42 = v47 | v23 | 0x20;
          v43 = Node;
          v44 = v48;
          v45 = Mesh;
          v41 = MeshElement;
LABEL_36:
          Value = C3DProgramHashCodeCreate(v43, v44, v45, v41, 0, v46, v42);
          v54 = a2[70];
          if (Value)
          {
            CFDictionarySetValue(v54, a3, Value);
            CFRelease(Value);
          }

          else
          {
            CFDictionaryRemoveValue(v54, a3);
          }

          return Value;
        }

        if (Geometry)
        {
          v33 = C3DEntityHasShaderModifiers(Geometry, 0) ^ 1;
        }

        else
        {
          v33 = 1;
        }

        if (v28 && v33 && (CommonProfile = C3DMaterialGetCommonProfile(v28, v31), (EffectSlot = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 15, 0)) != 0))
        {
          HasImageOrTexture = C3DEffectSlotHasImageOrTexture(EffectSlot, v31);
          v32 = *v18;
          if (HasImageOrTexture)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v32 = *v18;
          if (!v33)
          {
            goto LABEL_35;
          }
        }

        a3[36] = v32 & 0xFBFF;
        v37 = C3DRendererElementGetGeometry(a3, v31);
        v39 = C3DRendererElementGetMesh(a3, v38);
        v41 = C3DRendererElementGetMeshElement(a3, v40);
        v42 = v23 | (v22 << 24) | CommonProfileConditioners;
        v43 = Node;
        v44 = v37;
        v45 = v39;
        v46 = v13;
        goto LABEL_36;
      }
    }

    return 0;
  }

  return Value;
}

void __RendererElementWillDie(uint64_t a1, uint64_t a2, int a3, void *key)
{
  if (!*(a2 + 560))
  {
    v6 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __RendererElementWillDie_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  CFDictionaryRemoveValue(*(a2 + 560), key);
}

const char *C3DFXPassGetCStringName(uint64_t a1)
{
  result = CFStringGetCStringPtr(*(a1 + 16), 0x8000100u);
  if (!result)
  {
    if (CFStringGetCString(*(a1 + 16), C3DFXPassGetCStringName_cstr, 99, 0x8000100u))
    {
      return C3DFXPassGetCStringName_cstr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t C3DFXPassGetBlendStates(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 104);
}

uint64_t C3DFXPassGetRasterizerStates(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 112);
}

void *C3DFXPassSetInitializeBlock(uint64_t a1, void *aBlock)
{
  if (!a1)
  {
    v4 = scn_default_log(0, aBlock);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = _Block_copy(aBlock);
  *(a1 + 544) = result;
  return result;
}

void *C3DFXPassSetExecuteBlock(uint64_t a1, void *aBlock)
{
  if (!a1)
  {
    v4 = scn_default_log(0, aBlock);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __updateRequireLighting_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = _Block_copy(aBlock);
  *(a1 + 552) = result;
  return result;
}

uint64_t C3DFXPassInstanceGetPass(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return *a1;
  }

  v3 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    C3DEngineContextRenderSubTechnique_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

void _C3DFXPassInputCFFinalize(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    CFRelease(v2);
    a1[9] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
    a1[7] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
    a1[8] = 0;
  }

  v5 = a1[12];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }
}

__CFArray *_C3DFXPassInputCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF128]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = 2;
  valuePtr = 5;
  v16 = a1 + 72;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v3, @"name", @"sampler");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = 2;
  valuePtr = 5;
  v16 = a1 + 56;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v10 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v7, @"name", @"symbolName");
  CFDictionarySetValue(v7, @"type", v8);
  CFDictionarySetValue(v7, @"address", v10);
  CFDictionarySetValue(v7, @"semantic", v9);
  CFArrayAppendValue(Mutable, v7);
  CFRelease(v9);
  CFRelease(v7);
  CFRelease(v10);
  CFRelease(v8);
  v11 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = 2;
  valuePtr = 5;
  v16 = a1 + 48;
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v14 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v11, @"name", @"uniformName");
  CFDictionarySetValue(v11, @"type", v12);
  CFDictionarySetValue(v11, @"address", v14);
  CFDictionarySetValue(v11, @"semantic", v13);
  CFArrayAppendValue(Mutable, v11);
  CFRelease(v13);
  CFRelease(v11);
  CFRelease(v14);
  CFRelease(v12);
  return Mutable;
}

void _C3DFXPassCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    v27 = a1;
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    v31 = 0xBFF0000000000000;
    v3 = *(a1 + 280);
    v34 = 0;
    v32 = v3;
    v33 = 0;
    v35 = 0;
    v2(&v27);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationPassWillDie", a1, 0, 1u);
  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 16) = 0;
  }

  v6 = *(a1 + 536);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 536) = 0;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 48) = 0;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 56) = 0;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 64) = 0;
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 72) = 0;
  }

  v11 = *(a1 + 88);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 88) = 0;
  }

  v12 = *(a1 + 96);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 96) = 0;
  }

  v13 = *(a1 + 104);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 104) = 0;
  }

  C3DRasterizerStatesRelease(*(a1 + 112));
  v14 = *(a1 + 456);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 456) = 0;
  }

  v15 = *(a1 + 472);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 472) = 0;
  }

  v16 = *(a1 + 464);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 464) = 0;
  }

  if (*(a1 + 560))
  {
    v17 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(v17, a1, @"kC3DNotificationRendererElementWillDie", 0);
    v18 = *(a1 + 560);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 560) = 0;
    }
  }

  if (*(a1 + 520) >= 1)
  {
    v19 = 0;
    do
    {
      CFRelease(*(*(a1 + 512) + 8 * v19++));
    }

    while (*(a1 + 520) > v19);
  }

  v20 = *(a1 + 440);
  if (v20)
  {
    v21 = 0;
    v22 = *(a1 + 432);
    v23 = 8;
    do
    {
      v24 = *(v22 + v23);
      if (v24)
      {
        CFRelease(v24);
        v22 = *(a1 + 432);
        *(v22 + v23) = 0;
        v20 = *(a1 + 440);
      }

      ++v21;
      v23 += 64;
    }

    while (v21 < v20);
  }

  free(*(a1 + 512));
  free(*(a1 + 432));
  v25 = *(a1 + 544);
  if (v25)
  {
    _Block_release(v25);
  }

  v26 = *(a1 + 552);
  if (v26)
  {
    _Block_release(v26);
  }
}

__CFArray *_C3DFXPassCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 16;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v5, @"name", @"name");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 88;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v9, @"name", @"program");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v39 = 0;
  valuePtr = 2;
  v38 = a1 + 24;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v13, @"name", @"draw");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 448;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v17, @"name", @"pointOfView");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  v21 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 456;
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v24 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v21, @"name", @"rootNode");
  CFDictionarySetValue(v21, @"type", v22);
  CFDictionarySetValue(v21, @"address", v24);
  CFDictionarySetValue(v21, @"semantic", v23);
  CFArrayAppendValue(Mutable, v21);
  CFRelease(v23);
  CFRelease(v21);
  CFRelease(v24);
  CFRelease(v22);
  v25 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 472;
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v28 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v25, @"name", @"mirrorNode");
  CFDictionarySetValue(v25, @"type", v26);
  CFDictionarySetValue(v25, @"address", v28);
  CFDictionarySetValue(v25, @"semantic", v27);
  CFArrayAppendValue(Mutable, v25);
  CFRelease(v27);
  CFRelease(v25);
  CFRelease(v28);
  CFRelease(v26);
  v29 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 96;
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v32 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v29, @"name", @"material");
  CFDictionarySetValue(v29, @"type", v30);
  CFDictionarySetValue(v29, @"address", v32);
  CFDictionarySetValue(v29, @"semantic", v31);
  CFArrayAppendValue(Mutable, v29);
  CFRelease(v31);
  CFRelease(v29);
  CFRelease(v32);
  CFRelease(v30);
  v33 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v39 = 2;
  valuePtr = 5;
  v38 = a1 + 536;
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &v39);
  v36 = CFNumberCreate(0, kCFNumberLongType, &v38);
  CFDictionarySetValue(v33, @"name", @"nameToInput");
  CFDictionarySetValue(v33, @"type", v34);
  CFDictionarySetValue(v33, @"address", v36);
  CFDictionarySetValue(v33, @"semantic", v35);
  CFArrayAppendValue(Mutable, v33);
  CFRelease(v35);
  CFRelease(v33);
  CFRelease(v36);
  CFRelease(v34);
  return Mutable;
}

uint64_t _stencilOpNameToOp(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"keep"))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 4;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 5;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 6;
  }

  isEqualToString = objc_msgSend_isEqualToString_(a1);
  if (isEqualToString)
  {
    return 7;
  }

  v7 = scn_default_log(isEqualToString, v6);
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _depthFuncNameToDepthFunc_cold_1();
    return 0;
  }

  return result;
}

uint64_t _blendFactorFromString(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"zero"))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 4;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 5;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 6;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 7;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 8;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 9;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 10;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 11;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 12;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 13;
  }

  isEqualToString = objc_msgSend_isEqualToString_(a1);
  if ((isEqualToString & 1) == 0)
  {
    v7 = scn_default_log(isEqualToString, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _blendFactorFromString_cold_1();
    }

    return 1;
  }

  return 14;
}

uint64_t _blendOpFromString(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"add"))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 3;
  }

  isEqualToString = objc_msgSend_isEqualToString_(a1);
  if (isEqualToString)
  {
    return 4;
  }

  v7 = scn_default_log(isEqualToString, v6);
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _blendOpFromString_cold_1();
    return 0;
  }

  return result;
}

void _setupInput(_BOOL8 IsMainPass_cold_2, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!IsMainPass_cold_2 && (v8 = scn_default_log(0, a2), IsMainPass_cold_2 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DFXContextIsMainPass_cold_2(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(IsMainPass_cold_2, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCreateCopy_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  *(a2 + 16) = 0;
  v23 = [a5 valueForKey:@"semantic"];
  if (v23)
  {
    v25 = _convertSemanticStringToSemantic(v23, v24);
    if (v25)
    {
      v26 = v25;
      *(a2 + 32) = v25;
      v27 = [objc_msgSend(a5 valueForKey:{@"channel", "intValue"}];
      *(a2 + 104) = v27;
      if (C3DVertexAttribFromParameterSemantic(v26, v27) != 14)
      {
        *(a2 + 80) |= 4u;
      }
    }

    return;
  }

  if ((*(a2 + 80) & 3) != 0)
  {
LABEL_11:
    *(a2 + 16) = 1;
    return;
  }

  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"type");
    if (Value)
    {
      v30 = Value;
      if (CFEqual(Value, @"color") || CFEqual(v30, @"depth") || CFEqual(v30, @"stencil"))
      {
        goto LABEL_11;
      }

      *(a2 + 16) = 2;
      *(a2 + 24) = C3DBaseTypeArraySizeFromString(v30);
      *(a2 + 20) = C3DBaseTypeFromMetalOrGLSLString(v30);
      v48 = 0;
      ValueOffsetForSymbol = C3DFXTechniqueGetValueOffsetForSymbol(a4, *(a2 + 56), &v48, 0);
      *(a2 + 88) = ValueOffsetForSymbol;
      if (ValueOffsetForSymbol == -1)
      {
        *(a2 + 16) = 0;
      }

      else
      {
        v33 = v48;
        if (v48 != *(a2 + 20))
        {
          v34 = scn_default_log(ValueOffsetForSymbol, v32);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            _setupInput_cold_3(v34, v35, v36, v37, v38, v39, v40, v41);
          }

          v33 = *(a2 + 20);
        }

        if (v33 == 5)
        {
          v42 = [a5 valueForKey:@"image"];
          if (v42)
          {
            v43 = C3DImageCreateWithName(v42);
            if (v43)
            {
              v44 = v43;
              v45 = C3DFXSamplerCreate(v43);
              C3DFXSamplerSetImage(v45, v44);
              CFRelease(v44);
              C3DFXTechniqueSetValueForSymbol(a4, *(a2 + 56), v45);
              CFRelease(v45);
            }
          }
        }
      }
    }

    else
    {
      v47 = scn_default_log(0, v29);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        _setupInput_cold_4();
      }
    }
  }

  else
  {
    v46 = scn_default_log(0, v24);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      _setupInput_cold_5();
    }
  }
}

uint64_t _convertSemanticStringToSemantic(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"vertex"))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 4;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 5;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 6;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 7;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 8;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 9;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 10;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 11;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 12;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 13;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 14;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 15;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 16;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 17;
  }

  return 0;
}

__CFString *C3DBlendFactorToString(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 0xF)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DBlendFactorToString_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return str_BlendModes[v2];
}

__CFString *C3DBlendOpToString(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 5)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DBlendOpToString_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return str_BlendOps[v2];
}

__CFString *_C3DBlendStatesCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<C3DBlendStates %p targetCount:%d needsBlendColor:%d\n", a1, *(a1 + 48), *(a1 + 56));
  if (*(a1 + 48) >= 1)
  {
    v4 = 0;
    v5 = (a1 + 23);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      if (*(v5 - 6))
      {
        v9 = *v5;
        v10 = a1;
        v11 = Mutable;
        v12 = *(v5 - 1);
        v13 = *(v5 - 2);
        v14 = "true";
        if ((*(v5 - 7) & 1) == 0)
        {
          v14 = "false";
        }

        v37 = v14;
        v15 = C3DBlendFactorToString(v6, v3);
        v17 = C3DBlendOpToString(v8, v16);
        v19 = C3DBlendFactorToString(v7, v18);
        v21 = C3DBlendFactorToString(v13, v20);
        v23 = C3DBlendOpToString(v9, v22);
        v24 = v12;
        Mutable = v11;
        a1 = v10;
        v36 = C3DBlendFactorToString(v24, v25);
        CFStringAppendFormat(Mutable, 0, @"  blend:%s col[(src * %@) %@ (dst * %@)] alpha[(src * %@) %@ (dst * %@)]\n", v37, v15, v17, v19, v21, v23, v36);
      }

      else
      {
        if (*(v5 - 7))
        {
          v26 = "true";
        }

        else
        {
          v26 = "false";
        }

        v27 = C3DBlendFactorToString(v6, v3);
        v29 = C3DBlendOpToString(v8, v28);
        v32 = C3DBlendFactorToString(v7, v30);
        CFStringAppendFormat(Mutable, 0, @"  blend:%s col[(src * %@) %@ (dst * %@)]\n", v26, v27, v29, v32, v33, v34, v35);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < *(a1 + 48));
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t __C3DBlendStatesGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DBlendStatesGetTypeID_typeID = result;
  return result;
}

uint64_t C3DBlendStatesCreate(uint64_t a1, uint64_t a2)
{
  if (C3DBlendStatesGetTypeID_onceToken != -1)
  {
    C3DBlendStatesCreate_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DBlendStatesGetTypeID_typeID, 48);
  if (a2 > 3)
  {
    return 0;
  }

  *(result + 48) = a2;
  if (a2 < 1)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0;
    v7 = (result + 16);
    v8 = (a1 + 2);
    do
    {
      *v7 = *(v8 - 1);
      if (*(v8 - 2) == 1)
      {
        v5.i16[0] = *v8;
        v5.i64[1] = v5.i64[0];
        *v5.i8 = vceq_s8(vqtbl1_s8(v5, 0x101000000000101), 0xC0A0D0B0C0A0D0BLL);
        v5.i8[0] = vmaxv_u8(*v5.i8);
        v6 |= v5.i32[0];
        if (*(v8 - 1) == 1)
        {
          v5.i16[0] = *(v8 + 3);
          v5.i64[1] = v5.i64[0];
          *v5.i8 = vceq_s8(vqtbl1_s8(v5, 16843009), 0xC0A0D0B0C0A0D0BLL);
          v5.i8[0] = vmaxv_u8(*v5.i8);
          v6 |= v5.i32[0];
        }
      }

      v8 += 4;
      ++v7;
      --a2;
    }

    while (a2);
  }

  *(result + 56) = v6 & 1;
  return result;
}

uint64_t C3DBlendStatesGetDesc(_BOOL8 Desc_cold_1, uint64_t a2)
{
  v3 = Desc_cold_1;
  if (!Desc_cold_1)
  {
    v4 = scn_default_log(0, a2);
    Desc_cold_1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (Desc_cold_1)
    {
      C3DBlendStatesGetDesc_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(v3 + 48) <= a2)
  {
    v11 = scn_default_log(Desc_cold_1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DBlendStatesGetDesc_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return *(v3 + 8 * a2 + 16);
}

uint64_t C3DBlendStatesNeedsConstantColor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DBlendStatesGetDesc_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 56);
}

uint64_t C3DBlendStatesDefaultAdditive(uint64_t a1, uint64_t a2)
{
  if (C3DBlendStatesDefaultAdditive_onceToken != -1)
  {
    C3DBlendStatesDefaultAdditive_cold_1();
  }

  return C3DBlendStatesDefaultAdditive_states;
}

uint64_t __C3DBlendStatesDefaultAdditive_block_invoke()
{
  v1 = 0x1010001010001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultAdditive_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultMultiplicative(uint64_t a1, uint64_t a2)
{
  if (C3DBlendStatesDefaultMultiplicative_onceToken != -1)
  {
    C3DBlendStatesDefaultMultiplicative_cold_1();
  }

  return C3DBlendStatesDefaultMultiplicative_states;
}

uint64_t __C3DBlendStatesDefaultMultiplicative_block_invoke()
{
  v1 = 0x2000002000001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultMultiplicative_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultMultiplicativeSeparate(uint64_t a1, uint64_t a2)
{
  if (C3DBlendStatesDefaultMultiplicativeSeparate_onceToken != -1)
  {
    C3DBlendStatesDefaultMultiplicativeSeparate_cold_1();
  }

  return C3DBlendStatesDefaultMultiplicativeSeparate_states;
}

uint64_t __C3DBlendStatesDefaultMultiplicativeSeparate_block_invoke()
{
  v1 = 0x10002000101;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultMultiplicativeSeparate_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultOver(uint64_t a1, uint64_t a2)
{
  if (C3DBlendStatesDefaultOver_onceToken != -1)
  {
    C3DBlendStatesDefaultOver_cold_1();
  }

  return C3DBlendStatesDefaultOver_states;
}

uint64_t __C3DBlendStatesDefaultOver_block_invoke()
{
  v1 = 0x5010005010001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultOver_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultOverBlack(uint64_t a1, uint64_t a2)
{
  if (C3DBlendStatesDefaultOverBlack_onceToken != -1)
  {
    C3DBlendStatesDefaultOverBlack_cold_1();
  }

  return C3DBlendStatesDefaultOverBlack_states;
}

uint64_t __C3DBlendStatesDefaultOverBlack_block_invoke()
{
  v1 = 0x5000005000001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultOverBlack_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultReplace(uint64_t a1, uint64_t a2)
{
  if (C3DBlendStatesDefaultReplace_onceToken != -1)
  {
    C3DBlendStatesDefaultReplace_cold_1();
  }

  return C3DBlendStatesDefaultReplace_states;
}

uint64_t __C3DBlendStatesDefaultReplace_block_invoke()
{
  v1 = 0x10000010000;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultReplace_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultSubtract(uint64_t a1, uint64_t a2)
{
  if (C3DBlendStatesDefaultSubtract_onceToken != -1)
  {
    C3DBlendStatesDefaultSubtract_cold_1();
  }

  return C3DBlendStatesDefaultSubtract_states;
}

uint64_t __C3DBlendStatesDefaultSubtract_block_invoke()
{
  v1 = 0x1000201010101;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultSubtract_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultMax(uint64_t a1, uint64_t a2)
{
  if (C3DBlendStatesDefaultMax_onceToken != -1)
  {
    C3DBlendStatesDefaultMax_cold_1();
  }

  return C3DBlendStatesDefaultMax_states;
}

uint64_t __C3DBlendStatesDefaultMax_block_invoke()
{
  v1 = 0x401010401010001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultMax_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultScreen(uint64_t a1, uint64_t a2)
{
  if (C3DBlendStatesDefaultScreen_onceToken != -1)
  {
    C3DBlendStatesDefaultScreen_cold_1();
  }

  return C3DBlendStatesDefaultScreen_states;
}

uint64_t __C3DBlendStatesDefaultScreen_block_invoke()
{
  v1 = 0x5010003010101;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultScreen_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultConstantAlpha(uint64_t a1, uint64_t a2)
{
  if (C3DBlendStatesDefaultConstantAlpha_onceToken != -1)
  {
    C3DBlendStatesDefaultConstantAlpha_cold_1();
  }

  return C3DBlendStatesDefaultConstantAlpha_states;
}

uint64_t __C3DBlendStatesDefaultConstantAlpha_block_invoke()
{
  v1 = 0xD0C000D0C0001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultConstantAlpha_states = result;
  return result;
}

uint64_t C3DBlendStatesDefaultConstantColor(uint64_t a1, uint64_t a2)
{
  if (C3DBlendStatesDefaultConstantColor_onceToken != -1)
  {
    C3DBlendStatesDefaultConstantColor_cold_1();
  }

  return C3DBlendStatesDefaultConstantColor_states;
}

uint64_t __C3DBlendStatesDefaultConstantColor_block_invoke()
{
  v1 = 0xB0A000B0A0001;
  result = C3DBlendStatesCreate(&v1, 1);
  C3DBlendStatesDefaultConstantColor_states = result;
  return result;
}

__n128 C3DTransformSetMatrix(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 92) = 8;
  return result;
}

__n128 C3DTransformGetMatrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  if ((*(a1 + 92) & 8) == 0)
  {
    _updateMatrix(a1, a3);
  }

  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

float32x4_t _updateMatrix(uint64_t updated, uint64_t a2)
{
  v2 = updated;
  if ((*(updated + 92) & 4) == 0)
  {
    v3 = scn_default_log(updated, a2);
    updated = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (updated)
    {
      _updateMatrix_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(v2 + 92) & 8) != 0)
  {
    v10 = scn_default_log(updated, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _updateMatrix_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = MEMORY[0x277D860B8];
  if ((*(v2 + 92) & 3) == 2)
  {
    v20 = *(v2 + 64);
    v21 = vmulq_f32(v20, v20);
    v22 = v21.f32[2] + vaddv_f32(*v21.f32);
    if (v22 <= 0.000000001)
    {
      v19 = *(MEMORY[0x277D860B8] + 48);
    }

    else
    {
      v40 = v22;
      v41 = *(v2 + 64);
      v23 = __sincosf_stret(vmuls_lane_f32(0.5, v20, 3));
      v24 = vrsqrte_f32(LODWORD(v40));
      v25 = vmul_f32(v24, vrsqrts_f32(LODWORD(v40), vmul_f32(v24, v24)));
      v19 = vmulq_n_f32(vmulq_n_f32(v41, vmul_f32(v25, vrsqrts_f32(LODWORD(v40), vmul_f32(v25, v25))).f32[0]), v23.__sinval);
      v19.i32[3] = LODWORD(v23.__cosval);
    }
  }

  else if ((*(v2 + 92) & 3) != 0)
  {
    v42 = *(v2 + 64);
    v26 = __sincosf_stret(0.5 * v42.f32[0]);
    v27 = __sincosf_stret(vmuls_lane_f32(0.5, *v42.f32, 1));
    v28 = __sincosf_stret(vmuls_lane_f32(0.5, v42, 2));
    v19.f32[0] = (v26.__sinval * (v27.__cosval * v28.__cosval)) - (v26.__cosval * (v27.__sinval * v28.__sinval));
    v19.f32[1] = (v28.__sinval * (v26.__sinval * v27.__cosval)) + ((v26.__cosval * v27.__sinval) * v28.__cosval);
    v19.f32[2] = (v28.__cosval * -(v26.__sinval * v27.__sinval)) + ((v26.__cosval * v27.__cosval) * v28.__sinval);
    v19.f32[3] = (v26.__sinval * (v27.__sinval * v28.__sinval)) + (v26.__cosval * (v27.__cosval * v28.__cosval));
  }

  else
  {
    v19 = *(v2 + 64);
  }

  v29 = *v18;
  v30 = v18[1];
  v31 = v18[2];
  v32 = vmulq_f32(v19, v19);
  v33 = vaddq_f32(v32, v32);
  v34 = vmulq_laneq_f32(v19, v19, 3);
  v35 = vmuls_lane_f32(v19.f32[0], *v19.f32, 1);
  v36 = vmuls_lane_f32(v19.f32[1], v19, 2);
  v37 = vmuls_lane_f32(v19.f32[0], v19, 2);
  v29.f32[0] = (1.0 - v33.f32[1]) - v33.f32[2];
  v29.f32[1] = (v35 + v34.f32[2]) + (v35 + v34.f32[2]);
  v29.f32[2] = (v37 - v34.f32[1]) + (v37 - v34.f32[1]);
  v30.f32[0] = (v35 - v34.f32[2]) + (v35 - v34.f32[2]);
  v33.f32[0] = 1.0 - v33.f32[0];
  v30.f32[1] = v33.f32[0] - v33.f32[2];
  v30.f32[2] = (v36 + v34.f32[0]) + (v36 + v34.f32[0]);
  v31.f32[0] = (v37 + v34.f32[1]) + (v37 + v34.f32[1]);
  v31.f32[1] = (v36 - v34.f32[0]) + (v36 - v34.f32[0]);
  v38 = *(v2 + 80);
  v31.f32[2] = v33.f32[0] - v33.f32[1];
  result = vaddq_f32(*(v2 + 48), v18[3]);
  result.i32[3] = HIDWORD(*&v18[3]);
  *v2 = vmulq_n_f32(v29, v38.f32[0]);
  *(v2 + 16) = vmulq_lane_f32(v30, *v38.f32, 1);
  *(v2 + 32) = vmulq_laneq_f32(v31, v38, 2);
  *(v2 + 48) = result;
  *(v2 + 92) = v38.i32[3] | 8;
  return result;
}

uint64_t C3DTransformGetMatrixPtr(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 92) & 8) == 0)
  {
    _updateMatrix(a1, a2);
  }

  return a1;
}

void C3DTransformGetQuaternion(float32x4_t *a1, uint64_t a2)
{
  v3 = a1[5].i32[3];
  if ((v3 & 4) == 0)
  {
    _updateAffine(a1, a2);
    v3 = a1[5].i32[3];
  }

  v4 = v3 & 3;
  if (v4 == 2)
  {
    v5 = a1[4];
    v6 = vmulq_f32(v5, v5);
    if ((v6.f32[2] + vaddv_f32(*v6.f32)) > 0.000000001)
    {
      __sincosf_stret(vmuls_lane_f32(0.5, v5, 3));
    }
  }

  else if (v4)
  {
    v7 = a1[4];
    __sincosf_stret(0.5 * v7.f32[0]);
    __sincosf_stret(vmuls_lane_f32(0.5, *v7.f32, 1));
    __sincosf_stret(vmuls_lane_f32(0.5, v7, 2));
  }
}

BOOL _updateAffine(uint64_t updated, uint64_t a2)
{
  v2 = updated;
  if ((*(updated + 92) & 8) == 0)
  {
    v3 = scn_default_log(updated, a2);
    updated = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (updated)
    {
      _updateAffine_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(v2 + 92) & 4) != 0)
  {
    v10 = scn_default_log(updated, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _updateAffine_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  result = C3DMatrix4x4GetAffineTransforms(v2, 0, (v2 + 64), (v2 + 80));
  *(v2 + 92) = *(v2 + 92) & 0xFFFFFFF8 | 4;
  return result;
}

void C3DTransformSetQuaternion(__n128 *result, __n128 a2, uint64_t a3)
{
  v4 = result[5].n128_u32[3];
  if ((v4 & 4) == 0)
  {
    v5 = a2;
    _updateAffineScale(result, a3);
    a2 = v5;
    v4 = result[5].n128_u32[3];
  }

  result[5].n128_u32[3] = v4 & 0xFFFFFFF4;
  result[4] = a2;
}

void _updateAffineScale(_BOOL8 updated, uint64_t a2)
{
  v2 = updated;
  if ((*(updated + 92) & 8) == 0)
  {
    v3 = scn_default_log(updated, a2);
    updated = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (updated)
    {
      _updateAffineScale_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((v2[5].i8[12] & 4) != 0)
  {
    v10 = scn_default_log(updated, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _updateAffineScale_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  C3DMatrix4x4GetScale(v2, v2 + 5);
  v2[5].i32[3] |= 4u;
}

__n128 C3DTransformGetEuler(float32x4_t *a1, uint64_t a2)
{
  v3 = a1[5].i32[3];
  if ((v3 & 4) == 0)
  {
    _updateAffine(a1, a2);
    v3 = a1[5].i32[3];
  }

  DWORD2(v8) = 0;
  *&v8 = 0;
  v4 = v3 & 3;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      C3DVector3MakeEulerFromAxisAngle(a1[4]);
      v8 = v6;
    }

    v5 = &v8;
  }

  else if (v4)
  {
    v5 = a1 + 4;
  }

  else
  {
    v5 = &v8;
    C3DQuaternionGetEuler(a1 + 4, &v8);
  }

  return *v5;
}

void C3DTransformSetEuler(__n128 *a1, uint64_t a2, __n128 a3)
{
  v4 = a1[5].n128_u32[3];
  if ((v4 & 4) == 0)
  {
    v5 = a3;
    _updateAffineScale(a1, a2);
    a3 = v5;
    v4 = a1[5].n128_u32[3];
  }

  a1[5].n128_u32[3] = v4 & 0xFFFFFFF4 | 1;
  a1[4] = a3;
}

void C3DTransformGetAxisAngle(float32x4_t *a1, uint64_t a2)
{
  v3 = a1[5].i32[3];
  if ((v3 & 4) == 0)
  {
    _updateAffine(a1, a2);
    v3 = a1[5].i32[3];
  }

  v4 = 0uLL;
  v6 = 0u;
  v5 = v3 & 3;
  if (v5 <= 1)
  {
    if (v5)
    {
      *v4.i64 = C3DVector4MakeAxisAngleFromEuler(a1[4]);
    }

    else
    {
      C3DQuaternionGetAxisAngle(a1 + 4, &v6);
      v4 = v6;
    }

    goto LABEL_9;
  }

  if (v5 != 2)
  {
LABEL_9:
    a1[4] = v4;
    a1[5].i32[3] = a1[5].i32[3] & 0xFFFFFFFC | 2;
  }
}

void C3DTransformSetAxisAngle(__n128 *a1, uint64_t a2, __n128 a3)
{
  v4 = a1[5].n128_u32[3];
  if ((v4 & 4) == 0)
  {
    v5 = a3;
    _updateAffineScale(a1, a2);
    a3 = v5;
    v4 = a1[5].n128_u32[3];
  }

  a1[5].n128_u32[3] = v4 & 0xFFFFFFF4 | 2;
  a1[4] = a3;
}

__n128 C3DTransformSetPosition(__n128 *a1, __n128 result)
{
  result.n128_u32[3] = 1.0;
  a1[3] = result;
  return result;
}

__n128 C3DTransformGetScale(__n128 *a1, uint64_t a2)
{
  if ((a1[5].n128_u8[12] & 4) == 0)
  {
    _updateAffine(a1, a2);
  }

  return a1[5];
}

void C3DTransformSetScale(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a1;
  v4 = *(a1 + 92);
  if ((v4 & 4) == 0)
  {
    v23 = a3;
    if ((v4 & 8) == 0)
    {
      v5 = scn_default_log(a1, a2);
      a1 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
      if (a1)
      {
        C3DTransformSetScale_cold_1(v5, a2, v6, v7, v8, v9, v10, v11);
      }
    }

    if ((*(v3 + 92) & 4) != 0)
    {
      v12 = scn_default_log(a1, a2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        C3DTransformSetScale_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    v20 = *(v3 + 16);
    v24[0] = *v3;
    v24[1] = v20;
    v21 = *(v3 + 48);
    v24[2] = *(v3 + 32);
    v24[3] = v21;
    *&v22 = C3DMatrix4x4GetRotation(v24);
    *(v3 + 64) = v22;
    v4 = *(v3 + 92) & 0xFFFFFFF8 | 4;
    a3 = v23;
  }

  *(v3 + 92) = v4 & 0xFFFFFFF7;
  *(v3 + 88) = a3.n128_u32[2];
  *(v3 + 80) = a3.n128_u64[0];
}

double C3DTransformInit(uint64_t a1)
{
  *(a1 + 92) = *(a1 + 92) & 0xFFFFFFF3 | 8;
  *&result = C3DMatrix4x4MakeIdentity(a1).n128_u64[0];
  return result;
}

void C3DTransformGetValue(_BOOL8 Value_cold_1, void *__dst, size_t __n, int a4, unsigned int a5)
{
  v9 = Value_cold_1;
  if (a5 >= 4)
  {
    v10 = scn_default_log(Value_cold_1, __dst);
    Value_cold_1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);
    if (Value_cold_1)
    {
      C3DTransformGetValue_cold_1(v10, __dst, v11, v12, v13, v14, v15, v16);
    }
  }

  if (a4 > 5)
  {
    switch(a4)
    {
      case 6:
        Euler = *(v9 + 48);
        goto LABEL_23;
      case 7:
        if ((*(v9 + 92) & 4) == 0)
        {
          _updateAffine(v9, __dst);
        }

        Euler = *(v9 + 80);
        goto LABEL_23;
      case 8:
        if ((*(v9 + 92) & 8) == 0)
        {
          _updateMatrix(v9, __dst);
        }

        v18 = *(v9 + 16);
        v21[0] = *v9;
        v21[1] = v18;
        v19 = *(v9 + 48);
        v21[2] = *(v9 + 32);
        v21[3] = v19;
        goto LABEL_24;
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        C3DTransformGetQuaternion(v9, __dst);
        goto LABEL_23;
      case 4:
        C3DTransformGetAxisAngle(v9, __dst);
        goto LABEL_23;
      case 5:
        Euler = C3DTransformGetEuler(v9, __dst);
LABEL_23:
        v21[0] = Euler;
LABEL_24:
        memcpy(__dst, v21 + 4 * a5, __n);
        return;
    }
  }

  v20 = scn_default_log(Value_cold_1, __dst);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    C3DTransformGetValue_cold_2(v20);
  }
}

void __setQuaternionValue(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3 != 4)
  {
    if (a3 == 16)
    {
      v7 = *a2;
      goto LABEL_18;
    }

    v8 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __setQuaternionValue_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  C3DTransformGetQuaternion(a1, a2);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      DWORD2(v7) = *a2;
      goto LABEL_18;
    }

    if (v4 == 3)
    {
      HIDWORD(v7) = *a2;
      goto LABEL_18;
    }
  }

  else
  {
    if (!v4)
    {
      LODWORD(v7) = *a2;
      goto LABEL_18;
    }

    if (v4 == 1)
    {
      DWORD1(v7) = *a2;
      goto LABEL_18;
    }
  }

  v18 = v7;
  v16 = scn_default_log(v15, a2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __setQuaternionValue_cold_2();
  }

  v7 = v18;
LABEL_18:
  v17 = *(a1 + 92);
  if ((v17 & 4) == 0)
  {
    v19 = v7;
    _updateAffineScale(a1, a2);
    v17 = *(a1 + 92);
    v7 = v19;
  }

  *(a1 + 92) = v17 & 0xFFFFFFF4;
  *(a1 + 64) = v7;
}

void __setAxisAngleValue(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3 != 4)
  {
    if (a3 == 16)
    {
      v7 = *a2;
      goto LABEL_18;
    }

    v8 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __setQuaternionValue_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  C3DTransformGetAxisAngle(a1, a2);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      DWORD2(v7) = *a2;
      goto LABEL_18;
    }

    if (v4 == 3)
    {
      HIDWORD(v7) = *a2;
      goto LABEL_18;
    }
  }

  else
  {
    if (!v4)
    {
      LODWORD(v7) = *a2;
      goto LABEL_18;
    }

    if (v4 == 1)
    {
      DWORD1(v7) = *a2;
      goto LABEL_18;
    }
  }

  v18 = v7;
  v16 = scn_default_log(v15, a2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __setQuaternionValue_cold_2();
  }

  v7 = v18;
LABEL_18:
  v17 = *(a1 + 92);
  if ((v17 & 4) == 0)
  {
    v19 = v7;
    _updateAffineScale(a1, a2);
    v17 = *(a1 + 92);
    v7 = v19;
  }

  *(a1 + 92) = v17 & 0xFFFFFFF4 | 2;
  *(a1 + 64) = v7;
}

void __setEulerAngleValue(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __n128 a5)
{
  if (a3 >= 0xC)
  {
    a5.n128_u64[0] = *a2;
    a5.n128_u32[2] = *(a2 + 8);
    goto LABEL_17;
  }

  v7 = a4;
  if (a3 != 4)
  {
    v8 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __setQuaternionValue_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  Euler = C3DTransformGetEuler(a1, a2);
  switch(v7)
  {
    case 2:
      v17.n128_u64[0] = Euler.n128_u64[0];
      v17.n128_u32[2] = *a2;
      goto LABEL_13;
    case 1:
      v17.n128_u32[0] = Euler.n128_u32[0];
      v17.n128_u32[1] = *a2;
      goto LABEL_11;
    case 0:
      v17.n128_u32[0] = *a2;
      v17.n128_u32[1] = Euler.n128_u32[1];
LABEL_11:
      v17.n128_u32[2] = Euler.n128_u32[2];
LABEL_13:
      v17.n128_u32[3] = Euler.n128_u32[3];
      a5 = v17;
      goto LABEL_17;
  }

  v20 = Euler;
  v18 = scn_default_log(v15, a2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    __setQuaternionValue_cold_2();
  }

  a5 = v20;
LABEL_17:
  v19 = *(a1 + 92);
  if ((v19 & 4) == 0)
  {
    v21 = a5;
    _updateAffineScale(a1, a2);
    a5 = v21;
    v19 = *(a1 + 92);
  }

  *(a1 + 92) = v19 & 0xFFFFFFF4 | 1;
  *(a1 + 64) = a5;
}

float __setPositionValue(uint64_t a1, unsigned __int32 *a2, unint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = a1;
  if (a3 < 0xC)
  {
    v8 = a4;
    if (a3 != 4)
    {
      v9 = scn_default_log(a1, a2);
      a1 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
      if (a1)
      {
        __setQuaternionValue_cold_1(v9, a2, v10, v11, v12, v13, v14, v15);
      }
    }

    v16 = *(v6 + 48);
    if (v8 == 2)
    {
      v16.n128_u32[2] = *a2;
    }

    else
    {
      if (v8 == 1)
      {
        a5 = *(v6 + 48);
        a5.n128_u32[1] = *a2;
      }

      else
      {
        if (v8)
        {
          v19 = *(v6 + 48);
          v17 = scn_default_log(a1, a2);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __setQuaternionValue_cold_2();
          }

          v16 = v19;
          goto LABEL_16;
        }

        a5.n128_u32[0] = *a2;
        a5.n128_u32[1] = HIDWORD(*(v6 + 48));
      }

      a5.n128_u32[2] = *(v6 + 56);
      v16 = a5;
    }

LABEL_16:
    LODWORD(v7) = 1.0;
    v16.n128_u32[3] = 1.0;
    *(v6 + 48) = v16;
    return *&v7;
  }

  *&v7 = *a2;
  DWORD2(v7) = a2[2];
  HIDWORD(v7) = 1.0;
  *(a1 + 48) = v7;
  return *&v7;
}

void __setScaleValue(_BOOL8 updated, _DWORD *a2, unint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = updated;
  if (a3 < 0xC)
  {
    v7 = a4;
    if (a3 != 4)
    {
      v8 = scn_default_log(updated, a2);
      updated = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
      if (updated)
      {
        __setQuaternionValue_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
      }
    }

    if ((*(v6 + 92) & 4) == 0)
    {
      updated = _updateAffine(v6, a2);
    }

    if (v7 == 2)
    {
      *(v6 + 88) = *a2;
    }

    else if (v7 == 1)
    {
      *(v6 + 84) = *a2;
    }

    else if (v7)
    {
      v15 = scn_default_log(updated, a2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __setQuaternionValue_cold_2();
      }
    }

    else
    {
      *(v6 + 80) = *a2;
    }

    *(v6 + 92) &= ~8u;
  }

  else
  {
    a5.n128_u64[0] = *a2;
    a5.n128_u32[2] = a2[2];

    C3DTransformSetScale(updated, a2, a5);
  }
}

_OWORD *__setTransformValue(_OWORD *result, _OWORD *a2, size_t a3, unsigned int a4)
{
  v4 = result;
  if (a3 == 96)
  {
    v8 = a2[1];
    *result = *a2;
    result[1] = v8;
    v9 = a2[2];
    v10 = a2[3];
    v11 = a2[5];
    result[4] = a2[4];
    result[5] = v11;
    result[2] = v9;
    result[3] = v10;
  }

  else
  {
    if (a3 == 64)
    {
      v5 = a2[1];
      v6 = a2[2];
      v7 = a2[3];
      *result = *a2;
      result[1] = v5;
      result[2] = v6;
      result[3] = v7;
    }

    else
    {
      result = memcpy(result + 4 * a4, a2, a3);
    }

    *(v4 + 23) = 8;
  }

  return result;
}

void __setValueError(uint64_t a1, uint64_t a2)
{
  v2 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __setValueError_cold_1(v2);
  }
}

void C3DTransformSetValue(_BOOL8 a1, unsigned __int32 *a2, unint64_t a3, int a4, uint64_t a5, __n128 a6)
{
  v10 = a1;
  if (a5 >= 4)
  {
    v11 = scn_default_log(a1, a2);
    a1 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DTransformSetValue_cold_1(v11, a2, v12, v13, v14, v15, v16, v17);
    }
  }

  if (a4 > 5)
  {
    if (a4 == 6)
    {
      __setPositionValue(v10, a2, a3, a5, a6);
      return;
    }

    if (a4 != 7)
    {
      if (a4 == 8)
      {
        __setTransformValue(v10, a2, a3, a5);
        return;
      }

      goto LABEL_15;
    }

    __setScaleValue(v10, a2, a3, a5, a6);
  }

  else
  {
    if (a4 == 3)
    {
      __setQuaternionValue(v10, a2, a3, a5);
      return;
    }

    if (a4 != 4)
    {
      if (a4 == 5)
      {
        __setEulerAngleValue(v10, a2, a3, a5, a6);
        return;
      }

LABEL_15:
      __setValueError(a1, a2);
      return;
    }

    __setAxisAngleValue(v10, a2, a3, a5);
  }
}

uint64_t _fxSemanticFromSemanticString(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"kGeometrySourceSemanticVertex"))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 4;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 5;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 6;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 7;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 8;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 9;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 10;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 11;
  }

  return 0;
}

uint64_t _programBindValueForSymbolCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = [a6 _technique];
  if (v12)
  {
    PassAtIndex = C3DFXTechniqueGetPassAtIndex(v12, 0);
    if (C3DFXPassGetInputWithName(PassAtIndex, a2))
    {
      return 1;
    }
  }

  UserInfo = C3DEngineContextGetUserInfo(a1, v13);
  v17 = [SCNNode nodeWithNodeRef:a5];

  return [a6 _bindValueForSymbol:a2 atLocation:a4 programID:a3 node:v17 renderer:UserInfo];
}

const void *_programDelegateUnbindValueForSymbolCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = [a6 _technique];
  if (!v12 || (PassAtIndex = C3DFXTechniqueGetPassAtIndex(v12, 0), (result = C3DFXPassGetInputWithName(PassAtIndex, a2)) == 0))
  {
    UserInfo = C3DEngineContextGetUserInfo(a1, v13);
    v17 = [SCNNode nodeWithNodeRef:a5];

    return [a6 _unbindValueForSymbol:a2 atLocation:a4 programID:a3 node:v17 renderer:UserInfo];
  }

  return result;
}

void _programDelegateHandleErrorCallback(uint64_t a1, __CFError *a2, void *a3)
{
  v4 = [a3 program];
  v5 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = CFErrorCopyUserInfo(a2);
    [v5 program:v4 handleError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"SCNErrorDomain", 1, v6)}];

    CFRelease(v6);
  }
}

void ____arrayOfC3DModifiersFromDictionary_block_invoke(uint64_t a1, void *a2, __CFString *a3)
{
  if (objc_msgSend_isEqualToString_(a2, a2, @"SCNShaderModifierEntryPointGeometry") & 1) != 0 || (objc_msgSend_isEqualToString_(a2) & 1) != 0 || (objc_msgSend_isEqualToString_(a2) & 1) != 0 || (isEqualToString = objc_msgSend_isEqualToString_(a2), (isEqualToString))
  {
    [(__CFString *)a3 rangeOfString:@";"];
    if (v8 != 1)
    {
      v9 = [SCNGetResourceBundle() pathForResource:objc_msgSend(-[__CFString lastPathComponent](a3 ofType:"lastPathComponent") inDirectory:{"stringByDeletingPathExtension"), -[__CFString pathExtension](a3, "pathExtension"), -[__CFString stringByDeletingLastPathComponent](a3, "stringByDeletingLastPathComponent")}];
      if (v9)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v9 encoding:4 error:0];
        if (v10)
        {
          a3 = v10;
        }
      }
    }

    C3DGetShadingLanguageFromSource(&a3->isa);
  }

  v11 = scn_default_log(isEqualToString, v7);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    ____arrayOfC3DModifiersFromDictionary_block_invoke_cold_1();
  }
}

void __setupDefaultArguments(void *a1, __int16 *a2, _BOOL8 a3)
{
  if (!C3DEntityGetValueForKey(a3, a1))
  {

    C3DEntitySetValueForKey(a3, a1, a2);
  }
}

float C3D::OverlayPass::setup(C3D::OverlayPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 8) = "COLOR";
  *(v2 + 66) = *(v2 + 66) & 0xFFFC | 1;
  C3D::Pass::parentColorDesc(&v8, this);
  *(v2 + 16) = v8;
  *(v2 + 32) = v9;
  *(v2 + 66) |= 0x80u;
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v3 + 8) = "COLOR";
  *(v3 + 65) = 0;
  *(v3 + 66) = *(v3 + 66) & 0xFFFC | 1;
  C3D::Pass::parentColorDesc(&v8, this);
  HIWORD(v4) = WORD1(v8);
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(this + 19) = 1;
  *(this + 121) = 1;
  LOWORD(v4) = *(v2 + 16);
  result = v4;
  LOWORD(v6) = *(v2 + 18);
  *&v7 = 0;
  *(&v7 + 1) = __PAIR64__(v6, LODWORD(result));
  *(this + 8) = v7;
  return result;
}

double C3D::OverlayPass::execute(__n128 *a1, uint64_t a2)
{
  v3 = *(C3DEngineContextGetRenderCallbacks(a1[1].n128_i64[0], a2) + 16);
  if (v3)
  {
    v3(a1[1].n128_u64[0]);
  }

  Viewport = 0u;
  if (C3DEngineContextGetEyeCount(a1[1].n128_i64[0]) >= 2)
  {
    Viewport = C3DEngineContextGetViewport(a1[1].n128_u64[0]);
    C3DEngineContextSetViewport(a1[1].n128_u64[0], a1[8], v5);
  }

  UserInfo = C3DEngineContextGetUserInfo(a1[1].n128_i64[0], v4);
  if (UserInfo)
  {
    if ([UserInfo showsStatistics])
    {
      AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(a1[1].n128_i64[0], 0);
      if (AuthoringEnvironment)
      {
        v9 = AuthoringEnvironment;
        C3DAuthoringEnvironmentDrawStats(AuthoringEnvironment, v8);
        C3DAuthoringEnvironmentEndFrame(v9);
      }
    }
  }

  if (C3DEngineContextGetEyeCount(a1[1].n128_i64[0]) >= 2)
  {
    v12 = a1[1].n128_u64[0];

    return C3DEngineContextSetViewport(v12, Viewport, v11);
  }

  return result;
}

uint64_t C3DArrayGetCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DArrayGetCount_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

uint64_t C3DArrayGetCapacity(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DArrayGetCount_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 28);
}

uint64_t C3DArrayGetValuePtrAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DArrayGetCount_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  Count = C3DArrayGetCount(a1, a2);
  if (Count <= a2)
  {
    v13 = scn_default_log(Count, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DArrayGetValuePtrAtIndex_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  return *(a1 + 16) + *(a1 + 32) * a2;
}

uint64_t C3DArrayGetValuesPtr(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DArrayGetCount_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

void C3DArraySetCapacity(uint64_t result, int a2)
{
  v3 = *(result + 28);
  if (v3 != a2)
  {
    __allocate(result, *(result + 32) * v3, (*(result + 32) * a2));
    *(result + 28) = a2;
  }
}

void C3DArraySetCount(_DWORD *result, unsigned int a2)
{
  if (result[6] != a2)
  {
    v4 = result[7];
    if (v4 < a2)
    {
      __allocate(result, result[8] * v4, result[8] * a2);
      result[7] = a2;
    }

    result[6] = a2;
  }
}

uint64_t C3DArrayAppendValue(uint64_t a1, void *__src)
{
  v4 = *(a1 + 24);
  if (v4 == *(a1 + 28))
  {
    v5 = v4 ? 2 * v4 : 4;
    if (v4 != v5)
    {
      __allocate(a1, *(a1 + 32) * v4, (*(a1 + 32) * v5));
      *(a1 + 28) = v5;
      v4 = *(a1 + 24);
    }
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = (v7 * v4);
  v9 = (v6 + v8);
  if (__src)
  {
    memcpy(v9, __src, v7);
  }

  else
  {
    bzero(v9, *(a1 + 32));
  }

  ++*(a1 + 24);
  return v6 + v8;
}

void C3DArrayApply(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DArrayGetCount_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 24))
  {
    v12 = 0;
    do
    {
      (*(a2 + 16))(a2, v12, *(result + 16) + (*(result + 32) * v12));
      ++v12;
    }

    while (v12 < *(result + 24));
  }
}

void __allocate(uint64_t a1, unsigned int a2, size_t size)
{
  v4 = *(a1 + 16);
  if (size)
  {
    v5 = size;
    v6 = size;
    if (v4)
    {
      v8 = malloc_type_realloc(v4, size, 0xB5AD05CDuLL);
      *(a1 + 16) = v8;
      v9 = v5 - a2;
      if (v5 <= a2)
      {
        return;
      }

      v10 = &v8[a2];
    }

    else
    {
      v10 = C3DMallocWithName(size);
      *(a1 + 16) = v10;
      v9 = v6;
    }

    bzero(v10, v9);
  }

  else
  {
    free(v4);
    *(a1 + 16) = 0;
  }
}

uint64_t CATextTruncationModeFromC3DTextTruncationMode(uint64_t a1, uint64_t a2)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = MEMORY[0x277CDA968];
      return *v2;
    }

    if (a1 == 3)
    {
      v2 = MEMORY[0x277CDA970];
      return *v2;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = MEMORY[0x277CDA978];
      return *v2;
    }

    if (a1 == 1)
    {
      v2 = MEMORY[0x277CDA980];
      return *v2;
    }
  }

  v3 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    CATextTruncationModeFromC3DTextTruncationMode_cold_1(v3);
  }

  return 0;
}

uint64_t CATextAlignmentModeFromC3DTextAlignmentMode(uint64_t a1, uint64_t a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v2 = MEMORY[0x277CDA038];
      return *v2;
    }

    if (a1 == 1)
    {
      v2 = MEMORY[0x277CDA030];
      return *v2;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v2 = MEMORY[0x277CDA040];
        return *v2;
      case 3:
        v2 = MEMORY[0x277CDA020];
        return *v2;
      case 4:
        v2 = MEMORY[0x277CDA028];
        return *v2;
    }
  }

  v4 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    CATextTruncationModeFromC3DTextTruncationMode_cold_1(v4);
  }

  return 0;
}

uint64_t __C3DSpanAllocatorGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DSpanAllocatorGetTypeID_typeID = result;
  return result;
}

uint64_t C3DSpanAllocatorCreate(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (C3DSpanAllocatorGetTypeID_onceToken != -1)
  {
    C3DSpanAllocatorCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DSpanAllocatorGetTypeID_typeID, 40);
  *(Instance + 40) = a1;
  *(Instance + 48) = a2;
  *v7 = 0x1000000006;
  v6 = 4;
  if (sysctl(v7, 2u, (Instance + 32), &v6, 0, 0) < 0)
  {
    *(Instance + 32) = 64;
  }

  return Instance;
}

void __DestructPage(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  v5 = *(a1 + 16);
  v4 = (a1 + 16);
  v3 = v5;
  if (v5)
  {
    free(v3);
    *v4 = 0;
    v4[1] = 0;
  }
}

void C3DSpanAllocatorFree(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      __DestructPage(*(a1 + 16) + v2);
      ++v3;
      v2 += 40;
    }

    while (v3 < *(a1 + 24));
  }

  free(*(a1 + 16));
  *(a1 + 36) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

_DWORD *__RemoveFromFreeList(_DWORD *result, uint64_t a2)
{
  v2 = (result[6] - 1);
  result[6] = v2;
  if (v2 != a2)
  {
    return memmove((*(result + 2) + 8 * a2), (*(result + 2) + 8 * a2 + 8), 8 * (v2 - a2));
  }

  return result;
}

void __AddToFreeList(uint64_t result, unint64_t a2)
{
  v2 = WORD1(a2);
  v3 = result;
  *&v41[5] = *MEMORY[0x277D85DE8];
  v39 = a2;
  if (!HIDWORD(a2))
  {
    v4 = scn_default_log(result, a2);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (result)
    {
      __AddToFreeList_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v38 = *(v3 + 24);
  if (!v38)
  {
    v16 = 0;
    v13 = 0;
LABEL_22:
    v27 = *(v3 + 28);
    if (v27 < *(v3 + 24) + 1)
    {
      if (*(v3 + 16))
      {
        v28 = 2 * v27;
        *(v3 + 28) = v28;
        if (!v28)
        {
          v29 = scn_default_log(result, a2);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            __AddToFreeList_cold_3(v29, v30, v31, v32, v33, v34, v35, v36);
          }
        }

        v37 = malloc_type_realloc(*(v3 + 16), 8 * *(v3 + 28), 0x100004000313F17uLL);
      }

      else
      {
        *(v3 + 28) = 8;
        v37 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
      }

      *(v3 + 16) = v37;
    }

    if (HIDWORD(v39) > *(v3 + 32))
    {
      *(v3 + 32) = HIDWORD(v39);
    }

    if (v16)
    {
      memmove((*(v3 + 16) + 8 * v13 + 8), (*(v3 + 16) + 8 * v13), 8 * (v38 - v13));
    }

    *(*(v3 + 16) + 8 * v13) = v39;
    ++*(v3 + 24);
    return;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v2;
  v15 = &v39;
  v16 = 1;
  while (1)
  {
    v17 = (*(v3 + 16) + v11);
    v18 = *(v17 + 1);
    v19 = *(v17 + 1);
    v20 = *(v15 + 1);
    v21 = *(v15 + 1);
    v22 = v17;
    if (v19 + v18 == v20 || (v22 = v15, v21 + v20 == v18))
    {
      v23 = *v22;
      if (v12 == 1)
      {
        result = __RemoveFromFreeList(v3, v13);
        v17 = v15;
      }

      v24 = (v21 + v19);
      *v17 = v23 | (v24 << 32);
      if (v24 + WORD1(v23) > *(v3 + 8))
      {
        v25 = scn_default_log(result, a2);
        result = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);
        if (result)
        {
          __AddToFreeList_cold_2(buf, v41, v25);
        }
      }

      v26 = *(v17 + 1);
      if (v26 > *(v3 + 32))
      {
        *(v3 + 32) = v26;
      }

      if (++v12 == 2)
      {
        return;
      }

      v18 = *(v17 + 1);
      v14 = WORD1(v39);
      v15 = v17;
    }

    if (v18 > v14)
    {
      break;
    }

    v16 = ++v13 < v38;
    v11 += 8;
    if (v38 == v13)
    {
      v13 = v38;
      break;
    }
  }

  if (!v12)
  {
    goto LABEL_22;
  }
}

unint64_t __AllocateNewSpanInPage(uint64_t NewSpanInPage_cold_1, uint64_t a2)
{
  v2 = a2;
  v3 = NewSpanInPage_cold_1;
  if (*(NewSpanInPage_cold_1 + 32) < a2)
  {
    v4 = scn_default_log(NewSpanInPage_cold_1, a2);
    NewSpanInPage_cold_1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (NewSpanInPage_cold_1)
    {
      __AllocateNewSpanInPage_cold_1(v2, v4);
    }
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    v6 = 0;
    v7 = *(v3 + 16);
    v8 = 2;
    while (1)
    {
      v9 = (v7 + v8);
      v10 = *(v7 + v8 + 2);
      if (v10 >= v2)
      {
        break;
      }

      ++v6;
      v8 += 8;
      if (v5 == v6)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v9 - 1);
    v19 = *v9;
    if (v19 + v2 > *(v3 + 8))
    {
      v22 = scn_default_log(NewSpanInPage_cold_1, a2);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        __AllocateNewSpanInPage_cold_2(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    v30 = *(v3 + 16) + v8;
    v31 = *(v30 + 2) - v2;
    if (v31)
    {
      *v30 += v2;
      *(v30 + 2) = v31;
    }

    else
    {
      __RemoveFromFreeList(v3, v6);
    }

    if (*(v3 + 32) == v10)
    {
      v32 = *(v3 + 24);
      if (v32)
      {
        v33 = 0;
        v34 = (*(v3 + 16) + 4);
        do
        {
          v36 = *v34;
          v34 += 2;
          v35 = v36;
          if (v36 > v33)
          {
            v33 = v35;
          }

          --v32;
        }

        while (v32);
        *(v3 + 32) = v33;
      }

      else
      {
        *(v3 + 32) = 0;
      }
    }
  }

  else
  {
LABEL_8:
    v11 = scn_default_log(NewSpanInPage_cold_1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXPassInitialize_cold_5(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v2 = 0;
    v19 = 0xFFFF;
    v20 = 0xFFFF;
  }

  return (v2 << 32) | (v19 << 16) | v20;
}

void __AllocatePage(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v7 = a4;
  v8 = *(a1 + 40) * a4;
  v9 = malloc_type_malloc(v8, 0xDA7382B5uLL);
  *a2 = v9;
  bzero(v9, v8);
  *(a2 + 8) = a4;
  *(a2 + 12) = a3;

  __AddToFreeList(a2, a3 | (v7 << 32));
}

uint64_t __CreateNewPage(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 24) = v4 + 1;
    v5 = malloc_type_realloc(*(a1 + 16), 40 * (v4 + 1), 0x10A00408EF24B1CuLL);
    *(a1 + 16) = v5;
  }

  else
  {
    v5 = malloc_type_malloc(0x28uLL, 0x10A00408EF24B1CuLL);
    *(a1 + 16) = v5;
    *(a1 + 24) = 1;
  }

  ++*(a1 + 28);
  v6 = v5 + 40 * v4;
  __AllocatePage(a1, v6, v4, a2);
  return v6;
}

unint64_t __AllocateNewSpan(void *NewPage, uint64_t a2, uint64_t *a3)
{
  v5 = NewPage;
  v6 = *(NewPage + 6);
  if (v6)
  {
    NewPage = NewPage[2];
    v7 = v6;
    while (!*NewPage || *(NewPage + 8) < a2)
    {
      NewPage += 5;
      if (!--v7)
      {
        v8 = 0;
        NewPage = 0;
        v9 = 40 * v6;
        do
        {
          v10 = *(v5 + 16);
          v11 = (v10 + v8);
          v12 = *(v10 + v8 + 32);
          if (v12 >= a2)
          {
            if (!*v11)
            {
              __AllocatePage(v5, v11, *(v10 + v8 + 12), v12);
            }

            NewPage = v11;
          }

          v8 += 40;
        }

        while (v9 != v8);
        if (NewPage)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    goto LABEL_18;
  }

LABEL_13:
  v13 = *(v5 + 48);
  if (v13 >= a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = a2;
  }

  if (v14 <= 0x10000)
  {
    NewPage = __CreateNewPage(v5, v14);
LABEL_18:
    if (a3)
    {
      *a3 = NewPage;
    }

    *(v5 + 36) += a2;

    return __AllocateNewSpanInPage(NewPage, a2);
  }

  v16 = scn_default_log(NewPage, v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __AllocateNewSpan_cold_1(v16);
  }

  return 0xFFFFFFFFLL;
}

void __DeallocateSpan(uint64_t a1, unint64_t a2)
{
  v4 = (*(a1 + 16) + 40 * a2);
  if (v4[3] != a2)
  {
    v5 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __DeallocateSpan_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  __AddToFreeList(v4, a2);
  if (v4[8] == v4[2] && *(a1 + 28) >= 2u)
  {
    __DestructPage(v4);
    --*(a1 + 28);
  }
}

uint64_t C3DSpanAllocatorGetElementInSpanAtIndex(_BOOL8 ElementInSpanAtIndex_cold_2, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = ElementInSpanAtIndex_cold_2;
  if (!ElementInSpanAtIndex_cold_2)
  {
    v6 = scn_default_log(0, a2);
    ElementInSpanAtIndex_cold_2 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (ElementInSpanAtIndex_cold_2)
    {
      C3DAllocatorNew_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  if (v4 >= *(v5 + 24))
  {
    v13 = scn_default_log(ElementInSpanAtIndex_cold_2, a2);
    ElementInSpanAtIndex_cold_2 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
    if (ElementInSpanAtIndex_cold_2)
    {
      C3DSpanAllocatorGetElementInSpanAtIndex_cold_2(v13, a2, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = *(v5 + 16) + 40 * v4;
  if (*(v20 + 12) != v4 || *(v20 + 8) <= HIWORD(v4))
  {
    v21 = scn_default_log(ElementInSpanAtIndex_cold_2, a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      C3DSpanAllocatorGetElementInSpanAtIndex_cold_3(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  return *v20 + *(v5 + 40) * (a3 + HIWORD(v4));
}

uint64_t C3DSpanAllocatorEnumerate(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      v6 = *(v4 + 16) + 40 * i;
      if (*(v6 + 24))
      {
        v7 = *(*(v6 + 16) + 2);
        v8 = *(v6 + 8);
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v8 = *(v6 + 8);
        v7 = v8;
        if (v8)
        {
LABEL_7:
          v9 = 0;
          for (j = 0; j < v8; ++j)
          {
            if (j == v7)
            {
              v11 = *(v6 + 16);
              j = v7 + *(v11 + 8 * v9++ + 4) - 1;
              if (v9 >= *(v6 + 24))
              {
                v7 = v8;
              }

              else
              {
                v7 = *(v11 + 8 * v9 + 2);
              }
            }

            else
            {
              result = (*(a2 + 16))(a2, *v6 + *(v4 + 40) * j);
            }

            v8 = *(v6 + 8);
          }
        }
      }
    }
  }

  return result;
}

void fillPositions(std::vector<int> *a1, uint64_t a2, void *a3, int __e, int a5)
{
  v9 = ldexp(1.0, __e);
  v29 = 0u;
  v30 = 0u;
  C3DMeshSourceGetContent(a2, v10, &v29);
  Count = C3DMeshSourceGetCount(a2, v11);
  v14 = Count;
  if (Count != 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2))
  {
    v15 = scn_default_log(Count, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      fillPositions(v15);
    }
  }

  v16 = 3 * v14;
  v17 = a1->__end_ - a1->__begin_;
  v18 = v29;
  std::vector<float>::resize(a1, 3 * v14 + (v17 >> 2));
  if (v14 >= 1)
  {
    v22 = 0;
    v23 = 0;
    v19.f32[0] = v9;
    v26 = v19.f32[0];
    do
    {
      *v19.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v30), v18, v19, v20, *v21.i32);
      if (a5)
      {
        v24 = a1->__begin_ + v17;
        v20 = v26;
        v21 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(*v19.f32, v26)));
        *v24 = v21;
        v19.f32[0] = vmuls_lane_f32(v26, v19, 2);
      }

      else
      {
        v25 = v19;
        AnimCodec::Mesh<float>::point(a3, v22, &v27);
        v24 = a1->__begin_ + v17;
        *v21.i32 = v26;
        *v19.f32 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vsub_f32(*v25.f32, v27), v26)));
        *v24 = v19.i64[0];
        v20 = v28;
        v19.f32[0] = (v25.f32[2] - v28) * v26;
      }

      *(v24 + 2) = llroundf(v19.f32[0]);
      v18 = (v18 + BYTE6(v30));
      ++v22;
      v23 += 3;
      v17 += 12;
    }

    while (v23 < v16);
  }
}

float AnimCodec::Mesh<float>::point@<S0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2) <= a2)
  {
    AnimCodec::Mesh<float>::point();
  }

  v3 = *a1 + 12 * a2;
  *a3 = *v3;
  result = *(v3 + 8);
  *(a3 + 8) = result;
  return result;
}

uint64_t fillMesh(std::vector<int> *a1, uint64_t a2)
{
  PositionSource = C3DMeshGetPositionSource(a2, 0);
  Count = C3DMeshSourceGetCount(PositionSource, v5);
  std::vector<AnimCodec::Vector3<float>>::resize(a1, Count);
  v43 = 0u;
  v44 = 0u;
  C3DMeshSourceGetContent(PositionSource, v7, &v43);
  if (Count >= 1)
  {
    v11 = 0;
    for (i = 0; i != Count; ++i)
    {
      *v8.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v44), (v43 + i * BYTE6(v44)), v8, v9, v10);
      if (0xAAAAAAAAAAAAAAABLL * (a1->__end_ - a1->__begin_) <= i)
      {
        fillMesh();
      }

      v13 = &a1->__begin_[v11];
      *v13 = v8.i64[0];
      v13[2] = v8.i32[2];
      v11 += 3;
    }
  }

  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a2, 0, 0);
  ElementsCount = C3DMeshGetElementsCount(a2, v15);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v17 = &off_21C27F000;
  if (ElementsCount < 1)
  {
    v20 = 0;
  }

  else
  {
    for (j = 0; j != ElementsCount; ++j)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a2, j, 0);
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      C3DMeshElementGetContent(ElementAtIndex, ChannelForSourceWithSemanticAtIndex, &v31);
      v27 = v31;
      v28 = v32;
      v29 = v33;
      v30 = v34;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = ___Z8fillMeshRN9AnimCodec4MeshIfEEP9__C3DMesh_block_invoke;
      v26[3] = &unk_278302158;
      v26[4] = &v39;
      v26[5] = &v35;
      C3DIndicesContentEnumeratePrimitives(&v27, v26, v33);
    }

    v20 = v40[3];
    v17 = &off_21C27F000;
  }

  std::vector<float>::resize(a1 + 1, v20);
  std::vector<float>::resize(a1 + 2, v36[3]);
  v40[3] = 0;
  v36[3] = 0;
  if (ElementsCount >= 1)
  {
    v21 = 0;
    v22 = *(v17 + 189);
    do
    {
      v23 = C3DMeshGetElementAtIndex(a2, v21, 0);
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      C3DMeshElementGetContent(v23, ChannelForSourceWithSemanticAtIndex, &v31);
      v27 = v31;
      v28 = v32;
      v29 = v33;
      v30 = v34;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = v22;
      v25[2] = ___Z8fillMeshRN9AnimCodec4MeshIfEEP9__C3DMesh_block_invoke_2;
      v25[3] = &unk_278302180;
      v25[5] = &v35;
      v25[6] = a1;
      v25[4] = &v39;
      C3DIndicesContentEnumeratePrimitives(&v27, v25, v33);
      ++v21;
    }

    while (ElementsCount != v21);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  return 1;
}

void sub_21C1B0DB4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z8fillMeshRN9AnimCodec4MeshIfEEP9__C3DMesh_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    ++*(*(*(result + 32) + 8) + 24);
    *(*(*(result + 40) + 8) + 24) += a4;
  }

  return result;
}

void *___Z8fillMeshRN9AnimCodec4MeshIfEEP9__C3DMesh_block_invoke_2(void *result, uint64_t a2, int *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v4 = result[6];
    v5 = *(result[4] + 8);
    v6 = *(v5 + 24);
    *(v5 + 24) = v6 + 1;
    v7 = v4[3];
    if (v6 >= (v4[4] - v7) >> 2)
    {
      ___Z8fillMeshRN9AnimCodec4MeshIfEEP9__C3DMesh_block_invoke_2_cold_1();
    }

    *(v7 + 4 * v6) = a4;
    v9 = v4 + 6;
    v8 = v4[6];
    v10 = (v9[1] - v8) >> 2;
    v11 = a4;
    do
    {
      v12 = *(result[5] + 8);
      v13 = *(v12 + 24);
      *(v12 + 24) = v13 + 1;
      if (v10 <= v13)
      {
        ___Z8fillMeshRN9AnimCodec4MeshIfEEP9__C3DMesh_block_invoke_2_cold_2();
      }

      v14 = *a3++;
      *(v8 + 4 * v13) = v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

BOOL SCNEncodeMorpherUsingAnimCodec(void *a1, void *a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = [a2 nodeRef];
  Morpher = C3DNodeGetMorpher(v4, v5);
  BaseGeometry = C3DMorpherGetBaseGeometry(Morpher, v7);
  if (C3DGeometryUsesDeformerBasedDynamicMesh(BaseGeometry))
  {
    return 0;
  }

  v54 = a1;
  Mesh = C3DGeometryGetMesh(BaseGeometry, v9);
  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 0, 0);
  PositionSource = C3DMeshGetPositionSource(Mesh, 0);
  Count = C3DMeshSourceGetCount(PositionSource, v13);
  v66 = 0;
  v64 = 0u;
  *__p = 0u;
  *v62 = 0u;
  *v63 = 0u;
  fillMesh(v62, Mesh);
  OverrideMaterial = C3DGeometryGetOverrideMaterial(Morpher);
  v16 = C3DGeometryGetOverrideMaterial(OverrideMaterial);
  v17 = CFArrayGetCount(v16);
  v61 = 5;
  v53 = v62[1] - v62[0];
  v60 = C3DMorphGetCalculationMode(OverrideMaterial) == 1;
  memset(&v59, 0, sizeof(v59));
  std::vector<unsigned int>::reserve(&v59, 3 * v17 * 0xAAAAAAAAAAAAAAABLL * (v53 >> 2));
  if (v17 >= 1)
  {
    for (i = 0; i != v17; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
      v21 = C3DGeometryGetMesh(ValueAtIndex, v20);
      v22 = C3DMeshGetPositionSource(v21, 0);
      v24 = v22;
      if (v22)
      {
        if (C3DMeshSourceGetCount(v22, v23) == Count)
        {
          fillPositions(&v59, v24, v62, 5, v60);
        }

        else
        {
          IsUsingSparseTargets = C3DMorphIsUsingSparseTargets(OverrideMaterial, v25);
          if ((IsUsingSparseTargets & 1) == 0)
          {
            v30 = scn_default_log(IsUsingSparseTargets, v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              v37 = [a2 name];
              *buf = 136315906;
              v68 = "C3DMorphIsUsingSparseTargets(morph) == true";
              v69 = 2112;
              v70 = v37;
              v71 = 2048;
              v72 = a2;
              v73 = 2048;
              v74 = OverrideMaterial;
              _os_log_fault_impl(&dword_21BEF7000, v30, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Internal consistency error, %@'s (%p) morph %p is not sparse", buf, 0x2Au);
            }
          }

          ElementAtIndex = C3DMeshGetElementAtIndex(v21, 0, 0);
          UnpackedCopy = C3DMeshSourceCreateUnpackedCopy(v24, ElementAtIndex, Count, ChannelForSourceWithSemanticAtIndex, v32, v33, v34, v35);
          fillPositions(&v59, UnpackedCopy, v62, 5, v60);
          if (UnpackedCopy)
          {
            CFRelease(UnpackedCopy);
          }
        }
      }

      else
      {
        v26 = v59.__end_ - v59.__begin_;
        std::vector<float>::resize(&v59, (v53 >> 2) + v59.__end_ - v59.__begin_);
        v27 = v59.__end_ - (v59.__begin_ + v26);
        if (v27 >= 1)
        {
          bzero(v59.__begin_ + v26, v27);
        }
      }
    }
  }

  v38 = v63[1];
  v39 = v64;
  v40 = __p[0];
  v41 = __p[1];
  v42 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v53 * v17 + 1024];
  v43 = [v42 mutableBytes];
  v56 = 0;
  v57 = 0;
  v44 = AnimCodec::AnimEncoder::compress(&v58, v38, v40, v59.__begin_, 3, (0xAAAAAAAAAAAAAAABLL * (v53 >> 2)), ((v39 - v38) >> 2), (v41 - v40) >> 2, v17, v43, v53 * v17 + 1024, &v57, &v56);
  v10 = v44 == 0;
  if (v44)
  {
    v46 = scn_default_log(v44, v45);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      SCNEncodeMorpherUsingAnimCodec_cold_1();
    }
  }

  else
  {
    [v42 setLength:v57];
    [v54 encodeObject:v42 forKey:@"morpherCompressedData"];

    v47 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:32 * v17];
    [v47 appendBytes:&v61 length:1];
    [v47 appendBytes:&v60 length:1];
    if (v17 >= 1)
    {
      for (j = 0; j != v17; ++j)
      {
        v49 = CFArrayGetValueAtIndex(v16, j);
        Name = C3DEntityGetName(v49, v50);
        CFStringGetCString(Name, buf, 512, 0x600u);
        [v47 appendBytes:buf length:strlen(buf) + 1];
      }
    }

    [v54 encodeObject:v47 forKey:@"morpherMetaData"];
  }

  if (v59.__begin_)
  {
    v59.__end_ = v59.__begin_;
    operator delete(v59.__begin_);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v63[1])
  {
    *&v64 = v63[1];
    operator delete(v63[1]);
  }

  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }

  return v10;
}

SCNGeometry *targetGeometryFromAnimation(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v11 = a2[1];
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a2) >> 2);
  v14 = v13 * a4;
  v15 = ldexp(1.0, -a5);
  v30 = v15;
  v16 = 4 * v14;
  v29 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
  if (a6)
  {
    if (v11 != v12)
    {
      if (v13 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v13;
      }

      v18 = (*a1 + 4 * v14 * a3 + 8);
      v19 = 4 * a4;
      v20 = (v29 + 8);
      do
      {
        *(v20 - 1) = vmul_n_f32(vcvt_f32_s32(*(v18 - 2)), v30);
        *v20 = v30 * *v18;
        v18 = (v18 + v19);
        v20 = (v20 + v19);
        --v17;
      }

      while (v17);
    }
  }

  else if (v11 != v12)
  {
    v21 = 0;
    if (v13 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v13;
    }

    v23 = 4 * v14 * a3;
    v24 = 4 * a4;
    v25 = (v29 + 8);
    do
    {
      AnimCodec::Mesh<float>::point(a2, v21, v31);
      v26 = (*a1 + v23);
      *(v25 - 2) = v31[0] + (*v26 * v30);
      *(v25 - 1) = v31[1] + (v26[1] * v30);
      *v25 = v31[2] + (v26[2] * v30);
      ++v21;
      v23 += v24;
      v25 = (v25 + v24);
    }

    while (v22 != v21);
  }

  v32[0] = +[SCNGeometrySource geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:](SCNGeometrySource, "geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:", [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v29 length:v16 freeWhenDone:1], @"kGeometrySourceSemanticVertex", v13, 1, a4, 4, 0, 0);
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  return [SCNGeometry geometryWithSources:v27 elements:MEMORY[0x277CBEBF8]];
}