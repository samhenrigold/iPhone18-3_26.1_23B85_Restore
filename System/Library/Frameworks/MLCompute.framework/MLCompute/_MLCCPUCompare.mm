@interface _MLCCPUCompare
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (id)layerWithDevice:(id)device operation:(int)operation;
- (_MLCCPUCompare)initWithDevice:(id)device operation:(int)operation;
@end

@implementation _MLCCPUCompare

- (_MLCCPUCompare)initWithDevice:(id)device operation:(int)operation
{
  v28 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (operation >= 0xC)
  {
    v9 = +[MLCLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_MLCCPUCompare initWithDevice:a2 operation:v9];
    }

    v8 = 0;
  }

  else
  {
    v8 = dword_238D45E5C[operation];
  }

  memset(v23, 0, 512);
  LODWORD(v23[0]) = v8;
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:536];
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v26 length:176];
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v27 length:176];
  memset(v22, 0, sizeof(v22));
  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:176];
  v25[0] = v11;
  v25[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v24 = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v16 = [MLCCPUDeviceOps deviceOpsWithType:42 params:v10 inDeltaData:v14 outDeltaData:v15 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  [v16 setBinaryOperation:operation != 8];
  if (v16)
  {
    [v7 addObject:v16];
  }

  v17 = [v7 copy];
  v21.receiver = self;
  v21.super_class = _MLCCPUCompare;
  v18 = [(_MLCCPULayer *)&v21 initWithDevice:deviceCopy deviceOps:v17];

  return v18;
}

+ (id)layerWithDevice:(id)device operation:(int)operation
{
  v4 = *&operation;
  deviceCopy = device;
  v7 = [[self alloc] initWithDevice:deviceCopy operation:v4];

  return v7;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v37 = [ops objectAtIndexedSubscript:0];
  params = [v37 params];
  bytes = [params bytes];

  v11 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v11 descriptor];
  shape = [descriptor shape];
  v14 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v14 descriptor];
  stride = [descriptor2 stride];
  v17 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor3 = [v17 descriptor];
  v36 = bytes;
  MajorDescriptor = CPU_BuildBNNSNDArrayLastMajorDescriptor(bytes + 8, shape, stride, 0, [descriptor3 dataType]);

  if (!MajorDescriptor)
  {
    goto LABEL_6;
  }

  if ([tensorsCopy count] == 2)
  {
    v20 = [tensorsCopy objectAtIndexedSubscript:1];
    descriptor4 = [v20 descriptor];
    shape2 = [descriptor4 shape];
    v23 = [tensorsCopy objectAtIndexedSubscript:1];
    descriptor5 = [v23 descriptor];
    stride2 = [descriptor5 stride];
    v26 = [tensorsCopy objectAtIndexedSubscript:1];
    descriptor6 = [v26 descriptor];
    v28 = CPU_BuildBNNSNDArrayLastMajorDescriptor(v36 + 184, shape2, stride2, 0, [descriptor6 dataType]);

    if (!v28)
    {
      LOBYTE(MajorDescriptor) = 0;
LABEL_6:
      v29 = tensorCopy;
      goto LABEL_7;
    }
  }

  v29 = tensorCopy;
  descriptor7 = [tensorCopy descriptor];
  shape3 = [descriptor7 shape];
  descriptor8 = [tensorCopy descriptor];
  stride3 = [descriptor8 stride];
  descriptor9 = [tensorCopy descriptor];
  LOBYTE(MajorDescriptor) = CPU_BuildBNNSNDArrayLastMajorDescriptor(v36 + 360, shape3, stride3, 0, [descriptor9 dataType]);

LABEL_7:
  return MajorDescriptor;
}

- (void)initWithDevice:(const char *)a1 operation:(NSObject *)a2 .cold.1(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: Unsupported operation.", &v4, 0xCu);
}

@end