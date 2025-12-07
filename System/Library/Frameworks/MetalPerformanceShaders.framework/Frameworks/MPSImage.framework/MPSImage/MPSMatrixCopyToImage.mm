@interface MPSMatrixCopyToImage
- (MPSMatrixCopyToImage)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixCopyToImage)initWithDevice:(id)device dataLayout:(MPSDataLayout)dataLayout;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeBatchToCommandBuffer:(id)buffer encoder:(id)encoder sourceMatrix:(id)matrix destinationImages:(id)images;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix destinationImages:(MPSImageBatch *)destinationImages;
- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix destinationImages:(id)images;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix destinationImage:(MPSImage *)destinationImage;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix destinationImage:(id)image;
- (void)encodeWithCoder:(id)coder;
- (void)setSourceMatrixOrigin:(MTLOrigin *)sourceMatrixOrigin;
@end

@implementation MPSMatrixCopyToImage

- (MPSMatrixCopyToImage)initWithDevice:(id)device dataLayout:(MPSDataLayout)dataLayout
{
  v6.receiver = self;
  v6.super_class = MPSMatrixCopyToImage;
  result = [(MPSKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_dataLayout = dataLayout;
    result->_sourceMatrixOrigin.y = 0;
    result->_sourceMatrixOrigin.z = 0;
    result->_sourceMatrixOrigin.x = 0;
    result->_sourceMatrixBatchIndex = 0;
  }

  return result;
}

- (MPSMatrixCopyToImage)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v14.receiver = self;
  v14.super_class = MPSMatrixCopyToImage;
  v5 = [(MPSKernel *)&v14 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_dataLayout = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageCopyToMatrix.dataLayout");
    v7->_sourceMatrixBatchIndex = objc_msgSend_decodeInt64ForKey_(aDecoder, v8, @"MPSImageCopyToMatrix.destinationMatrixBatchIndex");
    v7->_sourceMatrixOrigin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v9, @"MPSImageCopyToMatrix.destinationMatrixOriginX");
    v7->_sourceMatrixOrigin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v10, @"MPSImageCopyToMatrix.destinationMatrixOriginY");
    v7->_sourceMatrixOrigin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v11, @"MPSImageCopyToMatrix.destinationMatrixOriginZ");
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
  v10.super_class = MPSMatrixCopyToImage;
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
  v6.super_class = MPSMatrixCopyToImage;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 15) = self->_dataLayout;
    *(result + 14) = self->_sourceMatrixBatchIndex;
    *(result + 88) = *&self->_sourceMatrixOrigin.x;
    *(result + 13) = self->_sourceMatrixOrigin.z;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSMatrixCopyToImage;
  v4 = [(MPSKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tMatrixCopyToImage DataLayout:  %lu\n\tSourceMatrixBatchIndex: %lu \n\tSourceMatrixOrigin: %lu %lu %lu", v4, self->_dataLayout, self->_sourceMatrixBatchIndex, self->_sourceMatrixOrigin.x, self->_sourceMatrixOrigin.y, self->_sourceMatrixOrigin.z);
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix destinationImage:(MPSImage *)destinationImage
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

  v19 = *&self->_sourceMatrixOrigin.x;
  z = self->_sourceMatrixOrigin.z;
  sub_23997464C(self, v12, destinationImage, sourceMatrix, &v19, self->_dataLayout, self->_sourceMatrixBatchIndex, 0);
  objc_msgSend_endEncoding(v12, v17, v18);
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix destinationImage:(id)image
{
  v6 = *&self->_sourceMatrixOrigin.x;
  z = self->_sourceMatrixOrigin.z;
  v7 = v6;
  sub_23997464C(self, encoder, image, matrix, &v7, self->_dataLayout, self->_sourceMatrixBatchIndex, 0);
}

- (void)encodeBatchToCommandBuffer:(id)buffer encoder:(id)encoder sourceMatrix:(id)matrix destinationImages:(id)images
{
  if ((*(**(&self->super.super.isa + *MEMORY[0x277CD7350]) + 56))(*(&self->super.super.isa + *MEMORY[0x277CD7350]), a2))
  {
    *v20 = *&self->_sourceMatrixOrigin.x;
    *&v20[16] = self->_sourceMatrixOrigin.z;
    sub_239974FEC(self, encoder, buffer, images, matrix, v20, self->_dataLayout, self->_sourceMatrixBatchIndex, 0);
  }

  else
  {
    x = self->_sourceMatrixOrigin.x;
    v19 = *&self->_sourceMatrixOrigin.y;
    if (objc_msgSend_count(images, v11, v12))
    {
      v15 = 0;
      do
      {
        v16 = objc_msgSend_objectAtIndexedSubscript_(images, v14, v15);
        *v20 = x;
        *&v20[8] = v19;
        sub_23997464C(self, encoder, v16, matrix, v20, self->_dataLayout, self->_sourceMatrixBatchIndex, 0);
        ++x;
        ++v15;
      }

      while (v15 < objc_msgSend_count(images, v17, v18));
    }
  }
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix destinationImages:(MPSImageBatch *)destinationImages
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

  objc_msgSend_encodeBatchToCommandBuffer_encoder_sourceMatrix_destinationImages_(self, v11, commandBuffer, v12, sourceMatrix, destinationImages, v19, selfCopy);
  if (*(&sourceMatrix[3].super.isa + *MEMORY[0x277CD7388]))
  {
    MPSDecrementReadCount(sourceMatrix);
  }

  objc_msgSend_endEncoding(v12, v17, v18);
}

- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceMatrix:(id)matrix destinationImages:(id)images
{
  objc_msgSend_encodeBatchToCommandBuffer_encoder_sourceMatrix_destinationImages_(self, a2, buffer, encoder, matrix, images);
  if (*(matrix + *MEMORY[0x277CD7388] + 24))
  {

    MPSDecrementReadCount(matrix);
  }
}

- (void)setSourceMatrixOrigin:(MTLOrigin *)sourceMatrixOrigin
{
  z = sourceMatrixOrigin->z;
  *&self->_sourceMatrixOrigin.x = *&sourceMatrixOrigin->x;
  self->_sourceMatrixOrigin.z = z;
}

@end