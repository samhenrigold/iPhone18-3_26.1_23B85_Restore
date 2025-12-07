@interface NFCISO15693ReaderSessionTag
+ (BOOL)decodeIdentifier:(id)identifier manufacturerCode:(unint64_t *)code serialNumber:(id *)number;
+ (id)reverseByteOrder:(id)order;
- (BOOL)_transceiveWithData:(id)data receivedData:(id *)receivedData commandConfig:(id)config error:(id *)error;
- (NSData)icSerialNumber;
- (NSData)identifier;
- (id)_parseResponseData:(id)data outError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)_parseResponseErrorWithData:(id)data;
- (unint64_t)icManufacturerCode;
- (void)authenticateWithRequestFlags:(unsigned __int8)flags cryptoSuiteIdentifier:(int64_t)identifier message:(id)message completionHandler:(id)handler;
- (void)challengeWithRequestFlags:(unsigned __int8)flags cryptoSuiteIdentifier:(int64_t)identifier message:(id)message completionHandler:(id)handler;
- (void)customCommandWithRequestFlag:(unsigned __int8)flag customCommandCode:(int64_t)code customRequestParameters:(id)parameters completionHandler:(id)handler;
- (void)extendedFastReadMultipleBlocksWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler;
- (void)extendedGetMultipleBlockSecurityStatusWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler;
- (void)extendedLockBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(int64_t)number completionHandler:(id)handler;
- (void)extendedReadMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range completionHandler:(id)handler;
- (void)extendedReadSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(int64_t)number completionHandler:(id)handler;
- (void)extendedWriteMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range dataBlocks:(id)blocks completionHandler:(id)handler;
- (void)extendedWriteSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(int64_t)number dataBlock:(id)block completionHandler:(id)handler;
- (void)fastReadMultipleBlocksWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler;
- (void)getMultipleBlockSecurityStatusWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler;
- (void)getSystemInfoAndUIDWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler;
- (void)getSystemInfoWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler;
- (void)keyUpdateWithRequestFlags:(unsigned __int8)flags keyIdentifier:(int64_t)identifier message:(id)message completionHandler:(id)handler;
- (void)lockAFIWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler;
- (void)lockBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(unsigned __int8)number completionHandler:(id)handler;
- (void)lockDFSIDWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler;
- (void)lockDSFIDWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler;
- (void)readBufferWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler;
- (void)readMultipleBlocksWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)readMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range completionHandler:(id)handler;
- (void)readSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(unsigned __int8)number completionHandler:(id)handler;
- (void)resetToReadyWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler;
- (void)selectWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler;
- (void)sendCustomCommandWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)sendRequestWithFlag:(int64_t)flag commandCode:(int64_t)code data:(id)data completionHandler:(id)handler;
- (void)stayQuietWithCompletionHandler:(id)handler;
- (void)writeAFIWithRequestFlag:(unsigned __int8)flag afi:(unsigned __int8)afi completionHandler:(id)handler;
- (void)writeDSFIDWithRequestFlag:(unsigned __int8)flag dsfid:(unsigned __int8)dsfid completionHandler:(id)handler;
- (void)writeMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range dataBlocks:(id)blocks completionHandler:(id)handler;
- (void)writeSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(unsigned __int8)number dataBlock:(id)block completionHandler:(id)handler;
@end

@implementation NFCISO15693ReaderSessionTag

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = NFCISO15693ReaderSessionTag;
  return [(NFCTag *)&v4 copyWithZone:zone];
}

- (BOOL)_transceiveWithData:(id)data receivedData:(id *)receivedData commandConfig:(id)config error:(id *)error
{
  dataCopy = data;
  configCopy = config;
  maximumRetries = [configCopy maximumRetries];
  if (maximumRetries <= +[NFCTag _MaxRetry](NFCTag, "_MaxRetry") && ([configCopy retryInterval], v14 = v13, +[NFCTag _MaxRetryInterval](NFCTag, "_MaxRetryInterval"), v14 <= v15) && (objc_msgSend(configCopy, "retryInterval"), v16 >= 0.0))
  {
    maximumRetries2 = [configCopy maximumRetries];
    _getInternalReaderSession = [(NFCTag *)self _getInternalReaderSession];
    if (_getInternalReaderSession)
    {
      v19 = maximumRetries2 + 1;
      if (maximumRetries2 == -1)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        while (1)
        {
          v22 = v20;
          v27 = v20;
          [(NFCTag *)self _transceiveWithSession:_getInternalReaderSession sendData:dataCopy receivedData:receivedData error:&v27, _getInternalReaderSession];
          v20 = v27;

          if (error)
          {
            v23 = v20;
            *error = v20;
          }

          if (!v20 || [v20 code] == 202)
          {
            break;
          }

          if (v21 < maximumRetries2)
          {
            [configCopy retryInterval];
            usleep((v24 * 1000000.0));
          }

          if (v19 == ++v21)
          {
            v21 = maximumRetries2 + 1;
            break;
          }
        }
      }

      if (error && v21 == v19)
      {
        *error = [NFCError errorWithCode:101];
      }

      v17 = v20 == 0;
    }

    else if (error)
    {
      [NFCError errorWithCode:103];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else if (error)
  {
    [NFCError errorWithCode:300];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)_parseResponseErrorWithData:(id)data
{
  bytes = [data bytes];
  if (*bytes)
  {
    return bytes[1];
  }

  else
  {
    return 0;
  }
}

+ (id)reverseByteOrder:(id)order
{
  orderCopy = order;
  bytes = [orderCopy bytes];
  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(orderCopy, "length")}];
  v6 = [orderCopy length];
  if (v6 - 1 >= 0)
  {
    v7 = -v6;
    v8 = bytes + v6 - 1;
    do
    {
      [v5 appendBytes:v8-- length:1];
    }

    while (!__CFADD__(v7++, 1));
  }

  return v5;
}

+ (BOOL)decodeIdentifier:(id)identifier manufacturerCode:(unint64_t *)code serialNumber:(id *)number
{
  identifierCopy = identifier;
  if ([identifierCopy length] != 8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NFCISO15693ReaderSessionTag.m" lineNumber:242 description:@"Invalid UID length"];
  }

  v10 = [identifierCopy length];
  if (v10 == 8)
  {
    if (code)
    {
      *code = *([identifierCopy bytes] + 1);
    }

    if (number)
    {
      *number = [identifierCopy subdataWithRange:{2, 6}];
    }
  }

  return v10 == 8;
}

- (NSData)identifier
{
  v5.receiver = self;
  v5.super_class = NFCISO15693ReaderSessionTag;
  identifier = [(NFCTag *)&v5 identifier];
  v3 = [NFCISO15693ReaderSessionTag reverseByteOrder:identifier];

  return v3;
}

- (unint64_t)icManufacturerCode
{
  v5 = 0;
  identifier = [(NFCISO15693ReaderSessionTag *)self identifier];
  v3 = [NFCISO15693ReaderSessionTag decodeIdentifier:identifier manufacturerCode:&v5 serialNumber:0];

  if (v3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (NSData)icSerialNumber
{
  identifier = [(NFCISO15693ReaderSessionTag *)self identifier];
  v8 = 0;
  v3 = [NFCISO15693ReaderSessionTag decodeIdentifier:identifier manufacturerCode:0 serialNumber:&v8];
  v4 = v8;

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  return v6;
}

- (id)_parseResponseData:(id)data outError:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = [(NFCISO15693ReaderSessionTag *)self _parseResponseErrorWithData:dataCopy];
  if (v7)
  {
    if (error)
    {
      v13 = @"ISO15693TagResponseErrorCode";
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      v14[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *error = [NFCError errorWithCode:102 userInfo:v9];
    }

    v10 = objc_opt_new();
  }

  else
  {
    if (error)
    {
      *error = 0;
    }

    v10 = [dataCopy subdataWithRange:{1, objc_msgSend(dataCopy, "length") - 1}];
  }

  v11 = v10;

  return v11;
}

- (void)sendCustomCommandWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v79 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  v9 = _os_activity_create(&dword_23728C000, "NFCISO15693ReaderSessionTag sendCustomCommandWithConfiguration:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v9, state);
  os_activity_scope_leave(state);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v15 = 45;
    if (isMetaClass)
    {
      v15 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i ", v15, ClassName, Name, 303);
  }

  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = object_getClass(self);
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    v19 = object_getClassName(self);
    v20 = sel_getName(a2);
    *state = 67109890;
    *&state[4] = v18;
    *&state[8] = 2082;
    *&state[10] = v19;
    v71 = 2082;
    v72 = v20;
    v73 = 1024;
    v74 = 303;
    _os_log_impl(&dword_23728C000, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", state, 0x22u);
  }

  v69 = 0;
  v21 = [configurationCopy asNSDataWithError:&v69];
  v22 = v69;
  if (v22)
  {
    v23 = v22;
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(self);
      v27 = class_isMetaClass(v26);
      v56 = object_getClassName(self);
      v59 = sel_getName(a2);
      v28 = 45;
      if (v27)
      {
        v28 = 43;
      }

      v25(3, "%c[%{public}s %{public}s]:%i %@ in commandConfiguration asNSDataWithError", v28, v56, v59, 320, v23);
    }

    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(self);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      v32 = object_getClassName(self);
      v33 = sel_getName(a2);
      *state = 67110146;
      *&state[4] = v31;
      *&state[8] = 2082;
      *&state[10] = v32;
      v71 = 2082;
      v72 = v33;
      v73 = 1024;
      v74 = 320;
      v75 = 2112;
      v76 = v23;
      _os_log_impl(&dword_23728C000, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ in commandConfiguration asNSDataWithError", state, 0x2Cu);
    }

    v34 = 0;
    v35 = 0;
  }

  else
  {
    v67 = 0;
    v68 = 0;
    [(NFCISO15693ReaderSessionTag *)self _transceiveWithData:v21 receivedData:&v68 commandConfig:configurationCopy error:&v67];
    v35 = v68;
    v36 = v67;
    if (v36 || [v35 length] < 2)
    {
      sel = a2;
      v23 = [NFCError errorWithCode:100];

      v37 = NFLogGetLogger();
      if (v37)
      {
        v38 = v37;
        v39 = object_getClass(self);
        v40 = class_isMetaClass(v39);
        v41 = configurationCopy;
        v42 = v21;
        v43 = handlerCopy;
        v44 = object_getClassName(self);
        v45 = sel_getName(sel);
        v60 = [v35 length];
        v46 = 45;
        if (v40)
        {
          v46 = 43;
        }

        v57 = v44;
        handlerCopy = v43;
        v21 = v42;
        configurationCopy = v41;
        v38(3, "%c[%{public}s %{public}s]:%i %@ with response length = %lu", v46, v57, v45, 316, v23, v60);
      }

      v47 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = object_getClass(self);
        if (class_isMetaClass(v48))
        {
          v49 = 43;
        }

        else
        {
          v49 = 45;
        }

        v50 = object_getClassName(self);
        v51 = sel_getName(sel);
        v52 = [v35 length];
        *state = 67110402;
        *&state[4] = v49;
        *&state[8] = 2082;
        *&state[10] = v50;
        v71 = 2082;
        v72 = v51;
        v73 = 1024;
        v74 = 316;
        v75 = 2112;
        v76 = v23;
        v77 = 2048;
        v78 = v52;
        _os_log_impl(&dword_23728C000, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ with response length = %lu", state, 0x36u);
      }

      v34 = 0;
    }

    else
    {
      v66 = 0;
      v34 = [(NFCISO15693ReaderSessionTag *)self _parseResponseData:v35 outError:&v66];
      v23 = v66;
    }
  }

  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_2372ADA34;
  v62[3] = &unk_278A29C60;
  v64 = v23;
  v65 = handlerCopy;
  v63 = v34;
  v53 = v23;
  v54 = v34;
  v55 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v62];
}

- (void)readMultipleBlocksWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v91 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  v9 = _os_activity_create(&dword_23728C000, "NFCISO15693ReaderSessionTag readMultipleBlocksWithConfiguration:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v9, state);
  os_activity_scope_leave(state);

  v10 = objc_opt_new();
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v12 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v16 = 45;
    if (isMetaClass)
    {
      v16 = 43;
    }

    v12(6, "%c[%{public}s %{public}s]:%i ", v16, ClassName, Name, 336);
  }

  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    v20 = object_getClassName(self);
    v21 = sel_getName(a2);
    *state = 67109890;
    *&state[4] = v19;
    *&state[8] = 2082;
    *&state[10] = v20;
    v82 = 2082;
    v83 = v21;
    v84 = 1024;
    v85 = 336;
    _os_log_impl(&dword_23728C000, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", state, 0x22u);
  }

  v80.receiver = self;
  v80.super_class = NFCISO15693ReaderSessionTag;
  identifier = [(NFCTag *)&v80 identifier];
  v79 = 0;
  v23 = [configurationCopy asNSDataArrayWithUID:identifier error:&v79];
  v24 = v79;

  v68 = configurationCopy;
  if (v24)
  {
    v25 = NFLogGetLogger();
    if (v25)
    {
      v26 = v25;
      v27 = object_getClass(self);
      v28 = class_isMetaClass(v27);
      v59 = object_getClassName(self);
      v62 = sel_getName(a2);
      v29 = 45;
      if (v28)
      {
        v29 = 43;
      }

      v26(3, "%c[%{public}s %{public}s]:%i %@ in readConfiguration asNSDataArrayWithUID", v29, v59, v62, 366, v24);
    }

    v30 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = object_getClass(self);
      v32 = v23;
      if (class_isMetaClass(v31))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      v34 = object_getClassName(self);
      v35 = sel_getName(a2);
      *state = 67110146;
      *&state[4] = v33;
      v23 = v32;
      *&state[8] = 2082;
      *&state[10] = v34;
      v82 = 2082;
      v83 = v35;
      v84 = 1024;
      v85 = 366;
      v86 = 2112;
      v87 = v24;
      _os_log_impl(&dword_23728C000, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ in readConfiguration asNSDataArrayWithUID", state, 0x2Cu);
    }
  }

  else
  {
    sel = a2;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v30 = v23;
    v36 = [v30 countByEnumeratingWithState:&v75 objects:v90 count:16];
    if (v36)
    {
      v37 = v36;
      v64 = v23;
      v65 = handlerCopy;
      v67 = v10;
      v38 = *v76;
      while (2)
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v76 != v38)
          {
            objc_enumerationMutation(v30);
          }

          v40 = *(*(&v75 + 1) + 8 * i);
          v73 = 0;
          v74 = 0;
          [(NFCISO15693ReaderSessionTag *)self _transceiveWithData:v40 receivedData:&v74 commandConfig:configurationCopy error:&v73];
          v41 = v74;
          v24 = v73;
          if ([v41 length] >= 2)
          {
            v42 = [(NFCISO15693ReaderSessionTag *)self _parseResponseErrorWithData:v41];
            if (v42)
            {
              v88 = @"ISO15693TagResponseErrorCode";
              v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
              v89 = v43;
              v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
              v45 = [NFCError errorWithCode:102 userInfo:v44];

              configurationCopy = v68;
              v24 = v45;
            }

            else
            {
              v43 = [v41 subdataWithRange:{1, objc_msgSend(v41, "length") - 1}];
              [v67 appendData:v43];
            }
          }

          if (v24)
          {
            v46 = NFLogGetLogger();
            if (v46)
            {
              v47 = v46;
              v48 = object_getClass(self);
              v49 = class_isMetaClass(v48);
              v60 = object_getClassName(self);
              v63 = sel_getName(sel);
              v50 = 45;
              if (v49)
              {
                v50 = 43;
              }

              v47(3, "%c[%{public}s %{public}s]:%i %@", v50, v60, v63, 360, v24);
            }

            v51 = NFSharedLogGetLogger();
            v10 = v67;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v52 = object_getClass(self);
              if (class_isMetaClass(v52))
              {
                v53 = 43;
              }

              else
              {
                v53 = 45;
              }

              v54 = object_getClassName(self);
              v55 = sel_getName(sel);
              *state = 67110146;
              *&state[4] = v53;
              *&state[8] = 2082;
              *&state[10] = v54;
              v82 = 2082;
              v83 = v55;
              v84 = 1024;
              v85 = 360;
              v86 = 2112;
              v87 = v24;
              _os_log_impl(&dword_23728C000, v51, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", state, 0x2Cu);
            }

            v23 = v64;
            handlerCopy = v65;
            goto LABEL_45;
          }
        }

        v37 = [v30 countByEnumeratingWithState:&v75 objects:v90 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }

      v24 = 0;
      v23 = v64;
      handlerCopy = v65;
      v10 = v67;
    }

    else
    {
      v24 = 0;
    }
  }

LABEL_45:

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = sub_2372AE12C;
  v69[3] = &unk_278A29C60;
  v71 = v24;
  v72 = handlerCopy;
  v70 = v10;
  v56 = v24;
  v57 = v10;
  v58 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v69];
}

- (void)stayQuietWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2372AE224;
  v6[3] = &unk_278A29C38;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v6];
}

- (void)readSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(unsigned __int8)number completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AE320;
  v8[3] = &unk_278A29C38;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)writeSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(unsigned __int8)number dataBlock:(id)block completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AE434;
  v9[3] = &unk_278A29C38;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)lockBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(unsigned __int8)number completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AE530;
  v8[3] = &unk_278A29C38;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)readMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AE62C;
  v8[3] = &unk_278A29C38;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)writeMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range dataBlocks:(id)blocks completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AE740;
  v9[3] = &unk_278A29C38;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)selectWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AE83C;
  v7[3] = &unk_278A29C38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)resetToReadyWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AE938;
  v7[3] = &unk_278A29C38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)writeAFIWithRequestFlag:(unsigned __int8)flag afi:(unsigned __int8)afi completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AEA34;
  v8[3] = &unk_278A29C38;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)lockAFIWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AEB30;
  v7[3] = &unk_278A29C38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)writeDSFIDWithRequestFlag:(unsigned __int8)flag dsfid:(unsigned __int8)dsfid completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AEC2C;
  v8[3] = &unk_278A29C38;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)lockDFSIDWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AED28;
  v7[3] = &unk_278A29C38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)lockDSFIDWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AEE24;
  v7[3] = &unk_278A29C38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)getSystemInfoWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AEF20;
  v7[3] = &unk_278A29C38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)getSystemInfoAndUIDWithRequestFlag:(unsigned __int8)flag completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AF030;
  v7[3] = &unk_278A29C38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)getMultipleBlockSecurityStatusWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AF144;
  v8[3] = &unk_278A29C38;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)fastReadMultipleBlocksWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AF258;
  v8[3] = &unk_278A29C38;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)customCommandWithRequestFlag:(unsigned __int8)flag customCommandCode:(int64_t)code customRequestParameters:(id)parameters completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AF36C;
  v9[3] = &unk_278A29C38;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)extendedReadSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(int64_t)number completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AF480;
  v8[3] = &unk_278A29C38;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)extendedWriteSingleBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(int64_t)number dataBlock:(id)block completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AF594;
  v9[3] = &unk_278A29C38;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)extendedLockBlockWithRequestFlags:(unsigned __int8)flags blockNumber:(int64_t)number completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AF690;
  v8[3] = &unk_278A29C38;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)extendedReadMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AF78C;
  v8[3] = &unk_278A29C38;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)extendedWriteMultipleBlocksWithRequestFlags:(unsigned __int8)flags blockRange:(_NSRange)range dataBlocks:(id)blocks completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AF8A0;
  v9[3] = &unk_278A29C38;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)authenticateWithRequestFlags:(unsigned __int8)flags cryptoSuiteIdentifier:(int64_t)identifier message:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AF99C;
  v9[3] = &unk_278A29C38;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)keyUpdateWithRequestFlags:(unsigned __int8)flags keyIdentifier:(int64_t)identifier message:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AFAB4;
  v9[3] = &unk_278A29C38;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)challengeWithRequestFlags:(unsigned __int8)flags cryptoSuiteIdentifier:(int64_t)identifier message:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AFBCC;
  v9[3] = &unk_278A29C38;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)readBufferWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AFCC8;
  v7[3] = &unk_278A29C38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)extendedGetMultipleBlockSecurityStatusWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AFDE0;
  v8[3] = &unk_278A29C38;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)extendedFastReadMultipleBlocksWithRequestFlag:(unsigned __int8)flag blockRange:(_NSRange)range completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AFEF4;
  v8[3] = &unk_278A29C38;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)sendRequestWithFlag:(int64_t)flag commandCode:(int64_t)code data:(id)data completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372B0008;
  v9[3] = &unk_278A29C38;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

@end