@interface NSError(CEC)
+ (uint64_t)cecAcknowledgementErrorWithUnderlyingError:()CEC;
+ (uint64_t)cecFeatureAbortErrorWithOpCode:()CEC reason:method:;
+ (uint64_t)cecIOErrorWithUnderlyingError:()CEC;
+ (uint64_t)cecTimeoutError;
+ (uint64_t)cecTopologyChangeError;
- (void)isCECAcknowledgementError;
@end

@implementation NSError(CEC)

+ (uint64_t)cecFeatureAbortErrorWithOpCode:()CEC reason:method:
{
  v11[5] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCA9B8];
  v10[0] = *MEMORY[0x277CCA450];
  v11[0] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v10[1] = *MEMORY[0x277CCA470];
  v11[1] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v10[2] = @"CoreCECFeatureAbortOpcodeErrorKey";
  v11[2] = [MEMORY[0x277CCACA8] stringWithUTF8String:CECMessageTypeString(a3)];
  v10[3] = @"CoreCECFeatureAbortReasonErrorKey";
  v10[4] = @"CoreCECFeatureAbortMethodErrorKey";
  v11[3] = [MEMORY[0x277CCACA8] stringWithUTF8String:CECAbortReasonString(a4)];
  v11[4] = a5;
  return [v8 errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, v10, 5)}];
}

+ (uint64_t)cecAcknowledgementErrorWithUnderlyingError:()CEC
{
  v8[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v7[0] = *MEMORY[0x277CCA450];
  v8[0] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v7[1] = *MEMORY[0x277CCA470];
  v5 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v7[2] = *MEMORY[0x277CCA7E8];
  v8[1] = v5;
  v8[2] = a3;
  return [v4 errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, v7, 3)}];
}

+ (uint64_t)cecIOErrorWithUnderlyingError:()CEC
{
  v8[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v7[0] = *MEMORY[0x277CCA450];
  v8[0] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v7[1] = *MEMORY[0x277CCA470];
  v5 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v7[2] = *MEMORY[0x277CCA7E8];
  v8[1] = v5;
  v8[2] = a3;
  return [v4 errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, v7, 3)}];
}

+ (uint64_t)cecTimeoutError
{
  v3[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v2[0] = *MEMORY[0x277CCA450];
  v3[0] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v2[1] = *MEMORY[0x277CCA470];
  v3[1] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  return [v0 errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:4 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v3, v2, 2)}];
}

+ (uint64_t)cecTopologyChangeError
{
  v3[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v2[0] = *MEMORY[0x277CCA450];
  v3[0] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v2[1] = *MEMORY[0x277CCA470];
  v3[1] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  return [v0 errorWithDomain:@"com.apple.private.CoreCEC.ErrorDomain" code:5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v3, v2, 2)}];
}

- (void)isCECAcknowledgementError
{
  result = [objc_msgSend(self "domain")];
  if (result)
  {
    return ([self code] == 2);
  }

  return result;
}

@end