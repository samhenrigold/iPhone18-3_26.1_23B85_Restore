@interface MPSMatrixDecompositionLU
- (MPSMatrixDecompositionLU)initWithDevice:(id)device rows:(NSUInteger)rows columns:(NSUInteger)columns;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix resultMatrix:(MPSMatrix *)resultMatrix pivotIndices:(MPSMatrix *)pivotIndices status:(id)status;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix resultMatrix:(id)resultMatrix pivotIndices:(id)indices status:(id)status;
@end

@implementation MPSMatrixDecompositionLU

- (MPSMatrixDecompositionLU)initWithDevice:(id)device rows:(NSUInteger)rows columns:(NSUInteger)columns
{
  v20.receiver = self;
  v20.super_class = MPSMatrixDecompositionLU;
  result = [(MPSMatrixUnaryKernel *)&v20 initWithDevice:?];
  if (result)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v10 = result;
    objc_msgSend_setResultMatrixOrigin_(result, v9, &v17);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    objc_msgSend_setSourceMatrixOrigin_(v10, v11, &v17);
    v10->_rows = rows;
    v10->_columns = columns;
    v12 = [MPSMatrixMultiplication alloc];
    v10->_gemmKernel = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v12, v13, device, 0, 0, v10->_rows, v10->_columns, 128, -1.0, 1.0);
    v14 = [MPSMatrixSolveTriangular alloc];
    v16 = objc_msgSend_initWithDevice_right_upper_transpose_unit_order_numberOfRightHandSides_alpha_(v14, v15, device, 0, 0, 0, 1, 128, 1.0, v10->_columns);
    result = v10;
    v10->_trsmKernel = v16;
  }

  return result;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix resultMatrix:(id)resultMatrix pivotIndices:(id)indices status:(id)status
{
  bufferCopy3 = buffer;
  if (objc_msgSend_options(self, a2, encoder))
  {
    isEqual = objc_msgSend_isEqual_(matrix, v14, resultMatrix);
    v27 = isEqual;
    if (!self)
    {
      v28 = 0;
      v29 = 0;
      v30 = 1;
      if (isEqual)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }
  }

  else
  {
    if (!bufferCopy3 && MTLReportFailureTypeEnabled())
    {
      v195 = objc_opt_class();
      v201 = NSStringFromClass(v195);
      MTLReportFailure();
    }

    if (!matrix && MTLReportFailureTypeEnabled())
    {
      v196 = objc_opt_class();
      v201 = NSStringFromClass(v196);
      MTLReportFailure();
    }

    if (!resultMatrix && MTLReportFailureTypeEnabled())
    {
      v197 = objc_opt_class();
      v201 = NSStringFromClass(v197);
      MTLReportFailure();
    }

    if (!indices && MTLReportFailureTypeEnabled())
    {
      v198 = objc_opt_class();
      v201 = NSStringFromClass(v198);
      MTLReportFailure();
    }

    if (self)
    {
      objc_msgSend_sourceMatrixOrigin(self, v14, v15);
      objc_msgSend_sourceMatrixOrigin(self, v16, v17);
      if (v221 && MTLReportFailureTypeEnabled())
      {
        v199 = objc_opt_class();
        v201 = NSStringFromClass(v199);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v18, v19, v201);
      objc_msgSend_resultMatrixOrigin(self, v20, v21);
      if (v221 && MTLReportFailureTypeEnabled())
      {
        v200 = objc_opt_class();
        v202 = NSStringFromClass(v200);
        MTLReportFailure();
      }

      objc_msgSend_sourceMatrixOrigin(self, v22, v23, v202);
    }

    else
    {
      v219 = 0;
      v220 = 0;
      v221 = 0;
    }

    objc_msgSend_rows(matrix, v14, v15, v201);
    objc_msgSend_sourceMatrixOrigin(self, v31, v32);
    v33 = self->_rows + v219;
    if (v33 > objc_msgSend_rows(matrix, v34, v35) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_sourceMatrixOrigin(self, v36, v37);
    objc_msgSend_columns(matrix, v38, v39);
    objc_msgSend_sourceMatrixOrigin(self, v40, v41);
    v42 = self->_columns + v220;
    if (v42 > objc_msgSend_columns(matrix, v43, v44) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v45, v46);
    objc_msgSend_rows(resultMatrix, v47, v48);
    objc_msgSend_resultMatrixOrigin(self, v49, v50);
    v51 = self->_rows + v219;
    if (v51 > objc_msgSend_rows(resultMatrix, v52, v53) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v54, v55);
    objc_msgSend_columns(resultMatrix, v56, v57);
    objc_msgSend_resultMatrixOrigin(self, v58, v59);
    v60 = self->_columns + v220;
    if (v60 > objc_msgSend_columns(resultMatrix, v61, v62) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(matrix, v63, v64) == 268435488)
    {
      objc_msgSend_dataType(resultMatrix, v65, v66);
    }

    if ((objc_msgSend_dataType(matrix, v65, v66) != 268435488 || objc_msgSend_dataType(resultMatrix, v67, v68) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(indices, v69, v70);
    if (objc_msgSend_dataType(indices, v71, v72) != 32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v27 = objc_msgSend_isEqual_(matrix, v73, resultMatrix);
  }

  objc_msgSend_sourceMatrixOrigin(self, v25, v26);
  objc_msgSend_resultMatrixOrigin(self, v74, v75);
  if (v219 == v211)
  {
    objc_msgSend_sourceMatrixOrigin(self, v25, v26);
    v29 = v225;
    objc_msgSend_resultMatrixOrigin(self, v76, v77);
    v30 = 0;
    v28 = v217;
    if (v27)
    {
LABEL_26:
      if (v29 == v28)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_29:
  v208 = objc_msgSend_rows(self, v25, v26);
  v82 = objc_msgSend_columns(self, v78, v79);
  if (v30)
  {
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v219 = 0;
    v220 = 0;
    v221 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v216 = 0;
    v217 = 0;
    v218 = 0;
  }

  else
  {
    objc_msgSend_sourceMatrixOrigin(self, v80, v81);
    v85 = v219;
    objc_msgSend_sourceMatrixOrigin(self, v87, v88);
    v86 = v212;
    objc_msgSend_resultMatrixOrigin(self, v89, v90);
    v84 = v224;
    objc_msgSend_resultMatrixOrigin(self, v91, v92);
    v83 = v217;
  }

  matrixCopy = matrix;
  v94 = objc_msgSend_rowBytes(matrix, v80, v81);
  v97 = objc_msgSend_rowBytes(resultMatrix, v95, v96);
  v98 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  v219 = __PAIR64__(v82, v208);
  v220 = __PAIR64__(v86, v85);
  v221 = __PAIR64__(v83, v84);
  v222 = __PAIR64__(v97, v94);
  bufferCopy3 = buffer;
  sub_2399E4C74(v98, encoder, buffer, matrixCopy, resultMatrix, &v219);
LABEL_33:
  v99 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
  v100 = objc_msgSend_gemmKernel(self, v25, v26);
  v103 = objc_msgSend_trsmKernel(self, v101, v102);
  MEMORY[0x23EE7BFE0](&v224, bufferCopy3, 0);
  if (objc_msgSend_rows(self, v104, v105) && objc_msgSend_columns(self, v106, v107))
  {
    v108 = objc_msgSend_rows(self, v106, v107);
    v111 = objc_msgSend_columns(self, v109, v110);
    if (v108 >= v111)
    {
      v112 = v111;
    }

    else
    {
      v112 = v108;
    }

    (*(**(v99 + 32) + 16))(&v219);
    v113 = v219;
    v116 = objc_msgSend_rows(self, v114, v115);
    v119 = objc_msgSend_offset(indices, v117, v118);
    v203 = (2 * v113 + v116 - 1) / (2 * v113);
    if (v203 <= 1)
    {
      v122 = v119;
    }

    else
    {
      v122 = 0;
    }

    v205 = v122;
    if (v203 > 1)
    {
      v123 = objc_msgSend_dataType(indices, v120, v121);
      TempBuffer = MPSAutoCache::GetTempBuffer(&v224, (v203 + v112) * (v123 >> 3), 0);
    }

    else
    {
      TempBuffer = objc_msgSend_data(indices, v120, v121);
    }

    statusCopy = status;
    if (!status)
    {
      statusCopy = MPSAutoCache::GetTempBuffer(&v224, 4, 0);
    }

    v130 = 0;
    v131 = -128;
    while (v130 + 128 <= v112)
    {
      v132 = objc_msgSend_rows(self, v128, v129);
      sub_2399E9CF4(self, encoder, resultMatrix, TempBuffer, v205, v130, v131 + v132 + 128, 0x80uLL, statusCopy);
      objc_msgSend_resultMatrixOrigin(self, v133, v134);
      v135 = v219;
      objc_msgSend_resultMatrixOrigin(self, v136, v137);
      v216 = v130 + v135;
      v217 = v130 + v212;
      v218 = 0;
      objc_msgSend_setPrimarySourceMatrixOrigin_(v103, v138, &v216);
      objc_msgSend_resultMatrixOrigin(self, v139, v140);
      v141 = v219;
      objc_msgSend_resultMatrixOrigin(self, v142, v143);
      v216 = v130 + v141;
      v217 = v130 + v212 + 128;
      v218 = 0;
      objc_msgSend_setSecondarySourceMatrixOrigin_(v103, v144, &v216);
      objc_msgSend_resultMatrixOrigin(self, v145, v146);
      v147 = v219;
      objc_msgSend_resultMatrixOrigin(self, v148, v149);
      v216 = v130 + v147;
      v217 = v130 + v212 + 128;
      v218 = 0;
      objc_msgSend_setResultMatrixOrigin_(v103, v150, &v216);
      v153 = objc_msgSend_columns(self, v151, v152);
      objc_msgSend_setNumberOfRightHandSides_(v103, v154, v131 + v153);
      objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrix_rightHandSideMatrix_solutionMatrix_(v103, v155, buffer, encoder, resultMatrix, resultMatrix, resultMatrix);
      objc_msgSend_resultMatrixOrigin(self, v156, v157);
      v158 = v219;
      objc_msgSend_resultMatrixOrigin(self, v159, v160);
      v216 = v130 + v158 + 128;
      v217 = v130 + v212;
      v218 = 0;
      objc_msgSend_setLeftMatrixOrigin_(v100, v161, &v216);
      objc_msgSend_resultMatrixOrigin(self, v162, v163);
      v164 = v219;
      objc_msgSend_resultMatrixOrigin(self, v165, v166);
      v216 = v130 + v164;
      v217 = v130 + v212 + 128;
      v218 = 0;
      objc_msgSend_setRightMatrixOrigin_(v100, v167, &v216);
      objc_msgSend_resultMatrixOrigin(self, v168, v169);
      v170 = v219;
      objc_msgSend_resultMatrixOrigin(self, v171, v172);
      v216 = v130 + v170 + 128;
      v217 = v130 + v212 + 128;
      v218 = 0;
      objc_msgSend_setResultMatrixOrigin_(v100, v173, &v216);
      v176 = objc_msgSend_rows(self, v174, v175);
      bufferCopy3 = buffer;
      objc_msgSend_setM_(v100, v177, v131 + v176);
      v180 = objc_msgSend_columns(self, v178, v179);
      objc_msgSend_setN_(v100, v181, v131 + v180);
      objc_msgSend_setK_(v100, v182, 128);
      v131 -= 128;
      objc_msgSend_encodeToCommandBuffer_encoder_leftMatrix_rightMatrix_resultMatrix_(v100, v183, buffer, encoder, resultMatrix, resultMatrix, resultMatrix);
      v130 += 128;
    }

    if (v130 < v112)
    {
      v184 = objc_msgSend_rows(self, v128, v129);
      v187 = objc_msgSend_columns(self, v185, v186);
      sub_2399E9CF4(self, encoder, resultMatrix, TempBuffer, v205, v130, v184 - v130, v187 - v130, statusCopy);
    }

    if (v203 >= 2)
    {
      v188 = objc_msgSend_copyBlock(self, v128, v129);
      (*(v188 + 16))(v188, encoder, bufferCopy3, TempBuffer);
      if ((objc_msgSend_retainedReferences(bufferCopy3, v189, v190) & 1) == 0)
      {
        v191 = TempBuffer;
        v219 = MEMORY[0x277D85DD0];
        v220 = 3221225472;
        v221 = sub_2399EB1A0;
        v222 = &unk_278AFD238;
        v223 = TempBuffer;
        objc_msgSend_addCompletedHandler_(bufferCopy3, v192, &v219);
      }
    }

    if (!status)
    {
      if ((objc_msgSend_retainedReferences(bufferCopy3, v128, v129) & 1) == 0)
      {
        v193 = statusCopy;
        v211 = MEMORY[0x277D85DD0];
        v212 = 3221225472;
        v213 = sub_2399EB1A8;
        v214 = &unk_278AFD238;
        v215 = statusCopy;
        objc_msgSend_addCompletedHandler_(bufferCopy3, v194, &v211);
      }
    }
  }

  else if (status)
  {
    v124 = objc_msgSend_blitCommandEncoder(bufferCopy3, v106, v107);
    objc_msgSend_fillBuffer_range_value_(v124, v125, status, 0, 4, 0);
    objc_msgSend_endEncoding(v124, v126, v127);
  }

  MPSAutoCache::~MPSAutoCache(&v224);
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix resultMatrix:(MPSMatrix *)resultMatrix pivotIndices:(MPSMatrix *)pivotIndices status:(id)status
{
  v7 = status;
  v8 = pivotIndices;
  v11 = commandBuffer;
  if (objc_msgSend_options(self, a2, commandBuffer))
  {
    isEqual = objc_msgSend_isEqual_(sourceMatrix, v13, resultMatrix);
    v26 = isEqual;
    if (!self)
    {
      v27 = 0;
      v28 = 0;
      v29 = 1;
      if (isEqual)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (!v11 && MTLReportFailureTypeEnabled())
    {
      v251 = objc_opt_class();
      v257 = NSStringFromClass(v251);
      MTLReportFailure();
    }

    if (!sourceMatrix && MTLReportFailureTypeEnabled())
    {
      v252 = objc_opt_class();
      v257 = NSStringFromClass(v252);
      MTLReportFailure();
    }

    if (!resultMatrix && MTLReportFailureTypeEnabled())
    {
      v253 = objc_opt_class();
      v257 = NSStringFromClass(v253);
      MTLReportFailure();
    }

    if (!v8 && MTLReportFailureTypeEnabled())
    {
      v254 = objc_opt_class();
      v257 = NSStringFromClass(v254);
      MTLReportFailure();
    }

    if (self)
    {
      objc_msgSend_sourceMatrixOrigin(self, v13, v14);
      objc_msgSend_sourceMatrixOrigin(self, v15, v16);
      if (v281 && MTLReportFailureTypeEnabled())
      {
        v255 = objc_opt_class();
        v257 = NSStringFromClass(v255);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v17, v18, v257);
      objc_msgSend_resultMatrixOrigin(self, v19, v20);
      if (v281 && MTLReportFailureTypeEnabled())
      {
        v256 = objc_opt_class();
        v258 = NSStringFromClass(v256);
        MTLReportFailure();
      }

      objc_msgSend_sourceMatrixOrigin(self, v21, v22, v258);
    }

    else
    {
      v279 = 0;
      selfCopy3 = 0;
      v281 = 0;
    }

    objc_msgSend_rows(sourceMatrix, v13, v14, v257);
    objc_msgSend_sourceMatrixOrigin(self, v30, v31);
    v32 = self->_rows + v279;
    if (v32 > objc_msgSend_rows(sourceMatrix, v33, v34) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_sourceMatrixOrigin(self, v35, v36);
    objc_msgSend_columns(sourceMatrix, v37, v38);
    objc_msgSend_sourceMatrixOrigin(self, v39, v40);
    v41 = self->_columns + selfCopy3;
    if (v41 > objc_msgSend_columns(sourceMatrix, v42, v43) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v44, v45);
    objc_msgSend_rows(resultMatrix, v46, v47);
    objc_msgSend_resultMatrixOrigin(self, v48, v49);
    v50 = self->_rows + v279;
    if (v50 > objc_msgSend_rows(resultMatrix, v51, v52) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v53, v54);
    objc_msgSend_columns(resultMatrix, v55, v56);
    objc_msgSend_resultMatrixOrigin(self, v57, v58);
    v59 = self->_columns + selfCopy3;
    v11 = commandBuffer;
    if (v59 > objc_msgSend_columns(resultMatrix, v60, v61) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(sourceMatrix, v62, v63) == 268435488)
    {
      objc_msgSend_dataType(resultMatrix, v64, v65);
    }

    if ((objc_msgSend_dataType(sourceMatrix, v64, v65) != 268435488 || objc_msgSend_dataType(resultMatrix, v66, v67) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(v8, v68, v69);
    if (objc_msgSend_dataType(v8, v70, v71) != 32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v26 = objc_msgSend_isEqual_(sourceMatrix, v72, resultMatrix);
  }

  objc_msgSend_sourceMatrixOrigin(self, v24, v25);
  objc_msgSend_resultMatrixOrigin(self, v73, v74);
  if (v279 != v271)
  {
    v29 = 0;
    goto LABEL_29;
  }

  objc_msgSend_sourceMatrixOrigin(self, v24, v25);
  v28 = v277;
  objc_msgSend_resultMatrixOrigin(self, v75, v76);
  v29 = 0;
  v27 = v270;
  if (v26)
  {
LABEL_26:
    v11 = commandBuffer;
    if (v28 == v27)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

LABEL_12:
  v11 = commandBuffer;
LABEL_29:
  v77 = objc_msgSend_rows(self, v24, v25);
  v267 = objc_msgSend_columns(self, v78, v79);
  if (v29)
  {
    v82 = 0;
    v83 = 0;
    v265 = 0;
    v263 = 0;
    v279 = 0;
    selfCopy3 = 0;
    v281 = 0;
    v271 = 0;
    selfCopy = 0;
    v273 = 0;
    v276 = 0;
    v277 = 0;
    v278 = 0;
  }

  else
  {
    objc_msgSend_sourceMatrixOrigin(self, v80, v81);
    v265 = v279;
    objc_msgSend_sourceMatrixOrigin(self, v84, v85);
    v263 = selfCopy;
    objc_msgSend_resultMatrixOrigin(self, v86, v87);
    v83 = v276;
    objc_msgSend_resultMatrixOrigin(self, v88, v89);
    v82 = v270;
  }

  v90 = objc_msgSend_rowBytes(sourceMatrix, v80, v81);
  v93 = objc_msgSend_rowBytes(resultMatrix, v91, v92);
  v94 = objc_alloc(MEMORY[0x277CD7210]);
  v97 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v94, v95, v11, 0);
  v271 = v97;
  selfCopy = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v98 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v98 || (v99 = objc_opt_class(), v100 = v77, v101 = sourceMatrix, v102 = NSStringFromClass(v99), objc_msgSend_setLabel_(self, v103, v102), v98 = v102, sourceMatrix = v101, v77 = v100, v11 = commandBuffer, v98))
    {
      objc_msgSend_setLabel_(v97, v96, v98);
    }
  }

  v104 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  v279 = __PAIR64__(v267, v77);
  selfCopy3 = __PAIR64__(v263, v265);
  v281 = __PAIR64__(v82, v83);
  v282 = __PAIR64__(v93, v90);
  sub_2399E4C74(v104, v97, v11, sourceMatrix, resultMatrix, &v279);
  objc_msgSend_endEncoding(v97, v105, v106);
  v8 = pivotIndices;
  v7 = status;

LABEL_37:
  v107 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
  v108 = objc_msgSend_gemmKernel(self, v24, v25);
  v111 = objc_msgSend_trsmKernel(self, v109, v110);
  if (objc_msgSend_rows(self, v112, v113) && objc_msgSend_columns(self, v114, v115))
  {
    v116 = objc_msgSend_rows(self, v114, v115);
    v119 = objc_msgSend_columns(self, v117, v118);
    if (v116 >= v119)
    {
      v120 = v119;
    }

    else
    {
      v120 = v116;
    }

    (*(**(v107 + 32) + 16))(&v279);
    v121 = v279;
    v124 = (2 * v121 + objc_msgSend_rows(self, v122, v123) - 1) / (2 * v121);
    v127 = objc_msgSend_offset(v8, v125, v126);
    if (v124 <= 1)
    {
      v130 = v127;
    }

    else
    {
      v130 = 0;
    }

    v264 = v130;
    v268 = v120;
    v260 = v124;
    if (v124 < 2)
    {
      v138 = objc_msgSend_data(v8, v128, v129);
      v139 = v7;
      if (!v7)
      {
LABEL_51:
        v144 = objc_msgSend_device(commandBuffer, v136, v137);
        v139 = objc_msgSend_newBufferWithLength_options_(v144, v145, 4, 32);
      }
    }

    else
    {
      v131 = objc_msgSend_device(commandBuffer, v128, v129);
      v134 = objc_msgSend_dataType(v8, v132, v133);
      v138 = objc_msgSend_newBufferWithLength_options_(v131, v135, (v124 + v120) * (v134 >> 3), 32);
      v139 = v7;
      if (!v7)
      {
        goto LABEL_51;
      }
    }

    v146 = commandBuffer;
    v147 = objc_msgSend_blitCommandEncoder(commandBuffer, v136, v137);
    objc_msgSend_fillBuffer_range_value_(v147, v148, v139, 0, 4, 0);
    objc_msgSend_endEncoding(v147, v149, v150);
    v153 = 0;
    v266 = v138;
    if (v268 >= 0x80)
    {
      v154 = 0;
      v155 = -128;
      do
      {
        v156 = v139;
        v157 = objc_msgSend_rows(self, v151, v152);
        v158 = objc_alloc(MEMORY[0x277CD7210]);
        v161 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v158, v159, v146, 0);
        v279 = v161;
        selfCopy3 = self;
        if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
        {
          v162 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
          if (v162 || (v163 = objc_opt_class(), v162 = NSStringFromClass(v163), objc_msgSend_setLabel_(self, v164, v162), v162))
          {
            objc_msgSend_setLabel_(v161, v160, v162);
          }
        }

        v165 = v157 + v155;
        v139 = v156;
        v259 = v156;
        v138 = v266;
        sub_2399E9CF4(self, v161, resultMatrix, v266, v264, v154, v165 + 128, 0x80uLL, v259);
        objc_msgSend_endEncoding(v161, v166, v167);

        objc_msgSend_resultMatrixOrigin(self, v168, v169);
        v170 = v154 + v279;
        objc_msgSend_resultMatrixOrigin(self, v171, v172);
        v276 = v170;
        v277 = v154 + selfCopy;
        v278 = 0;
        objc_msgSend_setPrimarySourceMatrixOrigin_(v111, v173, &v276);
        objc_msgSend_resultMatrixOrigin(self, v174, v175);
        v176 = v154 + v279;
        objc_msgSend_resultMatrixOrigin(self, v177, v178);
        v276 = v176;
        v277 = v154 + selfCopy + 128;
        v278 = 0;
        objc_msgSend_setSecondarySourceMatrixOrigin_(v111, v179, &v276);
        objc_msgSend_resultMatrixOrigin(self, v180, v181);
        v182 = v154 + v279;
        objc_msgSend_resultMatrixOrigin(self, v183, v184);
        v276 = v182;
        v277 = v154 + selfCopy + 128;
        v278 = 0;
        objc_msgSend_setResultMatrixOrigin_(v111, v185, &v276);
        v188 = objc_msgSend_columns(self, v186, v187);
        objc_msgSend_setNumberOfRightHandSides_(v111, v189, v188 + v155);
        v146 = commandBuffer;
        objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(v111, v190, commandBuffer, resultMatrix, resultMatrix, resultMatrix);
        objc_msgSend_resultMatrixOrigin(self, v191, v192);
        v193 = v154 + v279 + 128;
        objc_msgSend_resultMatrixOrigin(self, v194, v195);
        v276 = v193;
        v277 = v154 + selfCopy;
        v278 = 0;
        objc_msgSend_setLeftMatrixOrigin_(v108, v196, &v276);
        objc_msgSend_resultMatrixOrigin(self, v197, v198);
        v199 = v154 + v279;
        objc_msgSend_resultMatrixOrigin(self, v200, v201);
        v276 = v199;
        v277 = v154 + selfCopy + 128;
        v278 = 0;
        objc_msgSend_setRightMatrixOrigin_(v108, v202, &v276);
        objc_msgSend_resultMatrixOrigin(self, v203, v204);
        v205 = v154 + v279 + 128;
        objc_msgSend_resultMatrixOrigin(self, v206, v207);
        v276 = v205;
        v277 = v154 + selfCopy + 128;
        v278 = 0;
        objc_msgSend_setResultMatrixOrigin_(v108, v208, &v276);
        v211 = objc_msgSend_rows(self, v209, v210);
        objc_msgSend_setM_(v108, v212, v211 + v155);
        v215 = objc_msgSend_columns(self, v213, v214);
        objc_msgSend_setN_(v108, v216, v215 + v155);
        objc_msgSend_setK_(v108, v217, 128);
        objc_msgSend_encodeToCommandBuffer_leftMatrix_rightMatrix_resultMatrix_(v108, v218, commandBuffer, resultMatrix, resultMatrix, resultMatrix);
        v153 = v154 + 128;
        v219 = v154 + 256;
        v155 -= 128;
        v154 += 128;
      }

      while (v219 <= v268);
    }

    if (v153 < v268)
    {
      v220 = objc_msgSend_rows(self, v151, v152) - v153;
      v223 = objc_msgSend_columns(self, v221, v222) - v153;
      v224 = objc_alloc(MEMORY[0x277CD7210]);
      v227 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v224, v225, commandBuffer, 0);
      v279 = v227;
      selfCopy3 = self;
      if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
      {
        v228 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
        if (v228 || (v229 = objc_opt_class(), v230 = v139, v231 = NSStringFromClass(v229), objc_msgSend_setLabel_(self, v232, v231), v228 = v231, v139 = v230, v138 = v266, v228))
        {
          objc_msgSend_setLabel_(v227, v226, v228);
        }
      }

      sub_2399E9CF4(self, v227, resultMatrix, v138, v264, v153, v220, v223, v139);
      objc_msgSend_endEncoding(v227, v233, v234);
    }

    if (v260 >= 2)
    {
      v235 = objc_msgSend_blitCommandEncoder(commandBuffer, v151, v152);
      v238 = objc_msgSend_data(pivotIndices, v236, v237);
      v241 = objc_msgSend_dataType(pivotIndices, v239, v240);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v235, v242, v266, 0, v238, 0, v268 * (v241 >> 3));
      objc_msgSend_endEncoding(v235, v243, v244);
      if ((objc_msgSend_retainedReferences(commandBuffer, v245, v246) & 1) == 0)
      {
        v247 = v266;
        v279 = MEMORY[0x277D85DD0];
        selfCopy3 = 3221225472;
        v281 = sub_2399EB5B4;
        v282 = &unk_278AFD238;
        v283 = v266;
        objc_msgSend_addCompletedHandler_(commandBuffer, v248, &v279);
      }
    }

    if (!status)
    {
      if ((objc_msgSend_retainedReferences(commandBuffer, v151, v152) & 1) == 0)
      {
        v249 = v139;
        v271 = MEMORY[0x277D85DD0];
        selfCopy = 3221225472;
        v273 = sub_2399EB5BC;
        v274 = &unk_278AFD238;
        v275 = v139;
        objc_msgSend_addCompletedHandler_(commandBuffer, v250, &v271);
      }
    }

    return;
  }

  if (v7)
  {
    v140 = objc_msgSend_blitCommandEncoder(commandBuffer, v114, v115);
    objc_msgSend_fillBuffer_range_value_(v140, v141, v7, 0, 4, 0);
    objc_msgSend_endEncoding(v140, v142, v143);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixDecompositionLU;
  [(MPSKernel *)&v3 dealloc];
}

@end