@interface MTRNetworkCommissioningClusterNetworkConfigResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRNetworkCommissioningClusterNetworkConfigResponseParams)init;
- (MTRNetworkCommissioningClusterNetworkConfigResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRNetworkCommissioningClusterNetworkConfigResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRNetworkCommissioningClusterNetworkConfigResponseParams

- (MTRNetworkCommissioningClusterNetworkConfigResponseParams)init
{
  v11.receiver = self;
  v11.super_class = MTRNetworkCommissioningClusterNetworkConfigResponseParams;
  v2 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    networkingStatus = v2->_networkingStatus;
    v2->_networkingStatus = &unk_284C3E4C8;

    debugText = v3->_debugText;
    v3->_debugText = 0;

    networkIndex = v3->_networkIndex;
    v3->_networkIndex = 0;

    clientIdentity = v3->_clientIdentity;
    v3->_clientIdentity = 0;

    possessionSignature = v3->_possessionSignature;
    v3->_possessionSignature = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterNetworkConfigResponseParams);
  networkingStatus = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self networkingStatus];
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 setNetworkingStatus:networkingStatus];

  debugText = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self debugText];
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 setDebugText:debugText];

  networkIndex = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self networkIndex];
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 setNetworkIndex:networkIndex];

  clientIdentity = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self clientIdentity];
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 setClientIdentity:clientIdentity];

  possessionSignature = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self possessionSignature];
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 setPossessionSignature:possessionSignature];

  timedInvokeTimeoutMs = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self timedInvokeTimeoutMs];
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  networkingStatus = self->_networkingStatus;
  debugText = self->_debugText;
  networkIndex = self->_networkIndex;
  v9 = [(NSData *)self->_clientIdentity base64EncodedStringWithOptions:0];
  v10 = [(NSData *)self->_possessionSignature base64EncodedStringWithOptions:0];
  v11 = [v3 stringWithFormat:@"<%@: networkingStatus:%@ debugText:%@; networkIndex:%@; clientIdentity:%@; possessionSignature:%@; >", v5, networkingStatus, debugText, networkIndex, v9, v10];;

  return v11;
}

- (MTRNetworkCommissioningClusterNetworkConfigResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v15.receiver = self;
  v15.super_class = MTRNetworkCommissioningClusterNetworkConfigResponseParams;
  v7 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 8), *(v14 + 24));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12[0] = 0;
      v12[8] = 0;
      v12[32] = 0;
      v12[40] = 0;
      v12[64] = 0;
      v8 = sub_238F205B4(v12, v13);
      if (!v8)
      {
        v8 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTRNetworkCommissioningClusterNetworkConfigResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRNetworkCommissioningClusterNetworkConfigResponseParams;
  v4 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setNetworkingStatus:v5];

  if (*(struct + 8) == 1)
  {
    v7 = sub_238DE36B8(struct + 8, v6);
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v7 length:v7[1] encoding:4];
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setDebugText:v8];

    debugText = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self debugText];

    if (!debugText)
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v12 = 0x17C500000000;
      v13 = 47;
      goto LABEL_15;
    }
  }

  else
  {
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setDebugText:0];
  }

  if (*(struct + 32) == 1)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(struct + 32, v10)->super.isa)}];
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setNetworkIndex:v14];
  }

  else
  {
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setNetworkIndex:0];
  }

  if (*(struct + 40) == 1)
  {
    v16 = sub_238DE36B8(struct + 40, v15);
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:*v16 length:v16[1]];
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setClientIdentity:v17];
  }

  else
  {
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setClientIdentity:0];
  }

  v20 = *(struct + 64);
  v19 = struct + 64;
  if (v20 == 1)
  {
    v21 = sub_238DE36B8(v19, v18);
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:*v21 length:v21[1]];
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setPossessionSignature:v22];
  }

  else
  {
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setPossessionSignature:0];
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
LABEL_15:
  v23 = v13 | v12;
  result.mFile = v11;
  result.mError = v23;
  result.mLine = HIDWORD(v23);
  return result;
}

@end