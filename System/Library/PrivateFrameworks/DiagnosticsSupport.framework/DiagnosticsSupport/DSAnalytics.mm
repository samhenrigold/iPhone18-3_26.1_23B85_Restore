@interface DSAnalytics
+ (void)sendAnalyticsWithEvent:(unint64_t)event error:(id)error;
+ (void)sendAnalyticsWithEvent:(unint64_t)event payloadDict:(id)dict;
@end

@implementation DSAnalytics

+ (void)sendAnalyticsWithEvent:(unint64_t)event error:(id)error
{
  v11[3] = *MEMORY[0x277D85DE8];
  if (error)
  {
    errorCopy = error;
    domain = [errorCopy domain];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    localizedDescription = [errorCopy localizedDescription];
  }

  else
  {
    v7 = &unk_285B95AF0;
    localizedDescription = &stru_285B93678;
    domain = &stru_285B93678;
  }

  v10[0] = @"errorDomain";
  v10[1] = @"errorCode";
  v11[0] = domain;
  v11[1] = v7;
  v10[2] = @"errorMessage";
  v11[2] = localizedDescription;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [DSAnalytics sendAnalyticsWithEvent:event payloadDict:v9];
}

+ (void)sendAnalyticsWithEvent:(unint64_t)event payloadDict:(id)dict
{
  if (event > 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_278F6E3D0[event];
  }

  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dict];
  [v5 setObject:v4 forKeyedSubscript:@"type"];
  AnalyticsSendEvent();
}

@end