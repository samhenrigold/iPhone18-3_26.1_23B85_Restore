@interface ENTTransportException
+ (id)exceptionWithReason:(id)reason error:(id)error;
@end

@implementation ENTTransportException

+ (id)exceptionWithReason:(id)reason error:(id)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  errorCopy = error;
  v8 = errorCopy;
  if (errorCopy)
  {
    v13 = @"error";
    v14[0] = errorCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___ENTTransportException;
  v10 = objc_msgSendSuper2(&v12, sel_exceptionWithName_reason_userInfo_, @"TTransportException", reasonCopy, v9);

  return v10;
}

@end