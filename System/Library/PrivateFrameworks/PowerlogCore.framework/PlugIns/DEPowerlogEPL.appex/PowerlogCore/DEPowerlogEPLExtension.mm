@interface DEPowerlogEPLExtension
- (id)attachmentsForParameters:(id)parameters;
- (id)generateBatteryUIPlistFile;
- (id)getArchives;
- (id)getBatteryUIPlists;
- (id)getPowerlog;
- (id)getQuarantinedPowerlogs;
- (id)getTimestampString:(id)string;
- (id)getUpgradeLogs;
@end

@implementation DEPowerlogEPLExtension

- (id)getTimestampString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(NSDateFormatter);
  v5 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setDateFormat:@"yyyy-MM-dd-HH-mm"];
  v6 = +[NSTimeZone systemTimeZone];
  [v4 setTimeZone:v6];

  v7 = [v5 objectForKey:NSLocaleCalendar];
  [v4 setCalendar:v7];

  [v4 setLocale:v5];
  v8 = [v4 stringFromDate:stringCopy];

  return v8;
}

- (id)getBatteryUIPlists
{
  v14 = @"folder";
  v3 = NSTemporaryDirectory();
  v15 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  v5 = PLQueryRegistered();
  v6 = v5;
  if (v5 && ([v5 objectForKeyedSubscript:@"folder"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [NSString stringWithFormat:@"^(%@)", @"BatteryUI", v14];
    v9 = [NSRegularExpression regularExpressionWithPattern:v8 options:1 error:0];
    v10 = [v6 objectForKeyedSubscript:@"folder"];
    v11 = [NSURL fileURLWithPath:v10];
    v12 = [(DEPowerlogEPLExtension *)self filesInDir:v11 matchingPattern:v9 excludingPattern:0];
  }

  else
  {
    v8 = PLLogDE(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100002D70();
    }

    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (id)getUpgradeLogs
{
  v14 = @"folder";
  v3 = NSTemporaryDirectory();
  v15 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  v5 = PLQueryRegistered();
  v6 = v5;
  if (v5 && ([v5 objectForKeyedSubscript:@"folder"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [NSString stringWithFormat:@"^(%@_)", @"UpgradeLogs", v14];
    v9 = [NSRegularExpression regularExpressionWithPattern:v8 options:1 error:0];
    v10 = [v6 objectForKeyedSubscript:@"folder"];
    v11 = [NSURL fileURLWithPath:v10];
    v12 = [(DEPowerlogEPLExtension *)self filesInDir:v11 matchingPattern:v9 excludingPattern:0];
  }

  else
  {
    v8 = PLLogDE(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100002DE0();
    }

    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (id)generateBatteryUIPlistFile
{
  PLTalkToPowerlogHelper();
  v3 = PLQueryRegistered();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
    [v5 doubleValue];
    v6 = [NSDate dateWithTimeIntervalSince1970:?];

    if (v6)
    {
      v8 = [(DEPowerlogEPLExtension *)self getTimestampString:v6];
      v9 = [NSString stringWithFormat:@"/tmp/BatteryUI-EPL-%@.plist", v8];
      v10 = [v4 writeToFile:v9 atomically:1];
      v11 = v10;
      v12 = PLLogDE(v10);
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_100002EC0();
        }

        PLTalkToPowerlogHelper();
        v14 = v9;
      }

      else
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100002E50();
        }

        PLTalkToPowerlogHelper();
        v14 = 0;
      }
    }

    else
    {
      v16 = PLLogDE(v7);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100002F28();
      }

      PLTalkToPowerlogHelper();
      v14 = 0;
    }
  }

  else
  {
    v15 = PLLogDE(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100002F68();
    }

    PLTalkToPowerlogHelper();
    v14 = 0;
  }

  return v14;
}

- (id)getArchives
{
  v15 = @"folder";
  v3 = NSTemporaryDirectory();
  v16 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v5 = PLQueryRegistered();
  v6 = v5;
  if (v5 && ([v5 objectForKeyedSubscript:@"folder"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [NSString stringWithFormat:@"%@%@", @".PLSQL", @".gz"];
    v9 = [NSString stringWithFormat:@"(%@)$", v8];
    v10 = [NSRegularExpression regularExpressionWithPattern:v9 options:1 error:0];
    v11 = [v6 objectForKeyedSubscript:@"folder"];
    v12 = [NSURL fileURLWithPath:v11];
    v13 = [(DEPowerlogEPLExtension *)self filesInDir:v12 matchingPattern:v10 excludingPattern:0];
  }

  else
  {
    v8 = PLLogDE(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100002FA8();
    }

    v13 = &__NSArray0__struct;
  }

  return v13;
}

- (id)getPowerlog
{
  v6 = @"folder";
  v2 = NSTemporaryDirectory();
  v7 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  v4 = PLQueryRegistered();

  return v4;
}

- (id)getQuarantinedPowerlogs
{
  v15 = @"folder";
  v3 = NSTemporaryDirectory();
  v16 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v5 = PLQueryRegistered();
  v6 = v5;
  if (v5 && ([v5 objectForKeyedSubscript:@"folder"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [NSString stringWithFormat:@"%@", @".PLSQL", v15];
    v9 = [NSString stringWithFormat:@"(%@)$", v8];
    v10 = [NSRegularExpression regularExpressionWithPattern:v9 options:1 error:0];
    v11 = [v6 objectForKeyedSubscript:@"folder"];
    v12 = [NSURL fileURLWithPath:v11];
    v13 = [(DEPowerlogEPLExtension *)self filesInDir:v12 matchingPattern:v10 excludingPattern:0];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

- (id)attachmentsForParameters:(id)parameters
{
  v4 = +[NSMutableArray array];
  getPowerlog = [(DEPowerlogEPLExtension *)self getPowerlog];
  v6 = PLLogDE(getPowerlog);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100003018();
  }

  if (getPowerlog)
  {
    v8 = [getPowerlog objectForKeyedSubscript:@"path"];

    if (v8)
    {
      v9 = [getPowerlog objectForKeyedSubscript:@"path"];
      v10 = [DEAttachmentItem attachmentWithPath:v9];

      [v10 setDeleteOnAttach:&__kCFBooleanTrue];
      [v10 setShouldCompress:&__kCFBooleanTrue];
      [v4 addObject:v10];
    }
  }

  v11 = PLLogDE(v7);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100003080();
  }

  v62 = getPowerlog;

  getQuarantinedPowerlogs = [(DEPowerlogEPLExtension *)self getQuarantinedPowerlogs];
  v13 = PLLogDE(getQuarantinedPowerlogs);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000030E8();
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v14 = getQuarantinedPowerlogs;
  v15 = [v14 countByEnumeratingWithState:&v75 objects:v86 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v76;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v76 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v75 + 1) + 8 * i);
        [v19 setDeleteOnAttach:&__kCFBooleanTrue];
        [v19 setShouldCompress:&__kCFBooleanTrue];
        [v4 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v75 objects:v86 count:16];
    }

    while (v16);
  }

  v21 = PLLogDE(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_100003150();
  }

  getArchives = [(DEPowerlogEPLExtension *)self getArchives];
  v23 = PLLogDE(getArchives);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_1000031B8();
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v24 = getArchives;
  v25 = [v24 countByEnumeratingWithState:&v71 objects:v85 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v72;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v72 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v71 + 1) + 8 * j);
        [v29 setDeleteOnAttach:&__kCFBooleanTrue];
        [v29 setShouldCompress:&__kCFBooleanTrue];
        [v4 addObject:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v71 objects:v85 count:16];
    }

    while (v26);
  }

  v31 = PLLogDE(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    sub_100003220();
  }

  generateBatteryUIPlistFile = [(DEPowerlogEPLExtension *)self generateBatteryUIPlistFile];
  v33 = PLLogDE(generateBatteryUIPlistFile);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    sub_100003288();
  }

  if (generateBatteryUIPlistFile)
  {
    v35 = [DEAttachmentItem attachmentWithPath:generateBatteryUIPlistFile];
    [v35 setDeleteOnAttach:&__kCFBooleanTrue];
    [v35 setShouldCompress:&__kCFBooleanTrue];
    [v4 addObject:v35];
  }

  v36 = PLLogDE(v34);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    sub_1000032F0();
  }

  v61 = generateBatteryUIPlistFile;

  getBatteryUIPlists = [(DEPowerlogEPLExtension *)self getBatteryUIPlists];
  v38 = PLLogDE(getBatteryUIPlists);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    sub_100003358();
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v39 = getBatteryUIPlists;
  v40 = [v39 countByEnumeratingWithState:&v67 objects:v84 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v68;
    do
    {
      for (k = 0; k != v41; k = k + 1)
      {
        if (*v68 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v67 + 1) + 8 * k);
        [v44 setDeleteOnAttach:{&__kCFBooleanTrue, v61, v62}];
        [v44 setShouldCompress:&__kCFBooleanTrue];
        [v4 addObject:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v67 objects:v84 count:16];
    }

    while (v41);
  }

  v46 = PLLogDE(v45);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    sub_1000033C0();
  }

  getUpgradeLogs = [(DEPowerlogEPLExtension *)self getUpgradeLogs];
  v48 = PLLogDE(getUpgradeLogs);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    sub_100003428();
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v49 = getUpgradeLogs;
  v50 = [v49 countByEnumeratingWithState:&v63 objects:v83 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v64;
    do
    {
      for (m = 0; m != v51; m = m + 1)
      {
        if (*v64 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v63 + 1) + 8 * m);
        [v54 setDeleteOnAttach:{&__kCFBooleanTrue, v61}];
        [v54 setShouldCompress:&__kCFBooleanTrue];
        [v4 addObject:v54];
      }

      v51 = [v49 countByEnumeratingWithState:&v63 objects:v83 count:16];
    }

    while (v51);
  }

  v56 = PLLogDE(v55);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    sub_100003490();
  }

  v58 = PLLogDE(v57);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    v59 = [v4 count];
    *buf = 134218242;
    v80 = v59;
    v81 = 2112;
    v82 = v4;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "Attachment contents are %lu and as follows - %@", buf, 0x16u);
  }

  return v4;
}

@end