@interface GESSAlgIsometricParameterizeExtended
- (BOOL)run:(id)run;
- (BOOL)setFaceIntensity:(float *)intensity size:(unint64_t)size;
- (id).cxx_construct;
- (id)returnReport;
@end

@implementation GESSAlgIsometricParameterizeExtended

- (BOOL)setFaceIntensity:(float *)intensity size:(unint64_t)size
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, intensity, size, 0);
  faceIntensityData = self->_faceIntensityData;
  self->_faceIntensityData = v9;

  return 1;
}

- (BOOL)run:(id)run
{
  v104 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  runCopy = run;
  objc_msgSend_setAlgStatus_(self, v5, 1, v6);
  if ((objc_msgSend_valid(runCopy, v7, v8, v9) & 1) != 0 && objc_msgSend_meshType(runCopy, v10, v11, v12) == 1)
  {
    v19 = objc_msgSend_meshImpl(runCopy, v13, v14, v15);
    options = self->_options;
    if (!options)
    {
      v21 = objc_alloc_init(GESSAlgIsometricParameterizeOptions);
      v22 = self->_options;
      self->_options = v21;

      options = self->_options;
    }

    v78 = 10;
    v79 = 1036831949;
    v80 = 0;
    v81 = 100000;
    v82 = 0;
    v88 = 256;
    if (objc_msgSend_packingMethod(options, v16, v17, v18) == 1)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    v85 = v26;
    v86 = 2 * (objc_msgSend_overlapCheckMode(self->_options, v23, v24, v25) == 1);
    v87 = objc_msgSend_enableUVUtilizationOptimization(self->_options, v27, v28, v29);
    v83 = objc_msgSend_textureResolution(self->_options, v30, v31, v32);
    v84 = objc_msgSend_numOfTextures(self->_options, v33, v34, v35);
    objc_msgSend_gutter(self->_options, v36, v37, v38);
    v89 = v39;
    v78 = objc_msgSend_targetNumOfCharts(self->_options, v40, v41, v42);
    objc_msgSend_maximumStretchRatio(self->_options, v43, v44, v45);
    v79 = v46;
    HIBYTE(v88) = objc_msgSend_enableParallel(self->_options, v47, v48, v49);
    v80 = objc_msgSend_skipInitialStretchOptimization(self->_options, v50, v51, v52);
    v81 = objc_msgSend_optimizeBoundaryIfFaceNumberLessThan(self->_options, v53, v54, v55);
    v82 = objc_msgSend_repairUVSelfIntersection(self->_options, v56, v57, v58);
    faceIntensityData = self->_faceIntensityData;
    if (faceIntensityData)
    {
      v63 = objc_msgSend_bytes(faceIntensityData, v59, v60, v61);
      sub_24BC836D4(v95, "f:imt");
      v101 = 0;
      v102 = 0;
      v64 = sub_24BCB6470((v19 + 56), &v101, v95);
      v77 = v64;
      if (v96 < 0)
      {
        operator delete(v95[0]);
      }

      if (v64 == -1)
      {
        sub_24BC836D4(v95, "f:imt");
        sub_24BCB3C88(v19, &v77, v95);
      }

      if (*(v19 + 112) != *(v19 + 104))
      {
        v66 = 0;
        v67 = 1;
        do
        {
          LODWORD(v65) = *(v63 + 4 * v66);
          v68 = (*(v19 + 56) + 16 * v77);
          v70 = *v68;
          v69 = v68[1];
          if (v69)
          {
            atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
            v76 = v65;
            sub_24BC9EC78(v69);
            v65 = v76;
          }

          *&v71 = v65;
          *(&v71 + 1) = v65;
          *(*(v70 + 40) + 16 * v66) = v71;
          v66 = v67++;
        }

        while (v66 < (*(v19 + 112) - *(v19 + 104)) >> 2);
      }

      LOBYTE(v88) = 1;
    }

    else
    {
      LOBYTE(v88) = 0;
    }

    v97 = 0;
    v98[3] = 0;
    v99[3] = 0;
    v100[3] = 0;
    v101 = &unk_285F95D48;
    v102 = &selfCopy;
    v103 = &v101;
    sub_24BD55BF0(&v101, v100);
    sub_24BD55A9C(&v101);
    sub_24BCA1524(v91, v95);
    sub_24BCA2D38(v92, v98);
    sub_24BCA2DD0(v93, v99);
    sub_24BD55A04(v94, v100);
    v72 = sub_24BE4D100(v19, &v78, v91);
    sub_24BD55A9C(v94);
    sub_24BC9F10C(v93);
    sub_24BC9F08C(v92);
    sub_24BC9F00C(v91);
    if (v72)
    {
      objc_msgSend_setAlgStatus_(selfCopy, v73, 3, v74, v76);
    }

    else
    {
      objc_msgSend_setAlgStatus_(selfCopy, v73, 2, v74, v76);
    }

    sub_24BD55A9C(v100);
    sub_24BC9F10C(v99);
    sub_24BC9F08C(v98);
    sub_24BC9F00C(v95);
  }

  else
  {
    LOBYTE(v72) = 0;
  }

  return v72;
}

- (id)returnReport
{
  v3 = objc_alloc_init(GESSAlgIsometricParameterizeReport);
  if (objc_msgSend_algStatus(self, v4, v5, v6) && objc_msgSend_algStatus(self, v7, v8, v9) != 1)
  {
    v13 = objc_msgSend_algStatus(self, v10, v11, v12) == 3;
    objc_msgSend_setSuccess_(v3, v14, v13, v15);
    p_report = &self->_report;
    objc_msgSend_setChartingTime_(v3, v17, v18, v19, p_report->chart_time);
    objc_msgSend_setInitialParameterizationTime_(v3, v20, v21, v22, p_report->initial_param_time);
    objc_msgSend_setSplitParameterizationTime_(v3, v23, v24, v25, p_report->split_param_time);
    objc_msgSend_setChartMergingTime_(v3, v26, v27, v28, p_report->chart_merge_time);
    objc_msgSend_setFixSelfIntersectionTime_(v3, v29, v30, v31, p_report->fix_self_intersect_time);
    objc_msgSend_setPackingTime_(v3, v32, v33, v34, p_report->pack_time);
    objc_msgSend_setNumOfCharts_(v3, v35, LODWORD(p_report->chart_number), v36);
    objc_msgSend_setNumOfPackedTextures_(v3, v37, LODWORD(p_report->pack_img_number), v38);
    *&v39 = p_report->max_stretch_ratio;
    objc_msgSend_setMaximumStretchRatio_(v3, v40, v41, v42, v39);
    *&v43 = p_report->avg_stretch_ratio;
    objc_msgSend_setAverageStretchRatio_(v3, v44, v45, v46, v43);
    *&v47 = p_report->self_intersect_ratio;
    objc_msgSend_setSelfIntersectionRatio_(v3, v48, v49, v50, v47);
    v52 = sub_24BD6A604(400, v51);
    if (p_report->error_code.__cat_ == v53 && p_report->error_code.__val_ == v52)
    {
      objc_msgSend_setParameterizeStatus_(v3, v53, 0, v54);
    }

    else
    {
      v55 = sub_24BD6A604(22, v53);
      if (p_report->error_code.__cat_ == v56 && p_report->error_code.__val_ == v55)
      {
        objc_msgSend_setParameterizeStatus_(v3, v56, 1, v57);
      }

      else
      {
        v58 = sub_24BD6A604(401, v56);
        if (p_report->error_code.__cat_ == v59 && p_report->error_code.__val_ == v58 || (v61 = sub_24BD6A604(403, v59), p_report->error_code.__cat_ == v59) && p_report->error_code.__val_ == v61)
        {
          objc_msgSend_setParameterizeStatus_(v3, v59, 2, v60);
        }

        else
        {
          v63 = sub_24BD6A604(0, v59);
          if (p_report->error_code.__cat_ == v64 && p_report->error_code.__val_ == v63)
          {
            objc_msgSend_setParameterizeStatus_(v3, v64, 3, v65);
          }

          else
          {
            sub_24BD6A604(402, v64);
            objc_msgSend_setParameterizeStatus_(v3, v66, 4, v67);
          }
        }
      }
    }
  }

  return v3;
}

- (id).cxx_construct
{
  p_report = &self->_report;
  self->_report.error_code.__val_ = 0;
  self->_report.error_code.__cat_ = std::system_category();
  *&p_report->chart_time = 0u;
  *&p_report->split_param_time = 0u;
  *&p_report->fix_self_intersect_time = 0u;
  *&p_report->pack_time = 0u;
  *(&p_report->pack_img_number + 4) = 0u;
  return self;
}

@end