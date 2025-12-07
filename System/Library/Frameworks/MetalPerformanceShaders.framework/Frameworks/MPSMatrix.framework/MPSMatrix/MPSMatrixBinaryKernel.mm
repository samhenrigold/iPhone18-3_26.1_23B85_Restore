@interface MPSMatrixBinaryKernel
- (MPSMatrixBinaryKernel)initWithCoder:(id)coder device:(id)device;
- (MPSMatrixBinaryKernel)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
- (void)setPrimarySourceMatrixOrigin:(MTLOrigin *)primarySourceMatrixOrigin;
- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin;
- (void)setSecondarySourceMatrixOrigin:(MTLOrigin *)secondarySourceMatrixOrigin;
@end

@implementation MPSMatrixBinaryKernel

- (MPSMatrixBinaryKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixBinaryKernel;
  result = [(MPSKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_primarySourceMatrixOrigin.y = 0;
    result->_primarySourceMatrixOrigin.z = 0;
    result->_primarySourceMatrixOrigin.x = 0;
    result->_secondarySourceMatrixOrigin.y = 0;
    result->_secondarySourceMatrixOrigin.z = 0;
    result->_secondarySourceMatrixOrigin.x = 0;
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
  v9.receiver = self;
  v9.super_class = MPSMatrixBinaryKernel;
  result = [(MPSKernel *)&v9 copyWithZone:zone device:device];
  if (result)
  {
    z = self->_primarySourceMatrixOrigin.z;
    *(result + 104) = *&self->_primarySourceMatrixOrigin.x;
    *(result + 15) = z;
    v7 = self->_secondarySourceMatrixOrigin.z;
    *(result + 8) = *&self->_secondarySourceMatrixOrigin.x;
    *(result + 18) = v7;
    v8 = *&self->_resultMatrixOrigin.x;
    *(result + 21) = self->_resultMatrixOrigin.z;
    *(result + 152) = v8;
    *(result + 11) = self->_batchStart;
    *(result + 12) = self->_batchSize;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v16.receiver = self;
  v16.super_class = MPSMatrixBinaryKernel;
  [(MPSKernel *)&v16 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_primarySourceMatrixOrigin.x, @"MPSMatrixUnaryKernel.primarySourceMatrixOrigin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_primarySourceMatrixOrigin.y, @"MPSMatrixUnaryKernel.primarySourceMatrixOrigin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v7, self->_primarySourceMatrixOrigin.z, @"MPSMatrixUnaryKernel.primarySourceMatrixOrigin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->_secondarySourceMatrixOrigin.x, @"MPSMatrixUnaryKernel.secondarySourceMatrixOrigin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v9, self->_secondarySourceMatrixOrigin.y, @"MPSMatrixUnaryKernel.secondarySourceMatrixOrigin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_secondarySourceMatrixOrigin.z, @"MPSMatrixUnaryKernel.secondarySourceMatrixOrigin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v11, self->_resultMatrixOrigin.x, @"MPSMatrixUnaryKernel.resultMatrixOrigin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v12, self->_resultMatrixOrigin.y, @"MPSMatrixUnaryKernel.resultMatrixOrigin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v13, self->_resultMatrixOrigin.z, @"MPSMatrixUnaryKernel.resultMatrixOrigin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v14, self->_batchStart, @"MPSMatrixUnaryKernel.batchStart");
  objc_msgSend_encodeInt64_forKey_(coder, v15, self->_batchSize, @"MPSMatrixUnaryKernel.batchSize");
}

- (MPSMatrixBinaryKernel)initWithCoder:(id)coder device:(id)device
{
  v20.receiver = self;
  v20.super_class = MPSMatrixBinaryKernel;
  v5 = [(MPSKernel *)&v20 initWithCoder:coder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 1) << 8 == 256)
  {
    v5->_primarySourceMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(coder, v6, @"MPSMatrixUnaryKernel.primarySourceMatrixOrigin.x");
    v7->_primarySourceMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(coder, v8, @"MPSMatrixUnaryKernel.primarySourceMatrixOrigin.y");
    v7->_primarySourceMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(coder, v9, @"MPSMatrixUnaryKernel.primarySourceMatrixOrigin.z");
    v7->_secondarySourceMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(coder, v10, @"MPSMatrixUnaryKernel.secondarySourceMatrixOrigin.x");
    v7->_secondarySourceMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(coder, v11, @"MPSMatrixUnaryKernel.secondarySourceMatrixOrigin.y");
    v7->_secondarySourceMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(coder, v12, @"MPSMatrixUnaryKernel.secondarySourceMatrixOrigin.z");
    v7->_resultMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(coder, v13, @"MPSMatrixUnaryKernel.resultMatrixOrigin.x");
    v7->_resultMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(coder, v14, @"MPSMatrixUnaryKernel.resultMatrixOrigin.y");
    v7->_resultMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(coder, v15, @"MPSMatrixUnaryKernel.resultMatrixOrigin.z");
    v7->_batchStart = objc_msgSend_decodeInt64ForKey_(coder, v16, @"MPSMatrixUnaryKernel.batchStart");
    v7->_batchSize = objc_msgSend_decodeInt64ForKey_(coder, v17, @"MPSMatrixUnaryKernel.batchSize");
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v19 = objc_opt_class();
    NSStringFromClass(v19);
    MTLReportFailure();
  }

  return 0;
}

- (void)setPrimarySourceMatrixOrigin:(MTLOrigin *)primarySourceMatrixOrigin
{
  z = primarySourceMatrixOrigin->z;
  *&self->_primarySourceMatrixOrigin.x = *&primarySourceMatrixOrigin->x;
  self->_primarySourceMatrixOrigin.z = z;
}

- (void)setSecondarySourceMatrixOrigin:(MTLOrigin *)secondarySourceMatrixOrigin
{
  z = secondarySourceMatrixOrigin->z;
  *&self->_secondarySourceMatrixOrigin.x = *&secondarySourceMatrixOrigin->x;
  self->_secondarySourceMatrixOrigin.z = z;
}

- (void)setResultMatrixOrigin:(MTLOrigin *)resultMatrixOrigin
{
  z = resultMatrixOrigin->z;
  *&self->_resultMatrixOrigin.x = *&resultMatrixOrigin->x;
  self->_resultMatrixOrigin.z = z;
}

@end