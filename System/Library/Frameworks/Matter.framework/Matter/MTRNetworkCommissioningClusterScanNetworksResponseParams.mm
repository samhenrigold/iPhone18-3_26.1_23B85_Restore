@interface MTRNetworkCommissioningClusterScanNetworksResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRNetworkCommissioningClusterScanNetworksResponseParams)init;
- (MTRNetworkCommissioningClusterScanNetworksResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRNetworkCommissioningClusterScanNetworksResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRNetworkCommissioningClusterScanNetworksResponseParams

- (MTRNetworkCommissioningClusterScanNetworksResponseParams)init
{
  v10.receiver = self;
  v10.super_class = MTRNetworkCommissioningClusterScanNetworksResponseParams;
  v2 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    networkingStatus = v2->_networkingStatus;
    v2->_networkingStatus = &unk_284C3E4C8;

    debugText = v3->_debugText;
    v3->_debugText = 0;

    wiFiScanResults = v3->_wiFiScanResults;
    v3->_wiFiScanResults = 0;

    threadScanResults = v3->_threadScanResults;
    v3->_threadScanResults = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterScanNetworksResponseParams);
  networkingStatus = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self networkingStatus];
  [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v4 setNetworkingStatus:networkingStatus];

  debugText = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self debugText];
  [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v4 setDebugText:debugText];

  wiFiScanResults = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self wiFiScanResults];
  [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v4 setWiFiScanResults:wiFiScanResults];

  threadScanResults = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self threadScanResults];
  [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v4 setThreadScanResults:threadScanResults];

  timedInvokeTimeoutMs = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self timedInvokeTimeoutMs];
  [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: networkingStatus:%@ debugText:%@; wiFiScanResults:%@; threadScanResults:%@; >", v5, self->_networkingStatus, self->_debugText, self->_wiFiScanResults, self->_threadScanResults];;

  return v6;
}

- (MTRNetworkCommissioningClusterScanNetworksResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v16.receiver = self;
  v16.super_class = MTRNetworkCommissioningClusterScanNetworksResponseParams;
  v7 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)&v16 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v8, *(v15 + 8), *(v15 + 24));
    v9 = sub_2393C6FD0(v14, 256);
    if (!v9)
    {
      v13[0] = 0;
      v13[8] = 0;
      v13[32] = 0;
      v13[112] = 0;
      v9 = sub_238F20004(v13, v14);
      if (!v9)
      {
        v9 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v7 _setFieldsFromDecodableStruct:v13];
        if (!v9)
        {
          v11 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v9, v10, error);
  }

  v11 = 0;
LABEL_8:
  sub_238EA1758(&v15);
LABEL_10:

  return v11;
}

- (MTRNetworkCommissioningClusterScanNetworksResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRNetworkCommissioningClusterScanNetworksResponseParams;
  v4 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*struct];
  [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self setNetworkingStatus:v5];

  if (*(struct + 8) == 1)
  {
    v7 = sub_238DE36B8(struct + 8, v6);
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v7 length:v7[1] encoding:4];
    [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self setDebugText:v8];

    debugText = [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self debugText];

    if (!debugText)
    {
      v10 = 0x15EE00000000;
      v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v12 = 47;
      goto LABEL_31;
    }
  }

  else
  {
    [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self setDebugText:0];
  }

  selfCopy = self;
  if (*(struct + 32) == 1)
  {
    v13 = objc_opt_new();
    v15 = sub_238DE36B8(struct + 32, v14);
    sub_2393C5AAC(v45);
    v43 = 0;
    v44 = 0;
    sub_2393C5BDC(v45, v15);
    v46[0] = 0;
    memset(&v46[8], 0, 36);
    while (1)
    {
      v16 = sub_238EA1A80(&v43);
      LODWORD(v17) = v43;
      if (v43)
      {
        v16 = 0;
      }

      if (!v16)
      {
        break;
      }

      memset(v46, 0, 44);
      v17 = sub_238F21058(v46, v45);
      v43 = v17;
      v44 = v18;
      if (v17)
      {
        break;
      }

      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v46[0]];
      [v19 setSecurity:v20];

      v21 = [MEMORY[0x277CBEA90] dataWithBytes:*&v46[8] length:?];
      [v19 setSsid:v21];

      v22 = [MEMORY[0x277CBEA90] dataWithBytes:*&v46[24] length:?];
      [v19 setBssid:v22];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&v46[40]];
      [v19 setChannel:v23];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v46[42]];
      [v19 setWiFiBand:v24];

      v25 = [MEMORY[0x277CCABB0] numberWithChar:v46[43]];
      [v19 setRssi:v25];

      [v13 addObject:v19];
    }

    self = selfCopy;
    if (v17 != 33)
    {
      v12 = v43;
      if (v43)
      {
        v10 = v43 & 0xFFFFFFFF00000000;
        v11 = v44;
LABEL_30:

        goto LABEL_31;
      }
    }

    [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)selfCopy setWiFiScanResults:v13];
  }

  else
  {
    [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self setWiFiScanResults:0];
  }

  v27 = *(struct + 112);
  v26 = struct + 112;
  if (v27 == 1)
  {
    v13 = objc_opt_new();
    v29 = sub_238DE36B8(v26, v28);
    sub_2393C5AAC(v45);
    v43 = 0;
    v44 = 0;
    sub_2393C5BDC(v45, v29);
    *v46 = 0;
    memset(&v46[8], 0, 27);
    *&v46[40] = 0;
    v47 = 0;
    v48 = 0;
    while (sub_238EA1A80(&v43) && sub_238EA1EA0(&v43))
    {
      v30 = objc_opt_new();
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*v46];
      [v30 setPanId:v31];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v46[8]];
      [v30 setExtendedPanId:v32];

      v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*&v46[16] length:*&v46[24] encoding:4];
      [v30 setNetworkName:v33];

      networkName = [v30 networkName];

      if (!networkName)
      {

        v10 = 0x161D00000000;
        v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
        v12 = 47;
        goto LABEL_30;
      }

      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&v46[32]];
      [v30 setChannel:v35];

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v46[34]];
      [v30 setVersion:v36];

      v37 = [MEMORY[0x277CBEA90] dataWithBytes:*&v46[40] length:v47];
      [v30 setExtendedAddress:v37];

      v38 = [MEMORY[0x277CCABB0] numberWithChar:v48];
      [v30 setRssi:v38];

      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v48)];
      [v30 setLqi:v39];

      [v13 addObject:v30];
    }

    if (v43 != 33)
    {
      v12 = v43;
      if (v43)
      {
        v11 = v44;
        v10 = v43 & 0xFFFFFFFF00000000;
        goto LABEL_30;
      }
    }

    [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)selfCopy setThreadScanResults:v13];
  }

  else
  {
    [(MTRNetworkCommissioningClusterScanNetworksResponseParams *)self setThreadScanResults:0];
  }

  v11 = 0;
  v10 = 0;
  v12 = 0;
LABEL_31:
  v40 = v12 | v10;
  v41 = v11;
  result.mFile = v41;
  result.mError = v40;
  result.mLine = HIDWORD(v40);
  return result;
}

@end