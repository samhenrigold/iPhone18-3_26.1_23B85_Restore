@interface MTLLegacySVGPULog
- (NSString)locationDescription;
- (void)dealloc;
@end

@implementation MTLLegacySVGPULog

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLLegacySVGPULog;
  [(MTLLegacySVGPULog *)&v3 dealloc];
}

- (NSString)locationDescription
{
  v25 = *MEMORY[0x277D85DE8];
  GPUDebugFunctionInfo::GPUDebugFunctionInfo(v19, [(MTLLegacySVGPULog *)self function]);
  v17 = v19[1];
  v18 = MEMORY[0x277CCACA8];
  pipelineIdentifier = [(MTLLegacySVGPULog *)self pipelineIdentifier];
  encoderLabel = [(MTLLegacySVGPULog *)self encoderLabel];
  v3 = v19[2];
  callIndex = [(MTLLegacySVGPULog *)self callIndex];
  errorStackTrace = [(MTLLegacySVGPULog *)self errorStackTrace];
  if (errorStackTrace)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_2841C04D0];
    context = objc_autoreleasePoolPush();
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(NSArray *)errorStackTrace countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = 0;
      v9 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(errorStackTrace);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          if ([objc_msgSend(v11 "URL")])
          {
            -[__CFString appendFormat:](v6, "appendFormat:", @"\t* frame #%d: %@\n", v8, [v11 description]);
            v8 = (v8 + 1);
          }
        }

        v7 = [(NSArray *)errorStackTrace countByEnumeratingWithState:&v20 objects:v24 count:16];
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

  return [v18 stringWithFormat:@"%@ %@ encoder: %@, %@: %lu\n%@\n", v17, pipelineIdentifier, encoderLabel, v3, callIndex, v12];
}

@end