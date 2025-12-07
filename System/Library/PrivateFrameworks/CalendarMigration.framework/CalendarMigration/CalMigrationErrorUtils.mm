@interface CalMigrationErrorUtils
+ (id)errorFromException:(id)exception;
@end

@implementation CalMigrationErrorUtils

+ (id)errorFromException:(id)exception
{
  v15[5] = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  v14[0] = @"ExceptionName";
  name = [exceptionCopy name];
  v15[0] = name;
  v14[1] = @"ExceptionReason";
  reason = [exceptionCopy reason];
  null = reason;
  if (!reason)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v15[1] = null;
  v14[2] = @"ExceptionCallStackReturnAddresses";
  callStackReturnAddresses = [exceptionCopy callStackReturnAddresses];
  v15[2] = callStackReturnAddresses;
  v14[3] = @"ExceptionCallStackSymbols";
  callStackSymbols = [exceptionCopy callStackSymbols];
  v15[3] = callStackSymbols;
  v14[4] = @"ExceptionUserInfo";
  userInfo = [exceptionCopy userInfo];
  null2 = userInfo;
  if (!userInfo)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v15[4] = null2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
  if (!userInfo)
  {
  }

  if (!reason)
  {
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.calendar.MigrationErrors" code:2 userInfo:v11];

  return v12;
}

@end