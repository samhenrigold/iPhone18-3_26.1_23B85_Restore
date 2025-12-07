@interface MCSessionPeerConnectionData
+ (id)connectionDataSegmentWithEncryptionPreference:(int64_t)preference identitySet:(BOOL)set gckSessionConnectionDataBytes:(void *)bytes gckSessionConnectionDataLength:(unint64_t)length;
- (BOOL)parseConnectionDataBlob:(id)blob;
- (BOOL)parseConnectionDataSegmentWithBytes:(char *)bytes withLength:(unint64_t)length;
- (MCSessionPeerConnectionData)initWithConnectionDataBlob:(id)blob;
- (void)dealloc;
@end

@implementation MCSessionPeerConnectionData

- (MCSessionPeerConnectionData)initWithConnectionDataBlob:(id)blob
{
  v7.receiver = self;
  v7.super_class = MCSessionPeerConnectionData;
  v4 = [(MCSessionPeerConnectionData *)&v7 init];
  v5 = v4;
  if (v4 && ![(MCSessionPeerConnectionData *)v4 parseConnectionDataBlob:blob])
  {

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MCSessionPeerConnectionData;
  [(MCSessionPeerConnectionData *)&v3 dealloc];
}

+ (id)connectionDataSegmentWithEncryptionPreference:(int64_t)preference identitySet:(BOOL)set gckSessionConnectionDataBytes:(void *)bytes gckSessionConnectionDataLength:(unint64_t)length
{
  v11[0] = 0x80;
  v8 = preference & 3;
  if (set)
  {
    v8 = preference & 3 | 4;
  }

  v11[1] = v8;
  v12 = bswap32(length + 4) >> 16;
  v9 = [MEMORY[0x277CBEB28] dataWithCapacity:?];
  [v9 appendBytes:v11 length:4];
  [v9 appendBytes:bytes length:length];
  return v9;
}

- (BOOL)parseConnectionDataSegmentWithBytes:(char *)bytes withLength:(unint64_t)length
{
  [(MCSessionPeerConnectionData *)self setEncryptionPreference:bytes[1] & 3];
  v7 = [(MCSessionPeerConnectionData *)self setHasIdentitySet:(bytes[1] >> 2) & 1];
  if (length <= 3)
  {
    v9 = mcs_log(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MCSessionPeerConnectionData parseConnectionDataSegmentWithBytes:withLength:];
    }
  }

  else
  {
    -[MCSessionPeerConnectionData setGckSessionConnectionData:](self, "setGckSessionConnectionData:", [MEMORY[0x277CBEA90] dataWithBytes:bytes + 4 length:length - 4]);
  }

  return length > 3;
}

- (BOOL)parseConnectionDataBlob:(id)blob
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [blob length];
  LOBYTE(v6) = 0;
  if (blob && v5)
  {
    bytes = [blob bytes];
    v9 = bytes;
    v10 = 0;
    while (1)
    {
      if (v5 - v10 <= 3)
      {
        v16 = mcs_log(bytes, v8);
        v6 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          return v6;
        }

        [MCSessionPeerConnectionData parseConnectionDataBlob:];
        goto LABEL_18;
      }

      v11 = bswap32(*(v9 + 2));
      v12 = HIWORD(v11);
      if (v5 - v10 < v12)
      {
        break;
      }

      v13 = *v9;
      v14 = *v9 & 0x7F;
      if ((*v9 & 0x7F) != 0)
      {
        v15 = mcs_log(bytes, v8);
        bytes = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (bytes)
        {
          *buf = 67109120;
          v20 = v14;
          _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "Unrecognized segmentID [%d] in connection data blob.", buf, 8u);
        }

        if (v13 < 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        bytes = [(MCSessionPeerConnectionData *)self parseConnectionDataSegmentWithBytes:v9 withLength:HIWORD(v11)];
        if ((bytes & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v10 += v12;
      v9 += v12;
      if (v10 >= v5)
      {
        LOBYTE(v6) = 1;
        return v6;
      }
    }

    v17 = mcs_log(bytes, v8);
    v6 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      return v6;
    }

    [MCSessionPeerConnectionData parseConnectionDataBlob:];
LABEL_18:
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)parseConnectionDataSegmentWithBytes:withLength:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)parseConnectionDataBlob:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end