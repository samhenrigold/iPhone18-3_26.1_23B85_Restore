@interface MPSMatrixUnaryKernel
- (MPSMatrixUnaryKernel)initWithCoder:(id)coder device:(id)device;
- (MPSMatrixUnaryKernel)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin;
- (void)setSourceMatrixOrigin:(MTLOrigin *)sourceMatrixOrigin;
@end

@implementation MPSMatrixUnaryKernel

- (MPSMatrixUnaryKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixUnaryKernel;
  result = [(MPSKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_sourceMatrixOrigin.y = 0;
    result->_sourceMatrixOrigin.z = 0;
    result->_sourceMatrixOrigin.x = 0;
    result->_resultMatrixOrigin.y = 0;
    result->_resultMatrixOrigin.z = 0;
    result->_resultMatrixOrigin.x = 0;
    result->_batchStart = 0;
    result->_batchSize = -1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSMatrixUnaryKernel;
  result = [(MPSKernel *)&v8 copyWithZone:zone device:device];
  if (result)
  {
    z = self->_sourceMatrixOrigin.z;
    *(result + 104) = *&self->_sourceMatrixOrigin.x;
    *(result + 15) = z;
    v7 = self->_resultMatrixOrigin.z;
    *(result + 8) = *&self->_resultMatrixOrigin.x;
    *(result + 18) = v7;
    *(result + 11) = self->_batchStart;
    *(result + 12) = self->_batchSize;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v13.receiver = self;
  v13.super_class = MPSMatrixUnaryKernel;
  [(MPSKernel *)&v13 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_sourceMatrixOrigin.x, @"MPSMatrixUnaryKernel.sourceMatrixOrigin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_sourceMatrixOrigin.y, @"MPSMatrixUnaryKernel.sourceMatrixOrigin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v7, self->_sourceMatrixOrigin.z, @"MPSMatrixUnaryKernel.sourceMatrixOrigin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->_resultMatrixOrigin.x, @"MPSMatrixUnaryKernel.resultMatrixOrigin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v9, self->_resultMatrixOrigin.y, @"MPSMatrixUnaryKernel.resultMatrixOrigin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_resultMatrixOrigin.z, @"MPSMatrixUnaryKernel.resultMatrixOrigin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v11, self->_batchStart, @"MPSMatrixUnaryKernel.batchStart");
  objc_msgSend_encodeInt64_forKey_(coder, v12, self->_batchSize, @"MPSMatrixUnaryKernel.batchSize");
}

- (MPSMatrixUnaryKernel)initWithCoder:(id)coder device:(id)device
{
  v17.receiver = self;
  v17.super_class = MPSMatrixUnaryKernel;
  v5 = [(MPSKernel *)&v17 initWithCoder:coder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 1) << 8 == 256)
  {
    v5->_sourceMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(coder, v6, @"MPSMatrixUnaryKernel.sourceMatrixOrigin.x");
    v7->_sourceMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(coder, v8, @"MPSMatrixUnaryKernel.sourceMatrixOrigin.y");
    v7->_sourceMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(coder, v9, @"MPSMatrixUnaryKernel.sourceMatrixOrigin.z");
    v7->_resultMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(coder, v10, @"MPSMatrixUnaryKernel.resultMatrixOrigin.x");
    v7->_resultMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(coder, v11, @"MPSMatrixUnaryKernel.resultMatrixOrigin.y");
    v7->_resultMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(coder, v12, @"MPSMatrixUnaryKernel.resultMatrixOrigin.z");
    v7->_batchStart = objc_msgSend_decodeInt64ForKey_(coder, v13, @"MPSMatrixUnaryKernel.batchStart");
    v7->_batchSize = objc_msgSend_decodeInt64ForKey_(coder, v14, @"MPSMatrixUnaryKernel.batchSize");
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v16 = objc_opt_class();
    NSStringFromClass(v16);
    MTLReportFailure();
  }

  return 0;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSMatrixUnaryKernel;
  v4 = [(MPSKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tsourceMatrixOrigin (rowIndex, columnIndex, batchIndex): \t(%lu, %lu, %lu)\n\tresultMatrixOrigin (rowIndex, columnIndex, batchIndex): \t(%lu, %lu, %lu)\n\tbatchStart:\t\t\t\t%lu\n\tbatchSize:\t\t\t\t%lu\n", v4, self->_sourceMatrixOrigin.x, self->_sourceMatrixOrigin.y, self->_sourceMatrixOrigin.z, self->_resultMatrixOrigin.x, self->_resultMatrixOrigin.y, self->_resultMatrixOrigin.z, self->_batchStart, self->_batchSize);
}

- (void)setSourceMatrixOrigin:(MTLOrigin *)sourceMatrixOrigin
{
  z = sourceMatrixOrigin->z;
  *&self->_sourceMatrixOrigin.x = *&sourceMatrixOrigin->x;
  self->_sourceMatrixOrigin.z = z;
}

- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin
{
  z = resultMatrixOrigin->z;
  *&self->_resultMatrixOrigin.x = *&resultMatrixOrigin->x;
  self->_resultMatrixOrigin.z = z;
}

@end