@interface TSCH3DRayPickRenderProcessor
- (TSCH3DRayPickRenderProcessor)init;
- (id)matrix;
- (void)geometry:(id)geometry;
- (void)submit:(id)submit;
@end

@implementation TSCH3DRayPickRenderProcessor

- (TSCH3DRayPickRenderProcessor)init
{
  v6 = objc_msgSend_processor(TSCH3DMatrixRenderProcessor, a2, v2, v3, v4);
  v11.receiver = self;
  v11.super_class = TSCH3DRayPickRenderProcessor;
  v7 = [(TSCH3DRetargetRenderProcessor *)&v11 initWithOriginal:v6];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pickedPoints = v7->_pickedPoints;
    v7->_pickedPoints = v8;
  }

  return v7;
}

- (id)matrix
{
  objc_opt_class();
  v7 = objc_msgSend_original(self, v3, v4, v5, v6);
  v8 = TSUCheckedDynamicCast();

  if (!v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DRayPickRenderProcessor matrix]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 184, 0, "invalid nil value for '%{public}s'", "processor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  return v8;
}

- (void)geometry:(id)geometry
{
  geometryCopy = geometry;
  v9 = objc_msgSend_buffer(geometryCopy, v5, v6, v7, v8);
  buffer = self->_buffer;
  self->_buffer = v9;

  if (!geometryCopy || !self->_buffer)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DRayPickRenderProcessor geometry:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 191, 0, "geometry resource or buffer is nil %@", geometryCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30.receiver = self;
  v30.super_class = TSCH3DRayPickRenderProcessor;
  [(TSCH3DRenderProcessor *)&v30 geometry:geometryCopy];
}

- (void)submit:(id)submit
{
  submitCopy = submit;
  buffer = self->_buffer;
  if (!buffer)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DRayPickRenderProcessor submit:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 196, 0, "invalid nil value for '%{public}s'", "_buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    buffer = self->_buffer;
  }

  if (objc_msgSend_componentByteSize(buffer, v4, v6, v7, v8) != 4)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCH3DRayPickRenderProcessor submit:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 197, 0, "componentByteSize is not float");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }

  if (objc_msgSend_components(self->_buffer, v25, v26, v27, v28) != 3)
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "[TSCH3DRayPickRenderProcessor submit:]");
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v55, v56, v57, v58, v49, v54, 198, 0, "components is not 3");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
  }

  if (objc_msgSend_type(submitCopy, v44, v45, v46, v47) != 1)
  {
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "[TSCH3DRayPickRenderProcessor submit:]");
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v74, v75, v76, v77, v68, v73, 200, 0, "geometry is not triangles");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
  }

  if (objc_msgSend_hasOffset(submitCopy, v63, v64, v65, v66))
  {
    v86 = objc_msgSend_offset(submitCopy, v83, v84, v85);
  }

  else
  {
    v86 = 0;
  }

  if (objc_msgSend_hasCount(submitCopy, v82, v83, v84, v85))
  {
    v91 = objc_msgSend_count(submitCopy, v87, v88, v89, v90);
  }

  else
  {
    v91 = objc_msgSend_count(self->_buffer, v87, v88, v89, v90);
  }

  v95 = objc_msgSend_matrix(self, v92, v93, v94);
  v99 = objc_msgSend_projection(v95, v96, v97, v98);
  v104 = objc_msgSend_current(v95, v100, v101, v102, v103);
  sub_2761558A0(v99, v104, &v176);
  sub_276154AF4(&self->_position, &v176, v175, v105);
  *&v169[3] = 0;
  *&v169[1] = 0;
  v170 = 0;
  v171 = 0;
  v173 = xmmword_2764D5F60;
  v169[0] = 1056964608;
  v169[5] = 1056964608;
  v172 = 1056964608;
  sub_2761558A0(v169, &v176, v174);
  v176 = v174[0];
  v177 = v174[1];
  v178 = v174[2];
  v179 = v174[3];
  v106 = v86;
  v107 = *sub_27616536C(self->_buffer);
  HIDWORD(v109) = 2139095039;
  v174[0] = xmmword_2764D5EE0;
  if (v91 > v86)
  {
    v110 = v107 + 12 * v86 + 4;
    do
    {
      if (self->_slack <= 0.0)
      {
        memset(v169, 0, 12);
        v167 = 0;
        v168 = 0;
        v166 = 0;
        if (sub_2761549A0(v175, (v107 + 12 * v106), (v107 + 12 * v106 + 12), (v107 + 12 * v106 + 24), v169, &v167, &v166) && v166)
        {
          v118 = objc_msgSend_currentSceneObject(self->_sceneObjectDelegate, v115, v109, v116, v117);
          sceneObjectDelegate = self->_sceneObjectDelegate;
          if (sceneObjectDelegate)
          {
            objc_msgSend_currentElement(sceneObjectDelegate, v119, v120, v121);
          }

          else
          {
            v165 = 0;
          }

          v123 = objc_msgSend_projection(v95, v119, v120, v121);
          v128 = objc_msgSend_current(v95, v124, v125, v126, v127);
          v164 = 0;
          v133 = objc_msgSend_pickedPointWithSceneObject_element_projection_transform_objectSpacePoint_centerProjectionPoint_(TSCH3DPickedPoint, v129, v130, v131, v132, v118, &v165, v123, v128, v169, &v164);

          objc_msgSend_addObject_(self->_pickedPoints, v134, v135, v136, v137, v133);
        }
      }

      else
      {
        v111 = v110;
        v112 = 3;
        do
        {
          v113 = *(v111 - 1);
          v114 = v111[1];
          *v108.i32 = v179.f32[3] + (((*v111 * v177.f32[3]) + (v176.f32[3] * v113)) + (v178.f32[3] * v114));
          *v169 = vdiv_f32(vadd_f32(*v179.f32, vmla_n_f32(vmla_n_f32(vmul_n_f32(*v177.f32, *v111), *v176.f32, v113), *v178.f32, v114)), vdup_lane_s32(v108, 0));
          *&v109 = sub_276152BD8(v174, v169);
          v111 += 3;
          --v112;
        }

        while (v112);
      }

      v106 += 3;
      v110 += 36;
    }

    while (v106 < v91);
  }

  *&v109 = self->_slack;
  if (*&v109 > 0.0)
  {
    v138.i64[0] = v174[0].i64[0];
    v150 = vcgt_f32(*v174[0].f32, *&v174[0].u32[2]);
    if ((v150.i32[0] | v150.i32[1]))
    {
      v138 = 0uLL;
    }

    else
    {
      v138.i64[1] = v174[0].i64[1];
    }

    v139 = vdupq_lane_s32(*&v109, 0);
    v140.i64[0] = vsubq_f32(v138, v139).u64[0];
    v140.i64[1] = vaddq_f32(v138, v139).i64[1];
    v174[0] = v140;
    if (sub_276167BFC(v174[0].f32, &self->_position))
    {
      v145 = objc_msgSend_currentSceneObject(self->_sceneObjectDelegate, v141, v142, v143, v144);
      v149 = self->_sceneObjectDelegate;
      if (v149)
      {
        objc_msgSend_currentElement(v149, v146, v147, v148);
      }

      else
      {
        v167 = 0;
      }

      v151 = objc_msgSend_projection(v95, v146, v147, v148);
      v156 = objc_msgSend_current(v95, v152, v153, v154, v155);
      memset(v169, 0, 12);
      v165 = vmul_f32(vadd_f32(*v174[0].f32, *&v174[0].u32[2]), 0x3F0000003F000000);
      v159 = objc_msgSend_pickedPointWithSceneObject_element_projection_transform_objectSpacePoint_centerProjectionPoint_(TSCH3DPickedPoint, v157, *&v165, 0.0000305175853, v158, v145, &v167, v151, v156, v169, &v165);

      objc_msgSend_addObject_(self->_pickedPoints, v160, v161, v162, v163, v159);
    }
  }
}

@end