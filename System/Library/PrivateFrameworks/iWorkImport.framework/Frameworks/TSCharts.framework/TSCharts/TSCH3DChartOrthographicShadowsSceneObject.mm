@interface TSCH3DChartOrthographicShadowsSceneObject
+ (id)blurParametersArray;
- (id)createCamera;
- (id)createShadowsRenderer;
- (void)updateCoordsAndTexcoords:(const void *)texcoords zOffset:(float)offset cameraPosition:(const void *)position quad:(id)quad texcoords:(id)a7;
- (void)updateShadowPlane:(id)plane texcoords:(id)texcoords scene:(id)scene blurslack:(float)blurslack angle:(float)angle quality:(float)quality planePadding:(box<glm::detail::tvec3<float>> *)padding;
@end

@implementation TSCH3DChartOrthographicShadowsSceneObject

- (id)createCamera
{
  v6 = 0x10000000100;
  v4 = objc_msgSend_orthographicWithSize_(TSCH3DCamera, a2, COERCE_DOUBLE(0x10000000100), v2, v3, &v6);

  return v4;
}

- (void)updateCoordsAndTexcoords:(const void *)texcoords zOffset:(float)offset cameraPosition:(const void *)position quad:(id)quad texcoords:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  quadCopy = quad;
  v12 = a7;
  v13 = *(texcoords + 3);
  v14 = (((*texcoords + v13) * 0.5) - *position) * 0.5;
  v15 = *(texcoords + 2) + offset;
  v16 = v15 - *(texcoords + 1);
  v24[0] = *texcoords;
  v24[1] = 0.0;
  v24[2] = v16;
  *v25 = v13;
  v25[1] = 0;
  v17 = v15 - *(texcoords + 4);
  *&v25[2] = v16;
  v26[0] = v13 + v14;
  v26[1] = 0.0;
  v26[2] = v17;
  v27[0] = v24[0] + v14;
  v27[1] = 0.0;
  v27[2] = v17;
  v20 = xmmword_2764D5F20;
  v21 = xmmword_2764D6280;
  v22 = xmmword_2764D6290;
  v23 = xmmword_2764D62A0;
  v18 = sub_27618C648(quadCopy);
  v18[1] = *v18;
  sub_27618F4B4(v18, v24);
  sub_27618F4B4(v18, v25);
  sub_27618F4B4(v18, v27);
  sub_27618F4B4(v18, v25);
  sub_27618F4B4(v18, v26);
  sub_27618F4B4(v18, v27);
  v19 = sub_27618C374(v12);
  v19[1] = *v19;
  sub_276161E1C(v19, &v20);
  sub_276161E1C(v19, &v21);
  sub_276161E1C(v19, &v23);
  sub_276161E1C(v19, &v21);
  sub_276161E1C(v19, &v22);
  sub_276161E1C(v19, &v23);
}

- (void)updateShadowPlane:(id)plane texcoords:(id)texcoords scene:(id)scene blurslack:(float)blurslack angle:(float)angle quality:(float)quality planePadding:(box<glm::detail::tvec3<float>> *)padding
{
  planeCopy = plane;
  texcoordsCopy = texcoords;
  sceneCopy = scene;
  if ((atomic_load_explicit(byte_280A46858, memory_order_acquire) & 1) == 0)
  {
    sub_2764A6A84();
  }

  v22 = objc_msgSend_camera(sceneCopy, v17, v19, v20, v21);
  v27 = objc_msgSend_pipelineWithScene_(TSCH3DGet3DBoundsPipeline, v23, v24, v25, v26, sceneCopy);
  objc_msgSend_renderShadowScene_(self, v28, v29, v30, v31, v27);
  v35 = objc_msgSend_bounds(v27, v32, v33, v34);
  v36 = *(v35 + 16);
  *v152 = *v35;
  *&v152[16] = v36;
  v37 = *(v35 + 48);
  v153 = *(v35 + 32);
  v154 = v37;
  v155 = *(v35 + 64);
  v157 = 0;
  v158 = 0;
  v156 = 0;
  sub_27618FB60(&v156, *(v35 + 72), *(v35 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(v35 + 80) - *(v35 + 72)) >> 3));
  *&v38 = (*&v152[8] + *&v152[20]) * 0.5;
  v140 = *&v38;
  v40 = objc_msgSend_main(sceneCopy, v39, v38, COERCE_DOUBLE(vmul_f32(vadd_f32(*v152, *&v152[12]), 0x3F0000003F000000)), 0.0000305175853);
  objc_msgSend_shadowCameraDepthLimitAdjustmentFactorForScene_(v40, v41, v42, v43, v44, sceneCopy);
  LODWORD(v46) = v45;
  *&v47 = angle;
  *&v48 = quality;
  objc_msgSend_calculateShadowCameraPosition_center_shadowQuality_depthLimitAdjustment_(self, v47, v48, v46);

  v52 = qword_280A46860;
  v53 = *&dword_280A46868;
  _S9 = 0;
  if (v22)
  {
    objc_msgSend_position(v22, v49, v50, v51);
    v55 = *v136;
    v56 = *&v136[8];
  }

  else
  {
    v55 = 0;
    v56 = 0.0;
  }

  v57 = vsub_f32(v52, v55);
  v58 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v57, v57).i32[1]) + (v57.f32[0] * v57.f32[0])) + ((v53 - v56) * (v53 - v56)));
  _D3 = vmul_n_f32(v57, v58);
  v57.f32[0] = (v53 - v56) * v58;
  v148 = -v57.f32[0];
  __asm { FMLA            S4, S9, V3.S[1] }

  v65 = (-0.0 * _D3.f32[0]) + (v57.f32[0] * 0.0);
  v66 = _D3.f32[0] + vmuls_lane_f32(-0.0, _D3, 1);
  v67 = sqrtf(((v65 * v65) + (_S4 * _S4)) + (v66 * v66));
  _Q4.f32[0] = _S4 * (1.0 / v67);
  *v69.i32 = v65 * (1.0 / v67);
  *&v70 = v66 * (1.0 / v67);
  __asm { FMLA            S19, S4, V3.S[1] }

  v139.i32[0] = _Q4.i32[0];
  v139.f32[1] = (*v69.i32 * v57.f32[0]) - (_D3.f32[1] * *&v70);
  v140 = -_D3.f32[0];
  v141 = 0;
  v142 = v69.i32[0];
  v143 = (*&v70 * _D3.f32[0]) - (v57.f32[0] * _Q4.f32[0]);
  v144 = -_D3.f32[1];
  v145 = 0;
  v146 = *&v70;
  v147 = _S19;
  *&v69.i32[1] = v143;
  v149 = 0;
  v69.i64[1] = __PAIR64__(v55.u32[0], v55.u32[1]);
  v72.f32[0] = -v55.f32[1];
  v72.i64[1] = _D3.u32[1] | 0x8000000000000000;
  v72.f32[1] = -v55.f32[1];
  v73 = vdupq_laneq_s32(v69, 3);
  v73.i32[3] = 0;
  _Q4.f32[1] = v139.f32[1];
  v74 = vmulq_f32(v69, v72);
  _Q4.i64[1] = __PAIR64__(v55.u32[1], _D3.u32[0]);
  v75 = vmulq_f32(v73, _Q4);
  v76 = vsubq_f32(v74, v75);
  _Q4.i64[0] = __PAIR64__(_S19, v70);
  v77 = vaddq_f32(v74, v75);
  _Q4.i64[1] = v57.u32[0];
  v78 = vmulq_n_f32(_Q4, v56);
  v79 = vsubq_f32(v76, v78);
  v79.i32[2] = vaddq_f32(v77, v78).i32[2];
  v150 = vaddq_f32(v79, xmmword_2764D5F20);
  sub_276154C0C(&v139, v133, *v77.i64);
  *v136 = v133[0];
  *&v136[16] = v133[1];
  v137 = v134;
  v138 = v135;
  objc_msgSend_setTransform_(v22, v80, *&v134, *&v135, v81, v136);
  sub_27618F9F8(v152, &v139, v136);
  v82 = *&v136[8];
  v83 = *&v136[20];
  v84 = *v136;
  v85 = *&v136[12];
  v86 = *&padding->_min.var0.var0;
  var0 = padding->_min.var2.var0;
  v124 = *&padding->_max.var0.var0;
  v88 = padding->_max.var2.var0;
  v92 = objc_msgSend_lens(v22, v89, v124, v90, v91);
  v93 = v83 - v82;
  LODWORD(v94) = 0.5;
  v95 = (v82 + v83) * 0.5;
  *&v96 = (blurslack * 2.0) + 0.5;
  v126 = v96;
  v97 = *&v96 * v93;
  v98 = (v95 + (*&v96 * v93)) + v88;
  *&v99 = -v98;
  objc_msgSend_setNear_(v92, v100, v99, v96, v94);
  v101 = var0 + (v95 - v97);
  *&v102 = -v101;
  objc_msgSend_setFar_(v92, v103, v102, v104, v105);
  v106 = vmul_f32(vadd_f32(v84, v85), 0x3F0000003F000000);
  v107 = v126;
  v108 = vmul_n_f32(vsub_f32(v85, v84), *&v126);
  v127 = COERCE_DOUBLE(vadd_f32(v86, vsub_f32(v106, v108)));
  objc_msgSend_setLeft_(v92, v109, v127, v107, 0.0000305175853);
  v110 = v124;
  v125 = COERCE_DOUBLE(vadd_f32(vadd_f32(v106, v108), *&v124));
  objc_msgSend_setRight_(v92, v111, v125, v110, v112);
  HIDWORD(v113) = HIDWORD(v125);
  LODWORD(v113) = HIDWORD(v125);
  objc_msgSend_setTop_(v92, v114, v113, v115, v116);
  HIDWORD(v117) = HIDWORD(v127);
  LODWORD(v117) = HIDWORD(v127);
  objc_msgSend_setBottom_(v92, v118, v117, v119, v120);
  HIDWORD(v121) = HIDWORD(v125);
  v129 = v127;
  v130 = v101;
  v131 = v125;
  *&v121 = blurslack + blurslack;
  v132 = v98;
  objc_msgSend_updateCoordsAndTexcoords_zOffset_cameraPosition_quad_texcoords_(self, v122, v121, v127, v123, &v129, v151, planeCopy, texcoordsCopy);

  if (v156)
  {
    v157 = v156;
    operator delete(v156);
  }
}

- (id)createShadowsRenderer
{
  v5 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, a2, v2, v3, v4);
  v10 = objc_msgSend_highQualityShadowsSize(v5, v6, v7, v8, v9);

  v11 = [TSCH3DPyramidBlurShadowsRenderer alloc];
  LODWORD(v12) = 2.5;
  v16 = objc_msgSend_initWithSize_targetRadiusFactor_(v11, v13, v12, v14, v15, (v10 / 2));

  return v16;
}

+ (id)blurParametersArray
{
  if (qword_280A47C88 != -1)
  {
    sub_2764A8940();
  }

  v3 = qword_280A47C80;

  return v3;
}

@end