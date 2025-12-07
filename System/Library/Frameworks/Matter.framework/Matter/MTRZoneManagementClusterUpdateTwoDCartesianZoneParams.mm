@interface MTRZoneManagementClusterUpdateTwoDCartesianZoneParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRZoneManagementClusterUpdateTwoDCartesianZoneParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRZoneManagementClusterUpdateTwoDCartesianZoneParams

- (MTRZoneManagementClusterUpdateTwoDCartesianZoneParams)init
{
  v10.receiver = self;
  v10.super_class = MTRZoneManagementClusterUpdateTwoDCartesianZoneParams;
  v2 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    zoneID = v2->_zoneID;
    v2->_zoneID = &unk_284C3E4C8;

    v5 = objc_opt_new();
    zone = v3->_zone;
    v3->_zone = v5;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams);
  zoneID = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zoneID];
  [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)v4 setZoneID:zoneID];

  v6 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zone];
  [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)v4 setZone:v6];

  timedInvokeTimeoutMs = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self timedInvokeTimeoutMs];
  [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self serverSideProcessingTimeout];
  [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: zoneID:%@ zone:%@; >", v5, self->_zoneID, self->_zone];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v43 = *MEMORY[0x277D85DE8];
  unsignedShortValue = 0;
  v32 = 0uLL;
  unsignedCharValue = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  zoneID = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zoneID];
  unsignedShortValue = [zoneID unsignedShortValue];

  v5 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zone];
  name = [v5 name];
  v7 = name;
  sub_238DB9BD8(buf, [name UTF8String], objc_msgSend(name, "lengthOfBytesUsingEncoding:", 4));

  v32 = *buf;
  v8 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zone];
  v9 = [v8 use];
  unsignedCharValue = [v9 unsignedCharValue];

  v10 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zone];
  vertices = [v10 vertices];
  v12 = [vertices count] == 0;

  if (!v12)
  {
    operator new();
  }

  v34 = 0;
  v35 = 0;
  v13 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zone];
  color = [v13 color];
  v15 = color == 0;

  if (!v15)
  {
    v36 = 1;
    v37 = 0uLL;
    v16 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zone];
    color2 = [v16 color];
    v18 = color2;
    sub_238DB9BD8(buf, [color2 UTF8String], objc_msgSend(color2, "lengthOfBytesUsingEncoding:", 4));

    v37 = *buf;
  }

  sub_2393D9C18(0x62FuLL, 0, &v28);
  if (v28)
  {
    sub_2393C7B90(buf);
    v40 = 0;
    v41 = 0;
    v39 = &unk_284BB83A8;
    v42 = 0;
    sub_238EA16C4(&v39, &v28, 0);
    sub_2393C7BF0(buf, &v39, 0xFFFFFFFF);
    v19 = sub_238F34688(&unsignedShortValue, buf, 0x100uLL);
    v21 = v19;
    if (v19 || (v19 = sub_238DD2EFC(buf, &v28), v21 = v19, v19))
    {
      v22 = v20;
    }

    else
    {
      sub_238DD2F90(reader, &v28);
      v19 = sub_2393C7114(reader, 21, 256);
      v22 = v26;
      v21 = v19;
    }

    v23 = v19 & 0xFFFFFFFF00000000;
    v39 = &unk_284BB83A8;
    sub_238EA1758(&v41);
    sub_238EA1758(&v40);
  }

  else
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v23 = 0x833B00000000;
    v21 = 11;
  }

  sub_238EA1758(&v28);
  sub_238EA1790(&v29);
  v24 = v23 | v21;
  v25 = v22;
  result.mFile = v25;
  result.mError = v24;
  result.mLine = HIDWORD(v24);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x835800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end