@interface KCJoiningMessage
+ (id)encodeToDERType:(int)type data:(id)data payload:(id)payload error:(id *)error;
+ (id)messageWithDER:(id)r error:(id *)error;
+ (id)messageWithType:(int)type data:(id)data error:(id *)error;
+ (id)messageWithType:(int)type data:(id)data payload:(id)payload error:(id *)error;
+ (id)messageWithType:(int)type data:(id)data secondData:(id)secondData error:(id *)error;
+ (unint64_t)encodedSizeType:(int)type data:(id)data payload:(id)payload error:(id *)error;
- (BOOL)inflatePartsOfEncoding:(id *)encoding;
- (KCJoiningMessage)initWithDER:(id)r error:(id *)error;
- (KCJoiningMessage)initWithType:(int)type data:(id)data payload:(id)payload error:(id *)error;
@end

@implementation KCJoiningMessage

- (KCJoiningMessage)initWithType:(int)type data:(id)data payload:(id)payload error:(id *)error
{
  v8 = *&type;
  dataCopy = data;
  payloadCopy = payload;
  v18.receiver = self;
  v18.super_class = KCJoiningMessage;
  v12 = [(KCJoiningMessage *)&v18 init];
  if (v12 && ([KCJoiningMessage encodeToDERType:v8 data:dataCopy payload:payloadCopy error:error], v13 = objc_claimAutoreleasedReturnValue(), der = v12->_der, v12->_der = v13, der, !v12->_der))
  {
    v16 = 0;
  }

  else
  {
    if ([(KCJoiningMessage *)v12 inflatePartsOfEncoding:error])
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  return v16;
}

- (KCJoiningMessage)initWithDER:(id)r error:(id *)error
{
  rCopy = r;
  v13.receiver = self;
  v13.super_class = KCJoiningMessage;
  v7 = [(KCJoiningMessage *)&v13 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithData:rCopy];
    der = v7->_der;
    v7->_der = v8;
  }

  if ([(KCJoiningMessage *)v7 inflatePartsOfEncoding:error])
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v11;
}

- (BOOL)inflatePartsOfEncoding:(id *)encoding
{
  v5 = [(KCJoiningMessage *)self der];
  bytes = [v5 bytes];

  v7 = [(KCJoiningMessage *)self der];
  v8 = bytes + [v7 length];

  v31 = 0;
  if (!ccder_decode_constructed_tl())
  {
    v14 = @"Not sequence";
    goto LABEL_5;
  }

  if (v31 != v8)
  {
    v14 = @"Extra data at end of message";
LABEL_5:
    KCJoiningErrorCreate(1, encoding, v14, v9, v10, v11, v12, v13, v29);
    return 0;
  }

  v30[1] = 0xAAAAAAAAAAAAAAAALL;
  v16 = ccder_decode_uint64();
  self->_type = 255;
  v30[0] = 0;
  v17 = kcder_decode_data_internal(v30, 0, encoding, v16, v8);
  v18 = v30[0];
  v19 = v30[0];
  if (v17 == v8)
  {
    v21 = 0;
    v20 = v8;
  }

  else
  {
    v29 = 0;
    v20 = kcder_decode_data_internal(&v29, 0, encoding, v17, v8);
    v21 = v29;
  }

  objc_storeStrong(&self->_firstData, v18);
  secondData = self->_secondData;
  self->_secondData = v21;

  v15 = v20 == v8;
  if (v20 != v8)
  {
    KCJoiningErrorCreate(1, encoding, @"Extra in sequence", v23, v24, v25, v26, v27, v29);
  }

  return v15;
}

+ (id)encodeToDERType:(int)type data:(id)data payload:(id)payload error:(id *)error
{
  v8 = *&type;
  dataCopy = data;
  payloadCopy = payload;
  v11 = [KCJoiningMessage encodedSizeType:v8 data:dataCopy payload:payloadCopy error:error];
  if (!v11)
  {
    v23 = 0;
    goto LABEL_11;
  }

  v12 = [MEMORY[0x277CBEB28] dataWithLength:v11];
  mutableBytes = [v12 mutableBytes];
  v15 = mutableBytes + [v12 length];
  v16 = v15;
  if (payloadCopy)
  {
    v16 = kcder_encode_data(payloadCopy, v14, mutableBytes, v15);
  }

  kcder_encode_data(dataCopy, v14, mutableBytes, v16);
  ccder_encode_uint64();
  v17 = ccder_encode_constructed_tl();
  if (v17)
  {
    if (v17 == mutableBytes)
    {
      v23 = v12;
      goto LABEL_10;
    }

    KCJoiningErrorCreate(3, error, @"Size didn't match encoding", v18, v19, v20, v21, v22, v25);
  }

  v23 = 0;
LABEL_10:

LABEL_11:

  return v23;
}

+ (unint64_t)encodedSizeType:(int)type data:(id)data payload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  ccder_sizeof_uint64();
  [data length];
  if (ccder_sizeof_raw_octet_string())
  {
    if (payloadCopy)
    {
      [payloadCopy length];
      ccder_sizeof_raw_octet_string();
    }

    v8 = ccder_sizeof();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)messageWithType:(int)type data:(id)data payload:(id)payload error:(id *)error
{
  v8 = *&type;
  payloadCopy = payload;
  dataCopy = data;
  v11 = [[KCJoiningMessage alloc] initWithType:v8 data:dataCopy payload:payloadCopy error:error];

  return v11;
}

+ (id)messageWithType:(int)type data:(id)data secondData:(id)secondData error:(id *)error
{
  v8 = *&type;
  secondDataCopy = secondData;
  dataCopy = data;
  v11 = [[KCJoiningMessage alloc] initWithType:v8 data:dataCopy payload:secondDataCopy error:error];

  return v11;
}

+ (id)messageWithType:(int)type data:(id)data error:(id *)error
{
  v6 = *&type;
  dataCopy = data;
  v8 = [[KCJoiningMessage alloc] initWithType:v6 data:dataCopy payload:0 error:error];

  return v8;
}

+ (id)messageWithDER:(id)r error:(id *)error
{
  rCopy = r;
  v5 = [[KCJoiningMessage alloc] initWithDER:rCopy error:0];

  return v5;
}

@end