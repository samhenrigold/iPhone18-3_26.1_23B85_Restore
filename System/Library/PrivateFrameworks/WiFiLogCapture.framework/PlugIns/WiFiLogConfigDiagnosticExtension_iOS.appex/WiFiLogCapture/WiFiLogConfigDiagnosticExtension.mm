@interface WiFiLogConfigDiagnosticExtension
- (BOOL)applyOrRemoveManagedDomain:(BOOL)domain fileURL:(id)l;
- (BOOL)postValuesChangedInDomains:(id)domains;
- (id)__attachmentsForTimberlorryWithParameters:(id)parameters;
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
- (unint64_t)attachmentSizes:(id)sizes;
- (void)clearTimers;
- (void)modifyManagedDefaults:(BOOL)defaults;
- (void)removeAndApplyNoLoggingToCoreCapture;
- (void)setupWithParameters:(id)parameters;
- (void)teardownWithParameters:(id)parameters;
@end

@implementation WiFiLogConfigDiagnosticExtension

- (id)attachmentList
{
  v2 = MegaWiFiDELog(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[WiFiLogConfigDiagnosticExtension attachmentList]";
    v6 = 1024;
    v7 = 84;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: attachmentList called", &v4, 0x12u);
  }

  return &__NSArray0__struct;
}

- (id)__attachmentsForTimberlorryWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = +[NSMutableArray array];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v5 = qword_10000C360;
  v25 = qword_10000C360;
  if (!qword_10000C360)
  {
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100003050;
    v20 = &unk_100008260;
    v21 = &v22;
    sub_100003050(&v17);
    v5 = v23[3];
  }

  v6 = v5;
  _Block_object_dispose(&v22, 8);
  sharedClient = [v5 sharedClient];
  if (sharedClient)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v8 = qword_10000C370;
    v25 = qword_10000C370;
    if (!qword_10000C370)
    {
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100003218;
      v20 = &unk_100008260;
      v21 = &v22;
      sub_100003218(&v17);
      v8 = v23[3];
    }

    v9 = v8;
    _Block_object_dispose(&v22, 8);
    v10 = [v8 requestWithItemID:59 configuration:0];
    v26 = v10;
    v11 = [NSArray arrayWithObjects:&v26 count:1];
    v16 = 0;
    v12 = [sharedClient collectLogs:v11 configuration:&off_1000085B8 update:0 receipts:0 error:&v16];
    v13 = v16;

    if (v12)
    {
      v14 = [DEAttachmentItem attachmentWithPathURL:v12];
      [v4 addObject:v14];
    }
  }

  return v4;
}

- (unint64_t)attachmentSizes:(id)sizes
{
  sizesCopy = sizes;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [sizesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(sizesCopy);
        }

        filesize = [*(*(&v11 + 1) + 8 * i) filesize];
        v6 += [filesize unsignedIntValue];
      }

      v5 = [sizesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  self->_attachmentsForParametersStartTime = CFAbsoluteTimeGetCurrent();
  v5 = +[NSMutableArray array];
  v6 = MegaWiFiDELog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446722;
    v16 = "[WiFiLogConfigDiagnosticExtension attachmentsForParameters:]";
    v17 = 1024;
    v18 = 123;
    v19 = 2112;
    v20 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: attachmentsForParameters called with parameters: %@", &v15, 0x1Cu);
  }

  if (parametersCopy)
  {
    v7 = [parametersCopy count];
    if (v7)
    {
      v8 = [parametersCopy objectForKey:@"hostAppString"];

      if (v8)
      {
        v9 = [parametersCopy objectForKey:@"hostAppString"];
        v10 = [v9 isEqualToString:@"Timberlorry"];
        if (v10)
        {
          v11 = MegaWiFiDELog(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 136446466;
            v16 = "[WiFiLogConfigDiagnosticExtension attachmentsForParameters:]";
            v17 = 1024;
            v18 = 132;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: calling __attachmentsForTimberlorryWithParameters", &v15, 0x12u);
          }

          v12 = [(WiFiLogConfigDiagnosticExtension *)self __attachmentsForTimberlorryWithParameters:parametersCopy];
          [v5 addObjectsFromArray:v12];
        }
      }
    }
  }

  v13 = MegaWiFiDELog(v7);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446722;
    v16 = "[WiFiLogConfigDiagnosticExtension attachmentsForParameters:]";
    v17 = 1024;
    v18 = 141;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: attachmentsForParameters done with attachments %@", &v15, 0x1Cu);
  }

  self->_attachmentsForParametersEndTime = CFAbsoluteTimeGetCurrent();
  self->_attachmentSize = [(WiFiLogConfigDiagnosticExtension *)self attachmentSizes:v5];
  self->_attachmentCount = [v5 count];

  return v5;
}

- (void)removeAndApplyNoLoggingToCoreCapture
{
  v3 = +[NSBundle mainBundle];
  bundleURL = [v3 bundleURL];

  v5 = [bundleURL URLByAppendingPathComponent:@"WiFiLogConfigDiagnosticExtension/NoLogging_ManagedDefaultFiles/"];
  v6 = MegaWiFiDELog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = getuid();
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    bundleURL2 = [v8 bundleURL];
    *buf = 136447234;
    v51 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
    v52 = 1024;
    v53 = 164;
    v54 = 1024;
    v55 = v7;
    v56 = 2112;
    v57 = bundleURL;
    v58 = 2112;
    v59 = bundleURL2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: uid num %d mainBundleURL %@ bundleForClass.bundleURL %@", buf, 0x2Cu);
  }

  v10 = +[NSFileManager defaultManager];
  v48 = 0;
  v11 = [v10 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:0 error:&v48];
  v12 = v48;
  v13 = v12;
  if (v12)
  {
    v41 = MegaWiFiDELog(v12);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1000032E4();
    }
  }

  else
  {
    v38 = v10;
    v39 = v5;
    v40 = bundleURL;
    v14 = +[NSMutableArray array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = v11;
    obj = v11;
    v15 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    v41 = v14;
    if (v15)
    {
      v16 = v15;
      v17 = @"com.apple.corecapture.configure";
      v18 = *v45;
      do
      {
        v19 = 0;
        v42 = v16;
        do
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v44 + 1) + 8 * v19);
          lastPathComponent = [v20 lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
          if ([stringByDeletingPathExtension containsString:v17])
          {
            v23 = v17;
            v24 = MegaWiFiDELog([v14 addObject:stringByDeletingPathExtension]);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v51 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
              v52 = 1024;
              v53 = 193;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Removing existing com.apple.corecapture.configure config", buf, 0x12u);
            }

            v25 = [(WiFiLogConfigDiagnosticExtension *)self applyOrRemoveManagedDomain:0 fileURL:v20];
            v26 = v25;
            v27 = MegaWiFiDELog(v25);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              v51 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
              v52 = 1024;
              v53 = 197;
              v54 = 1024;
              v55 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Posting values changed for removing com.apple.corecapture.configure success: %d", buf, 0x18u);
            }

            v14 = v41;
            [(WiFiLogConfigDiagnosticExtension *)self postValuesChangedInDomains:v41];
            v28 = sleep(0xCu);
            v29 = MegaWiFiDELog(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v51 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
              v52 = 1024;
              v53 = 202;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Posting values done for removing com.apple.corecapture.configure sleep(12);", buf, 0x12u);
            }

            v31 = MegaWiFiDELog(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v51 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
              v52 = 1024;
              v53 = 207;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Applying NoLogging com.apple.corecapture.configure config", buf, 0x12u);
            }

            v32 = [(WiFiLogConfigDiagnosticExtension *)self applyOrRemoveManagedDomain:1 fileURL:v20];
            v33 = v32;
            v34 = MegaWiFiDELog(v32);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              v51 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
              v52 = 1024;
              v53 = 211;
              v54 = 1024;
              v55 = v33;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Posting values changed for applying NoLogging com.apple.corecapture.configure success: %d", buf, 0x18u);
            }

            [(WiFiLogConfigDiagnosticExtension *)self postValuesChangedInDomains:v41];
            v35 = sleep(0xCu);
            v36 = MegaWiFiDELog(v35);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v51 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
              v52 = 1024;
              v53 = 216;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Posting values done for applying NoLogging com.apple.corecapture.configure sleep(12);", buf, 0x12u);
            }

            v17 = v23;
            v16 = v42;
          }

          v19 = v19 + 1;
        }

        while (v16 != v19);
        v16 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v16);
    }

    v5 = v39;
    bundleURL = v40;
    v11 = v37;
    v10 = v38;
    v13 = 0;
  }
}

- (BOOL)applyOrRemoveManagedDomain:(BOOL)domain fileURL:(id)l
{
  domainCopy = domain;
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  pathExtension = [lCopy pathExtension];
  v9 = [pathExtension isEqualToString:@"plist"];

  if (v9)
  {
    v11 = [NSData dataWithContentsOfURL:lCopy];
    v12 = v11;
    if (v11)
    {
      if (stringByDeletingPathExtension)
      {
        if (!domainCopy)
        {
          v15 = +[NSDictionary dictionary];
          v20 = _CFPreferencesWriteManagedDomain();
          v21 = v20;
          v18 = v20 != 0;
          v13 = MegaWiFiDELog(v20);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v26 = "[WiFiLogConfigDiagnosticExtension applyOrRemoveManagedDomain:fileURL:]";
            v27 = 1024;
            v28 = 270;
            v29 = 1024;
            v30 = v21 != 0;
            v31 = 2112;
            v32 = lCopy;
            v33 = 2112;
            v34 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: applyOrRemoveManagedDomain Removed Managed Default success %d, %@ plist: %@", buf, 0x2Cu);
          }

          goto LABEL_19;
        }

        v24 = 0;
        v13 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:&v24];
        isKindOfClass = v24;
        v15 = isKindOfClass;
        if (v13)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v16 = _CFPreferencesWriteManagedDomain();
            v17 = v16;
            v18 = v16 != 0;
            v19 = MegaWiFiDELog(v16);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447234;
              v26 = "[WiFiLogConfigDiagnosticExtension applyOrRemoveManagedDomain:fileURL:]";
              v27 = 1024;
              v28 = 268;
              v29 = 1024;
              v30 = v17 != 0;
              v31 = 2112;
              v32 = lCopy;
              v33 = 2112;
              v34 = v13;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: applyOrRemoveManagedDomain Applied Managed Default success %d, %@ plist: %@", buf, 0x2Cu);
            }

LABEL_19:
LABEL_24:

            goto LABEL_25;
          }
        }

        v22 = MegaWiFiDELog(isKindOfClass);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          sub_1000033E4();
        }
      }

      else
      {
        v15 = MegaWiFiDELog(v11);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100003478();
        }
      }
    }

    else
    {
      v15 = MegaWiFiDELog(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000034F4();
      }
    }

    v18 = 0;
    goto LABEL_24;
  }

  v12 = MegaWiFiDELog(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100003368();
  }

  v18 = 0;
LABEL_25:

  return v18;
}

- (BOOL)postValuesChangedInDomains:(id)domains
{
  domainsCopy = domains;
  v4 = [domainsCopy count];
  v5 = v4;
  if (v4)
  {
    v6 = MegaWiFiDELog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446722;
      v11 = "[WiFiLogConfigDiagnosticExtension postValuesChangedInDomains:]";
      v12 = 1024;
      v13 = 282;
      v14 = 2112;
      v15 = domainsCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: postValuesChangedInDomains Updating Domains with changes %@", &v10, 0x1Cu);
    }

    _CFPreferencesManagementStatusChangedForDomains();
    v7 = _CFPreferencesPostValuesChangedInDomains();
    v8 = MegaWiFiDELog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      v11 = "[WiFiLogConfigDiagnosticExtension postValuesChangedInDomains:]";
      v12 = 1024;
      v13 = 287;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: postValuesChangedInDomains Updating Domains with changes done", &v10, 0x12u);
    }
  }

  return v5 != 0;
}

- (void)modifyManagedDefaults:(BOOL)defaults
{
  defaultsCopy = defaults;
  v4 = +[NSBundle mainBundle];
  bundleURL = [v4 bundleURL];

  v6 = [bundleURL URLByAppendingPathComponent:@"WiFiLogConfigDiagnosticExtension/ManagedDefaultFiles/"];
  v7 = MegaWiFiDELog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v58 = "[WiFiLogConfigDiagnosticExtension modifyManagedDefaults:]";
    v59 = 1024;
    v60 = 303;
    v61 = 1024;
    *v62 = defaultsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: modifyManagedDefaults called with apply: %d", buf, 0x18u);
  }

  v9 = MegaWiFiDELog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = getuid();
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    bundleURL2 = [v11 bundleURL];
    *buf = 136447234;
    v58 = "[WiFiLogConfigDiagnosticExtension modifyManagedDefaults:]";
    v59 = 1024;
    v60 = 305;
    v61 = 1024;
    *v62 = v10;
    *&v62[4] = 2112;
    *&v62[6] = bundleURL;
    *&v62[14] = 2112;
    *&v62[16] = bundleURL2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: uid num %d mainBundleURL %@ bundleForClass.bundleURL %@", buf, 0x2Cu);
  }

  v13 = +[NSFileManager defaultManager];
  v54 = 0;
  v14 = [v13 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:0 error:&v54];
  v15 = v54;
  v16 = v15;
  if (v15)
  {
    v44 = MegaWiFiDELog(v15);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_100003570();
    }
  }

  else
  {
    v41 = v13;
    v42 = v6;
    v43 = bundleURL;
    v44 = +[NSMutableArray array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v40 = v14;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v51;
      do
      {
        v21 = 0;
        do
        {
          if (*v51 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v50 + 1) + 8 * v21);
          v23 = MegaWiFiDELog(v18);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v58 = "[WiFiLogConfigDiagnosticExtension modifyManagedDefaults:]";
            v59 = 1024;
            v60 = 321;
            v61 = 2112;
            *v62 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Found Managed Defaults file: %@", buf, 0x1Cu);
          }

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v18 = [v17 countByEnumeratingWithState:&v50 objects:v56 count:16];
        v19 = v18;
      }

      while (v18);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v24 = v17;
    v25 = [v24 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v47;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v47 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v46 + 1) + 8 * i);
          lastPathComponent = [v29 lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
          v32 = stringByDeletingPathExtension;
          if (!defaultsCopy && [stringByDeletingPathExtension containsString:@"com.apple.corecapture.configure"])
          {
            [(WiFiLogConfigDiagnosticExtension *)self removeAndApplyNoLoggingToCoreCapture];
          }

          v33 = [(WiFiLogConfigDiagnosticExtension *)self applyOrRemoveManagedDomain:defaultsCopy fileURL:v29];
          v34 = v33;
          v35 = MegaWiFiDELog(v33);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446978;
            v58 = "[WiFiLogConfigDiagnosticExtension modifyManagedDefaults:]";
            v59 = 1024;
            v60 = 334;
            v61 = 1024;
            *v62 = defaultsCopy;
            *&v62[4] = 1024;
            *&v62[6] = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: applyOrRemoveManagedDomain apply %d success: %d", buf, 0x1Eu);
          }

          [v44 addObject:v32];
        }

        v26 = [v24 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v26);
    }

    v37 = MegaWiFiDELog(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v44 count];
      *buf = 136446978;
      v58 = "[WiFiLogConfigDiagnosticExtension modifyManagedDefaults:]";
      v59 = 1024;
      v60 = 339;
      v61 = 2048;
      *v62 = v38;
      *&v62[8] = 2112;
      *&v62[10] = v44;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: domainArray count %lu to update %@", buf, 0x26u);
    }

    v39 = MegaWiFiDELog([(WiFiLogConfigDiagnosticExtension *)self postValuesChangedInDomains:v44]);
    v6 = v42;
    bundleURL = v43;
    v16 = 0;
    v14 = v40;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v58 = "[WiFiLogConfigDiagnosticExtension modifyManagedDefaults:]";
      v59 = 1024;
      v60 = 343;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Posting values done", buf, 0x12u);
    }

    v13 = v41;
  }
}

- (void)setupWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = MegaWiFiDELog(parametersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136446722;
    v19 = "[WiFiLogConfigDiagnosticExtension setupWithParameters:]";
    v20 = 1024;
    v21 = 347;
    v22 = 2112;
    v23 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: setupWithParameters called with parameters: %@", &v18, 0x1Cu);
  }

  [(WiFiLogConfigDiagnosticExtension *)self clearTimers];
  self->_setupWithParametersStartTime = CFAbsoluteTimeGetCurrent();
  if (parametersCopy && [parametersCopy count])
  {
    v6 = [parametersCopy objectForKey:@"hostAppString"];

    if (v6)
    {
      v7 = [parametersCopy objectForKey:@"hostAppString"];
      v8 = [v7 isEqualToString:@"Timberlorry"];
      if (v8)
      {
        v9 = MegaWiFiDELog(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136446466;
          v19 = "[WiFiLogConfigDiagnosticExtension setupWithParameters:]";
          v20 = 1024;
          v21 = 357;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: calling modifyManagedDefaults:TRUE due to hostAppString:Timberlorry to apply MegaWiFi", &v18, 0x12u);
        }

        [(WiFiLogConfigDiagnosticExtension *)self modifyManagedDefaults:1];
      }
    }

    v10 = [parametersCopy objectForKey:@"Action"];

    if (v10)
    {
      v11 = [parametersCopy objectForKey:@"Action"];
      v12 = [v11 isEqualToString:@"Apply"];
      if (v12)
      {
        v13 = MegaWiFiDELog(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136446466;
          v19 = "[WiFiLogConfigDiagnosticExtension setupWithParameters:]";
          v20 = 1024;
          v21 = 365;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: calling modifyManagedDefaults:TRUE due to Action:Apply to apply MegaWiFi", &v18, 0x12u);
        }

        [(WiFiLogConfigDiagnosticExtension *)self modifyManagedDefaults:1];
      }

      v14 = [v11 isEqualToString:@"Remove"];
      if (v14)
      {
        v15 = MegaWiFiDELog(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136446466;
          v19 = "[WiFiLogConfigDiagnosticExtension setupWithParameters:]";
          v20 = 1024;
          v21 = 369;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: calling modifyManagedDefaults:FALSE due to Action:Remove to remove MegaWiFi", &v18, 0x12u);
        }

        [(WiFiLogConfigDiagnosticExtension *)self modifyManagedDefaults:0];
      }

      v16 = [v11 isEqualToString:@"RemoveCC"];
      if (v16)
      {
        v17 = MegaWiFiDELog(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136446466;
          v19 = "[WiFiLogConfigDiagnosticExtension setupWithParameters:]";
          v20 = 1024;
          v21 = 373;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: calling removeAndApplyNoLoggingToCoreCapture due to Action:RemoveCC to remove and apply noLoggingCC", &v18, 0x12u);
        }

        [(WiFiLogConfigDiagnosticExtension *)self removeAndApplyNoLoggingToCoreCapture];
      }
    }
  }

  self->_setupWithParametersEndTime = CFAbsoluteTimeGetCurrent();
}

- (void)teardownWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = MegaWiFiDELog(parametersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v13 = "[WiFiLogConfigDiagnosticExtension teardownWithParameters:]";
    v14 = 1024;
    v15 = 383;
    v16 = 2112;
    v17 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: teardownWithParameters called with parameters: %@", buf, 0x1Cu);
  }

  self->_teardownWithParametersStartTime = CFAbsoluteTimeGetCurrent();
  if (parametersCopy)
  {
    if ([parametersCopy count])
    {
      v6 = [parametersCopy objectForKey:@"hostAppString"];

      if (v6)
      {
        v7 = [parametersCopy objectForKey:@"hostAppString"];
        v8 = [v7 isEqualToString:@"Timberlorry"];
        if (v8)
        {
          v9 = MegaWiFiDELog(v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v13 = "[WiFiLogConfigDiagnosticExtension teardownWithParameters:]";
            v14 = 1024;
            v15 = 393;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: calling modifyManagedDefaults:FALSE due to hostAppString:Timberlorry to remove MegaWiFi", buf, 0x12u);
          }

          [(WiFiLogConfigDiagnosticExtension *)self modifyManagedDefaults:0];
        }
      }
    }
  }

  self->_teardownWithParametersEndTime = CFAbsoluteTimeGetCurrent();
  v11 = parametersCopy;
  v10 = parametersCopy;
  AnalyticsSendEventLazy();
  [(WiFiLogConfigDiagnosticExtension *)self clearTimers:_NSConcreteStackBlock];
}

- (void)clearTimers
{
  self->_setupWithParametersStartTime = 0.0;
  self->_setupWithParametersEndTime = 0.0;
  self->_attachmentsForParametersStartTime = 0.0;
  self->_attachmentsForParametersEndTime = 0.0;
  self->_teardownWithParametersStartTime = 0.0;
  self->_teardownWithParametersEndTime = 0.0;
  self->_attachmentSize = 0;
  self->_attachmentCount = 0;
}

@end