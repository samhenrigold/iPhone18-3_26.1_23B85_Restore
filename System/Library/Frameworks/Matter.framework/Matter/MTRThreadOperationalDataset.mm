@interface MTRThreadOperationalDataset
- (BOOL)_checkDataLength:(id)length expectedLength:(unint64_t)expectedLength;
- (BOOL)_populateCppOperationalDataset;
- (MTRThreadOperationalDataset)initWithData:(NSData *)data;
- (MTRThreadOperationalDataset)initWithNetworkName:(NSString *)networkName extendedPANID:(NSData *)extendedPANID masterKey:(NSData *)masterKey PSKc:(NSData *)PSKc channel:(uint16_t)channel panID:(NSData *)panID;
- (MTRThreadOperationalDataset)initWithNetworkName:(NSString *)networkName extendedPANID:(NSData *)extendedPANID masterKey:(NSData *)masterKey PSKc:(NSData *)PSKc channelNumber:(NSNumber *)channelNumber panID:(NSData *)panID;
- (id).cxx_construct;
- (uint16_t)channel;
- (void)setChannel:(uint16_t)channel;
@end

@implementation MTRThreadOperationalDataset

- (MTRThreadOperationalDataset)initWithNetworkName:(NSString *)networkName extendedPANID:(NSData *)extendedPANID masterKey:(NSData *)masterKey PSKc:(NSData *)PSKc channelNumber:(NSNumber *)channelNumber panID:(NSData *)panID
{
  v38[32] = *MEMORY[0x277D85DE8];
  v14 = networkName;
  v15 = extendedPANID;
  v16 = masterKey;
  v17 = PSKc;
  v18 = channelNumber;
  v19 = panID;
  v35.receiver = self;
  v35.super_class = MTRThreadOperationalDataset;
  v20 = [(MTRThreadOperationalDataset *)&v35 init];
  if (v20 && (v21 = -[NSString copy](v14, "copy"), v22 = *(v20 + 35), *(v20 + 35) = v21, v22, v23 = -[NSData copy](v15, "copy"), v24 = *(v20 + 36), *(v20 + 36) = v23, v24, v25 = -[NSData copy](v16, "copy"), v26 = *(v20 + 37), *(v20 + 37) = v25, v26, v27 = -[NSData copy](v17, "copy"), v28 = *(v20 + 38), *(v20 + 38) = v27, v28, v29 = -[NSNumber copy](v18, "copy"), v30 = *(v20 + 39), *(v20 + 39) = v29, v30, v31 = -[NSData copy](v19, "copy"), v32 = *(v20 + 40), *(v20 + 40) = v31, v32, v36 = v38, v37 = 0, *(v20 + 8) = v38, [v20 _populateCppOperationalDataset]))
  {
    v33 = v20;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (BOOL)_populateCppOperationalDataset
{
  v28[1] = *MEMORY[0x277D85DE8];
  self->_cppThreadOperationalDataset.mData.mDataBuf = self->_cppThreadOperationalDataset.mBuffer;
  p_cppThreadOperationalDataset = &self->_cppThreadOperationalDataset;
  self->_cppThreadOperationalDataset.mData.mDataLen = 0;
  networkName = [(MTRThreadOperationalDataset *)self networkName];
  sub_2393D7F8C(p_cppThreadOperationalDataset, [networkName UTF8String]);

  extendedPANID = [(MTRThreadOperationalDataset *)self extendedPANID];
  v6 = [(MTRThreadOperationalDataset *)self _checkDataLength:extendedPANID expectedLength:8];

  if (!v6)
  {
    v20 = sub_2393D9044(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Invalid ExtendedPANID", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Invalid ExtendedPANID");
    }

    return 0;
  }

  extendedPANID2 = [(MTRThreadOperationalDataset *)self extendedPANID];
  [extendedPANID2 getBytes:v28 length:8];

  sub_2393D7E70(p_cppThreadOperationalDataset, v28);
  masterKey = [(MTRThreadOperationalDataset *)self masterKey];
  v9 = [(MTRThreadOperationalDataset *)self _checkDataLength:masterKey expectedLength:16];

  if (!v9)
  {
    v21 = sub_2393D9044(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Invalid MasterKey", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Invalid MasterKey");
    }

    return 0;
  }

  masterKey2 = [(MTRThreadOperationalDataset *)self masterKey];
  [masterKey2 getBytes:buf length:16];

  sub_2393D7ECC(p_cppThreadOperationalDataset, buf);
  pSKc = [(MTRThreadOperationalDataset *)self PSKc];
  v12 = [(MTRThreadOperationalDataset *)self _checkDataLength:pSKc expectedLength:16];

  if (!v12)
  {
    v22 = sub_2393D9044(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Invalid PKSc", v26, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Invalid PKSc");
    }

    return 0;
  }

  pSKc2 = [(MTRThreadOperationalDataset *)self PSKc];
  [pSKc2 getBytes:v26 length:16];

  sub_2393D80A4(p_cppThreadOperationalDataset, v26);
  channelNumber = [(MTRThreadOperationalDataset *)self channelNumber];
  sub_2393D7E10(p_cppThreadOperationalDataset, [channelNumber unsignedShortValue]);

  panID = [(MTRThreadOperationalDataset *)self panID];
  v16 = [(MTRThreadOperationalDataset *)self _checkDataLength:panID expectedLength:2];

  if (v16)
  {
    panID2 = [(MTRThreadOperationalDataset *)self panID];
    v18 = panID2;
    v19 = *[panID2 bytes];

    sub_2393D8048(p_cppThreadOperationalDataset, __rev16(v19));
  }

  else
  {
    v24 = sub_2393D9044(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Invalid PAN ID", v25, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Invalid PAN ID");
    }
  }

  return v16;
}

- (BOOL)_checkDataLength:(id)length expectedLength:(unint64_t)expectedLength
{
  v13 = *MEMORY[0x277D85DE8];
  lengthCopy = length;
  v6 = [lengthCopy length];
  if (v6 != expectedLength)
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v10 = [lengthCopy length];
      v11 = 2048;
      expectedLengthCopy = expectedLength;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Length Check Failed. Length:%lu is incorrect, must be %tu", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Length Check Failed. Length:%lu is incorrect, must be %tu", [lengthCopy length], expectedLength);
    }
  }

  return v6 == expectedLength;
}

- (MTRThreadOperationalDataset)initWithData:(NSData *)data
{
  v24[32] = *MEMORY[0x277D85DE8];
  v4 = data;
  sub_238DB6950(v17, [(NSData *)v4 bytes], [(NSData *)v4 length]);
  *&v23 = v24;
  *(&v23 + 1) = 0;
  if (sub_2393D79D4(&v23, v17[0], v17[1]))
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_2393C9138();
      *buf = 136315138;
      v22 = v6;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Failed to parse data, cannot construct Operational Dataset. %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v7 = sub_2393C9138();
      sub_2393D5320(0, 1, "Failed to parse data, cannot construct Operational Dataset. %s", v7);
    }

    selfCopy = 0;
  }

  else
  {
    v16 = 0;
    sub_2393D75F8(&v23, buf);
    sub_2393D72E4(&v23, &v19);
    sub_2393D755C(&v23, &v18);
    sub_2393D7760(&v23, &v20);
    sub_2393D76BC(&v23, &v16 + 1);
    sub_2393D7234(&v23, &v16);
    HIWORD(v16) = bswap32(HIWORD(v16)) >> 16;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:&v19 length:8];
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:&v18 length:16];
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:&v20 length:16];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
    v14 = [MEMORY[0x277CBEA90] dataWithBytes:&v16 + 2 length:2];
    self = [(MTRThreadOperationalDataset *)self initWithNetworkName:v9 extendedPANID:v10 masterKey:v11 PSKc:v12 channelNumber:v13 panID:v14];

    selfCopy = self;
  }

  return selfCopy;
}

- (id).cxx_construct
{
  *(self + 1) = self + 24;
  *(self + 2) = 0;
  return self;
}

- (void)setChannel:(uint16_t)channel
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:channel];
  channelNumber = self->_channelNumber;
  self->_channelNumber = v4;
}

- (uint16_t)channel
{
  channelNumber = [(MTRThreadOperationalDataset *)self channelNumber];
  unsignedShortValue = [channelNumber unsignedShortValue];

  return unsignedShortValue;
}

- (MTRThreadOperationalDataset)initWithNetworkName:(NSString *)networkName extendedPANID:(NSData *)extendedPANID masterKey:(NSData *)masterKey PSKc:(NSData *)PSKc channel:(uint16_t)channel panID:(NSData *)panID
{
  v9 = channel;
  v14 = networkName;
  v15 = extendedPANID;
  v16 = masterKey;
  v17 = PSKc;
  v18 = panID;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v9];
  v20 = [(MTRThreadOperationalDataset *)self initWithNetworkName:v14 extendedPANID:v15 masterKey:v16 PSKc:v17 channelNumber:v19 panID:v18];

  return v20;
}

@end