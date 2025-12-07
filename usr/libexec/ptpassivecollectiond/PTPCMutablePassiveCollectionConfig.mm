@interface PTPCMutablePassiveCollectionConfig
+ (BOOL)resetPersistedDefaults:(id)defaults errorOut:(id *)out;
+ (id)currentPersistedSettings:(id)settings errorOut:(id *)out;
+ (id)keyToExpectedClassDict;
- (BOOL)collectAppInFocus;
- (BOOL)collectLoggingAppLaunch;
- (BOOL)collectLoggingHangs;
- (BOOL)collectLoggingMetalFramePacing;
- (BOOL)collectLoggingPerfPowerMetrics;
- (BOOL)collectLoggingScrolling;
- (BOOL)collectLoggingUserInteraction;
- (BOOL)collectMSS;
- (NSDate)imitationRecordStartDate;
- (NSNumber)collectAppInFocusNum;
- (NSNumber)collectLoggingAppLaunchNum;
- (NSNumber)collectLoggingHangsNum;
- (NSNumber)collectLoggingMetalFramePacingNum;
- (NSNumber)collectLoggingPerfPowerMetricsNum;
- (NSNumber)collectLoggingScrollingNum;
- (NSNumber)collectLoggingUserInteractionNum;
- (NSNumber)collectMSSNum;
- (NSNumber)collectionLookbackIntervalNum;
- (NSNumber)imitationRecordStartTimeSinceReferenceDate;
- (PTPCMutablePassiveCollectionConfig)initWithDefaultsDomain:(id)domain errorOut:(id *)out;
- (double)collectionLookbackInterval;
- (id)_numberValueForKey:(id)key defaultValue:(id)value;
- (void)_setValueForKey:(id)key newValue:(id)value;
- (void)resetSettings;
- (void)setCollectAppInFocus:(BOOL)focus;
- (void)setCollectAppInFocusNum:(id)num;
- (void)setCollectLoggingAppLaunch:(BOOL)launch;
- (void)setCollectLoggingAppLaunchNum:(id)num;
- (void)setCollectLoggingHangs:(BOOL)hangs;
- (void)setCollectLoggingHangsNum:(id)num;
- (void)setCollectLoggingMetalFramePacing:(BOOL)pacing;
- (void)setCollectLoggingMetalFramePacingNum:(id)num;
- (void)setCollectLoggingPerfPowerMetrics:(BOOL)metrics;
- (void)setCollectLoggingPerfPowerMetricsNum:(id)num;
- (void)setCollectLoggingScrolling:(BOOL)scrolling;
- (void)setCollectLoggingScrollingNum:(id)num;
- (void)setCollectLoggingUserInteraction:(BOOL)interaction;
- (void)setCollectLoggingUserInteractionNum:(id)num;
- (void)setCollectMSS:(BOOL)s;
- (void)setCollectMSSNum:(id)num;
- (void)setCollectionLookbackInterval:(double)interval;
- (void)setCollectionLookbackIntervalNum:(id)num;
- (void)setImitationRecordStartDate:(id)date;
- (void)setImitationRecordStartTimeSinceReferenceDate:(id)date;
@end

@implementation PTPCMutablePassiveCollectionConfig

+ (id)currentPersistedSettings:(id)settings errorOut:(id *)out
{
  settingsCopy = settings;
  v6 = [[PTPCMutablePassiveCollectionConfig alloc] initWithDefaultsDomain:settingsCopy errorOut:out];

  return v6;
}

+ (BOOL)resetPersistedDefaults:(id)defaults errorOut:(id *)out
{
  defaultsCopy = defaults;
  v6 = sub_100004414(defaultsCopy, out);
  v7 = v6;
  if (v6)
  {
    v8 = sub_1000045A4([v6 removeObjectForKey:@"CollectionConfiguration"]);
    if (os_signpost_enabled(v8))
    {
      v9 = @"com.apple.PerformanceTrace.passive.config";
      if (defaultsCopy)
      {
        v9 = defaultsCopy;
      }

      v14 = 138543362;
      v15 = v9;
      v10 = "HardResetSuccess";
      v11 = "Reset of collection configuration for domain %{public}@";
LABEL_10:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v10, v11, &v14, 0xCu);
    }
  }

  else
  {
    v8 = sub_100004560(0);
    if (os_signpost_enabled(v8))
    {
      v12 = @"com.apple.PerformanceTrace.passive.config";
      if (defaultsCopy)
      {
        v12 = defaultsCopy;
      }

      v14 = 138543362;
      v15 = v12;
      v10 = "HardResetFailure";
      v11 = "Failed to do a reset of collection configuration for domain %{public}@";
      goto LABEL_10;
    }
  }

  return v7 != 0;
}

+ (id)keyToExpectedClassDict
{
  if (qword_100025CC8 != -1)
  {
    sub_1000131B0();
  }

  v3 = qword_100025CC0;

  return v3;
}

- (PTPCMutablePassiveCollectionConfig)initWithDefaultsDomain:(id)domain errorOut:(id *)out
{
  domainCopy = domain;
  if (domainCopy)
  {
    v7 = domainCopy;
  }

  else
  {
    v7 = @"com.apple.PerformanceTrace.passive.config";
  }

  v8 = [PTPCDefaultsManager alloc];
  keyToExpectedClassDict = [objc_opt_class() keyToExpectedClassDict];
  v10 = [(PTPCDefaultsManager *)v8 initWithDefaultsDomain:v7 configurationDictKey:@"CollectionConfiguration" keyToExpectedClassDict:keyToExpectedClassDict errorOut:out];

  if (v10)
  {
    v15.receiver = self;
    v15.super_class = PTPCMutablePassiveCollectionConfig;
    v11 = [(PTPCMutablePassiveCollectionConfig *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_defaultsManager, v10);
      v12->_syncLock._os_unfair_lock_opaque = 0;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)resetSettings
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000493C;
  v3[3] = &unk_1000208A8;
  v3[4] = self;
  os_unfair_lock_lock(&self->_syncLock);
  sub_10000493C(v3);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (id)_numberValueForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  defaultsManager = [(PTPCMutablePassiveCollectionConfig *)self defaultsManager];
  v9 = [defaultsManager objectForKey:keyCopy];

  v11 = sub_1000045A4(v10);
  v12 = os_signpost_enabled(v11);
  if (v9)
  {
    v13 = v9;
    if (v12)
    {
      v16 = 138543618;
      v17 = keyCopy;
      v18 = 2114;
      v19 = v9;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LookingUpKey", "Returning value for key '%{public}@': %{public}@", &v16, 0x16u);
      v13 = v9;
    }
  }

  else
  {
    v13 = valueCopy;
    if (v12)
    {
      v16 = 138543618;
      v17 = keyCopy;
      v18 = 2114;
      v19 = valueCopy;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LookingUpKey", "Returning default for key '%{public}@': %{public}@", &v16, 0x16u);
      v13 = valueCopy;
    }
  }

  v14 = v13;

  return v14;
}

- (void)_setValueForKey:(id)key newValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  defaultsManager = [(PTPCMutablePassiveCollectionConfig *)self defaultsManager];
  v9 = [defaultsManager setObjectForKey:keyCopy objectValue:valueCopy];

  if (v9)
  {
    v11 = sub_1000045A4(v10);
    if (os_signpost_enabled(v11))
    {
      if (valueCopy)
      {
        v12 = valueCopy;
      }

      else
      {
        v12 = @"nil";
      }

      localizedDescription = [v9 localizedDescription];
      v14 = localizedDescription;
      v15 = @"Unknown";
      v18 = 138543874;
      v19 = keyCopy;
      if (localizedDescription)
      {
        v15 = localizedDescription;
      }

      v20 = 2114;
      v21 = v12;
      v22 = 2114;
      v23 = v15;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CollectionConfigurationUpdateFailed", "Failed to updated key '%{public}@' to '%{public}@' due to error: '%{public}@'", &v18, 0x20u);
    }
  }

  v16 = sub_1000045A4(v10);
  if (os_signpost_enabled(v16))
  {
    v17 = @"nil";
    if (valueCopy)
    {
      v17 = valueCopy;
    }

    v18 = 138543618;
    v19 = keyCopy;
    v20 = 2114;
    v21 = v17;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CollectionConfigurationUpdate", "Updated key '%{public}@' to %{public}@", &v18, 0x16u);
  }
}

- (NSNumber)collectMSSNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100004E40;
  v8 = &unk_1000208D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectMSSNum:(id)num
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004F50;
  v5[3] = &unk_1000208F8;
  selfCopy = self;
  numCopy = num;
  v4 = numCopy;
  os_unfair_lock_lock(&selfCopy->_syncLock);
  sub_100004F50(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectMSS
{
  collectMSSNum = [(PTPCMutablePassiveCollectionConfig *)self collectMSSNum];
  bOOLValue = [collectMSSNum BOOLValue];

  return bOOLValue;
}

- (void)setCollectMSS:(BOOL)s
{
  v4 = [NSNumber numberWithBool:s];
  [(PTPCMutablePassiveCollectionConfig *)self setCollectMSSNum:v4];
}

- (NSNumber)collectAppInFocusNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100005134;
  v8 = &unk_1000208D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectAppInFocusNum:(id)num
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005244;
  v5[3] = &unk_1000208F8;
  selfCopy = self;
  numCopy = num;
  v4 = numCopy;
  os_unfair_lock_lock(&selfCopy->_syncLock);
  sub_100005244(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectAppInFocus
{
  collectAppInFocusNum = [(PTPCMutablePassiveCollectionConfig *)self collectAppInFocusNum];
  bOOLValue = [collectAppInFocusNum BOOLValue];

  return bOOLValue;
}

- (void)setCollectAppInFocus:(BOOL)focus
{
  v4 = [NSNumber numberWithBool:focus];
  [(PTPCMutablePassiveCollectionConfig *)self setCollectAppInFocusNum:v4];
}

- (NSNumber)collectLoggingUserInteractionNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100005428;
  v8 = &unk_1000208D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectLoggingUserInteractionNum:(id)num
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005538;
  v5[3] = &unk_1000208F8;
  selfCopy = self;
  numCopy = num;
  v4 = numCopy;
  os_unfair_lock_lock(&selfCopy->_syncLock);
  sub_100005538(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectLoggingUserInteraction
{
  collectLoggingUserInteractionNum = [(PTPCMutablePassiveCollectionConfig *)self collectLoggingUserInteractionNum];
  bOOLValue = [collectLoggingUserInteractionNum BOOLValue];

  return bOOLValue;
}

- (void)setCollectLoggingUserInteraction:(BOOL)interaction
{
  v4 = [NSNumber numberWithBool:interaction];
  [(PTPCMutablePassiveCollectionConfig *)self setCollectLoggingUserInteractionNum:v4];
}

- (NSNumber)collectLoggingMetalFramePacingNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_10000571C;
  v8 = &unk_1000208D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectLoggingMetalFramePacingNum:(id)num
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000582C;
  v5[3] = &unk_1000208F8;
  selfCopy = self;
  numCopy = num;
  v4 = numCopy;
  os_unfair_lock_lock(&selfCopy->_syncLock);
  sub_10000582C(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectLoggingMetalFramePacing
{
  collectLoggingMetalFramePacingNum = [(PTPCMutablePassiveCollectionConfig *)self collectLoggingMetalFramePacingNum];
  bOOLValue = [collectLoggingMetalFramePacingNum BOOLValue];

  return bOOLValue;
}

- (void)setCollectLoggingMetalFramePacing:(BOOL)pacing
{
  v4 = [NSNumber numberWithBool:pacing];
  [(PTPCMutablePassiveCollectionConfig *)self setCollectLoggingMetalFramePacingNum:v4];
}

- (NSNumber)collectLoggingScrollingNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100005A10;
  v8 = &unk_1000208D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectLoggingScrollingNum:(id)num
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005B20;
  v5[3] = &unk_1000208F8;
  selfCopy = self;
  numCopy = num;
  v4 = numCopy;
  os_unfair_lock_lock(&selfCopy->_syncLock);
  sub_100005B20(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectLoggingScrolling
{
  collectLoggingScrollingNum = [(PTPCMutablePassiveCollectionConfig *)self collectLoggingScrollingNum];
  bOOLValue = [collectLoggingScrollingNum BOOLValue];

  return bOOLValue;
}

- (void)setCollectLoggingScrolling:(BOOL)scrolling
{
  v4 = [NSNumber numberWithBool:scrolling];
  [(PTPCMutablePassiveCollectionConfig *)self setCollectLoggingScrollingNum:v4];
}

- (NSNumber)collectLoggingPerfPowerMetricsNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100005D04;
  v8 = &unk_1000208D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectLoggingPerfPowerMetricsNum:(id)num
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005E14;
  v5[3] = &unk_1000208F8;
  selfCopy = self;
  numCopy = num;
  v4 = numCopy;
  os_unfair_lock_lock(&selfCopy->_syncLock);
  sub_100005E14(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectLoggingPerfPowerMetrics
{
  collectLoggingPerfPowerMetricsNum = [(PTPCMutablePassiveCollectionConfig *)self collectLoggingPerfPowerMetricsNum];
  bOOLValue = [collectLoggingPerfPowerMetricsNum BOOLValue];

  return bOOLValue;
}

- (void)setCollectLoggingPerfPowerMetrics:(BOOL)metrics
{
  v4 = [NSNumber numberWithBool:metrics];
  [(PTPCMutablePassiveCollectionConfig *)self setCollectLoggingPerfPowerMetricsNum:v4];
}

- (NSNumber)collectLoggingAppLaunchNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100005FF8;
  v8 = &unk_1000208D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectLoggingAppLaunchNum:(id)num
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006108;
  v5[3] = &unk_1000208F8;
  selfCopy = self;
  numCopy = num;
  v4 = numCopy;
  os_unfair_lock_lock(&selfCopy->_syncLock);
  sub_100006108(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectLoggingAppLaunch
{
  collectLoggingAppLaunchNum = [(PTPCMutablePassiveCollectionConfig *)self collectLoggingAppLaunchNum];
  bOOLValue = [collectLoggingAppLaunchNum BOOLValue];

  return bOOLValue;
}

- (void)setCollectLoggingAppLaunch:(BOOL)launch
{
  v4 = [NSNumber numberWithBool:launch];
  [(PTPCMutablePassiveCollectionConfig *)self setCollectLoggingAppLaunchNum:v4];
}

- (NSNumber)collectLoggingHangsNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_1000062EC;
  v8 = &unk_1000208D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectLoggingHangsNum:(id)num
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000063FC;
  v5[3] = &unk_1000208F8;
  selfCopy = self;
  numCopy = num;
  v4 = numCopy;
  os_unfair_lock_lock(&selfCopy->_syncLock);
  sub_1000063FC(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (BOOL)collectLoggingHangs
{
  collectLoggingHangsNum = [(PTPCMutablePassiveCollectionConfig *)self collectLoggingHangsNum];
  bOOLValue = [collectLoggingHangsNum BOOLValue];

  return bOOLValue;
}

- (void)setCollectLoggingHangs:(BOOL)hangs
{
  v4 = [NSNumber numberWithBool:hangs];
  [(PTPCMutablePassiveCollectionConfig *)self setCollectLoggingHangsNum:v4];
}

- (NSNumber)imitationRecordStartTimeSinceReferenceDate
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_1000065E0;
  v8 = &unk_1000208D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setImitationRecordStartTimeSinceReferenceDate:(id)date
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000066EC;
  v5[3] = &unk_1000208F8;
  selfCopy = self;
  dateCopy = date;
  v4 = dateCopy;
  os_unfair_lock_lock(&selfCopy->_syncLock);
  sub_1000066EC(v5);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (NSDate)imitationRecordStartDate
{
  imitationRecordStartTimeSinceReferenceDate = [(PTPCMutablePassiveCollectionConfig *)self imitationRecordStartTimeSinceReferenceDate];
  if (imitationRecordStartTimeSinceReferenceDate)
  {
    v3 = [NSDate alloc];
    [imitationRecordStartTimeSinceReferenceDate doubleValue];
    v4 = [v3 initWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setImitationRecordStartDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
    v4 = [NSNumber numberWithDouble:?];
    [(PTPCMutablePassiveCollectionConfig *)self setImitationRecordStartTimeSinceReferenceDate:v4];
  }

  else
  {

    [(PTPCMutablePassiveCollectionConfig *)self setImitationRecordStartTimeSinceReferenceDate:?];
  }
}

- (NSNumber)collectionLookbackIntervalNum
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004E28;
  v15 = sub_100004E38;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100006934;
  v8 = &unk_1000208D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_syncLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_syncLock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCollectionLookbackIntervalNum:(id)num
{
  numCopy = num;
  v5 = numCopy;
  if (numCopy && (v6 = [numCopy doubleValue], v7 <= 0.0))
  {
    v8 = sub_100004560(v6);
    if (os_signpost_enabled(v8))
    {
      [v5 doubleValue];
      *buf = 134349056;
      v13 = v9;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidLookbackInterval", "Cannot set lookback to %{public}f seconds", buf, 0xCu);
    }
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100006AF4;
    v10[3] = &unk_1000208F8;
    v10[4] = self;
    v11 = v5;
    os_unfair_lock_lock(&self->_syncLock);
    sub_100006AF4(v10);
    os_unfair_lock_unlock(&self->_syncLock);
  }
}

- (double)collectionLookbackInterval
{
  collectionLookbackIntervalNum = [(PTPCMutablePassiveCollectionConfig *)self collectionLookbackIntervalNum];
  [collectionLookbackIntervalNum doubleValue];
  v4 = v3;

  return v4;
}

- (void)setCollectionLookbackInterval:(double)interval
{
  v4 = [NSNumber numberWithDouble:interval];
  [(PTPCMutablePassiveCollectionConfig *)self setCollectionLookbackIntervalNum:v4];
}

@end