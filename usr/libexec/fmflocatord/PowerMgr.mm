@interface PowerMgr
+ (id)sharedInstance;
- (void)_disableAssertion:(unsigned int)assertion withName:(id)name;
- (void)powerAssertionDisableWithReason:(id)reason;
- (void)powerAssertionEnableWithReason:(id)reason type:(id)type timeout:(int64_t)timeout;
@end

@implementation PowerMgr

+ (id)sharedInstance
{
  if (qword_100070138 != -1)
  {
    sub_10003708C();
  }

  v3 = qword_100070130;

  return v3;
}

- (void)powerAssertionEnableWithReason:(id)reason type:(id)type timeout:(int64_t)timeout
{
  reasonCopy = reason;
  typeCopy = type;
  context = objc_autoreleasePoolPush();
  v10 = +[NSBundle mainBundle];
  bundleIdentifier = [v10 bundleIdentifier];

  reasonCopy = [NSString stringWithFormat:@"%@-%@", bundleIdentifier, reasonCopy];
  assertionsDict = [(PowerMgr *)self assertionsDict];
  if (![assertionsDict count])
  {

    v15 = 0;
    goto LABEL_7;
  }

  assertionsDict2 = [(PowerMgr *)self assertionsDict];
  v15 = [assertionsDict2 objectForKeyedSubscript:reasonCopy];

  if (!v15)
  {
LABEL_7:
    v19 = 0;
    intValue = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  intValue = [v15 intValue];
  v18 = sub_100002830(intValue);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_1000370A0();
  }

  v19 = 1;
LABEL_8:
  v20 = sub_100002830(v16);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v35 = reasonCopy;
    v36 = 2112;
    v37 = typeCopy;
    v38 = 2048;
    timeoutCopy = timeout;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Enable power assertion %@ with type %@ & timeout %ld", buf, 0x20u);
  }

  v21 = +[NSMutableDictionary dictionary];
  if ([typeCopy isEqualToString:@"ApplePushServiceTask"])
  {
    [v21 setObject:reasonCopy forKeyedSubscript:@"AssertName"];
    v22 = [NSNumber numberWithInteger:timeout];
    [v21 setObject:v22 forKeyedSubscript:@"TimeoutSeconds"];

    [v21 setObject:@"TimeoutActionTurnOff" forKeyedSubscript:@"TimeoutAction"];
    if (typeCopy)
    {
      [v21 setObject:typeCopy forKeyedSubscript:@"AssertType"];
    }

    [v21 setObject:&off_100062F58 forKeyedSubscript:@"AssertLevel"];
  }

  else
  {
    [v21 setObject:reasonCopy forKeyedSubscript:@"AssertName"];
    v23 = [NSNumber numberWithInteger:timeout];
    [v21 setObject:v23 forKeyedSubscript:@"TimeoutSeconds"];

    [v21 setObject:@"TimeoutActionTurnOff" forKeyedSubscript:@"TimeoutAction"];
    if (typeCopy)
    {
      [v21 setObject:typeCopy forKeyedSubscript:@"AssertType"];
    }

    [v21 setObject:&off_100062F58 forKeyedSubscript:@"AssertLevel"];
    [v21 setObject:kCFBooleanTrue forKeyedSubscript:@"AppliesToLimitedPower"];
  }

  AssertionID = 0;
  v24 = IOPMAssertionCreateWithProperties(v21, &AssertionID);
  v25 = v24;
  if (v24)
  {
    v26 = sub_100002830(v24);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = SCErrorString(v25);
      *buf = 138412802;
      v35 = v21;
      v36 = 2080;
      v37 = v27;
      v38 = 1024;
      LODWORD(timeoutCopy) = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "IOPMAssertionCreateWithProperties %@ failed with error: %s (%d)", buf, 0x1Cu);
    }
  }

  else
  {
    v28 = sub_100002830(v24);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_100037108(reasonCopy, &AssertionID, v28);
    }

    if (v19)
    {
      v30 = sub_100002830(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        sub_100037184();
      }

      [(PowerMgr *)self _disableAssertion:intValue withName:reasonCopy];
    }

    v26 = [NSNumber numberWithUnsignedInt:AssertionID];
    assertionsDict3 = [(PowerMgr *)self assertionsDict];
    [assertionsDict3 setObject:v26 forKeyedSubscript:reasonCopy];
  }

  objc_autoreleasePoolPop(context);
}

- (void)powerAssertionDisableWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = +[NSBundle mainBundle];
  bundleIdentifier = [v5 bundleIdentifier];

  reasonCopy = [NSString stringWithFormat:@"%@-%@", bundleIdentifier, reasonCopy];
  assertionsDict = [(PowerMgr *)self assertionsDict];
  if ([assertionsDict count])
  {
    assertionsDict2 = [(PowerMgr *)self assertionsDict];
    v10 = [assertionsDict2 objectForKeyedSubscript:reasonCopy];

    if (v10)
    {
      -[PowerMgr _disableAssertion:withName:](self, "_disableAssertion:withName:", [v10 intValue], reasonCopy);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = sub_100002830(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Did not find any existing assertion with name %@ when trying to disable it", buf, 0xCu);
  }

  v10 = 0;
LABEL_8:
}

- (void)_disableAssertion:(unsigned int)assertion withName:(id)name
{
  nameCopy = name;
  assertionsDict = [(PowerMgr *)self assertionsDict];
  [assertionsDict removeObjectForKey:nameCopy];

  v9 = sub_100002830(v8);
  v10 = v9;
  if (assertion)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000371EC();
    }

    v11 = IOPMAssertionRelease(assertion);
    v12 = v11;
    v13 = sub_100002830(v11);
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
      sub_100037254();
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