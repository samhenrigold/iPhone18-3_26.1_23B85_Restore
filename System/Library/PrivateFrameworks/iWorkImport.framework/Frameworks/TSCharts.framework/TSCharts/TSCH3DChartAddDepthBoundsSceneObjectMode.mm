@interface TSCH3DChartAddDepthBoundsSceneObjectMode
- (float)p_factorToNearPlaneForScene:(id)scene;
- (void)getBounds:(id)bounds;
@end

@implementation TSCH3DChartAddDepthBoundsSceneObjectMode

- (float)p_factorToNearPlaneForScene:(id)scene
{
  v8 = objc_msgSend_clone(scene, a2, v3, v4, v5);
  v13 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v9, v10, v11, v12, v8);
  if (objc_msgSend_layoutConfigurationEnabled(v13, v14, v15, v16, v17))
  {
    if (v13)
    {
      objc_msgSend_originalInfoChartScale(v13, v19, v20, v21);
      v22 = v129;
    }

    else
    {
      v129 = 0uLL;
      v22 = 0uLL;
    }

    *__p = v22;
    objc_msgSend_setInfoChartScale_(v13, v18, *&v22, v20, v21, __p);
    if (v13)
    {
      objc_msgSend_originalRotation(v13, v28, v29, v30);
      v31 = v127;
      LODWORD(v32) = v128;
    }

    else
    {
      v128 = 0;
      v127 = 0;
      v31 = 0;
      v32 = 0.0;
    }

    __p[0] = v31;
    LODWORD(__p[1]) = LODWORD(v32);
    objc_msgSend_setRotation_(v13, v27, *&v31, v32, v30, __p);
    if (v8)
    {
      objc_msgSend_transform(v8, v33, v34, v35);
    }

    else
    {
      memset(v119, 0, sizeof(v119));
    }

    sub_276154554(v119, __p);
    v36 = *(__p + 1);
    LODWORD(v20) = __p[0];
    v37 = *&__p[1];
    v38 = v122;
    v117 = v121;
    v118 = *__p;
    v39 = v123;
    v41 = v124;
    v40 = v125;
    v19 = 0.0;
    v42 = v126;
    if (v13)
    {
      objc_msgSend_adjustedInfoChartScale(v13, 0.0, v20, v21);
      LODWORD(v19) = __p[1];
    }

    v43 = v37 + ((v36 * 0.0) + (v118 * 0.0));
    v44 = v39 + ((v38 * 0.0) + (v117 * 0.0));
    v45 = v42 + ((v40 * 0.0) + (v41 * 0.0));
    v46 = 1.0 / sqrtf(((v44 * v44) + (v43 * v43)) + (v45 * v45));
    *&v20 = v43 * v46;
    *&v21 = v44 * v46;
    v47 = v45 * v46;
    v23 = (v47 + ((*&v21 * 0.0) + (*&v20 * 0.0))) * *&v19;
    v25 = *&v20;
    v26 = *&v21;
    v24 = v47;
  }

  else
  {
    v23 = 1.0;
    v24 = 1.0;
    v25 = 0.0;
    v26 = 0.0;
  }

  v48 = objc_msgSend_camera(v8, v18, v19, v20, v21);
  v53 = v48;
  if (v48)
  {
    objc_msgSend_position(v48, v50, v51, v52);
    v54 = *&__p[1];
  }

  else
  {
    LODWORD(__p[1]) = 0;
    __p[0] = 0;
    v54 = 0.0;
  }

  v55 = objc_msgSend_lens(v53, v49, v50, v51, v52);
  objc_msgSend_near(v55, v56, v57, v58, v59);
  v61 = v60;

  if (v23 <= 0.00000011921)
  {
    v65 = MEMORY[0x277D81150];
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, 3.18618444e-58, v63, v64, "[TSCH3DChartAddDepthBoundsSceneObjectMode p_factorToNearPlaneForScene:]");
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAddBoundsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v72, v23, v73, v74, v66, v71, 136, 0, "invalid zlength %f", v23);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77, v78);
  }

  v79 = (v54 - v61) / v23;
  if (v79 <= 0.00000011921)
  {
    v80 = MEMORY[0x277D81150];
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, 3.18618444e-58, v63, v64, "[TSCH3DChartAddDepthBoundsSceneObjectMode p_factorToNearPlaneForScene:]");
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAddBoundsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v87, v79, v88, v89, v81, v86, 138, 0, "invalid factor %f", v79);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91, v92, v93);
  }

  if (byte_280A46430 == 1)
  {
    v94 = objc_opt_class();
    v95 = NSStringFromSelector(a2);
    if (v13)
    {
      objc_msgSend_infoChartScale(v13, v96, v97, v98);
      v99 = *v119;
      v100 = *(v119 + 1);
      v101 = *(v119 + 2);
      v102 = *(v119 + 3);
    }

    else
    {
      v119[0] = 0uLL;
      v102 = 0.0;
      v101 = 0.0;
      v100 = 0.0;
      v99 = 0.0;
    }

    v103 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec4(%f, %f, %f, %f)", v99, v100, v101, v102);
    if (v122 >= 0.0)
    {
      objc_msgSend_stringWithUTF8String_(v103, v104, v105, v106, v107, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v103, v104, v105, v106, v107, __p[0]);
    }
    v108 = ;
    if (SHIBYTE(v122) < 0)
    {
      operator delete(__p[0]);
    }

    v109 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec3(%f, %f, %f)", v25, v26, v24);
    if (v122 >= 0.0)
    {
      objc_msgSend_stringWithUTF8String_(v109, v110, v111, v112, v113, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v109, v110, v111, v112, v113, __p[0]);
    }
    v114 = ;
    v115 = v23;
    if (SHIBYTE(v122) < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PZlengthFFacto.isa, v94, self, v95, *&v115, v79, v108, v114);
  }

  return v79;
}

- (void)getBounds:(id)bounds
{
  boundsCopy = bounds;
  v10 = objc_msgSend_scene(boundsCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_elementsSceneFromScene_(self, v11, v12, v13, v14, v10);

  v66 = xmmword_2764D5F00;
  v67 = xmmword_2764D60B0;
  v68 = xmmword_2764D60C0;
  v69 = xmmword_2764D5F00;
  v70 = 0x80000000800000;
  v72 = 0;
  v73 = 0;
  __p = 0;
  if (objc_msgSend_hasObjectBoundsForScene_pipeline_returningObjectBounds_(self, v16, 2.84809454e-306, -1.40444743e306, v17, v15, boundsCopy, &v66))
  {
    objc_msgSend_p_factorToNearPlaneForScene_(self, v18, v19, v20, v21, v15);
    v64 = v66;
    v65 = v67;
    v62 = vext_s8(*&vextq_s8(v64, v64, 8uLL), *&v67, 4uLL);
    v63 = v22;
    sub_276154FD8(&v64, &v62);
    if (byte_280A46430 == 1)
    {
      v27 = objc_opt_class();
      v28 = NSStringFromSelector(a2);
      v29 = MEMORY[0x277CCACA8];
      sub_276166580(&v66, v74);
      if (v75 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v29, v30, v31, v32, v33, v74);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v29, v30, v31, v32, v33, v74[0]);
      }
      v34 = ;
      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      v35 = MEMORY[0x277CCACA8];
      sub_276152FD4(v74, "vec3(%f, %f, %f)", *v62.i32, *&v62.i32[1], v63);
      if (v75 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v35, v36, v37, v38, v39, v74);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v35, v36, v37, v38, v39, v74[0]);
      }
      v40 = ;
      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      v41 = MEMORY[0x277CCACA8];
      sub_276166580(&v64, v74);
      if (v75 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v41, v42, v43, v44, v45, v74);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v41, v42, v43, v44, v45, v74[0]);
      }
      v46 = ;
      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      NSLog(&cfstr_POriginalMaxEx.isa, v27, self, v28, v34, v40, v46);
    }

    v47 = objc_msgSend_processor(boundsCopy, v23, v24, v25, v26);
    v48 = sub_2761BFF34(&v64);
    objc_msgSend_geometry_(v47, v49, v50, v51, v52, v48);

    v57 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v53, v54, v55, v56, 5);
    objc_msgSend_submit_(v47, v58, v59, v60, v61, v57);
  }

  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }
}

@end