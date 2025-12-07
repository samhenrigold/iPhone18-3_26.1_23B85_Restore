@interface MPSMatrixRandomMTGP32
- (MPSMatrixRandomMTGP32)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixRandomMTGP32)initWithDevice:(id)device destinationDataType:(MPSDataType)destinationDataType seed:(NSUInteger)seed;
- (MPSMatrixRandomMTGP32)initWithDevice:(id)device destinationDataType:(MPSDataType)destinationDataType seed:(NSUInteger)seed distributionDescriptor:(MPSMatrixRandomDistributionDescriptor *)distributionDescriptor;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer destinationMatrix:(id)matrix;
- (void)encodeToCommandBuffer:(id)buffer destinationVector:(id)vector;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSMatrixRandomMTGP32

- (MPSMatrixRandomMTGP32)initWithDevice:(id)device destinationDataType:(MPSDataType)destinationDataType seed:(NSUInteger)seed distributionDescriptor:(MPSMatrixRandomDistributionDescriptor *)distributionDescriptor
{
  v8 = *&destinationDataType;
  v11 = objc_msgSend_distributionType(distributionDescriptor, a2, device);
  v37.receiver = self;
  v37.super_class = MPSMatrixRandomMTGP32;
  v12 = [(MPSMatrixRandom *)&v37 initWithDevice:device destinationDataType:v8 distributionType:v11];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277CD7280]);
    v16 = objc_msgSend_distributionType(distributionDescriptor, v14, v15);
    objc_msgSend_setDistributionType_(v13, v17, v16);
    objc_msgSend_minimum(distributionDescriptor, v18, v19);
    objc_msgSend_setMinimum_(v13, v20, v21);
    objc_msgSend_maximum(distributionDescriptor, v22, v23);
    objc_msgSend_setMaximum_(v13, v24, v25);
    objc_msgSend_mean(distributionDescriptor, v26, v27);
    objc_msgSend_setMean_(v13, v28, v29);
    objc_msgSend_standardDeviation(distributionDescriptor, v30, v31);
    objc_msgSend_setStandardDeviation_(v13, v32, v33);
    v34 = objc_alloc(MEMORY[0x277CD7288]);
    v12->_parallelFilter = objc_msgSend_initWithDevice_destinationDataType_seed_distributionDescriptor_(v34, v35, device, v8, seed, v13);
  }

  return v12;
}

- (MPSMatrixRandomMTGP32)initWithDevice:(id)device destinationDataType:(MPSDataType)destinationDataType seed:(NSUInteger)seed
{
  v6 = *&destinationDataType;
  v9 = objc_msgSend_defaultDistributionDescriptor(MPSMatrixRandomDistributionDescriptor, a2, device);
  v11 = objc_msgSend_initWithDevice_destinationDataType_seed_distributionDescriptor_(self, v10, device, v6, seed, v9);

  return v11;
}

- (void)encodeToCommandBuffer:(id)buffer destinationVector:(id)vector
{
  objc_msgSend_batchSize(self, a2, buffer);
  if (objc_msgSend_batchSize(self, v7, v8) != 1 && MTLReportFailureTypeEnabled())
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = objc_opt_class();
    v23 = v21;
    v24 = NSStringFromClass(v22);
    MTLReportFailure();
  }

  objc_msgSend_batchStart(self, v9, v10, v23, v24);
  objc_msgSend_vectorBytes(vector, v11, v12);
  objc_msgSend_dataType(vector, v13, v14);
  parallelFilter = self->_parallelFilter;
  objc_msgSend_data(vector, v16, v17);
  objc_msgSend_length(vector, v18, v19);

  MEMORY[0x2821F9670](parallelFilter, sel_encodeToCommandBuffer_destinationBuffer_destinationOffset_numEntries_, buffer);
}

- (void)encodeToCommandBuffer:(id)buffer destinationMatrix:(id)matrix
{
  objc_msgSend_batchSize(self, a2, buffer);
  if (objc_msgSend_batchSize(self, v7, v8) != 1 && MTLReportFailureTypeEnabled())
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = objc_opt_class();
    v27 = v25;
    v28 = NSStringFromClass(v26);
    MTLReportFailure();
  }

  objc_msgSend_rowBytes(matrix, v9, v10, v27, v28);
  objc_msgSend_dataType(matrix, v11, v12);
  objc_msgSend_batchStart(self, v13, v14);
  objc_msgSend_matrixBytes(matrix, v15, v16);
  objc_msgSend_dataType(matrix, v17, v18);
  parallelFilter = self->_parallelFilter;
  objc_msgSend_data(matrix, v20, v21);
  objc_msgSend_rows(matrix, v22, v23);

  MEMORY[0x2821F9670](parallelFilter, sel_encodeToCommandBuffer_destinationBuffer_destinationOffset_numEntries_, buffer);
}

- (MPSMatrixRandomMTGP32)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSMatrixRandomMTGP32;
  result = [MPSMatrixRandom initWithCoder:sel_initWithCoder_device_ device:?];
  if (result)
  {
    v7 = result;
    v8 = objc_alloc(MEMORY[0x277CD7288]);
    v10 = objc_msgSend_initWithCoder_device_(v8, v9, aDecoder, device);
    result = v7;
    v7->_parallelFilter = v10;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MPSMatrixRandomMTGP32;
  [(MPSMatrixRandom *)&v6 encodeWithCoder:?];
  objc_msgSend_encodeWithCoder_(self->_parallelFilter, v5, coder);
}

- (void)dealloc
{
  objc_msgSend_dealloc(self->_parallelFilter, a2, v2);
  v4.receiver = self;
  v4.super_class = MPSMatrixRandomMTGP32;
  [(MPSKernel *)&v4 dealloc];
}

@end