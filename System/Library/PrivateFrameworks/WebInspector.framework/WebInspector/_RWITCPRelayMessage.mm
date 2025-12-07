@interface _RWITCPRelayMessage
+ (id)TCPRelayMessageFromDataStream:(id)stream error:(id *)error;
+ (id)TCPRelayMessageWithPayload:(id)payload;
- (_RWITCPRelayMessage)initWithPayload:(id)payload;
- (int64_t)write:(int)write;
- (int64_t)writeInternal:(id)internal;
- (int64_t)writeLockdown:(_lockdown_connection *)lockdown;
@end

@implementation _RWITCPRelayMessage

- (_RWITCPRelayMessage)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v19.receiver = self;
  v19.super_class = _RWITCPRelayMessage;
  v5 = [(_RWITCPRelayMessage *)&v19 init];
  if (v5)
  {
    v6 = [payloadCopy length];
    if (v6 < 0xFFFFFFFC)
    {
      v16 = [payloadCopy copy];
      payload = v5->_payload;
      v5->_payload = v16;

      v5->_writtenHeader = 0;
      v5->_writtenPayloadOffset = 0;
      v15 = v5;
      goto LABEL_8;
    }

    v7 = RWIDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_RWITCPRelayMessage *)v7 initWithPayload:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = 0;
LABEL_8:

  return v15;
}

+ (id)TCPRelayMessageFromDataStream:(id)stream error:(id *)error
{
  streamCopy = stream;
  v6 = streamCopy;
  if (!error)
  {
    v21 = RWIDefaultLog(streamCopy);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(_RWITCPRelayMessage *)v21 TCPRelayMessageFromDataStream:v22 error:v23, v24, v25, v26, v27, v28];
    }

    goto LABEL_10;
  }

  v7 = [streamCopy length];
  if (v7 < 4)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v30 = 0;
  v9 = [v6 getBytes:&v30 length:4];
  v10 = bswap32(v30);
  v30 = v10;
  if (v10 >= 0xFFFFFFFB)
  {
    v11 = RWIDefaultLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(_RWITCPRelayMessage *)v11 TCPRelayMessageFromDataStream:v12 error:v13, v14, v15, v16, v17, v18];
    }

    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Cannot read _RWITCPRelayMessage from stream. Corrupt header." forKey:*MEMORY[0x277CCA450]];
    v20 = 0;
    *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"_RWITCPRelayMessage" code:1 userInfo:v19];
    goto LABEL_13;
  }

  if (v8 < v10 + 4)
  {
LABEL_10:
    v20 = 0;
    goto LABEL_14;
  }

  v19 = [v6 subdataWithRange:4];
  v20 = [_RWITCPRelayMessage TCPRelayMessageWithPayload:v19];
LABEL_13:

LABEL_14:

  return v20;
}

+ (id)TCPRelayMessageWithPayload:(id)payload
{
  payloadCopy = payload;
  v5 = [[self alloc] initWithPayload:payloadCopy];

  return v5;
}

- (int64_t)write:(int)write
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29___RWITCPRelayMessage_write___block_invoke;
  v4[3] = &__block_descriptor_36_e12_q24__0r_8Q16l;
  writeCopy = write;
  return [(_RWITCPRelayMessage *)self writeInternal:v4];
}

- (int64_t)writeLockdown:(_lockdown_connection *)lockdown
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37___RWITCPRelayMessage_writeLockdown___block_invoke;
  v4[3] = &__block_descriptor_40_e12_q24__0r_8Q16l;
  v4[4] = lockdown;
  return [(_RWITCPRelayMessage *)self writeInternal:v4];
}

- (int64_t)writeInternal:(id)internal
{
  internalCopy = internal;
  if (!self->_writtenHeader)
  {
    v17 = bswap32([(NSData *)self->_payload length]);
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:&v17 length:4];
    if (internalCopy[2](internalCopy, [v5 bytes], objc_msgSend(v5, "length")) < 0)
    {
      v12 = __error();
      if (*v12 == 35)
      {
        v8 = 2;
      }

      else
      {
        v14 = RWIDefaultLog(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [_RWITCPRelayMessage writeInternal:];
        }

        v8 = 3;
      }

      goto LABEL_16;
    }

    self->_writtenHeader = 1;
  }

  v6 = [(NSData *)self->_payload length];
  writtenPayloadOffset = self->_writtenPayloadOffset;
  if (v6 != writtenPayloadOffset)
  {
    v9 = internalCopy[2](internalCopy, ([(NSData *)self->_payload bytes]+ self->_writtenPayloadOffset), v6 - writtenPayloadOffset);
    if ((v9 & 0x8000000000000000) == 0)
    {
      payload = self->_payload;
      v11 = self->_writtenPayloadOffset + v9;
      self->_writtenPayloadOffset = v11;
      v8 = v11 != [(NSData *)payload length];
      goto LABEL_16;
    }

    v13 = __error();
    if (*v13 == 35)
    {
      v8 = 2;
      goto LABEL_16;
    }

    v16 = RWIDefaultLog(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_RWITCPRelayMessage writeInternal:];
    }
  }

  v8 = 3;
LABEL_16:

  return v8;
}

- (void)writeInternal:.cold.1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2(&dword_273C9C000, v1, v2, "_RWITCPRelayMessage header write failure: %{public}d - %{public}s", v3, v4, v5, v6);
}

- (void)writeInternal:.cold.2()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2(&dword_273C9C000, v1, v2, "_RWITCPRelayMessage payload write failure: %{public}d - %{public}s", v3, v4, v5, v6);
}

@end