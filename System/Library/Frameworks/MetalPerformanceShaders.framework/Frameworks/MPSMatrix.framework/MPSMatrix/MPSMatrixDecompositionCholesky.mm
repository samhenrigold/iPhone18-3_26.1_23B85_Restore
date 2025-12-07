@interface MPSMatrixDecompositionCholesky
- (MPSMatrixDecompositionCholesky)initWithDevice:(id)device lower:(BOOL)lower order:(NSUInteger)order;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix resultMatrix:(MPSMatrix *)resultMatrix status:(id)status;
@end

@implementation MPSMatrixDecompositionCholesky

- (MPSMatrixDecompositionCholesky)initWithDevice:(id)device lower:(BOOL)lower order:(NSUInteger)order
{
  v14.receiver = self;
  v14.super_class = MPSMatrixDecompositionCholesky;
  result = [(MPSMatrixUnaryKernel *)&v14 initWithDevice:device];
  if (result)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v9 = result;
    objc_msgSend_setResultMatrixOrigin_(result, v8, &v11);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    objc_msgSend_setSourceMatrixOrigin_(v9, v10, &v11);
    result = v9;
    v9->_order = order;
    v9->_lower = lower;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix resultMatrix:(MPSMatrix *)resultMatrix status:(id)status
{
  v6 = status;
  if (objc_msgSend_options(self, a2, commandBuffer))
  {
    isEqual = objc_msgSend_isEqual_(sourceMatrix, v11, resultMatrix);
    v24 = isEqual;
    if (!self)
    {
      v25 = 0;
      v26 = 0;
      v27 = 1;
      if (isEqual)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v295 = objc_opt_class();
      v300 = NSStringFromClass(v295);
      MTLReportFailure();
    }

    if (!sourceMatrix && MTLReportFailureTypeEnabled())
    {
      v296 = objc_opt_class();
      v300 = NSStringFromClass(v296);
      MTLReportFailure();
    }

    if (!resultMatrix && MTLReportFailureTypeEnabled())
    {
      v297 = objc_opt_class();
      v300 = NSStringFromClass(v297);
      MTLReportFailure();
    }

    if (self)
    {
      objc_msgSend_sourceMatrixOrigin(self, v11, v12);
      objc_msgSend_sourceMatrixOrigin(self, v13, v14);
      if (*&v319[16] && MTLReportFailureTypeEnabled())
      {
        v298 = objc_opt_class();
        v300 = NSStringFromClass(v298);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v15, v16, v300);
      objc_msgSend_resultMatrixOrigin(self, v17, v18);
      if (*&v319[16] && MTLReportFailureTypeEnabled())
      {
        v299 = objc_opt_class();
        v301 = NSStringFromClass(v299);
        MTLReportFailure();
      }

      objc_msgSend_sourceMatrixOrigin(self, v19, v20, v301);
    }

    else
    {
      memset(v319, 0, 24);
    }

    objc_msgSend_rows(sourceMatrix, v11, v12, v300);
    objc_msgSend_sourceMatrixOrigin(self, v28, v29);
    v30 = self->_order + *v319;
    if (v30 > objc_msgSend_rows(sourceMatrix, v31, v32) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_sourceMatrixOrigin(self, v33, v34);
    objc_msgSend_columns(sourceMatrix, v35, v36);
    objc_msgSend_sourceMatrixOrigin(self, v37, v38);
    v39 = self->_order + *&v319[8];
    if (v39 > objc_msgSend_columns(sourceMatrix, v40, v41) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v42, v43);
    objc_msgSend_rows(resultMatrix, v44, v45);
    objc_msgSend_resultMatrixOrigin(self, v46, v47);
    v48 = self->_order + *v319;
    if (v48 > objc_msgSend_rows(resultMatrix, v49, v50) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v51, v52);
    objc_msgSend_columns(resultMatrix, v53, v54);
    objc_msgSend_resultMatrixOrigin(self, v55, v56);
    v57 = self->_order + *&v319[8];
    if (v57 > objc_msgSend_columns(resultMatrix, v58, v59) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(sourceMatrix, v60, v61) == 268435488)
    {
      objc_msgSend_dataType(resultMatrix, v62, v63);
    }

    if ((objc_msgSend_dataType(sourceMatrix, v62, v63) != 268435488 || objc_msgSend_dataType(resultMatrix, v64, v65) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v24 = objc_msgSend_isEqual_(sourceMatrix, v66, resultMatrix);
  }

  objc_msgSend_sourceMatrixOrigin(self, v22, v23);
  objc_msgSend_resultMatrixOrigin(self, v67, v68);
  if (*v319 == v326)
  {
    objc_msgSend_sourceMatrixOrigin(self, v22, v23);
    v26 = v321;
    objc_msgSend_resultMatrixOrigin(self, v69, v70);
    v27 = 0;
    v25 = v318;
    if (v24)
    {
LABEL_24:
      if (v26 == v25)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_27:
  v71 = objc_msgSend_order(self, v22, v23);
  v76 = objc_msgSend_order(self, v72, v73);
  if (v27)
  {
    v309 = 0;
    v312 = 0;
    v77 = 0;
    v315 = 0;
    memset(v319, 0, 24);
    v326 = 0;
    v327 = 0uLL;
    v320 = 0;
    v321 = 0;
    v322 = 0;
  }

  else
  {
    objc_msgSend_sourceMatrixOrigin(self, v74, v75);
    v77 = *v319;
    objc_msgSend_sourceMatrixOrigin(self, v78, v79);
    v315 = v327.i32[0];
    objc_msgSend_resultMatrixOrigin(self, v80, v81);
    v312 = v320;
    objc_msgSend_resultMatrixOrigin(self, v82, v83);
    v309 = v318;
  }

  v84 = sourceMatrix;
  v85 = objc_msgSend_rowBytes(sourceMatrix, v74, v75);
  v88 = objc_msgSend_rowBytes(resultMatrix, v86, v87);
  v89 = objc_alloc(MEMORY[0x277CD7210]);
  v92 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v89, v90, commandBuffer, 0);
  v326 = v92;
  v327.i64[0] = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v93 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v93 || (v94 = objc_opt_class(), v306 = v77, v95 = v76, v96 = v71, v97 = NSStringFromClass(v94), objc_msgSend_setLabel_(self, v98, v97), v93 = v97, v71 = v96, v76 = v95, v77 = v306, v93))
    {
      objc_msgSend_setLabel_(v92, v91, v93);
    }
  }

  v99 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  *v319 = v71;
  *&v319[4] = v76;
  *&v319[8] = v77;
  *&v319[12] = v315;
  *&v319[16] = v312;
  *&v319[20] = v309;
  *&v319[24] = v85;
  *&v319[28] = v88;
  sub_2399E4C74(v99, v92, commandBuffer, v84, resultMatrix, v319);
  objc_msgSend_endEncoding(v92, v100, v101);
  v6 = status;

LABEL_35:
  if (objc_msgSend_lower(self, v22, v23))
  {
    v313 = objc_msgSend_order(self, v102, v103);
    if (v313)
    {
      v310 = v6;
      if (!v6)
      {
        v106 = objc_msgSend_device(commandBuffer, v104, v105);
        v310 = objc_msgSend_newBufferWithLength_options_(v106, v107, 4, 32);
      }

      objc_msgSend_resultMatrixOrigin(self, v104, v105);
      v108 = *v319;
      v111 = objc_msgSend_rowBytes(resultMatrix, v109, v110) * v108;
      objc_msgSend_resultMatrixOrigin(self, v112, v113);
      v114 = v327.i64[0];
      v316 = v111 + v114 * (objc_msgSend_dataType(resultMatrix, v115, v116) >> 3);
      ComputeState = MPSLibrary::GetComputeState();
      v304 = MPSLibrary::GetComputeState();
      v120 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v118, v119);
      v307 = ComputeState;
      v123 = objc_msgSend_threadExecutionWidth(ComputeState, v121, v122);
      v126 = 256;
      if (v120 < 0x100)
      {
LABEL_43:
        while (v126 > v123)
        {
          if (--v126 <= v120)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
LABEL_42:
        if ((v126 & (v123 - 1)) != 0)
        {
          goto LABEL_43;
        }
      }

      v302 = commandBuffer;
      v127 = objc_msgSend_maxTotalThreadsPerThreadgroup(v304, v124, v125);
      v130 = objc_msgSend_threadExecutionWidth(v304, v128, v129);
      v131 = v130 - 1;
      v132 = 1;
      if (v126 == 1)
      {
        if (!v127)
        {
          goto LABEL_47;
        }

LABEL_46:
        if ((v132 & v131) != 0)
        {
LABEL_47:
          while (v132 > v130)
          {
            if (--v132 <= v127)
            {
              goto LABEL_46;
            }
          }
        }
      }

      else
      {
        while ((v126 > v127 || (v126 & v131) != 0) && v126 > v130)
        {
          --v126;
        }
      }

      v175 = objc_alloc(MEMORY[0x277CD7210]);
      v178 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v175, v176, v302, 0);
      if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
      {
        v179 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
        if (v179 || (v180 = objc_opt_class(), v181 = NSStringFromClass(v180), objc_msgSend_setLabel_(self, v182, v181), (v179 = v181) != 0))
        {
          objc_msgSend_setLabel_(v178, v177, v179);
        }
      }

      v183 = 0;
      v184 = v313 - 1;
      __asm { FMOV            V0.2S, #-1.0 }

      v190 = -_D0;
      do
      {
        v191 = (v126 + v183 - 1) / v126;
        if (v191 <= 1)
        {
          LODWORD(v191) = 1;
        }

        v323 = v183;
        v324 = v191;
        v325 = 4;
        objc_msgSend_setComputePipelineState_(v178, v177, v307);
        v194 = objc_msgSend_data(resultMatrix, v192, v193);
        v197 = objc_msgSend_rowBytes(resultMatrix, v195, v196);
        objc_msgSend_setBuffer_offset_atIndex_(v178, v198, v194, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v316 + v197 * v183, 0);
        objc_msgSend_setBytes_length_atIndex_(v178, v199, &v323, 12, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v178, v200, v310, 0, 2);
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(v178, v201, 4 * v126, 0);
        *v319 = vdupq_n_s64(1uLL);
        *&v319[16] = 1;
        v326 = v126;
        v327.i64[0] = v132;
        v327.i64[1] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v178, v202, v319, &v326);
        v204 = v183 + 1;
        if (v183 + 1 < v313)
        {
          memset(&v319[12], 0, 24);
          *v319 = v184;
          *&v319[4] = 1;
          *&v319[8] = v183;
          *&v319[12] = objc_msgSend_rowBytes(resultMatrix, v177, v203);
          *&v319[16] = objc_msgSend_rowBytes(resultMatrix, v205, v206);
          *&v319[20] = objc_msgSend_rowBytes(resultMatrix, v207, v208);
          *&v319[24] = objc_msgSend_rowBytes(resultMatrix, v209, v210);
          *&v319[28] = v190;
          objc_msgSend_setComputePipelineState_(v178, v211, v304);
          v214 = objc_msgSend_data(resultMatrix, v212, v213);
          v217 = objc_msgSend_rowBytes(resultMatrix, v215, v216);
          objc_msgSend_setBuffer_offset_atIndex_(v178, v218, v214, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v316 + v217 * v183, 0);
          v221 = objc_msgSend_data(resultMatrix, v219, v220);
          v224 = objc_msgSend_rowBytes(resultMatrix, v222, v223);
          objc_msgSend_setBuffer_offset_atIndex_(v178, v225, v221, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v316 + v224 * v204, 1);
          v228 = objc_msgSend_data(resultMatrix, v226, v227);
          v231 = objc_msgSend_rowBytes(resultMatrix, v229, v230);
          v234 = objc_msgSend_dataType(resultMatrix, v232, v233);
          objc_msgSend_setBuffer_offset_atIndex_(v178, v235, v228, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v316 + (v231 + (v234 >> 3)) * v183, 2);
          objc_msgSend_setBytes_length_atIndex_(v178, v236, v319, 36, 3);
          objc_msgSend_setBuffer_offset_atIndex_(v178, v237, v310, 0, 4);
          v326 = (v126 - 1 + *v319) / v126;
          v327 = vdupq_n_s64(1uLL);
          v320 = v126;
          v321 = v132;
          v322 = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v178, v238, &v326, &v320);
        }

        --v184;
        ++v183;
      }

      while (v313 != v204);
      if (!status)
      {
        if ((objc_msgSend_retainedReferences(v302, v177, v203) & 1) == 0)
        {
          v291 = v310;
          *v319 = MEMORY[0x277D85DD0];
          *&v319[8] = 3221225472;
          *&v319[16] = sub_2399D9A20;
          *&v319[24] = &unk_278AFD238;
          *&v319[32] = v310;
          objc_msgSend_addCompletedHandler_(v302, v292, v319);
        }
      }

      objc_msgSend_endEncoding(v178, v177, v203);

      return;
    }

LABEL_76:
    if (v6)
    {
      v171 = objc_msgSend_blitCommandEncoder(commandBuffer, v104, v105);
      objc_msgSend_fillBuffer_range_value_(v171, v172, v6, 0, 4, 0);
      objc_msgSend_endEncoding(v171, v173, v174);
    }

    return;
  }

  v314 = objc_msgSend_order(self, v102, v103);
  if (!v314)
  {
    goto LABEL_76;
  }

  v311 = v6;
  if (!v6)
  {
    v133 = objc_msgSend_device(commandBuffer, v104, v105);
    v311 = objc_msgSend_newBufferWithLength_options_(v133, v134, 4, 32);
  }

  v135 = objc_alloc(MEMORY[0x277CD7210]);
  v139 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v135, v136, commandBuffer, 0);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v138 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v138 || (v140 = objc_opt_class(), v141 = NSStringFromClass(v140), objc_msgSend_setLabel_(self, v142, v141), (v138 = v141) != 0))
    {
      objc_msgSend_setLabel_(v139, v137, v138);
    }
  }

  objc_msgSend_resultMatrixOrigin(self, v137, v138);
  v143 = *v319;
  v146 = objc_msgSend_rowBytes(resultMatrix, v144, v145);
  objc_msgSend_resultMatrixOrigin(self, v147, v148);
  v149 = v327.i64[0];
  v152 = objc_msgSend_dataType(resultMatrix, v150, v151);
  v308 = MPSLibrary::GetComputeState();
  v305 = MPSLibrary::GetComputeState();
  v153 = v308;
  v156 = objc_msgSend_maxTotalThreadsPerThreadgroup(v308, v154, v155);
  v159 = objc_msgSend_threadExecutionWidth(v308, v157, v158);
  v317 = v146 * v143 + v149 * (v152 >> 3);
  v162 = 256;
  if (v156 < 0x100)
  {
LABEL_65:
    while (v162 > v159)
    {
      if (--v162 <= v156)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
LABEL_64:
    if ((v162 & (v159 - 1)) != 0)
    {
      goto LABEL_65;
    }
  }

  v163 = objc_msgSend_maxTotalThreadsPerThreadgroup(v305, v160, v161);
  v166 = objc_msgSend_threadExecutionWidth(v305, v164, v165);
  v169 = v166 - 1;
  v170 = 1;
  if (v162 == 1)
  {
    if (!v163)
    {
      goto LABEL_69;
    }

LABEL_68:
    if ((v170 & v169) != 0)
    {
LABEL_69:
      while (v170 > v166)
      {
        if (--v170 <= v163)
        {
          goto LABEL_68;
        }
      }
    }
  }

  else
  {
    while ((v162 > v163 || (v162 & v169) != 0) && v162 > v166)
    {
      --v162;
    }
  }

  v239 = 0;
  v240 = v314 - 1;
  __asm { FMOV            V0.2S, #-1.0 }

  v242 = -_D0;
  do
  {
    v243 = (v162 + v239 - 1) / v162;
    if (v243 <= 1)
    {
      LODWORD(v243) = 1;
    }

    v323 = v239;
    v324 = v243;
    v325 = 0;
    v325 = objc_msgSend_rowBytes(resultMatrix, v167, v168);
    objc_msgSend_setComputePipelineState_(v139, v244, v153);
    v247 = objc_msgSend_data(resultMatrix, v245, v246);
    v250 = objc_msgSend_dataType(resultMatrix, v248, v249);
    objc_msgSend_setBuffer_offset_atIndex_(v139, v251, v247, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v317 + v239 * (v250 >> 3), 0);
    objc_msgSend_setBytes_length_atIndex_(v139, v252, &v323, 12, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v139, v253, v311, 0, 2);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v139, v254, 4 * v162, 0);
    *v319 = vdupq_n_s64(1uLL);
    *&v319[16] = 1;
    v326 = v162;
    v327.i64[0] = v170;
    v327.i64[1] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v139, v255, v319, &v326);
    v256 = v239 + 1;
    if (v239 + 1 < v314)
    {
      memset(&v319[12], 0, 24);
      *v319 = 1;
      *&v319[4] = v240;
      *&v319[8] = v239;
      *&v319[12] = objc_msgSend_rowBytes(resultMatrix, v167, v168);
      *&v319[16] = objc_msgSend_rowBytes(resultMatrix, v257, v258);
      *&v319[20] = objc_msgSend_rowBytes(resultMatrix, v259, v260);
      *&v319[24] = objc_msgSend_rowBytes(resultMatrix, v261, v262);
      *&v319[28] = v242;
      objc_msgSend_setComputePipelineState_(v139, v263, v305);
      v266 = objc_msgSend_data(resultMatrix, v264, v265);
      v269 = objc_msgSend_dataType(resultMatrix, v267, v268);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v270, v266, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v317 + v239 * (v269 >> 3), 0);
      v273 = objc_msgSend_data(resultMatrix, v271, v272);
      v276 = objc_msgSend_dataType(resultMatrix, v274, v275);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v277, v273, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v317 + v256 * (v276 >> 3), 1);
      v280 = objc_msgSend_data(resultMatrix, v278, v279);
      v283 = objc_msgSend_dataType(resultMatrix, v281, v282);
      v286 = objc_msgSend_rowBytes(resultMatrix, v284, v285);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v287, v280, *(&resultMatrix->super.isa + *MEMORY[0x277CD73A8]) + v317 + (v286 + (v283 >> 3)) * v239, 2);
      objc_msgSend_setBytes_length_atIndex_(v139, v288, v319, 36, 3);
      objc_msgSend_setBuffer_offset_atIndex_(v139, v289, v311, 0, 4);
      v326 = (v162 - 1 + *&v319[4]) / v162;
      v327 = vdupq_n_s64(1uLL);
      v320 = v162;
      v321 = v170;
      v322 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v139, v290, &v326, &v320);
    }

    --v240;
    ++v239;
    _ZF = v314 == v256;
    v153 = v308;
  }

  while (!_ZF);
  if (!status)
  {
    if ((objc_msgSend_retainedReferences(commandBuffer, v167, v168) & 1) == 0)
    {
      v293 = v311;
      *v319 = MEMORY[0x277D85DD0];
      *&v319[8] = 3221225472;
      *&v319[16] = sub_2399D9A28;
      *&v319[24] = &unk_278AFD238;
      *&v319[32] = v311;
      objc_msgSend_addCompletedHandler_(commandBuffer, v294, v319);
    }
  }

  objc_msgSend_endEncoding(v139, v167, v168);
}

@end