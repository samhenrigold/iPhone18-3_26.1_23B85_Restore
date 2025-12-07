@interface NSError(BCError)
- (uint64_t)initWithBCError:()BCError;
- (uint64_t)initWithIOKitError:()BCError;
- (uint64_t)retIOKitError;
@end

@implementation NSError(BCError)

- (uint64_t)initWithBCError:()BCError
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ((a3 - 16) > 2)
  {
    v5 = @"Unknown error";
  }

  else
  {
    v5 = off_2784F9048[a3 - 16];
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.BrightnessControl"];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = v5;
  return [self initWithDomain:v6 code:a3 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
}

- (uint64_t)initWithIOKitError:()BCError
{
  v8[2] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.BrightnessControl"];
  v7[0] = *MEMORY[0x277CCA450];
  v7[1] = @"IOKitCode";
  v8[0] = @"IOKit error";
  v8[1] = [MEMORY[0x277CCABB0] numberWithInt:a3];
  return [self initWithDomain:v5 code:17 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, v7, 2)}];
}

- (uint64_t)retIOKitError
{
  v1 = [objc_msgSend(self "userInfo")];
  if (!v1)
  {
    return 5;
  }

  return [v1 intValue];
}

@end