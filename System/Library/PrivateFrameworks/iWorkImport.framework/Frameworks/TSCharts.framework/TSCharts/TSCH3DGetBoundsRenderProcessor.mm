@interface TSCH3DGetBoundsRenderProcessor
- (TSCH3DGetBoundsRenderProcessor)init;
- (id).cxx_construct;
- (void)resetBounds;
- (void)submit:(id)submit;
@end

@implementation TSCH3DGetBoundsRenderProcessor

- (TSCH3DGetBoundsRenderProcessor)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DGetBoundsRenderProcessor;
  return [(TSCH3DTransformGeometryRenderProcessor *)&v3 init];
}

- (void)resetBounds
{
  *&self->_bounds._bounds._min.var0.var0 = xmmword_2764D5F00;
  *&self->_bounds._bounds._max.var1.var0 = xmmword_2764D60B0;
  *&self->_bounds._projected._min.var2.var0 = xmmword_2764D60C0;
  *&self->_bounds._2DProjected._min.var0.var0 = xmmword_2764D5F00;
  *&self->_bounds._2DProjected._max.var1.var0 = 0x80000000800000;
  self->_bounds._boxes.__end_ = self->_bounds._boxes.__begin_;
}

- (void)submit:(id)submit
{
  submitCopy = submit;
  buffer = self->super._buffer;
  if (!buffer)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DGetBoundsRenderProcessor submit:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 115, 0, "invalid nil value for '%{public}s'", "_buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    buffer = self->super._buffer;
  }

  if (objc_msgSend_componentType(buffer, v5, v7, v8, v9) != 1)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "[TSCH3DGetBoundsRenderProcessor submit:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetBoundsPipeline.mm");
    v41 = objc_msgSend_componentType(self->super._buffer, v37, v38, v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v42, v43, v44, v45, v31, v36, 117, 0, "componentByteSize is not float %ld", v41);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  if (objc_msgSend_hasOffset(submitCopy, v26, v27, v28, v29))
  {
    v158 = objc_msgSend_offset(submitCopy, v51, v52, v53);
  }

  else
  {
    v158 = 0;
  }

  if (objc_msgSend_hasCount(submitCopy, v50, v51, v52, v53))
  {
    v159 = objc_msgSend_count(submitCopy, v54, v55, v56, v57);
  }

  else
  {
    v159 = objc_msgSend_count(self->super._buffer, v54, v55, v56, v57);
  }

  v175 = 0;
  v174 = 0;
  v177 = 0;
  v178 = 0;
  v180 = xmmword_2764D5F60;
  v173 = 1056964608;
  v176 = 1056964608;
  v179 = 1056964608;
  v60 = objc_msgSend_matrix(self, 0.0000305175853, v58, v59);
  v65 = objc_msgSend_current(v60, v61, v62, v63, v64);
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v66 = *(v65 + 16);
  v160 = *v65;
  v161 = v66;
  v67 = *(v65 + 48);
  v162 = *(v65 + 32);
  v163 = v67;
  v69 = objc_msgSend_matrix(self, *&v162, *&v67, v68);
  v73 = objc_msgSend_projection(v69, v70, v71, v72);
  sub_2761558A0(&v173, v73, v168);
  sub_2761661E4(&v169, &v160, v168);

  if (byte_280A46430 == 1)
  {
    v78 = objc_opt_class();
    v79 = NSStringFromSelector(a2);
    v83 = objc_msgSend_matrix(self, v80, v81, v82);
    v84 = a2;
    v88 = objc_msgSend_projection(v83, v85, v86, v87);
    *&v89 = sub_2761558A0(&v173, v88, v168).u64[0];
    v92 = objc_msgSend_matrix(self, v89, v90, v91);
    v97 = objc_msgSend_current(v92, v93, v94, v95, v96);
    sub_2761558A0(v168, v97, &v160);
    v98 = MEMORY[0x277CCACA8];
    sub_276152FD4(v181, "mat4x4((%f, %f, %f, %f), (%f, %f, %f, %f), (%f, %f, %f, %f), (%f, %f, %f, %f))", v160.f32[0], v160.f32[1], v160.f32[2], v160.f32[3], *&v161, *(&v161 + 1), *(&v161 + 2), *(&v161 + 3), *&v162, *(&v162 + 1), *(&v162 + 2), *(&v162 + 3), *&v163, *(&v163 + 1), *(&v163 + 2), *(&v163 + 3));
    if (v182 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v98, v99, v100, v101, v102, v181);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v98, v99, v100, v101, v102, v181[0]);
    }
    v103 = ;
    if (v182 < 0)
    {
      operator delete(v181[0]);
    }

    NSLog(&cfstr_PNormalization.isa, v78, self, v79, v103);

    a2 = v84;
  }

  if (objc_msgSend_components(self->super._buffer, v74, v75, v76, v77) < 2 || objc_msgSend_components(self->super._buffer, v104, v105, v106, v107) >= 5)
  {
    v108 = MEMORY[0x277D81150];
    v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, v105, v106, v107, "[TSCH3DGetBoundsRenderProcessor submit:]");
    v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, v111, v112, v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetBoundsPipeline.mm");
    v119 = objc_msgSend_components(self->super._buffer, v115, v116, v117, v118);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v108, v120, v121, v122, v123, v109, v114, 128, 0, "buffer components out of bounds %lu", v119);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v124, v125, v126, v127);
  }

  v129 = objc_msgSend_components(self->super._buffer, v104, v105, v106, v107);
  v133 = self->super._buffer;
  if (v129 == 2)
  {
    v134 = sub_276165208(v133);
    if (8 * v158 != 8 * (v159 + v158))
    {
      v136 = (*v134 + 8 * (v159 + v158));
      v137 = (8 * v158 + *v134);
      do
      {
        v160.i64[0] = *v137;
        v160.i64[1] = 0x3F80000000000000;
        sub_2761666BC(&v169, &v160);
        ++v137;
      }

      while (v137 != v136);
    }
  }

  else
  {
    v139 = objc_msgSend_components(v133, v128, v130, v131, v132);
    v143 = self->super._buffer;
    if (v139 == 3)
    {
      v144 = sub_27616536C(v143);
      if (v159)
      {
        v145 = *v144 + 12 * v158;
        v146 = v145 + 12 * v159;
        do
        {
          v147 = *(v145 + 8);
          v160.i64[0] = *v145;
          v160.i64[1] = v147 | 0x3F80000000000000;
          sub_2761666BC(&v169, &v160);
          v145 += 12;
        }

        while (v145 != v146);
      }
    }

    else if (objc_msgSend_components(v143, v138, v140, v141, v142) == 4)
    {
      v148 = sub_2761654D0(self->super._buffer);
      if (16 * v158 != 16 * (v159 + v158))
      {
        v149 = (*v148 + 16 * (v159 + v158));
        v150 = (16 * v158 + *v148);
        do
        {
          v160 = *v150;
          sub_2761666BC(&v169, &v160);
          ++v150;
        }

        while (v150 != v149);
      }
    }
  }

  *&v151 = v170;
  *(&v151 + 1) = v171;
  v160 = v169;
  v161 = v151;
  v162 = v172;
  v163 = xmmword_2764D5F00;
  v164 = 0x80000000800000;
  v166 = 0;
  v167 = 0;
  __p = 0;
  mode = self->_mode;
  if (mode == 2)
  {
    objc_msgSend_extend2DProjectedBounds_(self, v135, *v169.i64, 2.84809454e-306, 1.40444743e306, &v161 + 8);
  }

  else if (mode == 1)
  {
    end = self->_bounds._boxes.__end_;
    if (end >= self->_bounds._boxes.__cap_)
    {
      v154 = sub_2761662F4(&self->_bounds._boxes.__begin_, &v160);
    }

    else
    {
      *end = v169.i32[0];
      *(end + 4) = *(v160.i64 + 4);
      *(end + 3) = v160.i32[3];
      *(end + 2) = v161;
      v154 = end + 24;
    }

    self->_bounds._boxes.__end_ = v154;
  }

  else
  {
    sub_276166138(&self->_bounds, &v160);
    sub_276166138(&self->_bounds._projected, &v161 + 8);
  }

  if (byte_280A46430 == 1)
  {
    v155 = objc_opt_class();
    v156 = NSStringFromSelector(a2);
    v157 = sub_276165634(&self->_bounds._bounds._min.var0.var0);
    NSLog(&cfstr_PBounds.isa, v155, self, v156, v157);
  }

  if (__p)
  {
    v166 = __p;
    operator delete(__p);
  }
}

- (id).cxx_construct
{
  *(self + 40) = xmmword_2764D5F00;
  *(self + 56) = xmmword_2764D60B0;
  *(self + 72) = xmmword_2764D60C0;
  *(self + 88) = xmmword_2764D5F00;
  *(self + 13) = 0x80000000800000;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  return self;
}

@end