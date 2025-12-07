@interface BAAgentSystemConnection
- (BAAgentSystemConnection)initWithNSXPCConnection:(id)connection error:(id *)error;
- (NSString)debugDescription;
- (void)applicationEventPerformedWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)applicationPrepareWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)applicationShouldTriggerPeriodicWithIdentifier:(id)identifier bundleURLPath:(id)path completionHandler:(id)handler;
- (void)reportProgressForIdentifier:(id)identifier progressInfo:(id)info;
- (void)runDebugCommand:(id)command reply:(id)reply;
- (void)updateAppStoreProgressObservationWithConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation BAAgentSystemConnection

- (BAAgentSystemConnection)initWithNSXPCConnection:(id)connection error:(id *)error
{
  v12.receiver = self;
  v12.super_class = BAAgentSystemConnection;
  v4 = [(BAAgentConnection *)&v12 initWithNSXPCConnection:connection error:error];
  v5 = v4;
  if (v4)
  {
    v4->_progressConfigLock._os_unfair_lock_opaque = 0;
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BAClientSystemXPCProtocol];
    [v6 setClass:objc_opt_class() forSelector:"receiveAppStoreProgressWithAppBundleIdentifier:progressInfo:" argumentIndex:1 ofReply:0];
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BAAgentSystemXPCProtocol];
    [v7 setClass:objc_opt_class() forSelector:"applicationPrepareWithDescriptor:completionHandler:" argumentIndex:0 ofReply:0];
    [v7 setClass:objc_opt_class() forSelector:"applicationEventPerformedWithDescriptor:completionHandler:" argumentIndex:0 ofReply:0];
    connection = [(BAAgentConnection *)v5 connection];
    [connection setRemoteObjectInterface:v6];

    connection2 = [(BAAgentConnection *)v5 connection];
    [connection2 setExportedInterface:v7];

    connection3 = [(BAAgentConnection *)v5 connection];
    [connection3 setExportedObject:v5];
  }

  return v5;
}

- (void)applicationPrepareWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  appBundleIdentifier = [descriptorCopy appBundleIdentifier];
  _baassets_validUTI = [appBundleIdentifier _baassets_validUTI];

  if (_baassets_validUTI && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = +[BAAgentCore sharedCore];
    [v9 applicationPrepareWithDescriptor:descriptorCopy];

    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    v14 = NSLocalizedDescriptionKey;
    appBundleIdentifier2 = [descriptorCopy appBundleIdentifier];
    v11 = [NSString stringWithFormat:@"Invalid application identifier supplied: %@", appBundleIdentifier2];
    v15 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

    v13 = [NSError errorWithDomain:@"BAAgentSystemConnectionErrorDomain" code:1 userInfo:v12];
    (handlerCopy)[2](handlerCopy, 0, v13);
  }
}

- (void)applicationEventPerformedWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  appBundleIdentifier = [descriptorCopy appBundleIdentifier];
  _baassets_validUTI = [appBundleIdentifier _baassets_validUTI];

  if (_baassets_validUTI)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([descriptorCopy automaticInstall] && objc_msgSend(descriptorCopy, "eventType") == 10)
      {
        v9 = sub_10001060C(10);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v29 = _baassets_validUTI;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "App Store sent an [Installing] event during an automatic install for: (%{public}@). Dropping event...", buf, 0xCu);
        }

        goto LABEL_28;
      }

      eventType = [descriptorCopy eventType];
      if (eventType > 19)
      {
        if (eventType <= 21)
        {
          if (eventType == 20)
          {
            v15 = 4;
          }

          else
          {
            v15 = 5;
          }

          goto LABEL_25;
        }

        if (eventType != 22)
        {
          if (eventType == 30)
          {
            v15 = 6;
            goto LABEL_25;
          }

          goto LABEL_31;
        }

        v9 = +[BAAgentCore sharedCore];
        appBundleIdentifier2 = [descriptorCopy appBundleIdentifier];
        -[NSObject applicationInstallCanceledWithIdentifier:userInitiated:](v9, "applicationInstallCanceledWithIdentifier:userInitiated:", appBundleIdentifier2, [descriptorCopy userInitiated]);
      }

      else
      {
        if (eventType > 10)
        {
          if (eventType == 11)
          {
            v15 = 2;
            goto LABEL_25;
          }

          if (eventType == 12)
          {
            v15 = 3;
            goto LABEL_25;
          }

LABEL_31:
          v26 = NSLocalizedDescriptionKey;
          eventType2 = [descriptorCopy eventType];
          appBundleIdentifier3 = [descriptorCopy appBundleIdentifier];
          v23 = [NSString stringWithFormat:@"Invalid eventType supplied (%lu) for: %@", eventType2, appBundleIdentifier3];
          v27 = v23;
          v24 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

          v25 = [NSError errorWithDomain:@"BAAgentSystemConnectionErrorDomain" code:2 userInfo:v24];
          handlerCopy[2](handlerCopy, 0, v25);

          goto LABEL_30;
        }

        if (eventType != 5)
        {
          if (eventType == 10)
          {
            v15 = 1;
LABEL_25:
            v18 = +[BAAgentCore sharedCore];
            appBundleIdentifier4 = [descriptorCopy appBundleIdentifier];
            appBundleURL = [descriptorCopy appBundleURL];
            [v18 handleApplicationEvent:v15 identifier:appBundleIdentifier4 bundleURLPath:appBundleURL userInitiated:{objc_msgSend(descriptorCopy, "userInitiated")}];

LABEL_29:
            handlerCopy[2](handlerCopy, 1, 0);
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        v9 = +[BAAgentCore sharedCore];
        appBundleIdentifier2 = [descriptorCopy appBundleIdentifier];
        appBundleURL2 = [descriptorCopy appBundleURL];
        -[NSObject applicationPlaceholderReadyWithIdentifier:placeholderBundleURL:userInitiated:](v9, "applicationPlaceholderReadyWithIdentifier:placeholderBundleURL:userInitiated:", appBundleIdentifier2, appBundleURL2, [descriptorCopy userInitiated]);
      }

LABEL_28:
      goto LABEL_29;
    }
  }

  v30 = NSLocalizedDescriptionKey;
  appBundleIdentifier5 = [descriptorCopy appBundleIdentifier];
  v11 = [NSString stringWithFormat:@"Invalid application identifier supplied: %@", appBundleIdentifier5];
  v31 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];

  v13 = [NSError errorWithDomain:@"BAAgentSystemConnectionErrorDomain" code:1 userInfo:v12];
  handlerCopy[2](handlerCopy, 0, v13);

LABEL_30:
}

- (void)applicationShouldTriggerPeriodicWithIdentifier:(id)identifier bundleURLPath:(id)path completionHandler:(id)handler
{
  identifierCopy = identifier;
  pathCopy = path;
  handlerCopy = handler;
  _baassets_validUTI = [identifierCopy _baassets_validUTI];
  if (_baassets_validUTI && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = +[BAAgentCore sharedCore];
    [v11 handleApplicationEvent:7 identifier:_baassets_validUTI bundleURLPath:pathCopy userInitiated:0];

    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    nSLocalizedDescriptionKey = [NSString stringWithFormat:@"Invalid application identifier supplied: %@", identifierCopy, NSLocalizedDescriptionKey];
    v16 = nSLocalizedDescriptionKey;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    v14 = [NSError errorWithDomain:@"BAAgentSystemConnectionErrorDomain" code:1 userInfo:v13];
    (handlerCopy)[2](handlerCopy, 0, v14);
  }
}

- (void)runDebugCommand:(id)command reply:(id)reply
{
  replyCopy = reply;
  commandCopy = command;
  v7 = [commandCopy objectForKey:@"command"];
  lowercaseString = [v7 lowercaseString];

  v9 = [commandCopy objectForKey:@"arguments"];

  if (![lowercaseString isEqualToString:@"state"])
  {
    if ([lowercaseString isEqualToString:@"shutdown"])
    {
      if ([v9 count])
      {
        goto LABEL_78;
      }

LABEL_6:
      _baassets_validUTI = +[BAAgentCore sharedCore];
      [_baassets_validUTI _debugShutdown];
      goto LABEL_77;
    }

    if ([lowercaseString isEqualToString:@"force_periodic"])
    {
      if (![v9 count])
      {
        _baassets_validUTI = +[BAAgentCore sharedCore];
        [_baassets_validUTI doPeriodicUpdateCheck];
        goto LABEL_77;
      }

      goto LABEL_78;
    }

    if ([lowercaseString isEqualToString:@"reset"])
    {
      if ([v9 count])
      {
        goto LABEL_78;
      }

      v11 = +[BAAgentCore sharedCore];
      [v11 _setClearBeforeShutdown];

      goto LABEL_6;
    }

    if ([lowercaseString isEqualToString:@"downloads-allowed"])
    {
      if ([v9 count] != 1)
      {
        goto LABEL_78;
      }

      _baassets_validUTI = [v9 objectAtIndex:0];
      lowercaseString2 = [_baassets_validUTI lowercaseString];
      v13 = [lowercaseString2 isEqualToString:@"clear"];

      if (v13)
      {
        v14 = +[BAAgentCore sharedCore];
        v15 = v14;
        v16 = 0;
        v17 = 1;
      }

      else
      {
        lowercaseString3 = [_baassets_validUTI lowercaseString];
        v34 = [lowercaseString3 isEqualToString:@"yes"];

        if (v34)
        {
          v14 = +[BAAgentCore sharedCore];
          v15 = v14;
          v16 = 1;
        }

        else
        {
          lowercaseString4 = [_baassets_validUTI lowercaseString];
          v45 = [lowercaseString4 isEqualToString:@"no"];

          if (!v45)
          {
            goto LABEL_77;
          }

          v14 = +[BAAgentCore sharedCore];
          v15 = v14;
          v16 = 0;
        }

        v17 = 0;
      }

      [v14 _debugDownloadTime:v16 clear:v17];
LABEL_76:

      goto LABEL_77;
    }

    if (![lowercaseString isEqualToString:@"consume-extension-time"])
    {
      if ([lowercaseString isEqualToString:@"reset-extension-time"])
      {
        v27 = [v9 count];
        if (v27 != 1)
        {
          _baassets_validUTI = sub_100010584(v27);
          if (os_log_type_enabled(_baassets_validUTI, OS_LOG_TYPE_ERROR))
          {
            sub_1000486C8();
          }

          goto LABEL_77;
        }

        v28 = [v9 objectAtIndex:0];
        _baassets_validUTI = [v28 _baassets_validUTI];

        if (!_baassets_validUTI || (v29 = [_baassets_validUTI length]) == 0)
        {
          v15 = sub_100010584(v29);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1000486FC();
          }

          goto LABEL_76;
        }

        v30 = +[BAAgentCore sharedCore];
        v15 = [v30 applicationInfoForIdentifier:_baassets_validUTI];

        v20 = sub_100010584(v31);
        v32 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
        if (v15)
        {
          if (v32)
          {
            *buf = 138543362;
            v58 = _baassets_validUTI;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Resetting extension runtime for %{public}@", buf, 0xCu);
          }

          [v15 resetExtensionRuntime];
          v20 = +[BAAgentCore sharedCore];
          [v20 saveApplicationState];
          goto LABEL_75;
        }

        if (!v32)
        {
LABEL_75:

          goto LABEL_76;
        }

        *buf = 138543362;
        v58 = _baassets_validUTI;
      }

      else
      {
        if (![lowercaseString isEqualToString:@"send-telemetry-event"])
        {
          goto LABEL_78;
        }

        v35 = [v9 count];
        if (v35 != 1)
        {
          _baassets_validUTI = sub_100010584(v35);
          if (os_log_type_enabled(_baassets_validUTI, OS_LOG_TYPE_ERROR))
          {
            sub_100048660();
          }

          goto LABEL_77;
        }

        v36 = [v9 objectAtIndex:0];
        _baassets_validUTI = [v36 _baassets_validUTI];

        if (!_baassets_validUTI || (v37 = [_baassets_validUTI length]) == 0)
        {
          v15 = sub_100010584(v37);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_100048694();
          }

          goto LABEL_76;
        }

        v38 = +[BAAgentCore sharedCore];
        v15 = [v38 applicationInfoIfExistsForIdentifier:_baassets_validUTI];

        if (v15)
        {
          v20 = [_baassets_validUTI stringByAppendingString:@"1CB2CF25-5012-4A61-85D5-2FF468AE9203"];
          v40 = [BAContentRequestTelemetry alloc];
          installSource = [v15 installSource];
          v42 = +[NSSet set];
          v24 = [(BAContentRequestTelemetry *)v40 initWithContentRequest:3 applicationIdentifier:v20 installSource:installSource downloads:v42];

          [BATelemetrySender sendContentRequestTelemetryEvent:v24];
          goto LABEL_74;
        }

        v20 = sub_100010584(v39);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          goto LABEL_75;
        }

        *buf = 138543362;
        v58 = _baassets_validUTI;
      }

      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Unable to get application runtime info for identifier: %{public}@", buf, 0xCu);
      goto LABEL_75;
    }

    v18 = [v9 count];
    if (v18 != 2)
    {
      _baassets_validUTI = sub_100010584(v18);
      if (os_log_type_enabled(_baassets_validUTI, OS_LOG_TYPE_ERROR))
      {
        sub_100048730();
      }

      goto LABEL_77;
    }

    v19 = [v9 objectAtIndex:0];
    _baassets_validUTI = [v19 _baassets_validUTI];

    v15 = [v9 objectAtIndex:1];
    v20 = [NSScanner scannerWithString:v15];
    v56 = 0;
    [v20 scanInteger:&v56];
    v21 = [v15 substringFromIndex:[v20 scanLocation]];
    lowercaseString5 = [v21 lowercaseString];
    v23 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v24 = [lowercaseString5 stringByTrimmingCharactersInSet:v23];

    v25 = [(BAContentRequestTelemetry *)v24 length];
    if (v25 == 1)
    {
      if ([(BAContentRequestTelemetry *)v24 isEqualToString:@"m"])
      {
        v26 = 60 * v56;
        goto LABEL_54;
      }

      v46 = [(BAContentRequestTelemetry *)v24 isEqualToString:@"h"];
      if (v46)
      {
        v26 = 3600 * v56;
LABEL_54:
        v56 = v26;
        if (v26)
        {
          v47 = +[BAAgentCore sharedCore];
          v48 = [v47 applicationInfoForIdentifier:_baassets_validUTI];

          if (!v48)
          {
            sharedCore = sub_100010584(v49);
            if (os_log_type_enabled(sharedCore, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v58 = _baassets_validUTI;
              _os_log_impl(&_mh_execute_header, sharedCore, OS_LOG_TYPE_INFO, "Unable to get application runtime info for identifier: %{public}@", buf, 0xCu);
            }

            goto LABEL_73;
          }

          v50 = v56;
          v51 = sub_100010584(v49);
          v52 = os_log_type_enabled(v51, OS_LOG_TYPE_INFO);
          if (v50 < 1)
          {
            p_vtable = BAURLSession.vtable;
            if (v52)
            {
              *buf = 134218242;
              v58 = v56;
              v59 = 2114;
              v60 = _baassets_validUTI;
              v54 = "Removing %ld seconds to %{public}@";
              goto LABEL_71;
            }
          }

          else
          {
            p_vtable = (BAURLSession + 24);
            if (v52)
            {
              *buf = 134218242;
              v58 = v56;
              v59 = 2114;
              v60 = _baassets_validUTI;
              v54 = "Added %ld seconds to %{public}@";
LABEL_71:
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, v54, buf, 0x16u);
            }
          }

          [v48 _debugConsumeTime:v56];
          sharedCore = [p_vtable + 107 sharedCore];
          [sharedCore saveApplicationState];
LABEL_73:
        }

LABEL_74:

        goto LABEL_75;
      }

      v43 = sub_100010584(v46);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v58 = v24;
        goto LABEL_42;
      }
    }

    else
    {
      v43 = sub_100010584(v25);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v58 = v24;
LABEL_42:
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Invalid unit string: %{public}@\nShould be 'm' or 'h'.", buf, 0xCu);
      }
    }

    v56 = 0;
    goto LABEL_74;
  }

  if (![v9 count])
  {
    _baassets_validUTI = +[BAAgentCore sharedCore];
    [_baassets_validUTI _printDebugState];
LABEL_77:
  }

LABEL_78:
  replyCopy[2](replyCopy);
}

- (void)updateAppStoreProgressObservationWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_progressConfigLock);
  [(BAAgentSystemConnection *)self setClientProgressConfiguration:configurationCopy];
  os_unfair_lock_unlock(&self->_progressConfigLock);
  v16 = configurationCopy;
  v8 = sub_100048498(configurationCopy);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = +[BAAgentCore sharedCore];
        v15 = [v14 essentialAssetsProgressDescriptorWithIdentifier:v13];

        [(BAAgentSystemConnection *)self reportProgressForIdentifier:v13 progressInfo:v15];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  handlerCopy[2](handlerCopy, 1, 0);
}

- (void)reportProgressForIdentifier:(id)identifier progressInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  os_unfair_lock_lock(&self->_progressConfigLock);
  clientProgressConfiguration = [(BAAgentSystemConnection *)self clientProgressConfiguration];

  if (clientProgressConfiguration)
  {
    clientProgressConfiguration2 = [(BAAgentSystemConnection *)self clientProgressConfiguration];
    v9 = sub_100048498(clientProgressConfiguration2);
    v10 = [v9 containsObject:identifierCopy];

    os_unfair_lock_unlock(&self->_progressConfigLock);
    if (v10)
    {
      connection = [(BAAgentConnection *)self connection];
      v12 = [connection remoteObjectProxyWithErrorHandler:&stru_1000794F8];
      [v12 receiveAppStoreProgressWithAppBundleIdentifier:identifierCopy progressInfo:infoCopy];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_progressConfigLock);
  }
}

- (NSString)debugDescription
{
  connection = [(BAAgentConnection *)self connection];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"System Connection\nPID: %d", [connection processIdentifier]);

  return v3;
}

@end