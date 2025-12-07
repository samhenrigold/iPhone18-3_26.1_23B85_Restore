@interface MPSMatrixSolveCholesky
- (MPSMatrixSolveCholesky)initWithDevice:(id)device upper:(BOOL)upper order:(NSUInteger)order numberOfRightHandSides:(NSUInteger)numberOfRightHandSides;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix rightHandSideMatrix:(MPSMatrix *)rightHandSideMatrix solutionMatrix:(MPSMatrix *)solutionMatrix;
@end

@implementation MPSMatrixSolveCholesky

- (MPSMatrixSolveCholesky)initWithDevice:(id)device upper:(BOOL)upper order:(NSUInteger)order numberOfRightHandSides:(NSUInteger)numberOfRightHandSides
{
  v23.receiver = self;
  v23.super_class = MPSMatrixSolveCholesky;
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
    v12->_upper = upper;
    v12->_order = order;
    v12->_numberOfRightHandSides = numberOfRightHandSides;
    v15 = [MPSMatrixSolveTriangular alloc];
    v12->_trsmT = objc_msgSend_initWithDevice_right_upper_transpose_unit_order_numberOfRightHandSides_alpha_(v15, v16, device, 0, v12->_upper, 1, 0, v12->_order, 1.0, v12->_numberOfRightHandSides);
    v17 = [MPSMatrixSolveTriangular alloc];
    v19 = objc_msgSend_initWithDevice_right_upper_transpose_unit_order_numberOfRightHandSides_alpha_(v17, v18, device, 0, v12->_upper, 0, 0, v12->_order, 1.0, v12->_numberOfRightHandSides);
    result = v12;
    v12->_trsmN = v19;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix rightHandSideMatrix:(MPSMatrix *)rightHandSideMatrix solutionMatrix:(MPSMatrix *)solutionMatrix
{
  v9 = commandBuffer;
  if (objc_msgSend_options(self, a2, commandBuffer))
  {
    isEqual = objc_msgSend_isEqual_(rightHandSideMatrix, v11, solutionMatrix);
    v28 = isEqual;
    if (!self)
    {
      if (isEqual)
      {
LABEL_44:
        v148 = 0uLL;
        v122 = 1;
        v149 = 0;
        goto LABEL_46;
      }

      v29 = 1;
      goto LABEL_36;
    }
  }

  else
  {
    if (!v9 && MTLReportFailureTypeEnabled())
    {
      v131 = objc_opt_class();
      v138 = NSStringFromClass(v131);
      MTLReportFailure();
    }

    if (!sourceMatrix && MTLReportFailureTypeEnabled())
    {
      v132 = objc_opt_class();
      v138 = NSStringFromClass(v132);
      MTLReportFailure();
    }

    if (!rightHandSideMatrix && MTLReportFailureTypeEnabled())
    {
      v133 = objc_opt_class();
      v138 = NSStringFromClass(v133);
      MTLReportFailure();
    }

    if (!solutionMatrix && MTLReportFailureTypeEnabled())
    {
      v134 = objc_opt_class();
      v138 = NSStringFromClass(v134);
      MTLReportFailure();
    }

    if (self)
    {
      objc_msgSend_primarySourceMatrixOrigin(self, v11, v12);
      objc_msgSend_primarySourceMatrixOrigin(self, v13, v14);
      if (v151 && MTLReportFailureTypeEnabled())
      {
        v135 = objc_opt_class();
        v138 = NSStringFromClass(v135);
        MTLReportFailure();
      }

      objc_msgSend_secondarySourceMatrixOrigin(self, v15, v16, v138);
      objc_msgSend_secondarySourceMatrixOrigin(self, v17, v18);
      if (v151 && MTLReportFailureTypeEnabled())
      {
        v136 = objc_opt_class();
        v139 = NSStringFromClass(v136);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v19, v20, v139);
      objc_msgSend_resultMatrixOrigin(self, v21, v22);
      if (v151 && MTLReportFailureTypeEnabled())
      {
        v137 = objc_opt_class();
        v140 = NSStringFromClass(v137);
        MTLReportFailure();
      }

      objc_msgSend_resultMatrixOrigin(self, v23, v24, v140);
    }

    else
    {
      v150 = 0uLL;
      v151 = 0;
    }

    objc_msgSend_rows(solutionMatrix, v11, v12, v138);
    objc_msgSend_resultMatrixOrigin(self, v30, v31);
    v32 = self->_order + v150;
    if (v32 > objc_msgSend_rows(solutionMatrix, v33, v34) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v35, v36);
    objc_msgSend_columns(solutionMatrix, v37, v38);
    objc_msgSend_resultMatrixOrigin(self, v39, v40);
    v41 = self->_numberOfRightHandSides + *(&v150 + 1);
    if (v41 > objc_msgSend_columns(solutionMatrix, v42, v43) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v44, v45);
    objc_msgSend_rows(rightHandSideMatrix, v46, v47);
    objc_msgSend_secondarySourceMatrixOrigin(self, v48, v49);
    v50 = self->_order + v150;
    if (v50 > objc_msgSend_rows(rightHandSideMatrix, v51, v52) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v53, v54);
    objc_msgSend_columns(rightHandSideMatrix, v55, v56);
    objc_msgSend_secondarySourceMatrixOrigin(self, v57, v58);
    v59 = self->_numberOfRightHandSides + *(&v150 + 1);
    if (v59 > objc_msgSend_columns(rightHandSideMatrix, v60, v61) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_dataType(sourceMatrix, v62, v63) == 268435488 && objc_msgSend_dataType(rightHandSideMatrix, v64, v65) == 268435488)
    {
      objc_msgSend_dataType(solutionMatrix, v64, v65);
    }

    if ((objc_msgSend_dataType(sourceMatrix, v64, v65) != 268435488 || objc_msgSend_dataType(rightHandSideMatrix, v66, v67) != 268435488 || objc_msgSend_dataType(solutionMatrix, v68, v69) != 268435488) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, v70, v71);
    objc_msgSend_rows(sourceMatrix, v72, v73);
    objc_msgSend_primarySourceMatrixOrigin(self, v74, v75);
    v76 = self->_order + v150;
    if (v76 > objc_msgSend_rows(sourceMatrix, v77, v78) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, v79, v80);
    objc_msgSend_columns(sourceMatrix, v81, v82);
    objc_msgSend_primarySourceMatrixOrigin(self, v83, v84);
    v85 = self->_order + *(&v150 + 1);
    if (v85 > objc_msgSend_columns(sourceMatrix, v86, v87) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v28 = objc_msgSend_isEqual_(rightHandSideMatrix, v88, solutionMatrix);
  }

  objc_msgSend_secondarySourceMatrixOrigin(self, v26, v27);
  objc_msgSend_resultMatrixOrigin(self, v89, v90);
  if (v150 == v160)
  {
    objc_msgSend_secondarySourceMatrixOrigin(self, v26, v27);
    objc_msgSend_resultMatrixOrigin(self, v91, v92);
    v93 = v158 == v155 ? v28 : 0;
    if (v93)
    {
      goto LABEL_45;
    }
  }

  v29 = 0;
LABEL_36:
  v142 = sourceMatrix;
  v145 = objc_msgSend_order(self, v26, v27);
  v144 = objc_msgSend_numberOfRightHandSides(self, v94, v95);
  v141 = v29;
  if (v29)
  {
    v98 = v9;
    v99 = 0;
    v100 = 0;
    v143 = 0;
    v150 = 0uLL;
    v151 = 0;
    v160 = 0;
    selfCopy = 0;
    v162 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
  }

  else
  {
    v98 = v9;
    objc_msgSend_secondarySourceMatrixOrigin(self, v96, v97);
    objc_msgSend_secondarySourceMatrixOrigin(self, v101, v102);
    v143 = __PAIR64__(v150, selfCopy);
    objc_msgSend_resultMatrixOrigin(self, v103, v104);
    v100 = v157;
    objc_msgSend_resultMatrixOrigin(self, v105, v106);
    v99 = v155;
  }

  v107 = rightHandSideMatrix;
  v108 = objc_msgSend_rowBytes(rightHandSideMatrix, v96, v97);
  v111 = objc_msgSend_rowBytes(solutionMatrix, v109, v110);
  v112 = objc_alloc(MEMORY[0x277CD7210]);
  v115 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v112, v113, v98, 0);
  v160 = v115;
  selfCopy = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v116 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v116 || (v117 = objc_opt_class(), v116 = NSStringFromClass(v117), objc_msgSend_setLabel_(self, v118, v116), v116))
    {
      objc_msgSend_setLabel_(v115, v114, v116);
    }
  }

  v119 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  *&v150 = __PAIR64__(v144, v145);
  *(&v150 + 1) = __PAIR64__(v143, HIDWORD(v143));
  v151 = __PAIR64__(v99, v100);
  v152 = v108;
  v153 = v111;
  v9 = v98;
  sub_2399E4C74(v119, v115, v98, v107, solutionMatrix, &v150);
  objc_msgSend_endEncoding(v115, v120, v121);
  sourceMatrix = v142;

  if (v141)
  {
    goto LABEL_44;
  }

LABEL_45:
  objc_msgSend_primarySourceMatrixOrigin(self, v26, v27);
  v122 = 0;
LABEL_46:
  p_trsmT = &self->_trsmT;
  trsmT = self->_trsmT;
  v150 = v148;
  v151 = v149;
  objc_msgSend_setPrimarySourceMatrixOrigin_(trsmT, v26, &v150);
  if (v122)
  {
    v146 = 0uLL;
    v147 = 0;
  }

  else
  {
    objc_msgSend_primarySourceMatrixOrigin(self, v125, v126);
  }

  trsmN = self->_trsmN;
  v150 = v146;
  v151 = v147;
  objc_msgSend_setPrimarySourceMatrixOrigin_(trsmN, v125, &v150);
  if (self->_upper)
  {
    p_trsmN = &self->_trsmT;
  }

  else
  {
    p_trsmN = &self->_trsmN;
  }

  if (self->_upper)
  {
    p_trsmT = &self->_trsmN;
  }

  objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(*p_trsmN, v128, v9, sourceMatrix, solutionMatrix, solutionMatrix);
  objc_msgSend_encodeToCommandBuffer_sourceMatrix_rightHandSideMatrix_solutionMatrix_(*p_trsmT, v130, v9, sourceMatrix, solutionMatrix, solutionMatrix);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixSolveCholesky;
  [(MPSKernel *)&v3 dealloc];
}

@end