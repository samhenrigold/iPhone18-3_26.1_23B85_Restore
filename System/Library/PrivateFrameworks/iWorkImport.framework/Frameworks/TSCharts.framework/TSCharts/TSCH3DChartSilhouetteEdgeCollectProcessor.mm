@interface TSCH3DChartSilhouetteEdgeCollectProcessor
- (TSCH3DChartSilhouetteEdgeCollectProcessor)initWithEdgeDetectionParameters:(const EdgeDetectionParameters *)parameters;
- (id).cxx_construct;
- (int64_t)attribute:(id)attribute resource:(id)resource specs:(const AttributeSpecs *)specs;
- (void)submit:(id)submit;
@end

@implementation TSCH3DChartSilhouetteEdgeCollectProcessor

- (TSCH3DChartSilhouetteEdgeCollectProcessor)initWithEdgeDetectionParameters:(const EdgeDetectionParameters *)parameters
{
  v8 = objc_msgSend_processor(TSCH3DMatrixRenderProcessor, a2, v3, v4, v5);
  v11.receiver = self;
  v11.super_class = TSCH3DChartSilhouetteEdgeCollectProcessor;
  v9 = [(TSCH3DRetargetRenderProcessor *)&v11 initWithOriginal:v8];

  if (v9)
  {
    v9->_edgeDetectionParameters = *parameters;
  }

  return v9;
}

- (int64_t)attribute:(id)attribute resource:(id)resource specs:(const AttributeSpecs *)specs
{
  attributeCopy = attribute;
  resourceCopy = resource;
  if (specs->var0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DChartSilhouetteEdgeCollectProcessor attribute:resource:specs:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSelectedElementHighlightSceneObject.mm");
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, *&specs->var0, v22, v23, @"stride %lu offset %lu components %lu", specs->var0, specs->var1, specs->var2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v25, v26, v27, v28, v15, v20, 96, 0, "don't know how to deal with strided resource yet %@ specs %@", resourceCopy, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  if (qword_280A46550 == attributeCopy)
  {
    objc_msgSend_setVertices_(self, v9, v11, v12, v13, resourceCopy);
    v33 = -1;
  }

  else
  {
    v35.receiver = self;
    v35.super_class = TSCH3DChartSilhouetteEdgeCollectProcessor;
    v33 = [(TSCH3DRetargetRenderProcessor *)&v35 attribute:attributeCopy resource:resourceCopy specs:specs];
  }

  return v33;
}

- (void)submit:(id)submit
{
  submitCopy = submit;
  if (objc_msgSend_type(submitCopy, v5, v6, v7, v8) != 1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DChartSilhouetteEdgeCollectProcessor submit:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSelectedElementHighlightSceneObject.mm");
    v24 = objc_msgSend_type(submitCopy, v20, v21, v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v25, v26, v27, v28, v14, v19, 109, 0, "invalid primitive type %ld only triangles are supported", v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  if (!objc_msgSend_hasOffset(submitCopy, v9, v10, v11, v12) || (objc_msgSend_hasCount(submitCopy, v33, v34, v35, v36) & 1) == 0)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCH3DChartSilhouetteEdgeCollectProcessor submit:]");
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSelectedElementHighlightSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v45, v46, v47, v38, v43, 111, 0, "uanble to process primitive without count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
  }

  v52 = objc_msgSend_offset(submitCopy, v34, v35, v36);
  v57 = objc_msgSend_count(submitCopy, v53, v54, v55, v56);
  v62 = objc_msgSend_buffer(self->_vertices, v58, v59, v60, v61);
  v63 = sub_27616536C(v62);

  sub_276371C74(v158, v63, v52, v57, v64, v65, v66);
  v154 = v158;
  sub_2761F27A8(__p, 0xAAAAAAAAAAAAAAABLL * ((v158[0][1] - *v158[0]) >> 2));
  v157[0] = 0;
  v157[1] = 0;
  v156 = v157;
  if (v159 >= 3)
  {
    v70 = 0;
    v71 = v159 / 3;
    do
    {
      v72 = 0;
      v143.i64[0] = sub_276370790(v158, v70, v67, v68, v69);
      do
      {
        sub_27637086C(v158, &v143, &v150, v68, v69);
        LODWORD(v67) = v150;
        if (*&v150 != 0.0 || (LODWORD(v67) = DWORD1(v150), *(&v150 + 1) != 0.0) || (LODWORD(v67) = DWORD2(v150), *(&v150 + 2) != 0.0))
        {
          sub_2763709F4(&v143, v72, &v150, v67, v68, v69);
          *&v67 = sub_276370B00(&v154, &v143, &v150, v73, v74, v75);
        }

        ++v72;
      }

      while (v72 != 3);
      ++v70;
    }

    while (v70 != v71);
  }

  v76 = objc_msgSend_matrix(self, v67, v68, v69);
  v81 = objc_msgSend_current(v76, v77, v78, v79, v80);
  v82 = v81[1];
  v150 = *v81;
  v151 = v82;
  v83 = v81[3];
  v152 = v81[2];
  v153 = v83;
  v86 = sub_276154554(&v150, &v143);
  v135 = v143.f32[1];
  v136 = v143.f32[0];
  *&v85 = v144;
  v133 = v144;
  v134 = v143.f32[2];
  v131 = v146;
  v132 = v145;
  *&v87 = v147;
  v86.f32[0] = v148;
  v129 = v148;
  v130 = v147;
  v88 = v149;
  edges = self->_edges;
  if (!edges)
  {
    v90 = objc_alloc_init(TSCH3Dvec3DataBuffer);
    v91 = self->_edges;
    self->_edges = v90;

    edges = self->_edges;
  }

  v92 = objc_msgSend_container(edges, v84, *v86.i64, v87, v85);
  v96 = v156;
  if (v156 != v157)
  {
    v97 = v92;
    LODWORD(v93) = 1016003125;
    do
    {
      if (((v96[9] | v96[8]) & 0x8000000000000000) == 0)
      {
        sub_276370D48(&v143, &v154, v96 + 64, v93, v94, v95);
        v98 = v143;
        v100 = v144;
        v99 = v145;
        v101 = (*(v96 + 11) + *(v96 + 14)) * 0.5;
        v141 = vmul_f32(vadd_f32(*(v96 + 36), v96[6]), 0x3F0000003F000000);
        v142 = v101;
        sub_276154744(&v141, &v150, &v139, 0.0000305175853);
        *&v93 = ((v131 * v100) + (v134 * v98.f32[3])) + (v88 * v99);
        *&v94 = ((v133 * v100) + (v136 * v98.f32[3])) + (v130 * v99);
        v102 = ((v132 * v100) + (v135 * v98.f32[3])) + (v129 * v99);
        v103 = 1.0 / sqrtf(((v102 * v102) + (*&v94 * *&v94)) + (*&v93 * *&v93));
        *&v93 = *&v93 * v103;
        v104 = v102 * v103;
        *&v94 = *&v94 * v103;
        v105 = ((v131 * v98.f32[1]) + (v134 * v98.f32[0])) + (v88 * v98.f32[2]);
        *v110.i32 = ((v133 * v98.f32[1]) + (v136 * v98.f32[0])) + (v130 * v98.f32[2]);
        v106 = ((v132 * v98.f32[1]) + (v135 * v98.f32[0])) + (v129 * v98.f32[2]);
        v107 = 1.0 / sqrtf(((v106 * v106) + (*v110.i32 * *v110.i32)) + (v105 * v105));
        v108 = v105 * v107;
        v109 = v106 * v107;
        *v110.i32 = *v110.i32 * v107;
        v111 = 1.0 / sqrtf(((v139.f32[1] * v139.f32[1]) + (v139.f32[0] * v139.f32[0])) + (v140 * v140));
        v112 = -(v139.f32[0] * v111);
        v113 = -(v139.f32[1] * v111);
        v114 = -(v140 * v111);
        v115 = ((v109 * v113) + (v112 * *v110.i32)) + (v114 * v108);
        *&v93 = ((v104 * v113) + (v112 * *&v94)) + (v114 * *&v93);
        v95 = 0.0;
        *&v94 = v115 >= 0.0 ? 0.0 : -1.0;
        v116 = v115 <= 0.0 ? *&v94 : 1.0;
        v117 = *&v93 <= 0.0;
        *&v93 = *&v93 >= 0.0 ? 0.0 : -1.0;
        v118 = v117 ? *&v93 : 1.0;
        if (self->_edgeDetectionParameters.detectSharpEdges && (*&v93 = cosf(self->_edgeDetectionParameters.sharpEdgeThreshold * 0.017453), *&v95 = v143.f32[1] * v144, *&v94 = ((v143.f32[1] * v144) + (v143.f32[0] * v143.f32[3])) + (v143.f32[2] * v145), *&v94 <= *&v93) || self->_edgeDetectionParameters.detectSilhouetteEdges && v116 != v118)
        {
          v119 = *(v96 + 9);
          v120 = *(v96 + 10);
          v121 = *(v96 + 11);
          *v110.i32 = *(&v153 + 3) + (((v120 * *(&v151 + 3)) + (*(&v150 + 3) * v119)) + (*(&v152 + 3) * v121));
          v137 = vdiv_f32(vadd_f32(*&v153, vmla_n_f32(vmla_n_f32(vmul_n_f32(*&v151, v120), *&v150, v119), *&v152, v121)), vdup_lane_s32(v110, 0));
          v138 = (*(&v153 + 2) + (((v120 * *(&v151 + 2)) + (*(&v150 + 2) * v119)) + (*(&v152 + 2) * v121))) / *v110.i32;
          sub_2761C14E8(v97, &v137);
          v122 = *(v96 + 12);
          v123 = *(v96 + 13);
          v124 = *(v96 + 14);
          *v125.i32 = *(&v153 + 3) + (((v123 * *(&v151 + 3)) + (*(&v150 + 3) * v122)) + (*(&v152 + 3) * v124));
          v137 = vdiv_f32(vadd_f32(*&v153, vmla_n_f32(vmla_n_f32(vmul_n_f32(*&v151, v123), *&v150, v122), *&v152, v124)), vdup_lane_s32(v125, 0));
          v138 = (*(&v153 + 2) + (((v123 * *(&v151 + 2)) + (*(&v150 + 2) * v122)) + (*(&v152 + 2) * v124))) / *v125.i32;
          sub_2761C14E8(v97, &v137);
        }
      }

      v126 = v96[1];
      if (v126)
      {
        do
        {
          v127 = v126;
          v126 = *v126;
        }

        while (v126);
      }

      else
      {
        do
        {
          v127 = v96[2];
          v128 = *v127 == v96;
          v96 = v127;
        }

        while (!v128);
      }

      v96 = v127;
    }

    while (v127 != v157);
  }

  sub_276372980(&v156, v157[0]);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (id).cxx_construct
{
  *(self + 12) = 257;
  *(self + 7) = 1106247680;
  return self;
}

@end