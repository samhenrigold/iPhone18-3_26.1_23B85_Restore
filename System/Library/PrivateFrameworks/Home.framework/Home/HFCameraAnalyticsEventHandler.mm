@interface HFCameraAnalyticsEventHandler
+ (id)decoratedPayloadFor:(id)for;
+ (id)sendAssociatedAccessoriesDidLaunchEventWithCount:(id)count;
+ (id)sendAssociatedAccessoriesDidModifyListEventWithPayload:(id)payload;
+ (id)sendCameraClipPlayerDidUpdateEventWithError:(id)error;
+ (id)sendDonationEventWithCameraClipCount:(unint64_t)count processName:(id)name error:(id)error;
+ (void)sendEventNamed:(id)named payload:(id)payload;
@end

@implementation HFCameraAnalyticsEventHandler

+ (void)sendEventNamed:(id)named payload:(id)payload
{
  v15 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v6 = [HFCameraAnalyticsEventHandler decoratedPayloadFor:payload];
  v7 = AnalyticsSendEventLazy();
  v8 = HFLogForCategory(6uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v10 = namedCopy;
    v11 = 1024;
    v12 = v7;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Event:%@ didSucceed:%{BOOL}d payload:%@", buf, 0x1Cu);
  }
}

+ (id)sendAssociatedAccessoriesDidLaunchEventWithCount:(id)count
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = HFCameraAnalyticsCameraAccessoryCount;
  v9[0] = count;
  v4 = MEMORY[0x277CBEAC0];
  countCopy = count;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [self sendEventNamed:@"com.apple.Home.AssociatedAccessoriesDidLaunch" payload:v6];

  return v6;
}

+ (id)sendAssociatedAccessoriesDidModifyListEventWithPayload:(id)payload
{
  payloadCopy = payload;
  [self sendEventNamed:@"com.apple.Home.AssociatedAccessoriesDidModifySet" payload:payloadCopy];

  return payloadCopy;
}

+ (id)sendCameraClipPlayerDidUpdateEventWithError:(id)error
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"errorDomain";
  errorCopy = error;
  domain = [errorCopy domain];
  v12[0] = domain;
  v11[1] = @"errorCode";
  v6 = MEMORY[0x277CCABB0];
  code = [errorCopy code];

  v8 = [v6 numberWithInteger:code];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  [self sendEventNamed:@"com.apple.Home.CameraClipPlayerDidUpdateError" payload:v9];

  return v9;
}

+ (id)sendDonationEventWithCameraClipCount:(unint64_t)count processName:(id)name error:(id)error
{
  v14[3] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v9 = [HFCameraAnalyticsEvent errorCodeForError:error];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v13[0] = HFCameraAnalyticsErrorCode;
  v13[1] = HFCameraAnalyticsProcessName;
  v14[0] = v9;
  v14[1] = nameCopy;
  v13[2] = HFCameraAnalyticsCountKey;
  v14[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  [self sendEventNamed:@"com.apple.Home.CameraClipDonationEvent" payload:v11];

  return v11;
}

+ (id)decoratedPayloadFor:(id)for
{
  forCopy = for;
  v4 = +[HFCameraAnalyticsPayloadDecorator sharedDecorator];
  v5 = [v4 decoratePayload:forCopy];

  return v5;
}

@end