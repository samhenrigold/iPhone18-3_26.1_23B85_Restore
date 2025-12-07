@interface NSError(HMDHTTPMessageTransportError)
+ (id)hmd_HTTPMessageTransportErrorWithCode:()HMDHTTPMessageTransportError;
@end

@implementation NSError(HMDHTTPMessageTransportError)

+ (id)hmd_HTTPMessageTransportErrorWithCode:()HMDHTTPMessageTransportError
{
  v3 = a3;
  v12[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = @"The client is unknown.";
    if (a3 != 100)
    {
      v4 = 0;
    }

    if (a3 == 200)
    {
      v4 = @"An unknown error occurred.";
    }

    if (v4)
    {
      v11 = *MEMORY[0x277CCA450];
      v5 = MEMORY[0x277CCA8D8];
      v6 = v4;
      mainBundle = [v5 mainBundle];
      v8 = [mainBundle localizedStringForKey:v6 value:&stru_286509E58 table:0];

      v12[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    }

    else
    {
      v9 = 0;
    }

    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.HomeKit.Messaging.HTTP" code:v3 userInfo:v9];
  }

  return v3;
}

@end