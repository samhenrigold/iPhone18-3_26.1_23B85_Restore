@interface SATapToRadar
+ (BOOL)isTTREnabled;
+ (BOOL)shouldOpenRadar:(BOOL)radar;
+ (void)sendTapToRadarNotificationWithDescription:(id)description highPriorityProblem:(BOOL)problem;
+ (void)setEnableTTR:(BOOL)r;
+ (void)updateLastTTRNotificationDate;
@end

@implementation SATapToRadar

+ (BOOL)isTTREnabled
{
  v2 = [SARunTimeDataManager runTimeDataObjectForKey:@"enableTTRNotification"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (void)setEnableTTR:(BOOL)r
{
  v3 = [NSNumber numberWithBool:r];
  [SARunTimeDataManager setRunTimeDataObject:v3 forKey:@"enableTTRNotification"];
}

+ (void)updateLastTTRNotificationDate
{
  v2 = +[NSDate date];
  [SARunTimeDataManager setRunTimeDataObject:v2 forKey:@"lastTTRNotificationDate"];
}

+ (BOOL)shouldOpenRadar:(BOOL)radar
{
  arc4random_uniform(0x3E8u);
  v4 = +[SATapToRadar getLastTTRNotificationDate];
  if (!+[SATapToRadar forceTTR])
  {
    if (v4)
    {
      v5 = +[NSDate date];
      [v5 timeIntervalSinceDate:v4];
      v7 = v6;

      if (v7 < 604800.0)
      {
LABEL_10:
        v8 = 0;
        goto LABEL_11;
      }
    }
  }

  if (!radar && !+[SATapToRadar isTTREnabled])
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "not sending Tap-To-Radar notification", v11, 2u);
    }

    goto LABEL_10;
  }

  +[SATapToRadar updateLastTTRNotificationDate];
  v8 = 1;
LABEL_11:

  return v8;
}

+ (void)sendTapToRadarNotificationWithDescription:(id)description highPriorityProblem:(BOOL)problem
{
  problemCopy = problem;
  descriptionCopy = description;
  if (objc_opt_class() && os_variant_has_internal_ui() && [SATapToRadar shouldOpenRadar:problemCopy])
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10004123C(v6);
    }

    v7 = objc_opt_new();
    descriptionCopy = [NSString stringWithFormat:@"[SpaceAttribution Telemetry] Inconsistent Disk Space Result (%@)", descriptionCopy];
    [v7 setTitle:descriptionCopy];

    descriptionCopy2 = [NSString stringWithFormat:@"An inconsistent result was detected on your device during disk space usage telemetry collection.\n** %@ **\nPlease file this Radar with diagnostics to help us root-cause the issue.", descriptionCopy];
    [v7 setProblemDescription:descriptionCopy2];

    v10 = [[RadarComponent alloc] initWithName:@"SpaceAttributionFramework" version:@"TTR" identifier:1509660];
    [v7 setComponent:v10];

    [v7 setReproducibility:5];
    [v7 setClassification:6];
    [v7 setDiagnosticExtensionIDs:&off_100069110];
    [v7 setAttachments:0];
    [v7 setAutoDiagnostics:0];
    [v7 setIsUserInitiated:{+[SATapToRadar forceTTR](SATapToRadar, "forceTTR")}];
    v11 = +[TapToRadarService shared];
    [v11 createDraft:v7 forProcessNamed:@"SpaceForceTelemetry" withDisplayReason:@"disk space usage calculation is inconsistent" completionHandler:&stru_1000659F8];

    [SATapToRadar setForceTTR:0];
  }
}

@end