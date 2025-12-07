@interface MTRChannelClusterCancelRecordProgramParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRChannelClusterCancelRecordProgramParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRChannelClusterCancelRecordProgramParams

- (MTRChannelClusterCancelRecordProgramParams)init
{
  v13.receiver = self;
  v13.super_class = MTRChannelClusterCancelRecordProgramParams;
  v2 = [(MTRChannelClusterCancelRecordProgramParams *)&v13 init];
  v3 = v2;
  if (v2)
  {
    programIdentifier = v2->_programIdentifier;
    v2->_programIdentifier = &stru_284BD0DD8;

    shouldRecordSeries = v3->_shouldRecordSeries;
    v3->_shouldRecordSeries = &unk_284C3E4C8;

    array = [MEMORY[0x277CBEA60] array];
    externalIDList = v3->_externalIDList;
    v3->_externalIDList = array;

    data = [MEMORY[0x277CBEA90] data];
    data = v3->_data;
    v3->_data = data;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRChannelClusterCancelRecordProgramParams);
  programIdentifier = [(MTRChannelClusterCancelRecordProgramParams *)self programIdentifier];
  [(MTRChannelClusterCancelRecordProgramParams *)v4 setProgramIdentifier:programIdentifier];

  shouldRecordSeries = [(MTRChannelClusterCancelRecordProgramParams *)self shouldRecordSeries];
  [(MTRChannelClusterCancelRecordProgramParams *)v4 setShouldRecordSeries:shouldRecordSeries];

  externalIDList = [(MTRChannelClusterCancelRecordProgramParams *)self externalIDList];
  [(MTRChannelClusterCancelRecordProgramParams *)v4 setExternalIDList:externalIDList];

  data = [(MTRChannelClusterCancelRecordProgramParams *)self data];
  [(MTRChannelClusterCancelRecordProgramParams *)v4 setData:data];

  timedInvokeTimeoutMs = [(MTRChannelClusterCancelRecordProgramParams *)self timedInvokeTimeoutMs];
  [(MTRChannelClusterCancelRecordProgramParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRChannelClusterCancelRecordProgramParams *)self serverSideProcessingTimeout];
  [(MTRChannelClusterCancelRecordProgramParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  programIdentifier = self->_programIdentifier;
  shouldRecordSeries = self->_shouldRecordSeries;
  externalIDList = self->_externalIDList;
  v9 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  v10 = [v3 stringWithFormat:@"<%@: programIdentifier:%@ shouldRecordSeries:%@; externalIDList:%@; data:%@; >", v5, programIdentifier, shouldRecordSeries, externalIDList, v9];;

  return v10;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v32 = *MEMORY[0x277D85DE8];
  v23 = 0uLL;
  bOOLValue = 0;
  v25 = 0u;
  v26 = 0u;
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  programIdentifier = [(MTRChannelClusterCancelRecordProgramParams *)self programIdentifier];
  v5 = programIdentifier;
  sub_238DB9BD8(buf, [programIdentifier UTF8String], objc_msgSend(programIdentifier, "lengthOfBytesUsingEncoding:", 4));

  v23 = *buf;
  shouldRecordSeries = [(MTRChannelClusterCancelRecordProgramParams *)self shouldRecordSeries];
  bOOLValue = [shouldRecordSeries BOOLValue];

  externalIDList = [(MTRChannelClusterCancelRecordProgramParams *)self externalIDList];
  v8 = [externalIDList count] == 0;

  if (!v8)
  {
    operator new();
  }

  v25 = 0uLL;
  data = [(MTRChannelClusterCancelRecordProgramParams *)self data];
  v10 = data;
  sub_238DB6950(buf, [data bytes], objc_msgSend(data, "length"));

  v26 = *buf;
  sub_2393D9C18(0x62FuLL, 0, &v20);
  if (v20)
  {
    sub_2393C7B90(buf);
    v29 = 0;
    v30 = 0;
    v28 = &unk_284BB83A8;
    v31 = 0;
    sub_238EA16C4(&v28, &v20, 0);
    sub_2393C7BF0(buf, &v28, 0xFFFFFFFF);
    v11 = sub_238F06020(&v23, buf, 0x100uLL);
    v13 = v11;
    if (v11 || (v11 = sub_238DD2EFC(buf, &v20), v13 = v11, v11))
    {
      v14 = v12;
    }

    else
    {
      sub_238DD2F90(reader, &v20);
      v11 = sub_2393C7114(reader, 21, 256);
      v14 = v18;
      v13 = v11;
    }

    v15 = v11 & 0xFFFFFFFF00000000;
    v28 = &unk_284BB83A8;
    sub_238EA1758(&v30);
    sub_238EA1758(&v29);
  }

  else
  {
    v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v15 = 0x70C000000000;
    v13 = 11;
  }

  sub_238EA1758(&v20);
  sub_238EA1790(&v21);
  v16 = v15 | v13;
  v17 = v14;
  result.mFile = v17;
  result.mError = v16;
  result.mLine = HIDWORD(v16);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRChannelClusterCancelRecordProgramParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (value)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *value = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (value && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x70DD00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end