uint64_t __statisticsFont()
{
  SceneCount = C3DSceneSourceGetSceneCount();
  v1 = MEMORY[0x277D74300];
  if (SceneCount)
  {
    v2 = *MEMORY[0x277D74418];

    return [v1 monospacedSystemFontOfSize:11.0 weight:v2];
  }

  else
  {

    return [v1 fontWithName:@"Menlo" size:12.0];
  }
}

void __appendStatInfo(uint64_t a1, uint64_t *a2, const __CFString *a3, float64x2_t a4, float64_t a5, float a6)
{
  a4.f64[1] = a5;
  v16 = vcvt_f32_f64(vaddq_f64(a4, xmmword_21C2A39E0));
  C3DSceneSourcePerformConsistencyCheck();
  v18 = xmmword_21C2A3AD0;
  __appendRect2D(a1, *a2, a2[1], &v18, a1 + 88, 1, v10, v11, v12, v13);
  v19 = v16;
  __appendText_(a1, &v19, &C3DAuthoringEnvironmentColorWhite, a3, a1 + 88, a1 + 1456, 1, 1);
  if (a6 > 0.000001)
  {
    v14.i32[1] = v16.i32[1];
    v14.f32[0] = v16.f32[0] + 90.0;
    v17 = v14;
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%2.1fms", (a6 * 1000.0)];
    v19 = v17;
    __appendText_(a1, &v19, &C3DAuthoringEnvironmentColorWhite, v15, a1 + 88, a1 + 1456, 1, 1);
  }
}

void C3DAuthoringEnvironmentDrawStats(uint64_t a1, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 8), a2);
  Viewport = C3DEngineContextGetViewport(*(a1 + 8));
  RendererContextGL = C3DEngineContextGetRendererContextGL(*(a1 + 8), v4);
  if (RendererContextGL)
  {
    ContentScaleFactor = C3DRendererContextGetContentScaleFactor(RendererContextGL);
    glPushGroupMarkerEXT(0, "SceneKit - Draw Statistics");
  }

  else
  {
    ContentScaleFactor = [(SCNMTLRenderContext *)RenderContext contentScaleFactor];
    [(SCNMTLRenderContext *)RenderContext pushDebugGroup:?];
  }

  DrawableSafeAreaInsets = C3DEngineContextGetDrawableSafeAreaInsets(*(a1 + 8));
  __createGLInfoIfNeeded(a1, a1 + 88);
  __createGLInfoIfNeeded(a1, a1 + 240);
  v168[0] = 0;
  v168[1] = v168;
  v168[2] = 0x3052000000;
  v168[3] = __Block_byref_object_copy__10;
  v168[4] = __Block_byref_object_dispose__10;
  v168[5] = 0;
  v167[0] = MEMORY[0x277D85DD0];
  v167[1] = 3221225472;
  v167[2] = __C3DAuthoringEnvironmentDrawStats_block_invoke;
  v167[3] = &unk_278300800;
  v167[4] = v168;
  v166[0] = MEMORY[0x277D85DD0];
  v166[1] = 3221225472;
  v166[2] = __C3DAuthoringEnvironmentDrawStats_block_invoke_2;
  v166[3] = &unk_278300828;
  v166[4] = v168;
  __createAlphabetTextureIfNeeded(a1, a1 + 1528, __statisticsBoldFont, v167, v166);
  __createAlphabetTextureIfNeeded(a1, a1 + 1456, __statisticsFont, 0, 0);
  v7 = *(a1 + 120);
  v8 = *(a1 + 1456);
  if (v7 != v8)
  {
    if (v7)
    {
      CFRelease(*(a1 + 120));
      *(a1 + 120) = 0;
      v8 = *(a1 + 1456);
    }

    if (v8)
    {
      v8 = CFRetain(v8);
    }

    *(a1 + 120) = v8;
  }

  v9 = *(a1 + 128);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 128) = 0;
  }

  v10 = *(a1 + 272);
  v11 = *(a1 + 1528);
  if (v10 != v11)
  {
    if (v10)
    {
      CFRelease(*(a1 + 272));
      *(a1 + 272) = 0;
      v11 = *(a1 + 1528);
    }

    if (v11)
    {
      v11 = CFRetain(v11);
    }

    *(a1 + 272) = v11;
  }

  v12 = *(a1 + 280);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 280) = 0;
  }

  v13 = 0.0;
  if (*(a1 + 65825) == 1)
  {
    v13 = *(a1 + 1488) * 7.0 + 14.0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [*(a1 + 16) preferredFramesPerSecond];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = 60;
    }
  }

  else
  {
    v15 = 60;
  }

  v16 = DrawableSafeAreaInsets.n128_f32[1] + v13;
  v17 = Viewport.n128_f32[2] / ContentScaleFactor;
  if (*(a1 + 65825) == 1)
  {
    v165 = xmmword_21C2A3AD0;
    if (v17 < 400.0)
    {
      v18 = 225.0;
    }

    else
    {
      v18 = 280.0;
    }

    v19 = *(a1 + 66008);
    v20 = *(a1 + 66096);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [*(a1 + 16) preferredFramesPerSecond];
      if (v21)
      {
        v15 = v21;
      }

      else
      {
        v15 = 60;
      }
    }

    v22 = v19 - v20;
    if ((1.0 / v15) > v22)
    {
      v22 = 1.0 / v15;
    }

    v161 = v22;
    __appendRect2D(a1, 0x3E19999A3E19999ALL, 0x3F4000003E19999ALL, &v165, a1 + 88, 1, 0.0, 0.0, v17, v16);
    v153 = v13;
    v155 = v18;
    v152 = vadd_f32(DrawableSafeAreaInsets.n128_u64[0], vdup_n_s32(0x425C0000u));
    v23 = vcvtq_f64_f32(v152);
    v164 = xmmword_21C2A3AB0;
    v24 = v23.f64[1];
    v25 = 0.0;
    v157 = v23.f64[0];
    __appendChartArc(a1, &v164, a1 + 88, v23.f64[0], v23.f64[1], 0.0, 6.2832);
    v27 = DrawableSafeAreaInsets.n128_f32[0] + 110.0;
    v28 = *(a1 + 66040);
    if (v28 >= 0.0)
    {
      v25 = v28 * 6.28318531 / v161 + 0.0;
      v164 = xmmword_21C2A39F0;
      __appendChartArc(a1, &v164, a1 + 88, v157, v24, 0.0, v25);
      v30 = v28;
      if (v17 < 400.0)
      {
        v30 = 0.0;
      }

      v29.f64[0] = v27;
      __appendStatInfo(a1, &v164, @"Animations", v29, (DrawableSafeAreaInsets.n128_f32[1] + 80.0), v30);
    }

    v31 = *(a1 + 66024);
    if (v31 >= 0.0)
    {
      v32 = v31 * 6.28318531 / v161 + v25;
      v164 = xmmword_21C2A3A00;
      __appendChartArc(a1, &v164, a1 + 88, v157, v24, v25, v32);
      v35 = v31;
      if (v17 < 400.0)
      {
        v35 = 0.0;
      }

      v34.f64[0] = v27;
      __appendStatInfo(a1, &v164, @"Physics", v34, (DrawableSafeAreaInsets.n128_f32[1] + 60.0), v35);
    }

    else
    {
      v32 = v25;
    }

    v36 = *(a1 + 66016);
    if (v36 >= 0.0)
    {
      v37 = v36 * 6.28318531 / v161 + v32;
      v164 = xmmword_21C2A3A10;
      __appendChartArc(a1, &v164, a1 + 88, v157, v24, v32, v37);
      v39 = v36;
      if (v17 < 400.0)
      {
        v39 = 0.0;
      }

      v38.f64[0] = v27;
      __appendStatInfo(a1, &v164, @"Constraints", v38, (DrawableSafeAreaInsets.n128_f32[1] + 40.0), v39);
    }

    else
    {
      v37 = v32;
    }

    v40 = *(a1 + 66032);
    if (v40 >= 0.0)
    {
      v41 = v40 * 6.28318531 / v161 + v37;
      v164 = xmmword_21C2A3A20;
      __appendChartArc(a1, &v164, a1 + 88, v157, v24, v37, v41);
      v43 = v40;
      if (v17 < 400.0)
      {
        v43 = 0.0;
      }

      v42.f64[0] = v27;
      __appendStatInfo(a1, &v164, @"Particles", v42, (DrawableSafeAreaInsets.n128_f32[1] + 20.0), v43);
    }

    else
    {
      v41 = v37;
    }

    v44 = v155 + DrawableSafeAreaInsets.n128_f32[0];
    v45 = *(a1 + 66080);
    if (v45 >= 0.0)
    {
      v46 = v45 * 6.28318531 / v161 + v41;
      v164 = xmmword_21C2A3A30;
      __appendChartArc(a1, &v164, a1 + 88, v157, v24, v41, v46);
      v48 = v45;
      if (v17 < 400.0)
      {
        v48 = 0.0;
      }

      v47.f64[0] = v44;
      __appendStatInfo(a1, &v164, @"Delegate", v47, (DrawableSafeAreaInsets.n128_f32[1] + 80.0), v48);
    }

    else
    {
      v46 = v41;
    }

    v49 = *(a1 + 66064);
    if (v49 >= 0.0)
    {
      v50 = v49 * 6.28318531 / v161 + v46;
      v164 = xmmword_21C2A3A40;
      __appendChartArc(a1, &v164, a1 + 88, v157, v24, v46, v50);
      v52 = v49;
      if (v17 < 400.0)
      {
        v52 = 0.0;
      }

      v51.f64[0] = v44;
      __appendStatInfo(a1, &v164, @"Rendering", v51, (DrawableSafeAreaInsets.n128_f32[1] + 60.0), v52);
    }

    else
    {
      v50 = v46;
    }

    if (C3DEngineContextGetRenderContext(*(a1 + 8), v26))
    {
      v53 = *(a1 + 66112);
      if (v53 >= 0.0)
      {
        v54.f64[1] = 0.00781250185;
        v164 = xmmword_21C2A3A50;
        v55 = v53;
        if (v17 < 400.0)
        {
          v55 = 0.0;
        }

        v54.f64[0] = v44;
        __appendStatInfo(a1, &v164, @"GPU", v54, (DrawableSafeAreaInsets.n128_f32[1] + 40.0), v55);
      }
    }

    else
    {
      v56 = *(a1 + 66088);
      if (v56 >= 0.0)
      {
        v57 = v56 * 6.28318531 / v161 + v50;
        v164 = xmmword_21C2A3A50;
        __appendChartArc(a1, &v164, a1 + 88, v157, v24, v50, v57);
        v59 = v56;
        if (v17 < 400.0)
        {
          v59 = 0.0;
        }

        v58.f64[0] = v44;
        __appendStatInfo(a1, &v164, @"GL flush", v58, (DrawableSafeAreaInsets.n128_f32[1] + 40.0), v59);
        v50 = v56 * 6.28318531 / v161 + v50;
      }
    }

    v60 = *(a1 + 66072);
    if (v60 >= 0.0)
    {
      v61 = v60 * 6.28318531 / v161 + v50;
      v164 = xmmword_21C2A3A60;
      __appendChartArc(a1, &v164, a1 + 88, v157, v24, v50, v61);
      v63 = v60;
      if (v17 < 400.0)
      {
        v63 = 0.0;
      }

      v62.f64[0] = v44;
      __appendStatInfo(a1, &v164, @"2D", v62, (DrawableSafeAreaInsets.n128_f32[1] + 20.0), v63);
    }

    v64 = *(a1 + 66008) - fmax(*(a1 + 66096), 0.0);
    if (v64 < 0.0 || v64 >= 100.0)
    {
      v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"--- ms"];
      v13 = v153;
    }

    else
    {
      v65 = v64;
      v66 = v65;
      if (v64 >= 0.1)
      {
        v67 = @"%2.1f s";
      }

      else
      {
        v67 = @"%2.1f ms";
      }

      if (v64 >= 0.1)
      {
        v68 = v66;
      }

      else
      {
        v68 = v66 * 1000.0;
      }

      v69 = [MEMORY[0x277CCACA8] stringWithFormat:v67, *&v68];
      v13 = v153;
    }

    v70 = v69;
    v71 = [(__CFString *)v69 length];
    v72 = vadd_f32(v152, 0xC0C00000C1C80000);
    v73.i32[1] = v72.i32[1];
    *v73.i32 = *v72.i32 + 5.0;
    v169 = vbsl_s8(vcgtd_u64(7uLL, v71), v73, v72);
    __appendText_(a1, &v169, &C3DAuthoringEnvironmentColorWhite, v70, a1 + 240, a1 + 1528, 1, 1);
    v33 = *(a1 + 65825);
  }

  else
  {
    v33 = 0;
  }

  v74 = *(a1 + 1488) + 6.0;
  if (v33)
  {
    v75 = v16;
  }

  else
  {
    v75 = 0.0;
  }

  if (v33)
  {
    v76 = v16;
  }

  else
  {
    v76 = DrawableSafeAreaInsets.n128_f32[1];
  }

  v77 = v76 + v74;
  v165 = xmmword_21C2A3AD0;
  __appendRect2D(a1, 0, 0x3F40000000000000, &v165, a1 + 240, 1, 0.0, v75, v17, v76 + v74);
  *&v164 = 0;
  __appendText_(0, &v164, 0, @"$1$", 0, a1 + 1528, 0, 0);
  __asm { FMOV            V1.2S, #7.0 }

  _D1.f32[1] = v13 + 3.0;
  v83 = vadd_f32(DrawableSafeAreaInsets.n128_u64[0], _D1);
  v158 = *&v164;
  v162 = v83;
  if (*(a1 + 65825))
  {
    v84 = @"$1$";
  }

  else
  {
    v84 = @"$0$";
  }

  if (*(a1 + 65840))
  {
    v85 = &C3DAuthoringEnvironmentColorWhite;
  }

  else
  {
    v85 = &unk_21C2A3AC0;
  }

  *&v164 = v83;
  __appendText_(a1, &v164, v85, v84, a1 + 240, a1 + 1528, 1, 1);
  if ((*(a1 + 65828) / v15) <= 1.0)
  {
    v86 = *(a1 + 65828) / v15;
  }

  else
  {
    v86 = 1.0;
  }

  if (*(a1 + 65832) * 60.0 <= 1.0)
  {
    v87 = *(a1 + 65832) * 60.0;
  }

  else
  {
    v87 = 1.0;
  }

  *&v88 = v86 * 0.33;
  v89 = C3DColor4HSB2RGB(v88 | 0x3F80000000000000, 1065353216);
  v91 = v89;
  v92 = v90;
  v149 = v87;
  v147 = v17;
  v93 = ceilf(v162.f32[0] + (v158 + 5.0));
  v94 = 0x3F8000003F000000;
  v95 = 0x3F0000003F000000;
  v96 = (v77 - v74) + (v74 + -10.0) * 0.5;
  v97 = *(a1 + 1592);
  v98 = v97[8];
  DWORD2(v164) = 0;
  *&v164 = 0;
  v99 = v97[10];
  v100 = v97[11] / *(a1 + 1544);
  *(&v164 + 3) = v100;
  v159 = v93;
  v154 = v99;
  v156 = v98;
  v150 = v86;
  if (v86 >= 0.083333)
  {
    v113 = *(a1 + 1536);
    v114 = v98 / v113;
    *&v164 = v114;
    v110 = (v98 + v99 * 0.5) / v113;
    v101 = v93;
    v111 = v89;
    v112 = v92;
  }

  else
  {
    v101 = v93 + v86 * 60.0;
    v102 = v98;
    v103 = *(a1 + 1536);
    v104 = v99;
    v105 = v98 + (v86 / 0.083333) * (v99 * 0.5);
    v106 = v98 / v103;
    *&v103 = v105 / v103;
    *&v164 = v106;
    DWORD2(v164) = LODWORD(v103);
    v107 = v93;
    __appendRect2D(a1, v89, v90, &v164, a1 + 240, 1, v93, v96, v101, v96 + 10.0);
    v108 = *(a1 + 1536);
    v109 = v105 / v108;
    *&v164 = v109;
    v110 = (v102 + v104 * 0.5) / v108;
    v111 = 0x3F0000003F000000;
    v112 = 0x3F8000003F000000;
    v93 = v107;
  }

  v148 = v93;
  v115 = v93 + 5.0;
  v116 = v110;
  *(&v164 + 2) = v116;
  __appendRect2D(a1, v111, v112, &v164, a1 + 240, 1, v101, v96, v115, v96 + 10.0);
  LODWORD(v164) = 1065351538;
  DWORD2(v164) = 1065353216;
  if (v86 <= 0.083333 || v86 >= 0.91667)
  {
    if (v86 >= 0.91667)
    {
      v94 = v92;
      v95 = v91;
    }

    v117 = v115;
  }

  else
  {
    v117 = v159 + v150 * 60.0 + -5.0;
    __appendRect2D(a1, v91, v92, &v164, a1 + 240, 1, v115, v96, v117, v96 + 10.0);
  }

  v118 = v159 + 60.0;
  v119 = v159 + 60.0 + -5.0;
  v151 = v119;
  __appendRect2D(a1, v95, v94, &v164, a1 + 240, 1, v117, v96, v119, v96 + 10.0);
  if (v86 <= 0.91667)
  {
    v123 = v156 + v154 * 0.5;
    v120 = v151;
  }

  else
  {
    v120 = v159 + v150 * 60.0;
    v121 = *(a1 + 1536);
    v122 = (v156 + v154 * 0.5) / v121;
    v123 = v156 + ((v86 + -0.91667) / 0.0833333135 + 1.0) * v154 * 0.5;
    v124 = v123 / v121;
    *&v164 = v122;
    *(&v164 + 2) = v124;
    __appendRect2D(a1, v91, v92, &v164, a1 + 240, 1, v151, v96, v120, v96 + 10.0);
  }

  v125 = *(a1 + 1536);
  v126 = v118;
  v127 = v123 / v125;
  *&v125 = (v156 + v154) / v125;
  *&v164 = v127;
  DWORD2(v164) = LODWORD(v125);
  __appendRect2D(a1, 0x3F0000003F000000, 0x3F8000003F000000, &v164, a1 + 240, 1, v120, v96, v126, v96 + 10.0);
  v128 = v149;
  *(&v164 + 3) = *(&v164 + 3) * 0.25;
  if (v128 >= 0.083333)
  {
    v133 = *(a1 + 1536);
    v134 = v156 / v133;
    *&v164 = v134;
    v132 = (v156 + v154 * 0.5) / v133;
    v129 = v115;
  }

  else
  {
    v129 = v159 + v128 * 60.0;
    v130 = *(a1 + 1536);
    v131 = v156 / v130;
    *&v164 = v131;
    v132 = (v156 + (v128 / 0.083333) * (v154 * 0.5)) / v130;
  }

  v135 = v132;
  *(&v164 + 2) = v135;
  __appendRect2D(a1, 0x3F00000000000000, 0x3F8000003F800000, &v164, a1 + 240, 1, v148, v96, v129, v96 + 2.5);
  if (v128 <= 0.083333 || v128 >= 0.91667)
  {
    v136 = v159 + 60.0;
    if (v128 <= 0.91667)
    {
      goto LABEL_129;
    }
  }

  else
  {
    v136 = v159 + v128 * 60.0;
  }

  v137 = v136 + -5.0;
  LODWORD(v164) = 1065351538;
  DWORD2(v164) = 1065353216;
  __appendRect2D(a1, 0x3F00000000000000, 0x3F8000003F800000, &v164, a1 + 240, 1, v115, v96, v137, v96 + 2.5);
LABEL_129:
  if (v128 > 0.91667)
  {
    v138 = v159 + v128 * 60.0;
    v139 = *(a1 + 1536);
    v140 = (v156 + v154 * 0.5) / v139;
    v141 = (v156 + ((v128 + -0.91667) / 0.0833333135 + 1.0) * v154 * 0.5) / v139;
    *&v164 = v140;
    *(&v164 + 2) = v141;
    __appendRect2D(a1, 0x3F00000000000000, 0x3F8000003F800000, &v164, a1 + 240, 1, v151, v96, v138, v96 + 2.5);
  }

  *&v142 = v118 + 7.0;
  v143 = *(a1 + 65848);
  v169 = __PAIR64__(v162.u32[1], v142);
  __appendText_(a1, &v169, &C3DAuthoringEnvironmentColorWhite, v143, a1 + 240, a1 + 1528, 1, 1);
  v144 = *(a1 + 65856);
  v169 = 0;
  __appendText_(0, &v169, 0, v144, 0, a1 + 1528, 0, 0);
  HIDWORD(v145) = v162.i32[1];
  *&v145 = ceilf((v147 + -7.0) - *&v169) - DrawableSafeAreaInsets.n128_f32[2];
  v146 = *(a1 + 65856);
  v169 = v145;
  __appendText_(a1, &v169, &C3DAuthoringEnvironmentColorWhite, v146, a1 + 240, a1 + 1528, 1, 1);
  __flush(a1, a1 + 240);
  __flush(a1, a1 + 88);
  *(a1 + 65824) = 1;
  if (RenderContext)
  {
    [(SCNMTLRenderContext *)RenderContext popDebugGroup];
  }

  else
  {
    glPopGroupMarkerEXT();
  }

  _Block_object_dispose(v168, 8);
}

void *__C3DAuthoringEnvironmentDrawStats_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v44[2] = *MEMORY[0x277D85DE8];
  *a2 = 7;
  v7 = malloc_type_malloc(0x70uLL, 0x1000040451B5BE8uLL);
  *a4 = v7;
  *v7 = xmmword_21C2A3A70;
  v7[1] = xmmword_21C2A3A80;
  v7[2] = xmmword_21C2A3A90;
  v8 = __statisticsFont();
  v9 = *MEMORY[0x277D740C0];
  v43[0] = *MEMORY[0x277D740A8];
  v43[1] = v9;
  v44[0] = v8;
  v44[1] = [MEMORY[0x277D75348] whiteColor];
  *(*(*(a1 + 32) + 8) + 40) = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  [@"◆" boundingRectWithSize:3 options:*(*(*(a1 + 32) + 8) + 40) attributes:0 context:{1000.0, 1000.0}];
  v11.f64[0] = v10 + 1.0;
  v12 = *a4;
  v11.f64[1] = v13;
  *&v11.f64[0] = vcvt_f32_f64(vaddq_f64(v11, xmmword_21C2A3AA0));
  *(v12 + 48) = v11.f64[0];
  *&v13 = v14;
  *&v14 = v15;
  *(v12 + 56) = LODWORD(v13);
  *(v12 + 60) = LODWORD(v14);
  v39 = (*v11.f64 + *&v13);
  [@"▲" boundingRectWithSize:3 options:*(*(*(a1 + 32) + 8) + 40) attributes:0 context:{1000.0, 1000.0}];
  v16 = *a4;
  v18.f64[1] = v17;
  __asm { FMOV            V1.2D, #-1.0 }

  v42 = _Q1.f64[1];
  _Q1.f64[0] = v39;
  *&v18.f64[0] = vcvt_f32_f64(vaddq_f64(v18, _Q1));
  *(v16 + 64) = v18.f64[0];
  *_Q1.f64 = v24;
  *&v24 = v25;
  *(v16 + 72) = LODWORD(_Q1.f64[0]);
  *(v16 + 76) = LODWORD(v24);
  v40 = (*v18.f64 + *_Q1.f64);
  [@"." boundingRectWithSize:3 options:*(*(*(a1 + 32) + 8) + 40) attributes:0 context:{1000.0, 1000.0}];
  v26 = *a4;
  v28.f64[1] = v27;
  __asm { FMOV            V1.2D, #-3.0 }

  _Q1.f64[0] = v40;
  *&v28.f64[0] = vcvt_f32_f64(vaddq_f64(v28, _Q1));
  *(v26 + 80) = v28.f64[0];
  *_Q1.f64 = v30;
  *&v30 = v31;
  *(v26 + 88) = LODWORD(_Q1.f64[0]);
  *(v26 + 92) = LODWORD(v30);
  v41 = (*v28.f64 + *_Q1.f64);
  result = [@"✸" boundingRectWithSize:3 options:*(*(*(a1 + 32) + 8) + 40) attributes:0 context:{1000.0, 1000.0}];
  v33 = *a4;
  v35.f64[1] = v34;
  v36.f64[1] = v42;
  v36.f64[0] = v41;
  *&v35.f64[0] = vcvt_f32_f64(vaddq_f64(v35, v36));
  *(v33 + 96) = v35.f64[0];
  *v36.f64 = v37;
  *&v37 = v38;
  *(v33 + 104) = LODWORD(v36.f64[0]);
  *(v33 + 108) = LODWORD(v37);
  *a3 = (*v35.f64 + *v36.f64) + 32.0;
  *(a3 + 8) = 0x4030000000000000;
  return result;
}

void __C3DAuthoringEnvironmentDrawStats_block_invoke_2(uint64_t a1, double a2, double a3)
{
  v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"+" attributes:*(*(*(a1 + 32) + 8) + 40)];
  [v5 drawAtPoint:{0.0, 0.0}];

  v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"-" attributes:*(*(*(a1 + 32) + 8) + 40)];
  [v6 drawAtPoint:{16.0, 0.0}];

  [objc_msgSend(MEMORY[0x277D75208] bezierPathWithOvalInRect:{33.0, 0.0, 10.0, 10.0), "fill"}];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, 4.0 - a3);
  v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"◆▲.✸" attributes:*(*(*(a1 + 32) + 8) + 40)];
  [v8 drawAtPoint:{44.0, 0.0}];
}

uint64_t __statisticsBoldFont()
{
  SceneCount = C3DSceneSourceGetSceneCount();
  v1 = MEMORY[0x277D74300];
  if (SceneCount)
  {
    v2 = *MEMORY[0x277D743F8];

    return [v1 monospacedSystemFontOfSize:11.0 weight:v2];
  }

  else
  {

    return [v1 fontWithName:@"Menlo-Bold" size:12.0];
  }
}

void __appendChartArc(uint64_t a1, float *a2, uint64_t a3, float64_t a4, float64_t a5, float a6, float a7)
{
  v8 = a2[2];
  v9 = a2[3];
  v10 = *a2;
  v11 = a2[1];
  v12 = a7 - a6;
  v13 = fmax((a7 - a6) / 6.28318531 * 100.0, 1.0);
  v14 = 6 * v13;
  v38 = 2 * v13 + 2;
  v15 = malloc_type_malloc(20 * v38, 0x1000040A86A77D5uLL);
  v16 = malloc_type_malloc(12 * v13, 0x1000040BDFB0063uLL);
  v17 = v16;
  if ((v13 & 0x80000000) == 0)
  {
    v18 = 0;
    v19 = 0;
    v20 = ((v9 * 255.0) << 24) | ((fminf(fmaxf(v8, 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(v11, 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(v10, 0.0), 1.0) * 255.0);
    v21 = v12 / v13;
    v22 = 1.57079633 - a6;
    v23.f64[0] = a4;
    v23.f64[1] = a5;
    v42 = v23;
    v24 = 2 * v13;
    v25 = 2 * (v13 + 1);
    v26 = (v15 + 20);
    v27 = vdup_n_s32(0x42200000u);
    v28 = vdup_n_s32(0x3F7FBE77u);
    v29 = v16 + 3;
    __asm
    {
      FMOV            V12.2S, #1.0
      FMOV            V13.2S, #30.0
    }

    do
    {
      v36 = __sincosf_stret(v22 - (v18 * v21));
      *(v26 - 20) = vcvt_f32_f64(vaddq_f64(v42, vcvtq_f64_f32(vmul_f32(__PAIR64__(LODWORD(v36.__sinval), LODWORD(v36.__cosval)), v27))));
      v26[-1].i32[1] = v20;
      *(v26 - 12) = _D12;
      v26[2].i32[0] = v20;
      *v26 = vcvt_f32_f64(vaddq_f64(v42, vcvtq_f64_f32(vmul_f32(__PAIR64__(LODWORD(v36.__sinval), LODWORD(v36.__cosval)), _D13))));
      v26[1] = v28;
      if (v24 != v19)
      {
        *(v29 - 3) = v19;
        *(v29 - 2) = v19 + 2;
        *(v29 - 1) = v19 + 1;
        *v29 = v19 + 1;
        v29[1] = v19 + 2;
        v29[2] = v19 + 3;
      }

      v19 += 2;
      v26 += 5;
      v29 += 6;
      ++v18;
    }

    while (v25 != v19);
  }

  __appendVerticesAndIndices(a1, v15, v38, v17, v14, a3, 1);
  free(v17);

  free(v15);
}

char *C3DAuthoringEnvironmentUpdateLightingStats(char *result, const void *a2, unsigned int a3)
{
  if (a3 <= 9)
  {
    return memcpy(result + 65872, a2, 4 * a3);
  }

  return result;
}

void C3DAuthoringEnvironmentUpdateStats(uint64_t a1, double *__src, uint64_t a3)
{
  if (a1)
  {
    v6 = a1 + 0x10000;
    v7 = *(a1 + 65864);
    if (v7)
    {
      CFRelease(v7);
      *(v6 + 328) = 0;
    }

    v8 = *(v6 + 320);
    if (v8)
    {
      CFRelease(v8);
      *(v6 + 320) = 0;
    }

    v9 = *(v6 + 312);
    if (v9)
    {
      CFRelease(v9);
      *(v6 + 312) = 0;
    }

    if (*(__src + 4))
    {
      memcpy((a1 + 65912), __src, 0x358uLL);
      if (a3)
      {
        v10 = *(a3 + 216);
        v11 = *(a3 + 248);
        *(a1 + 66144) = *(a3 + 232);
        *(a1 + 66160) = v11;
        *(a1 + 66128) = v10;
        v12 = *(a3 + 264);
        v13 = *(a3 + 280);
        v14 = *(a3 + 296);
        *(a1 + 66224) = *(a3 + 312);
        *(a1 + 66192) = v13;
        *(a1 + 66208) = v14;
        *(a1 + 66176) = v12;
      }

      v15 = __src[41];
      v16 = 0.0;
      if (v15 != 0.0)
      {
        v16 = 1.0 / v15;
      }

      *(v6 + 292) = v16;
      v17 = __src[23];
      *(v6 + 296) = v17;
      StringForCount = __createStringForCount(*(__src + 2));
      v19 = __createStringForCount(*(__src + 1));
      v20 = __createStringForCount(*__src);
      if (*(v6 + 336))
      {
        v21 = 1;
      }

      else
      {
        v22 = 0;
        do
        {
          v23 = v22;
          if (v22 == 8)
          {
            break;
          }
        }

        while (!*(a1 + 65876 + 4 * v22++));
        v21 = v23 < 8;
      }

      *(v6 + 176) = *(v6 + 176) & 0xFE | v21;
      v25 = *MEMORY[0x277CBECE8];
      *(v6 + 320) = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"$3$%@ $4$%@", StringForCount, v19);
      CFRelease(StringForCount);
      CFRelease(v19);
      CFRelease(v20);
      RenderContext = C3DEngineContextGetRenderContext(*(a1 + 8), v26);
      LODWORD(v28) = llroundf(*(v6 + 292));
      if (RenderContext)
      {
        v29 = CFStringCreateWithFormat(v25, 0, @"%dfps", v28);
      }

      else
      {
        v29 = CFStringCreateWithFormat(v25, 0, @"GL %dfps", v28);
      }

      *(v6 + 312) = v29;
    }
  }
}

__CFString *__createStringForCount(unint64_t a1)
{
  if (!a1)
  {
    return @"0";
  }

  if (a1 <= 0x3E7)
  {
    return CFStringCreateWithFormat(0, 0, @"%zu", a1);
  }

  v2 = a1;
  v3 = a1 / 1000.0;
  if (v3 < 1000.0)
  {
    return CFStringCreateWithFormat(0, 0, @"%.3gK", v3);
  }

  v4 = v2 / 1000000.0;
  if (v4 < 1000.0)
  {
    return CFStringCreateWithFormat(0, 0, @"%.3gM", v4);
  }

  v5 = v2 / 1000000000.0;
  return CFStringCreateWithFormat(0, 0, @"%.3gG", v5);
}

BOOL C3DAuthoringEnvironmentHasSelectedNodes(void *a1)
{
  objc_sync_enter(a1);
  v2 = [objc_msgSend(a1 "selectedNodes")] != 0;
  objc_sync_exit(a1);
  return v2;
}

uint64_t C3DAuthoringEnvironmentGetSelectedNodes(void *a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  objc_sync_enter(a1);
  v3 = [a1 selectedNodes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __C3DAuthoringEnvironmentGetSelectedNodes_block_invoke;
  v5[3] = &unk_2782FB9F0;
  v5[4] = v2;
  [v3 enumerateObjectsUsingBlock:v5];
  objc_sync_exit(a1);
  return v2;
}

uint64_t __C3DAuthoringEnvironmentGetSelectedNodes_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [a2 authoringEnvironmentCompanionNode];
  v5 = *(a1 + 32);
  if (v4)
  {
    v2 = [v2 authoringEnvironmentCompanionNode];
  }

  v6 = [v2 nodeRef];

  return [v5 addObject:v6];
}

void __destroyGLInfo(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  __recycleMeshes(a1, a2);
  v4 = *(a2 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 32) = 0;
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(a2 + 40) = 0;
  }

  RendererContextGL = C3DEngineContextGetRendererContextGL(*(a1 + 8), v6);
  if (*(a2 + 53) == 1)
  {
    v8 = RendererContextGL;
    if (RendererContextGL)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = *(a2 + 136);
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v12 = v10;
        v13 = *v17;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v16 + 1) + 8 * i);
            if (C3DMeshElementGetVolatileDataPtr(v15, v11))
            {
              C3DRendererContextUnmapVolatileMeshElement(v8, v15);
            }
          }

          v12 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }
    }
  }
}

void __appendText_(uint64_t a1, void *a2, uint64_t *a3, CFStringRef theString, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v48 = *MEMORY[0x277D85DE8];
  if (theString)
  {
    Length = CFStringGetLength(theString);
    v46 = v43;
    MEMORY[0x28223BE20](Length);
    v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v49.location = 0;
    v49.length = Length;
    CFStringGetCharacters(theString, v49, v18);
    if (Length >= 1)
    {
      v20 = 1;
      v21 = v18;
      v22 = Length;
      do
      {
        v23 = *v21++;
        if (v23 == 10)
        {
          ++v20;
        }

        --v22;
      }

      while (v22);
      *&v19 = *a2;
      v44 = a7;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = *(&v19 + 1) + (v20 - 1) * *(a6 + 32);
      while (1)
      {
        v29 = *v18++;
        v28 = v29;
        if (v29 == 32)
        {
          *&v19 = **(a6 + 48) + *&v19;
        }

        else if (v28 == 10)
        {
          *&v19 = *a2;
          v27 = v27 - *(a6 + 32);
        }

        else if (v26)
        {
          if (v28 == 36)
          {
            v30 = *(a6 + 8);
            if ((v25 & 1) == 0)
            {
              goto LABEL_21;
            }

            v47 = 0uLL;
            v31 = (*(a6 + 64) + 16 * v24);
            v47 = *v31;
            v47 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v47.f32), v30)), vdivq_f64(vcvtq_f64_f32(vadd_f32(*v47.f32, *&v47.u32[2])), v30));
            v32 = v31->f32[2];
            if (a8)
            {
              v33 = *&v19 + v32;
              __appendRect2D(a1, *a3, a3[1], v47.f32, a5, v44, roundf(*&v19), roundf(v27), roundf(*&v19 + v32), roundf(v27 + v31->f32[3]));
              *&v19 = v33;
            }

            else
            {
              *&v19 = *&v19 + v32;
            }

            v26 = 0;
          }

          else
          {
            v24 = v28 + 10 * v24 - 48;
            v26 = 1;
          }

          v25 = 1;
        }

        else
        {
          if (v28 != 36)
          {
            v30 = *(a6 + 8);
LABEL_21:
            v34 = v28 - 32;
            v35 = (v34 * *(a6 + 40));
            v36 = *(a6 + 40);
            v37 = *(a6 + 56);
            v38.f64[0] = (v36 + v35);
            v38.f64[1] = v37;
            v47 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(COERCE_UNSIGNED_INT64(v35), v30)), vdivq_f64(v38, v30));
            v39 = *(*(a6 + 48) + 8 * v34);
            if (a8)
            {
              v40 = *a3;
              v41 = a3[1];
              v45 = v19;
              __appendRect2D(a1, v40, v41, v47.f32, a5, v44, roundf(*&v19), roundf(v27), roundf(*&v19 + v36), roundf(v27 + v37));
              v19 = v45;
            }

            v26 = 0;
            v42 = v39;
            *&v19 = *&v19 + v42;
            goto LABEL_27;
          }

          v25 = 0;
          v24 = 0;
          v26 = 1;
        }

LABEL_27:
        if (!--Length)
        {
          goto LABEL_30;
        }
      }
    }

    *&v19 = *a2;
LABEL_30:
    *a2 = v19;
  }
}

void SCNCActionRotate::SCNCActionRotate(SCNCActionRotate *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v4 = &unk_282DC7640;
  *(v4 + 56) = a2->var7;
  *(v4 + 40) = *&a2->var5;
  *(v4 + 80) = *&a2->var10;
  *(v4 + 64) = a2->var8;
  *(v4 + 104) = a2->var14;
  BYTE4(this[1].var15) = C3DWasLinkedBeforeMajorOSYear2015(v4, v5);
  this->var4 = 1;
}

void SCNCActionRotate::~SCNCActionRotate(SCNCActionRotate *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

void SCNCActionRotate::cpp_updateWithTargetForTime(SCNCActionRotate *this, SCNNode *a2, double a3)
{
  v6.n128_f64[0] = SCNCAction::cpp_ratioForTime(this, a3, a2);
  *&_D3 = v6.n128_f64[0];
  if (LOBYTE(this[1].var15) == 1)
  {
    if (BYTE2(this[1].var15))
    {
      _Q0 = *&this[1].var6;
      v14 = -((_Q0.f32[3] * *&_D3) - *&this[1].var8);
      v36 = *&_D3;
      __asm { FMLA            S2, S3, V0.S[3] }

      _Q0.f32[3] = _S2;
      v48 = _Q0;
      if (BYTE4(this[1].var15))
      {
        v20 = _S2;
      }

      else
      {
        v20 = v14;
      }

      C3DMatrix4x4MakeAxisAngleRotation(&v47, &v48, v20);
      if (a2)
      {
        objc_msgSend_transform(a2);
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
      }

      v39 = v43;
      v40 = v44;
      v41 = v45;
      v42 = v46;
      C3DMatrix4x4FromSCNMatrix4(&v43, &v39);
      C3DMatrix4x4Mult3x3(&v43, &v47, &v43);
      C3DMatrix4x4ToSCNMatrix4(&v43, &v39);
      v38[0] = v39;
      v38[1] = v40;
      v38[2] = v41;
      v38[3] = v42;
      [(SCNNode *)a2 setTransform:v38];
      *&this[1].var8 = *&this[1].var8 + v48.f32[3];
    }

    else
    {
      if (BYTE1(this[1].var15))
      {
        goto LABEL_18;
      }

      v26 = *&this[1].var6;
      v27 = vsubq_f32(*&this[1].var4, v26);
      v28 = vmlaq_n_f32(v26, v27, *&_D3);
      v27.i32[0] = v28.i32[1];
      LODWORD(v8) = v28.i32[2];
      v36 = *&_D3;
      LODWORD(_D3) = v28.i32[3];
      [(SCNNode *)a2 setRotation:*v28.i64, *v27.i64, v8, _D3];
    }

    goto LABEL_17;
  }

  if (BYTE2(this[1].var15))
  {
    v35 = vmlaq_n_f32(vnegq_f32(*&this[1].var2), *&this[1].var0, *&_D3);
    v37 = v6.n128_f64[0];
    [(SCNNode *)a2 eulerAngles];
    v22.i32[1] = v21;
    v22.i32[2] = v23;
    v24 = vaddq_f32(v35, v22);
    LODWORD(v25) = v24.i32[2];
    [(SCNNode *)a2 setEulerAngles:*v24.i64, COERCE_DOUBLE(__PAIR64__(v35.u32[1], v24.u32[1])), v25];
    *&_D3 = v37;
    v6 = vaddq_f32(v35, *&this[1].var2);
    *&this[1].var2 = v6;
    goto LABEL_18;
  }

  if ((BYTE1(this[1].var15) & 1) == 0)
  {
    v36 = v6.n128_f64[0];
    if (BYTE3(this[1].var15) == 1)
    {
      v47 = 0uLL;
      v29 = v6.n128_f64[0];
      C3DQuaternionSlerp(&this[1].var13, &this[1].var10, &v47, v29, v7, v8, _D3, v9, v10, v11);
      LODWORD(v31) = v47.i32[2];
      LODWORD(v30) = v47.i32[1];
      LODWORD(v32) = v47.i32[3];
      [(SCNNode *)a2 setOrientation:*v47.i64, v30, v31, v32];
    }

    else
    {
      v33 = *&this[1].var0;
      v34 = vmlaq_n_f32(vmulq_n_f32(*&this->var19, *&_D3), v33, 1.0 - *&_D3);
      LODWORD(v7) = v34.i32[1];
      v33.i32[0] = v34.i32[2];
      [(SCNNode *)a2 setEulerAngles:*v34.i64, v7, *v33.i64];
    }

LABEL_17:
    *&_D3 = v36;
  }

LABEL_18:
  if ((COERCE_UNSIGNED_INT(*&_D3 + -1.0) & 0x60000000) == 0)
  {
    v6.n128_f64[0] = a3;
    SCNCAction::didFinishWithTargetAtTime(this, a2, v6);
  }
}

SCNCAction *SCNCActionRotate::cpp_willStartWithTargetAtTime(SCNCActionRotate *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  if (LOBYTE(this[1].var15) == 1)
  {
    LODWORD(this[1].var8) = 0;
    if (BYTE2(this[1].var15) == 1)
    {
      v6 = *&this[1].var4;
    }

    else
    {
      result = [(SCNNode *)a2 rotation];
      DWORD1(v6) = v8;
      *(&v6 + 1) = __PAIR64__(v10, v9);
    }

    *&this[1].var6 = v6;
  }

  else
  {
    LODWORD(this[1].var3) = 0;
    this[1].var2 = 0;
    if (BYTE2(this[1].var15) == 1)
    {
      v7 = *&this->var19;
    }

    else
    {
      if (BYTE3(this[1].var15) == 1)
      {
        result = [(SCNNode *)a2 orientation];
        DWORD1(v12) = v11;
        *(&v12 + 1) = __PAIR64__(v14, v13);
        *&this[1].var13 = v12;
        return result;
      }

      result = [(SCNNode *)a2 eulerAngles];
      DWORD1(v7) = v15;
      DWORD2(v7) = v16;
    }

    *&this[1].var0 = v7;
  }

  return result;
}

void *__AppendArgument(uint64_t a1, int a2, uint64_t a3, void *a4, int a5)
{
  if ([a4 hasPrefix:@"texture"] & 1) != 0 || (objc_msgSend(a4, "hasPrefix:", @"depth"))
  {
    v10 = 176;
    if (a2)
    {
      v10 = 184;
    }

    v11 = *(a1 + v10);
    if ([a4 hasSuffix:@">"])
    {
      result = [v11 appendFormat:@", %@ %@\n", a4, a3];
    }

    else
    {
      result = [v11 appendFormat:@", %@<float> %@\n", a4, a3];
    }

    v13 = 1;
  }

  else
  {
    v16 = [a4 hasPrefix:@"sampler"];
    v17 = 176;
    if (a2)
    {
      v17 = 184;
    }

    v18 = *(a1 + v17);
    if (v16)
    {
      result = [v18 appendFormat:@", %@ %@\n", a4, a3];
      v13 = 2;
    }

    else
    {
      if ([a4 hasSuffix:@"*"])
      {
        result = [v18 appendFormat:@", device %@ %@\n", a4, a3];
      }

      else
      {
        result = [v18 appendFormat:@", constant %@& %@\n", a4, a3];
      }

      v13 = 0;
    }
  }

  if (a5 == 3)
  {
    [*(a1 + 168) appendFormat:@"_lightingContribution.%@=%@;\n", a3, a3];
    if (v13 == 1)
    {
      v14 = [a4 hasSuffix:@">"];
      v15 = *(a1 + 160);
      if (!v14)
      {
        return [v15 appendFormat:@"%@<float> %@;\n", a4, a3];
      }
    }

    else
    {
      v15 = *(a1 + 160);
    }

    return [v15 appendFormat:@"%@ %@;\n", a4, a3];
  }

  return result;
}

void *__UnifyModifierVaryings(void *result, uint64_t *a2, uint64_t a3)
{
  *&v9[5] = *MEMORY[0x277D85DE8];
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v4;
      if (!*v4)
      {
        v7 = scn_default_log(result, a2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          __UnifyModifierVaryings_cold_1(v8, v9, v7);
        }
      }

      result = C3DShaderModifierGetVaryings(v6, a2);
      if (result)
      {
        result = [v5 addEntriesFromDictionary:result];
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *__AppendModifierArguments(_BYTE *result, uint64_t *a2, uint64_t a3)
{
  *&v15[5] = *MEMORY[0x277D85DE8];
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *v4;
      if (!*v4)
      {
        v7 = scn_default_log(result, a2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          __UnifyModifierVaryings_cold_1(v14, v15, v7);
        }
      }

      result = C3DShaderModifierGetArguments(v6, a2);
      if (result)
      {
        v8 = result;
        EntryPoint = C3DShaderModifierGetEntryPoint(*v4, a2);
        v10 = EntryPoint && (EntryPoint != 3 || (v5[203] & 1) != 0);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = ____AppendModifierArguments_block_invoke;
        v11[3] = &__block_descriptor_45_e35_v32__0__NSString_8__NSString_16_B24l;
        v11[4] = v5;
        v13 = v10;
        v12 = EntryPoint;
        result = [v8 enumerateKeysAndObjectsUsingBlock:v11];
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

__CFString *__configureOpenSubdivSupport(uint64_t a1, int a2, uint64_t a3)
{
  NodeHashCode = C3DProgramHashCodeGetNodeHashCode(a3);
  v7 = C3DProgramHashCodeOpenSubdivPatchType(a3);
  if ((NodeHashCode & 0x20) != 0 && a2)
  {
    v8 = v7;
    v9 = 0x2000010000;
    if ((NodeHashCode & 0x80) == 0)
    {
      v9 = 0x2000000000;
    }

    *(a1 + 208) = C3DSubdivisionOsdGPUGetProgramGeneratorResources(v7 & 0xFFFFFEFF | (((NodeHashCode >> 6) & 1) << 8) | v9, (NodeHashCode >> 8) & 0x7FFFF, *(a1 + 8));
    v10 = C3DSubdivisionOsdGPUGetPerPatchTypeSources(v8);
    *(a1 + 216) = v10;
    v11 = MEMORY[0x277CCACA8];
    v13 = C3DSubdivisionOsdGPUGetSharedSources(v10, v12);
    v14 = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-OpenSubdiv-Utils.h");
    result = [v11 stringWithFormat:@"%@%@%@", v13, v14, C3DGetTextResourceWithNameAllowingHotReload(@"C3D-OpenSubdiv-Utils.metal")];
  }

  else
  {
    result = &stru_282DCC058;
    *(a1 + 208) = &stru_282DCC058;
    *(a1 + 216) = &stru_282DCC058;
  }

  *(a1 + 224) = result;
  return result;
}

uint64_t __InjectAllModifiersIfNeeded(uint64_t a1)
{
  v27[33] = *MEMORY[0x277D85DE8];
  memset(v27, 0, 256);
  v2 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(*a1, 0, 0, v27, 32);
  memset(v26, 0, sizeof(v26));
  v3 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(*a1, 1, 0, v26, 32);
  memset(v25, 0, sizeof(v25));
  v4 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(*a1, 2, 0, v25, 32);
  *(a1 + 152) = 0;
  v5 = C3DProgramHashCodeCopyShaderModifiersForEntryPoint(*a1, 3, 0, a1 + 152, 1);
  v7 = v5;
  if (v5 >= 2)
  {
    v8 = scn_default_log(v5, v6);
    v5 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }

    v7 = 1;
  }

  if (v2 >= 2)
  {
    v9 = scn_default_log(v5, v6);
    v5 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }

    v2 = 1;
  }

  if (v3 >= 2)
  {
    v10 = scn_default_log(v5, v6);
    v5 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }

    v3 = 1;
  }

  if (v4 >= 2)
  {
    v11 = scn_default_log(v5, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCNCommonProfileProgramGeneratorGL _newProgramWithHashCode:engineContext:introspectionDataPtr:];
    }

    v4 = 1;
  }

  __AppendModifierDefines(*(a1 + 8), v27, v2);
  __AppendModifierDefines(*(a1 + 8), v26, v3);
  __AppendModifierDefines(*(a1 + 8), v25, v4);
  __AppendModifierDefines(*(a1 + 8), (a1 + 152), v7);
  __AppendModifierArguments(a1, v27, v2);
  __AppendModifierArguments(a1, v26, v3);
  __AppendModifierArguments(a1, v25, v4);
  __AppendModifierArguments(a1, (a1 + 152), v7);
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  __UnifyModifierVaryings(v12, v27, v2);
  __UnifyModifierVaryings(v12, v26, v3);
  __UnifyModifierVaryings(v12, v25, v4);
  __UnifyModifierVaryings(v12, (a1 + 152), v7);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = ____InjectAllModifiersIfNeeded_block_invoke;
  v24[3] = &__block_descriptor_40_e35_v32__0__NSString_8__NSString_16_B24l;
  v24[4] = a1;
  [v12 enumerateKeysAndObjectsUsingBlock:v24];

  ModifierFlag = __GetModifierFlag(v25, v4);
  v14 = __GetModifierFlag(v26, v3);
  v15 = __GetModifierFlag(v27, v2);
  v16 = __GetModifierFlag((a1 + 152), v7);
  if (v2)
  {
    [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:@"USE_GEOMETRY_MODIFIER"];
    __InjectModifiers(a1, 0, v27);
  }

  if (v3)
  {
    [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:@"USE_SURFACE_MODIFIER"];
    __InjectModifiers(a1, 1, v26);
  }

  if (v4)
  {
    [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:@"USE_FRAGMENT_MODIFIER"];
    __InjectModifiers(a1, 2, v25);
  }

  if (v7)
  {
    [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:@"USE_LIGHT_MODIFIER"];
    __InjectModifiers(a1, 3, (a1 + 152));
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    [v17 addObject:@"USE_GEOMETRY_MODIFIER"];
    [*(a1 + 16) addObject:@"USE_SURFACE_MODIFIER"];
    [*(a1 + 16) addObject:@"USE_FRAGMENT_MODIFIER"];
    [*(a1 + 16) addObject:@"USE_LIGHT_MODIFIER"];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ____InjectAllModifiersIfNeeded_block_invoke_2;
    v23[3] = &__block_descriptor_40_e21_v16__0____CFString__8l;
    v23[4] = a1;
    C3DShaderModifierEnumeratePossibleDefinesUsingBlock(v23);
    StandardUniforms = C3DShaderGetStandardUniforms(v18, v19);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = ____InjectAllModifiersIfNeeded_block_invoke_3;
    v22[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
    v22[4] = a1;
    C3DCFDictionaryApplyBlock(StandardUniforms, v22);
  }

  return v14 | ModifierFlag | v15 | v16;
}

uint64_t __AddProperty(uint64_t a1, unsigned int a2, int a3, int a4)
{
  DefineForPropertyAndSuffix = __GetDefineForPropertyAndSuffix(a3, 0);
  v9 = __GetDefineForPropertyAndSuffix(a3, 1);
  result = __GetDefineForPropertyAndSuffix(a3, 5);
  v11 = result;
  *(a1 + 24) = 0;
  if (a4)
  {
    result = C3DProgramHashCodeGetEffectPropertyIsEnabled(*a1, a2);
    if (result)
    {
      if (a3 == 7)
      {
        v12 = &unk_282E0F8D0;
      }

      else
      {
        v12 = &stru_282DCC058;
      }

      [*(a1 + 8) setObject:v12 forKeyedSubscript:v9];
      if (!C3DProgramHashCodeGetEffectPropertyHasTexture(*a1, a2))
      {
        v19 = __GetDefineForPropertyAndSuffix(a3, 2);
        v18 = *(a1 + 8);
        v17 = &stru_282DCC058;
        goto LABEL_16;
      }

      if (C3DProgramHashCodeGetEffectPropertyTextureType(*a1, a2) == 4)
      {
        v13 = 7;
      }

      else
      {
        v13 = 6;
      }

      [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:{__GetDefineForPropertyAndSuffix(a3, v13)}];
      *(a1 + 24) = 1;
      [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:v11];
      result = C3DProgramHashCodeGetEffectPropertyHashCode(*a1, a2);
      v14 = result;
      if ((result & 0x2000) != 0)
      {
        result = [*(a1 + 8) setObject:&stru_282DCC058 forKeyedSubscript:{__GetDefineForPropertyAndSuffix(a3, 3)}];
      }

      v15 = (v14 >> 14) & 0xF;
      if (v15 && v15 != 15)
      {
        v16 = __GetDefineForPropertyAndSuffix(a3, 4);
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v15];
        v18 = *(a1 + 8);
        v19 = v16;
LABEL_16:
        result = [v18 setObject:v17 forKeyedSubscript:v19];
      }
    }
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    [v20 addObject:{__GetDefineForPropertyAndSuffix(a3, 1)}];
    [*(a1 + 16) addObject:{__GetDefineForPropertyAndSuffix(a3, 2)}];
    [*(a1 + 16) addObject:{__GetDefineForPropertyAndSuffix(a3, 3)}];
    [*(a1 + 16) addObject:{__GetDefineForPropertyAndSuffix(a3, 4)}];
    [*(a1 + 16) addObject:{__GetDefineForPropertyAndSuffix(a3, 5)}];
    [*(a1 + 16) addObject:{__GetDefineForPropertyAndSuffix(a3, 6)}];
    result = [*(a1 + 16) addObject:{__GetDefineForPropertyAndSuffix(a3, 7)}];
  }

  if (a3 != 4)
  {
    result = [*(a1 + 8) objectForKeyedSubscript:v11];
    if (result)
    {
      result = C3DProgramHashCodeGetEffectPropertyHashCode(*a1, a2);
      v21 = (result >> 18) & 0xF;
      if (v21 != 15)
      {
        if (a3 == 15)
        {
          UVSetInfo = C3DProgramHashCodeGetUVSetInfo(*a1, v21);
          v23 = UVSetInfo;
          v24 = HIBYTE(UVSetInfo);
          v25 = *(a1 + 112);
          if (v24 <= 0xFE)
          {
            return [v25 appendFormat:@"float2 _%@Texcoord = (scn_commonprofile.textureTransforms[%d] * float4(_geometry.texcoords[%d], 0., 1.)).xy;\n", DefineForPropertyAndSuffix, (*(a1 + 128) - 1), v23];
          }

          else
          {
            return [v25 appendFormat:@"float2 _%@Texcoord = _geometry.texcoords[%d].xy;\n", DefineForPropertyAndSuffix, v23, v26];
          }
        }

        else
        {
          return [*(a1 + 120) appendFormat:@"    _surface.%@Texcoord = in.texcoord%d;\n", DefineForPropertyAndSuffix, v21, v26];
        }
      }
    }
  }

  return result;
}

void sub_21C15E714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__InjectModifiers(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a3;
  EntryPoint = C3DShaderModifierGetEntryPoint(*a3, a2);
  if (EntryPoint != v3)
  {
    v8 = scn_default_log(EntryPoint, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __InjectModifiers_cold_1(v8, v7, v9, v10, v11, v12, v13, v14);
    }
  }

  Declaration = C3DShaderModifierGetDeclaration(v5, v7);
  if (Declaration)
  {
    [*(a1 + 32) appendString:Declaration];
  }

  Code = C3DShaderModifierGetCode(v5, v16);
  if (Code)
  {
    *(a1 + 8 * v3 + 48) = Code;
  }

  else
  {
    v19 = scn_default_log(0, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __InjectModifiers_cold_2();
    }
  }

  Defines = C3DShaderModifierGetDefines(v5, v18);
  if (Defines)
  {
    CFDictionaryApplyFunction(Defines, __appendDictionary_1, *(a1 + 8));
  }

  result = C3DShaderModifierGetStandardUniformsUsed(v5, v21);
  if (result)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ____InjectModifiers_block_invoke;
    v23[3] = &__block_descriptor_40_e25_v32__0__NSString_8_16_B24l;
    v23[4] = a1;
    return [result enumerateKeysAndObjectsUsingBlock:v23];
  }

  return result;
}

uint64_t __DefineForShaderModifierStandardUniformPerNode(void *a1)
{
  if (![a1 hasPrefix:@"scn_node."])
  {
    return 0;
  }

  v2 = [objc_msgSend(a1 substringFromIndex:{objc_msgSend(@"scn_node.", "length")), "uppercaseString"}];

  return [@"USE_" stringByAppendingString:v2];
}

const void *SCNCopyCGImageFromImage(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 CGImage];
  v3 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  return v3;
}

const char *C3DIOCreateCFStringFromCString(const char *cStr)
{
  if (cStr)
  {
    return CFStringCreateWithCString(0, cStr, 0x8000100u);
  }

  return cStr;
}

uint64_t _IsFileAvailableAtURL(const __CFURL *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = CFURLCopyScheme(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFStringCompare(v4, @"file", 0) == kCFCompareEqualTo)
  {
    CFRelease(v5);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      memset(&v7, 0, sizeof(v7));
      if (!stat(buffer, &v7) && (v7.st_mode & 0xF000) == 0x8000)
      {
        return access(buffer, 4) == 0;
      }
    }

    return 0;
  }

  CFStringCompare(v5, @"http", 0);
  CFRelease(v5);
  return a2;
}

const __CFURL *C3DIOCopyURLForInitialURL(CFURLRef url, const __CFArray *a2, const __CFArray *a3, const __CFArray *a4, const __CFArray *a5, char a6)
{
  *&v27[5] = *MEMORY[0x277D85DE8];
  if ((a6 & 1) == 0)
  {
    v11 = __CopyAvailableFileURLOrWithPreferredExtensions(url, a3);
    if (v11)
    {
      v12 = v11;
      if (_checkURLPermissions(url, a4, a5))
      {
        return v12;
      }

      CFRelease(v12);
    }
  }

  if (a2)
  {
    isAbsolute = 0;
    v13 = CFURLCopyStrictPath(url, &isAbsolute);
    if (v13)
    {
      CFRelease(v13);
    }

    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v15 = Count;
      for (i = 0; v15 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v18 = ValueAtIndex;
        if (isAbsolute)
        {
          PathComponent = CFURLCopyLastPathComponent(url);
          if (PathComponent)
          {
            v21 = PathComponent;
            v22 = CFStringGetLength(PathComponent) < 1 ? 0 : CFURLCreateCopyAppendingPathComponent(0, v18, v21, 0);
            CFRelease(v21);
            if (v22)
            {
LABEL_19:
              v12 = __CopyAvailableFileURLOrWithPreferredExtensions(v22, a3);
              CFRelease(v22);
              if (_checkURLPermissions(v12, a4, a5))
              {
                return v12;
              }

              if (v12)
              {
                CFRelease(v12);
              }

              continue;
            }
          }
        }

        else
        {
          PathComponent = _C3DURLCreateCopyByAppendingURL(ValueAtIndex, url, 0);
          v22 = PathComponent;
          if (PathComponent)
          {
            goto LABEL_19;
          }
        }

        v23 = scn_default_log(PathComponent, v20);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          C3DIOCopyURLForInitialURL_cold_1(buf, v27, v23);
        }
      }
    }
  }

  return 0;
}

const __CFURL *__CopyAvailableFileURLOrWithPreferredExtensions(CFURLRef url, const __CFArray *a2)
{
  if (a2)
  {
    v4 = CFURLCreateCopyDeletingPathExtension(0, url);
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v8 = *MEMORY[0x277CBECE8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
        v10 = CFURLCreateCopyAppendingPathExtension(v8, v4, ValueAtIndex);
        if (_IsFileAvailableAtURL(v10, 0))
        {
          break;
        }

        CFRelease(v10);
        if (v6 == ++v7)
        {
          goto LABEL_6;
        }
      }

      CFRelease(v4);
      return v10;
    }

LABEL_6:
    CFRelease(v4);
  }

  if (!_IsFileAvailableAtURL(url, 1))
  {
    return 0;
  }

  return CFRetain(url);
}

uint64_t _checkURLPermissions(const __CFURL *a1, CFArrayRef theArray, const __CFArray *a3)
{
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    v6 = __FileURLHasPrefixInArray(a1, theArray);
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 1;
    if (!a3)
    {
LABEL_8:
      v7 = 1;
      return v6 & v7;
    }
  }

  if (CFArrayGetCount(a3) < 1)
  {
    goto LABEL_8;
  }

  v7 = __FileURLHasPrefixInArray(a1, a3) ^ 1;
  return v6 & v7;
}

char *__FileURLHasPrefixInArray(const __CFURL *a1, const __CFArray *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  result = CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024);
  if (result)
  {
    result = realpath_DARWIN_EXTSN(buffer, __s1);
    if (result)
    {
      if (CFArrayGetCount(a2) < 1 || CFArrayGetCount(a2) < 1)
      {
        return 0;
      }

      else
      {
        v4 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v4);
          if (CFURLGetFileSystemRepresentation(ValueAtIndex, 1u, v7, 1024))
          {
            v6 = strlen(v7);
            if (!strncmp(__s1, v7, v6))
            {
              break;
            }
          }

          if (++v4 >= CFArrayGetCount(a2))
          {
            return 0;
          }
        }

        return 1;
      }
    }
  }

  return result;
}

const __CFURL *_C3DURLCreateCopyByAppendingURL(const __CFURL *a1, const __CFURL *a2, Boolean a3)
{
  v3 = a1;
  if (!a2)
  {
    CFRetain(a1);
    return v3;
  }

  PathComponent = CFURLCopyLastPathComponent(a2);
  if (PathComponent)
  {
    v7 = PathComponent;
    if (CFEqual(PathComponent, @".") || CFEqual(v7, @".."))
    {
      CFRelease(v7);
      goto LABEL_6;
    }

    v9 = CFURLCreateCopyDeletingLastPathComponent(0, a2);
    v10 = _C3DURLCreateCopyByAppendingURL(v3, v9, 1u);
    v3 = CFURLCreateCopyAppendingPathComponent(0, v10, v7, a3);
    CFRelease(v10);
    CFRelease(v7);
    if (v9)
    {
      CFRelease(v9);
    }

    return v3;
  }

LABEL_6:

  return CFRetain(v3);
}

void C3D::DOFBlurCoCYPass::DOFBlurCoCYPass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC76D8;
  v5[14] = a4;
}

uint64_t C3D::DOFBlurCoCYPass::setup(C3D::DOFBlurCoCYPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = (*(*this + 88))(this);
  v3 = fmax(*(v2 + 8) * 0.5 / **(this + 14) * 0.25, 1.0);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 16) = v3;
  v4 = fmax(*(v2 + 12) * 0.5 / **(this + 14) * 0.25, 1.0);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 18) = v4;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 28) = 115;
  v5 = fmax(*(v2 + 8) * 0.5 / **(this + 14) * 0.25, 1.0);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16) = v5;
  LODWORD(v2) = fmax(*(v2 + 12) * 0.5 / **(this + 14) * 0.25, 1.0);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 18) = v2;
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 28) = 115;
  result = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(result + 8) = "DOFCoCBlurred";
  return result;
}

void *C3D::DOFBlurCoCYPass::compile(C3D::DOFBlurCoCYPass *this, uint64_t a2)
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

uint64_t C3D::DOFBlurCoCYPass::execute(C3D::Pass *this, SCNMTLComputeCommandEncoder **a2)
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

void C3D::DOFBlurCoCYPassResource::~DOFBlurCoCYPassResource(C3D::DOFBlurCoCYPassResource *this)
{
  *this = &unk_282DC7748;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC7748;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t __C3DAvoidOccluderConstraintDelegateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DAvoidOccluderConstraintDelegateGetTypeID_typeID = result;
  return result;
}

void *C3DAvoidOccluderConstraintDelegateCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DAvoidOccluderConstraintDelegateCreate_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (C3DAvoidOccluderConstraintDelegateGetTypeID_onceToken != -1)
  {
    C3DAvoidOccluderConstraintDelegateCreate_cold_2();
  }

  result = C3DTypeCreateInstance_(C3DAvoidOccluderConstraintDelegateGetTypeID_typeID, 24);
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t C3DAvoidOccluderConstraintDelegateShouldAvoidOccluder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DAvoidOccluderConstraintDelegateShouldAvoidOccluder_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    return v14(*(a1 + 16), a2, a3);
  }

  else
  {
    return 1;
  }
}

void C3DAvoidOccluderConstraintDelegateDidAvoidOccluder(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DAvoidOccluderConstraintDelegateShouldAvoidOccluder_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(result + 32);
  if (v14)
  {
    v14(*(result + 16), a2, a3);
  }
}

C3D::RenderPass *C3D::CompositePass::CompositePass(C3D::RenderPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  result = C3D::RenderPass::RenderPass(a1, a2, a3);
  *result = &unk_282DC7788;
  *(result + 30) = a4;
  return result;
}

void C3D::CompositePass::setup(C3D::CompositePass *this)
{
  C3D::Pass::setInputCount(this, *(*(this + 30) + 10) + *(*(this + 30) + 12) + *(*(this + 30) + 8) + 1);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "COLOR";
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 66) |= 4u;
  *(this + 248) = 0;
  v3 = *(this + 30);
  v4 = 1;
  if (v3[10] == 1)
  {
    *(C3D::PassDescriptor::inputAtIndex((this + 32), 1) + 8) = "Bloom";
    *(this + 249) = 1;
    v3 = *(this + 30);
    v4 = 2;
  }

  if (v3[12] == 1)
  {
    *(C3D::PassDescriptor::inputAtIndex((this + 32), v4) + 8) = "DOF-Final";
    *(this + 253) = v4;
    v4 = (v4 + 1);
    v3 = *(this + 30);
  }

  if (v3[8] == 1)
  {
    *C3D::PassDescriptor::inputAtIndex((this + 32), v4) = 1;
    *(C3D::PassDescriptor::inputAtIndex((this + 32), v4) + 8) = "AverageLuminance";
    *(this + 252) = v4;
  }

  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 8) = "COLOR";
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 65) = 0;
  v5 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v5 + 66) &= 0xFFFCu;
  v6 = this;
  do
  {
    v7 = v6;
    v6 = *(v6 + 1);
  }

  while (v6);
  C3D::Pass::parentColorDesc(&v10, v7);
  v8 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v8 + 16) = v10;
  *(v8 + 32) = v11;
  C3D::Pass::parentColorDesc(&v10, this);
  if (BYTE8(v10) == 5)
  {
    *(this + 19) = 6;
  }

  else if (C3DEngineContextGetEyeCount(*(this + 2)) >= 2)
  {
    *(this + 19) = C3DEngineContextGetEyeCount(*(this + 2));
    *(this + 120) = 1;
    v9 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
    *(v9 + 66) = *(v9 + 66) & 0xFFFC | 1;
  }
}

void C3D::CompositePass::compile(C3D::CompositePass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = *(this + 30);
  v5 = v4[10] | (2 * v4[20]) | (4 * v4[16]) | (8 * v4[17]) | (16 * v4[14]) | (32 * v4[15]) | (v4[13] << 6) | (v4[8] << 7) | (v4[9] << 8) | (v4[12] << 9);
  v6 = v5 | (*(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 28) << 10) | (v4[18] << 26) | (v4[19] << 27) | (v4[22] << 28);
  v7 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6) ^ ((0xC6A4A7935BD1E995 * v6) >> 47))));
  v8 = *(*(this + 3) + 128);
  v9 = C3D::RenderGraphResourceManager::get(v8, (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47));
  *(this + 32) = v9;
  if (!v9)
  {
    operator new();
  }

  if (*(*(this + 30) + 18) == 1)
  {
    v10 = [-[SCNMTLRenderContext commandQueue](RenderContext) commandBuffer];
    *(this + 33) = C3D::getGrainNoise256(v10, RenderContext, v8);
    [v10 commit];
  }
}

void C3D::CompositePass::execute(C3D::Pass *a1, uint64_t a2)
{
  v4 = *a2;
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 2), a2);
  v6 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  PointOfView = C3DEngineContextGetPointOfView(*(a1 + 2), v7);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView, v9);
    if (Camera)
    {
      if (*(*(a1 + 30) + 17) == 1 && (ColorGradingEffectSlot = C3DCameraGetColorGradingEffectSlot(Camera, 0)) != 0 && (v13 = ColorGradingEffectSlot, C3DEffectSlotHasImageOrTexture(ColorGradingEffectSlot, v11)))
      {
        v14 = [v6 renderResourceForEffectSlot:v13 withEngineContext:*(a1 + 2) didFallbackToDefaultTexture:0];
      }

      else
      {
        v14 = 0;
      }

      v16 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 32) + 16 :v11) detail:"state" :?NSRetainFct];
      if (*(v4 + 3376) != v16)
      {
        *(v4 + 3376) = v16;
        [*(v4 + 3392) setRenderPipelineState:v16];
      }

      v27 = xmmword_21C281190;
      if (C3DEngineContextGetEyeCount(*(a1 + 2)) >= 2)
      {
        ViewportAtIndex = C3DEngineContextGetViewportAtIndex(*(a1 + 2), *(a2 + 16));
        v26 = vextq_s8(ViewportAtIndex, ViewportAtIndex, 8uLL);
        v25 = vextq_s8(v26, v26, 8uLL).u64[0];
        v28.val[0] = vdiv_f32(vzip1_s32(*v26.i8, v25), vdup_laneq_s32(*(*(*a1 + 88))(a1), 2));
        v28.val[1] = vdiv_f32(vzip2_s32(*v26.i8, v25), vdup_laneq_s32(*(*(*a1 + 88))(a1), 3));
        v18 = &v27;
        vst2_f32(v18, v28);
      }

      SCNMTLRenderCommandEncoder::setVertexBytes(v4, &v27, 0x10uLL, 0);
      SCNMTLRenderCommandEncoder::setFragmentBuffer(v4, *(*(a1 + 30) + 40), *(*(a1 + 30) + 48), 0);
      SCNMTLRenderCommandEncoder::setFragmentBuffer(v4, *(*(a1 + 30) + 56), 0, 1);
      v19 = C3D::Pass::inputTextureAtIndex(a1, *(a1 + 248));
      SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v19, 0);
      if (*(*(a1 + 30) + 10) == 1)
      {
        v20 = C3D::Pass::inputTextureAtIndex(a1, *(a1 + 249));
        SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v20, 1uLL);
      }

      SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v14, 2uLL);
      v22 = *(a1 + 30);
      if (*(v22 + 12) == 1)
      {
        v23 = C3D::Pass::inputTextureAtIndex(a1, *(a1 + 253));
        SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v23, 5uLL);
        v22 = *(a1 + 30);
      }

      if (*(v22 + 18) == 1)
      {
        SCNMTLRenderCommandEncoder::setFragmentTexture(v4, *(a1 + 33), 6uLL);
      }

      SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v4, v21);
    }

    else if ((C3D::CompositePass::execute(C3D::RenderArgs const&)::done & 1) == 0)
    {
      C3D::CompositePass::execute(C3D::RenderArgs const&)::done = 1;
      v24 = scn_default_log(0, v11);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        C3D::SSAOUpSamplePass::execute(v24);
      }
    }
  }

  else if ((C3D::CompositePass::execute(C3D::RenderArgs const&)::done & 1) == 0)
  {
    C3D::CompositePass::execute(C3D::RenderArgs const&)::done = 1;
    v15 = scn_default_log(0, v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      C3D::SSAOUpSamplePass::execute(v15);
    }
  }
}

void C3D::CompositePassResource::~CompositePassResource(C3D::CompositePassResource *this)
{
  *this = &unk_282DC77F8;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC77F8;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t kSCNTextureSourceCallbackGetMetalTexture(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = INFINITY;
  v5 = [a2 metalTextureWithEngineContext:a1 textureSampler:a3 nextFrameTime:&v8 status:a4];
  C3DEngineContextSetNextFrameTime(a1, v6, v8);
  return v5;
}

void kSCNTextureSourceCallbackRender(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = INFINITY;
  [a2 renderWithEngineContext:a1 textureSampler:a3 nextFrameTime:&v5];
  C3DEngineContextSetNextFrameTime(a1, v4, v5);
}

uint64_t kSCNImageSourceCallbackCreateTextureProxy(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 textureSource];
  if (v4)
  {
    v6 = v4;
    v9[0] = xmmword_282DC7868;
    v9[1] = *off_282DC7878;
    v7 = C3DTextureProxyCreate();
    C3DTextureProxySetCallbacks(v7, v9);
    C3DTextureProxySetSource(v7, v6);
  }

  else
  {
    C3DEngineContextSetNextFrameTimeToAsap(a1, v5);
    return 0;
  }

  return v7;
}

uint64_t _removeSKRendererLinkToSource(uint64_t a1, void *a2)
{
  __SKSceneClass();
  result = objc_opt_class();
  if (result)
  {
    __SKSceneClass();
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {

      return [a2 setScene:0];
    }
  }

  return result;
}

void __C3DTextureSourceGetSharedRendererContext_block_invoke()
{
  C3DTextureSourceGetSharedRendererContext_rendererContext = C3DRendererContextCreateWithOptions();
  v0 = objc_alloc(MEMORY[0x277CD9388]);
  v1 = [v0 initWithAPI:3 properties:MEMORY[0x277CBEC10]];
  v2 = C3DTextureSourceGetSharedRendererContext_rendererContext;

  C3DRendererContextSetGLContext(v2, v1);
}

uint64_t kSCNTextureSourceCallbackGetOpenGLTexture(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = INFINITY;
  v4 = [a2 textureWithEngineContext:a1 textureSampler:a3 nextFrameTime:&v7];
  C3DEngineContextSetNextFrameTime(a1, v5, v7);
  return v4;
}

void sub_21C1662AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 192), 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_21C167624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a37)
  {
    operator delete(a37);
  }

  vmesh::DisplacedSubdivisionMesh::~DisplacedSubdivisionMesh(&a43);
  _Block_object_dispose(&STACK[0x320], 8);
  v45 = STACK[0x340];
  if (STACK[0x340])
  {
    STACK[0x348] = v45;
    operator delete(v45);
  }

  v46 = *(v43 - 248);
  if (v46)
  {
    *(v43 - 240) = v46;
    operator delete(v46);
  }

  v47 = *(v43 - 224);
  if (v47)
  {
    *(v43 - 216) = v47;
    operator delete(v47);
  }

  v48 = *(v43 - 200);
  if (v48)
  {
    *(v43 - 192) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

uint64_t newUInt32BufferFromUInt16Buffer(void *a1, unsigned int a2, uint64_t a3)
{
  v6 = [a1 contents];
  memset(&v24, 0, sizeof(v24));
  v7 = a2;
  std::vector<unsigned int>::reserve(&v24, a2);
  if (a2)
  {
    end = v24.__end_;
    do
    {
      v10 = *v6++;
      v9 = v10;
      if (end >= v24.__end_cap_.__value_)
      {
        begin = v24.__begin_;
        v12 = end - v24.__begin_;
        v13 = end - v24.__begin_;
        v14 = v13 + 1;
        if ((v13 + 1) >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v15 = v24.__end_cap_.__value_ - v24.__begin_;
        if ((v24.__end_cap_.__value_ - v24.__begin_) >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(&v24, v16);
        }

        v17 = end - v24.__begin_;
        v18 = (4 * v13);
        v19 = (4 * v13 - 4 * v17);
        *v18 = v9;
        end = v18 + 1;
        memcpy(v19, begin, v12);
        v20 = v24.__begin_;
        v24.__begin_ = v19;
        v24.__end_ = end;
        v24.__end_cap_.__value_ = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *end++ = v9;
      }

      v24.__end_ = end;
      --v7;
    }

    while (v7);
  }

  [a1 resourceOptions];
  [SCNMTLResourceManager newBufferWithBytes:a3 length:? options:?];
  v22 = v21;
  if (v24.__begin_)
  {
    v24.__end_ = v24.__begin_;
    operator delete(v24.__begin_);
  }

  return v22;
}

void sub_21C1679CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getTotalTriangleCount(__C3DMesh *a1, uint64_t a2)
{
  if (C3DMeshGetElementsCount(a1, a2) < 1)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = 0;
  do
  {
    ElementAtIndex = C3DMeshGetElementAtIndex(a1, v4, 1);
    v3 = v3 + C3DMeshElementGetPrimitiveCount(ElementAtIndex);
    ++v4;
  }

  while (v4 < C3DMeshGetElementsCount(a1, v6));
  return v3;
}

uint64_t vmesh::DisplacedSubdivisionMesh::loadBaseMeshFromVectors(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5)
{
  std::vector<unsigned int>::vector[abi:nn200100](__p, a5);
  BaseMeshFromVectors = vmesh::TriangleMesh::loadBaseMeshFromVectors((a1 + 32), a2, a3, a4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return BaseMeshFromVectors;
}

void sub_21C167D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vmesh::DisplacedSubdivisionMesh::~DisplacedSubdivisionMesh(vmesh::DisplacedSubdivisionMesh *this)
{
  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(this + 392);
  v2 = *(this + 46);
  if (v2)
  {
    *(this + 47) = v2;
    operator delete(v2);
  }

  vmesh::TriangleMesh::~TriangleMesh(this + 25);
  vmesh::TriangleMesh::~TriangleMesh(this + 4);
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void vmesh::TriangleMesh::~TriangleMesh(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  v2 = this[15];
  if (v2)
  {
    this[16] = v2;
    operator delete(v2);
  }

  v3 = this[12];
  if (v3)
  {
    this[13] = v3;
    operator delete(v3);
  }

  v4 = this[9];
  if (v4)
  {
    this[10] = v4;
    operator delete(v4);
  }

  v5 = this[6];
  if (v5)
  {
    this[7] = v5;
    operator delete(v5);
  }

  v6 = this[3];
  if (v6)
  {
    this[4] = v6;
    operator delete(v6);
  }

  v7 = *this;
  if (*this)
  {
    this[1] = v7;
    operator delete(v7);
  }
}

uint64_t *std::vector<unsigned int>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<float>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 2);
  }

  return a1;
}

uint64_t *OUTLINED_FUNCTION_0_13(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{

  return SCNMTLComputeCommandEncoder::setBytes(v11, &a11, 4uLL, 0xCuLL);
}

double OUTLINED_FUNCTION_2_15()
{
  result = 0.0;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return [v4 countByEnumeratingWithState:va objects:v5 - 200 count:16];
}

void _C3DGlyphCFFinalize(uint64_t result)
{
  if (result)
  {
    v2 = *(result + 56);
    if (v2)
    {
      CFRelease(v2);
    }

    C3DShapeFinalize(result);
  }
}

CFStringRef _C3DGlyphCFCopyDebugDescription(uint64_t a1)
{
  v2 = CTFontCopyGraphicsFont(*(a1 + 56), 0);
  v3 = CGFontCopyFullName(v2);
  v4 = CGFontCopyGlyphNameForGlyph(v2, *(a1 + 64));
  v5 = CFGetAllocator(a1);
  v6 = CFStringCreateWithFormat(v5, 0, @"<C3DGlyph '%@' in '%@'>", v4, v3);
  CFRelease(v4);
  CFRelease(v3);
  CGFontRelease(v2);
  return v6;
}

uint64_t __C3DGlyphGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DGlyphGetTypeID_typeID = result;
  return result;
}

uint64_t C3DGlyphCreate(const __CTFont *a1, CGGlyph a2, uint64_t a3)
{
  if (C3DGlyphGetTypeID_onceToken != -1)
  {
    C3DGlyphCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DGlyphGetTypeID_typeID, 56);
  PathForGlyph = CTFontCreatePathForGlyph(a1, a2, 0);
  if (*(a3 + 24))
  {
    C3DGlyphCreate_cold_2();
  }

  v8 = PathForGlyph;
  *(a3 + 24) = PathForGlyph;
  v9 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = *(a3 + 32);
  v12 = *(a3 + 48);
  C3DShapeInit(Instance, v11);
  CGPathRelease(v8);
  *(Instance + 56) = CFRetain(a1);
  *(Instance + 64) = a2;
  return Instance;
}

uint64_t C3DCreateProgram(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t a4, __CFString *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  Program = glCreateProgram();
  ++*(a1 + 400);
  v30 = 0;
  if (a2)
  {
    v10 = _create_compile_and_attach_shader(a1, a2, &v30, 0, Program, a5);
    v11 = v10;
    v29 = 0;
    if (!a3)
    {
      if (!v10)
      {
        goto LABEL_10;
      }

LABEL_9:
      glLinkProgram(Program);
      goto LABEL_10;
    }
  }

  else
  {
    v29 = 0;
    if (!a3)
    {
      goto LABEL_9;
    }

    v11 = 1;
  }

  v12 = _create_compile_and_attach_shader(a1, a3, &v29, 1, Program, a5);
  if (v11 && v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  params = 0;
  glGetProgramiv(Program, 0x8B82u, &params);
  if (!params)
  {
    v27 = 0;
    glGetProgramiv(Program, 0x8B84u, &v27);
    MEMORY[0x28223BE20](v13);
    v15 = &v26 - ((v14 + 15) & 0x1FFFFFFF0);
    *v15 = 0;
    glGetProgramInfoLog(Program, v27, 0, v15);
    v18 = scn_default_log(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      C3DCreateProgram_cold_1(v15, v18, v19, v20, v21, v22, v23, v24);
      if (!a5)
      {
        goto LABEL_14;
      }
    }

    else if (!a5)
    {
LABEL_14:
      glDeleteProgram(Program);
      return 0;
    }

    CFStringAppendFormat(a5, 0, @"%s\n", v15);
    goto LABEL_14;
  }

  return Program;
}

BOOL _create_compile_and_attach_shader(uint64_t a1, const __CFString *a2, GLuint *a3, uint64_t a4, GLuint a5, __CFString *a6)
{
  v8 = _create_and_compile_shader(a1, a2, a3, a4, a6);
  if (v8)
  {
    glAttachShader(a5, *a3);
    glDeleteShader(*a3);
  }

  return v8;
}

BOOL _create_and_compile_shader(uint64_t a1, const __CFString *a2, GLuint *a3, unsigned int a4, __CFString *a5)
{
  string[2] = *MEMORY[0x277D85DE8];
  Shader = glCreateShader(*(a1 + 4 * a4 + 1152));
  *a3 = Shader;
  if (!Shader)
  {
    return 0;
  }

  v10 = C3DCreateCStringFromString(a2);
  if (v10)
  {
    v12 = v10;
    string[1] = 0;
    C3DRendererContextGetProfile(a1);
    string[0] = v12;
    params = 0;
    glShaderSource(*a3, 1, string, 0);
    glCompileShader(*a3);
    glGetShaderiv(*a3, 0x8B81u, &params);
    v13 = params != 0;
    if (params)
    {
      free(v12);
      return v13;
    }

    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a2, @"\n");
    Count = CFArrayGetCount(ArrayBySeparatingStrings);
    if (Count >= 1)
    {
      v25 = 0;
      *&v24 = 67109378;
      v42 = v24;
      while (1)
      {
        v26 = scn_default_log(Count, v23);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          break;
        }

        if (a5)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v25;
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        if (v25 >= Count)
        {
          goto LABEL_18;
        }
      }

      ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v25);
      *buf = v42;
      v45 = v25 + 1;
      v46 = 2112;
      v47 = ValueAtIndex;
      _os_log_error_impl(&dword_21BEF7000, v26, OS_LOG_TYPE_ERROR, "Error: %3d: %@", buf, 0x12u);
      if (!a5)
      {
        goto LABEL_14;
      }

LABEL_13:
      v27 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v25);
      CFStringAppendFormat(a5, 0, @"%@\n", v27);
      goto LABEL_14;
    }

LABEL_18:
    CFRelease(ArrayBySeparatingStrings);
    *buf = 0;
    glGetShaderiv(*a3, 0x8B84u, buf);
    MEMORY[0x28223BE20](v29);
    v31 = &v42 - ((v30 + 15) & 0x1FFFFFFF0);
    *v31 = 0;
    glGetShaderInfoLog(*a3, *buf, 0, v31);
    v34 = scn_default_log(v32, v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      _create_and_compile_shader_cold_1(v31, v34, v35, v36, v37, v38, v39, v40);
      if (!a5)
      {
        goto LABEL_21;
      }
    }

    else if (!a5)
    {
LABEL_21:
      glDeleteShader(*a3);
      *a3 = 0;
      free(v12);
      return v13;
    }

    CFStringAppendFormat(a5, 0, @"%s\n", v31);
    goto LABEL_21;
  }

  v14 = scn_default_log(0, v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    _create_and_compile_shader_cold_2(a2, v14, v15, v16, v17, v18, v19, v20);
  }

  glDeleteShader(*a3);
  v13 = 0;
  *a3 = 0;
  return v13;
}

CFMutableDictionaryRef C3DTextFrameRebuildSharedGlyphs(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 32) = result;
  return result;
}

const void *C3DTextFrameGetCachedGlyph(uint64_t a1, unsigned int a2, void *key, uint64_t a4)
{
  Value = CFDictionaryGetValue(*(a1 + 32), key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    CFDictionaryAddValue(*(a1 + 32), key, Value);
    CFRelease(Value);
  }

  v9 = CFDictionaryGetValue(Value, a2);
  if (!v9)
  {
    v10 = *(a4 + 16);
    v12[0] = *a4;
    v12[1] = v10;
    v12[2] = *(a4 + 32);
    v13 = *(a4 + 48);
    v9 = C3DGlyphCreate(key, a2, v12);
    CFDictionaryAddValue(Value, a2, v9);
    CFRelease(v9);
  }

  return v9;
}

void _C3DTextFrameCFFinalize(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[3];

    CFRelease(v4);
  }
}

CFStringRef _C3DTextFrameCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTextFrame>");
}

CFStringRef _C3DTextFrameCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTextFrame>");
}

uint64_t __C3DTextFrameGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DTextFrameGetTypeID_typeID = result;
  return result;
}

uint64_t C3DTextFrameCreate(const void *a1, uint64_t a2)
{
  if (C3DTextFrameGetTypeID_onceToken != -1)
  {
    C3DTextFrameCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTextFrameGetTypeID_typeID, 24);
  *(Instance + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    v5 = CFRetain(a1);
    *(Instance + 16) = v5;
    if (v5)
    {
      C3DTextFrameRebuildSharedGlyphs(Instance);
      Lines = CTFrameGetLines(a1);
      if (CFArrayGetCount(Lines) >= 1)
      {
        v7 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Lines, v7);
          v9 = *(a2 + 16);
          v12[0] = *a2;
          v12[1] = v9;
          v12[2] = *(a2 + 32);
          v13 = *(a2 + 48);
          v10 = C3DTextLineCreateWithTextFrame(ValueAtIndex, v12, Instance);
          CFArrayAppendValue(*(Instance + 24), v10);
          CFRelease(v10);
          ++v7;
        }

        while (v7 < CFArrayGetCount(Lines));
      }
    }
  }

  else
  {
    *(Instance + 16) = 0;
  }

  return Instance;
}

void C3D::HDRAverageLuminancePass::HDRAverageLuminancePass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC78D8;
  v5[15] = a4;
}

uint64_t C3D::HDRAverageLuminancePass::setup(C3D::HDRAverageLuminancePass *this)
{
  if (*(*(this + 15) + 9) == 1)
  {
    C3D::Pass::setInputCount(this, 1u);
    *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "FrameLuminance";
  }

  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 8) = "AverageLuminance";
  v2 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v2 + 66) |= 0x100u;
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 24) = 0;
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16) = 240;
  result = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(result + 28) = 25;
  return result;
}

void C3D::HDRAverageLuminancePass::compile(C3D::HDRAverageLuminancePass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = (*(*this + 64))(this);
  v5 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v4);
  *(this + 14) = v5;
  if (!v5)
  {
    operator new();
  }

  v6 = C3D::Pass::resource(this);
  v7 = *(this + 3);
  v9 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(this + 14) + 40, v8);
  PersistentResource = C3D::RenderGraph::createPersistentResource(v7, v9);
  C3D::PassResource::setOutputAtIndex(v6, PersistentResource, 0);
}

uint64_t C3D::HDRAverageLuminancePass::execute(C3D::Pass *a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 14) + 48, a2);
  v6 = *(a1 + 15);
  *(v6 + 56) = v4;
  v7 = *(v6 + 9);
  v9 = *(v6 + 40);
  v8 = *(v6 + 48);
  v10 = v3->_buffers[0];
  if (v7 != 1)
  {
    if (v10 == v9)
    {
      if (v3->_offsets[0] == v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3->_buffers[0] = v9;
      v4 = *(*(a1 + 15) + 56);
    }

    v3->_offsets[0] = v8;
    v3->_buffersToBind[0] |= 1uLL;
LABEL_12:
    if (v3->_buffers[1] == v4)
    {
      if (!v3->_offsets[1])
      {
LABEL_23:
        v16 = 16;
        goto LABEL_24;
      }
    }

    else
    {
      v3->_buffers[1] = v4;
    }

    v3->_offsets[1] = 0;
    v3->_buffersToBind[0] |= 2uLL;
    goto LABEL_23;
  }

  if (v10 == v9)
  {
    if (v3->_offsets[0] == v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3->_buffers[0] = v9;
    v4 = *(*(a1 + 15) + 56);
  }

  v3->_offsets[0] = v8;
  v3->_buffersToBind[0] |= 1uLL;
LABEL_8:
  if (v3->_buffers[1] != v4)
  {
    v3->_buffers[1] = v4;
LABEL_15:
    v3->_offsets[1] = 0;
    v3->_buffersToBind[0] |= 2uLL;
    goto LABEL_16;
  }

  if (v3->_offsets[1])
  {
    goto LABEL_15;
  }

LABEL_16:
  v11 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 14) + 40, v5);
  if (v3->_textures[0] != v11)
  {
    v3->_textures[0] = v11;
    v3->_texturesToBind[0] |= 1uLL;
  }

  v12 = C3D::Pass::inputTextureAtIndex(a1, 0);
  if (v3->_textures[1] != v12)
  {
    v3->_textures[1] = v12;
    v3->_texturesToBind[0] |= 2uLL;
  }

  v14 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 14) + 24, v13);
  v15 = [(SCNMTLOpenSubdivComputeEvaluator *)v14 computeEvaluator];
  SCNMTLComputeCommandEncoder::dispatchOne(v3, v15);
  v16 = 32;
LABEL_24:
  v17 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 14) + v16, v5);
  v18 = [(SCNMTLOpenSubdivComputeEvaluator *)v17 computeEvaluator];

  return SCNMTLComputeCommandEncoder::dispatchOne(v3, v18);
}

void C3D::HDRAverageLuminancePassResource::~HDRAverageLuminancePassResource(C3D::HDRAverageLuminancePassResource *this)
{
  *this = &unk_282DC7948;
  v2 = *(this + 6);
  if (v2)
  {
  }

  v3 = *(this + 5);
  if (v3)
  {
  }

  v4 = *(this + 4);
  if (v4)
  {
  }

  v5 = *(this + 3);
  if (v5)
  {
  }

  v6 = *(this + 2);
  if (v6)
  {
  }
}

{
  *this = &unk_282DC7948;
  v2 = *(this + 6);
  if (v2)
  {
  }

  v3 = *(this + 5);
  if (v3)
  {
  }

  v4 = *(this + 4);
  if (v4)
  {
  }

  v5 = *(this + 3);
  if (v5)
  {
  }

  v6 = *(this + 2);
  if (v6)
  {
  }

  JUMPOUT(0x21CF07610);
}

void C3D::SSAOBlurPass::SSAOBlurPass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4, char a5)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v7 = &unk_282DC7968;
  *(v7 + 108) = a5;
  *(v7 + 120) = a4;
}

const char *C3D::SSAOBlurPass::name(C3D::SSAOBlurPass *this)
{
  if (*(this + 108))
  {
    return "SSAOBlurPass-Y";
  }

  else
  {
    return "SSAOBlurPass-X";
  }
}

uint64_t C3D::SSAOBlurPass::setup(C3D::SSAOBlurPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 28) = 115;
  v2 = C3D::Pass::descriptor(**(this + 15));
  v3 = *(C3D::PassDescriptor::outputAtIndex(v2, 0) + 16) / *(*(this + 15) + 12);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 16) = v3;
  v4 = C3D::Pass::descriptor(**(this + 15));
  v5 = *(C3D::PassDescriptor::outputAtIndex(v4, 0) + 18) / *(*(this + 15) + 12);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 18) = v5;
  v6 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v6 + 28) = 115;
  v7 = C3D::Pass::descriptor(**(this + 15));
  *(v6 + 16) = *(C3D::PassDescriptor::outputAtIndex(v7, 0) + 16) / *(*(this + 15) + 12);
  v8 = C3D::Pass::descriptor(**(this + 15));
  *(v6 + 18) = *(C3D::PassDescriptor::outputAtIndex(v8, 0) + 18) / *(*(this + 15) + 12);
  if (*(v6 + 24) == 5)
  {
    result = 6;
  }

  else
  {
    result = C3DEngineContextGetEyeCount(*(this + 2));
  }

  *(this + 19) = result;
  return result;
}

void *C3D::SSAOBlurPass::compile(C3D::SSAOBlurPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = *(*(this + 15) + 16) | (2 * *(*(this + 15) + 17)) | (4 * *(*(this + 15) + 12)) | (*(*(this + 15) + 8) << 6) | (*(this + 108) << 10);
  v5 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) >> 47));
  *(this + 14) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

void C3D::SSAOBlurPass::execute(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  PointOfView = C3DEngineContextGetPointOfView(*(a1 + 16), a2);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView, v6);
    if (Camera)
    {
      v9 = Camera;
      ViewportAtIndex = C3DEngineContextGetViewportAtIndex(*(a1 + 16), *(a2 + 8));
      SuperSamplingFactor = C3DEngineContextGetSuperSamplingFactor(*(a1 + 16));
      v11.i32[1] = ViewportAtIndex.n128_i32[1];
      *v11.i32 = *(*(a1 + 120) + 12);
      v28 = vdivq_f32(vmulq_n_f32(ViewportAtIndex, SuperSamplingFactor), vdupq_lane_s32(v11, 0));
      v35 = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionDepthThreshold(v9, v12), 0.0);
      v36 = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionNormalThreshold(v9, v13), 0.0);
      v34 = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionBias(v9, v14), 0.0);
      v33 = 1140457472;
      v15 = v28;
      v15.u64[1] = vadd_f32(*v28.f32, *&vextq_s8(v15, v15, 8uLL));
      v32 = v15;
      if (*(a1 + 108))
      {
        v16 = v28.f32[2];
      }

      else
      {
        v16 = ((v28.f32[2] + 256.0) + -1.0) * 0.0039062;
      }

      if (*(a1 + 108))
      {
        v17 = ((v28.f32[3] + 256.0) + -1.0) * 0.0039062;
      }

      else
      {
        v17 = v28.f32[3];
      }

      if (*(a1 + 108))
      {
        v18 = 1;
      }

      else
      {
        v18 = 256;
      }

      if (*(a1 + 108))
      {
        v19 = 256;
      }

      else
      {
        v19 = 1;
      }

      v20 = C3D::Pass::inputTextureAtIndex(a1, 0);
      if (v4->_textures[0] != v20)
      {
        v4->_textures[0] = v20;
        v4->_texturesToBind[0] |= 1uLL;
      }

      v21 = C3D::Pass::outputTextureAtIndex(a1, 0);
      if (v4->_textures[1] != v21)
      {
        v4->_textures[1] = v21;
        v4->_texturesToBind[0] |= 2uLL;
      }

      SCNMTLComputeCommandEncoder::setBytes(v4, v31, 0x40uLL, 0);
      v23 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 112) + 16, v22);
      v24 = [(SCNMTLOpenSubdivComputeEvaluator *)v23 computeEvaluator];
      v30.width = v16;
      v30.height = v17;
      v30.depth = 1;
      v29.width = v18;
      v29.height = v19;
      v29.depth = 1;
      SCNMTLComputeCommandEncoder::dispatch(v4, v24, &v30, &v29);
    }

    else if ((C3D::SSAOBlurPass::execute(C3D::ComputeArgs const&)::done & 1) == 0)
    {
      C3D::SSAOBlurPass::execute(C3D::ComputeArgs const&)::done = 1;
      v26 = scn_default_log(0, v8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        C3D::SSAOUpSamplePass::execute(v26);
      }
    }
  }

  else if ((C3D::SSAOBlurPass::execute(C3D::ComputeArgs const&)::done & 1) == 0)
  {
    C3D::SSAOBlurPass::execute(C3D::ComputeArgs const&)::done = 1;
    v25 = scn_default_log(0, v6);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      C3D::SSAOUpSamplePass::execute(v25);
    }
  }
}

void C3D::SSAOBlurPassResource::~SSAOBlurPassResource(C3D::SSAOBlurPassResource *this)
{
  *this = &unk_282DC79D8;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC79D8;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

void _C3DRasterizerStatesCFFinalize(_BYTE *a1)
{
  if (a1[44] == 1)
  {
    v2 = os_unfair_lock_trylock(&s_RasterizerStatesRegistryLock);
    if (v2)
    {
      v4 = scn_default_log(v2, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        _C3DRasterizerStatesCFFinalize_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    v12 = CFSetContainsValue(s_RasterizerStatesRegistry, a1);
    if (!v12)
    {
      v14 = scn_default_log(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        _C3DRasterizerStatesCFFinalize_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }

    CFSetRemoveValue(s_RasterizerStatesRegistry, a1);
    SharedInstance = C3DNotificationCenterGetSharedInstance(v22, v23);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationRasterizerStatesDidDie", a1, 0, 1u);
  }
}

void C3DRasterizerStatesRelease(CFTypeRef cf)
{
  if (cf)
  {
    if (*(cf + 44) == 1)
    {
      os_unfair_lock_lock(&s_RasterizerStatesRegistryLock);
      CFRelease(cf);

      os_unfair_lock_unlock(&s_RasterizerStatesRegistryLock);
    }

    else
    {

      CFRelease(cf);
    }
  }
}

__n128 C3DRasterizerStatesGetDesc@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DRasterizerStatesGetDesc_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *a3 = *(a1 + 16);
  result = *(a1 + 28);
  *(a3 + 12) = result;
  return result;
}

uint64_t C3DRasterizerStatesDefault()
{
  result = kDefaultStates;
  if (!kDefaultStates)
  {
    v1[0] = kDefaultRasterizerStatesDesc;
    *(v1 + 12) = *(&kDefaultRasterizerStatesDesc + 12);
    result = C3DRasterizerStatesCreate(v1);
    kDefaultStates = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_13(uint64_t a1)
{
  v2[8] = 0u;
  v2[9] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;

  return C3DMeshElementGetContent(a1, v1, v3 - 192);
}

__n128 OUTLINED_FUNCTION_3_5()
{
  v1 = *(v0 + 112);
  *v0 = *(v0 + 96);
  *(v0 + 16) = v1;
  result = *(v0 + 128);
  v3 = *(v0 + 144);
  *(v0 + 32) = result;
  *(v0 + 48) = v3;
  return result;
}

void *OUTLINED_FUNCTION_4_8(size_t a1)
{

  return malloc_type_malloc(a1, 0x100004052888210uLL);
}

void sub_21C16BA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t C3DShapeBoundariesSort(uint64_t result, unsigned int a2)
{
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 0x40000000;
  v17 = __C3DShapeBoundariesSort_block_invoke_3;
  v18 = &unk_278300B60;
  v19 = &__block_literal_global_119;
  v20 = &__block_literal_global_4_6;
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    v3 = result;
    v4 = a2 - 1;
    v5 = (a2 >> 1) + 1;
    do
    {
      result = v17(v16, v3, v5 - 2, v4);
      --v5;
    }

    while (v5 > 1);
    if (v4 >= 1)
    {
      v6 = v4 + 1;
      v7 = 56 * v4;
      do
      {
        v8 = v3 + v7;
        v9 = *(v3 + 48);
        v11 = *(v3 + 16);
        v10 = *(v3 + 32);
        v12 = *v3;
        v14 = *(v3 + v7 + 16);
        v13 = *(v3 + v7 + 32);
        v15 = *(v3 + v7);
        *(v3 + 48) = *(v3 + v7 + 48);
        *(v3 + 16) = v14;
        *(v3 + 32) = v13;
        *v3 = v15;
        *v8 = v12;
        *(v8 + 16) = v11;
        *(v8 + 32) = v10;
        *(v8 + 48) = v9;
        result = v17(v16, v3, 0, v2);
        --v6;
        v2 = (v2 - 1);
        v7 -= 56;
      }

      while (v6 > 1);
    }
  }

  return result;
}

uint64_t __C3DShapeBoundariesSort_block_invoke_3(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = 2 * a3;
  if (2 * a3 < a4)
  {
    v6 = a3;
    v7 = result;
    do
    {
      v8 = v4;
      v9 = v4 | 1;
      result = (*(*(v7 + 32) + 16))();
      if (result)
      {
        v10 = v9;
      }

      else
      {
        v10 = v6;
      }

      if (v9 < a4)
      {
        v11 = v8 + 2;
        result = (*(*(v7 + 32) + 16))();
        if (result)
        {
          v10 = v11;
        }
      }

      if (v10 == v6)
      {
        break;
      }

      result = (*(*(v7 + 40) + 16))();
      v4 = 2 * v10;
      v6 = v10;
    }

    while (2 * v10 < a4);
  }

  return result;
}

uint64_t C3DShapeBoundarySelfIntersects(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1;
  v5 = *a1 + 8;
  v6 = 2;
  v7 = 3;
  v28 = v5;
  while (2)
  {
    v8 = v3;
    v9 = v6;
    v10 = (v5 + 80 * v6);
    v11 = (v4 + 80 * v3);
    v12 = *v11;
    v13 = v11[1];
    v14 = ++v3;
    if (v3 == v1)
    {
      v14 = 0;
    }

    v15 = (v4 + 80 * v14);
    v16 = *v15;
    v17 = v15[1];
    if (v8)
    {
      v18 = -1;
    }

    else
    {
      v18 = -2;
    }

    v19 = (v18 + v1);
    v20 = v7;
    v21 = v9;
    while (v21 <= v19)
    {
      v22 = *(v10 - 1);
      v23 = *v10;
      if (v16 != v22 || v17 != v23)
      {
        v25 = (v4 + 80 * (v20 % v1));
        v26 = v25[1];
        if (*v25 != v12 || v26 != v13)
        {
          v10 += 10;
          ++v20;
          ++v21;
          if (!C3DSegmentIntersectsSegment(v12, v13, v16, v17, v22, v23, *v25, v26))
          {
            continue;
          }
        }
      }

      return 1;
    }

    result = 0;
    v6 = v9 + 1;
    ++v7;
    v5 = v28;
    if (v3 != v1)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t C3DSegmentIntersectsSegment(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if ((a3 - a1) * (a6 - a2) - (a4 - a2) * (a5 - a1) > 0.0 != (a3 - a1) * (a8 - a2) - (a4 - a2) * (a7 - a1) <= 0.0)
  {
    return 0;
  }

  else
  {
    return ((a7 - a5) * (a2 - a6) - (a8 - a6) * (a1 - a5) > 0.0) ^ ((a7 - a5) * (a4 - a6) - (a8 - a6) * (a3 - a5) > 0.0);
  }
}

uint64_t C3DShapeBoundaryGetOrientation(unsigned int *a1)
{
  v1 = a1[12];
  if (!v1)
  {
    v2 = a1[2];
    if (v2)
    {
      v3 = (*a1 + 8);
      v4 = -v2;
      v5 = 0.0;
      v6 = 1;
      do
      {
        if (v4 + v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        v5 = v5 + *(v3 - 1) * *(*a1 + 80 * v7 + 8) - *(*a1 + 80 * v7) * *v3;
        v3 += 10;
        ++v6;
      }

      while (v4 + v6 != 1);
      if (v5 < 0.0)
      {
        v1 = 1;
      }

      else
      {
        v1 = 2;
      }
    }

    else
    {
      v1 = 2;
    }

    a1[12] = v1;
  }

  return v1;
}

_DWORD *C3DShapeBoundaryReverse(_DWORD *result)
{
  LODWORD(v1) = result[2];
  if (v1)
  {
    v2 = (*result + 72);
    v3 = result[2];
    do
    {
      v4 = *(v2 - 56);
      v5 = v4;
      if (*v2 == 1)
      {
        v5 = *(v2 - 40);
      }

      *(v2 - 56) = vnegq_f64(v5);
      *(v2 - 40) = vnegq_f64(v4);
      v2 += 80;
      --v3;
    }

    while (v3);
    if (v1 != 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = -1;
      do
      {
        v9 = (*result + v6);
        v19 = v9[2];
        v20 = v9[3];
        v21 = v9[4];
        v17 = *v9;
        v18 = v9[1];
        v10 = (*result + 80 * (v1 + v8));
        *v9 = *v10;
        v11 = v10[4];
        v13 = v10[1];
        v12 = v10[2];
        v9[3] = v10[3];
        v9[4] = v11;
        v9[1] = v13;
        v9[2] = v12;
        v14 = (*result + 80 * (v8 + result[2]));
        v14[2] = v19;
        v14[3] = v20;
        v14[4] = v21;
        *v14 = v17;
        v14[1] = v18;
        ++v7;
        v1 = result[2];
        v6 += 80;
        --v8;
      }

      while (v7 < v1 >> 1);
    }
  }

  v15 = result[12];
  if (v15 == 1)
  {
    v16 = 2;
  }

  else
  {
    if (v15 != 2)
    {
      return result;
    }

    v16 = 1;
  }

  result[12] = v16;
  return result;
}

BOOL C3DIsPathSuperpathOfPath(double *a1, uint64_t *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    v3 = *(a1 + 2);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *a2;
      v7 = a1[2] + -100.0;
      v8 = *a1;
      v9 = *a1 + 8;
      do
      {
        v10 = 0;
        v11 = (v6 + 80 * v5);
        v12 = *v11;
        v13 = v11[1];
        v14 = v7 - *v11;
        v15 = 1;
        v16 = v9;
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;
          if (v15 == v3)
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          v20 = (v8 + 80 * v19);
          v21 = v20[1];
          if ((*v20 - v17) * (v13 - v18) - (v21 - v18) * (v12 - v17) >= 0.0 == (*v20 - v17) * (v13 - v18) - (v21 - v18) * (v7 - v17) < 0.0)
          {
            v10 += ((v17 - v12) * -(v13 - v13) + v14 * (v18 - v13) >= 0.0) ^ ((*v20 - v12) * -(v13 - v13) + v14 * (v21 - v13) >= 0.0);
          }

          v16 += 10;
          ++v15;
        }

        while (v15 - v3 != 1);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v4 = ++v5 >= v2;
      }

      while (v5 != v2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v4;
}

uint64_t C3DShapeResolveSelfIntersectingBoundaries(uint64_t result, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  if (*a2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = C3DShapeBoundarySelfIntersects((v4 + 56 * v5));
      if (result)
      {
        LODWORD(v2) = v2 - 1;
        if (v5 < v2)
        {
          v6 = v5;
          v7 = v4 + 56 * v5;
          do
          {
            ++v6;
            v8 = *(v7 + 72);
            *v7 = *(v7 + 56);
            *(v7 + 16) = v8;
            *(v7 + 32) = *(v7 + 88);
            *(v7 + 48) = *(v7 + 104);
            v7 += 56;
            v2 = (*a2 - 1);
          }

          while (v6 < v2);
        }

        *a2 = v2;
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < v2);
  }

  return result;
}

void C3DShapeBuildConnectedComponents(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *(&v103[1] + 4) = *MEMORY[0x277D85DE8];
  v101 = 0;
  v4 = C3DShapeBoundaryMakeWithCGPath(*(a2 + 24), &v101, *(a2 + 4), *(a2 + 20));
  C3DShapeResolveSelfIntersectingBoundaries(v4, &v101);
  v5 = v101;
  if (v101)
  {
    v6 = 0;
    do
    {
      v7 = &v4[56 * v6];
      if (*(v7 + 2) > 1u)
      {
        ++v6;
      }

      else
      {
        free(*v7);
        v10 = v101;
        v11 = v101 - 1;
        if (v6 < v11)
        {
          v12 = &v4[56 * v6];
          v13 = v11 - v6;
          do
          {
            v14 = *(v12 + 72);
            *v12 = *(v12 + 56);
            *(v12 + 1) = v14;
            *(v12 + 2) = *(v12 + 88);
            *(v12 + 6) = *(v12 + 13);
            v12 += 56;
            --v13;
          }

          while (v13);
        }

        if (v10 <= 1)
        {
          v15 = scn_default_log(v8, v9);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            C3DShapeBuildConnectedComponents_cold_1(buf, v103, v15);
          }
        }

        v4 = malloc_type_realloc(v4, 56 * --v101, 0x10200403357C6A3uLL);
        v5 = v101;
      }
    }

    while (v6 < v5);
  }

  C3DShapeBoundariesSort(v4, v5);
  if (!v101)
  {
    v16 = 0;
LABEL_36:
    *(a1 + 48) = 0;
    v37 = (a1 + 48);
LABEL_37:
    *(a1 + 40) = 0;
    v41 = (a1 + 40);
    goto LABEL_38;
  }

  v16 = malloc_type_calloc(v101, 0x10uLL, 0x1020040D5A9D86FuLL);
  v17 = v101;
  if (!v101)
  {
    goto LABEL_36;
  }

  v18 = 0;
  v19 = 2;
  do
  {
    *&v16[v19] = malloc_type_calloc(v17, 0x40uLL, 0x1020040D485E09BuLL);
    ++v18;
    v17 = v101;
    v19 += 4;
  }

  while (v18 < v101);
  if (!v101)
  {
    goto LABEL_36;
  }

  for (i = 0; i < v101; ++i)
  {
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    v21 = &v4[56 * i];
    v22 = *v21;
    v23 = *(v21 + 1);
    v24 = *(v21 + 2);
    v100 = *(v21 + 6);
    v98 = v23;
    v99 = v24;
    v97 = v22;
    v25 = v17 - 2;
    if ((v17 - 2) < 0)
    {
LABEL_26:
      v32 = *(v16 + 1);
      v33 = *v16;
      *v16 = v33 + 1;
      v34 = v32 + (v33 << 6);
      *(v34 + 8) = v97;
      *(v34 + 24) = v98;
      *(v34 + 40) = v99;
      *(v34 + 56) = v100;
    }

    else
    {
      while (1)
      {
        v26 = &v16[4 * v25];
        v27 = *v26;
        if (v27)
        {
          break;
        }

LABEL_24:
        if (v25-- <= 0)
        {
          goto LABEL_26;
        }
      }

      v28 = 0;
      v29 = *(v26 + 1);
      while (1)
      {
        v30 = *(v29 + 24);
        v95[0] = *(v29 + 8);
        v95[1] = v30;
        v95[2] = *(v29 + 40);
        v96 = *(v29 + 56);
        if (C3DIsPathSuperpathOfPath(v95, &v97))
        {
          break;
        }

        ++v28;
        v29 += 64;
        if (v28 >= v27)
        {
          goto LABEL_24;
        }
      }

      v35 = &v16[4 * (v25 + 1)];
      v36 = *(v35 + 1) + (*v35 << 6);
      *v36 = v29;
      *(v36 + 8) = v97;
      *(v36 + 24) = v98;
      *(v36 + 40) = v99;
      *(v36 + 56) = v100;
      ++*v35;
    }

    v17 = v101;
  }

  *(a1 + 48) = 0;
  v37 = (a1 + 48);
  if (!v17)
  {
    goto LABEL_37;
  }

  LODWORD(v38) = 0;
  for (j = 0; j < v17; j += 2)
  {
    v38 = v38 + v16[4 * j];
  }

  *v37 = v38;
  if (v38)
  {
    v40 = malloc_type_calloc(v38, 0x20uLL, 0x10300409C64945DuLL);
    v17 = v101;
    *(a1 + 40) = v40;
    v41 = (a1 + 40);
    if (!v17)
    {
      goto LABEL_38;
    }

    v42 = v40;
    v91 = v37;
    v92 = v4;
    v93 = v2;
  }

  else
  {
    v91 = (a1 + 48);
    v92 = v4;
    v93 = v2;
    v42 = 0;
    *(a1 + 40) = 0;
    v41 = (a1 + 40);
  }

  v65 = 0;
  v94 = v16;
  do
  {
    v66 = v16;
    v67 = &v16[4 * v65];
    if (*v67)
    {
      v68 = 0;
      v69 = v65 | 1;
      v70 = &v66[4 * (v65 | 1)];
      do
      {
        if (v69 < v17 && (v71 = *v70, v71))
        {
          v72 = 0;
          v73 = *(v70 + 1);
          do
          {
            v74 = *v73;
            v73 += 8;
            if (v74 == *(v67 + 1) + (v68 << 6))
            {
              ++v72;
            }

            --v71;
          }

          while (v71);
        }

        else
        {
          v72 = 0;
        }

        v75 = v72 + 1;
        v42[2] = v75;
        v76 = malloc_type_calloc(v75, 0x38uLL, 0x10200403357C6A3uLL);
        *v42 = v76;
        v77 = *(v67 + 1) + (v68 << 6);
        v78 = *(v77 + 40);
        v79 = *(v77 + 24);
        v80 = *(v77 + 8);
        v76[6] = *(v77 + 56);
        *v76 = v80;
        *(v76 + 1) = v79;
        *(v76 + 2) = v78;
        v17 = v101;
        if (v69 < v101 && *v70)
        {
          v81 = 0;
          v82 = 0;
          do
          {
            v83 = *(v70 + 1);
            if (*(v83 + v81) == *(v67 + 1) + (v68 << 6))
            {
              v84 = *v42 + 56 * v72--;
              v85 = v83 + v81;
              v86 = *(v85 + 8);
              v87 = *(v85 + 24);
              v88 = *(v85 + 40);
              *(v84 + 48) = *(v85 + 56);
              *(v84 + 16) = v87;
              *(v84 + 32) = v88;
              *v84 = v86;
            }

            ++v82;
            v81 += 64;
          }

          while (v82 < *v70);
        }

        v42 += 8;
        ++v68;
      }

      while (v68 < *v67);
    }

    v65 += 2;
    v16 = v94;
  }

  while (v65 < v17);
  if (v17)
  {
    v89 = 0;
    v90 = 2;
    v4 = v92;
    v2 = v93;
    v37 = v91;
    do
    {
      free(*&v94[v90]);
      ++v89;
      v90 += 4;
    }

    while (v89 < v101);
  }

  else
  {
    v4 = v92;
    v2 = v93;
    v37 = v91;
  }

LABEL_38:
  free(v16);
  free(v4);
  v43 = *v37;
  if (v43)
  {
    v44 = 0;
    v45 = *v41;
    do
    {
      v46 = v45 + 32 * v44;
      if (*(v46 + 8))
      {
        v47 = 0;
        v48 = 0;
        do
        {
          Orientation = C3DShapeBoundaryGetOrientation((*v46 + v47));
          if (v48)
          {
            v50 = 2;
          }

          else
          {
            v50 = 1;
          }

          if (Orientation != v50)
          {
            C3DShapeBoundaryReverse((*(*v41 + 32 * v44) + v47));
          }

          ++v48;
          v45 = *v41;
          v46 = *v41 + 32 * v44;
          v47 += 56;
        }

        while (v48 < *(v46 + 8));
        v43 = *v37;
      }

      ++v44;
    }

    while (v44 < v43);
    if (v43)
    {
      v51 = 0;
      v52 = *v41;
      do
      {
        v53 = *(v52 + 32 * v51 + 8);
        if (v53)
        {
          v54 = 0;
          v55 = *(v52 + 32 * v51);
          do
          {
            v56 = (v55 + 56 * v54);
            v57 = v56[2];
            if (v57)
            {
              v58 = (*v56 + 72);
              do
              {
                if (*v58 == 1 && *(v58 - 7) == *(v58 - 5) && *(v58 - 6) == *(v58 - 4))
                {
                  *v58 = 0;
                  --*(v55 + 56 * v54 + 12);
                }

                v58 += 10;
                --v57;
              }

              while (v57);
            }

            ++v54;
          }

          while (v54 != v53);
        }

        ++v51;
      }

      while (v51 != v43);
      v60 = 0;
      v61 = 0;
      do
      {
        v62 = (*v41 + v60);
        v63 = *(v2 + 12);
        v64 = v62[1];
        v97 = *v62;
        v98 = v64;
        C3DShapeConnectedComponentSkeletonize(&v97, v63);
        ++v61;
        v60 += 32;
      }

      while (v61 < *v37);
    }
  }
}

void *C3DShapeBoundaryMakeWithCGPath(const CGPath *a1, _DWORD *a2, double a3, double a4)
{
  *a2 = 0;
  CGPathApply(a1, a2, C3DSubpathsCounterFunc);
  v8 = *a2;
  if (!v8)
  {
    return 0;
  }

  v9 = malloc_type_calloc(v8, 0x38uLL, 0x10200403357C6A3uLL);
  info[3] = 0;
  info[4] = 0;
  *info = a3;
  *&info[1] = a4;
  info[2] = v9;
  CGPathApply(a1, info, C3DDiscretizerFunc);
  return v9;
}

void C3DShapeBuildDelaunayTriangulation(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
    while (1)
    {
      v16 = 0;
      v3 = *(a1 + 40) + 32 * v2;
      v4 = *(v3 + 16);
      v15[0] = *v3;
      v15[1] = v4;
      v5 = C3DShapeConnectedComponentTriangulate(v15, &v16);
      v6 = v5;
      if (v16)
      {
        break;
      }

      if (v5)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (++v2 >= *(a1 + 48))
      {
        return;
      }
    }

    v7 = 0;
    v8 = v5 + 2;
    do
    {
      v9 = *(v3 + 24) + 1;
      *(v3 + 24) = v9;
      v10 = malloc_type_realloc(*(v3 + 16), 4 * v9, 0x100004052888210uLL);
      *(v3 + 16) = v10;
      v11 = *(a1 + 24);
      v10[*(v3 + 24) - 1] = v11;
      v11 += 3;
      *(a1 + 24) = v11;
      v12 = malloc_type_realloc(*(a1 + 32), 8 * v11, 0x2004093837F09uLL);
      *(a1 + 32) = v12;
      v13 = *(a1 + 24);
      v12[v13 - 3] = *(v8 - 2);
      *(*(a1 + 32) + 8 * (v13 - 2)) = *(v8 - 1);
      v14 = *v8;
      v8 += 7;
      *(*(a1 + 32) + 8 * (v13 - 1)) = v14;
      ++v7;
    }

    while (v7 < v16);
LABEL_8:
    free(v6);
    goto LABEL_9;
  }
}

void C3DAppendPointToPath(uint64_t a1, int a2, double a3, double a4, long double a5, long double a6)
{
  v10 = *(a1 + 8);
  v11 = *a1;
  if (!v10 || (v12 = v10 - 1, v13 = hypot(v11[10 * v12] - a3, v11[10 * v12 + 1] - a4), v14 = hypot(*v11 - a3, v11[1] - a4), v13 >= 0.01) && v14 >= 0.01)
  {
    v15 = malloc_type_realloc(v11, 80 * (v10 + 1), 0x1000040392EC4B1uLL);
    *a1 = v15;
    v16 = &v15[80 * *(a1 + 8)];
    v16[6] = a3;
    v16[7] = a4;
    *v16 = *(v16 + 3);
    *(v16 + 19) = a2;
    *(v16 + 72) = a2 != 3;
    v16[8] = 0.0;
    v17 = *(a1 + 8);
    if (v17)
    {
      v18.f64[1] = *(a1 + 24);
      v18.f64[0] = a3;
      v19.f64[0] = *(a1 + 16);
      v19.f64[1] = a3;
      v20 = vbslq_s8(vcgtq_f64(v19, v18), vdupq_lane_s64(*&a3, 0), *(a1 + 16));
      v18.f64[1] = *(a1 + 40);
      v18.f64[0] = a4;
      v19.f64[0] = *(a1 + 32);
      v19.f64[1] = a4;
      v21 = vbslq_s8(vcgtq_f64(v19, v18), vdupq_lane_s64(*&a4, 0), *(a1 + 32));
      *(a1 + 16) = v20;
      *(a1 + 32) = v21;
      v22 = *a1;
      if (a2)
      {
        if (a2 == 1)
        {
          C3DAppendPointToPath_cold_1();
        }

        v23 = hypot(a5, a6);
        v16[2] = a5 / v23;
        v16[3] = a6 / v23;
        if (a2 == 3)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v25 = &v22[10 * (v17 - 1)];
        v26 = v25[1] - a4;
        v27 = a3 - *v25;
        v28 = hypot(v26, v27);
        v29 = v26 / v28;
        v30 = v27 / v28;
        v25[4] = v29;
        v25[5] = v30;
        v16[2] = v29;
        v16[3] = v30;
      }

      v31 = a4 - v22[1];
      v32 = *v22 - a3;
      v33 = hypot(v31, v32);
      v22[2] = v31 / v33;
      v22[3] = v32 / v33;
      *(v16 + 2) = *(v22 + 1);
      v17 = *(a1 + 8);
    }

    else
    {
      *(a1 + 16) = a3;
      *(a1 + 24) = a3;
      *(a1 + 32) = a4;
      *(a1 + 40) = a4;
    }

LABEL_15:
    if (a2 == 3)
    {
      v34 = 1;
    }

    else
    {
      v34 = 2;
    }

    v35 = v34 + *(a1 + 12);
    *(a1 + 8) = v17 + 1;
    *(a1 + 12) = v35;
    return;
  }

  if (a2 == 1)
  {
    v36 = &v11[10 * v12];
    v37 = hypot(a5, a6);
    v36[4] = a5 / v37;
    v36[5] = a6 / v37;
  }

  else if (a2 == 2)
  {
    v24 = hypot(a5, a6);
    v11[2] = a5 / v24;
    v11[3] = a6 / v24;
  }
}

void C3DAppendSegmentToPath(uint64_t a1, int a2, double a3, double a4, double a5)
{
  v7 = *a1;
  v8 = (*a1 + 80 * (*(a1 + 8) - 1));
  v9 = *v8;
  v10 = v8[1];
  if (a2)
  {
    v12 = *v7;
    v11 = v7[1];
    v13 = 1;
  }

  else
  {
    v11 = a4;
    v12 = a3;
    v14 = v7[1];
    v15 = a3 == *v7;
    v13 = v11 == v14 && v15;
  }

  v16 = v11 - v10;
  v17 = hypot(v12 - v9, v11 - v10);
  if (v17 <= a5)
  {
    if ((v13 & 1) == 0)
    {
      v25 = *MEMORY[0x277CBF348];
      v26 = *(MEMORY[0x277CBF348] + 8);

      C3DAppendPointToPath(a1, 0, v12, v11, v25, v26);
    }
  }

  else
  {
    v18 = vcvtpd_u64_f64(v17 / a5);
    v19 = v18 - v13;
    if (v19)
    {
      v20 = (v12 - v9) / v18;
      v21 = *MEMORY[0x277CBF348];
      v22 = *(MEMORY[0x277CBF348] + 8);
      v23 = 1;
      v24 = v16 / v18;
      do
      {
        C3DAppendPointToPath(a1, 0, v9 + v23 * v20, v10 + v23 * v24, v21, v22);
        ++v23;
      }

      while (v23 <= v19);
    }
  }
}

void C3DAppendCubicBezierCurveToPath(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = (*a1 + 80 * (*(a1 + 8) - 1));
  v10 = *v9;
  v11 = v9[1];
  v12 = a2 - *v9;
  v13 = a4 - a2 - v12;
  v14 = a6 - a4 - (a4 - a2);
  v15 = v14 - v13;
  v16 = a5 - a3 - (a3 - v11);
  v17 = a7 - a5 - (a5 - a3);
  v18 = v17 - v16;
  v19 = v17 * v17 + v14 * v14;
  if (v16 * v16 + v13 * v13 > v19)
  {
    v19 = v16 * v16 + v13 * v13;
  }

  v20 = v15 * 6.0;
  v21 = (v13 + v15) * 6.0;
  v22 = v15 + (v12 + v13) * 3.0;
  v23 = v18 * 6.0;
  v24 = (v16 + v18) * 6.0;
  v25 = v18 + (a3 - v11 + v16) * 3.0;
  v26 = (a6 + v10 - a2 - a4) * 3.0;
  v27 = v11 - a3;
  v28 = (a7 + v11 - a3 - a5) * 3.0;
  v29 = v19 * 9.0 * 0.0625;
  v44 = a6 - a4;
  if (v29 <= a8 * a8)
  {
    v35 = v26;
    v36 = v25;
    v37 = 0;
    v50 = v23;
    v51 = v15 * 6.0;
    v48 = v23;
    v49 = v15 * 6.0;
  }

  else
  {
    v30 = 1;
    v31 = v23;
    v32 = v15 * 6.0;
    do
    {
      v20 = v20 * 0.125;
      v21 = v21 * 0.25 - v20;
      v22 = v22 * 0.5 - v21 * 0.5;
      v23 = v23 * 0.125;
      v24 = v24 * 0.25 - v23;
      v25 = v25 * 0.5 - v24 * 0.5;
      v32 = v32 * 0.25;
      v26 = v26 * 0.5 - v32 * 0.5;
      v31 = v31 * 0.25;
      v28 = v28 * 0.5 - v31 * 0.5;
      v33 = 2 * v30;
      v29 = v29 * 0.0625;
      if (v29 <= a8 * a8)
      {
        break;
      }

      v34 = v30 > 0x8000;
      v30 *= 2;
    }

    while (!v34);
    v48 = v31;
    v49 = v32;
    v35 = v26;
    v36 = v25;
    v50 = v23;
    v51 = v20;
    v37 = v33 - 1;
  }

  v52 = v12 * 3.0;
  v53 = v27 * 3.0;
  C3DAppendPointToPath(a1, 1, v10, v11, v27 * 3.0, v12 * 3.0);
  v39 = v50;
  v38 = v51;
  v40 = v48;
  for (i = v49; v37; --v37)
  {
    v10 = v22 + v10;
    v42 = v53 - v28;
    v28 = v40 + v28;
    v22 = v21 + v22;
    v21 = v38 + v21;
    v11 = v36 + v11;
    v43 = v35 + v52;
    v35 = i + v35;
    v36 = v36 + v24;
    v24 = v39 + v24;
    v52 = v43;
    v53 = v42;
    C3DAppendPointToPath(a1, 3, v10, v11, v42, v43);
    v40 = v48;
    i = v49;
    v39 = v50;
    v38 = v51;
  }

  C3DAppendPointToPath(a1, 2, a6, a7, (a5 - a7) * 3.0, v44 * 3.0);
}

void C3DAppendQuadBezierCurveToPath(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = (*a1 + 80 * (*(a1 + 8) - 1));
  v9 = *v7;
  v8 = v7[1];
  v10 = v8 - a3;
  v11 = ((a5 + v8 - a3 - a3) * (a5 + v8 - a3 - a3) + (a4 + *v7 - a2 - a2) * (a4 + *v7 - a2 - a2)) * 27.0 * 0.015625;
  v12 = a6 * a6;
  v13 = a4 + v9 + a2 * -2.0 + a4 + v9 + a2 * -2.0;
  v14 = a4 - *v7;
  v15 = a5 + v8 + a3 * -2.0;
  v16 = v15 + v15;
  v17 = a5 - v8;
  if (v11 <= v12)
  {
    v23 = 0;
    v32 = v15 + v15;
    v33 = a4 + v9 + a2 * -2.0 + a4 + v9 + a2 * -2.0;
    v20 = v33;
    v19 = v15 + v15;
  }

  else
  {
    v18 = 1;
    v19 = v15 + v15;
    v20 = a4 + v9 + a2 * -2.0 + a4 + v9 + a2 * -2.0;
    do
    {
      v13 = v13 * 0.25;
      v14 = v14 * 0.5 - v13 * 0.5;
      v16 = v16 * 0.25;
      v17 = v17 * 0.5 - v16 * 0.5;
      v20 = v20 * 0.5;
      v19 = v19 * 0.5;
      v11 = v11 * 0.03125;
      v21 = 2 * v18;
      if (v11 <= v12)
      {
        break;
      }

      v22 = v18 > 0x8000;
      v18 *= 2;
    }

    while (!v22);
    v32 = v16;
    v33 = v13;
    v23 = v21 - 1;
  }

  v24 = v10 + v10;
  v25 = a2 - v9 + a2 - v9;
  C3DAppendPointToPath(a1, 1, v9, v8, v10 + v10, v25);
  v27 = v32;
  for (i = v33; v23; --v23)
  {
    v9 = v14 + v9;
    v24 = v24 - v19;
    v8 = v17 + v8;
    v25 = v20 + v25;
    v38 = i + v14;
    v39 = v27 + v17;
    v28 = v20;
    v29 = v19;
    v30 = i;
    v31 = v27;
    C3DAppendPointToPath(a1, 3, v9, v8, v24, v25);
    v27 = v31;
    i = v30;
    v19 = v29;
    v20 = v28;
    v14 = v38;
    v17 = v39;
  }

  C3DAppendPointToPath(a1, 2, a4, a5, a3 - a5 + a3 - a5, a4 - a2 + a4 - a2);
}

_DWORD *C3DSubpathsCounterFunc(_DWORD *result, _DWORD *a2)
{
  if (!*a2)
  {
    ++*result;
  }

  return result;
}

void C3DDiscretizerFunc(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        C3DAppendSegmentToPath(*(a1 + 24), 0, **(a2 + 8), *(*(a2 + 8) + 8), *(a1 + 8));
      }
    }

    else
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 32);
      *(a1 + 32) = v5 + 1;
      v6 = v4 + 56 * v5;
      *(a1 + 24) = v6;
      C3DAppendPointToPath(v6, 0, **(a2 + 8), *(*(a2 + 8) + 8), *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        C3DAppendQuadBezierCurveToPath(*(a1 + 24), **(a2 + 8), *(*(a2 + 8) + 8), *(*(a2 + 8) + 16), *(*(a2 + 8) + 24), *a1);
        break;
      case 3:
        v3 = *(a2 + 8);
        C3DAppendCubicBezierCurveToPath(*(a1 + 24), *v3, v3[1], v3[2], v3[3], v3[4], v3[5], *a1);
        break;
      case 4:
        C3DAppendSegmentToPath(*(a1 + 24), 1, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), *(a1 + 8));
        break;
    }
  }
}

void C3DShapeBoundaryDestroy(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    free(v1);
  }
}

void C3DParticleModifier_PhysicsField(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    a4 = *(a1 + 1056);
  }

  Aether = C3DPhysicsWorldGetAether(a4);
  if (Aether)
  {
    v9 = Aether;
    v23 = *(a1 + 256);
    v10 = *(a1 + 304);
    v11 = *(a1 + 352);
    ParticleMass = C3DParticleSystemGetParticleMass(*(a1 + 1040), v8);
    ParticleCharge = C3DParticleSystemGetParticleCharge(*(a1 + 1040), v13);
    v34 = 1.0 / ParticleMass;
    v15 = *(a1 + 1072);
    if (v15)
    {
      CategoryBitMask = C3DNodeGetCategoryBitMask(v15, v14);
    }

    else
    {
      CategoryBitMask = -1;
    }

    v18 = *(a1 + 1028);
    v19 = &v34;
    v20 = *(a1 + 1036);
    if (v10)
    {
      v19 = v10;
    }

    v21 = *(a1 + 1104);
    p_ParticleCharge = &ParticleCharge;
    if (v11)
    {
      p_ParticleCharge = v11;
    }

    v32 = *(a1 + 1088);
    v33 = v21;
    v24 = v23;
    v25 = v19;
    v26 = 4 * (v10 != 0);
    v27 = p_ParticleCharge;
    v28 = 4 * (v11 != 0);
    v29 = CategoryBitMask;
    v30 = v18;
    v31 = v20;
    c3dAether::evalForcesBatch(v9, &v24, a2, a3);
  }

  else if ((C3DParticleModifier_PhysicsField::done & 1) == 0)
  {
    C3DParticleModifier_PhysicsField::done = 1;
    v17 = scn_default_log(0, v8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      C3DParticleModifier_PhysicsField_cold_1(v17);
    }
  }
}

CFMutableDictionaryRef C3DTextLineRebuildSharedGlyphs(CFMutableDictionaryRef result)
{
  if (!*(result + 2))
  {
    v1 = result;
    v2 = *(result + 4);
    if (v2)
    {
      CFRelease(v2);
    }

    result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v1 + 4) = result;
  }

  return result;
}

const void *C3DTextLineGetCachedGlyph(uint64_t a1, unsigned int a2, void *key, __int128 *a4)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a4[1];
    v14 = *a4;
    v15 = v9;
    v16 = a4[2];
    v17 = *(a4 + 6);
    return C3DTextFrameGetCachedGlyph(v8, a2, key, &v14);
  }

  else
  {
    Value = CFDictionaryGetValue(*(a1 + 32), key);
    if (!Value)
    {
      Value = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
      CFDictionaryAddValue(*(a1 + 32), key, Value);
      CFRelease(Value);
    }

    v10 = CFDictionaryGetValue(Value, a2);
    if (!v10)
    {
      v12 = a4[1];
      v14 = *a4;
      v15 = v12;
      v16 = a4[2];
      v17 = *(a4 + 6);
      v10 = C3DGlyphCreate(key, a2, &v14);
      CFDictionaryAddValue(Value, a2, v10);
      CFRelease(v10);
    }
  }

  return v10;
}

CFIndex C3DTextLineBuildGlyphs(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 40) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  result = *(a1 + 24);
  if (result)
  {
    GlyphRuns = CTLineGetGlyphRuns(result);
    result = CFArrayGetCount(GlyphRuns);
    if (result >= 1)
    {
      v7 = 0;
      v8 = *MEMORY[0x277CC4838];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v7);
        GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
        Attributes = CTRunGetAttributes(ValueAtIndex);
        Value = CFDictionaryGetValue(Attributes, v8);
        if (GlyphCount >= 1)
        {
          v13 = Value;
          for (i = 0; i != GlyphCount; ++i)
          {
            buffer = 0;
            v20.location = i;
            v20.length = 1;
            CTRunGetGlyphs(ValueAtIndex, v20, &buffer);
            v15 = *(a2 + 16);
            v17[0] = *a2;
            v17[1] = v15;
            v17[2] = *(a2 + 32);
            v18 = *(a2 + 48);
            CachedGlyph = C3DTextLineGetCachedGlyph(a1, buffer, v13, v17);
            CFArrayAppendValue(*(a1 + 40), CachedGlyph);
          }
        }

        ++v7;
        result = CFArrayGetCount(GlyphRuns);
      }

      while (v7 < result);
    }
  }

  return result;
}

double C3DTextLineGetAdvances(uint64_t a1, uint64_t a2, unsigned int a3, double result)
{
  if (a1)
  {
    GlyphRuns = CTLineGetGlyphRuns(*(a1 + 24));
    Count = CFArrayGetCount(GlyphRuns);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, i);
        GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
        v13 = GlyphCount;
        v14 = a3 - v9;
        if (a3 > v9)
        {
          if (v14 >= GlyphCount)
          {
            v15.length = GlyphCount;
          }

          else
          {
            v15.length = v14;
          }

          v15.location = 0;
          CTRunGetAdvances(ValueAtIndex, v15, (a2 + 16 * v9));
        }

        v9 += v13;
      }
    }

    if (a3)
    {
      v16 = a3;
      v17 = (a2 + 8);
      result = 0.0;
      do
      {
        v18 = *(v17 - 1);
        v19 = -*v17;
        *(v17 - 1) = result;
        *v17 = v19;
        result = result + v18;
        v17 += 2;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

CFIndex C3DTextLineGetGlyphCount(CFIndex result)
{
  if (result)
  {
    return CFArrayGetCount(*(result + 40));
  }

  return result;
}

CFArrayRef *C3DTextLineGetGlyphAtIndex(CFArrayRef *result, CFIndex idx)
{
  if (result)
  {
    return CFArrayGetValueAtIndex(result[5], idx);
  }

  return result;
}

void _C3DTextLineCFFinalize(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[5];
    if (v4)
    {

      CFRelease(v4);
    }
  }
}

CFStringRef _C3DTextLineCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTextLine>");
}

CFStringRef _C3DTextLineCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTextLine>");
}

uint64_t __C3DTextLineGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DTextLineGetTypeID_typeID = result;
  return result;
}

__CFDictionary *C3DTextLineCreateWithTextFrame(const void *a1, uint64_t a2, uint64_t a3)
{
  if (C3DTextLineGetTypeID_onceToken != -1)
  {
    C3DTextLineCreateWithTextFrame_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTextLineGetTypeID_typeID, 32);
  if (a1)
  {
    v7 = CFRetain(a1);
  }

  else
  {
    v7 = 0;
  }

  *(Instance + 4) = 0;
  *(Instance + 5) = 0;
  *(Instance + 2) = a3;
  *(Instance + 3) = v7;
  C3DTextLineRebuildSharedGlyphs(Instance);
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v10[2] = *(a2 + 32);
  v11 = *(a2 + 48);
  C3DTextLineBuildGlyphs(Instance, v10);
  return Instance;
}

void C3D::GenerateMipmapPass::GenerateMipmapPass(C3D::GenerateMipmapPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, Parameters a4)
{
  var0 = a4.var0;
  C3D::BlitPass::BlitPass(this, a2, a3);
  *v5 = &unk_282DC7A98;
  *(v5 + 108) = var0;
}

void C3D::GenerateMipmapPass::setup(C3D::GenerateMipmapPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  if ((*(this + 108) & 1) == 0)
  {
    v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
    *(v2 + 66) |= 4u;
    v3 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
    *(v3 + 66) |= 0x80u;
  }
}

void *C3D::GenerateMipmapPass::execute(C3D::Pass *a1, void ***a2)
{
  v3 = *a2;
  v4 = C3D::Pass::outputTextureAtIndex(a1, 0);
  if (*(a1 + 108) == 1)
  {
    v5 = C3D::Pass::inputTextureAtIndex(a1, 0);
    SCNMTLBlitCommandEncoder::copyTextureToTexture(v3, v5, v4);
  }

  return SCNMTLBlitCommandEncoder::generateMipmapsForTexture(v3, v4);
}

BOOL _mayBeASTC(uint64_t a1, uint64_t a2)
{
  if (C3DImageGetData(a1, a2))
  {
    return 1;
  }

  v5 = copyPathExtension(a1, v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v4 = CFEqual(v5, @"ast") || CFEqual(v6, @"astc");
  CFRelease(v6);
  return v4;
}

uint64_t _MTLPixelFormatForASTCBlockSize(int a1, int a2, int a3)
{
  if (a1 <= 7)
  {
    if (a1 != 4)
    {
      v3 = 205;
      if (a3)
      {
        v3 = 187;
      }

      v4 = 206;
      if (a3)
      {
        v4 = 188;
      }

      if (a2 != 5)
      {
        v4 = 0;
      }

      if (a2 != 4)
      {
        v3 = v4;
      }

      v5 = 207;
      if (a3)
      {
        v5 = 189;
      }

      v6 = 208;
      if (a3)
      {
        v6 = 190;
      }

      if (a2 != 6)
      {
        v6 = 0;
      }

      if (a2 != 5)
      {
        v5 = v6;
      }

      if (a1 != 6)
      {
        v5 = 0;
      }

      v7 = a1 == 5;
LABEL_50:
      if (v7)
      {
        return v3;
      }

      else
      {
        return v5;
      }
    }

    v8 = 204;
    if (a3)
    {
      v8 = 186;
    }

    v10 = a2 == 4;
    goto LABEL_36;
  }

  if (a1 == 8)
  {
    v3 = 210;
    if (a3)
    {
      v3 = 192;
    }

    v5 = 211;
    if (a3)
    {
      v5 = 193;
    }

    v12 = 212;
    if (a3)
    {
      v12 = 194;
    }

    if (a2 != 8)
    {
      v12 = 0;
    }

    if (a2 != 6)
    {
      v5 = v12;
    }

    v7 = a2 == 5;
    goto LABEL_50;
  }

  if (a1 != 10)
  {
    v8 = 217;
    if (a3)
    {
      v8 = 199;
    }

    v9 = 218;
    if (a3)
    {
      v9 = 200;
    }

    if (a2 != 12)
    {
      v9 = 0;
    }

    if (a2 != 10)
    {
      v8 = v9;
    }

    v10 = a1 == 12;
LABEL_36:
    if (v10)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  v13 = 215;
  if (a3)
  {
    v13 = 197;
  }

  v14 = 216;
  if (a3)
  {
    v14 = 198;
  }

  if (a2 != 10)
  {
    v14 = 0;
  }

  if (a2 != 8)
  {
    v13 = v14;
  }

  v15 = 213;
  if (a3)
  {
    v15 = 195;
  }

  v16 = 214;
  if (a3)
  {
    v16 = 196;
  }

  if (a2 != 6)
  {
    v16 = 0;
  }

  if (a2 != 5)
  {
    v15 = v16;
  }

  if (a2 <= 7)
  {
    return v15;
  }

  else
  {
    return v13;
  }
}

uint64_t _loadASTC(uint64_t a1)
{
  v2 = kdebug_trace();
  if (!a1)
  {
    v4 = scn_default_log(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _applyCIFilter_cold_2(v4);
    }
  }

  Data = C3DImageGetData(a1, v3);
  if (Data)
  {
    v7 = Data;
    CFRetain(Data);
  }

  else
  {
    URL = C3DImageGetURL(a1, v6);
    if (!URL || (v7 = C3DCreateDataWithContentOfURL(URL, 0)) == 0)
    {
      v19 = 0;
      goto LABEL_14;
    }
  }

  if (CFDataGetLength(v7) >= 16 && (BytePtr = CFDataGetBytePtr(v7), *BytePtr == 1554098963))
  {
    v9 = BytePtr;
    _C3DImageDeleteTextureRawDataIfNeeded(a1);
    v10 = (v9[9] << 16) | (v9[8] << 8) | v9[7];
    v11 = (v9[12] << 16) | (v9[11] << 8) | v9[10];
    v12 = (v9[15] << 16) | (v9[14] << 8) | v9[13];
    *&v13 = v10;
    *(&v13 + 1) = v11;
    _C3DImageCreateTextureRawData(a1, 2, 0, v13);
    TextureRawData = C3DImageGetTextureRawData(a1);
    v15 = v9[4];
    *(TextureRawData + 7) = v15;
    v16 = v9[5];
    *(TextureRawData + 8) = v16;
    v17 = v9[6];
    *(TextureRawData + 9) = v17;
    *(TextureRawData + 4) = 0x80;
    *(TextureRawData + 36) = _MTLPixelFormatForASTCBlockSize(v15, v16, 0);
    v18 = CFDataCreate(0, v9 + 16, 16 * (v10 + v15 - 1) / v15 * ((v11 + v16 - 1) / v16) * ((v12 + v17 - 1) / v17));
    CFArrayAppendValue(*(TextureRawData + 40), v18);
    CFRelease(v18);
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  CFRelease(v7);
LABEL_14:
  kdebug_trace();
  return v19;
}

void SCNCActionScale::SCNCActionScale(SCNCActionScale *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v3 = &unk_282DC7B08;
  *(v3 + 56) = a2->var7;
  *(v3 + 40) = *&a2->var5;
  *(v3 + 80) = *&a2->var10;
  *(v3 + 64) = a2->var8;
  *(v3 + 104) = a2->var14;
  *(v3 + 32) = 1;
}

void SCNCActionScale::~SCNCActionScale(SCNCActionScale *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

void SCNCActionScale::cpp_updateWithTargetForTime(SCNCActionScale *this, SCNNode *a2, double a3)
{
  v6.n128_f64[0] = SCNCAction::cpp_ratioForTime(this, a3, a2);
  v9 = v6.n128_f64[0];
  if (this->var25)
  {
    [(SCNNode *)a2 scale];
    v11.i32[1] = v10;
    v11.i32[2] = v12;
    *&v13 = (this->var23 * v9) + 1.0;
    v19 = v13;
    v14 = vmulq_n_f32(v11, *&v13);
    p_var22 = &this->var22;
    v16 = vld1q_dup_f32(p_var22);
    v17 = vdivq_f32(v14, v16);
    v16.i32[0] = v17.i32[1];
    LODWORD(v18) = v17.i32[2];
    [(SCNNode *)a2 setScale:*v17.i64, *v16.i64, v18];
    v6.n128_u64[1] = *(&v19 + 1);
    LODWORD(this->var22) = v19;
  }

  else if (!this->var24)
  {
    v6.n128_f32[0] = (this->var19 * v9) + (this->var23 * (1.0 - v9));
    *&v7 = v6.n128_f32[0];
    *&v8 = v6.n128_f32[0];
    [(SCNNode *)a2 setScale:v6.n128_f64[0], v7, v8];
  }

  this->var21 = v9;
  if ((COERCE_UNSIGNED_INT(v9 + -1.0) & 0x60000000) == 0)
  {
    v6.n128_f64[0] = a3;

    SCNCAction::didFinishWithTargetAtTime(this, a2, v6);
  }
}

SCNCAction *SCNCActionScale::cpp_willStartWithTargetAtTime(SCNCActionScale *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this->var21 = 0.0;
  if (this->var25)
  {
    this->var22 = 1.0;
    v6 = this->var19 + -1.0;
  }

  else
  {
    result = [(SCNNode *)a2 scale];
  }

  this->var23 = v6;
  return result;
}

void SCNCActionGroup::SCNCActionGroup(SCNCActionGroup *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v4 = &unk_282DC7BA0;
  v4 += 18;
  *(this + 18) = v4;
  *(this + 19) = v4;
  *(this + 20) = 0;
  *(this + 7) = *&a2->var7;
  *(this + 40) = *&a2->var5;
  *(this + 40) = *&a2->var10;
  *(this + 8) = *&a2->var8;
  *(this + 13) = a2->var14;
  v5[0] = v5;
  v5[1] = v5;
  v5[2] = 0;
  std::list<SCNCAction *>::__move_assign(v4, v5);
  std::__list_imp<SCNCAction *>::clear(v5);
  *(this + 32) = 1;
}

void SCNCActionGroup::~SCNCActionGroup(SCNCAction *this)
{
  SCNCActionGroup::~SCNCActionGroup(this);

  JUMPOUT(0x21CF07610);
}

{
  this->var0 = &unk_282DC7BA0;
  v2 = this + 1;
  std::__list_imp<SCNCAction *>::clear(&this[1].var0);
  std::__list_imp<SCNCAction *>::clear(v2);

  SCNCAction::~SCNCAction(this);
}

void SCNCActionGroup::setBaseSpeed(SCNCAction *this, double a2)
{
  SCNCAction::setBaseSpeed(this, a2);
  var1 = this[1].var1;
  if (*&var1 != &this[1])
  {
    v4 = this->var16 * this->var17;
    do
    {
      (*(**(*&var1 + 16) + 40))(*(*&var1 + 16), v4);
      var1 = *(*&var1 + 8);
    }

    while (*&var1 != &this[1]);
  }
}

void SCNCActionGroup::setSpeed(SCNCAction *this, double a2)
{
  SCNCAction::setSpeed(this, a2);
  var1 = this[1].var1;
  if (*&var1 != &this[1])
  {
    v4 = this->var16 * this->var17;
    do
    {
      (*(**(*&var1 + 16) + 40))(*(*&var1 + 16), v4);
      var1 = *(*&var1 + 8);
    }

    while (*&var1 != &this[1]);
  }
}

SCNCAction *SCNCActionGroup::cpp_updateWithTargetForTime(SCNCAction *this, SCNNode *a2, double a3)
{
  v6.n128_f64[0] = SCNCAction::cpp_timeByApplyingTimingfunction(this, a3, a2);
  var1 = this[1].var1;
  if (*&var1 == &this[1])
  {
    goto LABEL_16;
  }

  v8 = v6.n128_f64[0];
  v9 = 1;
  do
  {
    v10 = *(*&var1 + 16);
    if (C3DIsRunningInEditor())
    {
LABEL_4:
      SCNCAction::updateWithTargetForTime(v10, a2, v8);
      goto LABEL_5;
    }

    if (v10->var4)
    {
      if (!v10->var10)
      {
        goto LABEL_4;
      }
    }

    else if (([v10->var3 finished] & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_5:
    if (v10->var4)
    {
      result = v10->var10;
    }

    else
    {
      result = [v10->var3 finished];
    }

    v9 &= result;
    var1 = *(*&var1 + 8);
  }

  while (*&var1 != &this[1]);
  if (v9)
  {
LABEL_16:
    v6.n128_f64[0] = a3;

    return SCNCAction::didFinishWithTargetAtTime(this, a2, v6);
  }

  return result;
}

void *SCNCActionGroup::cpp_wasAddedToTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_wasAddedToTargetAtTime(this, a2, a3);
  v7 = this + 1;
  for (i = this[1].var1; *&i != v7; i = *(*&i + 8))
  {
    result = SCNCAction::wasAddedToTargetAtTime(*(*&i + 16), a2, a3);
  }

  return result;
}

void *SCNCActionGroup::cpp_wasRemovedFromTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_wasRemovedFromTargetAtTime(this, a2, a3);
  v7 = this + 1;
  for (i = this[1].var1; *&i != v7; i = *(*&i + 8))
  {
    result = SCNCAction::wasRemovedFromTargetAtTime(*(*&i + 16), a2, a3);
  }

  return result;
}

void *SCNCActionGroup::cpp_willStartWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  v7 = this + 1;
  for (i = this[1].var1; *&i != v7; i = *(*&i + 8))
  {
    result = SCNCAction::willStartWithTargetAtTime(*(*&i + 16), a2, a3);
  }

  return result;
}

void *SCNCActionGroup::cpp_wasPausedWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_wasPausedWithTargetAtTime(this, a2, a3);
  v7 = this + 1;
  for (i = this[1].var1; *&i != v7; i = *(*&i + 8))
  {
    result = SCNCAction::wasPausedWithTargetAtTime(*(*&i + 16), a2, a3);
  }

  return result;
}

void SCNCActionGroup::cpp_willResumeWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_willResumeWithTargetAtTime(this, a2, a3);
  v6 = this + 1;
  for (i = this[1].var1; *&i != v6; i = *(*&i + 8))
  {
    SCNCAction::willResumeWithTargetAtTime(*(*&i + 16), a2, a3);
  }
}

void SCNCActionGroup::cpp_timeJumpWithTarget(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_timeJumpWithTarget(this, a2, a3);
  v6 = this + 1;
  for (i = this[1].var1; *&i != v6; i = *(*&i + 8))
  {
    SCNCAction::timeJumpWithTarget(*(*&i + 16), a2, a3);
  }
}

SCNCAction *SCNCActionGroup::cpp_reset(SCNCAction *this)
{
  result = SCNCAction::cpp_reset(this);
  v3 = this + 1;
  for (i = this[1].var1; *&i != v3; i = *(*&i + 8))
  {
    result = (*(**(*&i + 16) + 120))(*(*&i + 16));
  }

  return result;
}

void *std::list<SCNCAction *>::__move_assign(uint64_t *a1, uint64_t *a2)
{
  result = std::__list_imp<SCNCAction *>::clear(a1);
  v5 = a2[2];
  if (v5)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = *(*a2 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a1;
    *(v10 + 8) = v6;
    *v6 = v10;
    *a1 = v7;
    *(v7 + 8) = a1;
    a1[2] += v5;
    a2[2] = 0;
  }

  return result;
}

void *std::__list_imp<SCNCAction *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void **C3DShapeTriangulationListInsert(void **result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  if (*result == *(result + 1))
  {
    v7 = 2 * v6;
    *(result + 1) = v7;
    result[1] = malloc_type_realloc(result[1], 8 * v7, 0x2004093837F09uLL);
    result = malloc_type_realloc(v5[2], 8 * *(v5 + 1), 0x2004093837F09uLL);
    v5[2] = result;
    v6 = *v5;
  }

  *(v5[1] + v6) = a2;
  *(v5[2] + v6) = a3;
  *v5 = v6 + 1;
  return result;
}

void *C3DShapeTriangulationStackPush(int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (v5 == *a1)
  {
    a1[1] = 2 * v5;
    result = malloc_type_realloc(*(a1 + 1), 8 * (2 * v5), 0x2004093837F09uLL);
    *(a1 + 1) = result;
    v4 = *a1;
  }

  else
  {
    result = *(a1 + 1);
  }

  *a1 = v4 + 1;
  result[v4] = a2;
  return result;
}

uint64_t C3DShapeTriangulationGetNewTriangle(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) >= *(a1 + 36))
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShapeTriangulationGetNewTriangle_cold_1(v3);
    }
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a1 + 32) = v5 + 1;
  result = v4 + 56 * v5;
  *(result + 51) = 0;
  return result;
}

uint64_t C3DShapeTriangulationTriangleContainingVertex(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = (v2 - 1);
  if (v2 - 1 < 0)
  {
    return 2;
  }

  v4 = *(a2 + 16);
  v5 = v3 + 1;
  for (i = (v4 + 56 * v3); ; i -= 7)
  {
    if (v4)
    {
      v7 = v4 + 56 * v3;
      if (*i == a1 || i[1] == a1)
      {
        return v7;
      }

      if (i[2] == a1)
      {
        break;
      }
    }

    --v3;
    if (v5-- <= 1)
    {
      return 2;
    }
  }

  return i;
}

uint64_t C3DShapeTriangulationTriangleContainingPoint(float64x2_t *a1, double **i, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = *(a3 + 32);
  while (v4)
  {
    if (!i)
    {
      C3DShapeTriangulationTriangleContainingPoint_cold_2();
    }

    v5 = 0;
    v6 = 0;
    --v4;
    v7 = *a1;
    do
    {
      if (v5 == 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = v5 + 1;
      }

      v9 = vsubq_f64(*i[v5], v7);
      v10 = vmulq_f64(vsubq_f64(*i[v8], v7), vextq_s8(v9, v9, 8uLL));
      if (vmovn_s64(vcgtq_f64(v10, vdupq_laneq_s64(v10, 1))).u8[0])
      {
        i = i[v5 + 3];
        if (!i)
        {
          C3DShapeTriangulationTriangleContainingPoint_cold_1();
        }

        v6 = 1;
      }

      ++v5;
    }

    while (v5 != 3);
    if ((v6 & 1) == 0)
    {
      return i;
    }
  }

  if (!v3)
  {
    return 2;
  }

  for (i = *(a3 + 16); ; i += 7)
  {
    v14 = i[1];
    v15 = i[2];
    v16 = **i;
    v17 = (*i)[1];
    v18 = v14[1];
    v19 = v15[1];
    v11 = a1->f64[0];
    v12 = a1->f64[1];
    v13 = -a1->f64[0];
    if (vabdd_f64(fabs(*v14 * v19 + v16 * v18 + *v15 * v17 - v16 * v19 - *v15 * v18 - *v14 * v17) * 0.5 - fabs(v17 * *v15 + v11 * v19 + v16 * v12 + v13 * v17 - v16 * v19 - *v15 * v12) * 0.5 - fabs(*v14 * v19 + v11 * v18 + *v15 * v12 + v13 * v19 - *v15 * v18 - *v14 * v12) * 0.5, fabs(v16 * v18 + v11 * v17 + *v14 * v12 + v13 * v18 - *v14 * v17 - v16 * v12) * 0.5) < 0.001)
    {
      break;
    }

    if (!--v3)
    {
      return 2;
    }
  }

  return i;
}

uint64_t C3DEdgeCrossingSegment(uint64_t a1, double *a2, double *a3, double ***a4)
{
  v8 = *a1;
  if (*a1 == a3 || (v9 = *(a1 + 8), v9 == a3) || *(a1 + 16) == a3)
  {
    v12 = *(a1 + 24);
    if (v12 && (*v12 == a2 || v12[1] == a2 || v12[2] == a2) && (*v12 == a3 || v12[1] == a3 || v12[2] == a3))
    {
      goto LABEL_41;
    }

    v12 = *(a1 + 32);
    if (v12 && (*v12 == a2 || v12[1] == a2 || v12[2] == a2) && (*v12 == a3 || v12[1] == a3 || v12[2] == a3))
    {
      goto LABEL_41;
    }

    v12 = *(a1 + 40);
    if (v12 && (*v12 == a2 || v12[1] == a2 || v12[2] == a2) && (*v12 == a3 || v12[1] == a3 || v12[2] == a3))
    {
      goto LABEL_41;
    }
  }

  else
  {
    v10 = v8 == a2 || v9 == a2;
    if (!v10 && (C3DSegmentIntersectsSegment(*a2, a2[1], *a3, a3[1], *v8, v8[1], *v9, v9[1]) & 1) != 0)
    {
      v11 = 24;
LABEL_40:
      v12 = *(a1 + v11);
LABEL_41:
      *a4 = v12;
      return 1;
    }

    v13 = *(a1 + 8);
    if (v13 != a2)
    {
      v14 = *(a1 + 16);
      if (v14 != a2 && (C3DSegmentIntersectsSegment(*a2, a2[1], *a3, a3[1], *v13, v13[1], *v14, v14[1]) & 1) != 0)
      {
        v11 = 32;
        goto LABEL_40;
      }
    }

    v15 = *(a1 + 16);
    if (v15 != a2 && *a1 != a2)
    {
      result = C3DSegmentIntersectsSegment(*a2, a2[1], *a3, a3[1], *v15, v15[1], **a1, *(*a1 + 8));
      if (!result)
      {
        return result;
      }

      v11 = 40;
      goto LABEL_40;
    }
  }

  return 0;
}

BOOL C3DCircumcircleContainsPoint(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a1[1];
  v5 = a2[1];
  v6 = a3[1];
  v7 = v4 * v4 + *a1 * *a1;
  v8 = v5 * v5 + *a2 * *a2;
  v9 = v6 * v6 + *a3 * *a3;
  v10 = v5 - v6;
  v11 = *a2 * (v6 - v4) + *a1 * (v5 - v6);
  v12 = v4 - v5;
  v13 = v11 + *a3 * v12 + v11 + *a3 * v12;
  v14 = (v8 * (v6 - v4) + v7 * v10 + v9 * v12) / v13;
  v15 = *a2 - *a3;
  v16 = *a1 - *a2;
  v17 = -(v8 * (*a3 - *a1) + v7 * v15 + v9 * v16) / v13;
  v18 = sqrt(((v4 - v6) * (v4 - v6) + (*a1 - *a3) * (*a1 - *a3)) * ((v12 * v12 + v16 * v16) * (v10 * v10 + v15 * v15)));
  v19 = fabs(v13);
  return (v17 - a4[1]) * (v17 - a4[1]) + (v14 - *a4) * (v14 - *a4) < v18 / v19 * (v18 / v19);
}

uint64_t C3DPointFallsOnTriangleEdgeAndLinks(uint64_t a1, double *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(a1 + 8);
  v5 = **a1;
  v6 = *(*a1 + 8);
  v7 = v4[1];
  v8 = *a2;
  v9 = a2[1];
  if ((*v4 - v5) * (v9 - v6) - (v7 - v6) * (*a2 - v5) == 0.0)
  {
    v10 = 0;
    *a3 = 0;
    while (*(*(a1 + 24) + 24 + 8 * v10) != a1)
    {
      if (++v10 == 3)
      {
        C3DPointFallsOnTriangleEdgeAndLinks_cold_1();
      }
    }
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = v11[1];
    if ((*v11 - *v4) * (v9 - v7) - (v12 - v7) * (v8 - *v4) == 0.0)
    {
      v10 = 0;
      *a3 = 1;
      while (*(*(a1 + 32) + 24 + 8 * v10) != a1)
      {
        if (++v10 == 3)
        {
          C3DPointFallsOnTriangleEdgeAndLinks_cold_1();
        }
      }
    }

    else
    {
      if ((v5 - *v11) * (v9 - v12) - (v6 - v12) * (v8 - *v11) != 0.0)
      {
        return 0;
      }

      v10 = 0;
      *a3 = 2;
      while (*(*(a1 + 40) + 24 + 8 * v10) != a1)
      {
        if (++v10 == 3)
        {
          C3DPointFallsOnTriangleEdgeAndLinks_cold_1();
        }
      }
    }
  }

  *a4 = v10;
  return 1;
}

uint64_t C3DVertexNotSharedByTriangles(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    C3DVertexNotSharedByTriangles_cold_3();
  }

  if (!a2)
  {
    C3DVertexNotSharedByTriangles_cold_2();
  }

  v2 = (a1 + 24);
  v3 = 1;
  while (*v2 != a2)
  {
    --v3;
    ++v2;
    if (v3 == -2)
    {
      C3DVertexNotSharedByTriangles_cold_1();
    }
  }

  if (v3 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = -v3;
  }

  return *(a1 + 8 * v4);
}

uint64_t C3DShapeConnectedComponentTriangulatePseudopolygon(uint64_t a1, double *a2, double *a3, unsigned int *a4, int a5)
{
  v5 = *a1;
  v6 = (*a1 - 1);
  if (*a1 <= 1u)
  {
    C3DShapeConnectedComponentTriangulatePseudopolygon_cold_2();
  }

  v7 = a4;
  v9 = a2;
  v10 = a1;
  v11 = *(a1 + 8);
  v12 = *v11;
  if (v6 <= 1)
  {
    v13 = 0;
    v17 = *(a1 + 16);
    v18 = *v17;
    v19 = *a4;
  }

  else
  {
    v115 = *a1;
    v117 = a5;
    v13 = 0;
    v14 = 1;
    v15 = *v11;
    do
    {
      v16 = v11[v14];
      a1 = C3DCircumcircleContainsPoint(v9, a3, v15, v16);
      if (a1)
      {
        v15 = v16;
        v13 = v14;
      }

      ++v14;
    }

    while (v6 != v14);
    v17 = *(v10 + 16);
    v18 = *v17;
    v7 = a4;
    v19 = *a4;
    if (v13 >= 1)
    {
      v20 = 1;
      a5 = v117;
      while (1)
      {
        v21 = *(*(a4 + 1) + 8 * --v19);
        if (v117)
        {
          v22 = v11[v20];
          *v21 = v22;
          v23 = 1;
        }

        else
        {
          *v21 = v12;
          v22 = v12;
          v12 = *(*(v10 + 8) + v20 * 8);
          v23 = v18;
          v18 = 1;
        }

        *(v21 + 8) = v12;
        *(v21 + 16) = v9;
        v24 = *(*(v10 + 16) + v20 * 8);
        *(v21 + 24) = v24;
        *(v21 + 32) = v18;
        *(v21 + 40) = v23;
        if (v117)
        {
          if (v18)
          {
            v26 = *v18;
            v25 = *(v18 + 8);
            if (*v18 == v9 && v25 == v12)
            {
              v27 = 0;
            }

            else
            {
              v31 = *(v18 + 16);
              if (v25 == v9 && v31 == v12)
              {
                v27 = 1;
              }

              else if (v31 == v9 && v26 == v12)
              {
                v27 = 2;
              }

              else
              {
                v27 = -1;
              }
            }
          }

          else
          {
            v27 = -1;
          }

          if (!v24)
          {
            goto LABEL_181;
          }

          a1 = *v24;
          v34 = v24[1];
          if (*v24 == v12 && v34 == v22)
          {
            v38 = 0;
          }

          else
          {
            a2 = v24[2];
            v36 = a2 == v12 && a1 == v22;
            a1 = v36 ? 2 : 0xFFFFFFFFLL;
            v37 = v34 == v12 && a2 == v22;
            v38 = v37 ? 1 : a1;
          }

          if (v27 == -1 || v38 == -1)
          {
            goto LABEL_181;
          }

          v24[v38 + 3] = v21;
          *(*(v21 + 32) + 8 * v27 + 24) = v21;
          v39 = *(v21 + 24);
          *(v21 + 49) = *(*(v21 + 32) + v27 + 48);
          *(v21 + 48) = *(v39 + v38 + 48);
          *(v21 + 50) = 0;
        }

        else
        {
          if (v23)
          {
            v29 = *v23;
            v28 = *(v23 + 8);
            if (*v23 == v22 && v28 == v9)
            {
              v30 = 0;
            }

            else
            {
              v32 = *(v23 + 16);
              if (v28 == v22 && v32 == v9)
              {
                v30 = 1;
              }

              else if (v32 == v22 && v29 == v9)
              {
                v30 = 2;
              }

              else
              {
                v30 = -1;
              }
            }
          }

          else
          {
            v30 = -1;
          }

          if (!v24 || ((a1 = v24[1], *v24 == v12) ? (v41 = a1 == v22) : (v41 = 0), v41 ? (v44 = 0) : ((a2 = v24[2], a1 == v12) ? (v42 = a2 == v22) : (v42 = 0), v42 ? (v44 = 1) : (a2 == v12 ? (v43 = *v24 == v22) : (v43 = 0), !v43 ? (v44 = -1) : (v44 = 2))), v30 == -1 || v44 == -1))
          {
LABEL_181:
            *v7 = v19;
            return 2;
          }

          v24[v44 + 3] = v21;
          *(*(v21 + 40) + 8 * v30 + 24) = v21;
          *(v21 + 50) = *(*(v21 + 40) + v30 + 48);
          *(v21 + 48) = *(*(v21 + 24) + v44 + 48);
        }

        v11 = *(v10 + 8);
        v12 = v11[v20++];
        v18 = v21;
        if (v13 + 1 == v20)
        {
          *a4 = v19;
          v17 = *(v10 + 16);
          v12 = v15;
          v18 = v21;
          goto LABEL_86;
        }
      }
    }

    v12 = v15;
    a5 = v117;
LABEL_86:
    v5 = v115;
  }

  v45 = v17[v6];
  v46 = v5 - 3;
  if (v5 - 3 >= v13)
  {
    v48 = 0;
    v49 = 8 * v46;
    v50 = v46 + 1;
    v51 = v19 - 1;
    a1 = v49;
    a2 = &v11[v5 - 2];
    while (1)
    {
      v52 = *a2;
      --v19;
      v47 = *(*(v7 + 1) + 8 * (v51 + v48));
      *v47 = a3;
      if (a5)
      {
        v47[1] = v52;
        v53 = *(*(v10 + 8) + v49 + 8 * v48);
        v47[2] = v53;
        v47[3] = v45;
        v54 = *(*(v10 + 16) + v49 + 8 * v48 + 8);
        v47[4] = v54;
        v47[5] = 1;
        if (v45)
        {
          v55 = *v45;
          v56 = v45[1];
          if (*v45 == v52 && v56 == a3)
          {
            v57 = 0;
          }

          else
          {
            v63 = v45[2];
            if (v56 == v52 && v63 == a3)
            {
              v57 = 1;
            }

            else if (v63 == v52 && v55 == a3)
            {
              v57 = 2;
            }

            else
            {
              v57 = -1;
            }
          }
        }

        else
        {
          v57 = -1;
        }

        if (!v54)
        {
          goto LABEL_181;
        }

        v66 = v54[1];
        if (*v54 == v53 && v66 == v52)
        {
          v72 = 0;
        }

        else
        {
          v68 = v54[2];
          v69 = v68 == v53 && *v54 == v52;
          v70 = v69 ? 2 : -1;
          v71 = v66 == v53 && v68 == v52;
          v72 = v71 ? 1 : v70;
        }

        if (v57 == -1 || v72 == -1)
        {
          goto LABEL_181;
        }

        v54[v72 + 3] = v47;
        *&v47[3][v57 + 3] = v47;
        v73 = v47[4];
        *(v47 + 48) = *(v47[3] + v57 + 48);
        *(v47 + 49) = *(v73 + v72 + 48);
      }

      else
      {
        v58 = *(*(v10 + 8) + v49 + 8 * v48);
        v47[1] = v58;
        v47[2] = v52;
        v47[3] = 1;
        v59 = *(*(v10 + 16) + v49 + 8 * v48 + 8);
        v47[4] = v59;
        v47[5] = v45;
        if (v45)
        {
          v60 = *v45;
          v61 = v45[1];
          if (*v45 == a3 && v61 == v52)
          {
            v62 = 0;
          }

          else
          {
            v64 = v45[2];
            if (v61 == a3 && v64 == v52)
            {
              v62 = 1;
            }

            else if (v64 == a3 && v60 == v52)
            {
              v62 = 2;
            }

            else
            {
              v62 = -1;
            }
          }
        }

        else
        {
          v62 = -1;
        }

        if (!v59)
        {
          goto LABEL_181;
        }

        v75 = v59[1];
        if (*v59 == v52 && v75 == v58)
        {
          v80 = 0;
        }

        else
        {
          v77 = v59[2];
          if (v75 == v52 && v77 == v58)
          {
            v80 = 1;
          }

          else
          {
            v79 = v77 == v52 && *v59 == v58;
            v80 = v79 ? 2 : -1;
          }
        }

        if (v62 == -1 || v80 == -1)
        {
          goto LABEL_181;
        }

        v59[v80 + 3] = v47;
        *&v47[5][v62 + 3] = v47;
        v81 = v47[4];
        *(v47 + 50) = *(v47[5] + v62 + 48);
        *(v47 + 49) = *(v81 + v80 + 48);
        *(v47 + 48) = 0;
      }

      a2 = (*(v10 + 8) + a1);
      a1 -= 8;
      --v48;
      v45 = v47;
      if (v50 + v48 <= v13)
      {
        goto LABEL_161;
      }
    }
  }

  v47 = v45;
LABEL_161:
  v82 = *(v7 + 1);
  v83 = v19 - 1;
  *v7 = v83;
  v84 = *(v82 + 8 * v83);
  *v84 = v9;
  if (a5)
  {
    *(v84 + 8) = a3;
    *(v84 + 16) = v12;
    if (v18)
    {
      v85 = *(v18 + 8);
      if (*v18 == v9 && v85 == v12)
      {
        v91 = 0;
        if (!v47)
        {
          goto LABEL_243;
        }
      }

      else
      {
        v87 = *(v18 + 16);
        if (v87 == v9 && *v18 == v12)
        {
          v89 = 2;
        }

        else
        {
          v89 = -1;
        }

        if (v85 == v9 && v87 == v12)
        {
          v91 = 1;
        }

        else
        {
          v91 = v89;
        }

        if (!v47)
        {
          goto LABEL_243;
        }
      }
    }

    else
    {
      v91 = -1;
      if (!v47)
      {
        goto LABEL_243;
      }
    }

    v99 = v47[1];
    if (*v47 == v12 && v99 == a3)
    {
      v105 = 0;
    }

    else
    {
      v101 = v47[2];
      if (v101 == v12 && *v47 == a3)
      {
        v103 = 2;
      }

      else
      {
        v103 = -1;
      }

      if (v99 == v12 && v101 == a3)
      {
        v105 = 1;
      }

      else
      {
        v105 = v103;
      }
    }

    if (v91 != -1 && v105 != -1)
    {
      *(v18 + 8 * v91 + 24) = v84;
      v47[v105 + 3] = v84;
      *(v84 + 24) = 1;
      *(v84 + 32) = v47;
      *(v84 + 40) = v18;
      *(v84 + 48) = 1;
      *(v84 + 49) = *(v47 + v105 + 48);
      *(v84 + 50) = *(v18 + v91 + 48);
      return v84;
    }

LABEL_243:
    *(v84 + 24) = 1;
    *(v84 + 32) = 1;
    *(v84 + 40) = 1;
    return v84;
  }

  *(v84 + 8) = v12;
  *(v84 + 16) = a3;
  if (!v18)
  {
    v98 = -1;
    if (!v47)
    {
      goto LABEL_248;
    }

LABEL_223:
    v106 = v47[1];
    if (*v47 == a3 && v106 == v12)
    {
      v112 = 0;
    }

    else
    {
      v108 = v47[2];
      if (v108 == a3 && *v47 == v12)
      {
        v110 = 2;
      }

      else
      {
        v110 = -1;
      }

      if (v106 == a3 && v108 == v12)
      {
        v112 = 1;
      }

      else
      {
        v112 = v110;
      }
    }

    if (v98 <= 2 && v112 < 3)
    {
      *(v18 + 8 * v98 + 24) = v84;
      v47[v112 + 3] = v84;
      *(v84 + 24) = v18;
      *(v84 + 32) = v47;
      *(v84 + 40) = 1;
      *(v84 + 48) = *(v18 + v98 + 48);
      *(v84 + 49) = *(v47 + v112 + 48);
      *(v84 + 50) = 1;
      return v84;
    }

    goto LABEL_248;
  }

  v92 = *(v18 + 8);
  if (*v18 == v12 && v92 == v9)
  {
    v98 = 0;
    if (!v47)
    {
      goto LABEL_248;
    }

    goto LABEL_223;
  }

  v94 = *(v18 + 16);
  if (v94 == v12 && *v18 == v9)
  {
    v96 = 2;
  }

  else
  {
    v96 = -1;
  }

  if (v92 == v12 && v94 == v9)
  {
    v98 = 1;
  }

  else
  {
    v98 = v96;
  }

  if (v47)
  {
    goto LABEL_223;
  }

LABEL_248:
  v113 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
  {
    C3DShapeConnectedComponentTriangulatePseudopolygon_cold_1(v113);
  }

  return v84;
}

void C3DShapeTriangulationAddEdge(uint64_t a1, double *a2, double *a3)
{
  v3 = a3;
  v4 = a1;
  if (*a2 > *a3 || *a2 == *a3 && a2[1] < a3[1])
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
    v3 = a2;
  }

  v6 = C3DShapeTriangulationTriangleContainingVertex(v3, a1);
  if (v6 == 2)
  {
    v16 = 6;
    goto LABEL_42;
  }

  v7 = v6;
  v8 = *(v4 + 32);
  v72 = 0;
  if (C3DEdgeCrossingSegment(v6, v3, v5, &v72))
  {
LABEL_17:
    if (v7 && (*v7 == v5 || *(v7 + 8) == v5 || *(v7 + 16) == v5))
    {
      v17 = 0;
      while (*(v7 + 8 * v17 + 24) != v72)
      {
        if (++v17 == 3)
        {
          v17 = 0xFFFFFFFFLL;
          break;
        }
      }

      v18 = 0;
      while (v72[v18 + 3] != v7)
      {
        if (++v18 == 3)
        {
          v18 = 0xFFFFFFFFLL;
          break;
        }
      }

      *(v72 + v18 + 48) = 1;
      *(v7 + v17 + 48) = 1;
      return;
    }

    v70 = 0x1000000000;
    v71 = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
    v67 = 0x400000000;
    v68 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v69 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v64 = 0x400000000;
    v65 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v10 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v66 = v10;
    do
    {
      v14 = *(v7 + v11);
      if (v14 != v3)
      {
        if ((*v5 - *v3) * (v14[1] - v3[1]) - (v5[1] - v3[1]) * (*v14 - *v3) <= 0.0)
        {
          v12 = *(v7 + v11);
        }

        else
        {
          v13 = *(v7 + v11);
        }
      }

      v11 += 8;
    }

    while (v11 != 24);
    if (*v7 == v12)
    {
      v19 = 32;
    }

    else if (*(v7 + 8) == v12)
    {
      v19 = 40;
    }

    else
    {
      if (*(v7 + 16) != v12)
      {
        v15 = 0;
        goto LABEL_47;
      }

      v19 = 24;
    }

    v15 = *(v7 + v19);
LABEL_47:
    C3DShapeTriangulationListInsert(&v67, v13, v15);
    if (*v7 == v13)
    {
      v21 = 32;
    }

    else if (*(v7 + 8) == v13)
    {
      v21 = 40;
    }

    else
    {
      if (*(v7 + 16) != v13)
      {
        v20 = 0;
LABEL_55:
        C3DShapeTriangulationListInsert(&v64, v12, v20);
        v22 = 0;
        v23 = v70;
        if (v13 != v5 && v12 != v5)
        {
          v24 = v12;
          v58 = 0;
          v59 = 0;
          v25 = v71;
          v57 = v4;
          v60 = HIDWORD(v70);
          v26 = *(v4 + 32) - 1;
          v27 = v3;
          while (1)
          {
            if (!v26)
            {
              v47 = 3;
LABEL_104:
              v4 = v57;
LABEL_122:
              *(v4 + 40) = v47;
              goto LABEL_123;
            }

            v28 = (v7 + 16);
            v29 = *(v7 + 8);
            if (*v7 == v27)
            {
              v31 = 32;
            }

            else
            {
              v30 = *v28;
              if (v29 == v27)
              {
                v29 = v30;
                v28 = v7;
                v31 = 40;
              }

              else
              {
                if (v30 != v27)
                {
                  goto LABEL_102;
                }

                v29 = *v7;
                v28 = (v7 + 8);
                v31 = 24;
              }
            }

            v32 = *(v7 + v31);
            if (!v32)
            {
LABEL_102:
              v47 = 4;
              goto LABEL_104;
            }

            ptr = v25;
            v63 = v24;
            v33 = *v28;
            v34 = C3DVertexNotSharedByTriangles(v32, v7);
            v35 = (*v5 - *v3) * (v34[1] - v3[1]) - (v5[1] - v3[1]) * (*v34 - *v3);
            v36 = *v32;
            v61 = v33;
            if (v35 <= 0.0)
            {
              if (v36 == v13)
              {
                v40 = 4;
              }

              else if (v32[1] == v13)
              {
                v40 = 5;
              }

              else
              {
                if (v32[2] != v13)
                {
                  v38 = 0;
LABEL_84:
                  C3DShapeTriangulationListInsert(&v64, v34, v38);
                  v41 = v13;
                  v58 = v63;
                  goto LABEL_85;
                }

                v40 = 3;
              }

              v38 = v32[v40];
              goto LABEL_84;
            }

            if (v36 == v63)
            {
              break;
            }

            if (v32[1] == v63)
            {
              v39 = 5;
              goto LABEL_80;
            }

            if (v32[2] == v63)
            {
              v39 = 3;
              goto LABEL_80;
            }

            v37 = 0;
LABEL_81:
            C3DShapeTriangulationListInsert(&v67, v34, v37);
            v41 = v34;
            v59 = v13;
            v34 = v63;
LABEL_85:
            v25 = ptr;
            if (v23 == v60)
            {
              v60 *= 2;
              v25 = malloc_type_realloc(ptr, 8 * v60, 0x2004093837F09uLL);
              v71 = v25;
            }

            v42 = v23 + 1;
            *(v25 + v23) = v7;
            v27 = v61;
            if (v35 > 0.0 == (*v5 - *v3) * (v29[1] - v3[1]) - (v5[1] - v3[1]) * (*v29 - *v3) > 0.0)
            {
              v27 = v29;
            }

            if (v41 != v5)
            {
              --v26;
              v7 = v32;
              v24 = v34;
              v13 = v41;
              ++v23;
              if (v34 != v5)
              {
                continue;
              }
            }

            v22 = v59;
            HIDWORD(v70) = v60;
            v4 = v57;
            v43 = v58;
            goto LABEL_93;
          }

          v39 = 4;
LABEL_80:
          v37 = v32[v39];
          goto LABEL_81;
        }

        v42 = v70;
        v41 = v13;
        v43 = 0;
        v32 = v7;
LABEL_93:
        v44 = *v32;
        if (v41 != v5)
        {
          if (v44 == v43)
          {
            v45 = v42;
            v48 = 4;
          }

          else if (v32[1] == v43)
          {
            v45 = v42;
            v48 = 5;
          }

          else
          {
            v45 = v42;
            if (v32[2] != v43)
            {
              v46 = 0;
LABEL_110:
              v50 = &v67;
              goto LABEL_115;
            }

            v48 = 3;
          }

          v46 = v32[v48];
          goto LABEL_110;
        }

        if (v44 == v22)
        {
          v45 = v42;
          v49 = 4;
        }

        else if (v32[1] == v22)
        {
          v45 = v42;
          v49 = 5;
        }

        else
        {
          v45 = v42;
          if (v32[2] != v22)
          {
            v46 = 0;
LABEL_114:
            v50 = &v64;
LABEL_115:
            C3DShapeTriangulationListInsert(v50, v5, v46);
            if (HIDWORD(v70) == v45)
            {
              HIDWORD(v70) = 2 * v45;
              v51 = malloc_type_realloc(v71, 16 * v45, 0x2004093837F09uLL);
              v71 = v51;
            }

            else
            {
              v51 = v71;
            }

            LODWORD(v70) = v45 + 1;
            *(v51 + v45) = v32;
            v47 = 1;
            v52 = C3DShapeConnectedComponentTriangulatePseudopolygon(&v67, v3, v5, &v70, 1);
            if (v52 == 2)
            {
              goto LABEL_122;
            }

            v53 = v52;
            v54 = C3DShapeConnectedComponentTriangulatePseudopolygon(&v64, v3, v5, &v70, 0);
            if (v54 == 2)
            {
              goto LABEL_122;
            }

            *(v53 + 24) = v54;
            *(v54 + 40) = v53;
            if (v70)
            {
              C3DShapeTriangulationAddEdge_cold_1();
            }

LABEL_123:
            free(v71);
            v55 = v69;
            free(v68);
            free(v55);
            v56 = v66;
            free(v65);
            free(v56);
            return;
          }

          v49 = 3;
        }

        v46 = v32[v49];
        goto LABEL_114;
      }

      v21 = 24;
    }

    v20 = *(v7 + v21);
    goto LABEL_55;
  }

  while (--v8)
  {
    if (*v7 == v3)
    {
      v9 = 24;
      goto LABEL_15;
    }

    if (*(v7 + 8) == v3)
    {
      v9 = 32;
      goto LABEL_15;
    }

    if (*(v7 + 16) == v3)
    {
      v9 = 40;
LABEL_15:
      v7 = *(v7 + v9);
    }

    if (C3DEdgeCrossingSegment(v7, v3, v5, &v72))
    {
      goto LABEL_17;
    }
  }

  v16 = 2;
LABEL_42:
  *(v4 + 40) = v16;
}

void *C3DShapeTriangulationResolveSwaps(void *result, double *a2)
{
  v2 = *result;
  if (!*result)
  {
    return result;
  }

  v4 = result;
  while (2)
  {
    if (v2 > *(v4 + 8))
    {
      v26 = 9;
LABEL_37:
      *(v4 + 10) = v26;
      return result;
    }

    v5 = v4[1];
    v6 = v2 - 1;
    *v4 = v6;
    v7 = *(v5 + 8 * v6);
    v8 = *(v7 + 32);
    if (!v8)
    {
      v26 = 10;
      goto LABEL_37;
    }

    v9 = 0;
    v10 = v8 + 24;
    v11 = 24;
    while (*(v8 + v11) != v7)
    {
      --v9;
      v11 += 8;
      if (v9 == -3)
      {
        goto LABEL_36;
      }
    }

    if (v9)
    {
      v12 = ~v9;
    }

    else
    {
      v12 = 2;
    }

    if (v12 == -1)
    {
      goto LABEL_36;
    }

    if ((*(v7 + 49) & 1) == 0)
    {
      v13 = v8 + v11;
      v14 = *(v13 - 24);
      v15 = *(v8 + 8 * v12);
      v16 = v9 == -2 ? 0 : 1 - v9;
      result = C3DCircumcircleContainsPoint(*(v13 - 24), *(v8 + 8 * v16), *(v8 + 8 * v12), a2);
      if (result)
      {
        v17 = *(v10 + 8 * v16);
        v18 = *(v10 + 8 * v12);
        v19 = *(v7 + 40);
        v20 = *(v8 + 48 + v12);
        v21 = *(v7 + 50);
        *(v7 + 49) = *(v8 + 48 + v16);
        *(v8 + 48) = 0;
        *(v8 + 49) = v20;
        *(v8 + 50) = v21;
        *(v7 + 16) = v15;
        *(v7 + 32) = v17;
        *(v7 + 40) = v8;
        *v8 = a2;
        *(v8 + 8) = v15;
        *(v8 + 16) = v14;
        *(v8 + 24) = v7;
        *(v8 + 32) = v18;
        *(v8 + 40) = v19;
        if (v17)
        {
          v22 = (v17 + 24);
          v23 = 3;
          while (*v22 != v8)
          {
            ++v22;
            if (!--v23)
            {
              goto LABEL_36;
            }
          }

          if (v22 == 3)
          {
            goto LABEL_36;
          }

          *v22 = v7;
          result = C3DShapeTriangulationStackPush(v4, v7);
        }

        if (v18)
        {
          result = C3DShapeTriangulationStackPush(v4, v8);
        }

        if (v19)
        {
          v24 = (v19 + 24);
          v25 = 3;
          while (*v24 != v7)
          {
            ++v24;
            if (!--v25)
            {
              goto LABEL_36;
            }
          }

          if (v24 != 3)
          {
            *v24 = v8;
            goto LABEL_34;
          }

LABEL_36:
          v26 = 5;
          goto LABEL_37;
        }
      }
    }

LABEL_34:
    v2 = *v4;
    if (*v4)
    {
      continue;
    }

    return result;
  }
}

void *C3DShapeTriangulationTriangleSplitInside(int *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2[4];
  v19 = a2[5];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  *a2 = a3;
  a2[1] = v7;
  a2[2] = v8;
  NewTriangle = C3DShapeTriangulationGetNewTriangle(a1, a2);
  result = C3DShapeTriangulationGetNewTriangle(a1, v12);
  v14 = result;
  a2[3] = NewTriangle;
  a2[4] = v10;
  a2[5] = result;
  *NewTriangle = a3;
  *(NewTriangle + 8) = v9;
  *(NewTriangle + 16) = v7;
  *(NewTriangle + 24) = result;
  *(NewTriangle + 32) = v19;
  *(NewTriangle + 40) = a2;
  *result = a3;
  result[1] = v8;
  result[2] = v9;
  result[3] = a2;
  result[4] = v6;
  result[5] = NewTriangle;
  *(NewTriangle + 48) = 0;
  *(NewTriangle + 49) = *(a2 + 50);
  *(NewTriangle + 50) = 0;
  *(result + 48) = 0;
  *(result + 49) = *(a2 + 49);
  *(result + 50) = 0;
  *(a2 + 49) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  if (v10)
  {
    result = C3DShapeTriangulationStackPush(a1, a2);
  }

  if (v6)
  {
    v15 = v6 + 24;
    v16 = 3;
    while (*v15 != a2)
    {
      v15 += 8;
      if (!--v16)
      {
        v15 = 3;
        break;
      }
    }

    *v15 = v14;
    result = C3DShapeTriangulationStackPush(a1, v14);
  }

  if (v19)
  {
    v17 = v19 + 24;
    v18 = 3;
    while (*v17 != a2)
    {
      v17 += 8;
      if (!--v18)
      {
        v17 = 3;
        break;
      }
    }

    *v17 = NewTriangle;

    return C3DShapeTriangulationStackPush(a1, NewTriangle);
  }

  return result;
}

void *C3DShapeTriangulationTriangleSplitOnEdge(int *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v8 = *(a2 + 24 + 8 * a4);
  v9 = (a5 + 1) % 3;
  v34 = *(v8 + 24 + 8 * v9);
  v10 = (a5 + 2) % 3;
  v32 = *(v8 + 24 + 8 * v10);
  v11 = (a4 + 1) % 3;
  v12 = *(a2 + 24 + 8 * v11);
  v13 = (a4 + 2) % 3;
  v29 = *(a2 + 24 + 8 * v13);
  v33 = *(v8 + 48 + v9);
  v30 = *(v8 + 48 + v10);
  v26 = *(a2 + 48 + v11);
  v31 = *(a2 + 48 + v13);
  v14 = *(v8 + 48 + a5);
  v28 = *(a2 + 8 * a4);
  v15 = *(v8 + 8 * a5);
  v16 = *(a2 + 8 * v13);
  v17 = *(v8 + 8 * v10);
  NewTriangle = C3DShapeTriangulationGetNewTriangle(a1, a2);
  result = C3DShapeTriangulationGetNewTriangle(a1, v19);
  v21 = result;
  *a2 = a3;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v8;
  *(a2 + 32) = v12;
  *(a2 + 40) = NewTriangle;
  *(a2 + 48) = v14;
  *(a2 + 49) = v26;
  *(a2 + 50) = 0;
  *v8 = a3;
  *(v8 + 8) = v17;
  *(v8 + 16) = v15;
  *(v8 + 24) = result;
  *(v8 + 32) = v32;
  *(v8 + 40) = a2;
  *(v8 + 48) = 0;
  *(v8 + 49) = v30;
  *(v8 + 50) = v14;
  *NewTriangle = a3;
  *(NewTriangle + 8) = v16;
  *(NewTriangle + 16) = v28;
  *(NewTriangle + 24) = a2;
  *(NewTriangle + 32) = v29;
  *(NewTriangle + 40) = result;
  *(NewTriangle + 48) = 0;
  *(NewTriangle + 49) = v31;
  *(NewTriangle + 50) = v14;
  *result = a3;
  result[1] = v28;
  result[2] = v17;
  result[3] = NewTriangle;
  result[4] = v34;
  result[5] = v8;
  *(result + 48) = v14;
  *(result + 49) = v33;
  *(result + 50) = 0;
  if (v32)
  {
    result = C3DShapeTriangulationStackPush(a1, v8);
  }

  if (v12)
  {
    result = C3DShapeTriangulationStackPush(a1, a2);
  }

  if (v29)
  {
    v22 = v29 + 24;
    v23 = 3;
    while (*v22 != a2)
    {
      v22 += 8;
      if (!--v23)
      {
        v22 = 3;
        break;
      }
    }

    *v22 = NewTriangle;
    result = C3DShapeTriangulationStackPush(a1, NewTriangle);
  }

  if (v34)
  {
    v24 = v34 + 24;
    v25 = 3;
    while (*v24 != v8)
    {
      v24 += 8;
      if (!--v25)
      {
        v24 = 3;
        break;
      }
    }

    *v24 = v21;

    return C3DShapeTriangulationStackPush(a1, v21);
  }

  return result;
}

uint64_t *C3DShapeTriangulationAddPoint(uint64_t a1, float64x2_t *a2)
{
  result = C3DShapeTriangulationTriangleContainingPoint(a2, (*(a1 + 16) + 56 * (*(a1 + 32) - 1)), a1);
  if (result == 2)
  {
    *(a1 + 40) = 8;
  }

  else
  {
    v5 = result;
    v6 = 0;
    if (C3DPointFallsOnTriangleEdgeAndLinks(result, a2->f64, &v6 + 1, &v6))
    {
      C3DShapeTriangulationTriangleSplitOnEdge(a1, v5, a2, HIDWORD(v6), v6);
    }

    else
    {
      C3DShapeTriangulationTriangleSplitInside(a1, v5, a2);
    }

    return C3DShapeTriangulationResolveSwaps(a1, a2->f64);
  }

  return result;
}

__n128 C3DShapeTriangulationInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  NewTriangle = C3DShapeTriangulationGetNewTriangle(a1, a2);
  *(a1 + 24) = NewTriangle;
  v11 = *(*a2 + 16);
  v12 = *(*a2 + 24);
  v13 = *(*a2 + 32);
  v14 = *(*a2 + 40);
  v15 = v12 - v11;
  v16 = v14 - v13;
  if (vabdd_f64(v12, v11) < 0.00001 || vabdd_f64(v14, v13) < 0.00001)
  {
    *(a1 + 40) = 7;
  }

  v17 = v13 + v16 * -100.0;
  *(NewTriangle + 24) = 0;
  *(NewTriangle + 32) = 0;
  *(NewTriangle + 47) = 0;
  *(NewTriangle + 40) = 0;
  *a3 = v11 + v15 * -100.0;
  *(a3 + 8) = v17;
  *(a3 + 48) = *a3;
  *a4 = v11 + v15 * 100.0;
  *(a4 + 8) = v17;
  *(a4 + 48) = *a4;
  *a5 = v11 + v15 * 0.0;
  *(a5 + 8) = v13 + v16 * 100.0;
  result = *a5;
  *(a5 + 48) = *a5;
  *NewTriangle = a3;
  *(NewTriangle + 8) = a4;
  *(NewTriangle + 16) = a5;
  return result;
}

uint64_t C3DShapeTriangulationTriangleMark(uint64_t a1, int a2, BOOL *a3)
{
  *(a1 + 51) = 1;
  *(a1 + 52) = a2;
  v6 = *(a1 + 24);
  if (v6 && (*(v6 + 51) & 1) == 0)
  {
    C3DShapeTriangulationTriangleMark(v6, *(a1 + 48) != a2, a3);
  }

  v7 = *(a1 + 32);
  if (v7 && (*(v7 + 51) & 1) == 0)
  {
    C3DShapeTriangulationTriangleMark(v7, *(a1 + 49) != a2, a3);
  }

  result = *(a1 + 40);
  if (result)
  {
    if ((*(result + 51) & 1) == 0)
    {
      result = C3DShapeTriangulationTriangleMark(result, *(a1 + 50) != a2, a3);
    }
  }

  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      if (*(a1 + 40))
      {
        return result;
      }

      v9 = 50;
    }

    else
    {
      v9 = 49;
    }
  }

  else
  {
    v9 = 48;
  }

  *a3 = *(a1 + v9) != a2;
  return result;
}

void *C3DShapeTriangulationClean(uint64_t a1)
{
  v10 = 0;
  C3DShapeTriangulationTriangleMark(*(a1 + 16), 1, &v10);
  LODWORD(v2) = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = 0;
  v4 = v10;
  do
  {
    if (*(*(a1 + 16) + 56 * v3 + 52) == v4)
    {
      LODWORD(v2) = v2 - 1;
      *(a1 + 32) = v2;
      if (v3 < v2)
      {
        v5 = v3;
        v6 = 56 * v3;
        do
        {
          v7 = *(a1 + 16) + v6;
          ++v5;
          v8 = *(v7 + 72);
          *v7 = *(v7 + 56);
          *(v7 + 16) = v8;
          *(v7 + 32) = *(v7 + 88);
          *(v7 + 48) = *(v7 + 104);
          v2 = *(a1 + 32);
          v6 += 56;
        }

        while (v5 < v2);
      }
    }

    else
    {
      ++v3;
    }
  }

  while (v3 < v2);
  if (v2)
  {
    result = malloc_type_realloc(*(a1 + 16), 56 * v2, 0x1020040F7381AC9uLL);
  }

  else
  {
LABEL_12:
    free(*(a1 + 16));
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void *C3DShapeConnectedComponentTriangulate(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = 0;
    v6 = (*a1 + 8);
    do
    {
      v7 = *v6;
      v6 += 14;
      v5 += v7;
      --v4;
    }

    while (v4);
    v8 = 2 * v5 + 2;
  }

  else
  {
    v8 = 2;
  }

  v30 = 0;
  v27 = 0x1000000000;
  v28 = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
  v29 = malloc_type_malloc(56 * v8, 0x1020040F7381AC9uLL);
  v31 = 0;
  v32 = v8;
  v33 = 0;
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v9 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v9;
  memset(v24, 0, sizeof(v24));
  C3DShapeTriangulationInit(&v27, v23, v26, v25, v24);
  if (!v33)
  {
    v11 = *(a1 + 8);
    v12 = (v11 - 1);
    if (v11 - 1 < 0)
    {
LABEL_23:
      C3DShapeTriangulationClean(&v27);
      free(v28);
      *a2 = v31;
      return v29;
    }

    v22 = vdupq_n_s64(0x3EE4F8B588E368F1uLL);
    while (1)
    {
      v13 = *a1 + 56 * v12;
      v14 = *(v13 + 8);
      if (v14 >= 3)
      {
        break;
      }

LABEL_21:
      if (v12-- <= 0)
      {
        goto LABEL_23;
      }
    }

    v15 = *v13;
    C3DShapeTriangulationAddPoint(&v27, *v13);
    v16 = v22;
    if (!v33)
    {
      v17 = 80;
      v18 = 1;
      while (1)
      {
        v19 = 0;
        while (1)
        {
          v20 = vmovn_s64(vcgeq_f64(v16, vabdq_f64(v15[5 * v18], v15[v19 / 0x10])));
          if (v20.i32[0] & v20.i32[1])
          {
            break;
          }

          v19 += 80;
          if (v17 == v19)
          {
            C3DShapeTriangulationAddPoint(&v27, &v15[5 * v18]);
            if (v33)
            {
              goto LABEL_7;
            }

            break;
          }
        }

        C3DShapeTriangulationAddEdge(&v27, v15[5 * v18 - 5].f64, v15[5 * v18].f64);
        v16 = v22;
        if (v33)
        {
          break;
        }

        ++v18;
        v17 += 80;
        if (v18 == v14)
        {
          C3DShapeTriangulationAddEdge(&v27, v15[5 * (v14 - 1)].f64, v15->f64);
          if (v33)
          {
            break;
          }

          goto LABEL_21;
        }
      }
    }
  }

LABEL_7:
  free(v28);
  *a2 = 0;
  free(v29);
  return 0;
}

void C3DFaceDestroy(unsigned int *a1)
{
  if (*a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 1);
      if (*(v4 + v2))
      {
        free(*(v4 + v2 + 8));
      }

      v5 = v4 + v2;
      *(v5 + 8) = 0;
      *v5 = 0;
      ++v3;
      v6 = *a1;
      v2 += 16;
    }

    while (v3 < v6);
    if (v6)
    {
      free(*(a1 + 1));
    }
  }

  *(a1 + 1) = 0;
  *a1 = 0;
}

double angle(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a5 - a3;
  v7 = a6 - a4;
  v8 = a1 - a3;
  v9 = a2 - a4;
  v10 = hypot(a5 - a3, a6 - a4);
  v11 = hypot(v8, v9);
  if (v10 == 0.0)
  {
    return 0.0;
  }

  v12 = v11;
  if (v12 == 0.0)
  {
    return 0.0;
  }

  v13 = (v9 * v7 + v6 * v8) / (v10 * v12);
  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  if (v13 < -1.0)
  {
    v13 = -1.0;
  }

  *&result = acosf(v13);
  return result;
}

__n128 C3DSpokeListInsert(int *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == a1[1])
  {
    v5 = 2 * v4;
    a1[1] = v5;
    v6 = malloc_type_realloc(*(a1 + 1), 88 * v5, 0x1020040662E9E32uLL);
    *(a1 + 1) = v6;
    v4 = *a1;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  *a1 = v4 + 1;
  v7 = &v6[88 * v4];
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 1) = v8;
  result = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  *(v7 + 10) = *(a2 + 80);
  *(v7 + 3) = v10;
  *(v7 + 4) = v11;
  *(v7 + 2) = result;
  return result;
}

void C3DSpokeListListDestroy(unsigned int a1, void ***a2)
{
  v3 = a1;
  if (a1)
  {
    v4 = a2;
    do
    {
      v5 = *v4++;
      free(v5[1]);
      free(v5);
      --v3;
    }

    while (v3);
  }

  free(a2);
}

void *C3DSpokeListListInsert(int *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == a1[1])
  {
    v5 = 2 * v4;
    a1[1] = v5;
    result = malloc_type_realloc(*(a1 + 1), 8 * v5, 0x2004093837F09uLL);
    *(a1 + 1) = result;
    v4 = *a1;
  }

  else
  {
    result = *(a1 + 1);
  }

  *a1 = v4 + 1;
  result[v4] = a2;
  return result;
}

void C3DSpokeCreate(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  if (a5 == a7 && a6 == a8)
  {
    C3DSpokeCreate_cold_4();
  }

  if (a5 == a9 && a6 == a10)
  {
    C3DSpokeCreate_cold_3();
  }

  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a1;
  *(a4 + 24) = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  *(a4 + 52) = -1;
  v18 = a5 - a7;
  v19 = a6 - a8;
  v20 = hypot(a5 - a7, a6 - a8);
  v21 = v18 / v20;
  v34 = a9;
  v35 = a10;
  v22 = a10 - a6;
  v23 = v19 / v20;
  v24 = hypot(a9 - a5, v22);
  v25 = (a9 - a5) / v24;
  v26 = v22 / v24;
  v27 = v23 + v26;
  v28 = hypot(v21 + v25, v27);
  if (v28 == 0.0)
  {
    v29 = *MEMORY[0x277CBF348];
    v30 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v29 = (v21 + v25) / v28;
    v30 = v27 / v28;
  }

  if (hypot(v29, v30) >= 0.00001)
  {
    *(a4 + 84) = v34 * a6 - a5 * v35 - v34 * a8 + a7 * v35 + a5 * a8 - a7 * a6 > 0.0;
    *(a4 + 64) = -v30;
    *(a4 + 72) = v29;
    v31 = angle(a7, a8, a5, a6, v34, v35);
    v32 = sin(*&v31 * 0.5);
    if (fabsf(v32) >= 0.00001)
    {
      *(a4 + 80) = 1.0 / v32;
    }
  }

  else
  {
    *(a4 + 64) = v25;
    *(a4 + 72) = v26;
  }
}

void intersectionForSpokeAndSpoke(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  if (fabs(hypot(v6, v7) + -1.0) >= 0.00001)
  {
    intersectionForSpokeAndSpoke_cold_2();
  }

  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  if (fabs(hypot(v8, v9) + -1.0) >= 0.00001)
  {
    intersectionForSpokeAndSpoke_cold_1();
  }

  v10 = v6 * v9 - v7 * v8;
  if (v10 == 0.0 || (v11 = *(a1 + 8), v12 = v11 - *(a2 + 8), v13 = *a1 - *a2, v14 = v10, v15 = (v8 * v12 - v9 * v13) / v10, v15 < 0.0) || (v16 = (v13 * -v7 + v6 * v12) / v14, v16 < 0.0))
  {
    *a3 = C3DOffsetEventNone;
    *(a3 + 16) = unk_21C2A3DB0;
    *(a3 + 32) = 0;
  }

  else
  {
    v17 = v15 / *(a1 + 80);
    v18 = v16 / *(a2 + 80);
    v19 = (1.0 - v15);
    v20 = v15;
    *(a3 + 8) = (v6 + *a1) * v20 + v19 * *a1;
    *(a3 + 16) = (v7 + v11) * v20 + v19 * v11;
    if (v17 <= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v17;
    }

    *(a3 + 4) = v21;
    *a3 = 1;
    *(a3 + 24) = a1;
    *(a3 + 32) = a2;
  }
}

void intersectionForSpokeAndEdge(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 == a2)
  {
    intersectionForSpokeAndEdge_cold_2();
  }

  if (a1 == a3)
  {
    intersectionForSpokeAndEdge_cold_1();
  }

  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *a2;
  v11 = *(a2 + 8);
  v13 = *a3;
  v12 = *(a3 + 8);
  v14 = *a3 - *a2;
  v15 = hypot(v14, v12 - v11);
  v16 = v14 / v15;
  v17 = (v12 - v11) / v15;
  v18 = v9 - v10;
  v19 = v8 - v11;
  v20 = *(a2 + 80);
  v21 = *(a1 + 80);
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  v24 = *(a2 + 64) * v20 - v22 * v21;
  v25 = *(a2 + 72) * v20 - v23 * v21;
  v26 = v16;
  v27 = v17;
  v28 = fabsf(v26);
  if (v28 <= 0.00001)
  {
    if (fabsf(v27) <= 0.00001)
    {
      goto LABEL_16;
    }

    v32 = (v26 * v25) / v27;
    if (vabds_f32(v24, v32) <= 0.00001)
    {
      goto LABEL_16;
    }

    v30 = (v18 - ((v19 * v26) / v27)) / (v24 - v32);
    v31 = (v19 - (v25 * v30)) / v27;
  }

  else
  {
    v29 = (v27 * v24) / v26;
    if (vabds_f32(v25, v29) <= 0.00001)
    {
      goto LABEL_16;
    }

    v30 = (v19 - ((v18 * v27) / v26)) / (v25 - v29);
    v31 = (v18 - (v24 * v30)) / v26;
  }

  if (v30 < 0.0 || v31 < 0.0)
  {
    goto LABEL_16;
  }

  v33 = *(a3 + 80);
  if (v28 > 0.00001)
  {
    v34 = -v26;
    v35 = *(a3 + 64) * v33 - v22 * v21;
    v36 = v9 - v13;
    goto LABEL_15;
  }

  if (fabsf(v27) <= 0.00001)
  {
LABEL_16:
    *a4 = C3DOffsetEventNone;
    *(a4 + 16) = unk_21C2A3DB0;
    *(a4 + 32) = 0;
    return;
  }

  v34 = -v27;
  v35 = *(a3 + 72) * v33 - v23 * v21;
  v36 = v8 - v12;
LABEL_15:
  v37 = v36;
  v38 = v35;
  if (((v37 - (v38 * v30)) / v34) < 0.0)
  {
    goto LABEL_16;
  }

  *a4 = 2;
  *(a4 + 4) = v30;
  *(a4 + 8) = v9 + v22 * v21 * v30;
  *(a4 + 16) = v8 + v23 * v21 * v30;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
}

double boundaryArea(unsigned int a1, uint64_t a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = (a2 + 8);
  LODWORD(result) = 0;
  v4 = 1;
  do
  {
    if (v4 == a1)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    result = *(v2 - 1) * *(a2 + 24 * v5 + 8) - *v2 * *(a2 + 24 * v5) + *&result;
    *&result = result;
    v2 += 3;
    ++v4;
  }

  while (v4 - a1 != 1);
  *&result = *&result * 0.5;
  return result;
}

void C3DOffsetInitSpokes(int *a1, unsigned int a2, uint64_t a3)
{
  if (a2 >= 3 && fabsf(COERCE_FLOAT(COERCE_UNSIGNED_INT64(boundaryArea(a2, a3)))) >= 0.0001)
  {
    v6 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
    *v6 = 0x400000000;
    v7 = malloc_type_malloc(0x160uLL, 0x1020040662E9E32uLL);
    v8 = 0;
    *(v6 + 1) = v7;
    v9 = (a3 + 16);
    do
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      v11 = v8 + 1;
      if (a2 - 1 == v8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 + 1;
      }

      v10 = (a3 + 24 * ((a2 - 1 + v8) % a2));
      C3DSpokeCreate(*v9, v6, v8, &v15, *(v9 - 2), *(v9 - 1), *v10, v10[1], *(a3 + 24 * v12), *(a3 + 24 * v12 + 8));
      v13[2] = v17;
      v13[3] = v18;
      v13[4] = v19;
      v14 = v20;
      v13[0] = v15;
      v13[1] = v16;
      C3DSpokeListInsert(v6, v13);
      v9 += 3;
      v8 = v11;
    }

    while (a2 != v11);

    C3DSpokeListListInsert(a1, v6);
  }
}

void C3DOffsetCreate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  *(a3 + 48) = 0;
  *(a3 + 52) = a4;
  v6 = malloc_type_malloc(0xE0uLL, 0x10A0040E17462F8uLL);
  *(a3 + 16) = 0x400000000;
  *(a3 + 24) = v6;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  v7 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
  *a3 = 0x400000000;
  *(a3 + 8) = v7;
  a1 = a1;
  if (a1)
  {
    v9 = (a2 + 8);
    do
    {
      C3DOffsetInitSpokes(a3, *(v9 - 1), *v9);
      v9 += 2;
      --a1;
    }

    while (a1);
  }
}

void C3DOffsetDestroy(uint64_t a1)
{
  C3DOffsetListDestroy(*(a1 + 16), *(a1 + 24));
  C3DSpokeListListDestroy(*a1, *(a1 + 8));

  C3DFaceDestroy((a1 + 32));
}

void C3DOffsetListDestroy(unsigned int a1, _OWORD *a2)
{
  v3 = a1;
  if (a1)
  {
    v4 = a2;
    do
    {
      v5 = v4[1];
      v6[0] = *v4;
      v6[1] = v5;
      v6[2] = v4[2];
      v7 = *(v4 + 6);
      C3DOffsetDestroy(v6);
      v4 = (v4 + 56);
      --v3;
    }

    while (v3);
  }

  free(a2);
}

__n128 C3DOffsetListInsert(int *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == a1[1])
  {
    v5 = 2 * v4;
    a1[1] = v5;
    v6 = malloc_type_realloc(*(a1 + 1), 56 * v5, 0x10A0040E17462F8uLL);
    *(a1 + 1) = v6;
    v4 = *a1;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  *a1 = v4 + 1;
  v7 = &v6[56 * v4];
  result = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  *(v7 + 6) = *(a2 + 48);
  *(v7 + 1) = v9;
  *(v7 + 2) = v10;
  *v7 = result;
  return result;
}

float nextEventsForOffsetAndSpoke(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a4 = 0;
  intersectionForSpokeAndSpoke(a2, *(*(a2 + 40) + 8) + 88 * ((*(a2 + 48) + 1) % **(a2 + 40)), &v25);
  v8 = v26;
  *a3 = v25;
  *(a3 + 16) = v8;
  *(a3 + 32) = v27;
  if (*a3)
  {
    v9 = *(a3 + 4);
  }

  else
  {
    v9 = 3.4028e38;
  }

  if (*(a2 + 84) == 1)
  {
    v10 = *a1;
    if (v10)
    {
      for (i = 0; i < v10; ++i)
      {
        v12 = *(*(a1 + 1) + 8 * i);
        v13 = *v12;
        if (v13)
        {
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = *(v12 + 1);
            v17 = v16 + v14;
            if (v15 == v13)
            {
              v18 = 0;
            }

            else
            {
              v18 = v15;
            }

            v19 = v16 + 88 * v18;
            if (v17 != a2 && v19 != a2)
            {
              v27 = 0;
              v25 = 0u;
              v26 = 0u;
              intersectionForSpokeAndEdge(a2, v17, v19, &v25);
              if (v25)
              {
                v21 = *(&v25 + 1);
                if (v9 + -0.00001 > *(&v25 + 1))
                {
                  *a3 = 0;
                  v22 = v26;
                  *a4 = v25;
                  *(a4 + 16) = v22;
                  *(a4 + 32) = v27;
                  v9 = v21;
                }
              }

              v13 = *v12;
            }

            v14 += 88;
          }

          while (v15++ < v13);
          v10 = *a1;
        }
      }
    }
  }

  return v9;
}

uint64_t boundaryAtBoundaryEnd(unsigned int *a1, int a2, float a3, float a4)
{
  LODWORD(v4) = *a1;
  if (*a1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = a4;
    while (1)
    {
      v12 = *(a1 + 1);
      v13 = v12 + v7;
      v14 = vmlaq_n_f64(*(v12 + v7), *(v12 + v7 + 64), (*(v12 + v7 + 80) * a3));
      v15 = *(v12 + v7 + 16);
      if (v15)
      {
        v15[3] = v14;
        v15[4].f64[0] = v11;
      }

      *(v13 + 24) = v14;
      *(v13 + 52) = a2;
      v23 = v14;
      if (!v9)
      {
        break;
      }

      v16 = v9 - 1;
      v17 = v14.f64[1];
      if (hypot(v10[3 * v16] - v14.f64[0], v10[3 * v16 + 1] - v14.f64[1]) >= 1.0)
      {
        if (v8 != v4 - 1 || hypot(*v10 - v23.f64[0], v10[1] - v17) >= 1.0)
        {
          v19 = v9 + 1;
          v10 = malloc_type_realloc(v10, 24 * (v9 + 1), 0x10200403ED2C137uLL);
          v20 = &v10[3 * v9];
          *v20 = v23.f64[0];
          v20[1] = v17;
          v18 = (v20 + 2);
          goto LABEL_12;
        }

        v16 = 0;
      }

LABEL_13:
      *(v12 + v7 + 56) = v16;
      ++v8;
      v4 = *a1;
      v7 += 88;
      if (v8 >= v4)
      {
        return v9;
      }
    }

    v10 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
    *v10 = v23;
    v18 = (v10 + 2);
    v19 = 1;
LABEL_12:
    *v18 = v15;
    v16 = v9;
    v9 = v19;
    goto LABEL_13;
  }

  return 0;
}

uint64_t newFaceAtEnd(unsigned int *a1, float a2)
{
  if (!*a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = boundaryAtBoundaryEnd(*(*(a1 + 1) + 8 * v4), v4, a2, *(a1 + 13) + a2);
    v9 = v7;
    v10 = v8;
    if (v7 < 3)
    {
      if (v7)
      {
        free(v8);
      }
    }

    else
    {
      v5 = malloc_type_realloc(v5, 16 * (v6 + 1), 0x1020040D5A9D86FuLL);
      v11 = &v5[16 * v6];
      *v11 = v9;
      v11[1] = v10;
      ++v6;
    }

    ++v4;
  }

  while (v4 < *a1);
  return v6;
}

uint64_t splitJoinFace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6, unsigned int *a7, unsigned int *a8)
{
  if (*a4 != 2)
  {
    splitJoinFace_cold_1();
  }

  v8 = *(a4 + 24);
  v9 = *(v8 + 52);
  if (v9 == -1)
  {
    splitJoinFace_cold_5();
  }

  v10 = *(a4 + 32);
  if (*(v10 + 52) == -1)
  {
    splitJoinFace_cold_4();
  }

  *a5 = v9;
  v11 = *(v10 + 52);
  *a6 = v11;
  v12 = *(v8 + 56);
  if (v12 == -1)
  {
    splitJoinFace_cold_3();
  }

  v13 = *(v10 + 56);
  if (v13 == -1)
  {
    splitJoinFace_cold_2();
  }

  v16 = *(v8 + 52);
  v17 = (a3 + 16 * v16);
  v18 = (a3 + 16 * v11);
  v19 = *v17;
  v89 = *v18;
  v20 = (v13 + 1) % *v18;
  *a8 = 0;
  *a7 = 0;
  v21 = (v12 + 1) % v19;
  *(a8 + 1) = 0;
  *(a7 + 1) = 0;
  if (v16 != v11)
  {
    v88 = a3 + 16 * v16;
    v46 = 0;
    v47 = 0;
    for (i = 0; i <= v13; ++i)
    {
      v49 = (*(v18 + 1) + 24 * i);
      v50 = v49[2];
      v51 = *v49;
      v52 = v49[1];
      v47 = malloc_type_realloc(v47, 24 * (v46 + 1), 0x10200403ED2C137uLL);
      *(a7 + 1) = v47;
      v53 = *a7;
      v54 = &v47[24 * *a7];
      *v54 = v51;
      *(v54 + 1) = v52;
      *(v54 + 2) = v50;
      v46 = v53 + 1;
      *a7 = v53 + 1;
    }

    v55 = (*(v88 + 8) + 24 * v12);
    v56 = *v55;
    v57 = v55[1];
    v58 = malloc_type_realloc(v47, 24 * (v53 + 2), 0x10200403ED2C137uLL);
    *(a7 + 1) = v58;
    v59 = *a7;
    v60 = &v58[24 * *a7];
    *v60 = v56;
    *(v60 + 1) = v57;
    *(v60 + 2) = 0;
    v61 = v59 + 1;
    *a7 = v61;
    while (v21 != v12)
    {
      v62 = (*(v88 + 8) + 24 * v21);
      v63 = v62[2];
      v64 = *v62;
      v65 = v62[1];
      v58 = malloc_type_realloc(v58, 24 * (v61 + 1), 0x10200403ED2C137uLL);
      *(a7 + 1) = v58;
      v66 = *a7;
      v67 = &v58[24 * *a7];
      *v67 = v64;
      *(v67 + 1) = v65;
      *(v67 + 2) = v63;
      v61 = v66 + 1;
      *a7 = v61;
      if (v21 + 1 == v19)
      {
        v21 = 0;
      }

      else
      {
        ++v21;
      }
    }

    v68 = (*(v88 + 8) + 24 * v12);
    v69 = *v68;
    v70 = v68[1];
    v71 = malloc_type_realloc(v58, 24 * (v61 + 1), 0x10200403ED2C137uLL);
    *(a7 + 1) = v71;
    v72 = *a7;
    v73 = &v71[24 * *a7];
    *v73 = v69;
    *(v73 + 1) = v70;
    *(v73 + 2) = 0;
    v74 = v72 + 1;
    *a7 = v74;
    if (v20)
    {
      do
      {
        v75 = (*(v18 + 1) + 24 * v20);
        v76 = v75[2];
        v77 = *v75;
        v78 = v75[1];
        v71 = malloc_type_realloc(v71, 24 * (v74 + 1), 0x10200403ED2C137uLL);
        *(a7 + 1) = v71;
        v79 = *a7;
        v80 = &v71[24 * *a7];
        *v80 = v77;
        *(v80 + 1) = v78;
        *(v80 + 2) = v76;
        v74 = v79 + 1;
        *a7 = v74;
        ++v20;
      }

      while (v20 < v89);
    }

    if (*v88)
    {
      free(*(v88 + 8));
    }

    *(v88 + 8) = 0;
    *v88 = 0;
    v22 = 2;
    v17 = v18;
    if (!*v18)
    {
      goto LABEL_29;
    }

LABEL_28:
    free(v17[1]);
LABEL_29:
    v17[1] = 0;
    *v17 = 0;
    return v22;
  }

  v22 = 3;
  if (v12 != v13 && v12 != v20)
  {
    v23 = (v17[1] + 24 * v12);
    v24 = *v23;
    v25 = v23[1];
    *a7 = 1;
    v26 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
    *(a7 + 1) = v26;
    *v26 = v24;
    v26[1] = v25;
    v26[2] = 0;
    v27 = *a7;
    do
    {
      v28 = (v17[1] + 24 * v20);
      v29 = v12;
      v30 = v28[2];
      v31 = *v28;
      v32 = v28[1];
      v26 = malloc_type_realloc(v26, 24 * (v27 + 1), 0x10200403ED2C137uLL);
      *(a7 + 1) = v26;
      v33 = *a7;
      v34 = &v26[3 * *a7];
      *v34 = v31;
      v34[1] = v32;
      v34[2] = v30;
      v12 = v29;
      v27 = v33 + 1;
      *a7 = v27;
      LODWORD(v20) = (v20 + 1) % v19;
    }

    while (v20 != v29);
    v35 = (v17[1] + 24 * v29);
    v36 = *v35;
    v37 = v35[1];
    *a8 = 1;
    v38 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
    *(a8 + 1) = v38;
    *v38 = v36;
    v38[1] = v37;
    v38[2] = 0;
    v39 = *a8;
    while (v21 != v13)
    {
      v40 = (v17[1] + 24 * v21);
      v41 = v40[2];
      v42 = *v40;
      v43 = v40[1];
      v38 = malloc_type_realloc(v38, 24 * (v39 + 1), 0x10200403ED2C137uLL);
      *(a8 + 1) = v38;
      v44 = *a8;
      v45 = &v38[3 * *a8];
      *v45 = v42;
      v45[1] = v43;
      v45[2] = v41;
      v39 = v44 + 1;
      *a8 = v39;
      if (v21 + 1 == v19)
      {
        v21 = 0;
      }

      else
      {
        ++v21;
      }
    }

    v82 = (v17[1] + 24 * v13);
    v83 = *v82;
    v84 = v82[1];
    v85 = malloc_type_realloc(v38, 24 * (v39 + 1), 0x10200403ED2C137uLL);
    *(a8 + 1) = v85;
    v86 = *a8;
    v87 = &v85[24 * *a8];
    *v87 = v83;
    *(v87 + 1) = v84;
    *(v87 + 2) = 0;
    *a8 = v86 + 1;
    v22 = 1;
    if (!*v17)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  return v22;
}

void C3DOffsetBuild(unsigned int *a1, float a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 3.4028e38;
    do
    {
      v11 = *(*(a1 + 1) + 8 * v5);
      if (*v11)
      {
        v45 = v5;
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = *(v11 + 1);
          v48 = 0;
          v46 = 0u;
          v47 = 0u;
          v59 = 0;
          v57 = 0u;
          v58 = 0u;
          EventsForOffsetAndSpoke = nextEventsForOffsetAndSpoke(a1, v14 + v12, &v46, &v57);
          if (v10 + -0.00001 > EventsForOffsetAndSpoke)
          {
            if (v6)
            {
              free(v6);
            }

            if (v7)
            {
              free(v7);
              v9 = 0;
              v8 = 0;
              v7 = 0;
            }

            else
            {
              v9 = 0;
              v8 = 0;
            }

            v6 = 0;
            v10 = EventsForOffsetAndSpoke;
          }

          if (vabds_f32(EventsForOffsetAndSpoke, v10) < 0.00001)
          {
            if (v46)
            {
              v6 = malloc_type_realloc(v6, 40 * (v8 + 1), 0x1020040BD065CB0uLL);
              v16 = &v6[40 * v8];
              v17 = v47;
              *v16 = v46;
              *(v16 + 1) = v17;
              *(v16 + 4) = v48;
              ++v8;
            }

            if (v57)
            {
              v7 = malloc_type_realloc(v7, 40 * (v9 + 1), 0x1020040BD065CB0uLL);
              v18 = v7 + 40 * v9;
              v19 = v58;
              *v18 = v57;
              *(v18 + 1) = v19;
              *(v18 + 4) = v59;
              ++v9;
            }
          }

          ++v13;
          v12 += 88;
        }

        while (v13 < *v11);
        v4 = *a1;
        v5 = v45;
      }

      ++v5;
    }

    while (v5 < v4);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v10 = 3.4028e38;
  }

  if (fabsf(v10) >= 0.00001)
  {
    *(a1 + 12) = v10;
    v56 = 0;
    v54[1] = 0;
    v55 = 0uLL;
    v54[0] = 0;
    v53 = 0uLL;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    if (v10 <= a2)
    {
      v24 = newFaceAtEnd(a1, v10);
      v23 = v24;
      v22 = v25;
      *&v55 = v24;
      *(&v55 + 1) = v25;
      if (!v6 || v7)
      {
        if (v24)
        {
          if (!v7)
          {
            v32 = scn_default_log(v24, v25);
            v24 = os_log_type_enabled(v32, OS_LOG_TYPE_FAULT);
            if (v24)
            {
              C3DOffsetBuild_cold_1(v32);
            }
          }

          if (*(*(v7 + 3) + 52) < v23 && *(*(v7 + 4) + 52) < v23)
          {
            v33 = *v7;
            v34 = v7[1];
            v48 = *(v7 + 4);
            v46 = v33;
            v47 = v34;
            v35 = splitJoinFace(v24, v23, v22, &v46, &v56 + 1, &v56, &v51, &v49);
            if (v35 == 2 || v35 == 1)
            {
              if (v51)
              {
                free(v52);
              }

              v52 = 0;
              LODWORD(v51) = 0;
              if (v49)
              {
                free(v50);
              }

              v50 = 0;
              LODWORD(v49) = 0;
              v31 = &v55;
              goto LABEL_36;
            }
          }

LABEL_28:
          v26 = *(a1 + 12);
          v27 = v26 + *(a1 + 13);
          v28 = a2 - v26;
          v53 = v55;
          if (v28 > 0.00001)
          {
            if (v53)
            {
              C3DOffsetCreate(v53, *(&v53 + 1), &v46, v27);
              C3DOffsetListInsert(a1 + 4, &v46);
            }

            if (a1[4])
            {
              v29 = 0;
              v30 = 0;
              do
              {
                C3DOffsetBuild((*(a1 + 3) + v29), v28);
                ++v30;
                v29 += 56;
              }

              while (v30 < a1[4]);
            }

            goto LABEL_51;
          }

          C3DFaceDestroy(&v53);
          v31 = v54;
LABEL_36:
          C3DFaceDestroy(v31);
          goto LABEL_51;
        }

        goto LABEL_50;
      }
    }

    else
    {
      *(a1 + 12) = a2;
      v20 = newFaceAtEnd(a1, a2);
      v22 = v21;
      *&v55 = v20;
      *(&v55 + 1) = v21;
      LODWORD(v23) = v20;
    }

    if (v23)
    {
      goto LABEL_28;
    }

LABEL_50:
    if (v22)
    {
      C3DOffsetBuild_cold_2();
    }
  }

LABEL_51:
  if (v6)
  {
    free(v6);
  }

  if (v7)
  {
    free(v7);
  }

  if (outputArcs == 1 && *a1)
  {
    v36 = 0;
    v37 = arcs;
    do
    {
      v38 = *(*(a1 + 1) + 8 * v36);
      v37 = malloc_type_realloc(v37, 32 * (*v38 + arcCount), 0x1000040E0EAB150uLL);
      arcs = v37;
      v39 = *v38;
      if (v39)
      {
        v40 = arcCount;
        v41 = *(v38 + 1);
        do
        {
          v42 = v40++;
          v43 = *(v41 + 24);
          v44 = &v37[32 * v42];
          *v44 = *v41;
          *(v44 + 1) = v43;
          v41 = (v41 + 88);
          --v39;
        }

        while (v39);
        arcCount = v40;
      }

      ++v36;
    }

    while (v36 < *a1);
  }
}

void __C3DShapeConnectedComponentSkeletonize(uint64_t *a1, float a2)
{
  v4 = *(a1 + 2);
  v5 = malloc_type_malloc(16 * v4, 0x1020040D5A9D86FuLL);
  if (v4)
  {
    v6 = 0;
    v7 = *a1;
    do
    {
      v8 = malloc_type_malloc(24 * *(v7 + 56 * v6 + 8), 0x10200403ED2C137uLL);
      v9 = &v5[16 * v6];
      *(v9 + 1) = v8;
      v7 = *a1;
      LODWORD(v10) = *(*a1 + 56 * v6 + 8);
      *v9 = v10;
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = v7 + 56 * v6;
        v14 = -1;
        do
        {
          v15 = (*v13 + 80 * (v10 + v14));
          v16 = *(v9 + 1) + v11;
          *(v16 + 16) = v15;
          *v16 = *v15;
          ++v12;
          v7 = *a1;
          v13 = *a1 + 56 * v6;
          v10 = *(v13 + 8);
          v11 += 24;
          --v14;
        }

        while (v12 < v10);
      }

      ++v6;
    }

    while (v6 != v4);
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  C3DOffsetCreate(v4, v5, v17, 0.0);
  C3DOffsetBuild(v17, a2);
  C3DOffsetDestroy(v17);
}

float C3DShapeConnectedComponentSkeletonize(_OWORD *a1, double a2)
{
  outputArcs = 0;
  v2 = a2;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  __C3DShapeConnectedComponentSkeletonize(v5, v2);
  return result;
}

uint64_t C3DCreateDataWithContentOfURL(uint64_t a1, uint64_t a2)
{
  if (!_decryptionCallbacks || ((v4 = _decryptionCallbacks(a1, _userInfo), v5 = off_27CDDA808, v4) ? (v6 = off_27CDDA808 == 0) : (v6 = 1), v6))
  {
    v7 = objc_alloc(MEMORY[0x277CBEA90]);

    return [v7 initWithContentsOfURL:a1 options:0 error:a2];
  }

  else
  {
    v9 = _userInfo;

    return v5(a1, v9);
  }
}

CGImageSourceRef C3DCreateImageSourceWithURL(const __CFURL *a1)
{
  if (_decryptionCallbacks)
  {
    if (_decryptionCallbacks(a1, _userInfo) && off_27CDDA808 != 0)
    {
      v4 = off_27CDDA808(a1, _userInfo);
      if (v4)
      {
        v5 = v4;
        v6 = CGImageSourceCreateWithData(v4, 0);
        CFRelease(v5);
        return v6;
      }

      return 0;
    }
  }

  if (!C3DFileMayExistAtURL(a1))
  {
    return 0;
  }

  return CGImageSourceCreateWithURL(a1, 0);
}

_OWORD *C3DSetFileDecryptionCallbacks(_OWORD *result, uint64_t a2)
{
  _userInfo = a2;
  if (result)
  {
    *&_decryptionCallbacks = *result;
  }

  else
  {
    _decryptionCallbacks = 0;
  }

  return result;
}