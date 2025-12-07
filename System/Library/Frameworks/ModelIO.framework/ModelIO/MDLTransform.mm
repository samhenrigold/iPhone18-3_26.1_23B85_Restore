@interface MDLTransform
+ (__n128)globalTransformWithObject:(uint64_t)object atTime:(void *)time;
+ (__n128)localTransformWithObject:(uint64_t)object atTime:(void *)time;
- (CAAnimation)transformAnimation;
- (MDLTransform)init;
- (MDLTransform)initWithMatrix:(matrix_float4x4)matrix;
- (MDLTransform)initWithMatrix:(matrix_float4x4)matrix resetsTransform:(BOOL)resetsTransform;
- (MDLTransform)initWithTransformComponent:(id)component;
- (MDLTransform)initWithTransformComponent:(id)component resetsTransform:(BOOL)resetsTransform;
- (NSArray)keyTimes;
- (double)maximumTime;
- (double)minimumTime;
- (double)setLocalTransform:(__n128)transform;
- (double)setMatrix:(__n128)matrix;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (matrix_float4x4)rotationMatrixAtTime:(NSTimeInterval)time;
- (vector_float3)rotation;
- (vector_float3)rotationAtTime:(NSTimeInterval)time;
- (vector_float3)scale;
- (vector_float3)scaleAtTime:(NSTimeInterval)time;
- (vector_float3)shear;
- (vector_float3)shearAtTime:(NSTimeInterval)time;
- (vector_float3)translation;
- (vector_float3)translationAtTime:(NSTimeInterval)time;
- (void)setLocalTransform:(__n128)transform forTime:(__n128)time;
- (void)setRotation:(vector_float3)rotation;
- (void)setScale:(vector_float3)scale;
- (void)setShear:(vector_float3)shear;
- (void)setTranslation:(vector_float3)translation;
@end

@implementation MDLTransform

- (MDLTransform)init
{
  v6.receiver = self;
  v6.super_class = MDLTransform;
  v2 = [(MDLTransform *)&v6 init];
  v3 = v2;
  if (v2)
  {
    sub_239E682E4(v2 + 1);
    v4 = v3;
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 129) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 21) = 0u;
  *(self + 22) = 0u;
  *(self + 23) = 0u;
  *(self + 24) = 0u;
  return self;
}

- (NSArray)keyTimes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  __p = 0;
  v41 = 0;
  v42 = 0;
  sub_239ECBCF4(&self->_transform, &__p);
  v16 = __p;
  v15 = v41;
  if (v41 == __p)
  {
    v11.n128_u64[0] = 0;
    v28 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);
    objc_msgSend_addObject_(v3, v29, v28, v30, v35, v36, v37, v38, v31, v32, v33, v34);
  }

  else
  {
    do
    {
      v11.n128_u64[0] = *v16;
      v17 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);
      objc_msgSend_addObject_(v3, v18, v17, v19, v24, v25, v26, v27, v20, v21, v22, v23);

      ++v16;
    }

    while (v16 != v15);
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  return v3;
}

- (double)minimumTime
{
  result = self->_transform._startTime;
  if (result == 1.79769313e308)
  {
    return 0.0;
  }

  return result;
}

- (double)maximumTime
{
  result = self->_transform._greatestTime;
  if (result == 1.79769313e308)
  {
    return 0.0;
  }

  return result;
}

- (double)setMatrix:(__n128)matrix
{
  v6[0] = a2;
  v6[1] = matrix;
  v6[2] = a4;
  v6[3] = a5;
  *&result = sub_239ECB24C((self + 16), v6).n128_u64[0];
  return result;
}

- (vector_float3)translation
{
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (void)setTranslation:(vector_float3)translation
{
  begin = self->_transform._keyedTranslation.__begin_;
  self->_transform._keyedTranslation.__end_ = begin;
  cap = self->_transform._keyedTranslation.__cap_;
  if (begin >= cap)
  {
    v6 = cap - begin;
    v7 = v6 >> 4;
    if ((v6 >> 4) <= 1)
    {
      v7 = 1;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFE0)
    {
      v8 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    sub_239E6861C(&self->_transform, v8);
  }

  *begin = 0x7FEFFFFFFFFFFFFFLL;
  begin[1] = v3;
  self->_transform._keyedTranslation.__end_ = begin + 2;
  p_transform = &self->_transform;

  sub_239ECAF44(p_transform);
}

- (vector_float3)shear
{
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (void)setShear:(vector_float3)shear
{
  begin = self->_transform._keyedShear.__begin_;
  p_keyedShear = &self->_transform._keyedShear;
  v6 = begin;
  p_keyedShear->__end_ = begin;
  cap = p_keyedShear->__cap_;
  if (begin >= cap)
  {
    v9 = cap - v6;
    v10 = v9 >> 4;
    if ((v9 >> 4) <= 1)
    {
      v10 = 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_239E6861C(p_keyedShear, v11);
  }

  *v6 = 0x7FEFFFFFFFFFFFFFLL;
  *(v6 + 1) = v3;
  self->_transform._keyedShear.__end_ = v6 + 32;

  sub_239ECAF44(&self->_transform);
}

- (vector_float3)scale
{
  if (self->_transform._keyedScale.__end_ == self->_transform._keyedScale.__begin_)
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (void)setScale:(vector_float3)scale
{
  begin = self->_transform._keyedScale.__begin_;
  p_keyedScale = &self->_transform._keyedScale;
  v6 = begin;
  p_keyedScale->__end_ = begin;
  cap = p_keyedScale->__cap_;
  if (begin >= cap)
  {
    v9 = cap - v6;
    v10 = v9 >> 4;
    if ((v9 >> 4) <= 1)
    {
      v10 = 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_239E6861C(p_keyedScale, v11);
  }

  *v6 = 0x7FEFFFFFFFFFFFFFLL;
  *(v6 + 1) = v3;
  self->_transform._keyedScale.__end_ = v6 + 32;

  sub_239ECAF44(&self->_transform);
}

- (vector_float3)rotation
{
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (void)setRotation:(vector_float3)rotation
{
  begin = self->_transform._keyedRotation.__begin_;
  p_keyedRotation = &self->_transform._keyedRotation;
  v6 = begin;
  p_keyedRotation->__end_ = begin;
  cap = p_keyedRotation->__cap_;
  if (begin >= cap)
  {
    v9 = cap - v6;
    v10 = v9 >> 4;
    if ((v9 >> 4) <= 1)
    {
      v10 = 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_239E6861C(p_keyedRotation, v11);
  }

  *v6 = 0x7FEFFFFFFFFFFFFFLL;
  *(v6 + 1) = v3;
  self->_transform._keyedRotation.__end_ = v6 + 32;

  sub_239ECAF44(&self->_transform);
}

- (vector_float3)scaleAtTime:(NSTimeInterval)time
{
  sub_239ECAE7C(&self->_transform, time);
  result.i64[1] = v4;
  result.i64[0] = v3;
  return result;
}

- (vector_float3)shearAtTime:(NSTimeInterval)time
{
  sub_239ECADB4(&self->_transform, time);
  result.i64[1] = v4;
  result.i64[0] = v3;
  return result;
}

- (vector_float3)translationAtTime:(NSTimeInterval)time
{
  sub_239ECACEC(&self->_transform, time);
  result.i64[1] = v4;
  result.i64[0] = v3;
  return result;
}

- (vector_float3)rotationAtTime:(NSTimeInterval)time
{
  sub_239ECAA64(&self->_transform, time);
  result.i64[1] = v4;
  result.i64[0] = v3;
  return result;
}

- (MDLTransform)initWithTransformComponent:(id)component
{
  v4 = component;
  v23 = objc_msgSend_init(self, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  if (v23)
  {
    v24.n128_u64[0] = 0;
    objc_msgSend_localTransformAtTime_(v4, v16, v17, v18, v24, v25, v26, v27, v19, v20, v21, v22);
    v34[0] = v28;
    v34[1] = v29;
    v34[2] = v30;
    v34[3] = v31;
    sub_239ECB24C((v23 + 16), v34);
    v32 = v23;
  }

  return v23;
}

- (MDLTransform)initWithTransformComponent:(id)component resetsTransform:(BOOL)resetsTransform
{
  v13 = objc_msgSend_initWithTransformComponent_(self, a2, component, resetsTransform, v8, v9, v10, v11, v4, v5, v6, v7);
  v14 = v13;
  if (v13)
  {
    v13->_transform._resetTransformStack = resetsTransform;
    v15 = v13;
  }

  return v14;
}

- (MDLTransform)initWithMatrix:(matrix_float4x4)matrix
{
  v9 = objc_msgSend_init(self, a2, v3, v4, matrix.columns[0], matrix.columns[1], matrix.columns[2], matrix.columns[3], v5, v6, v7, v8, *matrix.columns, matrix.columns[1].i64[0], matrix.columns[1].i64[1], matrix.columns[2].i64[0], matrix.columns[2].i64[1], matrix.columns[3].i64[0], matrix.columns[3].i64[1]);
  v10 = v9;
  if (v9)
  {
    sub_239ECB24C(v9 + 1, &v13);
    v11 = v10;
  }

  return v10;
}

- (MDLTransform)initWithMatrix:(matrix_float4x4)matrix resetsTransform:(BOOL)resetsTransform
{
  v10 = objc_msgSend_init(self, a2, resetsTransform, v4, matrix.columns[0], matrix.columns[1], matrix.columns[2], matrix.columns[3], v5, v6, v7, v8, *matrix.columns, matrix.columns[1].i64[0], matrix.columns[1].i64[1], matrix.columns[2].i64[0], matrix.columns[2].i64[1], matrix.columns[3].i64[0], matrix.columns[3].i64[1]);
  v11 = v10;
  if (v10)
  {
    v10[8].i8[1] = resetsTransform;
    sub_239ECB24C(v10 + 1, &v14);
    v12 = v11;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v16 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v28 = objc_msgSend_init(v16, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  sub_239F1647C(v28 + 16, &self->_transform);
  return v28;
}

- (void)setLocalTransform:(__n128)transform forTime:(__n128)time
{
  v6[0] = a2;
  v6[1] = transform;
  v6[2] = time;
  v6[3] = a5;
  sub_239ECB5B8((self + 16), v6, a6);
}

- (double)setLocalTransform:(__n128)transform
{
  v6[0] = a2;
  v6[1] = transform;
  v6[2] = a4;
  v6[3] = a5;
  *&result = sub_239ECB24C((self + 16), v6).n128_u64[0];
  return result;
}

- (matrix_float4x4)rotationMatrixAtTime:(NSTimeInterval)time
{
  v3 = *&self[1]._transform._identity;
  v4 = *&self[2].super.isa;
  v5 = *&self[2]._transform._keyedTranslation.__begin_;
  v6 = *&self[2]._transform._keyedTranslation.__cap_;
  result.columns[3] = v6;
  result.columns[2] = v5;
  result.columns[1] = v4;
  result.columns[0] = v3;
  return result;
}

+ (__n128)localTransformWithObject:(uint64_t)object atTime:(void *)time
{
  v13 = objc_msgSend_componentConformingToProtocol_(time, object, &unk_284D27B70, v4, *&self, v9, v10, v11, v5, v6, v7, v8);
  v25 = v13;
  if (v13)
  {
    v21.n128_f64[0] = self;
    objc_msgSend_localTransformAtTime_(v13, v14, v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);
    v28 = v26;
  }

  else
  {
    v28 = *MEMORY[0x277D860B8];
  }

  return v28;
}

+ (__n128)globalTransformWithObject:(uint64_t)object atTime:(void *)time
{
  timeCopy = time;
  v23 = objc_msgSend_parent(timeCopy, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  if (v23)
  {
    do
    {
      v28 = objc_msgSend_componentConformingToProtocol_(v23, v17, &unk_284D27B70, v18, v24, v25, v26, v27, v19, v20, v21, v22);

      if (v28)
      {
        break;
      }

      v30 = objc_msgSend_parent(v23, v17, v29, v18, v24, v25, v26, v27, v19, v20, v21, v22);

      v23 = v30;
    }

    while (v30);
  }

  v31 = objc_msgSend_componentConformingToProtocol_(v23, v17, &unk_284D27B70, v18, v24, v25, v26, v27, v19, v20, v21, v22);
  if (objc_msgSend_resetsTransform(v31, v32, v33, v34, v39, v40, v41, v42, v35, v36, v37, v38) || !v31)
  {
    v49.n128_f64[0] = self;
    objc_msgSend_localTransformWithObject_atTime_(MDLTransform, v43, timeCopy, v44, v49, v50, v51, v52, v45, v46, v47, v48);
    v74 = v68;
  }

  else
  {
    v49.n128_f64[0] = self;
    objc_msgSend_globalTransformWithObject_atTime_(MDLTransform, v43, v23, v44, v49, v50, v51, v52, v45, v46, v47, v48);
    v72 = v54;
    v73 = v53;
    v70 = v56;
    v71 = v55;
    v53.n128_f64[0] = self;
    objc_msgSend_localTransformWithObject_atTime_(MDLTransform, v57, timeCopy, v58, v53, v54, v55, v56, v59, v60, v61, v62);
    v63 = 0;
    v75[0] = v64;
    v75[1] = v65;
    v75[2] = v66;
    v75[3] = v67;
    memset(v76, 0, sizeof(v76));
    do
    {
      v76[v63] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, COERCE_FLOAT(v75[v63])), v72, *&v75[v63], 1), v71, v75[v63], 2), v70, v75[v63], 3);
      ++v63;
    }

    while (v63 != 4);
    v74 = v76[0];
  }

  return v74;
}

- (CAAnimation)transformAnimation
{
  __p = 0;
  v176 = 0;
  v177 = 0;
  sub_239ECBCF4(&self->_transform, &__p);
  v13 = __p;
  v14 = v176 - __p;
  if (v176 != __p)
  {
    v15 = v14 >> 3;
    v16 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v3, v14 >> 3, v4, v9, v10, v11, v12, v5, v6, v7, v8);
    v34 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v17, v15, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    v39 = 0;
    v40 = *__p;
    v41 = *(v176 - 1) - *__p;
    if (v15 <= 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = v15;
    }

    do
    {
      v43 = *(__p + v39);
      v35.n128_f64[0] = (v43 - v40) * (1.0 / v41);
      v44 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v27, v28, v29, v35, v36, v37, v38, v30, v31, v32, v33);
      v45.n128_f64[0] = v43;
      objc_msgSend_localTransformAtTime_(self, v46, v47, v48, v45, v53, v54, v55, v49, v50, v51, v52);
      v172[0] = vcvtq_f64_f32(*v56.f32);
      v172[1] = vcvt_hight_f64_f32(v56);
      v172[2] = vcvtq_f64_f32(*v57.f32);
      v172[3] = vcvt_hight_f64_f32(v57);
      v172[4] = vcvtq_f64_f32(*v58.f32);
      v172[5] = vcvt_hight_f64_f32(v58);
      v173 = vcvtq_f64_f32(*v59.f32);
      v174 = vcvt_hight_f64_f32(v59);
      v66 = objc_msgSend_valueWithCATransform3D_(MEMORY[0x277CCAE60], v60, v172, v61, v173, v174, v58, v59, v62, v63, v64, v65);
      objc_msgSend_addObject_(v16, v67, v44, v68, v73, v74, v75, v76, v69, v70, v71, v72);
      objc_msgSend_addObject_(v34, v77, v66, v78, v83, v84, v85, v86, v79, v80, v81, v82);

      ++v39;
    }

    while (v42 != v39);
    v87 = objc_msgSend_animation(MEMORY[0x277CD9EC8], v27, v28, v29, v35, v36, v37, v38, v30, v31, v32, v33);
    objc_msgSend_setKeyPath_(v87, v88, @"transform", v89, v94, v95, v96, v97, v90, v91, v92, v93);
    objc_msgSend_setValues_(v87, v98, v34, v99, v104, v105, v106, v107, v100, v101, v102, v103);
    objc_msgSend_setKeyTimes_(v87, v108, v16, v109, v114, v115, v116, v117, v110, v111, v112, v113);
    v118.n128_f64[0] = v40;
    objc_msgSend_setBeginTime_(v87, v119, v120, v121, v118, v126, v127, v128, v122, v123, v124, v125);
    v129.n128_f64[0] = v41;
    objc_msgSend_setDuration_(v87, v130, v131, v132, v129, v137, v138, v139, v133, v134, v135, v136);
    objc_msgSend_setAdditive_(v87, v140, 0, v141, v146, v147, v148, v149, v142, v143, v144, v145);
    objc_msgSend_setRemovedOnCompletion_(v87, v150, 0, v151, v156, v157, v158, v159, v152, v153, v154, v155);
    v160.n128_u32[0] = 2139095039;
    objc_msgSend_setRepeatCount_(v87, v161, v162, v163, v160, v168, v169, v170, v164, v165, v166, v167);

    v13 = __p;
    if (!__p)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v87 = 0;
  if (__p)
  {
LABEL_7:
    v176 = v13;
    operator delete(v13);
  }

LABEL_8:

  return v87;
}

@end