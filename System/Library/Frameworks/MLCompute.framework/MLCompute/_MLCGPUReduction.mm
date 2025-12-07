@interface _MLCGPUReduction
+ (id)layerWithDevice:(id)device reduceType:(int)type dimensions:(id)dimensions sourceShapeCount:(unint64_t)count;
- (_MLCGPUReduction)initWithDevice:(id)device reduceType:(int)type dimensions:(id)dimensions sourceShapeCount:(unint64_t)count;
@end

@implementation _MLCGPUReduction

- (_MLCGPUReduction)initWithDevice:(id)device reduceType:(int)type dimensions:(id)dimensions sourceShapeCount:(unint64_t)count
{
  v40 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v35.receiver = self;
  v35.super_class = _MLCGPUReduction;
  v9 = [(_MLCGPUReduction *)&v35 init];
  v10 = v9;
  if (v9)
  {
    aSelector = a2;
    v31 = v9;
    deviceList = [deviceCopy deviceList];
    v12 = [deviceList count];

    v32 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v12)
    {
      v13 = 0;
      if ((type & 0xFFFFFFFE) == 8)
      {
        v14 = @"reduce_forward_any_all";
      }

      else
      {
        v14 = @"reduce_forward";
      }

      do
      {
        deviceList2 = [deviceCopy deviceList];
        v16 = [deviceList2 objectAtIndexedSubscript:v13];

        gpuLibrary = [deviceCopy gpuLibrary];
        v18 = [gpuLibrary objectAtIndexedSubscript:v13];
        v19 = [v18 newFunctionWithName:v14];

        v20 = [v16 newComputePipelineStateWithFunction:v19 error:0];
        gpuLibrary2 = [deviceCopy gpuLibrary];
        v22 = [gpuLibrary2 objectAtIndexedSubscript:v13];
        v23 = [v22 newFunctionWithName:@"reduce_gradient"];

        v24 = [v16 newComputePipelineStateWithFunction:v23 error:0];
        if ((type - 1) >= 9)
        {
          v25 = +[MLCLog framework];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v29 = NSStringFromSelector(aSelector);
            *buf = 138412546;
            v37 = v29;
            v38 = 1024;
            typeCopy = type;
            _os_log_error_impl(&dword_238C1D000, v25, OS_LOG_TYPE_ERROR, "%@: unknown reduceType type = %d", buf, 0x12u);
          }
        }

        if (v20)
        {
          v26 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v20 gradientKernel:v24];
          [v26 setSourceOfForwardNeededForGradient:0];
          [v26 setResultOfForwardNeededForGradient:0];
          if ((type - 3) >= 2)
          {
            if (type == 7)
            {
              [v26 setSourceOfForwardNeededForGradient:1];
            }
          }

          else
          {
            [v26 setSourceOfForwardNeededForGradient:1];
            [v26 setResultOfForwardNeededForGradient:1];
          }

          if (v26)
          {
            [v32 addObject:v26];
          }
        }

        ++v13;
      }

      while (v12 != v13);
    }

    v27 = [v32 copy];
    v10 = v31;
    v34.receiver = v31;
    v34.super_class = _MLCGPUReduction;
    [(_MLCGPULayer *)&v34 setDeviceOps:v27];
  }

  return v10;
}

+ (id)layerWithDevice:(id)device reduceType:(int)type dimensions:(id)dimensions sourceShapeCount:(unint64_t)count
{
  v7 = *&type;
  dimensionsCopy = dimensions;
  deviceCopy = device;
  v12 = [[self alloc] initWithDevice:deviceCopy reduceType:v7 dimensions:dimensionsCopy sourceShapeCount:count];

  return v12;
}

@end