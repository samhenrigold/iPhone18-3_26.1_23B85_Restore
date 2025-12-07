@interface MPSMatrixLogSoftMaxGradient
- (MPSMatrixLogSoftMaxGradient)initWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)buffer gradientMatrix:(id)matrix forwardOutputMatrix:(id)outputMatrix resultMatrix:(id)resultMatrix;
@end

@implementation MPSMatrixLogSoftMaxGradient

- (MPSMatrixLogSoftMaxGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixLogSoftMaxGradient;
  return [(MPSMatrixSoftMaxGradient *)&v4 initWithDevice:device];
}

- (void)encodeToCommandBuffer:(id)buffer gradientMatrix:(id)matrix forwardOutputMatrix:(id)outputMatrix resultMatrix:(id)resultMatrix
{
  v11 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.super.isa + v11) & 1) == 0)
  {
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      v54 = objc_opt_class();
      v61 = NSStringFromClass(v54);
      MTLReportFailure();
    }

    if (!matrix && MTLReportFailureTypeEnabled())
    {
      v55 = objc_opt_class();
      v61 = NSStringFromClass(v55);
      MTLReportFailure();
    }

    if (!outputMatrix && MTLReportFailureTypeEnabled())
    {
      v56 = objc_opt_class();
      v61 = NSStringFromClass(v56);
      MTLReportFailure();
    }

    if (!resultMatrix && MTLReportFailureTypeEnabled())
    {
      v57 = objc_opt_class();
      v61 = NSStringFromClass(v57);
      MTLReportFailure();
    }

    objc_msgSend_primarySourceMatrixOrigin(self, a2, buffer, v61);
    objc_msgSend_primarySourceMatrixOrigin(self, v12, v13);
    if (v65 && MTLReportFailureTypeEnabled())
    {
      v58 = objc_opt_class();
      v62 = NSStringFromClass(v58);
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v14, v15, v62);
    objc_msgSend_secondarySourceMatrixOrigin(self, v16, v17);
    if (v65 && MTLReportFailureTypeEnabled())
    {
      v59 = objc_opt_class();
      v63 = NSStringFromClass(v59);
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v18, v19, v63);
    objc_msgSend_resultMatrixOrigin(self, v20, v21);
    if (v65 && MTLReportFailureTypeEnabled())
    {
      v60 = objc_opt_class();
      v64 = NSStringFromClass(v60);
      MTLReportFailure();
    }

    if (objc_msgSend_matrices(matrix, v22, v23, v64) == 1 && objc_msgSend_matrices(outputMatrix, v24, v25) == 1)
    {
      objc_msgSend_matrices(resultMatrix, v24, v25);
    }

    if ((objc_msgSend_matrices(matrix, v24, v25) != 1 || objc_msgSend_matrices(outputMatrix, v26, v27) != 1 || objc_msgSend_matrices(resultMatrix, v28, v29) != 1) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(resultMatrix, v30, v31);
    if (objc_msgSend_dataType(resultMatrix, v32, v33) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(matrix, v34, v35);
    if (objc_msgSend_dataType(matrix, v36, v37) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(outputMatrix, v38, v39);
    if (objc_msgSend_dataType(outputMatrix, v40, v41) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v42 = objc_alloc(MEMORY[0x277CD7210]);
  v45 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v42, v43, buffer, 0);
  if ((*(&self->super.super.super.super.isa + v11) & 0x18) != 0)
  {
    v46 = *(&self->super.super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v46 || (v47 = objc_opt_class(), v48 = NSStringFromClass(v47), objc_msgSend_setLabel_(self, v49, v48), (v46 = v48) != 0))
    {
      objc_msgSend_setLabel_(v45, v44, v46);
    }
  }

  sub_2399D7A0C(self, v45, buffer, matrix, outputMatrix, resultMatrix, 1u);
  v52 = MEMORY[0x277CD7388];
  v53 = *MEMORY[0x277CD7388];
  if (*(matrix + v53 + 24))
  {
    MPSDecrementReadCount(matrix);
    v53 = *v52;
  }

  if (*(outputMatrix + v53 + 24))
  {
    MPSDecrementReadCount(outputMatrix);
  }

  objc_msgSend_endEncoding(v45, v50, v51);
}

@end