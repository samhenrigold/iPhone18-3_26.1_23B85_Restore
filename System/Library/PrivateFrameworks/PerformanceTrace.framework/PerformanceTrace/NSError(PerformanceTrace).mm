@interface NSError(PerformanceTrace)
+ (id)error:()PerformanceTrace description:;
+ (id)error:()PerformanceTrace description:underlyingError:;
+ (id)passiveTraceError:()PerformanceTrace description:;
@end

@implementation NSError(PerformanceTrace)

+ (id)error:()PerformanceTrace description:
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = @"Unknown Error (description cannot be nil)";
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    a3 = 0;
  }

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v5 forKey:*MEMORY[0x277CCA450]];
  v8 = [v4 errorWithDomain:@"PerformanceTraceError" code:a3 userInfo:v7];

  return v8;
}

+ (id)error:()PerformanceTrace description:underlyingError:
{
  v21[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = *MEMORY[0x277CCA7E8];
      v20[0] = *MEMORY[0x277CCA450];
      v20[1] = v10;
      v21[0] = v7;
      v21[1] = v8;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v12 = MEMORY[0x277CCA9B8];
      v13 = a3;
      goto LABEL_7;
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = MEMORY[0x277CBEAC0];
    v16 = *MEMORY[0x277CCA450];
    v17 = @"Unknown Error (underlyingError cannot be nil)";
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = MEMORY[0x277CBEAC0];
    v16 = *MEMORY[0x277CCA450];
    v17 = @"Unknown Error (description cannot be nil)";
  }

  v11 = [v15 dictionaryWithObject:v17 forKey:v16];
  v12 = v14;
  v13 = 0;
LABEL_7:
  v18 = [v12 errorWithDomain:@"PerformanceTraceError" code:v13 userInfo:v11];

  return v18;
}

+ (id)passiveTraceError:()PerformanceTrace description:
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = @"Unknown Error (description cannot be nil)";
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    a3 = 0;
  }

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v5 forKey:*MEMORY[0x277CCA450]];
  v8 = [v4 errorWithDomain:@"PerformanceTraceError" code:a3 userInfo:v7];

  return v8;
}

@end