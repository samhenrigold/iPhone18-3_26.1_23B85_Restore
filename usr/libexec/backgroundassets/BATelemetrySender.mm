@interface BATelemetrySender
+ (BOOL)shouldReportBundleIDInTelemetry:(id)telemetry date:(id)date deviceIdentifier:(unsigned __int8)identifier[16];
+ (void)sendContentRequestTelemetryEvent:(id)event;
@end

@implementation BATelemetrySender

+ (BOOL)shouldReportBundleIDInTelemetry:(id)telemetry date:(id)date deviceIdentifier:(unsigned __int8)identifier[16]
{
  telemetryCopy = telemetry;
  dateCopy = date;
  if (telemetryCopy && ([telemetryCopy isEqualToString:&stru_10007B210] & 1) == 0)
  {
    v10 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v11 = [v10 ordinalityOfUnit:16 inUnit:4 forDate:dateCopy];
    data = v11 + 366 * [v10 component:4 fromDate:dateCopy];
    memset(&v15, 0, sizeof(v15));
    CC_SHA256_Init(&v15);
    CC_SHA256_Update(&v15, identifier, 0x10u);
    CC_SHA256_Update(&v15, &data, 4u);
    uTF8String = [telemetryCopy UTF8String];
    v13 = strlen(uTF8String);
    CC_SHA256_Update(&v15, uTF8String, v13);
    CC_SHA256_Final(md, &v15);
    v9 = *md < 0x290u;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)sendContentRequestTelemetryEvent:(id)event
{
  eventCopy = event;
  if (qword_100089C00 != -1)
  {
    sub_10004855C();
  }

  eventName = [eventCopy eventName];
  payload = [eventCopy payload];
  v6 = [payload mutableCopy];

  v7 = [v6 valueForKey:@"BundleIdentifier"];
  if (os_variant_has_internal_diagnostics())
  {
    v8 = AnalyticsSendEvent();
    v9 = sub_1000104FC(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = eventName;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BATelemetrySender: sent %@ event, payload: %@", &v13, 0x16u);
    }
  }

  else
  {
    v10 = +[NSDate date];
    v11 = [BATelemetrySender shouldReportBundleIDInTelemetry:v7 date:v10 deviceIdentifier:&unk_100089BF0];

    if ((v11 & 1) == 0)
    {
      v12 = +[NSNull null];
      [v6 setObject:v12 forKey:@"BundleIdentifier"];
    }

    AnalyticsSendEvent();
  }
}

@end