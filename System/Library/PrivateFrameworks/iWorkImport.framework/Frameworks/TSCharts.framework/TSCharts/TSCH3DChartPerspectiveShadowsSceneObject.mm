@interface TSCH3DChartPerspectiveShadowsSceneObject
+ (id)blurParametersArray;
- (id)createCamera;
- (id)createShadowsRenderer;
- (void)updateCoordsAndTexcoords:(const void *)texcoords camera:(id)camera quad:(id)quad texcoords:(id)a6;
- (void)updateShadowPlane:(id)plane texcoords:(id)texcoords scene:(id)scene blurslack:(float)blurslack angle:(float)angle quality:(float)quality planePadding:(box<glm::detail::tvec3<float>> *)padding;
@end

@implementation TSCH3DChartPerspectiveShadowsSceneObject

- (id)createCamera
{
  v6 = 0x10000000100;
  v4 = objc_msgSend_perspectiveWithSize_(TSCH3DCamera, a2, COERCE_DOUBLE(0x10000000100), v2, v3, &v6);

  return v4;
}

- (void)updateCoordsAndTexcoords:(const void *)texcoords camera:(id)camera quad:(id)quad texcoords:(id)a6
{
  v62 = *MEMORY[0x277D85DE8];
  cameraCopy = camera;
  quadCopy = quad;
  v11 = a6;
  v57[0] = *texcoords;
  v57[1] = 0;
  v13 = *(texcoords + 2);
  v12 = *(texcoords + 3);
  v58 = *(texcoords + 5);
  v59[0] = v12;
  v59[1] = 0;
  v59[2] = v58;
  v60[0] = v12;
  v60[1] = 0;
  v60[2] = v13;
  v61[0] = v57[0];
  v61[1] = 0;
  v61[2] = v13;
  v14 = sub_27618C648(quadCopy);
  v14[1] = *v14;
  sub_27618F4B4(v14, v57);
  sub_27618F4B4(v14, v59);
  sub_27618F4B4(v14, v61);
  sub_27618F4B4(v14, v59);
  sub_27618F4B4(v14, v60);
  sub_27618F4B4(v14, v61);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v15 = sub_27618C374(v11);
  v15[1] = *v15;
  if (cameraCopy)
  {
    objc_msgSend_modelViewNormalizedProjection(cameraCopy, v16, v17, v18);
    v19 = v38;
    v20 = v37;
    v21 = v42;
    v22 = v41;
    v23 = v46;
    v24 = v45;
    v25.i32[0] = v50;
    v26.i32[0] = v49;
    v27 = v40;
    v28 = v39;
    v29 = v44;
    v30 = v43;
    v31 = v48;
    v32 = v47;
    v33.i32[0] = v52;
    v34.i32[0] = v51;
  }

  else
  {
    v33 = 0;
    v31 = 0.0;
    v29 = 0.0;
    v27 = 0.0;
    v34 = 0;
    v32 = 0.0;
    v30 = 0.0;
    v28 = 0.0;
    v25 = 0;
    v23 = 0.0;
    v21 = 0.0;
    v19 = 0.0;
    v26 = 0;
    v24 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
  }

  v35 = v57;
  v63 = vld3q_f32(v35);
  v64.val[0] = vaddq_f32(vdupq_lane_s32(v26, 0), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v63.val[1], v22), v63.val[0], v20), v63.val[2], v24));
  v64.val[1] = vaddq_f32(vdupq_lane_s32(v25, 0), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v63.val[1], v21), v63.val[0], v19), v63.val[2], v23));
  v64.val[2] = vaddq_f32(vdupq_lane_s32(v34, 0), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v63.val[1], v30), v63.val[0], v28), v63.val[2], v32));
  v64.val[3] = vaddq_f32(vdupq_lane_s32(v33, 0), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v63.val[1], v29), v63.val[0], v27), v63.val[2], v31));
  v36 = &v53;
  vst4q_f32(v36, v64);
  sub_276161E1C(v15, &v53);
  sub_276161E1C(v15, &v54);
  sub_276161E1C(v15, &v56);
  sub_276161E1C(v15, &v54);
  sub_276161E1C(v15, &v55);
  sub_276161E1C(v15, &v56);
}

- (void)updateShadowPlane:(id)plane texcoords:(id)texcoords scene:(id)scene blurslack:(float)blurslack angle:(float)angle quality:(float)quality planePadding:(box<glm::detail::tvec3<float>> *)padding
{
  planeCopy = plane;
  texcoordsCopy = texcoords;
  sceneCopy = scene;
  v23 = objc_msgSend_camera(sceneCopy, v19, v20, v21, v22);
  v28 = objc_msgSend_pipelineWithScene_(TSCH3DGet3DBoundsPipeline, v24, v25, v26, v27, sceneCopy);
  objc_msgSend_renderShadowScene_(self, v29, v30, v31, v32, v28);
  v36 = objc_msgSend_bounds(v28, v33, v34, v35);
  v37 = *(v36 + 16);
  *v196 = *v36;
  *&v196[16] = v37;
  v38 = *(v36 + 48);
  v197 = *(v36 + 32);
  v198 = v38;
  v199 = *(v36 + 64);
  v201 = 0;
  v202 = 0;
  v200 = 0;
  sub_27618FB60(&v200, *(v36 + 72), *(v36 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(v36 + 80) - *(v36 + 72)) >> 3));
  LODWORD(v39) = *&v196[20];
  v189 = COERCE_DOUBLE(vmul_f32(vadd_f32(*v196, *&v196[12]), 0x3F0000003F000000));
  v190 = *&v196[20];
  v41 = objc_msgSend_main(sceneCopy, v40, v39, v189, 0.0000305175853);
  objc_msgSend_shadowCameraDepthLimitAdjustmentFactorForScene_(v41, v42, v43, v44, v45, sceneCopy);
  LODWORD(v47) = v46;
  *&v48 = angle;
  *&v49 = quality;
  objc_msgSend_calculateShadowCameraPosition_center_shadowQuality_depthLimitAdjustment_(self, v48, v49, v47);

  v193 = xmmword_2764D5F40;
  v53 = objc_msgSend_processorWithPlane_projPt_(TSCH3DPlaneProjectRenderProcessor, v50, 0.0078125, v51, v52, &v193, &v194);
  v58 = objc_msgSend_pipelineWithScene_renderProcessor_(TSCH3DGet3DBoundsPipeline, v54, v55, v56, v57, sceneCopy, v53);
  objc_msgSend_renderShadowScene_(self, v59, v60, v61, v62, v58);
  v66 = objc_msgSend_bounds(v53, v63, v64, v65);
  v67 = 0;
  v167 = *&v196[8];
  v165 = *&v196[4];
  v166 = *v196;
  v163 = *&v196[16];
  v68.i64[0] = v194;
  v69 = vzip1q_s32(v68, v68);
  v69.i32[2] = v194;
  v170 = v69;
  v164 = (*v196 + *&v196[12]) * 0.5;
  v173 = *(&v194 + 1);
  v70 = ((*&v196[4] + *&v196[16]) * 0.5) - *(&v194 + 1);
  v174 = v68;
  v175 = v195;
  *v69.i32 = ((*&v196[8] + *&v196[20]) * 0.5) - v195;
  v71 = 1.0 / sqrtf(((v70 * v70) + ((v164 - *&v194) * (v164 - *&v194))) + (*v69.i32 * *v69.i32));
  v72 = (v164 - *&v194) * v71;
  v73 = v70 * v71;
  v74 = *v69.i32 * v71;
  v75 = *(v66 + 8);
  v69.i32[0] = *(v66 + 20);
  v76 = *v69.i32 - v75;
  v77 = (v75 + *v69.i32) * 0.5;
  *v69.i32 = (blurslack * 2.0) + 0.5;
  v78 = *v69.i32 * v76;
  v79 = v77 - v78;
  v80 = v77 + v78;
  v81 = (v79 + v80) * 0.5;
  v82 = ((v80 - v79) * 0.5) * 1.1;
  v83 = v81 - v82;
  v169 = v81;
  v84 = padding->_max.var2.var0 + (v81 + v82);
  v85 = *(v66 + 12);
  v86 = vmul_f32(vadd_f32(*v66, v85), 0x3F0000003F000000);
  *v69.i8 = vmul_n_f32(vsub_f32(v85, *v66), *v69.i32);
  v87 = vsub_f32(v86, *v69.i8);
  v88 = vadd_f32(v86, *v69.i8);
  *v68.i8 = vmul_f32(vadd_f32(v87, v88), 0x3F0000003F000000);
  v89 = vsub_f32(v88, v87);
  v87.i32[0] = 0.5;
  v69.i32[0] = vmul_f32(v89, v87).u32[0];
  v69.i32[1] = v89.i32[1];
  v90 = vmul_f32(*v69.i8, 0x3F0000003F866666);
  v168 = *v68.i8;
  v91 = padding->_min.var2.var0 + v83;
  v171 = COERCE_DOUBLE(vadd_f32(*&padding->_min.var0.var0, vsub_f32(*v68.i8, v90)));
  v172 = COERCE_DOUBLE(vadd_f32(*&padding->_max.var0.var0, vadd_f32(*v68.i8, v90)));
  v92 = 0.1;
  do
  {
    v93 = *&v172;
    if ((v67 & 1) == 0)
    {
      v93 = *&v171;
    }

    if ((v67 & 2) != 0)
    {
      v94 = *(&v172 + 1);
    }

    else
    {
      v94 = *(&v171 + 1);
    }

    if (v67 >= 4)
    {
      v95 = v84;
    }

    else
    {
      v95 = v91;
    }

    v96 = v93 - *v174.i32;
    v97 = v94 - v173;
    v98 = v95 - v175;
    v99 = 1.0 / sqrtf(((v97 * v97) + (v96 * v96)) + (v98 * v98));
    v100 = acosf(((v73 * (v97 * v99)) + ((v96 * v99) * v72)) + ((v98 * v99) * v74));
    if (v100 > v92)
    {
      v92 = v100;
    }

    ++v67;
  }

  while (v67 != 8);
  v101 = vsub_f32(v168, *v174.i8);
  v102 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v101, v101).i32[1]) + (v101.f32[0] * v101.f32[0])) + ((v169 - v175) * (v169 - v175)));
  _D1 = vmul_n_f32(v101, v102);
  v101.f32[0] = (v169 - v175) * v102;
  _S5 = 0;
  v186 = -v101.f32[0];
  __asm { FMLA            S2, S5, V1.S[1] }

  v110 = (-0.0 * _D1.f32[0]) + (v101.f32[0] * 0.0);
  v111 = _D1.f32[0] + vmuls_lane_f32(-0.0, _D1, 1);
  v112 = sqrtf(((v110 * v110) + (_S2 * _S2)) + (v111 * v111));
  *&_S2 = _S2 * (1.0 / v112);
  v114 = v110 * (1.0 / v112);
  *&v115 = v111 * (1.0 / v112);
  __asm { FMLA            S17, S2, V1.S[1] }

  v176 = _S2;
  v177 = (v114 * v101.f32[0]) - (_D1.f32[1] * *&v115);
  v178 = -_D1.f32[0];
  v179 = 0;
  v180 = v114;
  v181 = (*&v115 * _D1.f32[0]) - (v101.f32[0] * *&_S2);
  v182 = -_D1.f32[1];
  v183 = 0;
  v117 = vextq_s8(v174, vrev64q_s32(v174), 8uLL);
  v117.f32[0] = v114;
  v117.f32[1] = v181;
  v184 = v115;
  v185 = _S17;
  v118.f32[0] = -v173;
  v118.i64[1] = _D1.u32[1] | 0x8000000000000000;
  v187 = 0;
  v118.f32[1] = -v173;
  v119 = vmulq_f32(v117, v118);
  v120.i64[0] = __PAIR64__(LODWORD(v177), _S2);
  v120.i64[1] = _D1.u32[0];
  v121 = vmulq_f32(v170, v120);
  v122 = vsubq_f32(v119, v121);
  v117.i64[0] = __PAIR64__(_S17, v115);
  v123 = vaddq_f32(v119, v121);
  v117.i64[1] = v101.u32[0];
  v124 = vmulq_n_f32(v117, v175);
  v125 = vsubq_f32(v122, v124);
  v125.i32[2] = vaddq_f32(v123, v124).i32[2];
  v188 = vaddq_f32(v125, xmmword_2764D5F20);
  *&v126 = sub_276154C0C(&v176, &v189, *v123.i64).u64[0];
  objc_msgSend_setTransform_(v23, v127, v126, v128, v129, &v189);
  v134 = v84;
  v135 = v91;
  if (v23)
  {
    objc_msgSend_direction(v23, v131, v132, v133);
    LODWORD(v136) = HIDWORD(v189);
    LODWORD(v137) = LODWORD(v189);
    *&v138 = v190;
  }

  else
  {
    v138 = 0.0;
    v136 = 0.0;
    v137 = 0.0;
  }

  v139 = 1.0 / sqrtf(((*&v136 * *&v136) + (*&v137 * *&v137)) + (*&v138 * *&v138));
  *&v137 = *&v137 * v139;
  v140 = *&v136 * v139;
  v141 = *&v138 * v139;
  v142 = ((*(&v194 + 1) * v140) + (*&v137 * *&v194)) + (v141 * v195);
  v143 = (((*&v163 * v140) + (v166 * *&v137)) + (*(&v163 + 1) * v141)) - v142;
  if (((((*&v163 * v140) + (v164 * *&v137)) + (*(&v163 + 1) * v141)) - v142) < v143)
  {
    v143 = (((*&v163 * v140) + (v164 * *&v137)) + (*(&v163 + 1) * v141)) - v142;
  }

  if (((((*&v163 * v140) + (*(&v167 + 1) * *&v137)) + (*(&v163 + 1) * v141)) - v142) >= v143)
  {
    v144 = v143;
  }

  else
  {
    v144 = (((*&v163 * v140) + (*(&v167 + 1) * *&v137)) + (*(&v163 + 1) * v141)) - v142;
  }

  v145 = v165 * v140;
  v146 = ((v145 + (v166 * *&v137)) + (*&v167 * v141)) - v142;
  v147 = ((v145 + (v164 * *&v137)) + (*&v167 * v141)) - v142;
  *&v138 = ((v145 + (*(&v167 + 1) * *&v137)) + (*&v167 * v141)) - v142;
  if (v146 >= v147)
  {
    *&v136 = v146;
  }

  else
  {
    *&v136 = v147;
  }

  if (*&v136 >= *&v138)
  {
    v148 = *&v136;
  }

  else
  {
    v148 = *&v138;
  }

  v149 = objc_msgSend_lens(v23, v130, v138, v136, v137);
  v150 = fminf(v92 + v92, 1.56) * 180.0 / 3.14159265;
  *&v150 = v150;
  objc_msgSend_setFov_(v149, v151, v150, 3.14159265, v152);
  LODWORD(v153) = 1065185444;
  *&v154 = fminf(v144, 5.0) * 0.99;
  objc_msgSend_setNear_(v149, v155, v154, v153, v156);
  *&v157 = v148 * 1.01;
  objc_msgSend_setFar_(v149, v158, v157, v159, v160);
  v189 = v171;
  v190 = v135;
  v191 = v172;
  v192 = v134;
  objc_msgSend_updateCoordsAndTexcoords_camera_quad_texcoords_(self, v161, v172, v171, v162, &v189, v23, planeCopy, texcoordsCopy);

  if (v200)
  {
    v201 = v200;
    operator delete(v200);
  }
}

- (id)createShadowsRenderer
{
  v5 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, a2, v2, v3, v4);
  v10 = objc_msgSend_highQualityShadowsSize(v5, v6, v7, v8, v9);

  v11 = [TSCH3DPyramidBlurShadowsRenderer alloc];
  LODWORD(v12) = 1074580685;
  v16 = objc_msgSend_initWithSize_targetRadiusFactor_(v11, v13, v12, v14, v15, v10);

  return v16;
}

+ (id)blurParametersArray
{
  if (qword_280A47C98 != -1)
  {
    sub_2764A8954();
  }

  v3 = qword_280A47C90;

  return v3;
}

@end