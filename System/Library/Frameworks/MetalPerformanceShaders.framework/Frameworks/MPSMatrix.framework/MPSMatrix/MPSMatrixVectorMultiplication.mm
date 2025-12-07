@interface MPSMatrixVectorMultiplication
- (MPSMatrixVectorMultiplication)initWithDevice:(id)device transpose:(BOOL)transpose rows:(NSUInteger)rows columns:(NSUInteger)columns alpha:(double)alpha beta:(double)beta;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix inputVector:(MPSVector *)inputVector resultVector:(MPSVector *)resultVector;
- (void)setPrimarySourceMatrixOrigin:(id *)origin;
- (void)setResultMatrixOrigin:(id *)origin;
- (void)setSecondarySourceMatrixOrigin:(id *)origin;
@end

@implementation MPSMatrixVectorMultiplication

- (MPSMatrixVectorMultiplication)initWithDevice:(id)device transpose:(BOOL)transpose rows:(NSUInteger)rows columns:(NSUInteger)columns alpha:(double)alpha beta:(double)beta
{
  v14.receiver = self;
  v14.super_class = MPSMatrixVectorMultiplication;
  result = [(MPSMatrixBinaryKernel *)&v14 initWithDevice:device];
  if (result)
  {
    result->_resultMatrixOrigin.y = 0;
    result->_resultMatrixOrigin.z = 0;
    result->_resultMatrixOrigin.x = 0;
    result->_primarySourceMatrixOrigin.y = 0;
    result->_primarySourceMatrixOrigin.z = 0;
    result->_primarySourceMatrixOrigin.x = 0;
    result->_secondarySourceMatrixOrigin.y = 0;
    result->_secondarySourceMatrixOrigin.z = 0;
    result->_secondarySourceMatrixOrigin.x = 0;
    result->_batchStart = 0;
    result->_batchSize = -1;
    result->_transpose = transpose;
    result->_alpha = alpha;
    result->_beta = beta;
    result->_M = rows;
    result->_N = columns;
    result->_plugin = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSMatrixVectorMultiplication;
  result = [(MPSMatrixBinaryKernel *)&v9 copyWithZone:zone device:device];
  if (result)
  {
    z = self->_resultMatrixOrigin.z;
    *(result + 15) = *&self->_resultMatrixOrigin.x;
    *(result + 32) = z;
    v7 = self->_primarySourceMatrixOrigin.z;
    *(result + 264) = *&self->_primarySourceMatrixOrigin.x;
    *(result + 35) = v7;
    v8 = self->_secondarySourceMatrixOrigin.z;
    *(result + 18) = *&self->_secondarySourceMatrixOrigin.x;
    *(result + 38) = v8;
    *(result + 24) = self->_batchStart;
    *(result + 25) = self->_batchSize;
    *(result + 184) = self->_transpose;
    *(result + 26) = *&self->_alpha;
    *(result + 27) = *&self->_beta;
    *(result + 28) = self->_M;
    *(result + 29) = self->_N;
    *(result + 22) = 0;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix inputVector:(MPSVector *)inputVector resultVector:(MPSVector *)resultVector
{
  v10 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.super.isa + v10))
  {
    goto LABEL_41;
  }

  if (!commandBuffer && MTLReportFailureTypeEnabled())
  {
    v201 = objc_opt_class();
    v206 = NSStringFromClass(v201);
    MTLReportFailure();
  }

  if (!inputMatrix && MTLReportFailureTypeEnabled())
  {
    v202 = objc_opt_class();
    v206 = NSStringFromClass(v202);
    MTLReportFailure();
  }

  if (!inputVector && MTLReportFailureTypeEnabled())
  {
    v203 = objc_opt_class();
    v206 = NSStringFromClass(v203);
    MTLReportFailure();
  }

  if (!resultVector && MTLReportFailureTypeEnabled())
  {
    v204 = objc_opt_class();
    v206 = NSStringFromClass(v204);
    MTLReportFailure();
  }

  if ((self->_secondarySourceMatrixOrigin.z || self->_secondarySourceMatrixOrigin.y) && MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    v206 = NSStringFromClass(v11);
    MTLReportFailure();
  }

  p_primarySourceMatrixOrigin = &self->_primarySourceMatrixOrigin;
  if (self->_primarySourceMatrixOrigin.z && MTLReportFailureTypeEnabled())
  {
    v205 = objc_opt_class();
    v206 = NSStringFromClass(v205);
    MTLReportFailure();
  }

  if ((self->_resultMatrixOrigin.z || self->_resultMatrixOrigin.y) && MTLReportFailureTypeEnabled())
  {
    v13 = objc_opt_class();
    v206 = NSStringFromClass(v13);
    MTLReportFailure();
  }

  objc_msgSend_matrices(inputMatrix, a2, commandBuffer, v206);
  batchStart = self->_batchStart;
  if (batchStart >= objc_msgSend_matrices(inputMatrix, v15, v16) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_vectors(inputVector, v17, v18);
  v19 = self->_batchStart;
  if (v19 >= objc_msgSend_vectors(inputVector, v20, v21) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_vectors(resultVector, v22, v23);
  v24 = self->_batchStart;
  if (v24 >= objc_msgSend_vectors(resultVector, v25, v26) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_length(resultVector, v27, v28);
  v29 = self->_M + self->_resultMatrixOrigin.x;
  if (v29 > objc_msgSend_length(resultVector, v30, v31) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_dataType(inputMatrix, v32, v33);
  objc_msgSend_dataType(inputVector, v34, v35);
  v38 = objc_msgSend_dataType(inputMatrix, v36, v37);
  if (v38 != objc_msgSend_dataType(inputVector, v39, v40) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (objc_msgSend_dataType(inputMatrix, v41, v42) != 268435488 && objc_msgSend_dataType(inputMatrix, v43, v44) != 268435472)
  {
    objc_msgSend_dataType(inputMatrix, v43, v44);
  }

  if (objc_msgSend_dataType(inputMatrix, v43, v44) != 268435488 && objc_msgSend_dataType(inputMatrix, v45, v46) != 268435472 && objc_msgSend_dataType(inputMatrix, v45, v46) != 536870920 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v47 = objc_msgSend_dataType(inputMatrix, v45, v46);
  v50 = objc_msgSend_dataType(resultVector, v48, v49);
  if (v47 == 536870920)
  {
    if (objc_msgSend_dataType(resultVector, v51, v52) != 268435472 && MTLReportFailureTypeEnabled())
    {
LABEL_105:
      MTLReportFailure();
    }
  }

  else
  {
    if (v50 != 268435488)
    {
      objc_msgSend_dataType(resultVector, v51, v52);
    }

    if (objc_msgSend_dataType(resultVector, v51, v52) != 268435488 && objc_msgSend_dataType(resultVector, v53, v54) != 268435472 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_105;
    }
  }

  if (self->_transpose)
  {
    objc_msgSend_rows(inputMatrix, v53, v54);
    v55 = self->_N + p_primarySourceMatrixOrigin->x;
    if (v55 > objc_msgSend_rows(inputMatrix, v56, v57) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(inputMatrix, v58, v59);
    v60 = self->_M + self->_primarySourceMatrixOrigin.y;
    if (v60 > objc_msgSend_columns(inputMatrix, v61, v62) && MTLReportFailureTypeEnabled())
    {
LABEL_101:
      MTLReportFailure();
    }
  }

  else
  {
    objc_msgSend_rows(inputMatrix, v53, v54);
    v63 = self->_M + p_primarySourceMatrixOrigin->x;
    if (v63 > objc_msgSend_rows(inputMatrix, v64, v65) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_columns(inputMatrix, v66, v67);
    v68 = self->_N + self->_primarySourceMatrixOrigin.y;
    if (v68 > objc_msgSend_columns(inputMatrix, v69, v70) && MTLReportFailureTypeEnabled())
    {
      goto LABEL_101;
    }
  }

LABEL_41:
  v71 = objc_alloc(MEMORY[0x277CD7210]);
  v75 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v71, v72, commandBuffer, 0);
  if ((*(&self->super.super.super.isa + v10) & 0x18) != 0)
  {
    v74 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v74 || (v76 = objc_opt_class(), v77 = NSStringFromClass(v76), objc_msgSend_setLabel_(self, v78, v77), (v74 = v77) != 0))
    {
      objc_msgSend_setLabel_(v75, v73, v74);
    }
  }

  v225 = v75;
  v79 = inputMatrix;
  v80 = resultVector;
  if (objc_msgSend_batchSize(self, v73, v74))
  {
    v83 = objc_msgSend_matrices(inputMatrix, v81, v82);
    v86 = objc_msgSend_batchStart(self, v84, v85);
    v89 = objc_msgSend_vectors(inputVector, v87, v88);
    v92 = objc_msgSend_batchStart(self, v90, v91);
    v95 = objc_msgSend_vectors(resultVector, v93, v94);
    v98 = objc_msgSend_batchStart(self, v96, v97);
    v101 = objc_msgSend_batchSize(self, v99, v100);
    v102 = v83 - v86;
    if (v83 - v86 >= (v89 - v92))
    {
      v102 = v89 - v92;
    }

    if (v102 >= v95 - v98)
    {
      v102 = v95 - v98;
    }

    if (v102 >= v101)
    {
      v102 = v101;
    }

    v207 = v102;
    if (v102)
    {
      for (i = 0; v207 != i; ++i)
      {
        v222 = objc_msgSend_batchStart(self, v81, v82);
        v223 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
        objc_msgSend_primarySourceMatrixOrigin(self, v104, v105);
        v221 = v230;
        v220 = objc_msgSend_dataType(v79, v106, v107);
        objc_msgSend_primarySourceMatrixOrigin(self, v108, v109);
        v219 = v236;
        v218 = objc_msgSend_rowBytes(v79, v110, v111);
        v217 = objc_msgSend_matrixBytes(v79, v112, v113);
        v216 = *(&v79->super.isa + *MEMORY[0x277CD73A8]);
        objc_msgSend_secondarySourceMatrixOrigin(self, v114, v115);
        v215 = v229;
        v214 = objc_msgSend_dataType(inputVector, v116, v117);
        v213 = objc_msgSend_vectorBytes(inputVector, v118, v119);
        v212 = *(&inputVector->super.isa + *MEMORY[0x277CD74A8]);
        objc_msgSend_resultMatrixOrigin(self, v120, v121);
        v211 = v229;
        v210 = objc_msgSend_dataType(v80, v122, v123);
        v209 = objc_msgSend_vectorBytes(v80, v124, v125);
        v208 = *(&v80->super.isa + *MEMORY[0x277CD74A8]);
        if (objc_msgSend_dataType(v79, v126, v127) == 536870920)
        {
          objc_msgSend_transpose(self, v128, v129);
        }

        else
        {
          if (objc_msgSend_dataType(v79, v128, v129) == 268435472)
          {
            objc_msgSend_dataType(v80, v130, v131);
          }

          objc_msgSend_transpose(self, v130, v131);
        }

        ComputeState = MPSLibrary::GetComputeState();
        v135 = objc_msgSend_M(self, v133, v134);
        v229 = v135 | 0x100000000;
        LODWORD(v230) = objc_msgSend_N(self, v136, v137);
        HIDWORD(v230) = objc_msgSend_rowBytes(v79, v138, v139);
        v142 = objc_msgSend_length(inputVector, v140, v141);
        v231 = (objc_msgSend_dataType(inputVector, v143, v144) >> 3) * v142;
        v147 = objc_msgSend_length(v80, v145, v146);
        v232 = (objc_msgSend_dataType(v80, v148, v149) >> 3) * v147;
        v152 = objc_msgSend_length(v80, v150, v151);
        v233 = (objc_msgSend_dataType(v80, v153, v154) >> 3) * v152;
        objc_msgSend_alpha(self, v155, v156);
        *&v157 = v157;
        v234 = LODWORD(v157);
        objc_msgSend_beta(self, v158, v159);
        *&v160 = v160;
        v235 = LODWORD(v160);
        v161 = *(v223 + 32);
        v236 = 0uLL;
        v237 = 0;
        (*(*v161 + 16))(&v236);
        v164 = objc_msgSend_transpose(self, v162, v163);
        v165 = *(&v236 + 1);
        v166 = v236;
        v167 = v237;
        v170 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v168, v169);
        if (v164)
        {
          if (v165 * v166 > v170)
          {
            if (v166 >= v170 / v165)
            {
              v166 = v170 / v165;
            }

LABEL_68:
            v167 = 1;
          }
        }

        else if (v165 * v166 > v170)
        {
          if (v165 >= v170 / v166)
          {
            v165 = v170 / v166;
          }

          goto LABEL_68;
        }

        *&v236 = v166;
        *(&v236 + 1) = v165;
        v237 = v167;
        v175 = v135;
        if (objc_msgSend_transpose(self, v171, v172))
        {
          v176 = v236;
          v177 = objc_msgSend_dataType(v79, v173, v174);
          v178 = v236;
          v181 = objc_msgSend_dataType(v79, v179, v180);
          v182 = v175 + v176 * (0x10u / (v177 >> 3)) - 1;
          v183 = 1;
          v184 = v182 / (v178 * (0x10u / (v181 >> 3)));
        }

        else
        {
          v184 = 1;
          v183 = (v135 + *(&v236 + 1) - 1) / *(&v236 + 1);
        }

        objc_msgSend_setComputePipelineState_(v225, v173, ComputeState);
        v187 = objc_msgSend_data(v79, v185, v186);
        objc_msgSend_setBuffer_offset_atIndex_(v225, v188, v187, v221 * (v220 >> 3) + v218 * v219 + v217 * (i + v222) + v216, 0);
        v191 = objc_msgSend_data(inputVector, v189, v190);
        objc_msgSend_setBuffer_offset_atIndex_(v225, v192, v191, v215 * (v214 >> 3) + v213 * (i + v222) + v212, 1);
        v195 = objc_msgSend_data(v80, v193, v194);
        objc_msgSend_setBuffer_offset_atIndex_(v225, v196, v195, v211 * (v210 >> 3) + v209 * (i + v222) + v208, 2);
        objc_msgSend_setBytes_length_atIndex_(v225, v197, &v229, 36, 3);
        if ((objc_msgSend_transpose(self, v198, v199) & 1) == 0)
        {
          objc_msgSend_setThreadgroupMemoryLength_atIndex_(v225, v200, 4 * *(&v236 + 1) * (v236 + (v236 >> 1)), 0);
        }

        v228[0] = v184;
        v228[1] = v183;
        v228[2] = 1;
        v226 = v236;
        v227 = v237;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v225, v200, v228, &v226);
        MPSLibrary::ReleaseComputeState();
      }
    }
  }

  objc_msgSend_endEncoding(v225, v81, v82);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixVectorMultiplication;
  [(MPSKernel *)&v3 dealloc];
}

- (void)setResultMatrixOrigin:(id *)origin
{
  var2 = origin->var2;
  *&self->_resultMatrixOrigin.x = *&origin->var0;
  self->_resultMatrixOrigin.z = var2;
}

- (void)setPrimarySourceMatrixOrigin:(id *)origin
{
  var2 = origin->var2;
  *&self->_primarySourceMatrixOrigin.x = *&origin->var0;
  self->_primarySourceMatrixOrigin.z = var2;
}

- (void)setSecondarySourceMatrixOrigin:(id *)origin
{
  var2 = origin->var2;
  *&self->_secondarySourceMatrixOrigin.x = *&origin->var0;
  self->_secondarySourceMatrixOrigin.z = var2;
}

@end