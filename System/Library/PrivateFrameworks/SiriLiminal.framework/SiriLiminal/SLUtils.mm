@interface SLUtils
+ (id)createErrorWithMsg:(id)msg code:(unint64_t)code;
@end

@implementation SLUtils

+ (id)createErrorWithMsg:(id)msg code:(unint64_t)code
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v11 = @"reason";
  v12[0] = msg;
  v6 = MEMORY[0x277CBEAC0];
  msgCopy = msg;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.sl" code:code userInfo:v8];

  return v9;
}

@end