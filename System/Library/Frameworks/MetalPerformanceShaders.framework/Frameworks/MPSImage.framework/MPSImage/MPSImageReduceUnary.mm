@interface MPSImageReduceUnary
- (MPSImageReduceUnary)initWithCoder:(id)coder device:(id)device;
- (MPSImageReduceUnary)initWithDevice:(id)device;
- (MPSImageReduceUnary)initWithDevice:(id)device reduceOperation:(int)operation;
- (MTLRegion)clipRectSource;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRectSource:(MTLRegion *)clipRectSource;
@end

@implementation MPSImageReduceUnary

- (MPSImageReduceUnary)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSImageReduceUnary)initWithDevice:(id)device reduceOperation:(int)operation
{
  v8.receiver = self;
  v8.super_class = MPSImageReduceUnary;
  result = [(MPSUnaryImageKernel *)&v8 initWithDevice:device];
  if (result)
  {
    v7 = *(MEMORY[0x277CD7200] + 16);
    v6 = *(MEMORY[0x277CD7200] + 32);
    *&result->_clipRectSource.origin.x = *MEMORY[0x277CD7200];
    *&result->_clipRectSource.origin.z = v7;
    *&result->_clipRectSource.size.height = v6;
    result->_reduceOp = operation;
    result->super._encode = sub_2399498C0;
    result->super._encodeData = result;
  }

  return result;
}

- (MPSImageReduceUnary)initWithCoder:(id)coder device:(id)device
{
  v16.receiver = self;
  v16.super_class = MPSImageReduceUnary;
  v5 = [(MPSUnaryImageKernel *)&v16 initWithCoder:coder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->super._encode = sub_2399498C0;
    v5->super._encodeData = v5;
    v5->_clipRectSource.origin.x = objc_msgSend_decodeInt64ForKey_(coder, v6, @"MPSImageReduce.clipRectSource.origin.x");
    v7->_clipRectSource.origin.y = objc_msgSend_decodeInt64ForKey_(coder, v8, @"MPSImageReduce.clipRectSource.origin.y");
    v7->_clipRectSource.origin.z = objc_msgSend_decodeInt64ForKey_(coder, v9, @"MPSImageReduce.clipRectSource.origin.z");
    v7->_clipRectSource.size.width = objc_msgSend_decodeInt64ForKey_(coder, v10, @"MPSImageReduce.clipRectSource.size.width");
    v7->_clipRectSource.size.height = objc_msgSend_decodeInt64ForKey_(coder, v11, @"MPSImageReduce.clipRectSource.size.height");
    v7->_clipRectSource.size.depth = objc_msgSend_decodeInt64ForKey_(coder, v12, @"MPSImageReduce.clipRectSource.size.depth");
    v7->_reduceOp = objc_msgSend_decodeInt64ForKey_(coder, v13, @"MPSImageReduce.reduceOp");
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v15 = objc_opt_class();
    NSStringFromClass(v15);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v12.receiver = self;
  v12.super_class = MPSImageReduceUnary;
  [(MPSUnaryImageKernel *)&v12 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_clipRectSource.origin.x, @"MPSImageReduce.clipRectSource.origin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_clipRectSource.origin.y, @"MPSImageReduce.clipRectSource.origin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v7, self->_clipRectSource.origin.z, @"MPSImageReduce.clipRectSource.origin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->_clipRectSource.size.width, @"MPSImageReduce.clipRectSource.size.width");
  objc_msgSend_encodeInt64_forKey_(coder, v9, self->_clipRectSource.size.height, @"MPSImageReduce.clipRectSource.size.height");
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_clipRectSource.size.depth, @"MPSImageReduce.clipRectSource.size.depth");
  objc_msgSend_encodeInt64_forKey_(coder, v11, self->_reduceOp, @"MPSImageReduce.reduceOp");
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSImageReduceUnary;
  result = [(MPSUnaryImageKernel *)&v8 copyWithZone:zone device:device];
  if (result)
  {
    v7 = *&self->_clipRectSource.origin.z;
    v6 = *&self->_clipRectSource.size.height;
    *(result + 13) = *&self->_clipRectSource.origin.x;
    *(result + 14) = v7;
    *(result + 15) = v6;
    *(result + 64) = self->_reduceOp;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSImageReduceUnary;
  v4 = [(MPSUnaryImageKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tReduceOperation: %lu", v4, self->_reduceOp);
}

- (MTLRegion)clipRectSource
{
  v3 = *&self[4].size.height;
  *&retstr->origin.x = *&self[4].origin.z;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[5].origin.x;
  return self;
}

- (void)setClipRectSource:(MTLRegion *)clipRectSource
{
  v4 = *&clipRectSource->origin.z;
  v3 = *&clipRectSource->size.height;
  *&self->_clipRectSource.origin.x = *&clipRectSource->origin.x;
  *&self->_clipRectSource.origin.z = v4;
  *&self->_clipRectSource.size.height = v3;
}

@end