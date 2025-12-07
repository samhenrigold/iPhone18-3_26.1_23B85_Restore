@interface TSCH3DBarExtrusionGeometry
- (BarExtrusionSetting)extrusionSetting;
- (TSCH3DBarExtrusionGeometry)init;
- (id).cxx_construct;
- (id)selectionKnobPositions;
- (void)debug_printDataPoints;
- (void)generateArrays;
- (void)p_insertCrossPointsIntoVector:(void *)vector;
- (void)p_updateNormalizedSpineScaleMappingsUsingTransform:(void *)transform forSpineGenerator:(id)generator;
- (void)setExtrusionSetting:(BarExtrusionSetting *)setting;
@end

@implementation TSCH3DBarExtrusionGeometry

- (TSCH3DBarExtrusionGeometry)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DBarExtrusionGeometry;
  result = [(TSCH3DExtrusionGeometry *)&v3 init];
  if (result)
  {
    result->_scaleMappingStartingHeight = -1.0;
    result->_bottomCapScale = -1.0;
  }

  return result;
}

- (void)p_insertCrossPointsIntoVector:(void *)vector
{
  v33 = *MEMORY[0x277D85DE8];
  v31[0] = xmmword_2764D64C0;
  v31[1] = xmmword_2764D64D0;
  v31[2] = xmmword_2764D64E0;
  v31[3] = xmmword_2764D64F0;
  __asm { FMOV            V4.2S, #1.0 }

  v32 = _D4;
  v28[0] = xmmword_2764D64C0;
  v28[1] = xmmword_2764D64D0;
  v28[2] = xmmword_2764D64E0;
  v28[3] = xmmword_2764D64F0;
  v29 = _D4;
  v25[0] = xmmword_2764D6500;
  v25[1] = xmmword_2764D6510;
  v25[2] = xmmword_2764D6520;
  v25[3] = xmmword_2764D6530;
  v25[4] = xmmword_2764D6540;
  v25[5] = xmmword_2764D6550;
  v25[6] = xmmword_2764D6560;
  v25[7] = xmmword_2764D6570;
  v25[8] = xmmword_2764D6580;
  v25[9] = xmmword_2764D6590;
  v25[10] = xmmword_2764D65A0;
  v25[11] = xmmword_2764D65B0;
  v25[12] = xmmword_2764D65C0;
  v25[13] = xmmword_2764D65D0;
  v26 = 1065353216;
  crossType = self->_extrusionSetting.details.crossSection.crossType;
  switch(crossType)
  {
    case 3:
      sub_2761ECEC0(vector, *(vector + 1), v25, v27, 29);
      break;
    case 2:
      sub_2761ECEC0(vector, *(vector + 1), v31, &v33, 9);
      break;
    case 1:
      sub_2761ECEC0(vector, *(vector + 1), v28, v30, 9);
      break;
    default:
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, COERCE_DOUBLE(1065353216), -0.00000718798855, -0.00781250557, "[TSCH3DBarExtrusionGeometry p_insertCrossPointsIntoVector:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DBarExtrusionGeometry.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 173, 0, "invalid cross type %ld", crossType);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
      sub_2761ECEC0(vector, *(vector + 1), v28, v30, 9);
      break;
  }
}

- (void)debug_printDataPoints
{
  p_spine = &self->super._spine;
  begin = self->super._spine.__begin_;
  if (self->super._spine.__end_ != begin)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec3(%f, %f, %f)", *&begin[v5], *&begin[v5 + 4], *&begin[v5 + 8]);
      if (v41 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v7, v8, v9, v10, v11, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v7, v8, v9, v10, v11, __p[0]);
      }
      v12 = ;
      if (v41 < 0)
      {
        operator delete(__p[0]);
      }

      NSLog(&cfstr_SpineZu.isa, v6, v12);

      ++v6;
      begin = p_spine->__begin_;
      v5 += 12;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((p_spine->__end_ - p_spine->__begin_) >> 2));
  }

  v13 = self->super._scale.__begin_;
  if (self->super._scale.__end_ != v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec2(%f, %f)", *&v13[v14], *&v13[v14 + 4]);
      if (v41 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v16, v17, v18, v19, v20, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v16, v17, v18, v19, v20, __p[0]);
      }
      v21 = ;
      if (v41 < 0)
      {
        operator delete(__p[0]);
      }

      NSLog(&cfstr_ScaleZu.isa, v15, v21);

      ++v15;
      v13 = self->super._scale.__begin_;
      v14 += 8;
    }

    while (v15 < (self->super._scale.__end_ - v13) >> 3);
  }

  v22 = self->super._crossSection.__begin_;
  if (self->super._crossSection.__end_ != v22)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec2(%f, %f)", *&v22[v23], *&v22[v23 + 4]);
      if (v41 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v25, v26, v27, v28, v29, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v25, v26, v27, v28, v29, __p[0]);
      }
      v30 = ;
      if (v41 < 0)
      {
        operator delete(__p[0]);
      }

      NSLog(&cfstr_CsZu.isa, v24, v30);

      ++v24;
      v22 = self->super._crossSection.__begin_;
      v23 += 8;
    }

    while (v24 < (self->super._crossSection.__end_ - v22) >> 3);
  }

  v31 = self->_normalizedSpine.__begin_;
  if (self->_normalizedSpine.__end_ != v31)
  {
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec3(%f, %f, %f)", *&v31[v32], *&v31[v32 + 4], *&v31[v32 + 8]);
      if (v41 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v34, v35, v36, v37, v38, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v34, v35, v36, v37, v38, __p[0]);
      }
      v39 = ;
      if (v41 < 0)
      {
        operator delete(__p[0]);
      }

      NSLog(&cfstr_NormSpineZu.isa, v33, v39);

      ++v33;
      v31 = self->_normalizedSpine.__begin_;
      v32 += 12;
    }

    while (v33 < 0xAAAAAAAAAAAAAAABLL * ((self->_normalizedSpine.__end_ - v31) >> 2));
  }
}

- (void)p_updateNormalizedSpineScaleMappingsUsingTransform:(void *)transform forSpineGenerator:(id)generator
{
  generatorCopy = generator;
  if (!generatorCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DBarExtrusionGeometry p_updateNormalizedSpineScaleMappingsUsingTransform:forSpineGenerator:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DBarExtrusionGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 195, 0, "invalid nil value for '%{public}s'", "spineGenerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  p_spine = &self->super._spine;
  self->_normalizedSpine.__end_ = self->_normalizedSpine.__begin_;
  begin = self->super._spine.__begin_;
  end = self->super._spine.__end_;
  v29 = *(transform + 1);
  v90 = *transform;
  v91 = v29;
  v30 = *(transform + 2);
  v31 = *(transform + 3);
  v92 = v30;
  v93 = v31;
  while (begin != end)
  {
    sub_276154744(begin, &v90, &v94, v10);
    sub_2761C14E8(&self->_normalizedSpine.__begin_, &v94);
    begin += 3;
  }

  started = objc_msgSend_bottomNonBevelStartIndex(generatorCopy, v6, *&v30, *&v31, v10);
  LODWORD(v36) = *(self->_normalizedSpine.__begin_ + 3 * started + 1);
  self->_scaleMappingStartingHeight = *&v36;
  self->_bottomCapScale = 1.0;
  if (started >= 1)
  {
    v38 = p_spine->__begin_;
    v37 = self->super._spine.__end_;
    if (p_spine->__begin_ == v37)
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v36, v34, v35, "[TSCH3DBarExtrusionGeometry p_updateNormalizedSpineScaleMappingsUsingTransform:forSpineGenerator:]");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DBarExtrusionGeometry.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 207, 0, "spine has no points");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
      v38 = p_spine->__begin_;
      v37 = self->super._spine.__end_;
    }

    v54 = self->super._scale.__begin_;
    if (0xAAAAAAAAAAAAAAABLL * ((v37 - v38) >> 2) != (self->super._scale.__end_ - v54) >> 3)
    {
      v55 = MEMORY[0x277D81150];
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v36, v34, v35, "[TSCH3DBarExtrusionGeometry p_updateNormalizedSpineScaleMappingsUsingTransform:forSpineGenerator:]");
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DBarExtrusionGeometry.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 209, 0, "scale has different size than spine %lu should be %lu", (self->super._scale.__end_ - self->super._scale.__begin_) >> 3, 0xAAAAAAAAAAAAAAABLL * ((self->super._spine.__end_ - self->super._spine.__begin_) >> 2), v90, v91, v92, v93);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
      v54 = self->super._scale.__begin_;
    }

    v71 = *v54;
    v70 = v54[1];
    if (*v54 != v70)
    {
      v72 = v70;
      v73 = fabs(v72 * 0.000000999999997);
      v74 = vabdd_f64(v71, v72);
      if (v74 >= v73)
      {
        v75 = MEMORY[0x277D81150];
        v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v74, v71, v73, "[TSCH3DBarExtrusionGeometry p_updateNormalizedSpineScaleMappingsUsingTransform:forSpineGenerator:]");
        v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, v78, v79, v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DBarExtrusionGeometry.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v82, v83, v84, v85, v76, v81, 212, 0, "different scale values not implemented");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88, v89);
      }
    }

    self->_bottomCapScale = v71;
  }
}

- (void)generateArrays
{
  v167 = *MEMORY[0x277D85DE8];
  v161 = 0;
  v162 = 0;
  v163 = xmmword_2764D65E0;
  v164 = xmmword_2764D65F0;
  v165 = xmmword_2764D6600;
  v166 = 1084227584;
  v153 = objc_msgSend_generator(TSCH3DSplineGenerator, a2, COERCE_DOUBLE(1084227584), 0.0, v2);
  v9 = objc_msgSend_generator(TSCH3DExtrusionDoubleBevelGenerator, v4, v5, v6, v7);
  if (!v9)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCH3DBarExtrusionGeometry generateArrays]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DBarExtrusionGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 231, 0, "invalid nil value for '%{public}s'", "spineGenerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_inputSpinePoints(v9, v8, v10, v11, v12);
  v34 = objc_msgSend_controlPts(v153, v29, v30, v31, v32);
  stride = self->_extrusionSetting.details.spine.stride;
  if (stride <= 0)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v35, v36, v37, "[TSCH3DBarExtrusionGeometry generateArrays]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DBarExtrusionGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 236, 0, "invalid stride %lu", stride);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  }

  v54 = 0;
  v55 = 0;
  v56 = &v162;
  do
  {
    objc_msgSend_size(self, v35, v36, v37);
    v58 = v57 * *(v56 - 1);
    v59 = *v56;
    *v158 = *(v56 - 2);
    *&v158[4] = v58;
    *&v158[8] = v59;
    sub_2761C14E8(v28, v158);
    v54 |= v55 == 5;
    v55 += stride;
    v56 += 3 * stride;
  }

  while (v55 < 6);
  if ((v54 & 1) == 0)
  {
    objc_msgSend_size(self, v35, v36, v37);
    *v158 = 0;
    *&v158[4] = v61 * 5.0;
    *&v158[8] = 0;
    sub_2761C14E8(v28, v158);
  }

  objc_msgSend_p_insertCrossPointsIntoVector_(self, v60, v35, v36, v37, v34);
  *&v62 = self->_extrusionSetting.details.crossSection.detail;
  objc_msgSend_setDetail_(v153, v63, v62, v64, v65);
  *&v66 = self->_extrusionSetting.details.crossSection.tension;
  objc_msgSend_setTension_(v153, v67, v66, v68, v69);
  *&v70 = self->_extrusionSetting.details.crossSection.adaptiveThreshold;
  objc_msgSend_setAdaptiveThreshold_(v153, v71, v70, v72, v73);
  *&v74 = self->_extrusionSetting.details.crossSection.creaseAngle;
  objc_msgSend_setCrossSectionCreaseAngle_(self, v75, v74, v76, v77);
  *&v78 = self->_extrusionSetting.details.spine.bevelHeight;
  objc_msgSend_setBevelHeight_(v9, v79, v78, v80, v81);
  objc_msgSend_setBevelSlices_(v9, v82, v83, v84, v85, self->_extrusionSetting.details.spine.bevelSlices);
  *&v86 = self->_extrusionSetting.details.spine.creaseAngle;
  objc_msgSend_setSpineCreaseAngle_(self, v87, v86, v88, v89);
  hasBottomBevel = objc_msgSend_hasBottomBevel(self, v90, v91, v92, v93);
  objc_msgSend_setEnableBevelEdges_(v9, v95, v96, v97, v98, hasBottomBevel);
  if (objc_msgSend_hasTopBevel(self, v99, v100, v101, v102))
  {
    objc_msgSend_generate(v9, v103, v104, v105, v106);
    v112 = objc_msgSend_spinePoints(v9, v107, v108, v109, v110);
    if (&self->super._spine != v112)
    {
      sub_2761ED280(&self->super._spine, v112->super.super.super.isa, v112->super.super._vertexBuffer, 0xAAAAAAAAAAAAAAABLL * ((v112->super.super._vertexBuffer - v112->super.super.super.isa) >> 2));
    }

    v116 = objc_msgSend_scaleValues(v9, v111, v113, v114, v115);
    if (&self->super._scale != v116)
    {
      sub_2761ED484(&self->super._scale, v116->super.super.super.isa, v116->super.super._vertexBuffer, (v116->super.super._vertexBuffer - v116->super.super.super.isa) >> 3);
    }
  }

  else if (&self->super._spine != v28)
  {
    sub_2761ED280(&self->super._spine, v28->__begin_, v28->__end_, 0xAAAAAAAAAAAAAAABLL * ((v28->__end_ - v28->__begin_) >> 2));
  }

  objc_msgSend_generatePoints_(v153, v103, v104, v105, v106, &self->super._crossSection);
  v160.receiver = self;
  v160.super_class = TSCH3DBarExtrusionGeometry;
  [(TSCH3DExtrusionGeometry *)&v160 generateArrays];
  *v158 = 1065353216;
  *&v158[12] = 0;
  *&v158[4] = 0;
  *&v158[20] = 1065353216;
  *&v158[24] = 0;
  *v159 = 0;
  *&v159[20] = 0;
  *&v159[12] = 0;
  *&v159[8] = 1065353216;
  *&v159[28] = 1065353216;
  if (self->super.super._numVertices)
  {
    v121 = objc_msgSend_vertexArray(self, v117, v118, v119, v120);
    sub_2761ED628(v154, v121);
    sub_2761EC524(v154, 0, v155, v122, v123);
    *v158 = v155[0];
    *&v158[16] = v155[1];
    v118 = *&v156;
    v119 = *&v157;
    *v159 = v156;
    *&v159[16] = v157;
  }

  objc_msgSend_p_updateNormalizedSpineScaleMappingsUsingTransform_forSpineGenerator_(self, v117, v118, v119, v120, v158, v9);
  objc_msgSend_transformArrays_(self, v124, v125, v126, v127, v158);
  if (self->_extrusionSetting.details.crossSection.crossType == 3)
  {
    v128 = 1;
  }

  else
  {
    v128 = 2;
  }

  v129 = [TSCH3DBarNormalDirectionMapper alloc];
  beginCapCount = self->super._beginCapCount;
  begin = self->super._crossSection.__begin_;
  end = self->super._crossSection.__end_;
  v134 = self->super._spine.__begin_;
  v133 = self->super._spine.__end_;
  v139 = objc_msgSend_hasBottomBevel(self, v135, v136, v137, v138);
  hasTopBevel = objc_msgSend_hasTopBevel(self, v140, v141, v142, v143);
  v149 = ((end - begin) >> 3) - 1;
  v150 = 0xAAAAAAAAAAAAAAABLL * ((v133 - v134) >> 2) - 1;
  if (hasTopBevel)
  {
    v151 = objc_msgSend_initWithWallOffset_crossSectionCount_spineCount_beginLimit_endLimit_(v129, v145, v146, v147, v148, beginCapCount, v149, v150, v139, v128);
  }

  else
  {
    v151 = objc_msgSend_initWithWallOffset_crossSectionCount_spineCount_beginLimit_endLimit_(v129, v145, v146, v147, v148, beginCapCount, v149, v150, v139, 0);
  }

  normalDirectionMapper = self->_normalDirectionMapper;
  self->_normalDirectionMapper = v151;
}

- (id)selectionKnobPositions
{
  v16[2] = *MEMORY[0x277D85DE8];
  LODWORD(v2) = 0.5;
  LODWORD(v3) = 1.0;
  LODWORD(v4) = 0.5;
  v5 = objc_msgSend_x_y_z_(TSCH3DVector, a2, v2, v3, v4);
  v16[0] = v5;
  LODWORD(v6) = 0.5;
  LODWORD(v7) = 0.5;
  v9 = objc_msgSend_x_y_z_(TSCH3DVector, v8, v6, 0.0, v7);
  v16[1] = v9;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v11, v12, v13, v16, 2);

  return v14;
}

- (BarExtrusionSetting)extrusionSetting
{
  v3 = *&self[3].details.crossSection.detail;
  *&retstr->size = *&self[2].details.spine.creaseAngle;
  *&retstr->details.crossSection.adaptiveThreshold = v3;
  v4 = *&self[3].details.spine.bevelSlices;
  *&retstr->details.spine.bevelHeight = *&self[3].details.crossSection.crossType;
  *&retstr->details.spine.stride = v4;
  return self;
}

- (void)setExtrusionSetting:(BarExtrusionSetting *)setting
{
  v3 = *&setting->details.spine.stride;
  v5 = *&setting->size;
  v4 = *&setting->details.crossSection.adaptiveThreshold;
  *&self->_extrusionSetting.details.spine.bevelHeight = *&setting->details.spine.bevelHeight;
  *&self->_extrusionSetting.details.spine.stride = v3;
  *&self->_extrusionSetting.size = v5;
  *&self->_extrusionSetting.details.crossSection.adaptiveThreshold = v4;
}

- (id).cxx_construct
{
  *(self + 46) = 1065353216;
  *(self + 188) = 1;
  *(self + 54) = 0;
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 60) = 0;
  *(self + 197) = 0;
  *(self + 189) = 0;
  *(self + 204) = 0;
  *(self + 33) = 0;
  *(self + 34) = 0;
  *(self + 32) = 0;
  return self;
}

@end