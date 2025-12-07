@interface HTHangreporterKickstartTelemetry
+ (BOOL)collectTailspinSpoolData:(id *)data error:(id *)error;
+ (BOOL)emitTailspinProcessingEvent:(id)event error:(id *)error;
+ (unsigned)getHangreporterTailspinsProcessed:(id *)processed;
+ (unsigned)getSuccessfulTailspinSaves:(id *)saves;
+ (void)_resetHangreporterTailspinsProcessed;
+ (void)_resetKeysForTailspinProcessingTelemetry;
+ (void)_resetSuccessfulTailspinSaves;
+ (void)incrementHangreporterTailspinsProcessed;
+ (void)incrementSuccessfulTailspinSaves;
@end

@implementation HTHangreporterKickstartTelemetry

+ (unsigned)getSuccessfulTailspinSaves:(id *)saves
{
  v4 = sub_100004D34(self);
  v5 = qword_100067820;
  qword_100067820 = v4;

  v6 = [qword_100067820 objectForKey:@"successfulTailspinSaves"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntValue = [v6 unsignedIntValue];
    }

    else
    {
      +[HTHangreporterKickstartTelemetry _resetKeysForTailspinProcessingTelemetry];
      v8 = [NSString stringWithFormat:@"Invalid class type %@ for key (%@): value (%@) pair. Values in %@ domain were modified", objc_opt_class(), @"successfulTailspinSaves", v6, @"com.apple.hangtracer"];
      v9 = sub_100003824(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_10002F724();
      }

      if (saves)
      {
        v12 = NSLocalizedDescriptionKey;
        v13 = v8;
        v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        *saves = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:0 userInfo:v10];
      }

      unsignedIntValue = -1;
    }
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

+ (void)incrementSuccessfulTailspinSaves
{
  v2 = sub_100004D34(self);
  v3 = qword_100067820;
  qword_100067820 = v2;

  v4 = [qword_100067820 objectForKey:@"successfulTailspinSaves"];
  if (!v4)
  {
    v8 = qword_100067820;
    v7 = 1;
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    unsignedIntValue = [v4 unsignedIntValue];
    if (unsignedIntValue != -2)
    {
      v7 = unsignedIntValue + 1;
      v8 = qword_100067820;
LABEL_6:
      [v8 setInteger:v7 forKey:@"successfulTailspinSaves"];
    }
  }

  else
  {
    v9 = sub_100003824(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10002F798(v4);
    }

    +[HTHangreporterKickstartTelemetry _resetKeysForTailspinProcessingTelemetry];
  }
}

+ (void)_resetSuccessfulTailspinSaves
{
  v2 = sub_100004D34(self);
  v3 = qword_100067820;
  qword_100067820 = v2;

  v4 = qword_100067820;

  [v4 setInteger:0 forKey:@"successfulTailspinSaves"];
}

+ (unsigned)getHangreporterTailspinsProcessed:(id *)processed
{
  v4 = sub_100004D34(self);
  v5 = qword_100067820;
  qword_100067820 = v4;

  v6 = [qword_100067820 objectForKey:@"tailspinsProcessed"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntValue = [v6 unsignedIntValue];
    }

    else
    {
      +[HTHangreporterKickstartTelemetry _resetKeysForTailspinProcessingTelemetry];
      v8 = [NSString stringWithFormat:@"Invalid class type %@ for key (%@): value (%@) pair. Values in %@ domain were modified", objc_opt_class(), @"tailspinsProcessed", v6, @"com.apple.hangtracer"];
      v9 = sub_100003824(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_10002F834();
      }

      if (processed)
      {
        v12 = NSLocalizedDescriptionKey;
        v13 = v8;
        v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        *processed = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:0 userInfo:v10];
      }

      unsignedIntValue = -1;
    }
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

+ (void)incrementHangreporterTailspinsProcessed
{
  v2 = sub_100004D34(self);
  v3 = qword_100067820;
  qword_100067820 = v2;

  v4 = [qword_100067820 objectForKey:@"tailspinsProcessed"];
  if (!v4)
  {
    v8 = qword_100067820;
    v7 = 1;
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    unsignedIntValue = [v4 unsignedIntValue];
    if (unsignedIntValue != -2)
    {
      v7 = unsignedIntValue + 1;
      v8 = qword_100067820;
LABEL_6:
      [v8 setInteger:v7 forKey:@"tailspinsProcessed"];
    }
  }

  else
  {
    v9 = sub_100003824(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10002F798(v4);
    }

    +[HTHangreporterKickstartTelemetry _resetKeysForTailspinProcessingTelemetry];
  }
}

+ (void)_resetHangreporterTailspinsProcessed
{
  v2 = sub_100004D34(self);
  v3 = qword_100067820;
  qword_100067820 = v2;

  v4 = qword_100067820;

  [v4 setInteger:0 forKey:@"tailspinsProcessed"];
}

+ (void)_resetKeysForTailspinProcessingTelemetry
{
  +[HTHangreporterKickstartTelemetry _resetHangreporterTailspinsProcessed];

  +[HTHangreporterKickstartTelemetry _resetSuccessfulTailspinSaves];
}

+ (BOOL)emitTailspinProcessingEvent:(id)event error:(id *)error
{
  eventCopy = event;
  v6 = +[HTPrefs sharedPrefs];
  shouldEmitTelemetry = [v6 shouldEmitTelemetry];

  if (shouldEmitTelemetry)
  {
    v8 = [eventCopy objectForKey:@"successfulTailspinSaves"];
    if (v8)
    {
      v9 = v8;
      [v8 unsignedIntValue];
      v10 = [eventCopy objectForKey:@"tailspinsProcessed"];

      if (v10)
      {
        [v10 unsignedIntValue];
        v11 = [eventCopy objectForKey:@"tailspinsUnprocessed"];

        if (v11)
        {
          [v11 unsignedIntValue];
          v12 = [eventCopy objectForKey:@"tailspinsInSpool"];

          if (v12)
          {
            [v12 unsignedIntValue];
            v13 = [eventCopy objectForKey:@"tailspinsOverReportingThresholds"];

            if (v13)
            {
              [v13 unsignedIntValue];
              v14 = [eventCopy objectForKey:@"oldestTailspinCreationSeconds"];

              if (v14)
              {
                [v14 doubleValue];
                AnalyticsSendEventLazy();
                +[HTHangreporterKickstartTelemetry _resetKeysForTailspinProcessingTelemetry];

                v15 = 0;
                eventCopy = 0;
                v17 = 1;
                goto LABEL_26;
              }

              eventCopy = [NSString stringWithFormat:@"Missing value for key (%@) from tailspinDataDict: %@", @"oldestTailspinCreationSeconds", eventCopy];
              v36 = NSLocalizedDescriptionKey;
              v37 = eventCopy;
              v32 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
              v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:1 userInfo:v32];

              v21 = sub_100003824(v33);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_10002F8A8(v15);
              }
            }

            else
            {
              eventCopy = [NSString stringWithFormat:@"Missing value for key (%@) from tailspinDataDict: %@", @"tailspinsOverReportingThresholds", eventCopy];
              v38 = NSLocalizedDescriptionKey;
              v39 = eventCopy;
              v30 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
              v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:1 userInfo:v30];

              v21 = sub_100003824(v31);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_10002F8A8(v15);
              }
            }
          }

          else
          {
            eventCopy = [NSString stringWithFormat:@"Missing value for key (%@) from tailspinDataDict: %@", @"tailspinsInSpool", eventCopy];
            v40 = NSLocalizedDescriptionKey;
            v41 = eventCopy;
            v28 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:1 userInfo:v28];

            v21 = sub_100003824(v29);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_10002F8A8(v15);
            }
          }
        }

        else
        {
          eventCopy = [NSString stringWithFormat:@"Missing value for key (%@) from tailspinDataDict: %@", @"tailspinsUnprocessed", eventCopy];
          v42 = NSLocalizedDescriptionKey;
          v43 = eventCopy;
          v26 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:1 userInfo:v26];

          v21 = sub_100003824(v27);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_10002F8A8(v15);
          }
        }
      }

      else
      {
        eventCopy = [NSString stringWithFormat:@"Missing value for key (%@) from tailspinDataDict: %@", @"tailspinsProcessed", eventCopy];
        v44 = NSLocalizedDescriptionKey;
        v45 = eventCopy;
        v24 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:1 userInfo:v24];

        v21 = sub_100003824(v25);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10002F8A8(v15);
        }
      }
    }

    else
    {
      eventCopy = [NSString stringWithFormat:@"Missing value for key (%@) from tailspinDataDict: %@", @"successfulTailspinSaves", eventCopy];
      v46 = NSLocalizedDescriptionKey;
      v47 = eventCopy;
      v22 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:1 userInfo:v22];

      v21 = sub_100003824(v23);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10002F8A8(v15);
      }
    }
  }

  else
  {
    v18 = +[HTPrefs sharedPrefs];
    eventCopy = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"HTPrefs shouldEmitTelemetry=%d, telemetry emission disabled", [v18 shouldEmitTelemetry]);

    v48 = NSLocalizedDescriptionKey;
    v49 = eventCopy;
    v19 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:2 userInfo:v19];

    v21 = sub_100003824(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10002F8A8(v15);
    }
  }

  if (error)
  {
    v34 = v15;
    v17 = 0;
    *error = v15;
  }

  else
  {
    v17 = 0;
  }

LABEL_26:

  return v17;
}

+ (BOOL)collectTailspinSpoolData:(id *)data error:(id *)error
{
  v90 = 0;
  v6 = sub_100019568("hangreporter", &v90);
  v7 = v90;
  v8 = v7;
  if (v6 >= 1)
  {
    v9 = sub_100003824(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Hangreporter is alive, not attempting to emit telemetry.", buf, 2u);
    }

LABEL_4:

    goto LABEL_5;
  }

  v12 = sub_100003824(v7);
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10002F938();
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v92 = "+[HTHangreporterKickstartTelemetry collectTailspinSpoolData:error:]";
    v93 = 1024;
    LODWORD(v94) = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: No error flag set in pidForProcessName with return value=%d. Hangreporter is not alive.", buf, 0x12u);
  }

  v89 = 0;
  v15 = [HTHangreporterKickstartTelemetry getSuccessfulTailspinSaves:&v89];
  v16 = v89;
  v17 = v16;
  if (v15 == -1)
  {
    v20 = sub_100003824(v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10002FB48();
    }

    if (error)
    {
      v21 = v17;
      v10 = 0;
      *error = v17;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_74;
  }

  v88 = v16;
  v18 = [HTHangreporterKickstartTelemetry getHangreporterTailspinsProcessed:&v88];
  v8 = v88;

  if (v18 != -1)
  {
    if (v15 < v18)
    {
      v9 = sub_100003824(v19);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_10002FA50(v18, v15, v9);
      }

      goto LABEL_4;
    }

    +[NSFileManager defaultManager];
    v79 = v87 = v8;
    v22 = [v79 contentsOfDirectoryAtPath:@"/var/root/Library/Caches/hangtracerd/spool" error:&v87];
    v17 = v87;

    v10 = v22 != 0;
    if (v22)
    {
      v75 = v15 - v18;
      v76 = v18;
      v77 = v15;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      obj = v22;
      v24 = [obj countByEnumeratingWithState:&v83 objects:v97 count:16];
      if (!v24)
      {
        v80 = 0;
        v28 = 0.0;
        goto LABEL_72;
      }

      v26 = v24;
      v80 = 0;
      v27 = *v84;
      v28 = 0.0;
      *&v25 = 138412290;
      v74 = v25;
      v29 = v79;
      while (1)
      {
        v30 = 0;
        do
        {
          if (*v84 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v83 + 1) + 8 * v30);
          pathExtension = [v31 pathExtension];
          v33 = [pathExtension isEqualToString:@"tailspin"];

          if ((v33 & 1) == 0)
          {
            v36 = sub_100003824(v34);
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              goto LABEL_45;
            }

            *buf = 138412546;
            v92 = v31;
            v93 = 2080;
            v94 = "/var/root/Library/Caches/hangtracerd/spool";
            v43 = v36;
            v44 = "Skipping non-tailspin file %@ in directory %s";
LABEL_41:
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, v44, buf, 0x16u);
            goto LABEL_45;
          }

          v35 = [v31 rangeOfString:@"processing.tailspin"];
          if (v35 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v36 = sub_100003824(v35);
            if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              goto LABEL_45;
            }

            *buf = 138412546;
            v92 = v31;
            v93 = 2080;
            v94 = "/var/root/Library/Caches/hangtracerd/spool";
            v43 = v36;
            v44 = "Skipping abandoned tailspin file %@ in directory %s";
            goto LABEL_41;
          }

          v36 = [@"/var/root/Library/Caches/hangtracerd/spool" stringByAppendingPathComponent:v31];
          v82 = v17;
          v37 = [v29 attributesOfItemAtPath:v36 error:&v82];
          v38 = v82;

          if (v37)
          {
            v40 = [v37 objectForKeyedSubscript:NSFileType];

            if (v40 != NSFileTypeRegular)
            {
              v42 = sub_100003824(v41);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v92 = "+[HTHangreporterKickstartTelemetry collectTailspinSpoolData:error:]";
                v93 = 2112;
                v94 = v36;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s: Skipping non-regular file at path:%@", buf, 0x16u);
              }

              goto LABEL_43;
            }

            v45 = [v37 objectForKeyedSubscript:NSFileCreationDate];

            if (v45)
            {
              v47 = sub_100003824(v46);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v92 = "+[HTHangreporterKickstartTelemetry collectTailspinSpoolData:error:]";
                v93 = 2112;
                v94 = v36;
                v95 = 2080;
                v96 = "/var/root/Library/Caches/hangtracerd/spool";
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%s: Found tailspin file: %@ in spool directory: %s", buf, 0x20u);
              }

              v48 = +[NSDate date];
              v49 = [v37 objectForKeyedSubscript:NSFileCreationDate];
              [v48 timeIntervalSinceDate:v49];
              v51 = v50;

              if (v51 > v28)
              {
                v53 = sub_100003824(v52);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v92 = v36;
                  v93 = 2048;
                  v94 = *&v51;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Updating oldest tailspin to %@, creation time was %f seconds before now", buf, 0x16u);
                }

                v28 = v51;
              }

              ++HIDWORD(v80);
              v54 = +[HTPrefs sharedPrefs];
              [v54 tailspinReportingThresholdSec];
              v56 = v55;

              if (v51 < v56)
              {
                v29 = v79;
                goto LABEL_44;
              }

              v61 = v80 + 1;
              v42 = sub_100003824(v57);
              LODWORD(v80) = v80 + 1;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v78 = +[HTPrefs sharedPrefs];
                [v78 tailspinReportingThresholdSec];
                *buf = 138412802;
                v92 = v36;
                v93 = 2048;
                v94 = v62;
                v95 = 1024;
                LODWORD(v96) = v61;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Found tailspin: %@ over the threshold limit of %f seconds. Incrementing number of tailspins in spool over the reporting limit to %d", buf, 0x1Cu);
              }

              v29 = v79;
            }

            else
            {
              v42 = sub_100003824(v46);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = v74;
                v92 = v36;
                v58 = v42;
                v59 = "Failed to fetch creation date for file %@";
                v60 = 12;
LABEL_62:
                _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, v59, buf, v60);
              }
            }
          }

          else
          {
            v42 = sub_100003824(v39);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v92 = "+[HTHangreporterKickstartTelemetry collectTailspinSpoolData:error:]";
              v93 = 2112;
              v94 = v36;
              v95 = 2112;
              v96 = v38;
              v58 = v42;
              v59 = "%s: Unable to get file attributes of file at path:%@ with error: %@";
              v60 = 32;
              goto LABEL_62;
            }
          }

LABEL_43:

LABEL_44:
          v17 = v38;
LABEL_45:

          v30 = v30 + 1;
        }

        while (v26 != v30);
        v63 = [obj countByEnumeratingWithState:&v83 objects:v97 count:16];
        v26 = v63;
        if (!v63)
        {
LABEL_72:

          v66 = +[NSMutableDictionary dictionary];
          v67 = [NSNumber numberWithUnsignedInt:v77];
          [v66 setObject:v67 forKey:@"successfulTailspinSaves"];

          v68 = [NSNumber numberWithUnsignedInt:v76];
          [v66 setObject:v68 forKey:@"tailspinsProcessed"];

          v69 = [NSNumber numberWithUnsignedInt:v75];
          [v66 setObject:v69 forKey:@"tailspinsUnprocessed"];

          v70 = [NSNumber numberWithUnsignedInt:HIDWORD(v80)];
          [v66 setObject:v70 forKey:@"tailspinsInSpool"];

          v71 = [NSNumber numberWithDouble:v28];
          [v66 setObject:v71 forKey:@"oldestTailspinCreationSeconds"];

          v72 = [NSNumber numberWithUnsignedInt:v80];
          [v66 setObject:v72 forKey:@"tailspinsOverReportingThresholds"];

          v73 = v66;
          *data = v66;

          v10 = v22 != 0;
          goto LABEL_73;
        }
      }
    }

    if (v17)
    {
      v64 = sub_100003824(v23);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_10002F9B4();
      }

      if (error)
      {
        v65 = v17;
        *error = v17;
      }
    }

LABEL_73:

LABEL_74:
    v8 = v17;
    goto LABEL_6;
  }

  v13 = sub_100003824(v19);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10002FAD8();
  }

LABEL_10:

  if (error)
  {
    v14 = v8;
    v10 = 0;
    *error = v8;
    goto LABEL_6;
  }

LABEL_5:
  v10 = 0;
LABEL_6:

  return v10;
}

@end