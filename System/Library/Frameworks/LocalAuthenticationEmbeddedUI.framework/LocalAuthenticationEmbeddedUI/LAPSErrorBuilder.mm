@interface LAPSErrorBuilder
+ (BOOL)checkError:(id)error hasCode:(int64_t)code;
+ (BOOL)checkErrorIsInteractive:(id)interactive;
+ (id)_errorWithCode:(int64_t)code debugDescription:(id)description;
+ (id)genericErrorWithUnderlyingError:(id)error;
+ (id)genericErrorWithUnderlyingError:(id)error debugDescription:(id)description;
+ (id)invalidPasscodeError;
+ (id)invalidPasscodeErrorWithFailedAttemptsCount:(int64_t)count;
+ (id)invalidPasscodeErrorWithFailedAttemptsCount:(int64_t)count backoffTimeout:(int64_t)timeout;
+ (id)newPasscodeDoesNotMeetRequirementsErrorWithLocalizedDescription:(id)description;
@end

@implementation LAPSErrorBuilder

+ (id)invalidPasscodeError
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CCA068];
  v7[0] = @"Invalid passcode";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [self errorWithCode:4 userInfo:v3];

  return v4;
}

+ (id)invalidPasscodeErrorWithFailedAttemptsCount:(int64_t)count
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = *MEMORY[0x277CCA068];
  v8[1] = @"LAPSFailedAttemptsErrorKey";
  v9[0] = @"Invalid passcode";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [self errorWithCode:4 userInfo:v5];

  return v6;
}

+ (id)invalidPasscodeErrorWithFailedAttemptsCount:(int64_t)count backoffTimeout:(int64_t)timeout
{
  v13[3] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CCA068];
  v13[0] = @"Invalid passcode";
  v12[0] = v6;
  v12[1] = @"LAPSFailedAttemptsErrorKey";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v13[1] = v7;
  v12[2] = @"LAPSBackOffTimeoutErrorKey";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:timeout];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v10 = [self errorWithCode:4 userInfo:v9];

  return v10;
}

+ (id)newPasscodeDoesNotMeetRequirementsErrorWithLocalizedDescription:(id)description
{
  v11[2] = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    +[LAPSErrorBuilder newPasscodeDoesNotMeetRequirementsErrorWithLocalizedDescription:];
  }

  v5 = descriptionCopy;
  v6 = *MEMORY[0x277CCA450];
  v10[0] = *MEMORY[0x277CCA068];
  v10[1] = v6;
  v11[0] = @"Passcode does not meet requirements";
  v11[1] = descriptionCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [self errorWithCode:6 userInfo:v7];

  return v8;
}

+ (id)genericErrorWithUnderlyingError:(id)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (!errorCopy)
  {
    +[LAPSErrorBuilder genericErrorWithUnderlyingError:];
  }

  v5 = errorCopy;
  v9 = *MEMORY[0x277CCA7E8];
  v10[0] = errorCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [self errorWithCode:9 userInfo:v6];

  return v7;
}

+ (id)genericErrorWithUnderlyingError:(id)error debugDescription:(id)description
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CCA068];
  v13[0] = *MEMORY[0x277CCA7E8];
  v13[1] = v6;
  v14[0] = error;
  v14[1] = description;
  v7 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  errorCopy = error;
  v10 = [v7 dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [self errorWithCode:9 userInfo:v10];

  return v11;
}

+ (BOOL)checkError:(id)error hasCode:(int64_t)code
{
  errorCopy = error;
  domain = [errorCopy domain];
  v7 = [domain isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"];

  if (v7)
  {
    v8 = [errorCopy code] == code;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)checkErrorIsInteractive:(id)interactive
{
  interactiveCopy = interactive;
  domain = [interactiveCopy domain];
  if ([domain isEqualToString:@"com.apple.LocalAuthentication.LAPSErrorDomain"])
  {
    userInfo = [interactiveCopy userInfo];
    v6 = [userInfo objectForKey:@"LAPSInteractiveErrorKey"];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)_errorWithCode:(int64_t)code debugDescription:(id)description
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA068];
  v12[0] = description;
  v6 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.LocalAuthentication.LAPSErrorDomain" code:code userInfo:v8];

  return v9;
}

@end