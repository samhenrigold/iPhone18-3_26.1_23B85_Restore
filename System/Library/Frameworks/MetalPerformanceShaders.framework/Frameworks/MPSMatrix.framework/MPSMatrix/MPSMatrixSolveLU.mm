@interface MPSMatrixSolveLU
- (MPSMatrixSolveLU)initWithDevice:(id)device transpose:(BOOL)transpose order:(NSUInteger)order numberOfRightHandSides:(NSUInteger)numberOfRightHandSides;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix rightHandSideMatrix:(MPSMatrix *)rightHandSideMatrix pivotIndices:(MPSMatrix *)pivotIndices solutionMatrix:(MPSMatrix *)solutionMatrix;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix rightHandSideMatrix:(id)sideMatrix pivotIndices:(id)indices solutionMatrix:(id)solutionMatrix;
@end

@implementation MPSMatrixSolveLU

- (MPSMatrixSolveLU)initWithDevice:(id)device transpose:(BOOL)transpose order:(NSUInteger)order numberOfRightHandSides:(NSUInteger)numberOfRightHandSides
{
  v23.receiver = self;
  v23.super_class = MPSMatrixSolveLU;
  result = [(MPSMatrixBinaryKernel *)&v23 initWithDevice:?];
  if (result)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v12 = result;
    objc_msgSend_setResultMatrixOrigin_(result, v11, &v20);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    objc_msgSend_setPrimarySourceMatrixOrigin_(v12, v13, &v20);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    objc_msgSend_setSecondarySourceMatrixOrigin_(v12, v14, &v20);
    v12->_transpose = transpose;
    v12->_order = order;
    v12->_numberOfRightHandSides = numberOfRightHandSides;
    v15 = [MPSMatrixSolveTriangular alloc];
    v12->_trsmL = objc_msgSend_initWithDevice_right_upper_transpose_unit_order_numberOfRightHandSides_alpha_(v15, v16, device, 0, 0, v12->_transpose, 1, v12->_order, 1.0, v12->_numberOfRightHandSides);
    v17 = [MPSMatrixSolveTriangular alloc];
    v19 = objc_msgSend_initWithDevice_right_upper_transpose_unit_order_numberOfRightHandSides_alpha_(v17, v18, device, 0, 1, v12->_transpose, 0, v12->_order, 1.0, v12->_numberOfRightHandSides);
    result = v12;
    v12->_trsmU = v19;
  }

  return result;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix rightHandSideMatrix:(id)sideMatrix pivotIndices:(id)indices solutionMatrix:(id)solutionMatrix
{
  matrixCopy2 = matrix;
  encoderCopy = encoder;
  if (objc_msgSend_options(self, a2, encoder))
  {
    isEqual = objc_msgSend_isEqual_(sideMatrix, v15, solutionMatrix);
    v32 = isEqual;
    if (!self)
    {
      if (isEqual)
      {
LABEL_42:
        v198 = 0uLL;
        v123 = 1;
        v199 = 0;
        goto LABEL_44;
      }

      indicesCopy2 = indices;
      v33 = 1;
      goto LABEL_38;
    }
  }

  else
  {
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      v180 = objc_opt_class();
      v188 = NSStringFromClass(v180);
      MTLReportFailure();
    }

    if (!matrixCopy2 && MTLReportFailureTypeEnabled())
    {
      v181 = objc_opt_class();
      v188 = NSStringFromClass(v181);
      MTLReportFailure();
    }

    if (!sideMatrix && MTLReportFailureTypeEnabled())
    {
      v182 = objc_opt_class();
      v188 = NSStringFromClass(v182);
      MTLReportFailure();
    }

    if (!indices && MTLReportFailureTypeEnabled())
    {
      v183 = objc_opt_class();
      v188 = NSStringFromClass(v183);
      MTLReportFailure();
    }

    if (!solutionMatrix && MTLReportFailureTypeEnabled())
    {
      v184 = objc_opt_class();
      v188 = NSStringFromClass(v184);
      MTLReportFailure();
    }

    if (self)
    {
      objc_msgSend_primarySourceMatrixOrigin(self, v15, v16);
      objc_msgSend_primarySourceMatrixOrigin(self, v17, v18);
      if (*&v200[16] && MTLReportFailureTypeEnabled())
      {
        v185 = objc_opt_class();
        v188 = NSStringFromClass(v185);
        MTLReportFailure();
      }

      objc_msgSend_secondarySourceMatrixOrigin(self, v19, v20, v188);
      objc_msgSend_secondarySourceMatrixOrigin(self, v21, v22);
      if (*&v200[16] && MTLReportFailureTypeEnabled())
      {
        v186 = objc_opt_class();
        v189 = NSStringFromClass(v186);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v23, v24, v189);
      objc_msgSend_resultMatrixOrigin(self, v25, v26);
      if (*&v200[16] && MTLReportFailureTypeEnabled())
      {
        v187 = objc_opt_class();
        v190 = NSStringFromClass(v187);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v27, v28, v190);
    }

    else
    {
      memset(v200, 0, sizeof(v200));
    }

    objc_msgSend_rows(solutionMatrix, v15, v16, v188);
    objc_msgSend_resultMatrixOrigin(self, v34, v35);
    v36 = self->_order + *v200;
    if (v36 > objc_msgSend_rows(solutionMatrix, v37, v38) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v39, v40);
    objc_msgSend_columns(solutionMatrix, v41, v42);
    objc_msgSend_resultMatrixOrigin(self, v43, v44);
    v45 = self->_numberOfRightHandSides + *&v200[8];
    if (v45 > objc_msgSend_columns(solutionMatrix, v46, v47) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v48, v49);
    objc_msgSend_rows(sideMatrix, v50, v51);
    objc_msgSend_secondarySourceMatrixOrigin(self, v52, v53);
    v54 = self->_order + *v200;
    if (v54 > objc_msgSend_rows(sideMatrix, v55, v56) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v57, v58);
    objc_msgSend_columns(sideMatrix, v59, v60);
    objc_msgSend_secondarySourceMatrixOrigin(self, v61, v62);
    v63 = self->_numberOfRightHandSides + *&v200[8];
    if (v63 > objc_msgSend_columns(sideMatrix, v64, v65) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(matrixCopy2, v66, v67) == 268435488 && objc_msgSend_dataType(sideMatrix, v68, v69) == 268435488)
    {
      objc_msgSend_dataType(solutionMatrix, v68, v69);
    }

    if ((objc_msgSend_dataType(matrixCopy2, v68, v69) != 268435488 || objc_msgSend_dataType(sideMatrix, v70, v71) != 268435488 || objc_msgSend_dataType(solutionMatrix, v72, v73) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(indices, v74, v75);
    if (objc_msgSend_dataType(indices, v76, v77) != 32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, v78, v79);
    objc_msgSend_rows(matrixCopy2, v80, v81);
    objc_msgSend_primarySourceMatrixOrigin(self, v82, v83);
    v84 = self->_order + *v200;
    if (v84 > objc_msgSend_rows(matrixCopy2, v85, v86) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, v87, v88);
    objc_msgSend_columns(matrixCopy2, v89, v90);
    objc_msgSend_primarySourceMatrixOrigin(self, v91, v92);
    v93 = self->_order + *&v200[8];
    if (v93 > objc_msgSend_columns(matrixCopy2, v94, v95) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v32 = objc_msgSend_isEqual_(sideMatrix, v96, solutionMatrix);
  }

  objc_msgSend_secondarySourceMatrixOrigin(self, v30, v31);
  objc_msgSend_resultMatrixOrigin(self, v97, v98);
  if (*v200 == v209)
  {
    objc_msgSend_secondarySourceMatrixOrigin(self, v30, v31);
    objc_msgSend_resultMatrixOrigin(self, v99, v100);
    v101 = v207 == v204 ? v32 : 0;
    if (v101)
    {
      goto LABEL_43;
    }
  }

  indicesCopy2 = indices;
  v33 = 0;
LABEL_38:
  bufferCopy = buffer;
  v194 = encoderCopy;
  v191 = objc_msgSend_order(self, v30, v31);
  v106 = objc_msgSend_numberOfRightHandSides(self, v102, v103);
  if (v33)
  {
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    memset(v200, 0, sizeof(v200));
    v209 = 0;
    v210 = 0uLL;
    v206 = 0;
    v207 = 0;
    v208 = 0;
    v203 = 0;
    v204 = 0;
    v205 = 0;
  }

  else
  {
    objc_msgSend_secondarySourceMatrixOrigin(self, v104, v105);
    v109 = *v200;
    objc_msgSend_secondarySourceMatrixOrigin(self, v111, v112);
    v110 = v210;
    objc_msgSend_resultMatrixOrigin(self, v113, v114);
    v108 = v206;
    objc_msgSend_resultMatrixOrigin(self, v115, v116);
    v107 = v204;
  }

  sideMatrixCopy = sideMatrix;
  v118 = objc_msgSend_rowBytes(sideMatrix, v104, v105);
  v121 = objc_msgSend_rowBytes(solutionMatrix, v119, v120);
  v122 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  *v200 = v191;
  *&v200[4] = v106;
  *&v200[8] = v109;
  *&v200[12] = v110;
  *&v200[16] = v108;
  *&v200[20] = v107;
  v201 = v118;
  v202 = v121;
  encoderCopy = v194;
  buffer = bufferCopy;
  sub_2399E4C74(v122, v194, bufferCopy, sideMatrixCopy, solutionMatrix, v200);
  indices = indicesCopy2;
  matrixCopy2 = matrix;
  if (v33)
  {
    goto LABEL_42;
  }

LABEL_43:
  objc_msgSend_primarySourceMatrixOrigin(self, v30, v31);
  v123 = 0;
LABEL_44:
  trsmL = self->_trsmL;
  *v200 = v198;
  *&v200[16] = v199;
  objc_msgSend_setPrimarySourceMatrixOrigin_(trsmL, v30, v200);
  if (v123)
  {
    v196 = 0uLL;
    v197 = 0;
  }

  else
  {
    objc_msgSend_primarySourceMatrixOrigin(self, v125, v126);
  }

  trsmU = self->_trsmU;
  *v200 = v196;
  *&v200[16] = v197;
  objc_msgSend_setPrimarySourceMatrixOrigin_(trsmU, v125, v200);
  if (self->_transpose)
  {
    objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmL, v128, buffer, encoderCopy, matrixCopy2, solutionMatrix, solutionMatrix);
    objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmU, v129, buffer, encoderCopy, matrixCopy2, solutionMatrix, solutionMatrix);
    ComputeState = MPSLibrary::GetComputeState();
    v131 = *(solutionMatrix + *MEMORY[0x277CD73A8]);
    v134 = objc_msgSend_order(self, v132, v133);
    objc_msgSend_setComputePipelineState_(encoderCopy, v135, ComputeState);
    LODWORD(v206) = v134;
    HIDWORD(v206) = objc_msgSend_columns(solutionMatrix, v136, v137);
    LODWORD(v207) = objc_msgSend_rowBytes(solutionMatrix, v138, v139);
    v142 = objc_msgSend_data(solutionMatrix, v140, v141);
    objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v143, v142, v131, 0);
    v146 = objc_msgSend_data(indices, v144, v145);
    v149 = objc_msgSend_offset(indices, v147, v148);
    objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v150, v146, v149, 1);
    objc_msgSend_setBytes_length_atIndex_(encoderCopy, v151, &v206, 12, 2);
    *v200 = (HIDWORD(v206) + 511) >> 9;
    *&v200[8] = vdupq_n_s64(1uLL);
    v209 = 512;
    v210 = *&v200[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoderCopy, v152, v200, &v209);
  }

  else
  {
    bufferCopy2 = buffer;
    v154 = MPSLibrary::GetComputeState();
    v155 = *(solutionMatrix + *MEMORY[0x277CD73A8]);
    indicesCopy3 = indices;
    v159 = objc_msgSend_order(self, v156, v157);
    objc_msgSend_setComputePipelineState_(encoderCopy, v160, v154);
    LODWORD(v206) = v159;
    HIDWORD(v206) = objc_msgSend_columns(solutionMatrix, v161, v162);
    LODWORD(v207) = objc_msgSend_rowBytes(solutionMatrix, v163, v164);
    v167 = objc_msgSend_data(solutionMatrix, v165, v166);
    objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v168, v167, v155, 0);
    v171 = objc_msgSend_data(indicesCopy3, v169, v170);
    v174 = objc_msgSend_offset(indicesCopy3, v172, v173);
    objc_msgSend_setBuffer_offset_atIndex_(encoderCopy, v175, v171, v174, 1);
    objc_msgSend_setBytes_length_atIndex_(encoderCopy, v176, &v206, 12, 2);
    *v200 = (HIDWORD(v206) + 511) >> 9;
    *&v200[8] = vdupq_n_s64(1uLL);
    v209 = 512;
    v210 = *&v200[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoderCopy, v177, v200, &v209);
    objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmL, v178, bufferCopy2, encoderCopy, matrix, solutionMatrix, solutionMatrix);
    objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmU, v179, bufferCopy2, encoderCopy, matrix, solutionMatrix, solutionMatrix);
  }
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix rightHandSideMatrix:(MPSMatrix *)rightHandSideMatrix pivotIndices:(MPSMatrix *)pivotIndices solutionMatrix:(MPSMatrix *)solutionMatrix
{
  v9 = sourceMatrix;
  v10 = commandBuffer;
  if ((objc_msgSend_options(self, a2, commandBuffer) & 1) == 0)
  {
    if (!v10 && MTLReportFailureTypeEnabled())
    {
      v202 = objc_opt_class();
      v210 = NSStringFromClass(v202);
      MTLReportFailure();
    }

    if (!v9 && MTLReportFailureTypeEnabled())
    {
      v203 = objc_opt_class();
      v210 = NSStringFromClass(v203);
      MTLReportFailure();
    }

    if (!rightHandSideMatrix && MTLReportFailureTypeEnabled())
    {
      v204 = objc_opt_class();
      v210 = NSStringFromClass(v204);
      MTLReportFailure();
    }

    if (!pivotIndices && MTLReportFailureTypeEnabled())
    {
      v205 = objc_opt_class();
      v210 = NSStringFromClass(v205);
      MTLReportFailure();
    }

    if (!solutionMatrix && MTLReportFailureTypeEnabled())
    {
      v206 = objc_opt_class();
      v210 = NSStringFromClass(v206);
      MTLReportFailure();
    }

    if (self)
    {
      objc_msgSend_primarySourceMatrixOrigin(self, v12, v13);
      objc_msgSend_primarySourceMatrixOrigin(self, v14, v15);
      if (*&v223[16] && MTLReportFailureTypeEnabled())
      {
        v207 = objc_opt_class();
        v210 = NSStringFromClass(v207);
        MTLReportFailure();
      }

      objc_msgSend_secondarySourceMatrixOrigin(self, v16, v17, v210);
      objc_msgSend_secondarySourceMatrixOrigin(self, v18, v19);
      if (*&v223[16] && MTLReportFailureTypeEnabled())
      {
        v208 = objc_opt_class();
        v211 = NSStringFromClass(v208);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v20, v21, v211);
      objc_msgSend_resultMatrixOrigin(self, v22, v23);
      if (*&v223[16] && MTLReportFailureTypeEnabled())
      {
        v209 = objc_opt_class();
        v212 = NSStringFromClass(v209);
        MTLReportFailure();
      }

      v26 = v10;
      objc_msgSend_resultMatrixOrigin(self, v24, v25, v212);
    }

    else
    {
      v26 = v10;
      memset(v223, 0, sizeof(v223));
    }

    objc_msgSend_rows(solutionMatrix, v12, v13, v210);
    objc_msgSend_resultMatrixOrigin(self, v31, v32);
    v33 = self->_order + *v223;
    if (v33 > objc_msgSend_rows(solutionMatrix, v34, v35) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v36, v37);
    objc_msgSend_columns(solutionMatrix, v38, v39);
    objc_msgSend_resultMatrixOrigin(self, v40, v41);
    v42 = self->_numberOfRightHandSides + *&v223[8];
    if (v42 > objc_msgSend_columns(solutionMatrix, v43, v44) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v45, v46);
    objc_msgSend_rows(rightHandSideMatrix, v47, v48);
    objc_msgSend_secondarySourceMatrixOrigin(self, v49, v50);
    v51 = self->_order + *v223;
    if (v51 > objc_msgSend_rows(rightHandSideMatrix, v52, v53) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v54, v55);
    objc_msgSend_columns(rightHandSideMatrix, v56, v57);
    objc_msgSend_secondarySourceMatrixOrigin(self, v58, v59);
    v60 = self->_numberOfRightHandSides + *&v223[8];
    v9 = sourceMatrix;
    if (v60 > objc_msgSend_columns(rightHandSideMatrix, v61, v62) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(sourceMatrix, v63, v64) == 268435488 && objc_msgSend_dataType(rightHandSideMatrix, v65, v66) == 268435488)
    {
      objc_msgSend_dataType(solutionMatrix, v65, v66);
    }

    if ((objc_msgSend_dataType(sourceMatrix, v65, v66) != 268435488 || objc_msgSend_dataType(rightHandSideMatrix, v67, v68) != 268435488 || objc_msgSend_dataType(solutionMatrix, v69, v70) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(pivotIndices, v71, v72);
    if (objc_msgSend_dataType(pivotIndices, v73, v74) != 32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, v75, v76);
    objc_msgSend_rows(sourceMatrix, v77, v78);
    objc_msgSend_primarySourceMatrixOrigin(self, v79, v80);
    v81 = self->_order + *v223;
    if (v81 > objc_msgSend_rows(sourceMatrix, v82, v83) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, v84, v85);
    objc_msgSend_columns(sourceMatrix, v86, v87);
    objc_msgSend_primarySourceMatrixOrigin(self, v88, v89);
    v90 = self->_order + *&v223[8];
    if (v90 > objc_msgSend_columns(sourceMatrix, v91, v92) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    isEqual = objc_msgSend_isEqual_(rightHandSideMatrix, v93, solutionMatrix);
LABEL_31:
    objc_msgSend_secondarySourceMatrixOrigin(self, v28, v29);
    objc_msgSend_resultMatrixOrigin(self, v94, v95);
    if (*v223 == v232)
    {
      objc_msgSend_secondarySourceMatrixOrigin(self, v28, v29);
      objc_msgSend_resultMatrixOrigin(self, v96, v97);
      if (selfCopy2 == v227)
      {
        v98 = isEqual;
      }

      else
      {
        v98 = 0;
      }

      v10 = v26;
      if (v98)
      {
LABEL_46:
        objc_msgSend_primarySourceMatrixOrigin(self, v28, v29);
        v128 = 0;
        goto LABEL_49;
      }

      v99 = 0;
    }

    else
    {
      v99 = 0;
      v10 = v26;
    }

    goto LABEL_38;
  }

  v27 = objc_msgSend_isEqual_(rightHandSideMatrix, v12, solutionMatrix);
  isEqual = v27;
  if (self)
  {
    v26 = v10;
    goto LABEL_31;
  }

  if (v27)
  {
    goto LABEL_48;
  }

  v99 = 1;
LABEL_38:
  v216 = objc_msgSend_order(self, v28, v29);
  v215 = objc_msgSend_numberOfRightHandSides(self, v100, v101);
  v213 = v99;
  if (v99)
  {
    v104 = 0;
    v105 = 0;
    v214 = 0;
    memset(v223, 0, sizeof(v223));
    v232 = 0uLL;
    v233 = 0;
    v229 = 0;
    selfCopy2 = 0;
    v231 = 0;
    v226 = 0;
    v227 = 0;
    v228 = 0;
  }

  else
  {
    objc_msgSend_secondarySourceMatrixOrigin(self, v102, v103);
    objc_msgSend_secondarySourceMatrixOrigin(self, v106, v107);
    v214 = __PAIR64__(*v223, DWORD2(v232));
    objc_msgSend_resultMatrixOrigin(self, v108, v109);
    v105 = v229;
    objc_msgSend_resultMatrixOrigin(self, v110, v111);
    v104 = v227;
  }

  v112 = rightHandSideMatrix;
  v113 = objc_msgSend_rowBytes(rightHandSideMatrix, v102, v103);
  v116 = objc_msgSend_rowBytes(solutionMatrix, v114, v115);
  v117 = objc_alloc(MEMORY[0x277CD7210]);
  v118 = v10;
  v121 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v117, v119, v10, 0);
  *&v232 = v121;
  *(&v232 + 1) = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v122 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v122 || (v123 = objc_opt_class(), v122 = NSStringFromClass(v123), objc_msgSend_setLabel_(self, v124, v122), v122))
    {
      objc_msgSend_setLabel_(v121, v120, v122);
    }
  }

  v125 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  *v223 = v216;
  *&v223[4] = v215;
  *&v223[8] = HIDWORD(v214);
  *&v223[12] = v214;
  *&v223[16] = v105;
  *&v223[20] = v104;
  v224 = v113;
  v225 = v116;
  v10 = v118;
  sub_2399E4C74(v125, v121, v118, v112, solutionMatrix, v223);
  objc_msgSend_endEncoding(v121, v126, v127);
  v9 = sourceMatrix;

  if ((v213 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_48:
  v221 = 0uLL;
  v128 = 1;
  v222 = 0;
LABEL_49:
  trsmL = self->_trsmL;
  *v223 = v221;
  *&v223[16] = v222;
  objc_msgSend_setPrimarySourceMatrixOrigin_(trsmL, v28, v223);
  if (v128)
  {
    v219 = 0uLL;
    v220 = 0;
  }

  else
  {
    objc_msgSend_primarySourceMatrixOrigin(self, v130, v131);
  }

  trsmU = self->_trsmU;
  *v223 = v219;
  *&v223[16] = v220;
  objc_msgSend_setPrimarySourceMatrixOrigin_(trsmU, v130, v223);
  if (self->_transpose)
  {
    objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmL, v133, v10, v9, solutionMatrix, solutionMatrix);
    objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmU, v134, v10, v9, solutionMatrix, solutionMatrix);
    ComputeState = MPSLibrary::GetComputeState();
    v136 = *(&solutionMatrix->super.isa + *MEMORY[0x277CD73A8]);
    v139 = objc_msgSend_order(self, v137, v138);
    v140 = objc_alloc(MEMORY[0x277CD7210]);
    v143 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v140, v141, v10, 0);
    v229 = v143;
    selfCopy2 = self;
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v144 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v144 || (v145 = objc_opt_class(), v146 = NSStringFromClass(v145), objc_msgSend_setLabel_(self, v147, v146), (v144 = v146) != 0))
      {
        objc_msgSend_setLabel_(v143, v142, v144);
      }
    }

    objc_msgSend_setComputePipelineState_(v143, v142, ComputeState);
    LODWORD(v226) = v139;
    HIDWORD(v226) = objc_msgSend_columns(solutionMatrix, v148, v149);
    LODWORD(v227) = objc_msgSend_rowBytes(solutionMatrix, v150, v151);
    v154 = objc_msgSend_data(solutionMatrix, v152, v153);
    objc_msgSend_setBuffer_offset_atIndex_(v143, v155, v154, v136, 0);
    v158 = objc_msgSend_data(pivotIndices, v156, v157);
    v161 = objc_msgSend_offset(pivotIndices, v159, v160);
    objc_msgSend_setBuffer_offset_atIndex_(v143, v162, v158, v161, 1);
    objc_msgSend_setBytes_length_atIndex_(v143, v163, &v226, 12, 2);
    *v223 = (HIDWORD(v226) + 511) >> 9;
    *&v223[8] = vdupq_n_s64(1uLL);
    v232 = xmmword_2399EEC90;
    v233 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v143, v164, v223, &v232);
    objc_msgSend_endEncoding(v143, v165, v166);
  }

  else
  {
    v167 = MPSLibrary::GetComputeState();
    v168 = *(&solutionMatrix->super.isa + *MEMORY[0x277CD73A8]);
    v171 = objc_msgSend_order(self, v169, v170);
    v172 = objc_alloc(MEMORY[0x277CD7210]);
    v175 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v172, v173, v10, 0);
    v229 = v175;
    selfCopy2 = self;
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v176 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v176 || (v177 = objc_opt_class(), v178 = v10, v179 = NSStringFromClass(v177), objc_msgSend_setLabel_(self, v180, v179), v176 = v179, v10 = v178, v9 = sourceMatrix, v176))
      {
        objc_msgSend_setLabel_(v175, v174, v176);
      }
    }

    objc_msgSend_setComputePipelineState_(v175, v174, v167);
    LODWORD(v226) = v171;
    HIDWORD(v226) = objc_msgSend_columns(solutionMatrix, v181, v182);
    LODWORD(v227) = objc_msgSend_rowBytes(solutionMatrix, v183, v184);
    v187 = objc_msgSend_data(solutionMatrix, v185, v186);
    objc_msgSend_setBuffer_offset_atIndex_(v175, v188, v187, v168, 0);
    v191 = objc_msgSend_data(pivotIndices, v189, v190);
    v194 = objc_msgSend_offset(pivotIndices, v192, v193);
    objc_msgSend_setBuffer_offset_atIndex_(v175, v195, v191, v194, 1);
    objc_msgSend_setBytes_length_atIndex_(v175, v196, &v226, 12, 2);
    *v223 = (HIDWORD(v226) + 511) >> 9;
    *&v223[8] = vdupq_n_s64(1uLL);
    v232 = xmmword_2399EEC90;
    v233 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v175, v197, v223, &v232);
    objc_msgSend_endEncoding(v175, v198, v199);

    objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmL, v200, v10, v9, solutionMatrix, solutionMatrix);
    objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self->_trsmU, v201, v10, v9, solutionMatrix, solutionMatrix);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixSolveLU;
  [(MPSKernel *)&v3 dealloc];
}

@end