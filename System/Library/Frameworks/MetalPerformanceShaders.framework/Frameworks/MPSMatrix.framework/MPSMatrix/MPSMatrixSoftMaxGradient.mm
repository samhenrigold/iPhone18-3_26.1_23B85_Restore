@interface MPSMatrixSoftMaxGradient
- (MPSMatrixSoftMaxGradient)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSMatrixSoftMaxGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixSoftMaxGradient)initWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)commandBuffer gradientMatrix:(MPSMatrix *)gradientMatrix forwardOutputMatrix:(MPSMatrix *)forwardOutputMatrix resultMatrix:(MPSMatrix *)resultMatrix;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSMatrixSoftMaxGradient

- (MPSMatrixSoftMaxGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixSoftMaxGradient;
  result = [(MPSMatrixBinaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_sourceColumns = -1;
    result->_sourceRows = -1;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer gradientMatrix:(MPSMatrix *)gradientMatrix forwardOutputMatrix:(MPSMatrix *)forwardOutputMatrix resultMatrix:(MPSMatrix *)resultMatrix
{
  v11 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v11) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v54 = objc_opt_class();
      v61 = NSStringFromClass(v54);
      MTLReportFailure();
    }

    if (!gradientMatrix && MTLReportFailureTypeEnabled())
    {
      v55 = objc_opt_class();
      v61 = NSStringFromClass(v55);
      MTLReportFailure();
    }

    if (!forwardOutputMatrix && MTLReportFailureTypeEnabled())
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

    objc_msgSend_primarySourceMatrixOrigin(self, a2, commandBuffer, v61);
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

    if (objc_msgSend_matrices(gradientMatrix, v22, v23, v64) == 1 && objc_msgSend_matrices(forwardOutputMatrix, v24, v25) == 1)
    {
      objc_msgSend_matrices(resultMatrix, v24, v25);
    }

    if ((objc_msgSend_matrices(gradientMatrix, v24, v25) != 1 || objc_msgSend_matrices(forwardOutputMatrix, v26, v27) != 1 || objc_msgSend_matrices(resultMatrix, v28, v29) != 1) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(resultMatrix, v30, v31);
    if (objc_msgSend_dataType(resultMatrix, v32, v33) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(gradientMatrix, v34, v35);
    if (objc_msgSend_dataType(gradientMatrix, v36, v37) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_dataType(forwardOutputMatrix, v38, v39);
    if (objc_msgSend_dataType(forwardOutputMatrix, v40, v41) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v42 = objc_alloc(MEMORY[0x277CD7210]);
  v45 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v42, v43, commandBuffer, 0);
  if ((*(&self->super.super.super.isa + v11) & 0x18) != 0)
  {
    v46 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v46 || (v47 = objc_opt_class(), v48 = NSStringFromClass(v47), objc_msgSend_setLabel_(self, v49, v48), (v46 = v48) != 0))
    {
      objc_msgSend_setLabel_(v45, v44, v46);
    }
  }

  sub_2399D7A0C(self, v45, commandBuffer, gradientMatrix, forwardOutputMatrix, resultMatrix, 0);
  v52 = MEMORY[0x277CD7388];
  v53 = *MEMORY[0x277CD7388];
  if (*(&gradientMatrix[3].super.isa + v53))
  {
    MPSDecrementReadCount(gradientMatrix);
    v53 = *v52;
  }

  if (*(&forwardOutputMatrix[3].super.isa + v53))
  {
    MPSDecrementReadCount(forwardOutputMatrix);
  }

  objc_msgSend_endEncoding(v45, v50, v51);
}

- (MPSMatrixSoftMaxGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSMatrixSoftMaxGradient;
  v5 = [(MPSMatrixBinaryKernel *)&v11 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_sourceColumns = -1;
    v5->_sourceRows = -1;
    v5->_sourceColumns = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPMatrixSoftMaxGradient._sourceColumns;");
    v7->_sourceRows = objc_msgSend_decodeInt64ForKey_(aDecoder, v8, @"MPMatrixSoftMaxGradient._sourceRows");
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v10 = objc_opt_class();
    NSStringFromClass(v10);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v7.receiver = self;
  v7.super_class = MPSMatrixSoftMaxGradient;
  [(MPSMatrixBinaryKernel *)&v7 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_sourceColumns, @"MPMatrixSoftMaxGradient._sourceColumns;");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_sourceRows, @"MPMatrixSoftMaxGradient._sourceRows");
}

- (MPSMatrixSoftMaxGradient)copyWithZone:(NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSMatrixSoftMaxGradient;
  result = [(MPSMatrixBinaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    result->_sourceColumns = self->_sourceColumns;
    result->_sourceRows = self->_sourceRows;
  }

  return result;
}

@end