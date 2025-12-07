@interface MTRUnitTestingClusterTestNestedStructListArgumentRequestParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRUnitTestingClusterTestNestedStructListArgumentRequestParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestNestedStructListArgumentRequestParams

- (MTRUnitTestingClusterTestNestedStructListArgumentRequestParams)init
{
  v8.receiver = self;
  v8.super_class = MTRUnitTestingClusterTestNestedStructListArgumentRequestParams;
  v2 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    arg1 = v2->_arg1;
    v2->_arg1 = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams);
  arg1 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)v4 setArg1:arg1];

  timedInvokeTimeoutMs = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self serverSideProcessingTimeout];
  [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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
  v85 = *MEMORY[0x277D85DE8];
  *v67 = 0;
  v68 = 0;
  unsignedCharValue = 0;
  v73 = 0;
  v74 = 0;
  LOBYTE(v75) = 0;
  v70 = 0u;
  v71 = 0u;
  unsignedCharValue2 = 0;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v66[0] = 0;
  v66[1] = 0;
  v65 = v66;
  arg1 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v5 = [arg1 a];
  v67[0] = [v5 unsignedCharValue];

  arg12 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v7 = [arg12 b];
  v67[1] = [v7 BOOLValue];

  arg13 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v9 = [arg13 c];
  v10 = [v9 a];
  LOBYTE(v68) = [v10 unsignedCharValue];

  arg14 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v12 = [arg14 c];
  v13 = [v12 b];
  HIBYTE(v68) = [v13 BOOLValue];

  arg15 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v15 = [arg15 c];
  v15C = [v15 c];
  unsignedCharValue = [v15C unsignedCharValue];

  arg16 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v18 = [arg16 c];
  v19 = [v18 d];
  v20 = v19;
  sub_238DB6950(buf, [v19 bytes], objc_msgSend(v19, "length"));

  v70 = *buf;
  arg17 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v22 = [arg17 c];
  v23 = [v22 e];
  v24 = v23;
  sub_238DB9BD8(buf, [v23 UTF8String], objc_msgSend(v23, "lengthOfBytesUsingEncoding:", 4));

  v71 = *buf;
  arg18 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v26 = [arg18 c];
  v27 = [v26 f];
  unsignedCharValue2 = [v27 unsignedCharValue];

  arg19 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v29 = [arg19 c];
  v30 = [v29 g];
  [v30 floatValue];
  v73 = v31;

  arg110 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v33 = [arg110 c];
  v34 = [v33 h];
  [v34 doubleValue];
  v74 = v35;

  arg111 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v37 = [arg111 c];
  v38 = [v37 i];
  v39 = v38 == 0;

  if (!v39)
  {
    v75 = 1;
    arg112 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
    v41 = [arg112 c];
    v42 = [v41 i];
    HIBYTE(v75) = [v42 unsignedCharValue];
  }

  arg113 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v44 = [arg113 d];
  v45 = [v44 count] == 0;

  if (!v45)
  {
    operator new();
  }

  v76 = 0uLL;
  arg114 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v47 = [arg114 e];
  v48 = [v47 count] == 0;

  if (!v48)
  {
    operator new();
  }

  v77 = 0uLL;
  arg115 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v50 = [arg115 f];
  v51 = [v50 count] == 0;

  if (!v51)
  {
    operator new();
  }

  v78 = 0uLL;
  arg116 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self arg1];
  v53 = [arg116 g];
  v54 = [v53 count] == 0;

  if (!v54)
  {
    operator new();
  }

  v79 = 0uLL;
  sub_2393D9C18(0x62FuLL, 0, &v64);
  if (v64)
  {
    sub_2393C7B90(buf);
    v82 = 0;
    v83 = 0;
    v81 = &unk_284BB83A8;
    v84 = 0;
    sub_238EA16C4(&v81, &v64, 0);
    sub_2393C7BF0(buf, &v81, 0xFFFFFFFF);
    v55 = sub_238F30BC8(v67, buf, 0x100uLL);
    v57 = v55;
    if (v55 || (v55 = sub_238DD2EFC(buf, &v64), v57 = v55, v55))
    {
      v58 = v56;
    }

    else
    {
      sub_238DD2F90(reader, &v64);
      v55 = sub_2393C7114(reader, 21, 256);
      v58 = v62;
      v57 = v55;
    }

    v59 = v55 & 0xFFFFFFFF00000000;
    v81 = &unk_284BB83A8;
    sub_238EA1758(&v83);
    sub_238EA1758(&v82);
  }

  else
  {
    v59 = 0xB79900000000;
    v58 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v57 = 11;
  }

  sub_238EA1758(&v64);
  sub_238EA1790(&v65);
  v60 = v57 | v59;
  v61 = v58;
  result.mFile = v61;
  result.mError = v60;
  result.mLine = HIDWORD(v60);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRUnitTestingClusterTestNestedStructListArgumentRequestParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xB7B600000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end