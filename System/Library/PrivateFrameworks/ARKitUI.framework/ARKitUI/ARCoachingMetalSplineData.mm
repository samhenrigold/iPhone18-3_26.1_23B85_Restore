@interface ARCoachingMetalSplineData
- (id)init:(id)init;
- (id)shapeBlendWithStart:(id *)start startCount:(int)count end:(id *)end endCount:(int)endCount t:(float)t;
- (void)computeInstanceTransformScale:(ARCoachingMetalSplineData *)self;
- (void)computeInstanceTransformScale:(ARCoachingMetalSplineData *)self s1:(SEL)s1 t:(float)t;
- (void)computeInstanceTransformScale:(float)scale t:;
- (void)computeInstanceTransformTranslate:(ARCoachingMetalSplineData *)self x1:(SEL)x1 t:(float)t index:(int)index;
- (void)computeInstanceTransformTranslate:(float)translate t:(int)t index:;
- (void)computeInstanceTransformTranslate:(int)translate index:;
- (void)computeShapeBlendWithEnd:(id *)end endCount:(int)count;
- (void)computeShapeBlendWithEnd:(id *)end endCount:(int)count t:(float)t;
- (void)computeShapeBlendWithStart:(id *)start startCount:(int)count end:(id *)end endCount:(int)endCount t:(float)t;
- (void)makeShapes;
- (void)recordState;
- (void)resetInstanceTransforms:(id)transforms;
@end

@implementation ARCoachingMetalSplineData

- (id)init:(id)init
{
  initCopy = init;
  v19.receiver = self;
  v19.super_class = ARCoachingMetalSplineData;
  v5 = [(ARCoachingMetalSplineData *)&v19 init];
  v6 = v5;
  if (v5)
  {
    [(ARCoachingMetalSplineData *)v5 makeShapes];
    patchDataLength = [(ARCoachingBlendableSplineGroup *)v6->_shapes patchDataLength];
    v6->_patchCount = patchDataLength;
    v8 = [initCopy newBufferWithLength:12 * patchDataLength options:32];
    tessellationFactorsBuffer = v6->_tessellationFactorsBuffer;
    v6->_tessellationFactorsBuffer = v8;

    [(MTLBuffer *)v6->_tessellationFactorsBuffer setLabel:@"Tessellation Factors"];
    controlPoints = [(ARCoachingBlendableSplineGroup *)v6->_shapes controlPoints];
    v11 = [controlPoints objectAtIndexedSubscript:0];

    v12 = [initCopy newBufferWithBytes:objc_msgSend(v11 length:"controlPoints") options:{32 * objc_msgSend(v11, "numControlPoints"), 0}];
    controlPointsBuffer = v6->_controlPointsBuffer;
    v6->_controlPointsBuffer = v12;

    [(MTLBuffer *)v6->_controlPointsBuffer setLabel:@"Control Points"];
    v14 = [initCopy newBufferWithBytes:-[ARCoachingBlendableSplineGroup indices](v6->_shapes length:"indices") options:{2 * -[ARCoachingBlendableSplineGroup numIndices](v6->_shapes, "numIndices"), 0}];
    controlPointIndicesBuffer = v6->_controlPointIndicesBuffer;
    v6->_controlPointIndicesBuffer = v14;

    [(MTLBuffer *)v6->_controlPointIndicesBuffer setLabel:@"Control Point Indices"];
    v16 = [initCopy newBufferWithBytes:-[ARCoachingBlendableSplineGroup patchData](v6->_shapes length:"patchData") options:{8 * -[ARCoachingBlendableSplineGroup patchDataLength](v6->_shapes, "patchDataLength"), 0}];
    patchUserDataBuffer = v6->_patchUserDataBuffer;
    v6->_patchUserDataBuffer = v16;

    [(MTLBuffer *)v6->_patchUserDataBuffer setLabel:@"Per Patch Tessellator variables"];
    [(ARCoachingMetalSplineData *)v6 resetInstanceTransforms:initCopy];
  }

  return v6;
}

- (void)makeShapes
{
  v174[4] = *MEMORY[0x277D85DE8];
  v3 = [ARCoachingSplineGroup alloc];
  v4 = [ARCoachingCorner alloc];
  [ARCoachingTransformations rotate:0.0 axis:?];
  v155 = v5;
  v147 = v6;
  v151 = v7;
  LODWORD(v6) = 1.0;
  LODWORD(v7) = 1064178811;
  LODWORD(v5) = 1058642330;
  LODWORD(v8) = 1065017672;
  v155 = [(ARCoachingCorner *)v4 initWithRadius:*&v6 relativeThickness:*&v7 anchorA:0.0 anchorB:*&v5 cornerEdge:v8 mat:v147, v151, v9, v10, v155];
  v174[0] = v155;
  v12 = [ARCoachingCorner alloc];
  LODWORD(v13) = 1119092736;
  [ARCoachingTransformations rotate:v13 axis:0.0];
  HIDWORD(v15) = HIDWORD(v14);
  v148 = v16;
  v152 = v17;
  LODWORD(v16) = 1.0;
  v156 = v18;
  LODWORD(v17) = 1064178811;
  LODWORD(v18) = 1058642330;
  LODWORD(v15) = 1065017672;
  v156 = [(ARCoachingCorner *)v12 initWithRadius:*&v16 relativeThickness:*&v17 anchorA:0.0 anchorB:*&v18 cornerEdge:v15 mat:v148, v152, v14, v19, v156];
  v174[1] = v156;
  v21 = [ARCoachingCorner alloc];
  LODWORD(v22) = 1127481344;
  [ARCoachingTransformations rotate:v22 axis:0.0];
  HIDWORD(v24) = HIDWORD(v23);
  v149 = v25;
  v153 = v26;
  LODWORD(v25) = 1.0;
  v157 = v27;
  LODWORD(v26) = 1064178811;
  LODWORD(v27) = 1058642330;
  LODWORD(v24) = 1065017672;
  v157 = [(ARCoachingCorner *)v21 initWithRadius:*&v25 relativeThickness:*&v26 anchorA:0.0 anchorB:*&v27 cornerEdge:v24 mat:v149, v153, v23, v28, v157];
  v174[2] = v157;
  v30 = [ARCoachingCorner alloc];
  LODWORD(v31) = 1132920832;
  [ARCoachingTransformations rotate:v31 axis:0.0];
  HIDWORD(v33) = HIDWORD(v32);
  v150 = v34;
  v154 = v35;
  LODWORD(v34) = 1.0;
  v158 = v36;
  LODWORD(v35) = 1064178811;
  LODWORD(v36) = 1058642330;
  LODWORD(v33) = 1065017672;
  v158 = [(ARCoachingCorner *)v30 initWithRadius:*&v34 relativeThickness:*&v35 anchorA:0.0 anchorB:*&v36 cornerEdge:v33 mat:v150, v154, v32, v37, v158];
  v174[3] = v158;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v174 count:4];
  v40 = [(ARCoachingSplineGroup *)v3 initWithSplines:v39];

  v41 = v40;
  __asm { FMOV            V0.4S, #1.0 }

  [ARCoachingTransformations scale:*&_Q0];
  v159 = v48;
  v160 = v47;
  v161 = v50;
  v162 = v49;
  v51 = [ARCoachingSplineGroup alloc];
  v52 = [ARCoachingCorner alloc];
  [ARCoachingTransformations rotate:0.0 axis:0.0];
  v57 = 0;
  v163 = v160;
  v164 = v159;
  v165 = v162;
  v166 = v161;
  do
  {
    v58 = *(&v163 + v57);
    *(&v167 + v57) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v58.f32[0]), v54, *v58.f32, 1), v55, v58, 2), v56, v58, 3);
    v57 += 16;
  }

  while (v57 != 64);
  HIDWORD(v59) = DWORD1(v170);
  LODWORD(v59) = 1053609165;
  v58.i32[0] = 1065017672;
  v170 = [(ARCoachingCorner *)v52 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v167) relativeThickness:1.0)) anchorA:COERCE_DOUBLE(__PAIR64__(DWORD1(v168) anchorB:1.0)) cornerEdge:0.0 mat:v59, *v58.i64, v167, v168, v169, v170];
  v173[0] = v170;
  v61 = [ARCoachingCorner alloc];
  LODWORD(v62) = 1119092736;
  [ARCoachingTransformations rotate:v62 axis:0.0];
  v67 = 0;
  v163 = v160;
  v164 = v159;
  v165 = v162;
  v166 = v161;
  do
  {
    *(&v167 + v67) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, COERCE_FLOAT(*(&v163 + v67))), v64, *(&v163 + v67), 1), v65, *(&v163 + v67), 2), v66, *(&v163 + v67), 3);
    v67 += 16;
  }

  while (v67 != 64);
  HIDWORD(v68) = DWORD1(v167);
  HIDWORD(v69) = DWORD1(v168);
  LODWORD(v68) = 1053609165;
  LODWORD(v69) = 1065017672;
  v1702 = [(ARCoachingCorner *)v61 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v169) relativeThickness:1.0)) anchorA:COERCE_DOUBLE(__PAIR64__(DWORD1(v170) anchorB:1.0)) cornerEdge:0.0 mat:v68, v69, v167, v168, v169, v170];
  v173[1] = v1702;
  v71 = [ARCoachingCorner alloc];
  LODWORD(v72) = 1127481344;
  [ARCoachingTransformations rotate:v72 axis:0.0];
  v77 = 0;
  v163 = v160;
  v164 = v159;
  v165 = v162;
  v166 = v161;
  do
  {
    *(&v167 + v77) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, COERCE_FLOAT(*(&v163 + v77))), v74, *(&v163 + v77), 1), v75, *(&v163 + v77), 2), v76, *(&v163 + v77), 3);
    v77 += 16;
  }

  while (v77 != 64);
  HIDWORD(v78) = DWORD1(v167);
  HIDWORD(v79) = DWORD1(v168);
  LODWORD(v78) = 1053609165;
  LODWORD(v79) = 1065017672;
  v1703 = [(ARCoachingCorner *)v71 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v169) relativeThickness:1.0)) anchorA:COERCE_DOUBLE(__PAIR64__(DWORD1(v170) anchorB:1.0)) cornerEdge:0.0 mat:v78, v79, v167, v168, v169, v170];
  v173[2] = v1703;
  v81 = [ARCoachingCorner alloc];
  LODWORD(v82) = 1132920832;
  [ARCoachingTransformations rotate:v82 axis:0.0];
  v87 = 0;
  v163 = v160;
  v164 = v159;
  v165 = v162;
  v166 = v161;
  do
  {
    *(&v167 + v87) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, COERCE_FLOAT(*(&v163 + v87))), v84, *(&v163 + v87), 1), v85, *(&v163 + v87), 2), v86, *(&v163 + v87), 3);
    v87 += 16;
  }

  while (v87 != 64);
  HIDWORD(v88) = DWORD1(v167);
  HIDWORD(v89) = DWORD1(v168);
  LODWORD(v88) = 1053609165;
  LODWORD(v89) = 1065017672;
  v1704 = [(ARCoachingCorner *)v81 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v169) relativeThickness:1.0)) anchorA:COERCE_DOUBLE(__PAIR64__(DWORD1(v170) anchorB:1.0)) cornerEdge:0.0 mat:v88, v89, v167, v168, v169, v170];
  v173[3] = v1704;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v173 count:4];
  v92 = [(ARCoachingSplineGroup *)v51 initWithSplines:v91];

  v93 = [ARCoachingSplineGroup alloc];
  v94 = [ARCoachingCorner alloc];
  [ARCoachingTransformations rotate:0.0 axis:0.0];
  v99 = 0;
  v163 = v160;
  v164 = v159;
  v165 = v162;
  v166 = v161;
  do
  {
    v100 = *(&v163 + v99);
    *(&v167 + v99) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v95, v100.f32[0]), v96, *v100.f32, 1), v97, v100, 2), v98, v100, 3);
    v99 += 16;
  }

  while (v99 != 64);
  HIDWORD(v101) = DWORD1(v168);
  LODWORD(v101) = 1050253722;
  v100.i32[0] = 1065336439;
  v1705 = [(ARCoachingCorner *)v94 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v167) relativeThickness:1.0)) anchorA:v101 anchorB:COERCE_DOUBLE(__PAIR64__(DWORD1(v169) cornerEdge:-1.0)) mat:0.0, *v100.i64, v167, v168, v169, v170];
  v172[0] = v1705;
  v103 = [ARCoachingCorner alloc];
  LODWORD(v104) = 1119092736;
  [ARCoachingTransformations rotate:v104 axis:0.0];
  v109 = 0;
  v163 = v160;
  v164 = v159;
  v165 = v162;
  v166 = v161;
  do
  {
    *(&v167 + v109) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, COERCE_FLOAT(*(&v163 + v109))), v106, *(&v163 + v109), 1), v107, *(&v163 + v109), 2), v108, *(&v163 + v109), 3);
    v109 += 16;
  }

  while (v109 != 64);
  HIDWORD(v110) = DWORD1(v167);
  HIDWORD(v111) = DWORD1(v168);
  LODWORD(v110) = 1050253722;
  LODWORD(v111) = 1065336439;
  v1706 = [(ARCoachingCorner *)v103 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v169) relativeThickness:1.0)) anchorA:v110 anchorB:COERCE_DOUBLE(__PAIR64__(DWORD1(v170) cornerEdge:-1.0)) mat:0.0, v111, v167, v168, v169, v170];
  v172[1] = v1706;
  v113 = [ARCoachingCorner alloc];
  LODWORD(v114) = 1127481344;
  [ARCoachingTransformations rotate:v114 axis:0.0];
  v119 = 0;
  v163 = v160;
  v164 = v159;
  v165 = v162;
  v166 = v161;
  do
  {
    *(&v167 + v119) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v115, COERCE_FLOAT(*(&v163 + v119))), v116, *(&v163 + v119), 1), v117, *(&v163 + v119), 2), v118, *(&v163 + v119), 3);
    v119 += 16;
  }

  while (v119 != 64);
  HIDWORD(v120) = DWORD1(v167);
  HIDWORD(v121) = DWORD1(v168);
  LODWORD(v120) = 1050253722;
  LODWORD(v121) = 1065336439;
  v1707 = [(ARCoachingCorner *)v113 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v169) relativeThickness:1.0)) anchorA:v120 anchorB:COERCE_DOUBLE(__PAIR64__(DWORD1(v170) cornerEdge:-1.0)) mat:0.0, v121, v167, v168, v169, v170];
  v172[2] = v1707;
  v123 = [ARCoachingCorner alloc];
  LODWORD(v124) = 1132920832;
  [ARCoachingTransformations rotate:v124 axis:0.0];
  v129 = 0;
  v163 = v160;
  v164 = v159;
  v165 = v162;
  v166 = v161;
  do
  {
    *(&v167 + v129) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v125, COERCE_FLOAT(*(&v163 + v129))), v126, *(&v163 + v129), 1), v127, *(&v163 + v129), 2), v128, *(&v163 + v129), 3);
    v129 += 16;
  }

  while (v129 != 64);
  HIDWORD(v130) = DWORD1(v167);
  HIDWORD(v131) = DWORD1(v168);
  LODWORD(v130) = 1050253722;
  LODWORD(v131) = 1065336439;
  v1708 = [(ARCoachingCorner *)v123 initWithRadius:COERCE_DOUBLE(__PAIR64__(DWORD1(v169) relativeThickness:1.0)) anchorA:v130 anchorB:COERCE_DOUBLE(__PAIR64__(DWORD1(v170) cornerEdge:-1.0)) mat:0.0, v131, v167, v168, v169, v170];
  v172[3] = v1708;
  v133 = [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:4];
  v134 = [(ARCoachingSplineGroup *)v93 initWithSplines:v133];

  v135 = [ARCoachingBlendableSplineGroup alloc];
  v171[0] = v41;
  v171[1] = v92;
  v171[2] = v134;
  v136 = [MEMORY[0x277CBEA60] arrayWithObjects:v171 count:3];
  v137 = [(ARCoachingBlendableSplineGroup *)v135 initWithSplineGroups:v136];
  shapes = self->_shapes;
  self->_shapes = v137;

  v139 = [ARCoachingControlPointContainer alloc];
  controlPoints = [(ARCoachingBlendableSplineGroup *)self->_shapes controlPoints];
  v141 = [controlPoints objectAtIndexedSubscript:0];
  controlPoints2 = [v141 controlPoints];
  controlPoints3 = [(ARCoachingBlendableSplineGroup *)self->_shapes controlPoints];
  v144 = [controlPoints3 objectAtIndexedSubscript:0];
  v145 = -[ARCoachingControlPointContainer initWithControlPoints:numControlPoints:](v139, "initWithControlPoints:numControlPoints:", controlPoints2, [v144 numControlPoints]);
  recordedControlPoints = self->_recordedControlPoints;
  self->_recordedControlPoints = v145;
}

- (void)recordState
{
  v32 = *MEMORY[0x277D85DE8];
  contents = [(MTLBuffer *)self->_controlPointsBuffer contents];
  v4 = 0;
  __src = 0;
  v29 = 0;
  v30 = 0;
  while (1)
  {
    controlPoints = [(ARCoachingBlendableSplineGroup *)self->_shapes controlPoints];
    v6 = [controlPoints objectAtIndexedSubscript:0];
    v7 = v4 < [v6 numControlPoints];

    if (!v7)
    {
      break;
    }

    v8 = v29;
    if (v29 >= v30)
    {
      v11 = __src;
      v12 = v29 - __src;
      v13 = (v29 - __src) >> 5;
      v14 = v13 + 1;
      if ((v13 + 1) >> 59)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
      }

      v15 = v30 - __src;
      if ((v30 - __src) >> 4 > v14)
      {
        v14 = v15 >> 4;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFE0)
      {
        v14 = 0x7FFFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        std::allocator<ARCoachingControlPoint>::allocate_at_least[abi:ne200100](&__src, v14);
      }

      v16 = (32 * v13);
      v17 = contents[1];
      *v16 = *contents;
      v16[1] = v17;
      v10 = 32 * v13 + 32;
      memcpy(0, v11, v12);
      v18 = __src;
      __src = 0;
      v29 = v10;
      v30 = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      v9 = contents[1];
      *v29 = *contents;
      *(v8 + 1) = v9;
      v10 = (v8 + 32);
    }

    v29 = v10;
    ++v4;
    contents += 2;
  }

  [ARCoachingControlPointContainer overwriteWithControlPoints:"overwriteWithControlPoints:numControlPoints:" numControlPoints:?];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = self->_instanceTransforms;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v20)
  {
    v21 = *v25;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v24 + 1) + 8 * i);
        [v23 localScale];
        [v23 setRecordedScale:?];
        [v23 localTranslation];
        [v23 setRecordedTranslation:?];
      }

      v20 = [(NSArray *)v19 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v20);
  }

  if (__src)
  {
    v29 = __src;
    operator delete(__src);
  }
}

- (void)resetInstanceTransforms:(id)transforms
{
  v115[6] = *MEMORY[0x277D85DE8];
  transformsCopy = transforms;
  v5 = [ARCoachingInstanceTransform alloc];
  [ARCoachingTransformations translate:-0.0078125];
  v98 = v7;
  v104 = v6;
  v86 = v9;
  v92 = v8;
  v6.i32[0] = 1119092736;
  [ARCoachingTransformations rotate:*v6.i64 axis:?];
  v10 = 0;
  v107 = v11;
  v108 = v12;
  v109 = v13;
  v110 = v14;
  do
  {
    *(&v111 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v104, COERCE_FLOAT(*(&v107 + v10))), v98, *(&v107 + v10), 1), v92, *(&v107 + v10), 2), v86, *(&v107 + v10), 3);
    v10 += 16;
  }

  while (v10 != 64);
  v15 = [(ARCoachingInstanceTransform *)v5 init:*&v111, *&v112, *&v113, v114[0]];
  v115[0] = v15;
  v16 = [ARCoachingInstanceTransform alloc];
  [ARCoachingTransformations translate:?];
  v93 = v18;
  v99 = v17;
  v83 = v20;
  v87 = v19;
  v17.i32[0] = 1119092736;
  [ARCoachingTransformations rotate:*v17.i64 axis:COERCE_DOUBLE(1065353216)];
  v21 = 0;
  v107 = v22;
  v108 = v23;
  v109 = v24;
  v110 = v25;
  do
  {
    *(&v111 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v99, COERCE_FLOAT(*(&v107 + v21))), v93, *(&v107 + v21), 1), v87, *(&v107 + v21), 2), v83, *(&v107 + v21), 3);
    v21 += 16;
  }

  while (v21 != 64);
  v26 = [(ARCoachingInstanceTransform *)v16 init:*&v111, *&v112, *&v113, v114[0]];
  v115[1] = v26;
  v27 = [ARCoachingInstanceTransform alloc];
  [ARCoachingTransformations translate:0.0];
  v94 = v29;
  v100 = v28;
  v84 = v31;
  v88 = v30;
  [ARCoachingTransformations rotate:0.0 axis:COERCE_DOUBLE(1065353216)];
  v32 = 0;
  v107 = v33;
  v108 = v34;
  v109 = v35;
  v110 = v36;
  do
  {
    *(&v111 + v32) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, COERCE_FLOAT(*(&v107 + v32))), v94, *(&v107 + v32), 1), v88, *(&v107 + v32), 2), v84, *(&v107 + v32), 3);
    v32 += 16;
  }

  while (v32 != 64);
  v37 = [(ARCoachingInstanceTransform *)v27 init:*&v111, *&v112, *&v113, v114[0]];
  v115[2] = v37;
  v38 = [ARCoachingInstanceTransform alloc];
  [ARCoachingTransformations translate:0.0];
  v95 = v40;
  v101 = v39;
  v85 = v42;
  v89 = v41;
  [ARCoachingTransformations rotate:0.0 axis:COERCE_DOUBLE(1065353216)];
  v43 = 0;
  v107 = v44;
  v108 = v45;
  v109 = v46;
  v110 = v47;
  do
  {
    *(&v111 + v43) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*(&v107 + v43))), v95, *(&v107 + v43), 1), v89, *(&v107 + v43), 2), v85, *(&v107 + v43), 3);
    v43 += 16;
  }

  while (v43 != 64);
  v48 = [(ARCoachingInstanceTransform *)v38 init:*&v111, *&v112, *&v113, v114[0]];
  v115[3] = v48;
  v49 = [ARCoachingInstanceTransform alloc];
  [ARCoachingTransformations translate:COERCE_DOUBLE(1065353216)];
  v105 = v50;
  v96 = v52;
  v102 = v51;
  v90 = v53;
  v50.i32[0] = 1119092736;
  [ARCoachingTransformations rotate:*v50.i64 axis:0.0078125];
  v54 = 0;
  v107 = v55;
  v108 = v56;
  v109 = v57;
  v110 = v58;
  do
  {
    *(&v111 + v54) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, COERCE_FLOAT(*(&v107 + v54))), v102, *(&v107 + v54), 1), v96, *(&v107 + v54), 2), v90, *(&v107 + v54), 3);
    v54 += 16;
  }

  while (v54 != 64);
  v59 = [(ARCoachingInstanceTransform *)v49 init:*&v111, *&v112, *&v113, v114[0]];
  v115[4] = v59;
  v60 = [ARCoachingInstanceTransform alloc];
  [ARCoachingTransformations translate:COERCE_DOUBLE(3212836864)];
  v106 = v61;
  v97 = v63;
  v103 = v62;
  v91 = v64;
  v61.i32[0] = 1119092736;
  [ARCoachingTransformations rotate:*v61.i64 axis:0.0078125];
  v65 = 0;
  v107 = v66;
  v108 = v67;
  v109 = v68;
  v110 = v69;
  do
  {
    *(&v111 + v65) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v106, COERCE_FLOAT(*(&v107 + v65))), v103, *(&v107 + v65), 1), v97, *(&v107 + v65), 2), v91, *(&v107 + v65), 3);
    v65 += 16;
  }

  while (v65 != 64);
  v70 = [(ARCoachingInstanceTransform *)v60 init:*&v111, *&v112, *&v113, v114[0]];
  v115[5] = v70;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:6];
  instanceTransforms = self->_instanceTransforms;
  self->_instanceTransforms = v71;

  v73 = 0;
  v74 = &v113;
  do
  {
    v75 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:v73];
    [v75 setLocalScale:0.0];
    objc_msgSend_transform(v75);
    *(v74 - 2) = v76;
    *(v74 - 1) = v77;
    *v74 = v78;
    v74[1] = v79;

    ++v73;
    v74 += 4;
  }

  while (v73 != 6);
  v80 = [transformsCopy newBufferWithBytes:&v111 length:384 options:0];
  instanceBuffer = self->_instanceBuffer;
  p_instanceBuffer = &self->_instanceBuffer;
  *p_instanceBuffer = v80;

  [*p_instanceBuffer setLabel:@"Per Instance Post Tessellation variables"];
}

- (id)shapeBlendWithStart:(id *)start startCount:(int)count end:(id *)end endCount:(int)endCount t:(float)t
{
  if (count != endCount)
  {
    [ARCoachingMetalSplineData shapeBlendWithStart:startCount:end:endCount:t:];
  }

  __p = 0;
  v23 = 0;
  v24 = 0;
  if (count >= 1)
  {
    v7 = 0;
    v20 = vdupq_lane_s32(*&t, 0);
    v8 = end + 4;
    v9 = start + 4;
    countCopy = count;
    do
    {
      v11 = vmlaq_f32(*&v9[-4].var0, vsubq_f32(*&v8[-4].var0, *&v9[-4].var0), v20);
      v12 = v9->var0 + (t * (v8->var0 - v9->var0));
      if (v7 >= v24)
      {
        v13 = (v7 - __p) >> 5;
        if ((v13 + 1) >> 59)
        {
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
        }

        v14 = (v24 - __p) >> 4;
        if (v14 <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        if (v24 - __p >= 0x7FFFFFFFFFFFFFE0)
        {
          v15 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<ARCoachingControlPoint>::allocate_at_least[abi:ne200100](&__p, v15);
        }

        v16 = 32 * v13;
        *v16 = v11;
        *(v16 + 16) = v12;
        v7 = 32 * v13 + 32;
        memcpy((32 * v13 - (v23 - __p)), __p, v23 - __p);
        v17 = __p;
        __p = (32 * v13 - (v23 - __p));
        v23 = v7;
        v24 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v7 = v11;
        *(v7 + 16) = v12;
        v7 += 32;
      }

      v23 = v7;
      v8 += 8;
      v9 += 8;
      --countCopy;
    }

    while (countCopy);
  }

  v18 = [ARCoachingControlPointContainer initWithControlPoints:"initWithControlPoints:numControlPoints:" numControlPoints:?];
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  return v18;
}

- (void)computeShapeBlendWithEnd:(id *)end endCount:(int)count t:(float)t
{
  v16 = *&t;
  if ([(ARCoachingControlPointContainer *)self->_recordedControlPoints numControlPoints]!= count)
  {
    [ARCoachingMetalSplineData computeShapeBlendWithEnd:endCount:t:];
  }

  contents = [(MTLBuffer *)self->_controlPointsBuffer contents];
  if ([(ARCoachingControlPointContainer *)self->_recordedControlPoints numControlPoints])
  {
    v8 = 0;
    v9 = 0;
    v15 = vdupq_lane_s32(v16, 0);
    v10 = (contents + 16);
    v11 = end + 4;
    do
    {
      controlPoints = [(ARCoachingControlPointContainer *)self->_recordedControlPoints controlPoints];
      *(v10 - 1) = vmlaq_f32(*&controlPoints[v8].var0, vsubq_f32(*&v11[-4].var0, *&controlPoints[v8].var0), v15);
      controlPoints2 = [(ARCoachingControlPointContainer *)self->_recordedControlPoints controlPoints];
      var0 = v11->var0;
      v11 += 8;
      *v10 = controlPoints2[v8 + 4].var0 + (*v16.i32 * (var0 - controlPoints2[v8 + 4].var0));
      v10 += 8;
      ++v9;
      v8 += 8;
    }

    while (v9 < [(ARCoachingControlPointContainer *)self->_recordedControlPoints numControlPoints]);
  }
}

- (void)computeShapeBlendWithEnd:(id *)end endCount:(int)count
{
  contents = [(MTLBuffer *)self->_controlPointsBuffer contents];
  if (count >= 1)
  {
    countCopy = count;
    v8 = (contents + 16);
    v9 = end + 4;
    do
    {
      *(v8 - 1) = *&v9[-4].var0;
      var0 = v9->var0;
      v9 += 8;
      *v8 = var0;
      v8 += 8;
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)computeShapeBlendWithStart:(id *)start startCount:(int)count end:(id *)end endCount:(int)endCount t:(float)t
{
  if (count != endCount)
  {
    [ARCoachingMetalSplineData computeShapeBlendWithStart:startCount:end:endCount:t:];
  }

  v19 = *&t;
  contents = [(MTLBuffer *)self->_controlPointsBuffer contents];
  if (count >= 1)
  {
    v11 = vdupq_lane_s32(v19, 0);
    v12 = (contents + 16);
    v13 = end + 4;
    v14 = start + 4;
    countCopy = count;
    do
    {
      *(v12 - 1) = vmlaq_f32(*&v14[-4].var0, vsubq_f32(*&v13[-4].var0, *&v14[-4].var0), v11);
      var0 = v14->var0;
      v14 += 8;
      v17 = var0;
      v18 = v13->var0;
      v13 += 8;
      *v12 = v17 + (*v19.i32 * (v18 - v17));
      v12 += 8;
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)computeInstanceTransformScale:(float)scale t:
{
  v17 = *&scale;
  v18 = v3;
  contents = [(MTLBuffer *)self->_instanceBuffer contents];
  if ([(NSArray *)self->_instanceTransforms count])
  {
    v6 = 0;
    v16 = vdupq_lane_s32(v18, 0);
    v7 = (contents + 32);
    do
    {
      v8 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:v6, *&v16];
      [v8 recordedScale];
      v19 = v9;
      v10 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:v6];
      [v10 setLocalScale:{*vmlaq_f32(v19, vsubq_f32(v17, v19), v16).i64}];

      v11 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:v6];
      objc_msgSend_transform(v11);
      *(v7 - 2) = v12;
      *(v7 - 1) = v13;
      *v7 = v14;
      v7[1] = v15;
      v7 += 4;

      ++v6;
    }

    while ([(NSArray *)self->_instanceTransforms count]> v6);
  }
}

- (void)computeInstanceTransformScale:(ARCoachingMetalSplineData *)self s1:(SEL)s1 t:(float)t
{
  v15 = v3;
  v16 = v4;
  v17 = *&t;
  contents = [(MTLBuffer *)self->_instanceBuffer contents];
  if ([(NSArray *)self->_instanceTransforms count])
  {
    v7 = 0;
    *&v18 = vmlaq_n_f32(v17, vsubq_f32(v15, v17), v16).u64[0];
    v8 = (contents + 32);
    do
    {
      v9 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:v7];
      [v9 setLocalScale:v18];

      v10 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:v7];
      objc_msgSend_transform(v10);
      *(v8 - 2) = v11;
      *(v8 - 1) = v12;
      *v8 = v13;
      v8[1] = v14;
      v8 += 4;

      ++v7;
    }

    while ([(NSArray *)self->_instanceTransforms count]> v7);
  }
}

- (void)computeInstanceTransformScale:(ARCoachingMetalSplineData *)self
{
  v13 = v2;
  contents = [(MTLBuffer *)self->_instanceBuffer contents];
  if ([(NSArray *)self->_instanceTransforms count])
  {
    v5 = 0;
    v6 = (contents + 32);
    do
    {
      v7 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:v5];
      [v7 setLocalScale:v13];

      v8 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:v5];
      objc_msgSend_transform(v8);
      *(v6 - 2) = v9;
      *(v6 - 1) = v10;
      *v6 = v11;
      v6[1] = v12;
      v6 += 4;

      ++v5;
    }

    while ([(NSArray *)self->_instanceTransforms count]> v5);
  }
}

- (void)computeInstanceTransformTranslate:(float)translate t:(int)t index:
{
  v16 = *&translate;
  v17 = v4;
  contents = [(MTLBuffer *)self->_instanceBuffer contents];
  v18 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:t];
  [v18 recordedTranslation];
  v15 = v8;
  v9 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:t];
  [v9 setLocalTranslation:{*vmlaq_n_f32(v15, vsubq_f32(v16, v15), v17).i64}];

  v19 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:t];
  objc_msgSend_transform(v19);
  v10 = (contents + (t << 6));
  *v10 = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
}

- (void)computeInstanceTransformTranslate:(ARCoachingMetalSplineData *)self x1:(SEL)x1 t:(float)t index:(int)index
{
  v16 = v4;
  v17 = v5;
  *v18 = *&t;
  contents = [(MTLBuffer *)self->_instanceBuffer contents];
  v9 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:index];
  *&v10 = vmlaq_n_f32(*v18, vsubq_f32(v16, *v18), v17).u64[0];
  v18[0] = v9;
  [v9 setLocalTranslation:v10];

  v19 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:index];
  objc_msgSend_transform(v19);
  v11 = (contents + (index << 6));
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
}

- (void)computeInstanceTransformTranslate:(int)translate index:
{
  v12 = v3;
  contents = [(MTLBuffer *)self->_instanceBuffer contents];
  v13 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:translate];
  [v13 setLocalTranslation:v12];

  v14 = [(NSArray *)self->_instanceTransforms objectAtIndexedSubscript:translate];
  objc_msgSend_transform(v14);
  v7 = (contents + (translate << 6));
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
}

@end