@interface MLCTensorParameter
+ (MLCTensorParameter)parameterWithTensor:(MLCTensor *)tensor;
+ (MLCTensorParameter)parameterWithTensor:(MLCTensor *)tensor optimizerData:(NSArray *)optimizerData;
- (BOOL)allocateDataForOptimizer:(id)optimizer device:(id)device isVector:(BOOL)vector;
- (MLCTensorParameter)initWithTensor:(id)tensor optimizerData:(id)data;
@end

@implementation MLCTensorParameter

+ (MLCTensorParameter)parameterWithTensor:(MLCTensor *)tensor
{
  v4 = tensor;
  v5 = [[self alloc] initWithTensor:v4 optimizerData:0];

  return v5;
}

+ (MLCTensorParameter)parameterWithTensor:(MLCTensor *)tensor optimizerData:(NSArray *)optimizerData
{
  v6 = optimizerData;
  v7 = tensor;
  v8 = [[self alloc] initWithTensor:v7 optimizerData:v6];

  return v8;
}

- (MLCTensorParameter)initWithTensor:(id)tensor optimizerData:(id)data
{
  tensorCopy = tensor;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = MLCTensorParameter;
  v9 = [(MLCTensorParameter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tensor, tensor);
    if (dataCopy)
    {
      v11 = [dataCopy copy];
      [tensorCopy setOptimizerData:v11];
    }

    device = v10->_device;
    v10->_device = 0;

    v10->_isUpdatable = 1;
  }

  return v10;
}

- (BOOL)allocateDataForOptimizer:(id)optimizer device:(id)device isVector:(BOOL)vector
{
  vectorCopy = vector;
  optimizerCopy = optimizer;
  deviceCopy = device;
  numOptimizerDataBuffers = [optimizerCopy numOptimizerDataBuffers];
  tensor = [(MLCTensorParameter *)self tensor];
  optimizerData = [tensor optimizerData];
  v14 = [optimizerData count];

  if (!v14)
  {
    v41 = a2;
    v15 = [MEMORY[0x277CBEBF8] mutableCopy];
    tensor2 = [(MLCTensorParameter *)self tensor];
    descriptor = [tensor2 descriptor];
    tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];

    if (numOptimizerDataBuffers)
    {
      for (i = 0; i != numOptimizerDataBuffers; ++i)
      {
        v20 = [MLCTensorData dataWithBytesNoCopy:malloc_type_calloc(tensorAllocationSizeInBytes >> 2 length:4uLL freeWhenDone:0x100004052888210uLL), tensorAllocationSizeInBytes & 0xFFFFFFFFFFFFFFFCLL, 1];
        [v15 setObject:v20 atIndexedSubscript:i];
      }
    }

    v21 = [v15 copy];
    tensor3 = [(MLCTensorParameter *)self tensor];
    [tensor3 setOptimizerData:v21];

    a2 = v41;
    vectorCopy = vectorCopy;
  }

  tensor4 = [(MLCTensorParameter *)self tensor];
  optimizerDeviceData = [tensor4 optimizerDeviceData];
  if (optimizerDeviceData)
  {
    v25 = optimizerDeviceData;
    tensor5 = [(MLCTensorParameter *)self tensor];
    optimizerDeviceData2 = [tensor5 optimizerDeviceData];
    v28 = [optimizerDeviceData2 count];

    if (v28)
    {
      device = [(MLCTensorParameter *)self device];
      if (!device || (v30 = device, [(MLCTensorParameter *)self device], v31 = objc_claimAutoreleasedReturnValue(), v31, v30, v31 == deviceCopy))
      {
        [(MLCTensorParameter *)self setDevice:deviceCopy];
LABEL_15:
        v38 = 1;
        goto LABEL_19;
      }
    }
  }

  else
  {
  }

  computeEngine = [deviceCopy computeEngine];
  tensor6 = [(MLCTensorParameter *)self tensor];
  tensor7 = [(MLCTensorParameter *)self tensor];
  optimizerData2 = [tensor7 optimizerData];
  v36 = [computeEngine createOptimizerDeviceDataForTensor:tensor6 optimizer:optimizerCopy optimizerData:optimizerData2 isVector:vectorCopy];

  if (v36 && [v36 count])
  {
    [(MLCTensorParameter *)self setDevice:deviceCopy];
    tensor8 = [(MLCTensorParameter *)self tensor];
    [tensor8 setOptimizerDeviceData:v36];

    goto LABEL_15;
  }

  v39 = +[MLCLog framework];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    [MLCTensorParameter allocateDataForOptimizer:a2 device:v36 isVector:v39];
  }

  v38 = 0;
LABEL_19:

  return v38;
}

- (void)allocateDataForOptimizer:(const char *)a1 device:(uint64_t)a2 isVector:(NSObject *)a3 .cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: failure to create deviceParameter=%@", &v6, 0x16u);
}

@end