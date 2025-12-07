@interface OspreyMessageWriter
- (void)writeMessageData:(id)data toStream:(id)stream compressionEnabled:(BOOL)enabled error:(id *)error;
@end

@implementation OspreyMessageWriter

- (void)writeMessageData:(id)data toStream:(id)stream compressionEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  v29[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  streamCopy = stream;
  if (enabledCopy)
  {
    v11 = [[OspreyZlibDataCompressor alloc] initWithOptions:31];
    _createDispatchData = [dataCopy _createDispatchData];
    v27 = 0;
    v13 = [(OspreyZlibDataCompressor *)v11 compressedDataForData:_createDispatchData error:&v27];
    v14 = v27;

    if (v13)
    {
      v17 = LengthPrefixedMessageFromData(v13, 1);

      v14 = v17;
      if (!v17)
      {
        goto LABEL_18;
      }

      goto LABEL_6;
    }

    OspreyLoggingInit(v15, v16);
    v25 = OspreyLogContextGRPC;
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
    {
      [OspreyMessageWriter writeMessageData:v25 toStream:v14 compressionEnabled:? error:?];
      if (!error)
      {
        goto LABEL_16;
      }
    }

    else if (!error)
    {
LABEL_16:

LABEL_17:
      goto LABEL_18;
    }

    v26 = v14;
    *error = v14;
    goto LABEL_16;
  }

  v14 = LengthPrefixedMessageFromData(dataCopy, 0);
  if (v14)
  {
LABEL_6:
    v18 = [streamCopy write:objc_msgSend(v14 maxLength:{"bytes"), objc_msgSend(v14, "length")}];
    if (v18 == -1 && ([streamCopy streamError], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
    {
      v28 = *MEMORY[0x277CCA7E8];
      streamError = [streamCopy streamError];
      v29[0] = streamError;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];

      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OspreyMessageWriterErrorDomain" code:1 userInfo:v23];
      if (error)
      {
        v24 = v24;
        *error = v24;
      }
    }

    else
    {
      OspreyLoggingInit(v18, v19);
      v20 = OspreyLogContextGRPC;
      if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
      {
        [OspreyMessageWriter writeMessageData:v20 toStream:v14 compressionEnabled:enabledCopy error:?];
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)writeMessageData:(char)a3 toStream:compressionEnabled:error:.cold.1(void *a1, void *a2, char a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = 136315650;
  v7 = "[OspreyMessageWriter writeMessageData:toStream:compressionEnabled:error:]";
  v8 = 2048;
  v9 = [a2 length];
  v10 = 1024;
  v11 = a3 & 1;
  _os_log_debug_impl(&dword_25DDE6000, v5, OS_LOG_TYPE_DEBUG, "%s Wrote data of size: %lu, compressed: %d", &v6, 0x1Cu);
}

- (void)writeMessageData:(void *)a1 toStream:(void *)a2 compressionEnabled:error:.cold.2(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 136315394;
  v6 = "[OspreyMessageWriter writeMessageData:toStream:compressionEnabled:error:]";
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_ERROR, "%s Error compressing data! Error: %@", &v5, 0x16u);
}

@end