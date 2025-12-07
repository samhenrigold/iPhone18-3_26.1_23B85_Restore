@interface TSCH3DCamera
+ (TSCH3DCamera)cameraWithLens:(id)lens size:(void *)size;
+ (id)orthographic;
+ (id)orthographicPerPixelWithBounds:(void *)bounds;
+ (id)orthographicPerPixelWithSize:(void *)size;
+ (id)orthographicWithSize:(void *)size;
+ (id)perspective;
+ (id)perspectiveWithSize:(void *)size;
- (TSCH3DCamera)initWithLens:(id)lens size:(void *)size;
- (box<glm::detail::tvec2<int>>)viewport;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)frustumSliceAtDistance:(float)distance;
- (id)matrixDescription;
- (id)narrowByNormalizedBounds:(void *)bounds;
- (id)narrowedByNormalizedBounds:(void *)bounds;
- (id)narrowedByViewport:(void *)viewport;
- (id)narrowedByViewport:(void *)viewport samples:(int64_t)samples;
- (id)pixelAlignedForScaledViewport:(void *)viewport viewportScale:(float)scale samples:(float)samples correspondingNoramlizedBounds:(void *)bounds;
- (id)shiftByPixels:(void *)pixels;
- (id)shiftedByPixels:(void *)pixels;
- (tmat4x4<float>)modelViewNormalizedProjection;
- (tmat4x4<float>)modelViewProjection;
- (tmat4x4<float>)modelViewViewportProjectionWithViewportScale:(SEL)scale;
- (tmat4x4<float>)normalizedProjection;
- (tmat4x4<float>)projection;
- (tmat4x4<float>)transform;
- (tmat4x4<float>)viewportProjection;
- (tvec3<float>)backProjectCameraSpacePoint:(void *)point;
- (tvec3<float>)direction;
- (tvec3<float>)fastProjectNormalizedPoint:(void *)point planeDistance:(float)distance;
- (tvec3<float>)position;
- (tvec3<float>)projectNormalizedPoint:(void *)point planeDistance:(float)distance;
- (void)calculateCullingPlanes:(void *)planes;
- (void)setContainingViewportSize:(void *)size;
- (void)setDirection:(tvec3<float>)direction;
- (void)setPosition:(tvec3<float>)position;
@end

@implementation TSCH3DCamera

+ (id)perspective
{
  v7 = 0;
  v5 = objc_msgSend_perspectiveWithSize_(self, a2, v2, v3, v4, &v7);

  return v5;
}

+ (id)perspectiveWithSize:(void *)size
{
  v8 = objc_msgSend_lens(TSCH3DPerspectiveLens, a2, v3, v4, v5);
  v13 = objc_msgSend_cameraWithLens_size_(self, v9, v10, v11, v12, v8, size);

  return v13;
}

+ (id)orthographic
{
  v7 = 0;
  v5 = objc_msgSend_orthographicWithSize_(self, a2, v2, v3, v4, &v7);

  return v5;
}

+ (id)orthographicWithSize:(void *)size
{
  v8 = objc_msgSend_lens(TSCH3DOrthographicLens, a2, v3, v4, v5);
  v13 = objc_msgSend_cameraWithLens_size_(self, v9, v10, v11, v12, v8, size);

  return v13;
}

+ (id)orthographicPerPixelWithSize:(void *)size
{
  v8 = objc_msgSend_lens(TSCH3DOrthographicLens, a2, v3, v4, v5);
  objc_msgSend_setPerPixelSize_(v8, v9, v10, v11, v12, size);
  v17 = objc_msgSend_cameraWithLens_size_(self, v13, v14, v15, v16, v8, size);

  return v17;
}

+ (id)orthographicPerPixelWithBounds:(void *)bounds
{
  v5 = *bounds;
  v8 = COERCE_DOUBLE(vsub_s32(*(bounds + 8), *bounds));
  v6 = objc_msgSend_orthographicPerPixelWithSize_(self, a2, v8, *&v5, v3, &v8);
  v6[6] = *bounds;
  v6[7] = *(bounds + 1);
  v6[8] = *(bounds + 2);
  v6[9] = *(bounds + 3);

  return v6;
}

+ (TSCH3DCamera)cameraWithLens:(id)lens size:(void *)size
{
  lensCopy = lens;
  v7 = [self alloc];
  v12 = objc_msgSend_initWithLens_size_(v7, v8, v9, v10, v11, lensCopy, size);

  return v12;
}

- (TSCH3DCamera)initWithLens:(id)lens size:(void *)size
{
  lensCopy = lens;
  v18.receiver = self;
  v18.super_class = TSCH3DCamera;
  v8 = [(TSCH3DCamera *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lens, lens);
    min = v9->_viewport._min;
    v11 = vcgt_s32(min, v9->_viewport._max);
    if ((v11.i32[0] | v11.i32[1]))
    {
      min = 0;
      v9->_viewport._min = 0;
    }

    v9->_viewport._max = vadd_s32(*size, min);
    __asm { FMOV            V0.2S, #1.0 }

    *&v9->_viewportScale = _D0;
    v9->_containingViewportOffset = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, zone);
  v16 = objc_msgSend_init(v10, v11, v12, v13, v14);
  if (v16)
  {
    v20 = objc_msgSend_copyWithZone_(self->_lens, v15, v17, v18, v19, zone);
    v21 = *(v16 + 8);
    *(v16 + 8) = v20;

    *(v16 + 16) = self->_viewportScale;
    *(v16 + 20) = self->_viewportSamples;
    *(v16 + 24) = self->_viewport._min.var0.var0;
    *(v16 + 28) = self->_viewport._min.var1.var0;
    *(v16 + 32) = self->_viewport._max.var0.var0;
    *(v16 + 36) = self->_viewport._max.var1.var0;
    *(v16 + 40) = self->_containingViewportOffset.var0.var0;
    *(v16 + 44) = self->_containingViewportOffset.var1.var0;
    v22 = self->_transform.value[1];
    v27[0] = self->_transform.value[0];
    v27[1] = v22;
    v23 = self->_transform.value[3];
    v28 = self->_transform.value[2];
    v29 = v23;
    objc_msgSend_setTransform_(v16, v24, *&v28.var0.var0, *&v23.var0.var0, v25, v27);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v24.receiver = self;
  v24.super_class = TSCH3DCamera;
  v4 = [(TSCH3DCamera *)&v24 description];
  lens = self->_lens;
  v6 = MEMORY[0x277CCACA8];
  sub_2761B7678(&self->_viewport._min, __p);
  if (v26 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v6, v7, v8, v9, v10, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v6, v7, v8, v9, v10, __p[0]);
  }
  v11 = ;
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  viewportScale = self->_viewportScale;
  viewportSamples = self->_viewportSamples;
  v14 = MEMORY[0x277CCACA8];
  sub_276152FD4(__p, "vec2(%f, %f)", self->_containingViewportOffset.var0.var0, self->_containingViewportOffset.var1.var0);
  if (v26 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v14, v15, v16, v17, v18, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v14, v15, v16, v17, v18, __p[0]);
  }
  v20 = ;
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = objc_msgSend_stringWithFormat_(v3, v19, viewportSamples, viewportScale, v21, @"%@(%@, %@, scale %f, samples %f, cv offset %@)", v4, lens, v11, viewportScale, viewportSamples, v20);

  return v22;
}

- (id)matrixDescription
{
  objc_msgSend_space(self, v2, v3, v4, a2);
  v5 = sub_2761B4E18(&v7);

  return v5;
}

- (void)setContainingViewportSize:(void *)size
{
  min = self->_viewport._min;
  v4 = vcgt_s32(min, self->_viewport._max);
  if ((v4.i32[0] | v4.i32[1]))
  {
    min = 0;
    self->_viewport._min = 0;
  }

  self->_viewport._max = vadd_s32(*size, min);
}

- (tvec3<float>)direction
{
  v3 = -self->_transform.value[2].var2.var0;
  *v2 = vneg_f32(*&self->_transform.value[2].var0.var0);
  v2[1].f32[0] = v3;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (void)setDirection:(tvec3<float>)direction
{
  v3 = -*(*&direction.var0.var0 + 8);
  *&self->_transform.value[2].var0.var0 = vneg_f32(**&direction.var0.var0);
  self->_transform.value[2].var2.var0 = v3;
  self->_transform.value[2].var3.var0 = 0.0;
}

- (tvec3<float>)position
{
  *v2 = *&self->_transform.value[3].var0.var0;
  *(v2 + 8) = self->_transform.value[3].var2.var0;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (void)setPosition:(tvec3<float>)position
{
  v3 = *(*&position.var0.var0 + 8);
  *&self->_transform.value[3].var0.var0 = **&position.var0.var0;
  self->_transform.value[3].var2.var0 = v3;
  self->_transform.value[3].var3.var0 = 0.0;
}

- (id)frustumSliceAtDistance:(float)distance
{
  v6 = objc_msgSend_frustumRectAtDistance_(self->_lens, a2, *&distance, v3, v4);
  objc_msgSend_right(v6, v7, v8, v9, v10);
  v12 = *&v11;
  objc_msgSend_left(v6, v13, v11, v14, v15);
  v17 = *&v16;
  v18 = *&self->_transform.value[0].var0.var0;
  var0 = self->_transform.value[0].var2.var0;
  objc_msgSend_top(v6, v20, v16, v21, v22);
  v24 = *&v23;
  objc_msgSend_bottom(v6, v25, v23, v26, v27);
  v29 = *&v28;
  v30 = *&self->_transform.value[1].var0.var0;
  v31 = self->_transform.value[1].var2.var0;
  objc_msgSend_left(v6, v32, v28, v33, v34);
  v67 = v35;
  v36 = *&self->_transform.value[0].var0.var0;
  v66 = *&v36;
  *&v36 = self->_transform.value[0].var2.var0;
  v65 = *&v36;
  objc_msgSend_bottom(v6, v37, v36, v38, v39);
  v64 = v40;
  v41 = *&self->_transform.value[1].var0.var0;
  v63 = *&v41;
  *&v41 = self->_transform.value[1].var2.var0;
  v62 = *&v41;
  objc_msgSend_direction(self, v41, v42, v43);
  v60 = v30;
  v61 = v31;
  v44 = v12;
  v45 = *&v73;
  *&v46 = v74;
  v59 = v74;
  objc_msgSend_position(self, v46, v47, v48);
  v58 = *&v73;
  v30.f32[0] = v74;
  objc_msgSend_direction(self, v73, v49, v50);
  *&v51 = v24 - v29;
  v52 = v74;
  v53 = v73;
  v73 = COERCE_DOUBLE(vadd_f32(vadd_f32(vmul_n_f32(v66, v67), vmul_n_f32(v63, v64)), vadd_f32(vmul_n_f32(v45, distance), v58)));
  v74 = ((v67 * v65) + (v64 * v62)) + ((v59 * distance) + v30.f32[0]);
  v75 = v53;
  v76 = v52;
  v71 = COERCE_DOUBLE(vmul_n_f32(v18, v44 - v17));
  v72 = (v44 - v17) * var0;
  *&v54 = (v24 - v29) * v61;
  v69 = vmul_n_f32(v60, v24 - v29);
  v70 = *&v54;
  v56 = objc_msgSend_sliceWithOrigin_width_height_(TSCH3DFrustumSlice, v55, v54, v71, v51, &v73, &v71, &v69);

  return v56;
}

- (tvec3<float>)projectNormalizedPoint:(void *)point planeDistance:(float)distance
{
  v10 = v4;
  objc_msgSend_near(self->_lens, a2, *&distance, v5, v6);
  v15 = objc_msgSend_frustumSliceAtDistance_(self, v11, v12, v13, v14);
  v18 = v15;
  v19 = *point;
  if (v15)
  {
    objc_msgSend_atNormalizedPosition_(v15, v19, v16, v17);
  }

  else
  {
    v36 = 0.0;
    v35 = 0;
  }

  objc_msgSend_position(self, v19, v16, v17);
  objc_msgSend_direction(self, v20, v21, v22);
  objc_msgSend_position(self, v23, v24, v25);
  v26 = vsub_f32(v35, v33);
  v27 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v26, v26).i32[1]) + (v26.f32[0] * v26.f32[0])) + ((v36 - v34) * (v36 - v34)));
  v28 = (v36 - v34) * v27;
  v29 = vmul_n_f32(v26, v27);
  v30 = distance / ((vmuls_lane_f32(v33.f32[1], v29, 1) + (v29.f32[0] * v33.f32[0])) + (v28 * v34));
  *v10 = vadd_f32(vmul_n_f32(v29, v30), v33);
  v10[1].f32[0] = (v28 * v30) + v34;

  result.var0 = v31;
  result.var1 = *(&v31 + 4);
  result.var2 = v32;
  return result;
}

- (tvec3<float>)fastProjectNormalizedPoint:(void *)point planeDistance:(float)distance
{
  v8 = v4;
  v9 = objc_msgSend_frustumSliceAtDistance_(self, a2, *&distance, v5, v6);
  v12 = v9;
  if (v9)
  {
    objc_msgSend_atNormalizedPosition_(v9, *point, v10, v11);
  }

  else
  {
    *(v8 + 8) = 0;
    *v8 = 0;
  }

  result.var0 = v13;
  result.var1 = *(&v13 + 4);
  result.var2 = v14;
  return result;
}

- (tvec3<float>)backProjectCameraSpacePoint:(void *)point
{
  v9 = v3;
  lens = self->_lens;
  if (!lens)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCH3DCamera backProjectCameraSpacePoint:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DCamera.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 476, 0, "invalid nil value for '%{public}s'", "_lens");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    lens = self->_lens;
  }

  objc_msgSend_near(lens, a2, v4, v5, v6);
  v27 = *&v26;
  v31 = objc_msgSend_frustumRectAtDistance_(self->_lens, v28, v26, v29, v30);
  v35 = v31;
  if (v31)
  {
    objc_msgSend_toBox(v31, v32, v33, v34);
  }

  else
  {
    v88[0] = 0;
    v88[1] = 0;
  }

  __p[0] = *point;
  *&v39 = sub_2761B63E0(__p, v88, &v87);
  LODWORD(v39) = *(point + 2);
  if (*&v39 >= -v27)
  {
    v57 = v27;
  }

  else
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], *&v36, v39, v37, v38, "[TSCH3DCamera backProjectCameraSpacePoint:]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DCamera.mm");
    v47 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec3(%f, %f, %f)", *point, *(point + 1), *(point + 2));
    if (v90 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v47, v48, v49, v50, v51, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v47, v48, v49, v50, v51, __p[0]);
    }
    v53 = ;
    if (v90 < 0)
    {
      operator delete(__p[0]);
    }

    v57 = v27;
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v52, v54, v55, v56, v41, v46, 481, 0, "point must be behind near plane to back project %@ %f", v53, v27);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
    LODWORD(v39) = *(point + 2);
  }

  v62 = 2.0;
  v63 = *&v39 + v57 * 2.0;
  v64 = v63;
  if (v27 >= v64)
  {
    v65 = MEMORY[0x277D81150];
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], *&v36, v63, 2.0, v38, "[TSCH3DCamera backProjectCameraSpacePoint:]");
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DCamera.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v72, v64, v73, v74, v66, v71, 484, 0, "back projection distance must be in front of near plane %f %f", v64, *&v57);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77, v78);
  }

  *&v63 = v64;
  v79 = objc_msgSend_frustumRectAtDistance_(self->_lens, *&v36, v63, v62, v38);
  v83 = v79;
  if (v79)
  {
    objc_msgSend_toBox(v79, v80, v81, v82);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
  }

  sub_2761B65FC(&v87, __p, &v86);
  *v9 = v86;
  v9[1].f32[0] = -v27;

  result.var0 = v84;
  result.var1 = *(&v84 + 4);
  result.var2 = v85;
  return result;
}

- (tmat4x4<float>)projection
{
  result = self->_lens;
  if (result)
  {
    return objc_msgSend_matrix(result, v3, v4, v5, a3);
  }

  retstr->value[2] = 0u;
  retstr->value[3] = 0u;
  retstr->value[0] = 0u;
  retstr->value[1] = 0u;
  return result;
}

- (tmat4x4<float>)normalizedProjection
{
  v10 = 0;
  v9 = 0;
  v12 = 0;
  v13 = 0;
  v15 = xmmword_2764D5F60;
  v8 = 1056964608;
  v11 = 1056964608;
  v14 = 1056964608;
  objc_msgSend_projection(self, 0.0000305175853, v3, v4, a3);
  sub_2761558A0(&v8, &v7, retstr);
  return result;
}

- (tmat4x4<float>)viewportProjection
{
  v5 = vcvt_f32_s32(vsub_s32(self->_viewport._max, self->_viewport._min));
  v9 = v5.i32[0];
  *v3.i8 = vbsl_s8(0x8000000080000000, 0, v5);
  v6 = vzip1q_s32(v3, v3);
  v6.i32[2] = v3.i32[0];
  v10 = v6;
  v11 = v5.i32[1];
  v12 = COERCE_DOUBLE(vdup_lane_s32(*v3.i8, 1));
  v13 = 0;
  v14 = 1065353216;
  v16 = 0;
  v15 = 0;
  v17 = 1065353216;
  objc_msgSend_normalizedProjection(self, v12, 0.0, *v3.i64, a3);
  sub_2761558A0(&v9, &v8, retstr);
  return result;
}

- (tmat4x4<float>)modelViewProjection
{
  objc_msgSend_projection(self, v3, v4, v5, a3);
  objc_msgSend_space(self, v8, v9, v10);
  sub_2761558A0(v13, &v12, retstr);
  return result;
}

- (tmat4x4<float>)modelViewNormalizedProjection
{
  objc_msgSend_normalizedProjection(self, v3, v4, v5, a3);
  objc_msgSend_space(self, v8, v9, v10);
  sub_2761558A0(v13, &v12, retstr);
  return result;
}

- (tmat4x4<float>)modelViewViewportProjectionWithViewportScale:(SEL)scale
{
  v6 = vmul_n_f32(vcvt_f32_s32(vsub_s32(self->_viewport._max, self->_viewport._min)), a4);
  v10 = v6.i32[0];
  *v4.i8 = vmul_f32(v6, 0);
  v7 = vzip1q_s32(v4, v4);
  v7.i32[2] = v4.i32[0];
  v11 = v7;
  v12 = COERCE_DOUBLE(vzip2_s32(v6, *v4.i8));
  v13 = v4.i32[1];
  v14 = 0;
  v15 = 1065353216;
  v17 = 0;
  v16 = 0;
  v18 = 1065353216;
  objc_msgSend_modelViewNormalizedProjection(self, v12, 0.0, *v4.i64, scale);
  sub_2761558A0(&v10, &v9, retstr);
  return result;
}

- (id)narrowByNormalizedBounds:(void *)bounds
{
  v8 = objc_msgSend_lens(self, a2, v3, v4, v5);
  v13 = objc_msgSend_narrowedByNormalizedBounds_(v8, v9, v10, v11, v12, bounds);
  objc_msgSend_setLens_(self, v14, v15, v16, v17, v13);

  return self;
}

- (id)narrowedByNormalizedBounds:(void *)bounds
{
  v7 = objc_msgSend_copy(self, a2, v3, v4, v5);
  v12 = objc_msgSend_narrowByNormalizedBounds_(v7, v8, v9, v10, v11, bounds);

  return v12;
}

- (id)narrowedByViewport:(void *)viewport
{
  v4 = vcvtq_f32_s32(*viewport);
  v11 = vcvtq_f32_s32(self->_viewport);
  v12 = v4;
  *&v5 = sub_276152C5C(&v12, &v11, &v13).u64[0];
  v9 = objc_msgSend_narrowedByNormalizedBounds_(self, v6, v5, v7, v8, &v13);

  return v9;
}

- (id)shiftByPixels:(void *)pixels
{
  v8 = objc_msgSend_lens(self, a2, v3, v4, v5);
  v9 = *pixels;
  v18 = COERCE_DOUBLE(vdiv_f32(*pixels, vcvt_f32_s32(vsub_s32(self->_viewport._max, self->_viewport._min))));
  v12 = objc_msgSend_shiftedByPercentage_(v8, v10, v18, *&v9, v11, &v18);
  objc_msgSend_setLens_(self, v13, v14, v15, v16, v12);

  return self;
}

- (id)shiftedByPixels:(void *)pixels
{
  v7 = objc_msgSend_copy(self, a2, v3, v4, v5);
  v12 = objc_msgSend_shiftByPixels_(v7, v8, v9, v10, v11, pixels);

  return v12;
}

- (id)pixelAlignedForScaledViewport:(void *)viewport viewportScale:(float)scale samples:(float)samples correspondingNoramlizedBounds:(void *)bounds
{
  v8 = a2;
  *v10.f32 = vrndm_f32(*viewport);
  *&v10.u32[2] = vrndp_f32(*&vextq_s8(*viewport, *viewport, 8uLL));
  v11 = vmulq_n_f32(*viewport, samples);
  v116 = v11;
  v117 = v10;
  v108 = *&scale;
  v109 = *&samples;
  v12 = vmulq_n_f32(v10, samples);
  v115 = v12;
  v11.i32[0] = LODWORD(self->_viewportSamples);
  v12.i32[0] = 1.0;
  if (v11.f32[0] != 1.0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *&scale, *v12.i64, *v11.i64, "[TSCH3DCamera pixelAlignedForScaledViewport:viewportScale:samples:correspondingNoramlizedBounds:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DCamera.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, self->_viewportSamples, v21, v22, v14, v19, 549, 0, "only supports 1x camera right now, samples %f", self->_viewportSamples);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    scale = *&v108;
  }

  v118 = vmulq_n_f32(vcvtq_f32_s32(self->_viewport), scale);
  sub_2761526F4(bounds, &v118, &v114);
  v29 = *v114.i64;
  v30 = COERCE_DOUBLE(vsub_f32(vsub_f32(*viewport, *v117.f32), *v114.f32));
  v110 = v30;
  if (byte_280A46430 == 1)
  {
    v31 = objc_opt_class();
    v32 = v8;
    v106 = NSStringFromSelector(v8);
    v33 = MEMORY[0x277CCACA8];
    sub_276152FD4(&v118, "vec2(%f, %f)", *&v110, *(&v110 + 1));
    if (v119 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v33, v34, v35, v36, v37, &v118);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v33, v34, v35, v36, v37, v118.i64[0]);
    }
    v38 = ;
    if (v119 < 0)
    {
      operator delete(v118.i64[0]);
    }

    v39 = MEMORY[0x277CCACA8];
    sub_276152EB4(v114.f32, &v118);
    if (v119 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v39, v40, v41, v42, v43, &v118);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v39, v40, v41, v42, v43, v118.i64[0]);
    }
    v44 = ;
    if (v119 < 0)
    {
      operator delete(v118.i64[0]);
    }

    v45 = MEMORY[0x277CCACA8];
    sub_276152EB4(viewport, &v118);
    if (v119 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v45, v46, v47, v48, v49, &v118);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v45, v46, v47, v48, v49, v118.i64[0]);
    }
    v50 = ;
    if (v119 < 0)
    {
      operator delete(v118.i64[0]);
    }

    NSLog(&cfstr_PDeltaCurrentA.isa, v31, self, v106, v38, v44, v50);

    v8 = v32;
  }

  v51 = objc_msgSend_narrowedByNormalizedBounds_(self, v27, v30, v29, v28, bounds);
  v52.i64[0] = *viewport;
  *v53.f32 = vsub_f32(*(viewport + 8), *viewport);
  v52.i64[1] = *viewport;
  v53.i64[1] = v53.i64[0];
  v113 = vdivq_f32(vsubq_f32(v117, v52), v53);
  v55 = objc_msgSend_narrowedByNormalizedBounds_(v51, v54, *v113.i64, *v53.i64, *v117.i64, &v113);
  HIDWORD(v56) = HIDWORD(v109);
  *&v56 = *&v108 * *&v109;
  objc_msgSend_setViewportScale_(v55, v57, v56, v108, v58);
  v118 = vcvtq_s32_f32(v115);
  objc_msgSend_setViewport_(v55, v59, *v118.i64, v60, v61, &v118);
  *v118.f32 = vadd_f32(*&v110, self->_containingViewportOffset);
  objc_msgSend_setContainingViewportOffset_(v55, v62, *v118.i64, v110, v63, &v118);
  if (byte_280A46430 == 1)
  {
    v64 = objc_opt_class();
    v111 = NSStringFromSelector(v8);
    v107 = v51;
    v65 = MEMORY[0x277CCACA8];
    sub_276152EB4(viewport, &v118);
    if (v119 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v65, v66, v67, v68, v69, &v118);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v65, v66, v67, v68, v69, v118.i64[0]);
    }
    v70 = ;
    if (v119 < 0)
    {
      operator delete(v118.i64[0]);
    }

    v71 = MEMORY[0x277CCACA8];
    sub_276152EB4(v117.f32, &v118);
    if (v119 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v71, v72, v73, v74, v75, &v118);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v71, v72, v73, v74, v75, v118.i64[0]);
    }
    v76 = ;
    if (v119 < 0)
    {
      operator delete(v118.i64[0]);
    }

    v77 = MEMORY[0x277CCACA8];
    sub_276152EB4(v116.f32, &v118);
    if (v119 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v77, v78, v79, v80, v81, &v118);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v77, v78, v79, v80, v81, v118.i64[0]);
    }
    v82 = ;
    if (v119 < 0)
    {
      operator delete(v118.i64[0]);
    }

    v83 = MEMORY[0x277CCACA8];
    sub_276152EB4(v115.f32, &v118);
    if (v119 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v83, v84, v85, v86, v87, &v118);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v83, v84, v85, v86, v87, v118.i64[0]);
    }
    v88 = ;
    v89 = v64;
    if (v119 < 0)
    {
      operator delete(v118.i64[0]);
    }

    v90 = MEMORY[0x277CCACA8];
    sub_276152EB4(v113.f32, &v118);
    if (v119 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v90, v91, v92, v93, v94, &v118);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v90, v91, v92, v93, v94, v118.i64[0]);
    }
    v95 = ;
    if (v119 < 0)
    {
      operator delete(v118.i64[0]);
      if (v55)
      {
        goto LABEL_46;
      }
    }

    else if (v55)
    {
LABEL_46:
      objc_msgSend_viewport(v55, v96, v97, v98);
LABEL_49:
      v99 = MEMORY[0x277CCACA8];
      sub_2761B7678(v112, &v118);
      if (v119 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v99, v100, v101, v102, v103, &v118);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v99, v100, v101, v102, v103, v118.i64[0]);
      }
      v104 = ;
      if (v119 < 0)
      {
        operator delete(v118.i64[0]);
      }

      NSLog(&cfstr_PScaledviewpor.isa, v89, self, v111, v70, v76, *&v109, v82, v88, v95, v104, v55);

      v51 = v107;
      goto LABEL_55;
    }

    v112[0] = 0;
    v112[1] = 0;
    goto LABEL_49;
  }

LABEL_55:

  return v55;
}

- (id)narrowedByViewport:(void *)viewport samples:(int64_t)samples
{
  v7 = vcvtq_f32_s32(*viewport);
  v31 = vcvtq_f32_s32(self->_viewport);
  v32 = v7;
  *&v8 = sub_276152C5C(&v32, &v31, &v33).u64[0];
  v9 = *viewport;
  p_viewportSamples = &self->_viewportSamples;
  v11 = vld1_dup_f32(p_viewportSamples);
  v15 = objc_msgSend_narrowedByNormalizedBounds_(self, v12, v8, v13, v14, &v33);
  v32.i64[0] = 0;
  v16 = vdup_n_s32(samples);
  *&v32.u32[2] = vmul_s32(vsub_s32(*(viewport + 8), *viewport), v16);
  objc_msgSend_setViewport_(v15, v17, *&v32.i64[1], *&v16, v18, &v32);
  *&v19 = self->_viewportScale;
  objc_msgSend_setViewportScale_(v15, v20, v19, v21, v22);
  *&v23 = self->_viewportSamples;
  *&v24 = *&v23 * samples;
  objc_msgSend_setViewportSamples_(v15, v25, v24, v23, v26);
  containingViewportOffset = self->_containingViewportOffset;
  *v32.f32 = vsub_f32(containingViewportOffset, vdiv_f32(vcvt_f32_s32(v9), v11));
  objc_msgSend_setContainingViewportOffset_(v15, v28, *v32.i64, *&containingViewportOffset, v29, &v32);

  return v15;
}

- (void)calculateCullingPlanes:(void *)planes
{
  v11 = objc_msgSend_lens(self, a2, v3, v4, v5);
  objc_msgSend_calculateCullingPlanes_(v11, v7, v8, v9, v10, planes);
}

- (box<glm::detail::tvec2<int>>)viewport
{
  *v2 = self->_viewport;
  result._max = a2;
  result._min = self;
  return result;
}

- (tmat4x4<float>)transform
{
  v3 = self[1].value[0];
  retstr->value[0] = self->value[3];
  retstr->value[1] = v3;
  v4 = self[1].value[2];
  retstr->value[2] = self[1].value[1];
  retstr->value[3] = v4;
  return self;
}

- (id).cxx_construct
{
  *(self + 24) = xmmword_2764D6090;
  *(self + 5) = 0;
  *(self + 12) = 1065353216;
  *(self + 60) = 0;
  *(self + 52) = 0;
  *(self + 17) = 1065353216;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 22) = 1065353216;
  *(self + 100) = 0;
  *(self + 92) = 0;
  *(self + 27) = 1065353216;
  return self;
}

@end