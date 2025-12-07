@interface AppReceipt
+ (BOOL)_writeReceipt:(id)receipt withContainerDirectory:(id)directory style:(int64_t)style;
+ (BOOL)writeReceipt:(id)receipt forBundleIdentifier:(id)identifier style:(int64_t)style;
+ (BOOL)writeReceipt:(id)receipt forStoreKitClient:(id)client;
@end

@implementation AppReceipt

+ (BOOL)writeReceipt:(id)receipt forBundleIdentifier:(id)identifier style:(int64_t)style
{
  if (![receipt length] || !objc_msgSend(identifier, "length"))
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (!v16)
    {
      return 0;
    }

    v46 = 138412546;
    v47 = objc_opt_class();
    v48 = 2112;
    identifierCopy3 = identifier;
    v18 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%@] No receipt data for: %@", &v46, 22);
    goto LABEL_18;
  }

  v9 = [LSApplicationProxy applicationProxyForIdentifier:identifier];
  if (!v9)
  {
    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      LODWORD(v24) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v24) = shouldLog2;
    }

    oSLogObject2 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (!v24)
    {
      return 0;
    }

    v46 = 138412546;
    v47 = objc_opt_class();
    v48 = 2112;
    identifierCopy3 = identifier;
    v18 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "[%@] No LSApplicationProxy for: %@", &v46, 22);
LABEL_18:
    if (v18)
    {
      v19 = v18;
      [NSString stringWithCString:v18 encoding:4];
      free(v19);
      SSFileLog();
    }

    return 0;
  }

  containingBundle = v9;
  if (([objc_msgSend(v9 "appState")] & 1) == 0)
  {
    v11 = [LSPlugInKitProxy pluginKitProxyForIdentifier:identifier];
    if (v11 && (v12 = v11, v13 = [objc_msgSend(v11 "containingBundle")], objc_msgSend(v13, "isEqualToString:", LSUserApplicationType)))
    {
      containingBundle = [v12 containingBundle];
    }

    else
    {
      v26 = +[SSLogConfig sharedDaemonConfig];
      if (!v26)
      {
        v26 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v26 shouldLog];
      if ([v26 shouldLogToDisk])
      {
        LODWORD(v28) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v28) = shouldLog3;
      }

      oSLogObject3 = [v26 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v28;
      }

      else
      {
        v28 &= 2u;
      }

      if (v28)
      {
        v46 = 138412546;
        v47 = objc_opt_class();
        v48 = 2112;
        identifierCopy3 = identifier;
        v30 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "[%@] No LSPlugInKitProxy for: %@", &v46, 22);
        if (v30)
        {
          v31 = v30;
          v32 = [NSString stringWithCString:v30 encoding:4];
          free(v31);
          v40 = v32;
          SSFileLog();
        }
      }
    }
  }

  dataContainerURL = [containingBundle dataContainerURL];
  if (dataContainerURL)
  {
    v20 = [self _writeReceipt:receipt withContainerDirectory:dataContainerURL style:style];
  }

  else
  {
    v20 = 0;
  }

  plugInKitPlugins = [containingBundle plugInKitPlugins];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v35 = [plugInKitPlugins countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v42;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(plugInKitPlugins);
        }

        dataContainerURL2 = [*(*(&v41 + 1) + 8 * i) dataContainerURL];
        if (dataContainerURL2)
        {
          [self _writeReceipt:receipt withContainerDirectory:dataContainerURL2 style:style];
        }
      }

      v36 = [plugInKitPlugins countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v36);
  }

  return v20;
}

+ (BOOL)writeReceipt:(id)receipt forStoreKitClient:(id)client
{
  receiptDirectoryPath = [client receiptDirectoryPath];
  isSandboxed = [client isSandboxed];
  if ([receiptDirectoryPath length])
  {
    v9 = [NSURL fileURLWithPath:receiptDirectoryPath isDirectory:1];

    return [self _writeReceipt:receipt withContainerDirectory:v9 style:isSandboxed];
  }

  else
  {
    bundleIdentifier = [client bundleIdentifier];

    return [self writeReceipt:receipt forBundleIdentifier:bundleIdentifier style:isSandboxed];
  }
}

+ (BOOL)_writeReceipt:(id)receipt withContainerDirectory:(id)directory style:(int64_t)style
{
  if ([receipt length])
  {
    v27 = 0;
    v32[0] = NSFileOwnerAccountName;
    v32[1] = NSFileGroupOwnerAccountName;
    v33[0] = @"mobile";
    v33[1] = @"mobile";
    v8 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
    v9 = [directory URLByAppendingPathComponent:@"StoreKit" isDirectory:1];
    v10 = objc_alloc_init(NSFileManager);
    v11 = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:v8 error:&v27];
    if (v11)
    {
      if (style == 1)
      {
        v12 = @"sandboxReceipt";
      }

      else
      {
        v12 = @"receipt";
      }

      v13 = [v9 URLByAppendingPathComponent:v12 isDirectory:0];
      if ([receipt writeToURL:v13 atomically:1])
      {
        v14 = +[SSLogConfig sharedDaemonConfig];
        if (!v14)
        {
          v14 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          LODWORD(v16) = shouldLog | 2;
        }

        else
        {
          LODWORD(v16) = shouldLog;
        }

        oSLogObject = [v14 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
        {
          v16 = v16;
        }

        else
        {
          v16 &= 2u;
        }

        if (!v16 || (v18 = objc_opt_class(), v28 = 138412546, v29 = v18, v30 = 2112, v31 = v13, (v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject, 2, "[%@] Wrote receipt to path: %@", &v28, 22)) == 0))
        {
          v11 = 1;
LABEL_31:

          return v11;
        }

LABEL_29:
        v25 = v19;
        [NSString stringWithCString:v19 encoding:4];
        free(v25);
        SSFileLog();
        goto LABEL_31;
      }
    }

    else
    {
      v20 = +[SSLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        LODWORD(v22) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v22) = shouldLog2;
      }

      oSLogObject2 = [v20 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v22;
      }

      else
      {
        v22 &= 2u;
      }

      if (v22)
      {
        v24 = objc_opt_class();
        v28 = 138412546;
        v29 = v24;
        v30 = 2112;
        v31 = v9;
        v19 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "[%@] Could not create receipt URL: %@", &v28, 22);
        if (v19)
        {
          goto LABEL_29;
        }
      }
    }

    v11 = 0;
    goto LABEL_31;
  }

  return 0;
}

@end