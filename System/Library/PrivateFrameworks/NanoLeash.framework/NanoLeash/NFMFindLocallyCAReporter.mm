@interface NFMFindLocallyCAReporter
+ (void)recordPingMyFiredSuccessfully:(BOOL)successfully wantedTorch:(BOOL)torch withDeliveryDuration:(double)duration;
+ (void)sendEvent:(id)event with:(id)with;
@end

@implementation NFMFindLocallyCAReporter

+ (void)sendEvent:(id)event with:(id)with
{
  eventCopy = event;
  withCopy = with;
  v7 = nfm_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = eventCopy;
    v10 = 2114;
    v11 = withCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[NFMFindLocallyCAReporter] Sending event: <%{public}@; %{public}@>", &v8, 0x16u);
  }

  AnalyticsSendEvent();
}

+ (void)recordPingMyFiredSuccessfully:(BOOL)successfully wantedTorch:(BOOL)torch withDeliveryDuration:(double)duration
{
  torchCopy = torch;
  v12[0] = @"success";
  v8 = [NSNumber numberWithBool:successfully];
  v13[0] = v8;
  v12[1] = @"wantedTorch";
  v9 = [NSNumber numberWithBool:torchCopy];
  v13[1] = v9;
  v12[2] = @"deliveryDuration";
  v10 = [NSNumber numberWithDouble:duration];
  v13[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  [self sendEvent:@"com.apple.NanoFindLocally.Fired" with:v11];
}

@end