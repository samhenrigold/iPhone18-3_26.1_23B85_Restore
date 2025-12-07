@interface SDUnlockTransport
- (SDUnlockTransport)init;
- (id)activeDevice;
- (id)dataFromUUID:(id)d;
- (id)idsDeviceForUniqueID:(id)d;
- (id)sendAutoUnlockPayload:(id)payload toDevice:(id)device type:(unsigned __int16)type sessionID:(id)d queueOneID:(id)iD timeout:(id)timeout completion:(id)completion;
- (id)transferDataFromPayload:(id)payload sessionID:(id)d;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
@end

@implementation SDUnlockTransport

- (SDUnlockTransport)init
{
  v8.receiver = self;
  v8.super_class = SDUnlockTransport;
  v2 = [(SDUnlockTransport *)&v8 init];
  v3 = +[NSMutableDictionary dictionary];
  completionHandlersByMessageIdentifier = v2->_completionHandlersByMessageIdentifier;
  v2->_completionHandlersByMessageIdentifier = v3;

  v5 = +[NSMutableDictionary dictionary];
  sendDatesByMessageIdentifier = v2->_sendDatesByMessageIdentifier;
  v2->_sendDatesByMessageIdentifier = v5;

  return v2;
}

- (id)dataFromUUID:(id)d
{
  v5[0] = 0;
  v5[1] = 0;
  [d getUUIDBytes:v5];
  v3 = [NSData dataWithBytes:v5 length:16];

  return v3;
}

- (id)transferDataFromPayload:(id)payload sessionID:(id)d
{
  dCopy = d;
  payloadCopy = payload;
  v8 = objc_opt_new();
  [v8 setVersion:1];
  v9 = [(SDUnlockTransport *)self dataFromUUID:dCopy];

  [v8 setSessionID:v9];
  [v8 setPayload:payloadCopy];

  data = [v8 data];

  return data;
}

- (id)activeDevice
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  autoUnlockService = [(SDUnlockTransport *)self autoUnlockService];
  devices = [autoUnlockService devices];

  v4 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isActive])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)idsDeviceForUniqueID:(id)d
{
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  autoUnlockService = [(SDUnlockTransport *)self autoUnlockService];
  devices = [autoUnlockService devices];

  v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uniqueIDOverride = [v10 uniqueIDOverride];
        v12 = [uniqueIDOverride isEqualToString:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)sendAutoUnlockPayload:(id)payload toDevice:(id)device type:(unsigned __int16)type sessionID:(id)d queueOneID:(id)iD timeout:(id)timeout completion:(id)completion
{
  typeCopy = type;
  deviceCopy = device;
  dCopy = d;
  v17 = deviceCopy;
  v18 = dCopy;
  iDCopy = iD;
  timeoutCopy = timeout;
  completionCopy = completion;
  v53 = v18;
  v20 = [(SDUnlockTransport *)self transferDataFromPayload:payload sessionID:v18];
  v21 = [v17 isEqualToString:IDSDefaultPairedDevice];
  if (v21)
  {
    activeDevice = [(SDUnlockTransport *)self activeDevice];
    if (!activeDevice)
    {
      v29 = 0;
      goto LABEL_12;
    }

    v23 = IDSCopyIDForDevice();
    v24 = v20;
    v25 = [NSMutableSet alloc];
    v61 = v23;
    v26 = &v61;
  }

  else
  {
    activeDevice = [(SDUnlockTransport *)self idsDeviceForUniqueID:v17];
    v23 = IDSCopyIDForDevice();
    if (!v23)
    {
      v27 = auto_unlock_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1001FDF20();
      }

      v29 = 0;
      goto LABEL_11;
    }

    v24 = v20;
    v25 = [NSMutableSet alloc];
    v60 = v23;
    v26 = &v60;
  }

  v27 = [NSArray arrayWithObjects:v26 count:1];
  v28 = v25;
  v20 = v24;
  v29 = [v28 initWithArray:v27];
LABEL_11:

LABEL_12:
  if (v29)
  {
    v30 = +[NSMutableDictionary dictionary];
    v31 = v30;
    v32 = iDCopy;
    if (timeoutCopy)
    {
      [v30 setObject:timeoutCopy forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    }

    else
    {
      v35 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      [v31 setObject:v35 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

      v32 = iDCopy;
    }

    [v31 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    if (v32)
    {
      [v31 setObject:v32 forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    }

    v50 = completionCopy;
    if (v21)
    {
      [v31 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionForceLocalDeliveryKey];
    }

    [(SDUnlockTransport *)self updateSendOptions:v31];
    v49 = v20;
    v36 = [[IDSProtobuf alloc] initWithProtobufData:v20 type:typeCopy isResponse:0];
    kdebug_trace();
    autoUnlockService = [(SDUnlockTransport *)self autoUnlockService];
    v54 = 0;
    v55 = 0;
    v48 = v36;
    LODWORD(v36) = [autoUnlockService sendProtobuf:v36 toDestinations:v29 priority:300 options:v31 identifier:&v55 error:&v54];
    v33 = v55;
    v34 = v54;

    v38 = [[NSString alloc] initWithFormat:@"type: %d, sessionID: %ld, destinations: %@", typeCopy, v53, v29];
    v39 = auto_unlock_log();
    v40 = v39;
    if (v36)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v57 = v38;
        v58 = 2112;
        v59 = v33;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Sending %@, identifier: %@", buf, 0x16u);
      }

      v41 = +[NSDate date];
      sendDatesByMessageIdentifier = [(SDUnlockTransport *)self sendDatesByMessageIdentifier];
      [sendDatesByMessageIdentifier setObject:v41 forKeyedSubscript:v33];

      completionCopy = v50;
      if (v50)
      {
        v43 = [v50 copy];
        v44 = objc_retainBlock(v43);
        [(SDUnlockTransport *)self completionHandlersByMessageIdentifier];
        v46 = v45 = v17;
        [v46 setObject:v44 forKeyedSubscript:v33];

        v17 = v45;
        v32 = iDCopy;

        completionCopy = v50;
      }

      [(SDUnlockTransport *)self handleSuccessfulMessageSentWithIdentifier:v33 sessionID:v53];
    }

    else
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1001FDF88();
      }

      completionCopy = v50;
      if (v50)
      {
        (v50)[2](v50, 0, v34);
      }
    }

    v20 = v49;
  }

  else
  {
    v31 = auto_unlock_log();
    v32 = iDCopy;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v17;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No destinations for device ID: %@", buf, 0xCu);
    }

    v33 = 0;
    v34 = 0;
  }

  return v33;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  kdebug_trace();
  v12 = auto_unlock_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (successCopy)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = objc_opt_new();
    sendDatesByMessageIdentifier = [(SDUnlockTransport *)self sendDatesByMessageIdentifier];
    v16 = [sendDatesByMessageIdentifier objectForKeyedSubscript:identifierCopy];
    [v14 timeIntervalSinceDate:v16];
    v22 = 138413058;
    v23 = v13;
    v24 = 2112;
    v25 = identifierCopy;
    v26 = 2048;
    v27 = v17;
    v28 = 2112;
    v29 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "success = %@, identifier = %@, time = %.2f, error = %@", &v22, 0x2Au);
  }

  sendDatesByMessageIdentifier2 = [(SDUnlockTransport *)self sendDatesByMessageIdentifier];
  [sendDatesByMessageIdentifier2 removeObjectForKey:identifierCopy];

  completionHandlersByMessageIdentifier = [(SDUnlockTransport *)self completionHandlersByMessageIdentifier];
  v20 = [completionHandlersByMessageIdentifier objectForKeyedSubscript:identifierCopy];

  if (v20)
  {
    (v20)[2](v20, successCopy, errorCopy);
    completionHandlersByMessageIdentifier2 = [(SDUnlockTransport *)self completionHandlersByMessageIdentifier];
    [completionHandlersByMessageIdentifier2 removeObjectForKey:identifierCopy];
  }
}

@end