@interface MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams

- (MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams)init
{
  v8.receiver = self;
  v8.super_class = MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams;
  v2 = [(MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    arg1 = v2->_arg1;
    v2->_arg1 = array;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams);
  arg1 = [(MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams *)self arg1];
  [(MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams *)v4 setArg1:arg1];

  timedInvokeTimeoutMs = [(MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams *)self serverSideProcessingTimeout];
  [(MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: arg1:%@ >", v5, self->_arg1];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = 0uLL;
  v15[0] = 0;
  v15[1] = 0;
  v14 = v15;
  arg1 = [(MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams *)self arg1];
  v4 = [arg1 count] == 0;

  if (!v4)
  {
    operator new();
  }

  v16 = 0uLL;
  sub_2393D9C18(0x62FuLL, 0, &v13);
  if (v13)
  {
    sub_2393C7B90(buf);
    v19 = 0;
    v20 = 0;
    v18 = &unk_284BB83A8;
    v21 = 0;
    sub_238EA16C4(&v18, &v13, 0);
    sub_2393C7BF0(buf, &v18, 0xFFFFFFFF);
    v6 = sub_238F30CB0(&v16, buf, 0x100uLL);
    v7 = v6;
    if (v6 || (v6 = sub_238DD2EFC(buf, &v13), v7 = v6, v6))
    {
      v8 = v5;
    }

    else
    {
      sub_238DD2F90(reader, &v13);
      v6 = sub_2393C7114(reader, 21, 256);
      v8 = v9;
      v7 = v6;
    }

    v18 = &unk_284BB83A8;
    sub_238EA1758(&v20);
    sub_238EA1758(&v19);
  }

  else
  {
    v6 = 0xB8D800000000;
    v8 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v7 = 11;
  }

  sub_238EA1758(&v13);
  sub_238EA1790(&v14);
  v10 = v6 & 0xFFFFFFFF00000000 | v7;
  v11 = v8;
  result.mFile = v11;
  result.mError = v10;
  result.mLine = HIDWORD(v10);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRUnitTestingClusterTestListNestedStructListArgumentRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xB8F500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end