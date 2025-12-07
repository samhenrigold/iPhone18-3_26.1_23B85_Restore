@interface FMDPowerMgr
+ (id)sharedInstance;
- (FMDPowerMgr)init;
- (void)_disableAssertion:(unsigned int)assertion withName:(id)name;
- (void)powerAssertionDisableWithReason:(id)reason;
- (void)powerAssertionEnableWithReason:(id)reason type:(id)type timeout:(int64_t)timeout appliesOnLidClose:(BOOL)close;
@end

@implementation FMDPowerMgr

+ (id)sharedInstance
{
  if (qword_1003149E8 != -1)
  {
    sub_10022E064();
  }

  v3 = qword_1003149E0;

  return v3;
}

- (FMDPowerMgr)init
{
  v6.receiver = self;
  v6.super_class = FMDPowerMgr;
  v2 = [(FMDPowerMgr *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(FMDConcurrentMutableDictionary);
    assertionsDict = v2->_assertionsDict;
    v2->_assertionsDict = v3;
  }

  return v2;
}

- (void)powerAssertionEnableWithReason:(id)reason type:(id)type timeout:(int64_t)timeout appliesOnLidClose:(BOOL)close
{
  reasonCopy = reason;
  typeCopy = type;
  context = objc_autoreleasePoolPush();
  v10 = +[NSBundle mainBundle];
  bundleIdentifier = [v10 bundleIdentifier];

  reasonCopy = [NSString stringWithFormat:@"%@-%@", bundleIdentifier, reasonCopy];
  assertionsDict = [(FMDPowerMgr *)self assertionsDict];
  v14 = [assertionsDict objectForKeyedSubscript:reasonCopy];

  if (v14)
  {
    intValue = [v14 intValue];
    v17 = sub_100002880(intValue);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E078();
    }
  }

  else
  {
    intValue = 0xFFFFFFFFLL;
  }

  v18 = sub_100002880(v15);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v33 = reasonCopy;
    v34 = 2112;
    v35 = typeCopy;
    v36 = 2048;
    timeoutCopy = timeout;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Enable power assertion %@ with type %@ & timeout %ld", buf, 0x20u);
  }

  v19 = +[NSMutableDictionary dictionary];
  [v19 setObject:reasonCopy forKeyedSubscript:@"AssertName"];
  v20 = [NSNumber numberWithInteger:timeout];
  [v19 setObject:v20 forKeyedSubscript:@"TimeoutSeconds"];

  [v19 setObject:@"TimeoutActionTurnOff" forKeyedSubscript:@"TimeoutAction"];
  if (typeCopy)
  {
    [v19 setObject:typeCopy forKeyedSubscript:@"AssertType"];
  }

  [v19 setObject:&off_1002E7C30 forKeyedSubscript:@"AssertLevel"];
  if (([typeCopy isEqualToString:@"ApplePushServiceTask"] & 1) == 0)
  {
    [v19 setObject:kCFBooleanTrue forKeyedSubscript:@"AppliesToLimitedPower"];
  }

  AssertionID = 0;
  v21 = IOPMAssertionCreateWithProperties(v19, &AssertionID);
  v22 = v21;
  if (v21)
  {
    v23 = sub_100002880(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = SCErrorString(v22);
      *buf = 138412802;
      v33 = v19;
      v34 = 2080;
      v35 = v24;
      v36 = 1024;
      LODWORD(timeoutCopy) = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "IOPMAssertionCreateWithProperties %@ failed with error: %s (%d)", buf, 0x1Cu);
    }
  }

  else
  {
    v25 = sub_100002880(v21);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E0E0(reasonCopy, &AssertionID, v25);
    }

    if (v14)
    {
      v27 = sub_100002880(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_10022E15C();
      }

      [(FMDPowerMgr *)self _disableAssertion:intValue withName:reasonCopy];
    }

    v23 = [NSNumber numberWithUnsignedInt:AssertionID];
    assertionsDict2 = [(FMDPowerMgr *)self assertionsDict];
    [assertionsDict2 setObject:v23 forKeyedSubscript:reasonCopy];
  }

  objc_autoreleasePoolPop(context);
}

- (void)powerAssertionDisableWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = +[NSBundle mainBundle];
  bundleIdentifier = [v5 bundleIdentifier];

  reasonCopy = [NSString stringWithFormat:@"%@-%@", bundleIdentifier, reasonCopy];
  assertionsDict = [(FMDPowerMgr *)self assertionsDict];
  v9 = [assertionsDict objectForKeyedSubscript:reasonCopy];

  if (v9)
  {
    -[FMDPowerMgr _disableAssertion:withName:](self, "_disableAssertion:withName:", [v9 intValue], reasonCopy);
  }

  else
  {
    v11 = sub_100002880(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Did not find any existing assertion with name %@ when trying to disable it", buf, 0xCu);
    }
  }
}

- (void)_disableAssertion:(unsigned int)assertion withName:(id)name
{
  nameCopy = name;
  assertionsDict = [(FMDPowerMgr *)self assertionsDict];
  [assertionsDict removeObjectForKey:nameCopy];

  v9 = sub_100002880(v8);
  v10 = v9;
  if (assertion)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E1C4();
    }

    v11 = IOPMAssertionRelease(assertion);
    v12 = v11;
    v13 = sub_100002880(v11);
    v10 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138413058;
        v18 = nameCopy;
        v19 = 1024;
        assertionCopy = assertion;
        v21 = 2080;
        v22 = SCErrorString(v12);
        v23 = 1024;
        v24 = v12;
        v14 = "IOPMAssertionRelease failed for assertion %@ with ID 0x%x: %s (%d)";
        v15 = v10;
        v16 = 34;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v17, v16);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E22C();
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = nameCopy;
    v14 = "Found Null assertionID for assertion with name %@ when trying to disable it";
    v15 = v10;
    v16 = 12;
    goto LABEL_9;
  }
}

@end