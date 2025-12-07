@interface MTRDiagnosticLogsClusterRetrieveLogsResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRDiagnosticLogsClusterRetrieveLogsResponseParams)init;
- (MTRDiagnosticLogsClusterRetrieveLogsResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRDiagnosticLogsClusterRetrieveLogsResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDiagnosticLogsClusterRetrieveLogsResponseParams

- (MTRDiagnosticLogsClusterRetrieveLogsResponseParams)init
{
  v11.receiver = self;
  v11.super_class = MTRDiagnosticLogsClusterRetrieveLogsResponseParams;
  v2 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    data = [MEMORY[0x277CBEA90] data];
    logContent = v3->_logContent;
    v3->_logContent = data;

    utcTimeStamp = v3->_utcTimeStamp;
    v3->_utcTimeStamp = 0;

    timeSinceBoot = v3->_timeSinceBoot;
    v3->_timeSinceBoot = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDiagnosticLogsClusterRetrieveLogsResponseParams);
  status = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self status];
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v4 setStatus:status];

  logContent = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self logContent];
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v4 setLogContent:logContent];

  utcTimeStamp = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self utcTimeStamp];
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v4 setUtcTimeStamp:utcTimeStamp];

  timeSinceBoot = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self timeSinceBoot];
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v4 setTimeSinceBoot:timeSinceBoot];

  timedInvokeTimeoutMs = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self timedInvokeTimeoutMs];
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  status = self->_status;
  v7 = [(NSData *)self->_logContent base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: status:%@ logContent:%@; utcTimeStamp:%@; timeSinceBoot:%@; >", v5, status, v7, self->_utcTimeStamp, self->_timeSinceBoot];;

  return v8;
}

- (MTRDiagnosticLogsClusterRetrieveLogsResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v19.receiver = self;
  v19.super_class = MTRDiagnosticLogsClusterRetrieveLogsResponseParams;
  v7 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)&v19 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v18)
  {
    sub_2393C5AAC(v17);
    sub_2393C5ADC(v17, *(v18 + 8), *(v18 + 24));
    v8 = sub_2393C6FD0(v17, 256);
    if (!v8)
    {
      v12[0] = 0;
      v16 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = sub_238F10328(v12, v17);
      if (!v8)
      {
        v8 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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
  sub_238EA1758(&v18);
LABEL_10:

  return v10;
}

- (MTRDiagnosticLogsClusterRetrieveLogsResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRDiagnosticLogsClusterRetrieveLogsResponseParams;
  v4 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self setStatus:v5];

  v6 = [MEMORY[0x277CBEA90] dataWithBytes:*(struct + 1) length:*(struct + 2)];
  [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self setLogContent:v6];

  if (*(struct + 24) == 1)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(struct + 24, v7)}];
    [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self setUtcTimeStamp:v8];
  }

  else
  {
    [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self setUtcTimeStamp:0];
  }

  v11 = *(struct + 40);
  v10 = struct + 40;
  if (v11 == 1)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v10, v9)}];
    [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self setTimeSinceBoot:v12];
  }

  else
  {
    [(MTRDiagnosticLogsClusterRetrieveLogsResponseParams *)self setTimeSinceBoot:0];
  }

  v13 = 0;
  v14 = 0;
  result.mFile = v14;
  result.mError = v13;
  result.mLine = HIDWORD(v13);
  return result;
}

@end