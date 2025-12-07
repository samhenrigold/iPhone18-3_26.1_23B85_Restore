@interface CrashReporter
+ (id)coreNameFromFilename:(id)filename;
+ (id)decodeCrashlogs:(id)crashlogs fromSubsystem:(id)subsystem;
+ (id)decodeCustomSectionsFromData:(id)data forCore:(id)core withDecoder:(id)decoder sectionInfo:(id)info;
+ (id)firmwareReasonFromDecodedCrashlogs:(id)crashlogs subsystemID:(id)d;
+ (id)humanReadableDurationFromTimestamp:(id)timestamp;
+ (id)humanReadableWallTimeFromTimestamp:(id)timestamp;
+ (id)primaryCoreNameForSubsystemID:(id)d;
+ (id)radarCreationURLWithHostReason:(id)reason firmwareReason:(id)firmwareReason subsystemName:(id)name upTimestamp:(id)timestamp monotonicTimestamp:(id)monotonicTimestamp realTimestamp:(id)realTimestamp;
+ (id)subsystemNameForSubsystemID:(id)d;
+ (id)unslideAddress:(id)address slide:(unint64_t)slide;
+ (id)unslideCallstack:(id)callstack slide:(unint64_t)slide;
+ (int64_t)getUserNotificationMinInterval;
+ (unint64_t)crashAnalyticsSamplingRate;
+ (void)saveDecodedCrashlogs:(id)crashlogs fromSubsystem:(id)subsystem timestamp:(id)timestamp;
- (BOOL)shouldNotifyUser;
- (CrashReporter)initWithBuiltIn:(BOOL)in analyticsReporter:(id)reporter;
- (id)analyticsDataForCrashlog:(id)crashlog core:(id)core;
- (int64_t)getLastUserNotificationTimestamp;
- (void)notifyUserWithBody:(id)body radarCreationURL:(id)l;
- (void)processCrash:(id)crash;
- (void)processCrashes:(id)crashes completion:(id)completion;
- (void)sendToCrashAnalyticsPipeline:(id)pipeline hostReason:(id)reason subsystemID:(id)d upTimestamp:(id)timestamp monotonicTimestamp:(id)monotonicTimestamp realTimestamp:(id)realTimestamp;
- (void)setLastUserNotificationTimestamp:(int64_t)timestamp;
@end

@implementation CrashReporter

- (CrashReporter)initWithBuiltIn:(BOOL)in analyticsReporter:(id)reporter
{
  reporterCopy = reporter;
  v29.receiver = self;
  v29.super_class = CrashReporter;
  v9 = [(CrashReporter *)&v29 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.centaurid.crashreporter", v10);
    dispatchQueue = v9->_dispatchQueue;
    v9->_dispatchQueue = v11;

    v9->_builtIn = in;
    objc_storeStrong(&v9->_analyticsReporter, reporter);
    v13 = _os_feature_enabled_impl();
    v9->_enableCrashAnalytics = v13;
    if (v13)
    {
      if (&kOSALogOptionOverrideFilePrefix)
      {
        if (v9->_builtIn)
        {
          v14 = sub_100025608(v13);
          wsku = v9->_wsku;
          v9->_wsku = v14;

          v17 = sub_1000257CC(v16);
          chipset = v9->_chipset;
          v9->_chipset = v17;

          v20 = sub_100025918(v19);
          chipsetRevision = v9->_chipsetRevision;
          v9->_chipsetRevision = v20;
        }

        v22 = sub_100025A64(v13);
        productType = v9->_productType;
        v9->_productType = v22;
      }

      else
      {
        v27 = sub_100025204(v13);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10002A474();
        }

        v9->_enableCrashAnalytics = 0;
      }
    }

    else
    {
      v24 = sub_100025204(v13);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [objc_opt_class() description];
        v26 = NSStringFromSelector(a2);
        *buf = 138543618;
        v31 = v25;
        v32 = 2114;
        v33 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: crash analytics feature disabled", buf, 0x16u);
      }
    }
  }

  return v9;
}

- (void)processCrashes:(id)crashes completion:(id)completion
{
  crashesCopy = crashes;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010B28;
  block[3] = &unk_10005CA10;
  v12 = crashesCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = crashesCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)processCrash:(id)crash
{
  crashCopy = crash;
  v5 = [NSString stringWithUTF8String:"Metadata"];
  v6 = [crashCopy objectForKeyedSubscript:v5];

  if (v6)
  {
    v8 = [NSString stringWithUTF8String:"Reason"];
    v9 = [v6 objectForKeyedSubscript:v8];

    if (v9)
    {
      v11 = [NSString stringWithUTF8String:"SubsystemID"];
      v12 = [v6 objectForKeyedSubscript:v11];

      if (!v12)
      {
        sub_10002A714(self);
        goto LABEL_28;
      }

      v13 = [objc_opt_class() subsystemNameForSubsystemID:v12];
      v14 = [NSString stringWithUTF8String:"UpTimestamp"];
      v15 = [v6 objectForKeyedSubscript:v14];

      v59 = v15;
      if (v15)
      {
        v17 = [NSString stringWithUTF8String:"MonotonicTimestamp"];
        v18 = [v6 objectForKeyedSubscript:v17];

        if (v18)
        {
          v20 = [NSString stringWithUTF8String:"RealTimestamp"];
          v21 = [v6 objectForKeyedSubscript:v20];

          if (v21)
          {
            v58 = v12;
            v23 = [objc_opt_class() decodeCrashlogs:crashCopy fromSubsystem:v13];
            v24 = v23;
            v56 = crashCopy;
            v57 = v9;
            if (v23)
            {
              if (sub_10002529C())
              {
                v25 = +[NSUserDefaults standardUserDefaults];
                v26 = [v25 BOOLForKey:@"SaveDecodedCrashlogs"];

                if (v26)
                {
                  [objc_opt_class() saveDecodedCrashlogs:v24 fromSubsystem:v13 timestamp:v21];
                }
              }

              v23 = [objc_opt_class() firmwareReasonFromDecodedCrashlogs:v24 subsystemID:v58];
              v27 = v23;
            }

            else
            {
              v27 = 0;
            }

            v28 = sub_100025204(v23);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [objc_opt_class() description];
              v30 = NSStringFromSelector(a2);
              *buf = 138543874;
              v62 = v29;
              v63 = 2114;
              v64 = v30;
              v65 = 2112;
              v66 = v13;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: subsystem: %@", buf, 0x20u);
            }

            v32 = sub_100025204(v31);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = [objc_opt_class() description];
              v34 = NSStringFromSelector(a2);
              *buf = 138543874;
              v62 = v33;
              v63 = 2114;
              v64 = v34;
              v65 = 2114;
              v66 = v57;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: host reason: %{public}@", buf, 0x20u);
            }

            v36 = sub_100025204(v35);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = [objc_opt_class() description];
              v38 = NSStringFromSelector(a2);
              *buf = 138543874;
              v62 = v37;
              v63 = 2114;
              v64 = v38;
              v65 = 2114;
              v66 = v27;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: firmware reason: %{public}@", buf, 0x20u);
            }

            v40 = sub_100025204(v39);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [objc_opt_class() description];
              v42 = NSStringFromSelector(a2);
              *buf = 138543874;
              v62 = v41;
              v63 = 2114;
              v64 = v42;
              v65 = 2112;
              v66 = v59;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: up timestamp: %@", buf, 0x20u);
            }

            v44 = sub_100025204(v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = [objc_opt_class() description];
              v46 = NSStringFromSelector(a2);
              *buf = 138543874;
              v62 = v45;
              v63 = 2114;
              v64 = v46;
              v65 = 2112;
              v66 = v18;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: monotonic timestamp: %@", buf, 0x20u);
            }

            v48 = sub_100025204(v47);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = [objc_opt_class() description];
              v50 = NSStringFromSelector(a2);
              *buf = 138543874;
              v62 = v49;
              v63 = 2114;
              v64 = v50;
              v65 = 2112;
              v66 = v21;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: real timestamp: %@", buf, 0x20u);
            }

            v9 = v57;
            [(AnalyticsReporter *)self->_analyticsReporter reportCrashlogProcessedFromSubsystem:v13 hostReason:v57 firmwareReason:v27];
            if ([(CrashReporter *)self shouldNotifyUser])
            {
              v51 = [objc_opt_class() notificationBodyForHostReason:v57 firmwareReason:v27 subsystemName:v13];
              v52 = [objc_opt_class() radarCreationURLWithHostReason:v57 firmwareReason:v27 subsystemName:v13 upTimestamp:v59 monotonicTimestamp:v18 realTimestamp:v21];
              [(CrashReporter *)self notifyUserWithBody:v51 radarCreationURL:v52];
            }

            [(CrashReporter *)self sendToCrashAnalyticsPipeline:v24 hostReason:v57 subsystemID:v58 upTimestamp:v59 monotonicTimestamp:v18 realTimestamp:v21];

            crashCopy = v56;
            goto LABEL_28;
          }

          v55 = sub_100025204(v22);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            sub_10002A51C();
          }
        }

        else
        {
          v54 = sub_100025204(v19);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            sub_10002A5C4();
          }
        }
      }

      else
      {
        v53 = sub_100025204(v16);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          sub_10002A66C();
        }
      }

      goto LABEL_28;
    }

    v9 = sub_100025204(v10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002A7E4();
    }
  }

  else
  {
    v9 = sub_100025204(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002A88C();
    }
  }

LABEL_28:
}

+ (id)decodeCrashlogs:(id)crashlogs fromSubsystem:(id)subsystem
{
  crashlogsCopy = crashlogs;
  v8 = crashlogsCopy;
  if (&_RTBuddyCrashlogDecode)
  {
    [CrashlogDecoder decoderForSubsystem:subsystem];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100029EE4;
    v16 = &unk_10005CA38;
    selfCopy = self;
    v17 = v20 = a2;
    v18 = objc_alloc_init(NSMutableDictionary);
    v9 = v18;
    v10 = v17;
    [v8 enumerateKeysAndObjectsUsingBlock:&v13];
    v11 = [v9 copy];
  }

  else
  {
    v10 = sub_100025204(crashlogsCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10002A934();
    }

    v11 = 0;
  }

  return v11;
}

+ (id)decodeCustomSectionsFromData:(id)data forCore:(id)core withDecoder:(id)decoder sectionInfo:(id)info
{
  dataCopy = data;
  coreCopy = core;
  decoderCopy = decoder;
  infoCopy = info;
  objc_opt_class();
  v44 = infoCopy;
  v50 = decoderCopy;
  v51 = coreCopy;
  if (objc_opt_isKindOfClass())
  {
    v54 = [decoderCopy supportedSectionsForCore:coreCopy];
    if (v54)
    {
      v45 = objc_alloc_init(NSMutableDictionary);
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v12 = infoCopy;
      v13 = [v12 countByEnumeratingWithState:&v55 objects:v71 count:16];
      if (!v13)
      {
        goto LABEL_33;
      }

      v15 = *v56;
      *&v14 = 138544386;
      v43 = v14;
      while (1)
      {
        v16 = 0;
        do
        {
          if (*v56 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v55 + 1) + 8 * v16);
          v18 = [v17 objectForKeyedSubscript:{@"section-signature", v43}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            if (![v54 containsObject:v18])
            {
              goto LABEL_26;
            }

            v20 = [v17 objectForKeyedSubscript:@"section-offset"];
            objc_opt_class();
            v21 = objc_opt_isKindOfClass();
            if (v21)
            {
              v22 = [v17 objectForKeyedSubscript:@"section-size"];
              objc_opt_class();
              v23 = objc_opt_isKindOfClass();
              if (v23)
              {
                unsignedIntegerValue = [v20 unsignedIntegerValue];
                unsignedIntegerValue2 = [v22 unsignedIntegerValue];
                v26 = [dataCopy length];
                if (unsignedIntegerValue < v26 && (v26 = [dataCopy length], unsignedIntegerValue2 < v26) && (v26 = objc_msgSend(dataCopy, "length"), &unsignedIntegerValue[unsignedIntegerValue2] <= v26))
                {
                  v33 = sub_100025204(v26);
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    v49 = [objc_opt_class() description];
                    v34 = NSStringFromSelector(a2);
                    *buf = 138544130;
                    v60 = v49;
                    v61 = 2114;
                    v62 = v34;
                    v63 = 2112;
                    v64 = v51;
                    v65 = 2112;
                    v66 = v18;
                    v47 = v34;
                    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: decoding %@:%@", buf, 0x2Au);
                  }

                  v35 = [dataCopy subdataWithRange:{unsignedIntegerValue, unsignedIntegerValue2}];
                  v27 = [v50 decodeData:v35 forSection:v18 fromCore:v51];

                  if ([v27 count])
                  {
                    [v45 addEntriesFromDictionary:v27];
                  }
                }

                else
                {
                  v27 = sub_100025204(v26);
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                  {
                    v48 = [objc_opt_class() description];
                    v46 = NSStringFromSelector(a2);
                    v28 = [dataCopy length];
                    *buf = 138544642;
                    v60 = v48;
                    v61 = 2114;
                    v62 = v46;
                    v63 = 2112;
                    v64 = v18;
                    v65 = 2048;
                    v66 = unsignedIntegerValue;
                    v67 = 2048;
                    v68 = unsignedIntegerValue2;
                    v69 = 2048;
                    v70 = v28;
                    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %@ section out of bounds: %lu, %lu, %lu", buf, 0x3Eu);
                  }
                }
              }

              else
              {
                v27 = sub_100025204(v23);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v36 = [objc_opt_class() description];
                  v37 = NSStringFromSelector(a2);
                  *buf = 138543874;
                  v60 = v36;
                  v61 = 2114;
                  v62 = v37;
                  v63 = 2112;
                  v64 = v18;
                  _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %@ section size missing or wrong type", buf, 0x20u);
                }
              }
            }

            else
            {
              v22 = sub_100025204(v21);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v31 = [objc_opt_class() description];
                v32 = NSStringFromSelector(a2);
                *buf = 138543874;
                v60 = v31;
                v61 = 2114;
                v62 = v32;
                v63 = 2112;
                v64 = v18;
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %@ section offset missing or wrong type", buf, 0x20u);
              }
            }
          }

          else
          {
            v20 = sub_100025204(isKindOfClass);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v29 = [objc_opt_class() description];
              v30 = NSStringFromSelector(a2);
              *buf = 138543618;
              v60 = v29;
              v61 = 2114;
              v62 = v30;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: signature missing or wrong type", buf, 0x16u);
            }
          }

LABEL_26:
          v16 = v16 + 1;
        }

        while (v13 != v16);
        v38 = [v12 countByEnumeratingWithState:&v55 objects:v71 count:16];
        v13 = v38;
        if (!v38)
        {
LABEL_33:

          v39 = v45;
          goto LABEL_35;
        }
      }
    }
  }

  v54 = 0;
  v39 = 0;
LABEL_35:
  v40 = v39;
  v41 = [v39 copy];

  return v41;
}

+ (id)firmwareReasonFromDecodedCrashlogs:(id)crashlogs subsystemID:(id)d
{
  crashlogsCopy = crashlogs;
  dCopy = d;
  v9 = [self primaryCoreNameForSubsystemID:dCopy];
  if (!v9)
  {
    v14 = sub_100025204(0);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v15 = [objc_opt_class() description];
    v16 = NSStringFromSelector(a2);
    v20 = 138543874;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2112;
    v25 = dCopy;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid subsystemID %@", &v20, 0x20u);
    goto LABEL_7;
  }

  v10 = [crashlogsCopy objectForKey:v9];
  if (!v10)
  {
    v14 = sub_100025204(0);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      v11 = 0;
      goto LABEL_11;
    }

    v15 = [objc_opt_class() description];
    v16 = NSStringFromSelector(a2);
    v20 = 138543874;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no crashlog for %@", &v20, 0x20u);
LABEL_7:

    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v10 objectForKey:@"panic"];
  if (v12)
  {
    v13 = v12;
    goto LABEL_12;
  }

  v14 = sub_100025204(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [objc_opt_class() description];
    v18 = NSStringFromSelector(a2);
    v20 = 138543874;
    v21 = v17;
    v22 = 2114;
    v23 = v18;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no panic string in %@'s crashlog", &v20, 0x20u);
  }

LABEL_11:

  v13 = 0;
LABEL_12:

  return v13;
}

+ (id)subsystemNameForSubsystemID:(id)d
{
  unsignedIntegerValue = [d unsignedIntegerValue];
  if (unsignedIntegerValue >= [&off_100080E28 count])
  {
    v4 = @"???";
  }

  else
  {
    v4 = [&off_100080E40 objectAtIndexedSubscript:unsignedIntegerValue];
  }

  return v4;
}

+ (id)primaryCoreNameForSubsystemID:(id)d
{
  dCopy = d;
  v5 = [NSString stringWithUTF8String:"Crashlog.CTRL.bin"];
  v6 = [NSString stringWithUTF8String:"Crashlog.WFMAIN.bin", v5];
  v13[1] = v6;
  v7 = [NSString stringWithUTF8String:"Crashlog.BTMAIN.bin"];
  v13[2] = v7;
  v8 = [NSArray arrayWithObjects:v13 count:3];

  unsignedIntegerValue = [dCopy unsignedIntegerValue];
  if (unsignedIntegerValue >= [v8 count])
  {
    v11 = 0;
  }

  else
  {
    v10 = [v8 objectAtIndexedSubscript:unsignedIntegerValue];
    v11 = [self coreNameFromFilename:v10];
  }

  return v11;
}

+ (id)coreNameFromFilename:(id)filename
{
  filenameCopy = filename;
  v4 = [NSRegularExpression regularExpressionWithPattern:@"Crashlog\\.(\\S+)\\.bin" options:0 error:0];
  v5 = [v4 firstMatchInString:filenameCopy options:0 range:{0, objc_msgSend(filenameCopy, "length")}];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 rangeAtIndex:1];
    v9 = [filenameCopy substringWithRange:{v7, v8}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)saveDecodedCrashlogs:(id)crashlogs fromSubsystem:(id)subsystem timestamp:(id)timestamp
{
  crashlogsCopy = crashlogs;
  subsystemCopy = subsystem;
  v10 = [self humanReadableWallTimeFromTimestamp:timestamp];
  v11 = NSTemporaryDirectory();
  v12 = [NSString stringWithFormat:@"CentauriCrash-%@-%@", subsystemCopy, v10];
  v13 = [v11 stringByAppendingPathComponent:v12];

  v14 = +[NSFileManager defaultManager];
  v45 = 0;
  v39 = v13;
  LOBYTE(v12) = [v14 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v45];
  v15 = v45;

  if (v12)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v17 = crashlogsCopy;
    v18 = [v17 countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v18)
    {
      v19 = v18;
      v34 = v10;
      v35 = subsystemCopy;
      v36 = crashlogsCopy;
      v38 = *v42;
      do
      {
        v20 = 0;
        v21 = v15;
        do
        {
          if (*v42 != v38)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v41 + 1) + 8 * v20);
          v23 = [v39 stringByAppendingPathComponent:v22];
          v24 = [v23 stringByAppendingPathExtension:@"plist"];

          v25 = [v17 objectForKeyedSubscript:v22];
          v26 = [NSURL fileURLWithPath:v24];
          v40 = v21;
          v27 = [v25 writeToURL:v26 error:&v40];
          v15 = v40;

          if ((v27 & 1) == 0)
          {
            v29 = sub_100025204(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = [objc_opt_class() description];
              v31 = NSStringFromSelector(a2);
              *buf = 138544130;
              v47 = v30;
              v48 = 2114;
              v49 = v31;
              v50 = 2114;
              v51 = v22;
              v52 = 2114;
              v53 = v15;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to write %{public}@: %{public}@", buf, 0x2Au);
            }
          }

          v20 = v20 + 1;
          v21 = v15;
        }

        while (v19 != v20);
        v19 = [v17 countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v19);
      subsystemCopy = v35;
      crashlogsCopy = v36;
      v10 = v34;
    }
  }

  else
  {
    v17 = sub_100025204(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v32 = [objc_opt_class() description];
      v33 = NSStringFromSelector(a2);
      *buf = 138543874;
      v47 = v32;
      v48 = 2114;
      v49 = v33;
      v50 = 2114;
      v51 = v15;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to create directory: %{public}@", buf, 0x20u);
    }
  }
}

- (void)notifyUserWithBody:(id)body radarCreationURL:(id)l
{
  bodyCopy = body;
  lCopy = l;
  if (self->_userNotificationCenter || (v9 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.centaurid.CentauriNotifications" queue:self->_dispatchQueue], v10 = self->_userNotificationCenter, self->_userNotificationCenter = v9, v10, self->_userNotificationCenter))
  {
    v12 = objc_alloc_init(UNMutableNotificationContent);
    [v12 setTitle:@"Connectivity Fatal Error Detected"];
    [v12 setSubtitle:@"Please File a Radar"];
    [v12 setBody:bodyCopy];
    v13 = +[UNNotificationSound defaultSound];
    [v12 setSound:v13];

    [v12 setThreadIdentifier:@"com.apple.centaurid.crashalert"];
    [v12 setCategoryIdentifier:@"com.apple.centaurid.crashalert"];
    [v12 setShouldBackgroundDefaultAction:1];
    [v12 setShouldAuthenticateDefaultAction:1];
    [v12 setDefaultActionURL:lCopy];
    v14 = [UNNotificationIcon iconForApplicationIdentifier:@"com.apple.TapToRadar"];
    [v12 setIcon:v14];

    v15 = [UNNotificationRequest requestWithIdentifier:@"com.apple.centaurid.CentauriNotifications" content:v12 trigger:0];
    if (v15)
    {
      v16 = v15;
      objc_initWeak(&location, self);
      userNotificationCenter = self->_userNotificationCenter;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000128D0;
      v18[3] = &unk_10005CA60;
      objc_copyWeak(v19, &location);
      v19[1] = a2;
      [(UNUserNotificationCenter *)userNotificationCenter addNotificationRequest:v16 withCompletionHandler:v18];
      objc_destroyWeak(v19);
      objc_destroyWeak(&location);
    }

    else
    {
      v16 = sub_100025204(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10002A9DC(self, a2);
      }
    }
  }

  else
  {
    v12 = sub_100025204(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10002AA90(self, a2);
    }
  }
}

+ (int64_t)getUserNotificationMinInterval
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"CrashNotificationMinInterval"];

  if (v4 < 1)
  {
    return 60;
  }

  v6 = sub_100025204(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: overriding to %ld seconds", &v10, 0x20u);
  }

  return v4;
}

- (void)setLastUserNotificationTimestamp:(int64_t)timestamp
{
  self->_lastUserNotificationTimestamp = timestamp;
  p_lastUserNotificationTimestamp = &self->_lastUserNotificationTimestamp;
  self->_lastUserNotificationTimestampKnown = 1;
  v5 = NSTemporaryDirectory();
  v6 = [v5 stringByAppendingPathComponent:@"lastCrashNotificationTimestamp.bin"];

  v7 = [NSData dataWithBytes:p_lastUserNotificationTimestamp length:8];
  v8 = v7;
  if (!v7)
  {
    v12 = sub_100025204(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10002AB44();
    }

    v11 = 0;
    goto LABEL_9;
  }

  v15 = 0;
  v9 = [v7 writeToFile:v6 options:0 error:&v15];
  v10 = v15;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    v12 = sub_100025204(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_opt_class() description];
      v14 = NSStringFromSelector(a2);
      *buf = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to write file: %{public}@", buf, 0x20u);
    }

LABEL_9:
  }
}

- (BOOL)shouldNotifyUser
{
  v4 = sub_10002529C();
  if (v4)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 BOOLForKey:@"EnableCrashNotifications"];

    if (v6)
    {
      if (!objc_opt_class())
      {
        v15 = sub_100025204(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10002ACB8();
        }

        goto LABEL_18;
      }

      v22.tv_sec = 0;
      v22.tv_nsec = 0;
      v8 = clock_gettime(_CLOCK_MONOTONIC_RAW, &v22);
      if (v8)
      {
        v9 = sub_100025204(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10002ABEC();
        }
      }

      getLastUserNotificationTimestamp = [(CrashReporter *)self getLastUserNotificationTimestamp];
      tv_sec = v22.tv_sec;
      if (getLastUserNotificationTimestamp >= 1)
      {
        v12 = getLastUserNotificationTimestamp;
        v13 = v22.tv_sec - getLastUserNotificationTimestamp;
        if (v22.tv_sec >= getLastUserNotificationTimestamp)
        {
          getUserNotificationMinInterval = [objc_opt_class() getUserNotificationMinInterval];
          if (v13 < getUserNotificationMinInterval)
          {
            v15 = sub_100025204(getUserNotificationMinInterval);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [objc_opt_class() description];
              v17 = NSStringFromSelector(a2);
              *buf = 138543874;
              v24 = v16;
              v25 = 2114;
              v26 = v17;
              v27 = 2048;
              v28 = v22.tv_sec - v12;
              v18 = "%{public}@::%{public}@: %ld seconds since last notification, suppressing";
              v19 = v15;
              v20 = 32;
LABEL_15:
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);

              goto LABEL_18;
            }

            goto LABEL_18;
          }

          tv_sec = v22.tv_sec;
        }
      }

      [(CrashReporter *)self setLastUserNotificationTimestamp:tv_sec];
      LOBYTE(v4) = 1;
      return v4;
    }

    v15 = sub_100025204(v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [objc_opt_class() description];
      v17 = NSStringFromSelector(a2);
      *buf = 138543618;
      v24 = v16;
      v25 = 2114;
      v26 = v17;
      v18 = "%{public}@::%{public}@: preference disabled";
      v19 = v15;
      v20 = 22;
      goto LABEL_15;
    }

LABEL_18:

    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)radarCreationURLWithHostReason:(id)reason firmwareReason:(id)firmwareReason subsystemName:(id)name upTimestamp:(id)timestamp monotonicTimestamp:(id)monotonicTimestamp realTimestamp:(id)realTimestamp
{
  realTimestampCopy = realTimestamp;
  monotonicTimestampCopy = monotonicTimestamp;
  timestampCopy = timestamp;
  nameCopy = name;
  firmwareReasonCopy = firmwareReason;
  reasonCopy = reason;
  v17 = objc_opt_new();
  [v17 setScheme:@"tap-to-radar"];
  v18 = sub_1000254F0([v17 setHost:@"new"]);
  v19 = sub_1000253D8(v18);
  firmwareReasonCopy = [NSString stringWithFormat:@"%@: %@: Connectivity Fatal Error: %@: %@: %@", v18, v19, nameCopy, reasonCopy, firmwareReasonCopy];

  v21 = sub_1000253D8(v20);
  v22 = sub_1000254F0(v21);
  v23 = [objc_opt_class() humanReadableDurationFromTimestamp:timestampCopy];

  v24 = [objc_opt_class() humanReadableDurationFromTimestamp:monotonicTimestampCopy];

  v25 = [objc_opt_class() humanReadableWallTimeFromTimestamp:realTimestampCopy];

  v26 = [NSString stringWithFormat:@"Connectivity Fatal Error Detected\nSubsystem: %@\nHost Reason: %@\nFirmware Reason: %@\nOS Version: %@\nDevice Type: %@\nUptime Excluding Sleep: %@\nUptime Including Sleep: %@\nTimestamp: %@\n", nameCopy, reasonCopy, firmwareReasonCopy, v21, v22, v23, v24, v25];

  v27 = v26;
  v28 = +[NSMutableArray array];
  v29 = [[NSURLQueryItem alloc] initWithName:@"ComponentID" value:@"1671730"];
  [v28 addObject:v29];

  v30 = [[NSURLQueryItem alloc] initWithName:@"ComponentName" value:@"Connectivity LiveOn"];
  [v28 addObject:v30];

  v31 = [[NSURLQueryItem alloc] initWithName:@"ComponentVersion" value:@"All"];
  [v28 addObject:v31];

  v32 = [[NSURLQueryItem alloc] initWithName:@"Title" value:firmwareReasonCopy];
  [v28 addObject:v32];

  v33 = [[NSURLQueryItem alloc] initWithName:@"Description" value:v27];
  [v28 addObject:v33];

  v34 = [[NSURLQueryItem alloc] initWithName:@"Classification" value:@"Crash/Hang/Data Loss"];
  [v28 addObject:v34];

  v35 = [[NSURLQueryItem alloc] initWithName:@"Keywords" value:@"1942038"];
  [v28 addObject:v35];

  v36 = [[NSURLQueryItem alloc] initWithName:@"ExtensionIdentifiers" value:{@"com.apple.DiagnosticExtensions.ConnectivityDE, com.apple.DiagnosticExtensions.WiFi, com.apple.DiagnosticExtensions.BluetoothDiagnosticExtension, com.apple.DiagnosticExtensions.BluetoothHeadset, com.apple.DiagnosticExtensions.sysdiagnose"}];
  [v28 addObject:v36];

  v37 = sub_100025204([v17 setQueryItems:v28]);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [objc_opt_class() description];
    v39 = NSStringFromSelector(a2);
    v40 = [v17 URL];
    *buf = 138543874;
    v48 = v38;
    v49 = 2114;
    v50 = v39;
    v51 = 2112;
    v52 = v40;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@", buf, 0x20u);
  }

  v41 = [v17 URL];

  return v41;
}

+ (id)humanReadableDurationFromTimestamp:(id)timestamp
{
  unsignedLongLongValue = [timestamp unsignedLongLongValue];
  v4 = unsignedLongLongValue / 0x3B9ACA00;
  v5 = (unsignedLongLongValue / 0x3B9ACA00 * 0x444444444444445uLL) >> 64;
  v6 = unsignedLongLongValue / 0xDF8475800 - 60 * (((572662307 * (unsignedLongLongValue / 0xDF8475800)) >> 32) >> 3);
  v7 = (unsignedLongLongValue / 0x34630B8A000 - 24 * ((178956971 * (unsignedLongLongValue / 0x34630B8A000)) >> 32));
  v8 = objc_alloc_init(NSMutableString);
  v9 = v8;
  if (unsignedLongLongValue >= 0x4E94914F0000)
  {
    [v8 appendFormat:@"%@%llu days", @", ", unsignedLongLongValue / 0x4E94914F0000];
  }

  if (v7)
  {
    [v9 appendFormat:@"%@%llu hours", @", ", v7];
  }

  if (v6)
  {
    [v9 appendFormat:@"%@%llu minutes", @", ", v6];
  }

  if (v4 != 60 * v5)
  {
    [v9 appendFormat:@"%@%llu seconds", @", ", v4 - 60 * v5];
  }

  if ([v9 length])
  {
    v10 = [v9 substringFromIndex:{objc_msgSend(@", ", "length")}];
    v11 = [v10 copy];
  }

  else
  {
    v11 = &stru_10005D038;
  }

  return v11;
}

+ (id)humanReadableWallTimeFromTimestamp:(id)timestamp
{
  v3 = qword_100087188;
  timestampCopy = timestamp;
  if (v3 != -1)
  {
    sub_10002AD60();
  }

  unsignedLongLongValue = [timestampCopy unsignedLongLongValue];

  v6 = qword_100087190;
  v7 = [NSDate dateWithTimeIntervalSince1970:unsignedLongLongValue / 1000000000.0];
  v8 = [v6 stringFromDate:v7];

  return v8;
}

+ (unint64_t)crashAnalyticsSamplingRate
{
  if (sub_10002529C())
  {
    v3 = 100;
  }

  else
  {
    v3 = 10;
  }

  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.da"];
  v5 = [v4 objectForKey:@"com.apple.centaurid.CrashAnalyticsSamplingRate"];

  if (!v5)
  {
    integerValue = v3;
LABEL_11:
    v10 = sub_100025204(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [objc_opt_class() description];
      v14 = NSStringFromSelector(a2);
      v18 = 138543874;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      v22 = 2048;
      v23 = integerValue;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %lu%%", &v18, 0x20u);
    }

    v3 = integerValue;
    goto LABEL_14;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    integerValue = [v5 integerValue];
    v9 = sub_100025204(integerValue);
    v10 = v9;
    if (integerValue < 0x65)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [objc_opt_class() description];
        v12 = NSStringFromSelector(a2);
        v18 = 138543618;
        v19 = v11;
        v20 = 2114;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: override accepted", &v18, 0x16u);
      }

      goto LABEL_11;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_opt_class() description];
      v17 = NSStringFromSelector(a2);
      v18 = 138543874;
      v19 = v16;
      v20 = 2114;
      v21 = v17;
      v22 = 2048;
      v23 = integerValue;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: override out of range: %ld", &v18, 0x20u);
    }
  }

  else
  {
    v10 = sub_100025204(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10002AD74();
    }
  }

LABEL_14:

  return v3;
}

- (void)sendToCrashAnalyticsPipeline:(id)pipeline hostReason:(id)reason subsystemID:(id)d upTimestamp:(id)timestamp monotonicTimestamp:(id)monotonicTimestamp realTimestamp:(id)realTimestamp
{
  pipelineCopy = pipeline;
  reasonCopy = reason;
  dCopy = d;
  timestampCopy = timestamp;
  monotonicTimestampCopy = monotonicTimestamp;
  realTimestampCopy = realTimestamp;
  if (self->_enableCrashAnalytics)
  {
    v20 = arc4random_uniform(0x64u);
    crashAnalyticsSamplingRate = [objc_opt_class() crashAnalyticsSamplingRate];
    if (crashAnalyticsSamplingRate <= v20)
    {
      v28 = sub_100025204(crashAnalyticsSamplingRate);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [objc_opt_class() description];
        NSStringFromSelector(a2);
        v31 = v30 = realTimestampCopy;
        *buf = 138543618;
        v102 = v29;
        v103 = 2114;
        v104 = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: dropping due to sampling rate", buf, 0x16u);

        realTimestampCopy = v30;
      }

      goto LABEL_49;
    }

    v82 = realTimestampCopy;
    v84 = timestampCopy;
    v85 = reasonCopy;
    v83 = monotonicTimestampCopy;
    if (sub_10002529C() && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 BOOLForKey:@"CrashAnalyticsTestMode"], v22, v23))
    {
      v25 = sub_100025204(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [objc_opt_class() description];
        v27 = NSStringFromSelector(a2);
        *buf = 138543618;
        v102 = v26;
        v103 = 2114;
        v104 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: test mode enabled", buf, 0x16u);
      }

      v77 = 1;
    }

    else
    {
      v77 = 0;
    }

    v81 = [objc_opt_class() subsystemNameForSubsystemID:dCopy];
    selfCopy = self;
    v79 = dCopy;
    v88 = [objc_opt_class() primaryCoreNameForSubsystemID:dCopy];
    v89 = objc_alloc_init(NSMutableArray);
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v80 = pipelineCopy;
    v32 = pipelineCopy;
    v33 = [v32 countByEnumeratingWithState:&v95 objects:v115 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v96;
      do
      {
        v36 = 0;
        do
        {
          if (*v96 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v95 + 1) + 8 * v36);
          v38 = [v32 objectForKeyedSubscript:v37];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v41 = [v32 objectForKeyedSubscript:v37];
            v42 = [(CrashReporter *)selfCopy analyticsDataForCrashlog:v41 core:v37];

            if (v42)
            {
              v113[0] = @"core";
              v113[1] = @"crashlog";
              v114[0] = v37;
              v114[1] = v42;
              v43 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:2];
              [v89 addObject:v43];

              if ([v88 isEqualToString:v37])
              {
                v44 = [v42 mutableCopy];
                [v44 removeObjectForKey:@"application-info"];
                v112[0] = @"AP";
                v111[0] = @"core";
                v111[1] = @"crashlog";
                v45 = [v44 copy];
                v112[1] = v45;
                v46 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:2];
                [v89 addObject:v46];

LABEL_20:
              }
            }
          }

          else
          {
            v42 = sub_100025204(v40);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v44 = [objc_opt_class() description];
              v45 = NSStringFromSelector(a2);
              *buf = 138543618;
              v102 = v44;
              v103 = 2114;
              v104 = v45;
              _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: decoded crashlog has wrong type", buf, 0x16u);
              goto LABEL_20;
            }
          }

          v36 = v36 + 1;
        }

        while (v34 != v36);
        v47 = [v32 countByEnumeratingWithState:&v95 objects:v115 count:16];
        v34 = v47;
      }

      while (v47);
    }

    v109[0] = @"bug_type";
    v109[1] = @"UI_country_code";
    v110[0] = @"305";
    v110[1] = @"US";
    v109[2] = @"log-version";
    v109[3] = @"accessory_type";
    v110[2] = @"1.0";
    v110[3] = @"centauri";
    v109[4] = @"analytics_test_mode";
    v78 = [NSNumber numberWithBool:v77];
    v110[4] = v78;
    v109[5] = @"accessory_machine_config";
    productType = selfCopy->_productType;
    v49 = productType;
    if (!productType)
    {
      v49 = +[NSNull null];
    }

    v76 = v49;
    v110[5] = v49;
    v109[6] = @"application-info";
    v107[0] = @"chipset";
    chipset = selfCopy->_chipset;
    v51 = chipset;
    if (!chipset)
    {
      v51 = +[NSNull null];
    }

    v74 = v51;
    v108[0] = v51;
    v107[1] = @"chipset-revision";
    chipsetRevision = selfCopy->_chipsetRevision;
    v53 = chipsetRevision;
    if (!chipsetRevision)
    {
      v53 = [NSNull null:v51];
    }

    v108[1] = v53;
    v107[2] = @"sku";
    wsku = selfCopy->_wsku;
    v55 = wsku;
    if (!wsku)
    {
      v55 = +[NSNull null];
    }

    v108[2] = v55;
    v107[3] = @"builtin";
    v56 = [NSNumber numberWithBool:selfCopy->_builtIn, v74];
    v108[3] = v56;
    v108[4] = v85;
    v107[4] = @"host-reason";
    v107[5] = @"subsystem";
    v108[5] = v81;
    v108[6] = v84;
    v107[6] = @"uptime-without-sleep";
    v107[7] = @"uptime-with-sleep";
    v108[7] = v83;
    v107[8] = @"wall-time";
    v57 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v82 unsignedLongLongValue] % 0x4E94914F0000);
    v108[8] = v57;
    v58 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:9];
    v109[7] = @"crashlogs";
    v110[6] = v58;
    v110[7] = v89;
    v86 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:8];

    if (wsku)
    {
      if (chipsetRevision)
      {
        goto LABEL_36;
      }
    }

    else
    {

      if (chipsetRevision)
      {
        goto LABEL_36;
      }
    }

LABEL_36:
    v28 = v89;
    v59 = v86;
    if (!chipset)
    {
    }

    monotonicTimestampCopy = v83;
    if (!productType)
    {
    }

    v94 = 0;
    v60 = [NSJSONSerialization dataWithJSONObject:v86 options:1 error:&v94];
    v61 = v94;
    v62 = v61;
    reasonCopy = v85;
    if (!v60 || v61)
    {
      v71 = sub_100025204(v61);
      pipelineCopy = v80;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = [objc_opt_class() description];
        v73 = NSStringFromSelector(a2);
        *buf = 138543874;
        v102 = v72;
        v103 = 2114;
        v104 = v73;
        v105 = 2114;
        v106 = v62;
        _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: json serialization failed: %{public}@", buf, 0x20u);
      }

      goto LABEL_48;
    }

    v99 = kOSALogOptionOverrideFilePrefix;
    v100 = @"CentauriFirmwareEvent";
    v63 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    v93 = 0;
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_1000144B0;
    v91[3] = &unk_10005CAC8;
    v92 = v60;
    v64 = [OSALog createForSubmission:@"305" metadata:0 options:v63 error:&v93 writing:v91];
    v62 = v93;

    v66 = sub_100025204(v65);
    v67 = v66;
    pipelineCopy = v80;
    if (!v64 || v62)
    {
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      v68 = [objc_opt_class() description];
      v69 = NSStringFromSelector(a2);
      *buf = 138543874;
      v102 = v68;
      v103 = 2114;
      v104 = v69;
      v105 = 2114;
      v106 = v62;
      _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: submission failed: %{public}@", buf, 0x20u);
    }

    else
    {
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
LABEL_47:

        v71 = v92;
LABEL_48:

        dCopy = v79;
        timestampCopy = v84;
        realTimestampCopy = v82;
LABEL_49:

        goto LABEL_50;
      }

      v68 = [objc_opt_class() description];
      v69 = NSStringFromSelector(a2);
      filepath = [v64 filepath];
      *buf = 138543874;
      v102 = v68;
      v103 = 2114;
      v104 = v69;
      v105 = 2114;
      v106 = filepath;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: submitted: %{public}@", buf, 0x20u);

      v59 = v86;
    }

    v28 = v89;
    goto LABEL_47;
  }

LABEL_50:
}

- (id)analyticsDataForCrashlog:(id)crashlog core:(id)core
{
  crashlogCopy = crashlog;
  coreCopy = core;
  v7 = objc_alloc_init(NSMutableArray);
  v239 = objc_alloc_init(NSMutableArray);
  v8 = [crashlogCopy objectForKeyedSubscript:@"errors"];

  v236 = crashlogCopy;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v240 = 0;
    v262 = 0;
    goto LABEL_234;
  }

  v19 = [crashlogCopy objectForKeyedSubscript:@"panic"];
  if (v19)
  {
    v20 = v19;
    objc_opt_class();
    v240 = v20;
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      goto LABEL_9;
    }

    v22 = sub_100025204(isKindOfClass);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10002AE1C();
    }
  }

  v240 = 0;
LABEL_9:
  v23 = [crashlogCopy objectForKeyedSubscript:@"crashlog-version"];
  if (v23)
  {
    v24 = v23;
    objc_opt_class();
    v234 = v24;
    v25 = objc_opt_isKindOfClass();
    if (v25)
    {
      goto LABEL_15;
    }

    v26 = sub_100025204(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10002AED4();
    }
  }

  v234 = 0;
LABEL_15:
  v27 = [crashlogCopy objectForKeyedSubscript:@"exception"];
  if (v27)
  {
    v28 = v27;
    objc_opt_class();
    v233 = v28;
    v29 = objc_opt_isKindOfClass();
    if (v29)
    {
      goto LABEL_21;
    }

    v30 = sub_100025204(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10002AF8C();
    }
  }

  v233 = 0;
LABEL_21:
  v31 = [crashlogCopy objectForKeyedSubscript:@"sections"];
  if (!v31)
  {
    null6 = sub_100025204(0);
    if (os_log_type_enabled(null6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B0EC();
    }

    v230 = 0;
    v231 = 0;
    v232 = 0;
    v237 = 0;
    v238 = 0;
    v241 = 0;
    v242 = 0;
    v243 = 0;
    goto LABEL_231;
  }

  v32 = v31;
  objc_opt_class();
  v33 = objc_opt_isKindOfClass();
  if ((v33 & 1) == 0)
  {
    null6 = sub_100025204(v33);
    v243 = v32;
    if (os_log_type_enabled(null6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B044();
    }

    v230 = 0;
    v231 = 0;
    v232 = 0;
    v237 = 0;
    v238 = 0;
    v241 = 0;
    v242 = 0;
LABEL_231:
    v262 = 0;
    goto LABEL_232;
  }

  aSelector = a2;
  v286 = 0u;
  v287 = 0u;
  v284 = 0u;
  v285 = 0u;
  v34 = v32;
  v35 = [v34 countByEnumeratingWithState:&v284 objects:v307 count:16];
  v36 = &airship_ch_interface_close_ptr;
  v37 = &airship_ch_interface_close_ptr;
  v243 = v34;
  if (!v35)
  {
    v241 = 0;
    v242 = 0;
    v237 = 0;
    v238 = 0;
    v230 = 0;
    v231 = 0;
    v232 = 0;
LABEL_255:

    goto LABEL_256;
  }

  v38 = v35;
  v230 = 0;
  v231 = 0;
  v232 = 0;
  v237 = 0;
  v238 = 0;
  v244 = 0;
  v241 = 0;
  v242 = 0;
  v248 = *v285;
  do
  {
    v39 = 0;
    v246 = v38;
    do
    {
      if (*v285 != v248)
      {
        objc_enumerationMutation(v34);
      }

      v250 = v39;
      v40 = *(*(&v284 + 1) + 8 * v39);
      objc_opt_class();
      v41 = objc_opt_isKindOfClass();
      if ((v41 & 1) == 0)
      {
        v50 = sub_100025204(v41);
        obj = v50;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = [objc_opt_class() description];
          v52 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v304 = v51;
          v305 = 2114;
          v306 = v52;
          v53 = v50;
          v54 = "%{public}@::%{public}@: section has wrong type";
          goto LABEL_150;
        }

LABEL_41:
        v252 = 0;
        v254 = 0;
        goto LABEL_46;
      }

      v42 = [v40 objectForKeyedSubscript:@"section-name"];
      if (!v42)
      {
        v55 = sub_100025204(0);
        obj = v55;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v51 = [objc_opt_class() description];
          v52 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v304 = v51;
          v305 = 2114;
          v306 = v52;
          v53 = v55;
          v54 = "%{public}@::%{public}@: section missing name";
LABEL_150:
          _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, v54, buf, 0x16u);

          v38 = v246;
        }

        goto LABEL_41;
      }

      v43 = v42;
      objc_opt_class();
      v254 = v43;
      v44 = objc_opt_isKindOfClass();
      if ((v44 & 1) == 0)
      {
        v56 = sub_100025204(v44);
        obj = v56;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = [objc_opt_class() description];
          v58 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v304 = v57;
          v305 = 2114;
          v306 = v58;
          v59 = v56;
          v60 = "%{public}@::%{public}@: section name has wrong type";
          goto LABEL_176;
        }

LABEL_45:
        v252 = 0;
        goto LABEL_46;
      }

      v45 = [v40 objectForKeyedSubscript:@"section-signature"];
      if (!v45)
      {
        v61 = sub_100025204(0);
        obj = v61;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v57 = [objc_opt_class() description];
          v58 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v304 = v57;
          v305 = 2114;
          v306 = v58;
          v59 = v61;
          v60 = "%{public}@::%{public}@: section missing signature";
LABEL_176:
          _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, v60, buf, 0x16u);

          v38 = v246;
        }

        goto LABEL_45;
      }

      v46 = v45;
      objc_opt_class();
      v252 = v46;
      v47 = objc_opt_isKindOfClass();
      if ((v47 & 1) == 0)
      {
        v63 = sub_100025204(v47);
        obj = v63;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v64 = [objc_opt_class() description];
          v65 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v304 = v64;
          v305 = 2114;
          v306 = v65;
          _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: section signature has wrong type", buf, 0x16u);

          v38 = v246;
        }

        goto LABEL_46;
      }

      if ([v254 isEqualToString:@"Version Section"] && objc_msgSend(v46, "isEqualToString:", @"Cver"))
      {
        v48 = [v40 objectForKeyedSubscript:@"uuid"];

        if (v48)
        {
          objc_opt_class();
          v49 = objc_opt_isKindOfClass();
          if (v49)
          {
            v241 = v48;
            goto LABEL_162;
          }

          v146 = sub_100025204(v49);
          if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
          {
            v173 = [objc_opt_class() description];
            v174 = NSStringFromSelector(aSelector);
            *buf = 138543618;
            v304 = v173;
            v305 = 2114;
            v306 = v174;
            _os_log_error_impl(&_mh_execute_header, v146, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: uuid has wrong type", buf, 0x16u);

            v38 = v246;
          }
        }

        v241 = 0;
LABEL_162:
        v147 = [v40 objectForKeyedSubscript:@"version"];

        if (v147)
        {
          objc_opt_class();
          v148 = objc_opt_isKindOfClass();
          if (v148)
          {
            v242 = v147;
            goto LABEL_169;
          }

          v149 = sub_100025204(v148);
          if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
          {
            v175 = [objc_opt_class() description];
            v176 = NSStringFromSelector(aSelector);
            *buf = 138543618;
            v304 = v175;
            v305 = 2114;
            v306 = v176;
            _os_log_error_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: version has wrong type", buf, 0x16u);

            v38 = v246;
          }
        }

        v242 = 0;
LABEL_169:
        v150 = [v40 objectForKeyedSubscript:@"slide"];
        v34 = v243;
        obj = v150;
        if (v150)
        {
          v151 = v150;
          objc_opt_class();
          v152 = objc_opt_isKindOfClass();
          v62 = v250;
          if (v152)
          {
            v244 = strtoull([v151 UTF8String], 0, 0);
          }

          else
          {
            v153 = sub_100025204(v152);
            if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
            {
              v177 = [objc_opt_class() description];
              v178 = NSStringFromSelector(aSelector);
              *buf = 138543618;
              v304 = v177;
              v305 = 2114;
              v306 = v178;
              _os_log_error_impl(&_mh_execute_header, v153, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: slide has wrong type", buf, 0x16u);

              v38 = v246;
            }
          }

          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (![v254 isEqualToString:@"Callstack Section"] || !objc_msgSend(v46, "isEqualToString:", @"Ccst"))
      {
        if ([v254 isEqualToString:@"Task List Section"] && objc_msgSend(v46, "isEqualToString:", @"Crtk"))
        {
          v76 = [v40 objectForKeyedSubscript:@"tasks"];
          if (v76)
          {
            objc_opt_class();
            v77 = objc_opt_isKindOfClass();
            if ((v77 & 1) == 0)
            {
              v78 = sub_100025204(v77);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                v183 = [objc_opt_class() description];
                v184 = NSStringFromSelector(aSelector);
                *buf = 138543618;
                v304 = v183;
                v305 = 2114;
                v306 = v184;
                _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: tasks has wrong type", buf, 0x16u);
              }

              v76 = 0;
            }
          }

          v278 = 0u;
          v279 = 0u;
          v276 = 0u;
          v277 = 0u;
          obj = v76;
          v79 = [obj countByEnumeratingWithState:&v276 objects:v301 count:16];
          if (!v79)
          {
LABEL_115:

            v34 = v243;
            v38 = v246;
            goto LABEL_46;
          }

          v80 = v79;
          v263 = *v277;
          while (2)
          {
            v81 = 0;
LABEL_78:
            if (*v277 != v263)
            {
              objc_enumerationMutation(obj);
            }

            v82 = *(*(&v276 + 1) + 8 * v81);
            v83 = [v82 objectForKeyedSubscript:@"description"];
            if (v83)
            {
              objc_opt_class();
              v84 = objc_opt_isKindOfClass();
              if ((v84 & 1) == 0)
              {
                v85 = sub_100025204(v84);
                if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                {
                  v102 = [objc_opt_class() description];
                  v103 = NSStringFromSelector(aSelector);
                  *buf = 138543618;
                  v304 = v102;
                  v305 = 2114;
                  v306 = v103;
                  _os_log_error_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: task description has wrong type", buf, 0x16u);
                }

                v83 = 0;
              }
            }

            v86 = [v82 objectForKeyedSubscript:@"stack"];
            if (v86)
            {
              v87 = v86;
              objc_opt_class();
              v88 = objc_opt_isKindOfClass();
              if (v88)
              {
                v274 = 0u;
                v275 = 0u;
                v272 = 0u;
                v273 = 0u;
                v89 = v87;
                v90 = [v89 countByEnumeratingWithState:&v272 objects:v300 count:16];
                if (v90)
                {
                  v91 = v90;
                  v92 = v7;
                  v93 = *v273;
                  while (2)
                  {
                    for (i = 0; i != v91; ++i)
                    {
                      if (*v273 != v93)
                      {
                        objc_enumerationMutation(v89);
                      }

                      objc_opt_class();
                      v95 = objc_opt_isKindOfClass();
                      if ((v95 & 1) == 0)
                      {
                        v98 = sub_100025204(v95);
                        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                        {
                          v104 = [objc_opt_class() description];
                          v105 = NSStringFromSelector(aSelector);
                          *buf = 138543618;
                          v304 = v104;
                          v305 = 2114;
                          v306 = v105;
                          _os_log_error_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: task stack entry has wrong type", buf, 0x16u);
                        }

                        v7 = v92;
                        v36 = &airship_ch_interface_close_ptr;
                        v37 = &airship_ch_interface_close_ptr;
                        goto LABEL_102;
                      }
                    }

                    v91 = [v89 countByEnumeratingWithState:&v272 objects:v300 count:16];
                    if (v91)
                    {
                      continue;
                    }

                    break;
                  }

                  v7 = v92;
                  v36 = &airship_ch_interface_close_ptr;
                  v37 = &airship_ch_interface_close_ptr;
                }
              }

              else
              {
                v89 = sub_100025204(v88);
                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  v96 = [objc_opt_class() description];
                  v97 = NSStringFromSelector(aSelector);
                  *buf = 138543618;
                  v304 = v96;
                  v305 = 2114;
                  v306 = v97;
                  _os_log_error_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: task stack has wrong type", buf, 0x16u);
                }

LABEL_102:

                v89 = 0;
              }
            }

            else
            {
              v89 = 0;
            }

            v298[0] = @"description";
            v99 = v83;
            if (!v83)
            {
              null = [v37[201] null];
              v99 = null;
            }

            v299[0] = v99;
            v298[1] = @"stack";
            v100 = v89;
            if (!v89)
            {
              null2 = [v37[201] null];
              v100 = null2;
            }

            v299[1] = v100;
            v101 = [v36[197] dictionaryWithObjects:v299 forKeys:v298 count:2];
            [v7 addObject:v101];

            if (v89)
            {
              if (v83)
              {
                goto LABEL_110;
              }

LABEL_113:
            }

            else
            {

              if (!v83)
              {
                goto LABEL_113;
              }
            }

LABEL_110:

            if (++v81 == v80)
            {
              v106 = [obj countByEnumeratingWithState:&v276 objects:v301 count:16];
              v80 = v106;
              if (!v106)
              {
                goto LABEL_115;
              }

              continue;
            }

            goto LABEL_78;
          }
        }

        if ([v254 isEqualToString:@"Mailbox Section"] && objc_msgSend(v46, "isEqualToString:", @"Cmbx"))
        {
          v107 = [v40 objectForKeyedSubscript:@"registers"];
          if (v107)
          {
            objc_opt_class();
            v108 = objc_opt_isKindOfClass();
            if ((v108 & 1) == 0)
            {
              v109 = sub_100025204(v108);
              if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
              {
                v185 = [objc_opt_class() description];
                v186 = NSStringFromSelector(aSelector);
                *buf = 138543618;
                v304 = v185;
                v305 = 2114;
                v306 = v186;
                _os_log_error_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: mailbox registers has wrong type", buf, 0x16u);

                v36 = &airship_ch_interface_close_ptr;
              }

              v107 = 0;
            }
          }

          v270 = 0u;
          v271 = 0u;
          v268 = 0u;
          v269 = 0u;
          v110 = v107;
          v111 = [v110 countByEnumeratingWithState:&v268 objects:v297 count:16];
          obj = v110;
          v34 = v243;
          if (!v111)
          {
            goto LABEL_186;
          }

          v112 = v111;
          v113 = *v269;
LABEL_125:
          v114 = 0;
          while (1)
          {
            if (*v269 != v113)
            {
              objc_enumerationMutation(v110);
            }

            v115 = *(*(&v268 + 1) + 8 * v114);
            objc_opt_class();
            v116 = objc_opt_isKindOfClass();
            if ((v116 & 1) == 0)
            {
              break;
            }

            v117 = [v110 objectForKeyedSubscript:v115];
            objc_opt_class();
            v118 = objc_opt_isKindOfClass();

            if ((v118 & 1) == 0)
            {
              v155 = sub_100025204(v119);
              if (!os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_185;
              }

              v156 = [objc_opt_class() description];
              v157 = NSStringFromSelector(aSelector);
              *buf = 138543618;
              v304 = v156;
              v305 = 2114;
              v306 = v157;
              v158 = v155;
              v159 = "%{public}@::%{public}@: mailbox register value has wrong type";
              goto LABEL_216;
            }

            v114 = v114 + 1;
            v34 = v243;
            if (v112 == v114)
            {
              v112 = [v110 countByEnumeratingWithState:&v268 objects:v297 count:16];
              if (v112)
              {
                goto LABEL_125;
              }

              obj = v110;
              v36 = &airship_ch_interface_close_ptr;
              v37 = &airship_ch_interface_close_ptr;
LABEL_186:

              v129 = [v40 objectForKeyedSubscript:@"mailbox-error"];
              if (v129)
              {
                objc_opt_class();
                v160 = objc_opt_isKindOfClass();
                if ((v160 & 1) == 0)
                {
                  v161 = sub_100025204(v160);
                  if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
                  {
                    v187 = [objc_opt_class() description];
                    v188 = NSStringFromSelector(aSelector);
                    *buf = 138543618;
                    v304 = v187;
                    v305 = 2114;
                    v306 = v188;
                    _os_log_error_impl(&_mh_execute_header, v161, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: mailbox error has wrong type", buf, 0x16u);

                    v36 = &airship_ch_interface_close_ptr;
                  }

                  v129 = 0;
                }
              }

              v130 = [v40 objectForKeyedSubscript:@"route-number"];
              if (v130)
              {
                objc_opt_class();
                v162 = objc_opt_isKindOfClass();
                if ((v162 & 1) == 0)
                {
                  v163 = sub_100025204(v162);
                  if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
                  {
                    v189 = [objc_opt_class() description];
                    v190 = NSStringFromSelector(aSelector);
                    *buf = 138543618;
                    v304 = v189;
                    v305 = 2114;
                    v306 = v190;
                    _os_log_error_impl(&_mh_execute_header, v163, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: mailbox route number has wrong type", buf, 0x16u);

                    v36 = &airship_ch_interface_close_ptr;
                  }

                  v130 = 0;
                }
              }

              v62 = v250;
              v295[0] = @"registers";
              v164 = obj;
              if (!obj)
              {
                null3 = [v37[201] null];
                v164 = null3;
              }

              v296[0] = v164;
              v295[1] = @"mailbox-error";
              v165 = v129;
              if (!v129)
              {
                null4 = [v37[201] null];
                v165 = null4;
              }

              v296[1] = v165;
              v295[2] = @"route-number";
              v166 = v130;
              if (!v130)
              {
                null5 = [v37[201] null];
                v166 = null5;
              }

              v296[2] = v166;
              v167 = [v36[197] dictionaryWithObjects:v296 forKeys:v295 count:{3, null3}];
              [v239 addObject:v167];

              if (v130)
              {
                if (v129)
                {
LABEL_204:
                  if (!obj)
                  {
                  }

                  goto LABEL_206;
                }
              }

              else
              {

                if (v129)
                {
                  goto LABEL_204;
                }
              }

              goto LABEL_204;
            }
          }

          v155 = sub_100025204(v116);
          if (!os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
          {
LABEL_185:
            v37 = &airship_ch_interface_close_ptr;

            obj = 0;
            v34 = v243;
            v36 = &airship_ch_interface_close_ptr;
            goto LABEL_186;
          }

          v156 = [objc_opt_class() description];
          v157 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v304 = v156;
          v305 = 2114;
          v306 = v157;
          v158 = v155;
          v159 = "%{public}@::%{public}@: mailbox register key has wrong type";
LABEL_216:
          _os_log_error_impl(&_mh_execute_header, v158, OS_LOG_TYPE_ERROR, v159, buf, 0x16u);

          goto LABEL_185;
        }

        if ([v254 isEqualToString:@"Register Frame Section"] && objc_msgSend(v46, "isEqualToString:", @"CrgM"))
        {
          v120 = [v40 objectForKeyedSubscript:@"registers"];
          obj = v120;
          if (v120)
          {
            v121 = v120;
            objc_opt_class();
            v122 = objc_opt_isKindOfClass();
            v62 = v250;
            if (v122)
            {
              v123 = +[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", @"pc=(0x[0-9a-fA-F]+)", 0, 0);
              v124 = [v123 firstMatchInString:v121 options:0 range:{0, objc_msgSend(v121, "length")}];
              [v124 rangeAtIndex:1];
              if (v125)
              {
                v126 = [v124 rangeAtIndex:1];
                v128 = [v121 substringWithRange:{v126, v127}];

                v231 = v128;
                v36 = &airship_ch_interface_close_ptr;
              }

              v129 = +[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", @"lr=(0x[0-9a-fA-F]+)", 0, 0);

              v130 = -[NSObject firstMatchInString:options:range:](v129, "firstMatchInString:options:range:", v121, 0, 0, [v121 length]);

              [v130 rangeAtIndex:1];
              if (v131)
              {
                v132 = [v130 rangeAtIndex:1];
                v134 = [v121 substringWithRange:{v132, v133}];

                v232 = v134;
              }

LABEL_206:

LABEL_207:
              v38 = v246;
LABEL_47:

              goto LABEL_48;
            }

            v129 = sub_100025204(v122);
            if (!os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_207;
            }

            v138 = [objc_opt_class() description];
            v168 = NSStringFromSelector(aSelector);
            *buf = 138543618;
            v304 = v138;
            v305 = 2114;
            v306 = v168;
            v169 = v129;
            v170 = "%{public}@::%{public}@: registers has wrong type";
LABEL_214:
            _os_log_error_impl(&_mh_execute_header, v169, OS_LOG_TYPE_ERROR, v170, buf, 0x16u);

LABEL_147:
            v36 = &airship_ch_interface_close_ptr;
            goto LABEL_148;
          }

          goto LABEL_46;
        }

        if ([v254 isEqualToString:@"String Section"] && objc_msgSend(v46, "isEqualToString:", @"Cstr"))
        {
          v135 = [v40 objectForKeyedSubscript:@"contents"];
          obj = v135;
          if (v135)
          {
            v136 = v135;
            objc_opt_class();
            v137 = objc_opt_isKindOfClass();
            if ((v137 & 1) == 0)
            {
              v129 = sub_100025204(v137);
              v62 = v250;
              if (!os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_207;
              }

              v138 = [objc_opt_class() description];
              v168 = NSStringFromSelector(aSelector);
              *buf = 138543618;
              v304 = v138;
              v305 = 2114;
              v306 = v168;
              v169 = v129;
              v170 = "%{public}@::%{public}@: contents has wrong type";
              goto LABEL_214;
            }

            v129 = [NSRegularExpression regularExpressionWithPattern:@"Boot Args:\\s*(\\S+.*)" options:0 error:0];
            v138 = -[NSObject firstMatchInString:options:range:](v129, "firstMatchInString:options:range:", v136, 0, 0, [v136 length]);
            [v138 rangeAtIndex:1];
            v62 = v250;
            if (v139)
            {
              v140 = [v138 rangeAtIndex:1];
              v142 = [v136 substringWithRange:{v140, v141}];

              v230 = v142;
              goto LABEL_147;
            }

LABEL_148:

            goto LABEL_207;
          }

LABEL_46:
          v62 = v250;
          goto LABEL_47;
        }

        goto LABEL_178;
      }

      v66 = [v40 objectForKeyedSubscript:@"stack"];

      if (v66)
      {
        objc_opt_class();
        v67 = objc_opt_isKindOfClass();
        if ((v67 & 1) == 0)
        {
          v68 = sub_100025204(v67);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v179 = [objc_opt_class() description];
            v180 = NSStringFromSelector(aSelector);
            *buf = 138543618;
            v304 = v179;
            v305 = 2114;
            v306 = v180;
            _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: callstack has wrong type", buf, 0x16u);

            v38 = v246;
          }

          v66 = 0;
        }
      }

      v282 = 0u;
      v283 = 0u;
      v280 = 0u;
      v281 = 0u;
      v69 = v66;
      v70 = [v69 countByEnumeratingWithState:&v280 objects:v302 count:16];
      v71 = v69;
      if (v70)
      {
        v72 = v70;
        v73 = *v281;
        while (2)
        {
          for (j = 0; j != v72; ++j)
          {
            if (*v281 != v73)
            {
              objc_enumerationMutation(v69);
            }

            objc_opt_class();
            v75 = objc_opt_isKindOfClass();
            if ((v75 & 1) == 0)
            {
              v143 = sub_100025204(v75);
              v38 = v246;
              if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
              {
                v171 = [objc_opt_class() description];
                v172 = NSStringFromSelector(aSelector);
                *buf = 138543618;
                v304 = v171;
                v305 = 2114;
                v306 = v172;
                _os_log_error_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: callstack entry has wrong type", buf, 0x16u);

                v38 = v246;
              }

              v71 = 0;
              goto LABEL_154;
            }

            v38 = v246;
          }

          v72 = [v69 countByEnumeratingWithState:&v280 objects:v302 count:16];
          if (v72)
          {
            continue;
          }

          break;
        }

        v71 = v69;
LABEL_154:
        v36 = &airship_ch_interface_close_ptr;
        v37 = &airship_ch_interface_close_ptr;
      }

      v238 = v71;

      v144 = [v40 objectForKeyedSubscript:@"stack-description"];

      if (!v144)
      {
        v237 = 0;
        v34 = v243;
LABEL_178:
        v62 = v250;
        goto LABEL_48;
      }

      objc_opt_class();
      v145 = objc_opt_isKindOfClass();
      v34 = v243;
      v62 = v250;
      if ((v145 & 1) == 0)
      {
        obj = v144;
        v154 = sub_100025204(v145);
        if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
        {
          v181 = [objc_opt_class() description];
          v182 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v304 = v181;
          v305 = 2114;
          v306 = v182;
          _os_log_error_impl(&_mh_execute_header, v154, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: callstack description has wrong type", buf, 0x16u);

          v38 = v246;
        }

        v237 = 0;
        goto LABEL_47;
      }

      v237 = v144;
LABEL_48:

      v39 = v62 + 1;
    }

    while (v39 != v38);
    v191 = [v34 countByEnumeratingWithState:&v284 objects:v307 count:16];
    v38 = v191;
  }

  while (v191);

  if (v244)
  {
    v193 = v231;
    v192 = v232;
    if (v231)
    {
      v194 = [objc_opt_class() unslideAddress:v231 slide:v244];

      v193 = v194;
    }

    if (v232)
    {
      v195 = [objc_opt_class() unslideAddress:v232 slide:v244];

      v192 = v195;
    }

    if (v238)
    {
      v196 = [objc_opt_class() unslideCallstack:v238 slide:v244];

      v238 = v196;
    }

    else
    {
      v238 = 0;
    }

    v199 = v240;
    v231 = v193;
    v232 = v192;
    if (!v7)
    {
      v37 = &airship_ch_interface_close_ptr;
      goto LABEL_257;
    }

    v200 = objc_alloc_init(NSMutableArray);
    v264 = 0u;
    v265 = 0u;
    v266 = 0u;
    v267 = 0u;
    v201 = v7;
    v202 = [v201 countByEnumeratingWithState:&v264 objects:v294 count:16];
    if (v202)
    {
      v203 = v202;
      v204 = *v265;
      do
      {
        for (k = 0; k != v203; k = k + 1)
        {
          if (*v265 != v204)
          {
            objc_enumerationMutation(v201);
          }

          v206 = *(*(&v264 + 1) + 8 * k);
          v207 = [v206 objectForKeyedSubscript:@"stack"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v208 = [objc_opt_class() unslideCallstack:v207 slide:v244];
          }

          else
          {
            v208 = 0;
          }

          v292[0] = @"description";
          v209 = [v206 objectForKeyedSubscript:?];
          v293[0] = v209;
          v292[1] = @"stack";
          v210 = v208;
          if (!v208)
          {
            v7 = +[NSNull null];
            v210 = v7;
          }

          v293[1] = v210;
          v211 = [v36[197] dictionaryWithObjects:v293 forKeys:v292 count:2];
          [v200 addObject:v211];

          if (!v208)
          {
          }

          v36 = &airship_ch_interface_close_ptr;
        }

        v203 = [v201 countByEnumeratingWithState:&v264 objects:v294 count:16];
      }

      while (v203);
    }

    v34 = v200;
    v7 = v34;
    v37 = &airship_ch_interface_close_ptr;
    goto LABEL_255;
  }

LABEL_256:
  v199 = v240;
LABEL_257:
  v290[0] = @"panic";
  null6 = v199;
  if (!v199)
  {
    null6 = [v37[201] null];
  }

  v291[0] = null6;
  v290[1] = @"crashlog-version";
  null7 = v234;
  if (!v234)
  {
    null7 = [v37[201] null];
  }

  v257 = null7;
  v291[1] = null7;
  v290[2] = @"exception";
  v213 = v233;
  if (!v233)
  {
    v213 = +[NSNull null];
  }

  v255 = v213;
  v291[2] = v213;
  v290[3] = @"uuid";
  v214 = v241;
  if (!v241)
  {
    v214 = +[NSNull null];
  }

  v253 = v214;
  v291[3] = v214;
  v290[4] = @"version";
  v215 = v242;
  if (!v242)
  {
    v215 = +[NSNull null];
  }

  v291[4] = v215;
  v290[5] = @"call-stack";
  v288[0] = @"stack";
  v216 = v238;
  if (!v238)
  {
    v216 = +[NSNull null];
  }

  v251 = v216;
  v289[0] = v216;
  v288[1] = @"stack-description";
  v217 = v237;
  if (!v237)
  {
    v217 = +[NSNull null];
  }

  v249 = v217;
  v289[1] = v217;
  v259 = [v36[197] dictionaryWithObjects:v289 forKeys:v288 count:2];
  v291[5] = v259;
  v290[6] = @"tasks";
  v218 = [v7 copy];
  v219 = v218;
  if (!v218)
  {
    v218 = +[NSNull null];
  }

  obja = v7;
  v247 = v218;
  v291[6] = v218;
  v290[7] = @"mailboxes";
  v220 = [v239 copy];
  v221 = v220;
  if (!v220)
  {
    v221 = +[NSNull null];
  }

  v291[7] = v221;
  v290[8] = @"program-counter";
  v222 = v231;
  if (!v231)
  {
    v222 = +[NSNull null];
  }

  v291[8] = v222;
  v290[9] = @"link-register";
  v223 = v232;
  if (!v232)
  {
    v223 = +[NSNull null];
  }

  v291[9] = v223;
  v290[10] = @"boot-args";
  v224 = v230;
  if (!v230)
  {
    v224 = +[NSNull null];
  }

  v291[10] = v224;
  v290[11] = @"application-info";
  v225 = [v236 objectForKeyedSubscript:@"__customSectionData"];
  v226 = v225;
  if (!v225)
  {
    v226 = +[NSNull null];
  }

  v291[11] = v226;
  v262 = [NSDictionary dictionaryWithObjects:v291 forKeys:v290 count:12];
  if (!v225)
  {
  }

  if (!v230)
  {
  }

  if (!v232)
  {
  }

  if (!v231)
  {
  }

  if (!v220)
  {
  }

  v7 = obja;
  if (!v219)
  {
  }

  if (!v237)
  {
  }

  if (!v238)
  {
  }

  if (!v242)
  {
  }

  v15 = v241;
  if (!v241)
  {
  }

  if (!v233)
  {
  }

  if (!v234)
  {
  }

  if (v240)
  {
    v17 = v233;
    v18 = v234;
    v14 = v242;
    v16 = v243;
    v9 = v230;
    v11 = v231;
    v10 = v232;
    goto LABEL_233;
  }

  v240 = 0;
LABEL_232:

  v17 = v233;
  v18 = v234;
  v14 = v242;
  v16 = v243;
  v9 = v230;
  v11 = v231;
  v10 = v232;
  v15 = v241;
LABEL_233:
  v12 = v237;
  v13 = v238;
LABEL_234:

  return v262;
}

+ (id)unslideAddress:(id)address slide:(unint64_t)slide
{
  addressCopy = address;
  v7 = strtoull([address UTF8String], 0, 0);
  if (v7 == -1)
  {
    v9 = sub_100025204(-1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002B23C();
    }

    goto LABEL_8;
  }

  if (v7 - 1879048192 >= 0xFFFFFFFF90000001)
  {
    v8 = v7 >= slide;
    v7 -= slide;
    if (!v8)
    {
      v9 = sub_100025204(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10002B194();
      }

LABEL_8:

      v7 = 0;
    }
  }

  v10 = [NSString stringWithFormat:@"0x%016llx", v7];

  return v10;
}

+ (id)unslideCallstack:(id)callstack slide:(unint64_t)slide
{
  callstackCopy = callstack;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(callstackCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = callstackCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [self unslideAddress:*(*(&v16 + 1) + 8 * i) slide:{slide, v16}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

- (int64_t)getLastUserNotificationTimestamp
{
  if (!self->_lastUserNotificationTimestampKnown)
  {
    v4 = NSTemporaryDirectory();
    v5 = [v4 stringByAppendingPathComponent:@"lastCrashNotificationTimestamp.bin"];

    v6 = +[NSFileManager defaultManager];
    v7 = [v6 fileExistsAtPath:v5];

    if (v7)
    {
      v20 = 0;
      v9 = [NSData dataWithContentsOfFile:v5 options:0 error:&v20];
      v10 = v20;
      v11 = v10;
      if (v9)
      {
        v12 = [v9 length];
        if (v12 == 8)
        {
          self->_lastUserNotificationTimestamp = *[v9 bytes];
          self->_lastUserNotificationTimestampKnown = 1;
          goto LABEL_6;
        }

        v15 = sub_100025204(v12);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = [objc_opt_class() description];
          v18 = NSStringFromSelector(a2);
          v19 = [v9 length];
          *buf = 138544130;
          v22 = v17;
          v23 = 2114;
          v24 = v18;
          v25 = 2048;
          v26 = v19;
          v27 = 2048;
          v28 = 8;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: unexpected file size %lu, expected %zu", buf, 0x2Au);
        }
      }

      else
      {
        v9 = sub_100025204(v10);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_6;
        }

        v15 = [objc_opt_class() description];
        v16 = NSStringFromSelector(a2);
        *buf = 138543874;
        v22 = v15;
        v23 = 2114;
        v24 = v16;
        v25 = 2112;
        v26 = v11;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to read file: %@", buf, 0x20u);
      }

      goto LABEL_6;
    }

    v11 = sub_100025204(v8);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = [objc_opt_class() description];
    v14 = NSStringFromSelector(a2);
    *buf = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no prior user notifications since boot", buf, 0x16u);

LABEL_6:
LABEL_7:
  }

  return self->_lastUserNotificationTimestamp;
}

@end