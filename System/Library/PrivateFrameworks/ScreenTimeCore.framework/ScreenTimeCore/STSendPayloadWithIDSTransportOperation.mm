@interface STSendPayloadWithIDSTransportOperation
- (STSendPayloadWithIDSTransportOperation)initWithPayload:(id)payload destinations:(id)destinations service:(id)service;
- (id)_sendData:(id)data toDestinations:(id)destinations queueIdentifier:(id)identifier payloadUUID:(id)d expectResponse:(BOOL)response withError:(id *)error;
- (void)main;
@end

@implementation STSendPayloadWithIDSTransportOperation

- (STSendPayloadWithIDSTransportOperation)initWithPayload:(id)payload destinations:(id)destinations service:(id)service
{
  payloadCopy = payload;
  destinationsCopy = destinations;
  serviceCopy = service;
  v17.receiver = self;
  v17.super_class = STSendPayloadWithIDSTransportOperation;
  v12 = [(STOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_service, service);
    objc_storeStrong(&v13->_payload, payload);
    v14 = [destinationsCopy copy];
    destinations = v13->_destinations;
    v13->_destinations = v14;
  }

  return v13;
}

- (void)main
{
  v3 = _os_activity_create(&_mh_execute_header, "STSendPayloadWithIDSTransportOperation start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  [(STOperation *)self setActivity:v3];

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(STOperation *)self activity];
  os_activity_scope_enter(activity, &state);

  v5 = +[STLog familyMessaging];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    payloadType = [(STUnifiedTransportPayload *)self->_payload payloadType];
    *buf = 136446466;
    v37 = "[STSendPayloadWithIDSTransportOperation main]";
    v38 = 2112;
    v39 = payloadType;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nStarted \npayloadType: %@", buf, 0x16u);
  }

  payload = [(STSendPayloadWithIDSTransportOperation *)self payload];
  v34 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:payload requiringSecureCoding:1 error:&v34];
  v9 = v34;

  if (v8)
  {
    payload2 = [(STSendPayloadWithIDSTransportOperation *)self payload];
    payloadType2 = [payload2 payloadType];

    v13 = ![payloadType2 isEqualToString:@"RMUnifiedTransportPayloadTypeUsageRequest"] && (objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeUsageResponse") & 1) == 0 && (objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeCheckinRequest") & 1) == 0 && !objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeCheckinResponse");
    if (([payloadType2 isEqualToString:@"RMUnifiedTransportPayloadTypeCheckinRequest"] & 1) != 0 || (objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeCheckinResponse") & 1) != 0 || (objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeBlueprints") & 1) != 0 || (objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeUsageRequest") & 1) != 0 || (objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeUsageResponse") & 1) != 0 || objc_msgSend(payloadType2, "isEqualToString:", @"RMUnifiedTransportPayloadTypeFamilySettings"))
    {
      v14 = payloadType2;
    }

    else
    {
      v14 = 0;
    }

    destinations = [(STSendPayloadWithIDSTransportOperation *)self destinations];
    payload3 = [(STSendPayloadWithIDSTransportOperation *)self payload];
    uUID = [payload3 UUID];
    v33 = v9;
    v18 = [(STSendPayloadWithIDSTransportOperation *)self _sendData:v8 toDestinations:destinations queueIdentifier:v14 payloadUUID:uUID expectResponse:v13 withError:&v33];
    v19 = v33;

    if (v18)
    {
      v20 = +[STLog familyMessaging];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        payload4 = [(STSendPayloadWithIDSTransportOperation *)self payload];
        *buf = 136446722;
        v37 = "[STSendPayloadWithIDSTransportOperation main]";
        v38 = 2114;
        v39 = v18;
        v40 = 2114;
        v41 = payload4;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[v1] %{public}s: \nSent payload: \nExternalUUID: %{public}@, \npayload: %{public}@", buf, 0x20u);
      }

      [(STSendPayloadWithIDSTransportOperation *)self endOperationWithResultObject:0];
      v22 = +[STLog familyMessaging];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        payloadType3 = [(STUnifiedTransportPayload *)self->_payload payloadType];
        *buf = 136446466;
        v37 = "[STSendPayloadWithIDSTransportOperation main]";
        v38 = 2112;
        v39 = payloadType3;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nFinished \npayloadType: %@", buf, 0x16u);
      }
    }

    else
    {
      v24 = +[STLog idsTransport];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        payload5 = [(STSendPayloadWithIDSTransportOperation *)self payload];
        uUID2 = [payload5 UUID];
        payload6 = [(STSendPayloadWithIDSTransportOperation *)self payload];
        payloadDictionary = [payload6 payloadDictionary];
        payload7 = [(STSendPayloadWithIDSTransportOperation *)self payload];
        userInfo = [payload7 userInfo];
        *buf = 136447235;
        v37 = "[STSendPayloadWithIDSTransportOperation main]";
        v38 = 2114;
        v39 = uUID2;
        v40 = 2113;
        v41 = payloadDictionary;
        v42 = 2113;
        v43 = userInfo;
        v44 = 2114;
        v45 = v19;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nFailed to send payload \nLocalUUID: %{public}@, \npayloadDictionary:%{private}@, \nuserInfo:%{private}@, \nerror:%{public}@", buf, 0x34u);
      }

      [(STSendPayloadWithIDSTransportOperation *)self endOperationWithError:v19];
    }

    v9 = v19;
  }

  else
  {
    v12 = +[STLog idsTransport];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      payload8 = [(STSendPayloadWithIDSTransportOperation *)self payload];
      payloadType4 = [payload8 payloadType];
      *buf = 136446722;
      v37 = "[STSendPayloadWithIDSTransportOperation main]";
      v38 = 2114;
      v39 = payloadType4;
      v40 = 2114;
      v41 = v9;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nFailed to generate payload data for payloadType: %{public}@, error %{public}@", buf, 0x20u);
    }

    [(STSendPayloadWithIDSTransportOperation *)self endOperationWithError:v9];
  }

  os_activity_scope_leave(&state);
}

- (id)_sendData:(id)data toDestinations:(id)destinations queueIdentifier:(id)identifier payloadUUID:(id)d expectResponse:(BOOL)response withError:(id *)error
{
  responseCopy = response;
  dataCopy = data;
  destinationsCopy = destinations;
  identifierCopy = identifier;
  dCopy = d;
  if (!dataCopy)
  {
    sub_100120054(a2, self);
  }

  if (![destinationsCopy count])
  {
    sub_1001200D0(a2, self);
  }

  selfCopy = self;
  payload = [(STSendPayloadWithIDSTransportOperation *)self payload];
  userInfo = [payload userInfo];
  v21 = [userInfo objectForKeyedSubscript:@"FromID"];

  if (!v21)
  {
    sub_10012014C(a2, selfCopy);
  }

  if ([v21 _appearsToBePhoneNumber])
  {
    v22 = IDSCopyIDForPhoneNumber();
  }

  else
  {
    v22 = IDSCopyIDForEmailAddress();
  }

  v23 = v22;

  v24 = objc_opt_new();
  v68 = v23;
  [v24 setObject:v23 forKeyedSubscript:IDSSendMessageOptionFromIDKey];
  v25 = IDSGetUUIDData();
  [v24 setObject:v25 forKeyedSubscript:IDSSendMessageOptionUUIDKey];

  [v24 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionCompressPayloadKey];
  v26 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
  [v24 setObject:v26 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

  if (identifierCopy)
  {
    [v24 setObject:identifierCopy forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
  }

  v27 = [NSNumber numberWithBool:responseCopy];
  [v24 setObject:v27 forKeyedSubscript:IDSSendMessageOptionWantsClientAcknowledgementKey];

  v28 = [NSNumber numberWithBool:responseCopy];
  [v24 setObject:v28 forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];

  v29 = [NSNumber numberWithInt:responseCopy ^ 1];
  [v24 setObject:v29 forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];

  v30 = [dataCopy length];
  v31 = +[STLog idsTransport];
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (v30 >> 12 > 0xE)
  {
    v66 = dCopy;
    if (v32)
    {
      *buf = 136446722;
      v74 = "[STSendPayloadWithIDSTransportOperation _sendData:toDestinations:queueIdentifier:payloadUUID:expectResponse:withError:]";
      v75 = 2048;
      v76 = [dataCopy length];
      v77 = 2112;
      v78 = destinationsCopy;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nIDS sending as file of size: %lu bytes. \ndestinations: %@", buf, 0x20u);
    }

    v40 = +[NSFileManager defaultManager];
    temporaryDirectory = [v40 temporaryDirectory];
    v42 = +[NSUUID UUID];
    uUIDString = [v42 UUIDString];
    v44 = [NSString stringWithFormat:@"IDS-SendFile-%@", uUIDString];
    v65 = temporaryDirectory;
    v45 = [temporaryDirectory URLByAppendingPathComponent:v44];

    v71 = 0;
    v46 = [dataCopy writeToURL:v45 options:2 error:&v71];
    v47 = v71;
    if (v46)
    {
      v64 = identifierCopy;
      service = [(STSendPayloadWithIDSTransportOperation *)selfCopy service];
      v70 = 0;
      v49 = [service sendResourceAtURL:v45 metadata:0 toDestinations:destinationsCopy priority:300 options:v24 identifier:&v70 error:error];
      v50 = v70;

      v51 = +[STLog idsTransport];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = "NO";
        v74 = "[STSendPayloadWithIDSTransportOperation _sendData:toDestinations:queueIdentifier:payloadUUID:expectResponse:withError:]";
        *buf = 136446722;
        if (v49)
        {
          v52 = "YES";
        }

        v75 = 2082;
        v76 = v52;
        v77 = 2112;
        v78 = destinationsCopy;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nIDS file send \nsuccess: %{public}s destinations: %@", buf, 0x20u);
      }

      if (v49)
      {
        v53 = v50;
      }

      else
      {
        v53 = 0;
      }

      v39 = v53;

      v69 = v47;
      v54 = [v40 removeItemAtURL:v45 error:&v69];
      v55 = v69;

      if ((v54 & 1) == 0)
      {
        v56 = +[STLog idsTransport];
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_100120244();
        }
      }

      identifierCopy = v64;
    }

    else
    {
      v57 = +[STLog idsTransport];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
      {
        sub_1001201C0();
      }

      if (error)
      {
        v58 = v47;
        v39 = 0;
        *error = v47;
      }

      else
      {
        v39 = 0;
      }

      v55 = v47;
    }

    if (!v46)
    {
      v62 = 0;
      dCopy = v66;
      goto LABEL_53;
    }

    dCopy = v66;
  }

  else
  {
    if (v32)
    {
      *buf = 136446722;
      v74 = "[STSendPayloadWithIDSTransportOperation _sendData:toDestinations:queueIdentifier:payloadUUID:expectResponse:withError:]";
      v75 = 2048;
      v76 = [dataCopy length];
      v77 = 2112;
      v78 = destinationsCopy;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nIDS sending as NSData \nsize: %lu bytes \ndestinations: %@", buf, 0x20u);
    }

    service2 = [(STSendPayloadWithIDSTransportOperation *)selfCopy service];
    v72 = 0;
    v34 = [service2 sendData:dataCopy toDestinations:destinationsCopy priority:300 options:v24 identifier:&v72 error:error];
    v35 = v72;

    v36 = +[STLog idsTransport];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = "NO";
      v74 = "[STSendPayloadWithIDSTransportOperation _sendData:toDestinations:queueIdentifier:payloadUUID:expectResponse:withError:]";
      *buf = 136446722;
      if (v34)
      {
        v37 = "YES";
      }

      v75 = 2082;
      v76 = v37;
      v77 = 2112;
      v78 = destinationsCopy;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nNSData send \nsuccess: %{public}s, \ndestinations: %@", buf, 0x20u);
    }

    if (v34)
    {
      v38 = v35;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
  }

  v59 = +[STLog idsTransport];
  v60 = v59;
  if (v39)
  {
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v61 = [dataCopy length];
      *buf = 136446722;
      v74 = "[STSendPayloadWithIDSTransportOperation _sendData:toDestinations:queueIdentifier:payloadUUID:expectResponse:withError:]";
      v75 = 2112;
      v76 = v39;
      v77 = 1024;
      LODWORD(v78) = v61;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nSent data with UUID “%@” size “%d” bytes", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    sub_1001202C8(selfCopy, dataCopy, v60);
  }

  v39 = v39;
  v62 = v39;
LABEL_53:

  return v62;
}

@end