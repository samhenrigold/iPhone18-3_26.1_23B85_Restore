@interface CompanionDelegate
- (CompanionDelegate)initWithSilo:(id)silo idsService:(id)service;
- (id)downgradeMsgToOlderType:(id)type type:(int *)a4;
- (void)dealloc;
- (void)receivedMessage:(int)message data:(id)data identifierString:(id)string;
- (void)sendData:(id)data type:(int)type;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)updateIDSStatus;
@end

@implementation CompanionDelegate

- (CompanionDelegate)initWithSilo:(id)silo idsService:(id)service
{
  siloCopy = silo;
  serviceCopy = service;
  objc_storeStrong(&self->_idsService, service);
  idsService = self->_idsService;
  queue = [siloCopy queue];
  [(IDSService *)idsService addDelegate:self queue:queue];

  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v10 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v15 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "IDSService Delegate initialized %p", buf, 0xCu);
  }

  self->_hasMsgVersion = 0;
  self->_lastUpdateSpuTs = 0;
  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100348534;
  v12[3] = &unk_100435F28;
  objc_copyWeak(&v13, buf);
  [siloCopy async:v12];
  [(CompanionDelegate *)self setSilo:siloCopy];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  return self;
}

- (void)dealloc
{
  statusHandler = self->_statusHandler;
  self->_statusHandler = 0;

  testTriggerHandler = self->_testTriggerHandler;
  self->_testTriggerHandler = 0;

  messageHandler = self->_messageHandler;
  self->_messageHandler = 0;

  companionStatusHandler = self->_companionStatusHandler;
  self->_companionStatusHandler = 0;

  self->_lastUpdateSpuTs = 0;
  v7.receiver = self;
  v7.super_class = CompanionDelegate;
  [(CompanionDelegate *)&v7 dealloc];
}

- (void)updateIDSStatus
{
  v57 = +[CSTimeManager SPU_estimate_current_timestamp];
  Current = CFAbsoluteTimeGetCurrent();
  isConnected = self->_isConnected;
  self->_isConnected = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  selfCopy = self;
  obj = [(IDSService *)self->_idsService devices];
  v4 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (!v4)
  {
    goto LABEL_50;
  }

  v5 = *v62;
  while (2)
  {
    v6 = 0;
    do
    {
      if (*v62 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v61 + 1) + 8 * v6);
      if (qword_100456868 != -1)
      {
        sub_10034BBF0();
      }

      v8 = qword_100456870;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        modelIdentifier = [v7 modelIdentifier];
        productBuildVersion = [v7 productBuildVersion];
        isNearby = [v7 isNearby];
        isConnected = [v7 isConnected];
        isLocallyPaired = [v7 isLocallyPaired];
        *buf = 68290307;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2113;
        *&buf[20] = modelIdentifier;
        *&buf[28] = 2113;
        *&buf[30] = productBuildVersion;
        *&buf[38] = 1026;
        *&buf[40] = isNearby;
        v66 = 1026;
        v67 = isConnected;
        v68 = 1026;
        v69 = isLocallyPaired;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:updateIDSStatus:, model:%{private, location:escape_only}@, build:%{private, location:escape_only}@, isNearby:%{public}hhd, isConnected:%{public}hhd, isLocallyPaired:%{public}hhd}", buf, 0x38u);
      }

      if ([v7 isDefaultPairedDevice] && objc_msgSend(v7, "isNearby"))
      {
        selfCopy->_isConnected = 1;
        objc_storeStrong(&selfCopy->_pairedDevice, v7);
        if (qword_100456868 != -1)
        {
          sub_10034BBF0();
        }

        v14 = qword_100456870;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          modelIdentifier2 = [(IDSDevice *)selfCopy->_pairedDevice modelIdentifier];
          v16 = modelIdentifier2;
          uTF8String = [modelIdentifier2 UTF8String];
          *buf = 136315138;
          *&buf[4] = uTF8String;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Companion model is %s", buf, 0xCu);
        }

        if (!_companionCompatibility)
        {
          if (selfCopy->_hasMsgVersion)
          {
            _companionCompatibility = 1;
            goto LABEL_50;
          }

          productBuildVersion2 = [(IDSDevice *)selfCopy->_pairedDevice productBuildVersion];
          v19 = +[NSCharacterSet uppercaseLetterCharacterSet];
          v20 = [productBuildVersion2 componentsSeparatedByCharactersInSet:v19];

          v21 = [v20 objectAtIndexedSubscript:0];
          v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%c", [productBuildVersion2 characterAtIndex:{objc_msgSend(v21, "length")}]);

          if (qword_100456868 != -1)
          {
            sub_10034BBF0();
          }

          v23 = qword_100456870;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            modelIdentifier3 = [(IDSDevice *)selfCopy->_pairedDevice modelIdentifier];
            v25 = modelIdentifier3;
            uTF8String2 = [modelIdentifier3 UTF8String];
            v27 = [v20 objectAtIndexedSubscript:0];
            v28 = [v20 objectAtIndexedSubscript:1];
            *buf = 136315906;
            *&buf[4] = uTF8String2;
            *&buf[12] = 2112;
            *&buf[14] = v27;
            *&buf[22] = 2112;
            *&buf[24] = v28;
            *&buf[32] = 2112;
            *&buf[34] = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "build %s, number %@ %@, letter %@", buf, 0x2Au);
          }

          if ([(IDSDevice *)selfCopy->_pairedDevice deviceType]== 2)
          {
            v29 = [v20 objectAtIndexedSubscript:0];
            v30 = [v29 intValue] > 20;

            if (!v30)
            {
              v31 = [v20 objectAtIndexedSubscript:0];
              v32 = [v31 intValue] < 20;

              if (v32)
              {
                goto LABEL_43;
              }

              if ([@"D" compare:v22] == 1)
              {
                v33 = [@"C" compare:v22];
                if (v33 != 1)
                {
                  if (!v33)
                  {
                    v34 = 3;
LABEL_44:
                    _companionCompatibility = v34;
                  }

LABEL_45:
                  if (qword_100456868 != -1)
                  {
                    sub_10034BBF0();
                  }

                  v44 = qword_100456870;
                  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
                  {
                    hasMsgVersion = selfCopy->_hasMsgVersion;
                    *buf = 67109376;
                    *&buf[4] = hasMsgVersion;
                    *&buf[8] = 1024;
                    *&buf[10] = _companionCompatibility;
                    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Companion hasMsgVersion:%d, companionCompatibility:%d", buf, 0xEu);
                  }

                  goto LABEL_50;
                }

LABEL_43:
                v34 = 2;
                goto LABEL_44;
              }
            }
          }

          else
          {
            if ([(IDSDevice *)selfCopy->_pairedDevice deviceType]!= 6)
            {
              goto LABEL_45;
            }

            v35 = [v20 objectAtIndexedSubscript:0];
            v36 = [v35 intValue] > 20;

            if (!v36)
            {
              v37 = [v20 objectAtIndexedSubscript:0];
              v38 = [v37 intValue] < 20;

              if (v38)
              {
                goto LABEL_43;
              }

              v39 = [@"S" compare:v22];
              if (v39 == 1)
              {
                goto LABEL_43;
              }

              if (v39 != -1)
              {
                v40 = [v20 objectAtIndexedSubscript:1];
                v41 = [v40 intValue] < 601;

                if (v41)
                {
                  v42 = [v20 objectAtIndexedSubscript:1];
                  v43 = [v42 intValue] < 301;

                  if (v43)
                  {
                    v34 = 2;
                  }

                  else
                  {
                    v34 = 3;
                  }

                  goto LABEL_44;
                }
              }
            }
          }

          v34 = 1;
          selfCopy->_hasMsgVersion = 1;
          goto LABEL_44;
        }
      }

      v6 = v6 + 1;
    }

    while (v4 != v6);
    v4 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_50:

  v46 = selfCopy;
  if (isConnected != selfCopy->_isConnected)
  {
    if (qword_100456868 != -1)
    {
      sub_10034BBF0();
      v46 = selfCopy;
    }

    v47 = qword_100456870;
    if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v46->_isConnected;
      *buf = 67240448;
      *&buf[4] = isConnected;
      *&buf[8] = 1026;
      *&buf[10] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Paired device connection changed: before: %{public}d, after: %{public}d", buf, 0xEu);
    }

    statusHandler = v46->_statusHandler;
    if (statusHandler)
    {
      v50 = v46->_isConnected;
      pairedDevice = v46->_pairedDevice;
      v52 = CFAbsoluteTimeGetCurrent();
      (statusHandler)[2](statusHandler, v50, pairedDevice, v52);
      v46 = selfCopy;
    }

    else
    {
      if (qword_100456868 != -1)
      {
        sub_10034BBF0();
        v46 = selfCopy;
      }

      v53 = qword_100456870;
      if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Status handler is nil", buf, 2u);
      }
    }
  }

  companionStatusHandler = v46->_companionStatusHandler;
  if (companionStatusHandler)
  {
    if (v46->_isConnected)
    {
      v55 = 1;
    }

    else
    {
      v55 = 0xFFFFFFFFLL;
    }

    if (isConnected == v46->_isConnected)
    {
      if (v57 - v46->_lastUpdateSpuTs >= 0xF4241)
      {
        companionStatusHandler[2](Current);
        goto LABEL_73;
      }
    }

    else
    {
      (companionStatusHandler[2])(companionStatusHandler, v57, v55, Current);
LABEL_73:
      selfCopy->_lastUpdateSpuTs = v57;
    }
  }

  else
  {
    if (qword_100456868 != -1)
    {
      sub_10034BBF0();
    }

    v56 = qword_100456870;
    if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "companionStatusHandler is nil", buf, 2u);
    }
  }
}

- (id)downgradeMsgToOlderType:(id)type type:(int *)a4
{
  typeCopy = type;
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v6 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a4;
    *buf = 67109120;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "downgradeMsgToOlderType - msg type to downgrade: %d", buf, 8u);
  }

  if ((*a4 - 101) > 1)
  {
    if (qword_100456868 != -1)
    {
      sub_10034BBF0();
    }

    v10 = qword_100456870;
    if (!os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    v11 = *a4;
    *buf = 67109120;
    v26 = v11;
    v12 = "No downgrade needed for this message type: %d";
    v13 = buf;
    v14 = v10;
    v15 = OS_LOG_TYPE_DEBUG;
    v16 = 8;
    goto LABEL_21;
  }

  if (*a4 == 101)
  {
    v8 = 4;
  }

  else
  {
    v8 = 5;
  }

  *a4 = v8;
  *buf = 1;
  [typeCopy getBytes:buf length:40];
  if (_companionCompatibility == 3)
  {
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v9 = [NSData dataWithBytes:&v20 length:36];
    goto LABEL_23;
  }

  if (_companionCompatibility == 2)
  {
    v20 = v26;
    v21 = v27;
    v22 = v28;
    LODWORD(v23) = v29;
    v9 = [NSData dataWithBytes:&v20 length:28];
    goto LABEL_23;
  }

  if (qword_100456868 != -1)
  {
    sub_10034BBF0();
  }

  v17 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    v12 = "Unknown companion compatibility";
    v13 = &v20;
    v14 = v17;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 2;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v14, v15, v12, v13, v16);
  }

LABEL_22:
  v9 = typeCopy;
LABEL_23:
  v18 = v9;

  return v18;
}

- (void)sendData:(id)data type:(int)type
{
  v4 = *&type;
  dataCopy = data;
  [(CompanionDelegate *)self updateIDSStatus];
  if (self->_isConnected)
  {
    v23 = v4;
    if (v4 < 101 || self->_hasMsgVersion)
    {
      v7 = dataCopy;
    }

    else
    {
      v7 = [(CompanionDelegate *)self downgradeMsgToOlderType:dataCopy type:&v23];
      v4 = v23;
    }

    v34[0] = @"type";
    v8 = [NSNumber numberWithInt:v4];
    v34[1] = @"payload";
    v35[0] = v8;
    v35[1] = v7;
    v9 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];

    v32[0] = IDSSendMessageOptionTimeoutKey;
    v10 = [NSNumber numberWithDouble:2.0];
    v33[0] = v10;
    v33[1] = &__kCFBooleanTrue;
    v32[1] = IDSSendMessageOptionLocalDeliveryKey;
    v32[2] = IDSSendMessageOptionEncryptPayloadKey;
    v33[2] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:3];

    idsService = self->_idsService;
    v13 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v21 = 0;
    v22 = 0;
    v14 = [(IDSService *)idsService sendMessage:v9 toDestinations:v13 priority:300 options:v11 identifier:&v22 error:&v21];
    v15 = v22;
    v16 = v21;

    if (qword_100456868 != -1)
    {
      sub_10034BBF0();
    }

    v17 = qword_100456870;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = v15;
      uTF8String = [v15 UTF8String];
      v20 = [v7 length];
      *buf = 136315906;
      v25 = uTF8String;
      v26 = 2048;
      v27 = v20;
      v28 = 1024;
      v29 = v23;
      v30 = 1024;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Sending message: ID:%s size: %lu type: %d over IDSService - Status %d", buf, 0x22u);
    }
  }
}

- (void)receivedMessage:(int)message data:(id)data identifierString:(id)string
{
  v6 = *&message;
  dataCopy = data;
  stringCopy = string;
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v10 = qword_100456870;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v20 = 136315650;
    uTF8String = [stringCopy UTF8String];
    v22 = 1024;
    v23 = v6;
    v24 = 2048;
    v25 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Received message: ID:%s, type:%d, size %lu", &v20, 0x1Cu);
  }

  if (v6)
  {
    messageHandler = self->_messageHandler;
    if (messageHandler)
    {
      Current = CFAbsoluteTimeGetCurrent();
      messageHandler[2](messageHandler, v6, dataCopy, Current);
      if (v6 == 11 && !self->_hasMsgVersion)
      {
        self->_hasMsgVersion = 1;
      }

      goto LABEL_21;
    }

    if (qword_100456868 != -1)
    {
      sub_10034BBF0();
    }

    v15 = qword_100456870;
    if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      v16 = "Message handler is nil";
      v17 = v15;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v17, v18, v16, &v20, 2u);
    }
  }

  else
  {
    testTriggerHandler = self->_testTriggerHandler;
    if (testTriggerHandler)
    {
      v14 = CFAbsoluteTimeGetCurrent();
      testTriggerHandler[2](testTriggerHandler, v14);
      goto LABEL_21;
    }

    if (qword_100456868 != -1)
    {
      sub_10034BBF0();
    }

    v19 = qword_100456870;
    if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      v16 = "Test trigger handler is nil";
      v17 = v19;
      v18 = OS_LOG_TYPE_DEBUG;
      goto LABEL_20;
    }
  }

LABEL_21:
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v13 = [messageCopy valueForKey:@"type"];
  intValue = [v13 intValue];

  v15 = [messageCopy valueForKey:@"payload"];
  v16 = [[NSString alloc] initWithData:v15 encoding:4];
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v17 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138413314;
    v20 = v16;
    v21 = 2112;
    v22 = v15;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = contextCopy;
    v27 = 1024;
    v28 = intValue;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Received string: %@ data: %@ from: %@ context: %@ type: %d", &v19, 0x30u);
  }

  outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
  [(CompanionDelegate *)self receivedMessage:intValue data:v15 identifierString:outgoingResponseIdentifier];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  v15 = +[CSTimeManager SPU_estimate_current_timestamp];
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v17 = qword_100456870;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [NSNumber numberWithBool:successCopy];
    v21 = 138413058;
    v22 = identifierCopy;
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = errorCopy;
    v27 = 2112;
    v28 = contextCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Did send message %@ success %@ error %@ context %@", &v21, 0x2Au);
  }

  companionStatusHandler = self->_companionStatusHandler;
  if (companionStatusHandler)
  {
    if (successCopy)
    {
      v20 = 2;
    }

    else
    {
      v20 = 4294967294;
    }

    companionStatusHandler[2](companionStatusHandler, v15, v20, Current);
  }
}

@end