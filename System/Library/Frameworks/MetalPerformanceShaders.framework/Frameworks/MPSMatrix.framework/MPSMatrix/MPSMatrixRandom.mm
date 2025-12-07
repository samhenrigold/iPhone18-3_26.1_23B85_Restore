@interface MPSMatrixRandom
- (MPSMatrixRandom)initWithCoder:(id)coder device:(id)device;
- (MPSMatrixRandom)initWithDevice:(id)device;
- (MPSMatrixRandom)initWithDevice:(id)device destinationDataType:(unsigned int)type distributionType:(unint64_t)distributionType;
- (void)encodeToCommandBuffer:(id)commandBuffer destinationMatrix:(MPSMatrix *)destinationMatrix;
- (void)encodeToCommandBuffer:(id)commandBuffer destinationVector:(MPSVector *)destinationVector;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSMatrixRandom

- (MPSMatrixRandom)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSMatrixRandom)initWithDevice:(id)device destinationDataType:(unsigned int)type distributionType:(unint64_t)distributionType
{
  v8.receiver = self;
  v8.super_class = MPSMatrixRandom;
  result = [(MPSKernel *)&v8 initWithDevice:device];
  if (result)
  {
    result->_destinationDataType = type;
    result->_distributionType = distributionType;
    result->_batchStart = 0;
    result->_batchSize = 1;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer destinationVector:(MPSVector *)destinationVector
{
  if (MTLReportFailureTypeEnabled())
  {

    MTLReportFailure();
  }
}

- (void)encodeToCommandBuffer:(id)commandBuffer destinationMatrix:(MPSMatrix *)destinationMatrix
{
  if (MTLReportFailureTypeEnabled())
  {

    MTLReportFailure();
  }
}

- (MPSMatrixRandom)initWithCoder:(id)coder device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSMatrixRandom;
  v5 = [(MPSKernel *)&v13 initWithCoder:coder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_destinationDataType = objc_msgSend_decodeInt32ForKey_(coder, v6, @"kMPSMatrixRandomDataTypeKey");
    v7->_distributionType = objc_msgSend_decodeInt32ForKey_(coder, v8, @"kMPSMatrixRandomDistributionKey");
    v7->_batchStart = objc_msgSend_decodeInt32ForKey_(coder, v9, @"kMPSMatrixRandomBatchStartKey");
    v7->_batchSize = objc_msgSend_decodeInt32ForKey_(coder, v10, @"kMPSMatrixRandomBatchSizeKey");
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v12 = objc_opt_class();
    NSStringFromClass(v12);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v9.receiver = self;
  v9.super_class = MPSMatrixRandom;
  [(MPSKernel *)&v9 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(coder, v5, self->_destinationDataType, @"kMPSMatrixRandomDataTypeKey");
  objc_msgSend_encodeInt32_forKey_(coder, v6, LODWORD(self->_distributionType), @"kMPSMatrixRandomDistributionKey");
  objc_msgSend_encodeInt32_forKey_(coder, v7, LODWORD(self->_batchStart), @"kMPSMatrixRandomBatchStartKey");
  objc_msgSend_encodeInt32_forKey_(coder, v8, LODWORD(self->_batchSize), @"kMPSMatrixRandomBatchSizeKey");
}

@end