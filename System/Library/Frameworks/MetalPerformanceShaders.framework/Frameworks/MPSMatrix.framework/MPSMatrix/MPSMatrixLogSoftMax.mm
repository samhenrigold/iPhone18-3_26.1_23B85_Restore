@interface MPSMatrixLogSoftMax
- (MPSMatrixLogSoftMax)initWithCoder:(id)coder device:(id)device;
- (MPSMatrixLogSoftMax)initWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)buffer inputMatrix:(id)matrix resultMatrix:(id)resultMatrix;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSMatrixLogSoftMax

- (MPSMatrixLogSoftMax)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixLogSoftMax;
  return [(MPSMatrixSoftMax *)&v4 initWithDevice:device];
}

- (MPSMatrixLogSoftMax)initWithCoder:(id)coder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSMatrixLogSoftMax;
  result = [(MPSMatrixSoftMax *)&v7 initWithCoder:coder device:device];
  if (result && *(&result->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    v5 = result;
    if (MTLReportFailureTypeEnabled())
    {
      v6 = objc_opt_class();
      NSStringFromClass(v6);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSMatrixLogSoftMax;
  [(MPSMatrixSoftMax *)&v3 encodeWithCoder:coder];
}

- (void)encodeToCommandBuffer:(id)buffer inputMatrix:(id)matrix resultMatrix:(id)resultMatrix
{
  v9 = objc_alloc(MEMORY[0x277CD7210]);
  v12 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v9, v10, buffer, 0);
  v19 = v12;
  selfCopy = self;
  if ((*(&self->super.super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v13 = *(&self->super.super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v13 || (v14 = objc_opt_class(), v15 = NSStringFromClass(v14), objc_msgSend_setLabel_(self, v16, v15, v12, self), (v13 = v15) != 0))
    {
      objc_msgSend_setLabel_(v12, v11, v13, v19, selfCopy);
    }
  }

  sub_2399E6218(self, v12, buffer, matrix, resultMatrix, 1);
  if (*(matrix + *MEMORY[0x277CD7388] + 24))
  {
    MPSDecrementReadCount(matrix);
  }

  objc_msgSend_endEncoding(v12, v17, v18, v19, selfCopy);
}

@end