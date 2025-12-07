@interface MTROperationalCredentialsClusterNOCResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTROperationalCredentialsClusterNOCResponseParams)init;
- (MTROperationalCredentialsClusterNOCResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTROperationalCredentialsClusterNOCResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROperationalCredentialsClusterNOCResponseParams

- (MTROperationalCredentialsClusterNOCResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTROperationalCredentialsClusterNOCResponseParams;
  v2 = [(MTROperationalCredentialsClusterNOCResponseParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    statusCode = v2->_statusCode;
    v2->_statusCode = &unk_284C3E4C8;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = 0;

    debugText = v3->_debugText;
    v3->_debugText = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROperationalCredentialsClusterNOCResponseParams);
  statusCode = [(MTROperationalCredentialsClusterNOCResponseParams *)self statusCode];
  [(MTROperationalCredentialsClusterNOCResponseParams *)v4 setStatusCode:statusCode];

  v6 = objc_msgSend_fabricIndex(self);
  [(MTROperationalCredentialsClusterNOCResponseParams *)v4 setFabricIndex:v6];

  debugText = [(MTROperationalCredentialsClusterNOCResponseParams *)self debugText];
  [(MTROperationalCredentialsClusterNOCResponseParams *)v4 setDebugText:debugText];

  timedInvokeTimeoutMs = [(MTROperationalCredentialsClusterNOCResponseParams *)self timedInvokeTimeoutMs];
  [(MTROperationalCredentialsClusterNOCResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: statusCode:%@ fabricIndex:%@; debugText:%@; >", v5, self->_statusCode, self->_fabricIndex, self->_debugText];;

  return v6;
}

- (MTROperationalCredentialsClusterNOCResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v16.receiver = self;
  v16.super_class = MTROperationalCredentialsClusterNOCResponseParams;
  v7 = [(MTROperationalCredentialsClusterNOCResponseParams *)&v16 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v14, *(v15 + 8), *(v15 + 24));
    v8 = sub_2393C6FD0(v14, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_238F22050(&v12, v14);
      if (!v8)
      {
        v8 = [(MTROperationalCredentialsClusterNOCResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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
  sub_238EA1758(&v15);
LABEL_10:

  return v10;
}

- (MTROperationalCredentialsClusterNOCResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTROperationalCredentialsClusterNOCResponseParams;
  v4 = [(MTROperationalCredentialsClusterNOCResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTROperationalCredentialsClusterNOCResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTROperationalCredentialsClusterNOCResponseParams *)self setStatusCode:v5];

  if (*(struct + 1) == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(struct + 1, v6)->super.isa)}];
    [(MTROperationalCredentialsClusterNOCResponseParams *)self setFabricIndex:v7];
  }

  else
  {
    [(MTROperationalCredentialsClusterNOCResponseParams *)self setFabricIndex:0];
  }

  v10 = *(struct + 8);
  v9 = struct + 8;
  if (v10 != 1)
  {
    [(MTROperationalCredentialsClusterNOCResponseParams *)self setDebugText:0];
    goto LABEL_8;
  }

  v11 = sub_238DE36B8(v9, v8);
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v11 length:v11[1] encoding:4];
  [(MTROperationalCredentialsClusterNOCResponseParams *)self setDebugText:v12];

  debugText = [(MTROperationalCredentialsClusterNOCResponseParams *)self debugText];

  if (debugText)
  {
LABEL_8:
    v15 = 0;
    v16 = 0;
    v14 = 0;
    goto LABEL_9;
  }

  v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  v15 = 0x24BB00000000;
  v16 = 47;
LABEL_9:
  v17 = v16 | v15;
  result.mFile = v14;
  result.mError = v17;
  result.mLine = HIDWORD(v17);
  return result;
}

@end