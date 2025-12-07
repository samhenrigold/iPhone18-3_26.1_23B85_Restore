@interface MTRUnitTestingClusterTestStructArrayArgumentRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRUnitTestingClusterTestStructArrayArgumentRequestParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestStructArrayArgumentRequestParams

- (MTRUnitTestingClusterTestStructArrayArgumentRequestParams)init
{
  v16.receiver = self;
  v16.super_class = MTRUnitTestingClusterTestStructArrayArgumentRequestParams;
  v2 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)&v16 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    arg1 = v2->_arg1;
    v2->_arg1 = array;

    array2 = [MEMORY[0x277CBEA60] array];
    arg2 = v2->_arg2;
    v2->_arg2 = array2;

    array3 = [MEMORY[0x277CBEA60] array];
    arg3 = v2->_arg3;
    v2->_arg3 = array3;

    array4 = [MEMORY[0x277CBEA60] array];
    arg4 = v2->_arg4;
    v2->_arg4 = array4;

    arg5 = v2->_arg5;
    v2->_arg5 = &unk_284C3E4C8;

    arg6 = v2->_arg6;
    v2->_arg6 = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestStructArrayArgumentRequestParams);
  arg1 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg1];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setArg1:arg1];

  arg2 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg2];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setArg2:arg2];

  arg3 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg3];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setArg3:arg3];

  arg4 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg4];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setArg4:arg4];

  arg5 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg5];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setArg5:arg5];

  arg6 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg6];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setArg6:arg6];

  timedInvokeTimeoutMs = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self serverSideProcessingTimeout];
  [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: arg1:%@ arg2:%@; arg3:%@; arg4:%@; arg5:%@; arg6:%@; >", v5, self->_arg1, self->_arg2, self->_arg3, self->_arg4, self->_arg5, self->_arg6];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  arg1 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg1];
  v5 = [arg1 count] == 0;

  if (!v5)
  {
    operator new();
  }

  v25 = 0uLL;
  arg2 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg2];
  v7 = [arg2 count] == 0;

  if (!v7)
  {
    operator new();
  }

  v26 = 0uLL;
  arg3 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg3];
  v9 = [arg3 count] == 0;

  if (!v9)
  {
    operator new();
  }

  v27 = 0uLL;
  arg4 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg4];
  v11 = [arg4 count] == 0;

  if (!v11)
  {
    operator new();
  }

  v28 = 0uLL;
  arg5 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg5];
  LOBYTE(v29) = [arg5 unsignedCharValue];

  arg6 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self arg6];
  HIBYTE(v29) = [arg6 BOOLValue];

  sub_2393D9C18(0x62FuLL, 0, &v22);
  if (v22)
  {
    sub_2393C7B90(buf);
    v32 = 0;
    v33 = 0;
    v31 = &unk_284BB83A8;
    v34 = 0;
    sub_238EA16C4(&v31, &v22, 0);
    sub_2393C7BF0(buf, &v31, 0xFFFFFFFF);
    v17 = sub_238F30180(&v25, buf, 0x100uLL);
    v18 = v17;
    if (v17 || (v17 = sub_238DD2EFC(buf, &v22), v18 = v17, v17))
    {
      v19 = v16;
    }

    else
    {
      sub_238DD2F90(reader, &v22);
      v17 = sub_2393C7114(reader, 21, 256);
      v19 = v20;
      v18 = v17;
    }

    v31 = &unk_284BB83A8;
    sub_238EA1758(&v33);
    sub_238EA1758(&v32);
  }

  else
  {
    v17 = 0xB19900000000;
    v19 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v18 = 11;
  }

  sub_238EA1758(&v22);
  sub_238EA1790(&v23);
  v12 = v17 & 0xFFFFFFFF00000000 | v18;
  v13 = v19;
  result.mFile = v13;
  result.mError = v12;
  result.mLine = HIDWORD(v12);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRUnitTestingClusterTestStructArrayArgumentRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xB1B600000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end