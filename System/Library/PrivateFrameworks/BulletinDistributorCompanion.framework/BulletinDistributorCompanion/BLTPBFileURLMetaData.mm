@interface BLTPBFileURLMetaData
- (BLTPBFileURLMetaData)initWithMetadata:(id)metadata sequenceNumberManager:(id)manager;
- (BLTPBFileURLMetaData)initWithSequenceNumberManager:(id)manager extraMetadata:(id)metadata;
- (id)transportData;
@end

@implementation BLTPBFileURLMetaData

- (BLTPBFileURLMetaData)initWithSequenceNumberManager:(id)manager extraMetadata:(id)metadata
{
  v29[2] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  metadataCopy = metadata;
  v25.receiver = self;
  v25.super_class = BLTPBFileURLMetaData;
  v8 = [(BLTPBFileURLMetaData *)&v25 init];
  if (v8)
  {
    v9 = [BLTPBTransportData transportDataWithSequenceNumberManager:managerCopy];
    data = [v9 data];

    if (metadataCopy && data)
    {
      v28[0] = @"t";
      v28[1] = @"x";
      v29[0] = data;
      v29[1] = metadataCopy;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v29;
      v14 = v28;
      v15 = 2;
    }

    else
    {
      if (!data)
      {
        p_super = blt_ids_log(v11);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [(BLTPBFileURLMetaData *)managerCopy initWithSequenceNumberManager:v19 extraMetadata:v20, v21, v22, v23, v24];
        }

        goto LABEL_8;
      }

      v26 = @"t";
      v27 = data;
      v12 = MEMORY[0x277CBEAC0];
      v13 = &v27;
      v14 = &v26;
      v15 = 1;
    }

    v16 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
    p_super = &v8->_metadata->super;
    v8->_metadata = v16;
LABEL_8:

    objc_storeStrong(&v8->_extraMetadata, metadata);
  }

  return v8;
}

- (BLTPBFileURLMetaData)initWithMetadata:(id)metadata sequenceNumberManager:(id)manager
{
  v42 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  managerCopy = manager;
  v9 = [metadataCopy objectForKeyedSubscript:@"t"];

  if (v9)
  {
    v11 = [BLTPBTransportData alloc];
    v12 = [metadataCopy objectForKeyedSubscript:@"t"];
    v13 = [(BLTPBTransportData *)v11 initWithData:v12];

    if (v13)
    {
      v33.receiver = self;
      v33.super_class = BLTPBFileURLMetaData;
      v15 = [(BLTPBFileURLMetaData *)&v33 init];
      if (v15)
      {
        v16 = [metadataCopy objectForKeyedSubscript:@"x"];
        extraMetadata = v15->_extraMetadata;
        v15->_extraMetadata = v16;

        objc_storeStrong(&v15->_metadata, metadata);
        hasSequenceNumber = [(BLTPBTransportData *)v13 hasSequenceNumber];
        if (hasSequenceNumber)
        {
          backwardsCompatibleSessionState = [(BLTPBTransportData *)v13 backwardsCompatibleSessionState];
          v15->_sessionState = backwardsCompatibleSessionState;
          v20 = blt_ids_log(backwardsCompatibleSessionState);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            serviceName = [managerCopy serviceName];
            sequenceNumber = [(BLTPBTransportData *)v13 sequenceNumber];
            sessionUUID = [(BLTPBTransportData *)v13 sessionUUID];
            uUIDString = [sessionUUID UUIDString];
            v25 = uUIDString;
            v26 = "startAck";
            sessionState = v15->_sessionState;
            if (sessionState == 1)
            {
              v26 = "start";
            }

            *buf = 138413058;
            v36 = 2048;
            v35 = serviceName;
            v37 = sequenceNumber;
            if (!sessionState)
            {
              v26 = "normal";
            }

            v38 = 2112;
            v39 = uUIDString;
            v40 = 2080;
            v41 = v26;
            _os_log_impl(&dword_241FB3000, v20, OS_LOG_TYPE_INFO, "Sequence number attached to incoming fileURL on service %@: %llu session: %@ state: %s", buf, 0x2Au);
          }

          v15->_sequenceNumberError = [(BLTPBTransportData *)v13 setSequenceNumberOnManager:managerCopy];
        }

        else
        {
          v31 = blt_ids_log(hasSequenceNumber);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_241FB3000, v31, OS_LOG_TYPE_INFO, "Received message without sequence number", buf, 2u);
          }
        }
      }

      self = v15;
      selfCopy = self;
    }

    else
    {
      v30 = blt_ids_log(v14);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = metadataCopy;
        _os_log_impl(&dword_241FB3000, v30, OS_LOG_TYPE_ERROR, "No transport data. Metadata: %@", buf, 0xCu);
      }

      _BLTCaptureBug(@"BLTPBFileURLMetaDataMissingTransportData");
      selfCopy = 0;
    }
  }

  else
  {
    v28 = blt_ids_log(v10);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = metadataCopy;
      _os_log_impl(&dword_241FB3000, v28, OS_LOG_TYPE_ERROR, "No transport data. Metadata: %@", buf, 0xCu);
    }

    _BLTCaptureBug(@"BLTPBFileURLMetadataTransportDataKey is nil");
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)transportData
{
  v3 = [BLTPBTransportData alloc];
  v4 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"t"];
  v5 = [(BLTPBTransportData *)v3 initWithData:v4];

  return v5;
}

- (void)initWithSequenceNumberManager:(uint64_t)a3 extraMetadata:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, a2, a3, "BLTPBFileURLMetaData initWithSequenceNumberManager %@: transportData was nil!", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end