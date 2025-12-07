@interface _MLCCPUDropout
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (id)layerWithDevice:(id)device rate:(float)rate seed:(unint64_t)seed;
- (_MLCCPUDropout)initWithDevice:(id)device rate:(float)rate seed:(unint64_t)seed;
@end

@implementation _MLCCPUDropout

- (_MLCCPUDropout)initWithDevice:(id)device rate:(float)rate seed:(unint64_t)seed
{
  seedCopy = seed;
  v27[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v9 = [MEMORY[0x277CBEBF8] mutableCopy];
  v25 = 0;
  memset(v22, 0, sizeof(v22));
  rateCopy = rate;
  v24 = seedCopy;
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:368];
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:176];
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:176];
  v27[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v26 = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v15 = [MLCCPUDeviceOps deviceOpsWithType:8 params:v10 inDeltaData:v13 outDeltaData:v14 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  if (v15)
  {
    [v9 addObject:v15];
  }

  v16 = [v9 copy];
  v19.receiver = self;
  v19.super_class = _MLCCPUDropout;
  v17 = [(_MLCCPULayer *)&v19 initWithDevice:deviceCopy deviceOps:v16];

  return v17;
}

+ (id)layerWithDevice:(id)device rate:(float)rate seed:(unint64_t)seed
{
  deviceCopy = device;
  v9 = [self alloc];
  *&v10 = rate;
  v11 = [v9 initWithDevice:deviceCopy rate:seed seed:v10];

  return v11;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v35 = [ops objectAtIndexedSubscript:0];
  params = [v35 params];
  bytes = [params bytes];
  v11 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v11 descriptor];
  shape = [descriptor shape];
  v14 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v14 descriptor];
  stride = [descriptor2 stride];
  v36 = tensorsCopy;
  v17 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor3 = [v17 descriptor];
  v33 = bytes;
  LODWORD(bytes) = CPU_BuildBNNSNDArrayDescriptor(bytes, shape, stride, 0, [descriptor3 dataType], 1, 0);

  if (bytes && ([tensorCopy descriptor], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "shape"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(tensorCopy, "descriptor"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "stride"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(tensorCopy, "descriptor"), v23 = objc_claimAutoreleasedReturnValue(), v24 = CPU_BuildBNNSNDArrayDescriptor(v33 + 176, v20, v22, 0, objc_msgSend(v23, "dataType"), 1, 0), v23, v22, v21, v20, v19, v24))
  {
    memset(v37, 0, sizeof(v37));
    LODWORD(v37[0]) = 1;
    v25 = MEMORY[0x23EE75C60](v33, v37);
    v27 = v35;
    v26 = v36;
    if (v25)
    {
      v28 = [v36 objectAtIndexedSubscript:0];
      [v35 setSourceStride:CPU_SetBatchStride(v28)];

      [v35 setResultStride:CPU_SetBatchStride(tensorCopy)];
    }

    objc_opt_class();
    v29 = objc_opt_new();
    [v35 setLayer:v29];

    layer = [v35 layer];
    [layer setFilter:v25];

    v31 = 1;
  }

  else
  {
    v31 = 0;
    v27 = v35;
    v26 = v36;
  }

  return v31;
}

@end