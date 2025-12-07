@interface TSCH3DGetSelectionKnobsPositionsRenderProcessor
- (tmat4x4<float>)modelViewNormalizedProjection;
- (void)submit:(id)submit;
@end

@implementation TSCH3DGetSelectionKnobsPositionsRenderProcessor

- (tmat4x4<float>)modelViewNormalizedProjection
{
  v8 = objc_msgSend_matrix(self, v3, v4, v5, a3);
  if (!v8)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DGetSelectionKnobsPositionsRenderProcessor modelViewNormalizedProjection]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetSelectionKnobsPositionsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 476, 0, "invalid nil value for '%{public}s'", "transforms");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v36 = 0;
  v35 = 0;
  v38 = 0;
  v39 = 0;
  v41 = xmmword_2764D5F60;
  v34 = 1056964608;
  v37 = 1056964608;
  v40 = 1056964608;
  v27 = objc_msgSend_projection(v8, 0.0000305175853, v10, v11);
  *&v28 = sub_2761558A0(&v34, v27, v42).u64[0];
  v32 = objc_msgSend_current(v8, v29, v28, v30, v31);
  sub_2761558A0(v42, v32, retstr);

  return result;
}

- (void)submit:(id)submit
{
  v144 = *MEMORY[0x277D85DE8];
  submitCopy = submit;
  v8 = objc_msgSend_sceneObjectDelegate(self, v4, v5, v6, v7);
  v13 = objc_msgSend_geometry(v8, v9, v10, v11, v12);

  if (v13)
  {
    if (!self->_projectedPoints)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCH3DGetSelectionKnobsPositionsRenderProcessor submit:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetSelectionKnobsPositionsPipeline.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 484, 0, "invalid nil value for '%{public}s'", "_projectedPoints");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }

    objc_msgSend_modelViewNormalizedProjection(self, v15, v16, v17);
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v36 = objc_msgSend_selectionKnobPositions(v13, v33, 0.0, v34, v35);
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, v38, v39, v40, &v127, v143, 16);
    if (v42)
    {
      v47 = *v128;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v128 != v47)
          {
            objc_enumerationMutation(v36);
          }

          v49 = *(*(&v127 + 1) + 8 * i);
          projectedPoints = self->_projectedPoints;
          if (v49)
          {
            objc_msgSend_value3(v49, v43, v44, v45);
            v52 = v125.f32[1];
            v51 = v125.f32[0];
            v53 = v126;
          }

          else
          {
            v126 = 0.0;
            v125 = 0;
            v53 = 0.0;
            v52 = 0.0;
            v51 = 0.0;
          }

          *v46.i32 = v142 + (((v52 * v136) + (v133 * v51)) + (v139 * v53));
          v54 = (v141 + (((v52 * v135) + (v132 * v51)) + (v138 * v53))) / *v46.i32;
          v55 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v134, v52), v131, v51), v137, v53);
          v56 = vdup_lane_s32(v46, 0);
          *&v124 = vdiv_f32(vadd_f32(v140, v55), v56);
          *(&v124 + 2) = v54;
          v57 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v41, *&v124, *&v56, *&v55, &v124);
          objc_msgSend_addObject_(projectedPoints, v58, v59, v60, v61, v57);
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v41, v43, v44, v45, &v127, v143, 16);
      }

      while (v42);
    }
  }

  else if (self->super._buffer)
  {
    objc_msgSend_normalizedKnobRadius(self, v14, v15, v16, v17);
    v63 = *&v62;
    objc_msgSend_modelViewNormalizedProjection(self, v62, v64, v65);
    v70 = objc_msgSend_sceneObjectDelegate(self, v66, v67, v68, v69);
    shouldMerge = objc_msgSend_shouldMerge(v70, v71, v72, v73, v74);

    if (shouldMerge)
    {
      v124 = xmmword_2764D5EE0;
      v77 = sub_2761654D0(self->super._buffer);
      v82 = *v77;
      if (*v77 == *(v77 + 8))
      {
        v85 = 3.4028e38;
        v87 = -3.4028e38;
        v88 = -3.4028e38;
        v86 = 3.4028e38;
      }

      else
      {
        do
        {
          v83 = v82[1];
          v84 = v82[2];
          *v81.i32 = v142 + (((v83 * v136) + (v133 * *v82)) + (v139 * v84));
          v125 = vdiv_f32(vadd_f32(v140, vmla_n_f32(vmla_n_f32(vmul_n_f32(v134, v83), v131, *v82), v137, v84)), vdup_lane_s32(v81, 0));
          *&v78 = sub_276152BD8(&v124, &v125);
          v82 += 4;
        }

        while (v82 != *(v77 + 8));
        v85 = *(&v124 + 1);
        v86 = *&v124;
        v87 = *(&v124 + 3);
        v88 = *(&v124 + 2);
      }

      v95 = objc_msgSend_sceneObjectDelegate(self, v76, v78, v79, v80);
      objc_msgSend_addLabelBoundsForMerging_(v95, v96, v86, v85, (v88 - v86), (v87 - v85));
    }

    else
    {
      v124 = xmmword_2764D5EE0;
      v90 = sub_2761654D0(self->super._buffer);
      v94 = *v90;
      if (*v90 == v90[1])
      {
        LODWORD(v92) = 2139095039;
        LODWORD(v91) = 2139095039;
      }

      else
      {
        do
        {
          v125 = *v94;
          *&v91 = sub_276152BD8(&v124, &v125);
          v94 += 2;
        }

        while (v94 != v90[1]);
        LODWORD(v92) = DWORD1(v124);
        LODWORD(v91) = v124;
      }

      if (*(&v124 + 2) >= *&v91 && *(&v124 + 3) >= *&v92)
      {
        v98 = *&v92 + *(&v124 + 3);
        LODWORD(v92) = 0.5;
        v99 = v98 * 0.5;
        v100 = v99 * v134.f32[0];
        v101 = v140.f32[0] + (((v99 * v134.f32[0]) + (v131.f32[0] * *&v91)) + (v137.f32[0] * 0.0));
        v102 = v99 * v134.f32[1];
        v103 = ((v99 * v134.f32[1]) + (v131.f32[1] * *&v91)) + (v137.f32[1] * 0.0);
        v104 = v99 * v136;
        *&v91 = v142 + ((v104 + (v133 * *&v91)) + (v139 * 0.0));
        *&v93 = v142 + ((v104 + (v133 * *(&v124 + 2))) + (v139 * 0.0));
        v105 = (v140.f32[0] + ((v100 + (v131.f32[0] * *(&v124 + 2))) + (v137.f32[0] * 0.0))) / *&v93;
        *&v93 = (v140.f32[1] + ((v102 + (v131.f32[1] * *(&v124 + 2))) + (v137.f32[1] * 0.0))) / *&v93;
        v125.f32[0] = (v101 / *&v91) - v63;
        v125.f32[1] = ((v140.f32[1] + v103) / *&v91) - (v63 * 0.5);
        *&v91 = *&v93 - (v63 * 0.5);
        v123[0] = v63 + v105;
        v123[1] = *&v91;
        v106 = self->_projectedPoints;
        v107 = objc_msgSend_vectorWithVec2_(TSCH3DVector, v89, v91, v92, v93, &v125);
        objc_msgSend_addObject_(v106, v108, v109, v110, v111, v107);

        v112 = self->_projectedPoints;
        v117 = objc_msgSend_vectorWithVec2_(TSCH3DVector, v113, v114, v115, v116, v123);
        objc_msgSend_addObject_(v112, v118, v119, v120, v121, v117);
      }
    }
  }
}

@end