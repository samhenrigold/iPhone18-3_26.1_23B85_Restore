@interface DKAnalytics
+ (void)sendAnalyticsWithEvent:(unint64_t)event error:(id)error;
+ (void)sendAnalyticsWithEvent:(unint64_t)event payloadDict:(id)dict;
@end

@implementation DKAnalytics

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
    v7 = &unk_285B92870;
    localizedDescription = &stru_285B8CB68;
    domain = &stru_285B8CB68;
  }

  v10[0] = @"errorDomain";
  v10[1] = @"errorCode";
  v11[0] = domain;
  v11[1] = v7;
  v10[2] = @"errorMessage";
  v11[2] = localizedDescription;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [DKAnalytics sendAnalyticsWithEvent:event payloadDict:v9];
}

+ (void)sendAnalyticsWithEvent:(unint64_t)event payloadDict:(id)dict
{
  if (event > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_278F6C018[event];
  }

  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dict];
  [v5 setObject:v4 forKeyedSubscript:@"type"];
  AnalyticsSendEvent();
}

@end