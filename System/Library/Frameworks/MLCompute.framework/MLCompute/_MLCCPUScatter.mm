@interface _MLCCPUScatter
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (id)layerWithDevice:(id)device dimension:(unint64_t)dimension reduceType:(int)type;
- (_MLCCPUScatter)initWithDevice:(id)device dimension:(unint64_t)dimension reduceType:(int)type;
@end

@implementation _MLCCPUScatter

+ (id)layerWithDevice:(id)device dimension:(unint64_t)dimension reduceType:(int)type
{
  v5 = *&type;
  deviceCopy = device;
  v9 = [[self alloc] initWithDevice:deviceCopy dimension:dimension reduceType:v5];

  return v9;
}

- (_MLCCPUScatter)initWithDevice:(id)device dimension:(unint64_t)dimension reduceType:(int)type
{
  v5 = *&type;
  deviceCopy = device;
  v9 = [MEMORY[0x277CBEBF8] mutableCopy];
  v10 = [MLCCPUDeviceOps deviceOpsWithType:51 params:0 inDeltaData:0 outDeltaData:0];
  v11 = v10;
  if (v10)
  {
    [v10 setScatterGatherDimension:dimension];
    [v11 setScatterReduceType:v5];
    [v9 addObject:v11];
  }

  v12 = [v9 copy];
  v15.receiver = self;
  v15.super_class = _MLCCPUScatter;
  v13 = [(_MLCCPULayer *)&v15 initWithDevice:deviceCopy deviceOps:v12];

  return v13;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v6 = [ops objectAtIndexedSubscript:0];
  objc_opt_class();
  v7 = objc_opt_new();
  [v6 setLayer:v7];

  return 1;
}

@end