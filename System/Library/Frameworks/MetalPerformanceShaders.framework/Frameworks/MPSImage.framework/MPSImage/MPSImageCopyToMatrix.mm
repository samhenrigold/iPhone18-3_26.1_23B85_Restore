@interface MPSImageCopyToMatrix
- (MPSImageCopyToMatrix)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageCopyToMatrix)initWithDevice:(id)device dataLayout:(MPSDataLayout)dataLayout;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeBatchToCommandBuffer:(id)buffer encoder:(id)encoder sourceImages:(id)images destinationMatrix:(id)matrix;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages destinationMatrix:(MPSMatrix *)destinationMatrix;
- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images destinationMatrix:(id)matrix;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage destinationMatrix:(MPSMatrix *)destinationMatrix;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image destinationMatrix:(id)matrix;
- (void)encodeWithCoder:(id)coder;
- (void)setDestinationMatrixOrigin:(MTLOrigin *)destinationMatrixOrigin;
@end

@implementation MPSImageCopyToMatrix

- (MPSImageCopyToMatrix)initWithDevice:(id)device dataLayout:(MPSDataLayout)dataLayout
{
  v6.receiver = self;
  v6.super_class = MPSImageCopyToMatrix;
  result = [(MPSKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_dataLayout = dataLayout;
    result->_destinationMatrixOrigin.y = 0;
    result->_destinationMatrixOrigin.z = 0;
    result->_destinationMatrixOrigin.x = 0;
    result->_destinationMatrixBatchIndex = 0;
  }

  return result;
}

- (MPSImageCopyToMatrix)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v14.receiver = self;
  v14.super_class = MPSImageCopyToMatrix;
  v5 = [(MPSKernel *)&v14 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_dataLayout = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageCopyToMatrix.dataLayout");
    v7->_destinationMatrixBatchIndex = objc_msgSend_decodeInt64ForKey_(aDecoder, v8, @"MPSImageCopyToMatrix.destinationMatrixBatchIndex");
    v7->_destinationMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v9, @"MPSImageCopyToMatrix.destinationMatrixOriginX");
    v7->_destinationMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v10, @"MPSImageCopyToMatrix.destinationMatrixOriginY");
    v7->_destinationMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v11, @"MPSImageCopyToMatrix.destinationMatrixOriginZ");
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v13 = objc_opt_class();
    NSStringFromClass(v13);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v10.receiver = self;
  v10.super_class = MPSImageCopyToMatrix;
  [(MPSKernel *)&v10 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, selfCopy[15], @"MPSImageCopyToMatrix.dataLayout");
  objc_msgSend_encodeInt64_forKey_(coder, v6, selfCopy[14], @"MPSImageCopyToMatrix.destinationMatrixBatchIndex");
  selfCopy += 11;
  objc_msgSend_encodeInt64_forKey_(coder, v7, *selfCopy, @"MPSImageCopyToMatrix.destinationMatrixOriginX");
  objc_msgSend_encodeInt64_forKey_(coder, v8, selfCopy[1], @"MPSImageCopyToMatrix.destinationMatrixOriginY");
  objc_msgSend_encodeInt64_forKey_(coder, v9, selfCopy[2], @"MPSImageCopyToMatrix.destinationMatrixOriginZ");
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSImageCopyToMatrix;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 15) = self->_dataLayout;
    *(result + 14) = self->_destinationMatrixBatchIndex;
    *(result + 88) = *&self->_destinationMatrixOrigin.x;
    *(result + 13) = self->_destinationMatrixOrigin.z;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSImageCopyToMatrix;
  v4 = [(MPSKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tImageCopyToMatrix DataLayout:  %lu\n\tDestinationMatrixBatchIndex: %lu \n\tDestinationMatrixOrigin: %lu %lu %lu", v4, self->_dataLayout, self->_destinationMatrixBatchIndex, self->_destinationMatrixOrigin.x, self->_destinationMatrixOrigin.y, self->_destinationMatrixOrigin.z);
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage destinationMatrix:(MPSMatrix *)destinationMatrix
{
  v9 = objc_alloc(MEMORY[0x277CD7210]);
  v12 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v9, v10, commandBuffer, 0);
  v21 = v12;
  selfCopy = self;
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v13 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v13 || (v14 = objc_opt_class(), v15 = NSStringFromClass(v14), objc_msgSend_setLabel_(self, v16, v15), (v13 = v15) != 0))
    {
      objc_msgSend_setLabel_(v12, v11, v13);
    }
  }

  v19 = *&self->_destinationMatrixOrigin.x;
  z = self->_destinationMatrixOrigin.z;
  sub_23997464C(self, v12, sourceImage, destinationMatrix, &v19, self->_dataLayout, self->_destinationMatrixBatchIndex, 1);
  MPSDecrementReadCount(sourceImage);
  objc_msgSend_endEncoding(v12, v17, v18);
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image destinationMatrix:(id)matrix
{
  v7 = *&self->_destinationMatrixOrigin.x;
  z = self->_destinationMatrixOrigin.z;
  v8 = v7;
  sub_23997464C(self, encoder, image, matrix, &v8, self->_dataLayout, self->_destinationMatrixBatchIndex, 1);

  MPSDecrementReadCount(image);
}

- (void)encodeBatchToCommandBuffer:(id)buffer encoder:(id)encoder sourceImages:(id)images destinationMatrix:(id)matrix
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7350]))[1476])
  {
    destinationMatrixOrigin = self->_destinationMatrixOrigin;
    sub_239974FEC(self, encoder, buffer, images, matrix, &destinationMatrixOrigin.x, self->_dataLayout, self->_destinationMatrixBatchIndex, 1);
  }

  else
  {
    x = self->_destinationMatrixOrigin.x;
    v16 = *&self->_destinationMatrixOrigin.y;
    if (objc_msgSend_count(images, a2, buffer))
    {
      v12 = 0;
      do
      {
        v13 = objc_msgSend_objectAtIndexedSubscript_(images, v11, v12);
        destinationMatrixOrigin.x = x;
        *&destinationMatrixOrigin.y = v16;
        sub_23997464C(self, encoder, v13, matrix, &destinationMatrixOrigin, self->_dataLayout, self->_destinationMatrixBatchIndex, 1);
        ++x;
        ++v12;
      }

      while (v12 < objc_msgSend_count(images, v14, v15));
    }
  }
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages destinationMatrix:(MPSMatrix *)destinationMatrix
{
  v9 = objc_alloc(MEMORY[0x277CD7210]);
  v12 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v9, v10, commandBuffer, 0);
  v19 = v12;
  selfCopy = self;
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v13 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v13 || (v14 = objc_opt_class(), v15 = NSStringFromClass(v14), objc_msgSend_setLabel_(self, v16, v15, v12, self), (v13 = v15) != 0))
    {
      objc_msgSend_setLabel_(v12, v11, v13, v19, selfCopy);
    }
  }

  objc_msgSend_encodeBatchToCommandBuffer_encoder_sourceImages_destinationMatrix_(self, v11, commandBuffer, v12, sourceImages, destinationMatrix, v19, selfCopy);
  MPSDecrementReadCount();
  objc_msgSend_endEncoding(v12, v17, v18);
}

- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images destinationMatrix:(id)matrix
{
  objc_msgSend_encodeBatchToCommandBuffer_encoder_sourceImages_destinationMatrix_(self, a2, buffer, encoder, images, matrix);

  MPSDecrementReadCount();
}

- (void)setDestinationMatrixOrigin:(MTLOrigin *)destinationMatrixOrigin
{
  z = destinationMatrixOrigin->z;
  *&self->_destinationMatrixOrigin.x = *&destinationMatrixOrigin->x;
  self->_destinationMatrixOrigin.z = z;
}

@end