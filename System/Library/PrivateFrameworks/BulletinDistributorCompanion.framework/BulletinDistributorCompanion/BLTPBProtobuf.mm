@interface BLTPBProtobuf
- (BLTPBProtobuf)initWithIDSProtobuf:(id)protobuf sequenceNumberManager:(id)manager;
- (BLTPBProtobuf)initWithProtobuf:(id)protobuf type:(unsigned __int16)type isResponse:(BOOL)response sequenceNumberManager:(id)manager;
@end

@implementation BLTPBProtobuf

- (BLTPBProtobuf)initWithProtobuf:(id)protobuf type:(unsigned __int16)type isResponse:(BOOL)response sequenceNumberManager:(id)manager
{
  typeCopy = type;
  responseCopy = response;
  protobufCopy = protobuf;
  v52 = *MEMORY[0x277D85DE8];
  protobufCopy2 = protobuf;
  managerCopy = manager;
  v10 = objc_alloc_init(MEMORY[0x277D43178]);
  [protobufCopy2 writeTo:v10];
  data = [v10 data];
  if (!data)
  {
    v12 = blt_ids_log(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BLTPBProtobuf *)protobufCopy2 initWithProtobuf:v12 type:v13 isResponse:v14 sequenceNumberManager:v15, v16, v17, v18];
    }
  }

  v19 = [BLTPBTransportData transportDataWithSequenceNumberManager:managerCopy];
  if (BLTIsDebugOrInternalBuild(v19, v20))
  {
    [data MD5:buf];
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];
    [v19 setMd5:v21];
  }

  data2 = [v19 data];
  v23 = [data2 length];

  v47 = v23;
  v24 = v23 >> 16;
  if (v23 >> 16)
  {
    v47 = 0;
  }

  else
  {
    data3 = [v19 data];
    [data appendData:data3];
  }

  v26 = blt_ids_log([data appendBytes:&v47 length:2]);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    serviceName = [managerCopy serviceName];
    if (v24)
    {
      v33 = @"not added";
    }

    else
    {
      v39 = MEMORY[0x277CCACA8];
      v40 = protobufCopy;
      sequenceNumber = [v19 sequenceNumber];
      currentSessionIdentifier = [managerCopy currentSessionIdentifier];
      [currentSessionIdentifier UUIDString];
      v30 = v29 = protobufCopy2;
      sessionState = [v19 sessionState];
      v32 = "startAck";
      if (sessionState == 1)
      {
        v32 = "start";
      }

      if (!sessionState)
      {
        v32 = "normal";
      }

      v41 = v30;
      v37 = sequenceNumber;
      v38 = v30;
      protobufCopy2 = v29;
      protobufCopy = v40;
      v33 = [v39 stringWithFormat:@"%llu session: %@ state: %s", v37, v38, v32];
    }

    *buf = 138412546;
    v49 = serviceName;
    v50 = 2112;
    v51 = v33;
    _os_log_impl(&dword_241FB3000, v26, OS_LOG_TYPE_INFO, "Sequence number attached to outgoing protobuf on service %@: %@", buf, 0x16u);
    if (!v24)
    {
    }
  }

  v46.receiver = self;
  v46.super_class = BLTPBProtobuf;
  v34 = [(BLTPBProtobuf *)&v46 initWithProtobufData:data type:typeCopy isResponse:responseCopy];
  v35 = v34;
  if (v34)
  {
    objc_storeStrong(&v34->_protobuf, protobufCopy);
  }

  return v35;
}

- (BLTPBProtobuf)initWithIDSProtobuf:(id)protobuf sequenceNumberManager:(id)manager
{
  v68 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  managerCopy = manager;
  v9 = managerCopy;
  if (!protobufCopy)
  {
    v20 = blt_ids_log(managerCopy);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241FB3000, v20, OS_LOG_TYPE_ERROR, "IDSProtobuf is nil", buf, 2u);
    }

    v19 = @"BLTPBProtobufNilIDSProtobuf";
    goto LABEL_13;
  }

  data = [protobufCopy data];

  if (!data)
  {
    v21 = blt_ids_log(v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      extendedDescription = [protobufCopy extendedDescription];
      *buf = 138412290;
      *&buf[4] = extendedDescription;
      _os_log_impl(&dword_241FB3000, v21, OS_LOG_TYPE_ERROR, "IDSProtobuf contains nil data: %@", buf, 0xCu);
    }

    v19 = @"BLTPBProtobufNilIDSProtobufData";
    goto LABEL_13;
  }

  data2 = [protobufCopy data];
  v13 = [data2 length];

  if (v13 > 1)
  {
    data3 = [protobufCopy data];
    v26 = [data3 length] - 2;
    bytes = [data3 bytes];
    v28 = *(bytes + v26);
    if (v26 < v28)
    {
      v29 = blt_ids_log(bytes);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        extendedDescription2 = [protobufCopy extendedDescription];
        *buf = 134218498;
        *&buf[4] = v26;
        *&buf[12] = 2048;
        *&buf[14] = v28;
        v62 = 2112;
        v63 = extendedDescription2;
        _os_log_impl(&dword_241FB3000, v29, OS_LOG_TYPE_ERROR, "IDSProtobuf transport data length is too big. Message data length: %lu transport data length: %lu protobof: %@", buf, 0x20u);
      }

      _BLTCaptureBug(@"BLTPBProtobufTransportDataLengthTooBig");
      goto LABEL_19;
    }

    v31 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(data3 length:"bytes") freeWhenDone:{v26 - v28, 0}];
    v60.receiver = self;
    v60.super_class = BLTPBProtobuf;
    v32 = -[BLTPBProtobuf initWithProtobufData:type:isResponse:](&v60, sel_initWithProtobufData_type_isResponse_, v31, [protobufCopy type], objc_msgSend(protobufCopy, "isResponse"));

    if (v32)
    {
      context = [protobufCopy context];
      [(BLTPBProtobuf *)v32 setContext:context];

      objc_storeStrong(&v32->_idsProtobuf, protobuf);
      if (v28)
      {
        transportData = [protobufCopy transportData];
        v35 = transportData;
        if (!transportData)
        {

          v56 = blt_ids_log(v55);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            extendedDescription3 = [protobufCopy extendedDescription];
            *buf = 138412290;
            *&buf[4] = extendedDescription3;
            _os_log_impl(&dword_241FB3000, v56, OS_LOG_TYPE_ERROR, "No transport data.  Protobuf: %@", buf, 0xCu);
          }

          v44 = @"BLTPBProtobufTransportDataDecodeFail";
          goto LABEL_46;
        }

        if ([transportData hasMd5])
        {
          data4 = [(BLTPBProtobuf *)v32 data];
          [data4 MD5:buf];

          v37 = [v35 md5];
          bytes2 = [v37 bytes];
          v39 = *buf == *bytes2 && *&buf[8] == bytes2[1];
          v40 = !v39;

          if (v40)
          {

            v42 = blt_ids_log(v41);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              extendedDescription4 = [protobufCopy extendedDescription];
              *v66 = 138412290;
              v67 = extendedDescription4;
              _os_log_impl(&dword_241FB3000, v42, OS_LOG_TYPE_ERROR, "IDSProtobuf contains bad data.  Protobuf: %@", v66, 0xCu);
            }

            v44 = @"BLTPBProtobufTransportDataBad";
LABEL_46:
            _BLTCaptureBug(v44);

            self = 0;
LABEL_19:
            selfCopy = 0;
LABEL_52:

            goto LABEL_14;
          }
        }

        hasSequenceNumber = [v35 hasSequenceNumber];
        if (hasSequenceNumber)
        {
          backwardsCompatibleSessionState = [v35 backwardsCompatibleSessionState];
          v32->_sessionState = backwardsCompatibleSessionState;
          v47 = blt_ids_log(backwardsCompatibleSessionState);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            serviceName = [v9 serviceName];
            sequenceNumber = [v35 sequenceNumber];
            sessionUUID = [v35 sessionUUID];
            uUIDString = [sessionUUID UUIDString];
            v51 = uUIDString;
            sessionState = v32->_sessionState;
            v53 = "startAck";
            if (sessionState == 1)
            {
              v53 = "start";
            }

            *buf = 138413058;
            *&buf[12] = 2048;
            *&buf[4] = serviceName;
            *&buf[14] = sequenceNumber;
            if (sessionState)
            {
              v54 = v53;
            }

            else
            {
              v54 = "normal";
            }

            v62 = 2112;
            v63 = uUIDString;
            v64 = 2080;
            v65 = v54;
            _os_log_impl(&dword_241FB3000, v47, OS_LOG_TYPE_INFO, "Sequence number attached to incoming protobuf on service %@: %llu session: %@ state: %s", buf, 0x2Au);
          }

          v32->_sequenceNumberError = [v35 setSequenceNumberOnManager:v9];
        }

        else
        {
          v58 = blt_ids_log(hasSequenceNumber);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_241FB3000, v58, OS_LOG_TYPE_INFO, "Received message without sequence number", buf, 2u);
          }
        }
      }
    }

    self = v32;
    selfCopy = self;
    goto LABEL_52;
  }

  v15 = blt_ids_log(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    data5 = [protobufCopy data];
    v17 = [data5 length];
    extendedDescription5 = [protobufCopy extendedDescription];
    *buf = 134218242;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = extendedDescription5;
    _os_log_impl(&dword_241FB3000, v15, OS_LOG_TYPE_ERROR, "IDSProtobuf missing transport data. Protobuf length: %lu protobof: %@", buf, 0x16u);
  }

  v19 = @"BLTPBProtobufMissingTransportData";
LABEL_13:
  _BLTCaptureBug(v19);
  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (void)initWithProtobuf:(uint64_t)a3 type:(uint64_t)a4 isResponse:(uint64_t)a5 sequenceNumberManager:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, a2, a3, "PBDataWriter failed to create NSData object for protobuf %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end