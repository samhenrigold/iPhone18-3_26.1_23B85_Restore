@interface HMI_CVML_Error
+ (id)createNSErrorWithStatus:(int64_t)status andMessage:(id)message;
+ (id)createNSExceptionWithStatus:(int64_t)status andMessage:(id)message;
@end

@implementation HMI_CVML_Error

+ (id)createNSErrorWithStatus:(int64_t)status andMessage:(id)message
{
  if (status == 128)
  {
    v4 = 0;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    messageCopy = message;
    CVML_getModuleDescription(status);
    v8 = [v6 stringWithUTF8String:?];
    v9 = [v6 stringWithFormat:v8];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:? value:? table:?];

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = MEMORY[0x277CCACA8];
    CVML_getStatusDescription(status);
    v14 = [v13 stringWithUTF8String:?];
    v17 = [mainBundle2 localizedStringForKey:? value:? table:?];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  }

  return v4;
}

+ (id)createNSExceptionWithStatus:(int64_t)status andMessage:(id)message
{
  if (status == 128)
  {
    v4 = 0;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    messageCopy = message;
    CVML_getModuleDescription(status);
    v8 = [v6 stringWithUTF8String:?];
    v9 = [v6 stringWithFormat:v8];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [mainBundle localizedStringForKey:? value:? table:?];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v12 = MEMORY[0x277CBEAD8];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = MEMORY[0x277CCACA8];
    CVML_getStatusDescription(status);
    v15 = [v14 stringWithUTF8String:?];
    v16 = [mainBundle2 localizedStringForKey:? value:? table:?];
    v4 = [v12 exceptionWithName:? reason:? userInfo:?];
  }

  return v4;
}

@end