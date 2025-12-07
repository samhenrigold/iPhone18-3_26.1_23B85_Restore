@interface MPSMatrixSoftMax
- (MPSMatrixSoftMax)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSMatrixSoftMax)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixSoftMax)initWithDevice:(id)device;
- (id)debugDescription;
- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix resultMatrix:(MPSMatrix *)resultMatrix;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSMatrixSoftMax

- (MPSMatrixSoftMax)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixSoftMax;
  result = [(MPSMatrixUnaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_sourceColumns = -1;
    result->_sourceRows = -1;
  }

  return result;
}

- (MPSMatrixSoftMax)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSMatrixSoftMax;
  v5 = [(MPSMatrixUnaryKernel *)&v11 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_sourceColumns = -1;
    v5->_sourceRows = -1;
    v5->_sourceColumns = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPMatrixSoftMax._sourceColumns;");
    v7->_sourceRows = objc_msgSend_decodeInt64ForKey_(aDecoder, v8, @"MPMatrixSoftMax._sourceRows");
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
  v7.super_class = MPSMatrixSoftMax;
  [(MPSMatrixUnaryKernel *)&v7 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_sourceColumns, @"MPMatrixSoftMax._sourceColumns;");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_sourceRows, @"MPMatrixSoftMax._sourceRows");
}

- (MPSMatrixSoftMax)copyWithZone:(NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSMatrixSoftMax;
  result = [(MPSMatrixUnaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    result->_sourceColumns = self->_sourceColumns;
    result->_sourceRows = self->_sourceRows;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix resultMatrix:(MPSMatrix *)resultMatrix
{
  v9 = objc_alloc(MEMORY[0x277CD7210]);
  v12 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v9, v10, commandBuffer, 0);
  v19 = v12;
  selfCopy = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v13 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v13 || (v14 = objc_opt_class(), v15 = NSStringFromClass(v14), objc_msgSend_setLabel_(self, v16, v15, v12, self), (v13 = v15) != 0))
    {
      objc_msgSend_setLabel_(v12, v11, v13, v19, selfCopy);
    }
  }

  sub_2399E6218(self, v12, commandBuffer, inputMatrix, resultMatrix, 0);
  if (*(&inputMatrix[3].super.isa + *MEMORY[0x277CD7388]))
  {
    MPSDecrementReadCount(inputMatrix);
  }

  objc_msgSend_endEncoding(v12, v17, v18, v19, selfCopy);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSMatrixSoftMax;
  v4 = [(MPSMatrixUnaryKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tsourceRows:  \t%lu\n\tsourceColumns:\t%lu", v4, self->_sourceRows, self->_sourceColumns);
}

@end