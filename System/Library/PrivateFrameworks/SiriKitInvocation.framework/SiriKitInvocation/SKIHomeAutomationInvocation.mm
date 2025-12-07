@interface SKIHomeAutomationInvocation
+ (id)generateAsyncDialogResponse:(id)response reportingDomain:(id)domain;
@end

@implementation SKIHomeAutomationInvocation

+ (id)generateAsyncDialogResponse:(id)response reportingDomain:(id)domain
{
  v14[2] = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  responseCopy = response;
  v7 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.homeAutomation.async"];
  v13[0] = @"reportingIdentifier";
  v13[1] = @"reportingDomain";
  v14[0] = responseCopy;
  v14[1] = domainCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(SKIDirectInvocationPayload *)v7 setUserData:v8];

  v9 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v10 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v9 payload:v7];
  v11 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v10];

  return v11;
}

@end