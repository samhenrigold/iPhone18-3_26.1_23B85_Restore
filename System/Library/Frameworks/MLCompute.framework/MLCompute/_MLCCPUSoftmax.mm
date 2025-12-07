@interface _MLCCPUSoftmax
+ (id)layerWithDevice:(id)device operation:(int)operation dimension:(unint64_t)dimension;
- (_MLCCPUSoftmax)initWithDevice:(id)device operation:(int)operation dimension:(unint64_t)dimension;
@end

@implementation _MLCCPUSoftmax

- (_MLCCPUSoftmax)initWithDevice:(id)device operation:(int)operation dimension:(unint64_t)dimension
{
  v29[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v9 = [MEMORY[0x277CBEBF8] mutableCopy];
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  if (!operation)
  {
    v10 = 11;
    goto LABEL_5;
  }

  if (operation == 1)
  {
    v10 = 21;
LABEL_5:
    LODWORD(v24) = v10;
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:408];
    memset(v22, 0, sizeof(v22));
    memset(v21, 0, sizeof(v21));
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:176];
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:176];
    v29[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    v28 = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    v16 = [MLCCPUDeviceOps deviceOpsWithType:16 params:v11 inDeltaData:v14 outDeltaData:v15 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

    if (v16)
    {
      [v16 setSoftmaxDimension:dimension];
      [v9 addObject:v16];
    }

    v17 = [v9 copy];
    v20.receiver = self;
    v20.super_class = _MLCCPUSoftmax;
    self = [(_MLCCPULayer *)&v20 initWithDevice:deviceCopy deviceOps:v17];

    selfCopy = self;
    goto LABEL_11;
  }

  v11 = +[MLCLog framework];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [_MLCCPUSoftmax initWithDevice:operation operation:v11 dimension:?];
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

+ (id)layerWithDevice:(id)device operation:(int)operation dimension:(unint64_t)dimension
{
  v6 = *&operation;
  deviceCopy = device;
  v9 = [[self alloc] initWithDevice:deviceCopy operation:v6 dimension:dimension];

  return v9;
}

- (void)initWithDevice:(int)a1 operation:(NSObject *)a2 dimension:.cold.1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[_MLCCPUSoftmax initWithDevice:operation:dimension:]";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%s: Unknown softmaxOp=%d", &v2, 0x12u);
}

@end