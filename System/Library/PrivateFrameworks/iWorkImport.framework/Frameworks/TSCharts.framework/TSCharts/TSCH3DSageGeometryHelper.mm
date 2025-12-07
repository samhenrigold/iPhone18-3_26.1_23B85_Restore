@interface TSCH3DSageGeometryHelper
+ (CGRect)computeSageChartAreaBoundsForChartInfo:(id)info geometryRect:(CGRect)rect returningContainingViewportSize:(id *)size;
- (BOOL)p_hasValidContainingViewport;
- (CGRect)computeSageLayoutCBBForSpiceDoc:(BOOL)doc;
@end

@implementation TSCH3DSageGeometryHelper

+ (CGRect)computeSageChartAreaBoundsForChartInfo:(id)info geometryRect:(CGRect)rect returningContainingViewportSize:(id *)size
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  infoCopy = info;
  v12 = sub_27635FB94(__p);
  v16 = objc_msgSend_create3DSceneWithLayoutSettings_styleProvidingSource_(infoCopy, v13, v12, v14, v15, __p, 0);
  objc_msgSend_setIsFixedPosition_forScene_(TSCH3DChartValueAxisTitleSceneObject, v17, v18, v19, v20, 1, v16);
  v25 = objc_msgSend_helperWithInfo_(TSCH3DChartResizerHelper, v21, v22, v23, v24, infoCopy);
  v140.origin.x = x;
  v140.origin.y = y;
  v140.size.width = width;
  v140.size.height = height;
  v123 = v25;
  MinX = CGRectGetMinX(v140);
  v141.origin.x = x;
  v141.origin.y = y;
  v141.size.width = width;
  v141.size.height = height;
  MinY = CGRectGetMinY(v141);
  v142.origin.x = x;
  v142.origin.y = y;
  v142.size.width = width;
  v142.size.height = height;
  MaxX = CGRectGetMaxX(v142);
  v143.origin.x = x;
  v143.origin.y = y;
  v143.size.width = width;
  v143.size.height = height;
  MaxY = CGRectGetMaxY(v143);
  *&v30 = MinX;
  *&v31 = MinY;
  *&v32 = MaxX;
  __p[0] = __PAIR64__(LODWORD(v31), LODWORD(v30));
  *&MaxY = MaxY;
  __p[1] = __PAIR64__(LODWORD(MaxY), v32);
  v34 = objc_msgSend_boundsLayoutResizedForScene_bounds_resizeStartingSize_mode_returningResultSize_(v25, v33, MaxY, v30, v31, v16, __p, 0, 2, 0);
  objc_msgSend_invalidateBounds(v34, v35, v36, v37, v38);
  objc_msgSend_setMode_(v34, v39, v40, v41, v42, 4);
  v47 = objc_msgSend_projectedBounds(v34, v43, v44, v45, v46);
  v138 = xmmword_2764D5ED0;
  sub_2761526F4(&v138, v47 + 2, v124);
  *__p = *v124;
  v133 = v47;
  v134 = 1.0;
  v135 = 0;
  v136 = 0;
  *&v48 = sub_276152C5C(__p, v47 + 10, v124).u64[0];
  sub_27615294C(v124, &v47[12], &v137, v48, v49, v50, v51);
  v56 = v137;
  if (size)
  {
    if (*size)
    {
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "+[TSCH3DSageGeometryHelper computeSageChartAreaBoundsForChartInfo:geometryRect:returningContainingViewportSize:]");
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageGeometryHelper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 116, 0, "expected nil value for '%{public}s'", "*sizeValuePointer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
    }

    v72 = MEMORY[0x277CCAE60];
    if (v34)
    {
      objc_msgSend_containingViewport(v34, v53, v54, v55);
      v73 = vcvtq_f64_f32(vcvt_f32_s32(__p[0]));
      objc_msgSend_valueWithCGSize_(v72, v74, v73.f64[0], v73.f64[1], v75);
    }

    else
    {
      __p[0] = 0;
      objc_msgSend_valueWithCGSize_(MEMORY[0x277CCAE60], v52, 0.0, 0.0, v55);
    }
    *size = ;
  }

  else
  {
    v76 = MEMORY[0x277D81150];
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "+[TSCH3DSageGeometryHelper computeSageChartAreaBoundsForChartInfo:geometryRect:returningContainingViewportSize:]");
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v79, v80, v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageGeometryHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v83, v84, v85, v86, v77, v82, 114, 0, "invalid nil value for '%{public}s'", "sizeValuePointer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89, v90);
  }

  if (byte_280A46430 == 1)
  {
    v91 = objc_opt_class();
    v92 = NSStringFromSelector(a2);
    v144.origin.x = x;
    v144.origin.y = y;
    v144.size.width = width;
    v144.size.height = height;
    v121 = v92;
    v120 = NSStringFromCGRect(v144);
    if (v34)
    {
      objc_msgSend_containingViewport(v34, v93, v94, v95);
      v96 = v131;
    }

    else
    {
      v96 = 0;
      v131 = 0;
    }

    v97 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "ivec2(%d, %d)", v96, HIDWORD(v96));
    if (SHIBYTE(v133) >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v97, v98, v99, v100, v101, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v97, v98, v99, v100, v101, __p[0]);
    }
    v102 = ;
    if (SHIBYTE(v133) < 0)
    {
      operator delete(__p[0]);
    }

    v145.origin.x = *&v56;
    v145.origin.y = *(&v56 + 1);
    v145.size.width = (*(&v56 + 2) - *&v56);
    v145.size.height = (*(&v56 + 3) - *(&v56 + 1));
    v103 = NSStringFromCGRect(v145);
    v138 = xmmword_2764D5ED0;
    sub_2761526F4(&v138, v47 + 10, v124);
    *__p = *v124;
    v133 = v47;
    v134 = 1.0;
    v135 = 0;
    v136 = 0;
    sub_2761526F4(__p, v47 + 14, v124);
    v130 = vmulq_n_f32(*v124, v134);
    v104 = MEMORY[0x277CCACA8];
    sub_276152EB4(v130.f32, v124);
    if (SHIBYTE(v125) >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v104, v105, v106, v107, v108, v124);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v104, v105, v106, v107, v108, v124[0]);
    }
    v109 = ;
    if (SHIBYTE(v125) < 0)
    {
      operator delete(v124[0]);
    }

    v137 = xmmword_2764D5ED0;
    sub_2761526F4(&v137, v47 + 2, &v138);
    *v124 = v138;
    v125 = v47;
    v126 = 1.0;
    v127 = 0;
    v128 = 0;
    sub_2761526F4(v124, v47 + 14, &v138);
    v129 = vmulq_n_f32(v138, v126);
    v110 = MEMORY[0x277CCACA8];
    sub_276152EB4(v129.f32, &v138);
    if (v139 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v110, v111, v112, v113, v114, &v138);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v110, v111, v112, v113, v114, v138.i64[0]);
    }
    v115 = ;
    if (v139 < 0)
    {
      operator delete(v138.i64[0]);
    }

    NSLog(&cfstr_PRectCvResultB.isa, v91, self, v121, v120, v102, v103, v109, v115);
  }

  v116 = *&v56;
  v117 = *(&v56 + 1);
  v118 = (*(&v56 + 2) - *&v56);
  v119 = (*(&v56 + 3) - *(&v56 + 1));
  result.size.height = v119;
  result.size.width = v118;
  result.origin.y = v117;
  result.origin.x = v116;
  return result;
}

- (BOOL)p_hasValidContainingViewport
{
  v5 = objc_msgSend_objectValueForProperty_(self->super._chartInfo, a2, v2, v3, v4, 1074);
  if (v5)
  {
    objc_msgSend_containingViewportForVector_(TSCH3DChartResizerHelper, v6, v7, v8);
    v10 = v12 > 0 && v13 > 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGRect)computeSageLayoutCBBForSpiceDoc:(BOOL)doc
{
  docCopy = doc;
  if (byte_280A46430 == 1)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    NSLog(&cfstr_PBegin.isa, v9, self, v10);
  }

  v11 = objc_msgSend_upgraderWithChartInfo_(TSCH3DSageGeometryHelperLimitingSeriesUpgrader, a2, v3, v4, v5, self->super._chartInfo);
  objc_msgSend_naturalSize(self, v12, v13, v14, v15);
  objc_msgSend_upgradeForSpice_naturalSize_(v11, v16, v17, v18, v19, docCopy);
  v24 = objc_msgSend_boundsLayout(v11, v20, v21, v22, v23);
  if (objc_msgSend_p_hasValidContainingViewport(self, v25, v26, v27, v28))
  {
    v33 = v24;
    if (v24)
    {
      goto LABEL_8;
    }
  }

  else
  {
    objc_msgSend_naturalSize(self, v29, v30, v31, v32);
    *&v34 = v34;
    *&v35 = v35;
    __p[0] = __PAIR64__(LODWORD(v35), LODWORD(v34));
    v33 = objc_msgSend_boundsLayoutByResizingToLayoutSize_(v11, v36, v34, v35, v37, __p);

    if (v33)
    {
      goto LABEL_8;
    }
  }

  v38 = MEMORY[0x277D81150];
  v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "[TSCH3DSageGeometryHelper computeSageLayoutCBBForSpiceDoc:]");
  v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageGeometryHelper.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 145, 0, "invalid nil value for '%{public}s'", "boundsLayout");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
LABEL_8:
  v140 = objc_msgSend_projectedBounds(v33, v29, v30, v31, v32);
  v141 = 1.0;
  v142 = 0;
  v143 = 0;
  v144 = xmmword_2764D5ED0;
  sub_2761526F4(&v144, v140 + 10, &v145);
  *__p = v145;
  v135 = v140;
  v136 = v141;
  v137 = v142;
  v138 = v143;
  sub_2761526F4(__p, v140 + 14, &v145);
  v139 = vmulq_n_f32(v145, v136);
  v55 = objc_msgSend_resizerHelper(v11, v53, *v139.i64, *v145.i64, v54);

  if (!v55)
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "[TSCH3DSageGeometryHelper computeSageLayoutCBBForSpiceDoc:]");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageGeometryHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v68, v69, v70, v61, v66, 149, 0, "invalid nil value for '%{public}s'", "upgrader.resizerHelper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
  }

  v75 = objc_msgSend_resizerHelper(v11, v56, v57, v58, v59);
  v79 = v75;
  if (v75)
  {
    objc_msgSend_chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter_(v75, v76, v77, v78);
  }

  else
  {
    v133 = 0;
  }

  v80 = v139.f32[3] - v139.f32[1];
  if ((v139.f32[2] - v139.f32[0]) < 0.0 || v80 < 0.0)
  {
    v84 = *(&v133 + 1);
    v85 = v133;
    LODWORD(v82) = HIDWORD(v85);
    LODWORD(v83) = v85;
    v81 = *&v133;
  }

  else
  {
    v81 = *&v133 + 0.0;
    v82 = *(&v133 + 1) + 0.0;
    v83 = (v139.f32[2] - v139.f32[0]) + *&v133;
    v84 = v80 + *(&v133 + 1);
  }

  v86 = v81;
  v87 = v82;
  v88 = (v83 - v81);
  v89 = (v84 - v82);
  if (byte_280A46430 == 1)
  {
    v90 = objc_opt_class();
    v130 = NSStringFromSelector(a2);
    v95 = objc_msgSend_boundsLayout(v11, v91, v92, v93, v94);
    v129 = v95;
    if (v95)
    {
      objc_msgSend_containingViewport(v95, v96, v97, v98);
      v99 = v132;
    }

    else
    {
      v99 = 0;
      v132 = 0;
    }

    v100 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "ivec2(%d, %d)", v99, HIDWORD(v99));
    if (SHIBYTE(v135) >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v100, v101, v102, v103, v104, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v100, v101, v102, v103, v104, __p[0]);
    }
    v105 = ;
    if (SHIBYTE(v135) < 0)
    {
      operator delete(__p[0]);
    }

    v106 = MEMORY[0x277CCACA8];
    sub_276152EB4(v139.f32, __p);
    if (SHIBYTE(v135) >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v106, v107, v108, v109, v110, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v106, v107, v108, v109, v110, __p[0]);
    }
    v111 = ;
    if (SHIBYTE(v135) < 0)
    {
      operator delete(__p[0]);
    }

    v144 = xmmword_2764D5ED0;
    sub_2761526F4(&v144, v140 + 2, &v145);
    *__p = v145;
    v135 = v140;
    v136 = v141;
    v137 = v142;
    v138 = v143;
    sub_2761526F4(__p, v140 + 14, &v145);
    v131 = vmulq_n_f32(v145, v136);
    v112 = MEMORY[0x277CCACA8];
    sub_276152EB4(v131.f32, &v145);
    if (v146 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v112, v113, v114, v115, v116, &v145);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v112, v113, v114, v115, v116, v145.i64[0]);
    }
    v117 = ;
    if (v146 < 0)
    {
      operator delete(v145.i64[0]);
    }

    v118 = MEMORY[0x277CCACA8];
    sub_276152FD4(&v145, "vec2(%f, %f)", *&v133, *(&v133 + 1));
    if (v146 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v118, v119, v120, v121, v122, &v145);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v118, v119, v120, v121, v122, v145.i64[0]);
    }
    v123 = ;
    if (v146 < 0)
    {
      operator delete(v145.i64[0]);
    }

    v147.origin.x = v86;
    v147.origin.y = v87;
    v147.size.width = v88;
    v147.size.height = v89;
    v124 = NSStringFromCGRect(v147);
    NSLog(&cfstr_PCvCbbOrientOf.isa, v90, self, v130, v105, v111, v117, v123, v124);
  }

  v125 = v86;
  v126 = v87;
  v127 = v88;
  v128 = v89;
  result.size.height = v128;
  result.size.width = v127;
  result.origin.y = v126;
  result.origin.x = v125;
  return result;
}

@end