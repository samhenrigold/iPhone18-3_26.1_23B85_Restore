@interface BMWriteServerExported
- (BMWriteServerExported)initWithProcess:(id)process accessControlPolicy:(id)policy;
- (id)checkEntitlementsAndReturnWriterForStreamIdentifier:(id)identifier user:(unsigned int)user error:(id *)error;
- (void)writeData:(id)data version:(unsigned int)version timestamp:(double)timestamp toStream:(id)stream asUser:(unsigned int)user reply:(id)reply;
@end

@implementation BMWriteServerExported

- (BMWriteServerExported)initWithProcess:(id)process accessControlPolicy:(id)policy
{
  processCopy = process;
  policyCopy = policy;
  v14.receiver = self;
  v14.super_class = BMWriteServerExported;
  v9 = [(BMWriteServerExported *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_process, process);
    objc_storeStrong(&v10->_policy, policy);
    v11 = objc_opt_new();
    writerCache = v10->_writerCache;
    v10->_writerCache = v11;
  }

  return v10;
}

- (id)checkEntitlementsAndReturnWriterForStreamIdentifier:(id)identifier user:(unsigned int)user error:(id *)error
{
  v6 = *&user;
  v31[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [BMWriteServerExported checkEntitlementsAndReturnWriterForStreamIdentifier:user:error:];
  }

  if (!error)
  {
    [BMWriteServerExported checkEntitlementsAndReturnWriterForStreamIdentifier:user:error:];
  }

  v9 = MEMORY[0x1E69C5D98];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v11 = [v9 tupleWithFirst:identifierCopy second:v10];

  v12 = [(NSMutableDictionary *)self->_writerCache objectForKeyedSubscript:v11];
  if (!v12)
  {
    if (([(BMAccessControlPolicy *)self->_policy allowsAccessToWriteServiceForStream:identifierCopy ofUser:v6]& 1) != 0)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v13 = getBiomeLibraryNodeSymbolLoc_ptr;
      v29 = getBiomeLibraryNodeSymbolLoc_ptr;
      if (!getBiomeLibraryNodeSymbolLoc_ptr)
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __getBiomeLibraryNodeSymbolLoc_block_invoke;
        v25[3] = &unk_1E8338B28;
        v25[4] = &v26;
        __getBiomeLibraryNodeSymbolLoc_block_invoke(v25);
        v13 = v27[3];
      }

      _Block_object_dispose(&v26, 8);
      if (!v13)
      {
        [BMWriteServerExported checkEntitlementsAndReturnWriterForStreamIdentifier:user:error:];
      }

      v14 = v13();
      identifierCopy = [v14 streamWithIdentifier:identifierCopy error:error];

      if (!identifierCopy)
      {
        v12 = 0;
        goto LABEL_14;
      }

      v16 = [identifierCopy valueForKeyPath:@"configuration.eventClass"];
      v17 = [identifierCopy valueForKeyPath:@"configuration.storeConfig"];
      v18 = [[BMStreamDatastoreWriter alloc] initWithStream:identifierCopy config:v17 eventDataClass:v16];
      [(NSMutableDictionary *)self->_writerCache setObject:v18 forKeyedSubscript:v11];
      v19 = v18;

      v12 = v19;
    }

    else
    {
      v20 = MEMORY[0x1E696AEC0];
      descriptionOfProcessAndUseCase = [(BMAccessControlPolicy *)self->_policy descriptionOfProcessAndUseCase];
      v22 = BMAccessModePrintableDescription();
      identifierCopy = [v20 stringWithFormat:@"%@ is not entitled for '%@' access to '%@'", descriptionOfProcessAndUseCase, v22, identifierCopy];

      v23 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      v31[0] = identifierCopy;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      [v23 errorWithDomain:*MEMORY[0x1E698E908] code:5 userInfo:v19];
      *error = v12 = 0;
    }

LABEL_14:
  }

  return v12;
}

- (void)writeData:(id)data version:(unsigned int)version timestamp:(double)timestamp toStream:(id)stream asUser:(unsigned int)user reply:(id)reply
{
  v9 = *&user;
  v12 = *&version;
  v29[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  streamCopy = stream;
  replyCopy = reply;
  v17 = objc_autoreleasePoolPush();
  v27 = 0;
  v18 = [(BMWriteServerExported *)self checkEntitlementsAndReturnWriterForStreamIdentifier:streamCopy user:v9 error:&v27];
  v19 = v27;
  v20 = v19;
  if (v18)
  {
    if ([v18 _writeEventData:dataCopy dataVersion:v12 timestamp:0 outBookmark:timestamp])
    {
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v26 = 0;
        _os_log_impl(&dword_1C928A000, v21, OS_LOG_TYPE_INFO, "BMWriteServer write succeeded", v26, 2u);
      }

      v22 = 0;
    }

    else
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E698E908];
      v28 = *MEMORY[0x1E696A578];
      v29[0] = @"Write failed";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v22 = [v24 errorWithDomain:v25 code:0 userInfo:v21];

      v20 = v22;
    }

    v23 = v20;

    v20 = v22;
  }

  else
  {
    v23 = v19;
  }

  replyCopy[2](replyCopy, v20);

  objc_autoreleasePoolPop(v17);
}

- (void)checkEntitlementsAndReturnWriterForStreamIdentifier:user:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"BMWriteServer.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"streamIdentifier"}];
}

- (void)checkEntitlementsAndReturnWriterForStreamIdentifier:user:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"BMWriteServer.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"outError"}];
}

- (void)checkEntitlementsAndReturnWriterForStreamIdentifier:user:error:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<_BMLibraryBaseProtocol> _BiomeLibraryNode(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMWriteServer.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

@end