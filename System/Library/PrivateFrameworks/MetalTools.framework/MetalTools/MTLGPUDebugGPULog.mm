@interface MTLGPUDebugGPULog
- (NSString)functionDescription;
- (NSString)locationDescription;
- (void)dealloc;
@end

@implementation MTLGPUDebugGPULog

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugGPULog;
  [(MTLGPUDebugGPULog *)&v3 dealloc];
}

- (NSString)functionDescription
{
  GPUDebugFunctionInfo::GPUDebugFunctionInfo(v7, [(MTLGPUDebugGPULog *)self function], [(MTLGPUDebugGPULog *)self functionType], [(MTLGPUDebugGPULog *)self functionName]);
  v3 = MEMORY[0x277CCACA8];
  v4 = v7[1];
  if ([(MTLGPUDebugGPULog *)self functionName])
  {
    functionName = [(MTLGPUDebugGPULog *)self functionName];
  }

  else
  {
    functionName = @"<unnamed>";
  }

  return [v3 stringWithFormat:@"%@ function: %@", v4, functionName];
}

- (NSString)locationDescription
{
  v24 = *MEMORY[0x277D85DE8];
  GPUDebugFunctionInfo::GPUDebugFunctionInfo(v18, [(MTLGPUDebugGPULog *)self function], [(MTLGPUDebugGPULog *)self functionType], [(MTLGPUDebugGPULog *)self functionName]);
  v17 = MEMORY[0x277CCACA8];
  pipelineIdentifier = [(MTLGPUDebugGPULog *)self pipelineIdentifier];
  encoderLabel = [(MTLGPUDebugGPULog *)self encoderLabel];
  v3 = v18[2];
  callIndex = [(MTLGPUDebugGPULog *)self callIndex];
  errorStackTrace = [(MTLGPUDebugGPULog *)self errorStackTrace];
  if (errorStackTrace)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_2841C04D0];
    context = objc_autoreleasePoolPush();
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(NSArray *)errorStackTrace countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = 0;
      v9 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(errorStackTrace);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          if ([objc_msgSend(v11 "URL")])
          {
            -[__CFString appendFormat:](v6, "appendFormat:", @"\t* frame #%d: %@\n", v8, [v11 description]);
            v8 = (v8 + 1);
          }
        }

        v7 = [(NSArray *)errorStackTrace countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v6 = 0;
  }

  v12 = &stru_2841C04D0;
  if (v6)
  {
    v12 = v6;
  }

  return [v17 stringWithFormat:@"%@ encoder: %@, %@: %lu\n%@\n", pipelineIdentifier, encoderLabel, v3, callIndex, v12];
}

@end