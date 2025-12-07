@interface SZExtractor
+ (id)knownSZExtractorImplementations;
+ (int)servicePIDWithError:(id *)error;
+ (unint64_t)availableExtractionMemory;
- (BOOL)_isValidObject;
- (BOOL)_setUpWithPath:(id)path options:(id)options error:(id *)error;
- (BOOL)_synchronouslyPrepareForExtractionAtOffset:(unint64_t *)offset;
- (BOOL)isEqual:(id)equal;
- (BOOL)needsPreparation;
- (NSError)error;
- (NSString)description;
- (NSXPCConnection)unzipServiceConnection;
- (SZExtractor)init;
- (SZExtractor)initWithCoder:(id)coder;
- (SZExtractor)initWithOptions:(id)options;
- (SZExtractor)initWithOptions:(id)options error:(id *)error;
- (SZExtractor)initWithPath:(id)path md5Hashes:(id)hashes hashedChunkSize:(unint64_t)size resumptionOffset:(unint64_t *)offset;
- (SZExtractor)initWithPath:(id)path options:(id)options;
- (SZExtractor)initWithPath:(id)path options:(id)options error:(id *)error;
- (SZExtractor)initWithPath:(id)path options:(id)options resumptionOffset:(unint64_t *)offset;
- (SZExtractorDelegate)delegate;
- (SZExtractorDelegate)extractorDelegate;
- (id)_serviceConnectionWithError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForRemoteExtractionWithPath:(id)path options:(id)options resumptionOffset:(unint64_t *)offset;
- (unint64_t)hash;
- (unint64_t)lastResumptionOffset;
- (void)_invalidateObject;
- (void)_prepareForExtractionSynchronously:(BOOL)synchronously withCompletionBlock:(id)block;
- (void)_prepareForRemoteExtractionSynchronously:(BOOL)synchronously withCompletionBlock:(id)block;
- (void)_runWithLock:(id)lock;
- (void)_suspendStreamWithCompletionBlockSynchronously:(BOOL)synchronously completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)finishStreamWithCompletionBlock:(id)block;
- (void)prepareForExtractionToPath:(id)path completionBlock:(id)block;
- (void)setActiveExtractorDelegateMethods:(int)methods;
- (void)setError:(id)error;
- (void)setExtractorDelegate:(id)delegate;
- (void)setLastResumptionOffset:(unint64_t)offset;
- (void)setUnzipServiceConnection:(id)connection;
- (void)supplyBytes:(id)bytes withCompletionBlock:(id)block;
- (void)terminateStreamWithError:(id)error completionBlock:(id)block;
@end

@implementation SZExtractor

+ (id)knownSZExtractorImplementations
{
  if (knownSZExtractorImplementations_onceToken != -1)
  {
    dispatch_once(&knownSZExtractorImplementations_onceToken, &__block_literal_global);
  }

  v3 = knownSZExtractorImplementations_result;

  return v3;
}

void __68__SZExtractor_KnownImplementations__knownSZExtractorImplementations__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB58] setWithObject:objc_opt_class()];
  if (dlopen("/System/Library/PrivateFrameworks/InstallCoordination.framework/InstallCoordination", 9))
  {
    v2 = 0;
    v3 = 1;
    *&v1 = 136315138;
    v11 = v1;
    do
    {
      v4 = v3;
      v5 = off_279D26390[v2];
      Class = objc_getClass(v5);
      if (Class)
      {
        [v0 addObject:Class];
      }

      else
      {
        v7 = SZGetLoggingHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v11;
          v13 = v5;
          _os_log_impl(&dword_26BC65000, v7, OS_LOG_TYPE_DEFAULT, "Unable to find class %s", buf, 0xCu);
        }
      }

      v3 = 0;
      v2 = 1;
    }

    while ((v4 & 1) != 0);
  }

  else
  {
    v8 = SZGetLoggingHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = dlerror();
      _os_log_impl(&dword_26BC65000, v8, OS_LOG_TYPE_DEFAULT, "Unable to open InstallCoordination library: %s\n", buf, 0xCu);
    }
  }

  v9 = [v0 copy];
  v10 = knownSZExtractorImplementations_result;
  knownSZExtractorImplementations_result = v9;
}

- (NSString)description
{
  extractionPath = [(SZExtractor *)self extractionPath];
  v4 = extractionPath;
  if (extractionPath)
  {
    lastPathComponent = [extractionPath lastPathComponent];
    stringByDeletingLastPathComponent = [v4 stringByDeletingLastPathComponent];
    lastPathComponent2 = [stringByDeletingLastPathComponent lastPathComponent];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"pathEnding:%@/%@", lastPathComponent2, lastPathComponent];
  }

  else
  {
    v8 = @"path:nil";
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  needsPreparation = [(SZExtractor *)self needsPreparation];
  unzipServiceConnection = [(SZExtractor *)self unzipServiceConnection];
  error = [(SZExtractor *)self error];
  v15 = 89;
  if (unzipServiceConnection)
  {
    v16 = 89;
  }

  else
  {
    v16 = 78;
  }

  if (needsPreparation)
  {
    v15 = 78;
  }

  v17 = [v9 stringWithFormat:@"<%@<%p> prepared:%c valid:%c %@ error:%@>", v11, self, v15, v16, v8, error];

  return v17;
}

- (void)terminateStreamWithError:(id)error completionBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  blockCopy = block;
  v8 = SZGetLoggingHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy4 = self;
    v28 = 2112;
    selfCopy3 = errorCopy;
    _os_log_impl(&dword_26BC65000, v8, OS_LOG_TYPE_DEFAULT, "%@: terminating stream with error %@", buf, 0x16u);
  }

  error = [(SZExtractor *)self error];
  if (!error)
  {
    if ([(SZExtractor *)self needsPreparation])
    {
      v11 = SZGetLoggingHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        selfCopy4 = "[SZExtractor terminateStreamWithError:completionBlock:]";
        v28 = 2112;
        selfCopy3 = self;
        v30 = 2112;
        v31 = 0;
        _os_log_error_impl(&dword_26BC65000, v11, OS_LOG_TYPE_ERROR, "%s called before [SZExtractor prepareForExtraction:] on %@ : %@", buf, 0x20u);
      }

      _CreateError("[SZExtractor terminateStreamWithError:completionBlock:]", 1071, @"SZExtractorErrorDomain", 3, 0, v12, @"%s called before [SZExtractor prepareForExtraction:] on %@", v13, "[SZExtractor terminateStreamWithError:completionBlock:]");
    }

    else
    {
      if ([(SZExtractor *)self _isValidObject])
      {
        [(SZExtractor *)self setHasHadPostSetupMethodsCalled:1];
        [(SZExtractor *)self setError:errorCopy];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __56__SZExtractor_terminateStreamWithError_completionBlock___block_invoke;
        v24[3] = &unk_279D25FF8;
        v24[4] = self;
        v25 = blockCopy;
        v14 = MEMORY[0x26D692A50](v24);
        unzipServiceConnection = [(SZExtractor *)self unzipServiceConnection];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __56__SZExtractor_terminateStreamWithError_completionBlock___block_invoke_2;
        v22[3] = &unk_279D26228;
        v23 = v14;
        v16 = v14;
        v17 = [unzipServiceConnection remoteObjectProxyWithErrorHandler:v22];
        [v17 terminateStreamWithReply:v16];

        goto LABEL_17;
      }

      v18 = SZGetLoggingHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        selfCopy4 = "[SZExtractor terminateStreamWithError:completionBlock:]";
        v28 = 2112;
        selfCopy3 = self;
        v30 = 2112;
        v31 = 0;
        _os_log_error_impl(&dword_26BC65000, v18, OS_LOG_TYPE_ERROR, "%s called on an invalidated object: %@ : %@", buf, 0x20u);
      }

      _CreateError("[SZExtractor terminateStreamWithError:completionBlock:]", 1077, @"SZExtractorErrorDomain", 3, 0, v19, @"%s called on an invalidated object: %@", v20, "[SZExtractor terminateStreamWithError:completionBlock:]");
    }
    v21 = ;
    (*(blockCopy + 2))(blockCopy, v21);

    goto LABEL_17;
  }

  v10 = SZGetLoggingHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy4 = self;
    v28 = 2112;
    selfCopy3 = error;
    _os_log_error_impl(&dword_26BC65000, v10, OS_LOG_TYPE_ERROR, "%@: terminate called on extractor that had already returned error %@", buf, 0x16u);
  }

  (*(blockCopy + 2))(blockCopy, error);
LABEL_17:
}

void __56__SZExtractor_terminateStreamWithError_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SZGetLoggingHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_26BC65000, v4, OS_LOG_TYPE_DEFAULT, "%@: calling completion block with error %@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _invalidateObject];
}

- (void)finishStreamWithCompletionBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = SZGetLoggingHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy4 = self;
    _os_log_impl(&dword_26BC65000, v5, OS_LOG_TYPE_DEFAULT, "%@: finishing stream", buf, 0xCu);
  }

  error = [(SZExtractor *)self error];
  if (!error)
  {
    if ([(SZExtractor *)self needsPreparation])
    {
      v8 = SZGetLoggingHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        selfCopy4 = "[SZExtractor finishStreamWithCompletionBlock:]";
        v25 = 2112;
        selfCopy3 = self;
        v27 = 2112;
        v28 = 0;
        _os_log_error_impl(&dword_26BC65000, v8, OS_LOG_TYPE_ERROR, "%s called before [SZExtractor prepareForExtraction:] on %@ : %@", buf, 0x20u);
      }

      _CreateError("[SZExtractor finishStreamWithCompletionBlock:]", 1032, @"SZExtractorErrorDomain", 3, 0, v9, @"%s called before [SZExtractor prepareForExtraction:] on %@", v10, "[SZExtractor finishStreamWithCompletionBlock:]");
    }

    else
    {
      if ([(SZExtractor *)self _isValidObject])
      {
        [(SZExtractor *)self setHasHadPostSetupMethodsCalled:1];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __47__SZExtractor_finishStreamWithCompletionBlock___block_invoke;
        v21[3] = &unk_279D25FF8;
        v21[4] = self;
        v22 = blockCopy;
        v11 = MEMORY[0x26D692A50](v21);
        unzipServiceConnection = [(SZExtractor *)self unzipServiceConnection];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __47__SZExtractor_finishStreamWithCompletionBlock___block_invoke_2;
        v19[3] = &unk_279D26228;
        v20 = v11;
        v13 = v11;
        v14 = [unzipServiceConnection remoteObjectProxyWithErrorHandler:v19];
        [v14 finishStreamWithReply:v13];

        goto LABEL_17;
      }

      v15 = SZGetLoggingHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        selfCopy4 = "[SZExtractor finishStreamWithCompletionBlock:]";
        v25 = 2112;
        selfCopy3 = self;
        v27 = 2112;
        v28 = 0;
        _os_log_error_impl(&dword_26BC65000, v15, OS_LOG_TYPE_ERROR, "%s called on an invalidated object: %@ : %@", buf, 0x20u);
      }

      _CreateError("[SZExtractor finishStreamWithCompletionBlock:]", 1038, @"SZExtractorErrorDomain", 3, 0, v16, @"%s called on an invalidated object: %@", v17, "[SZExtractor finishStreamWithCompletionBlock:]");
    }
    v18 = ;
    (*(blockCopy + 2))(blockCopy, v18);

    goto LABEL_17;
  }

  v7 = SZGetLoggingHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy4 = self;
    v25 = 2112;
    selfCopy3 = error;
    _os_log_error_impl(&dword_26BC65000, v7, OS_LOG_TYPE_ERROR, "%@: finish called on extractor that had already returned error %@", buf, 0x16u);
  }

  (*(blockCopy + 2))(blockCopy, error);
LABEL_17:
}

void __47__SZExtractor_finishStreamWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SZGetLoggingHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_26BC65000, v4, OS_LOG_TYPE_DEFAULT, "%@: calling completion block with error %@", &v6, 0x16u);
  }

  if (v3)
  {
    [*(a1 + 32) setError:v3];
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _invalidateObject];
}

- (void)_suspendStreamWithCompletionBlockSynchronously:(BOOL)synchronously completion:(id)completion
{
  synchronouslyCopy = synchronously;
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = SZGetLoggingHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy4 = self;
    _os_log_impl(&dword_26BC65000, v7, OS_LOG_TYPE_DEFAULT, "%@: suspending stream", buf, 0xCu);
  }

  error = [(SZExtractor *)self error];
  if (!error)
  {
    if ([(SZExtractor *)self needsPreparation])
    {
      v10 = SZGetLoggingHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        selfCopy4 = "[SZExtractor _suspendStreamWithCompletionBlockSynchronously:completion:]";
        v29 = 2112;
        selfCopy3 = self;
        v31 = 2112;
        v32 = 0;
        _os_log_error_impl(&dword_26BC65000, v10, OS_LOG_TYPE_ERROR, "%s called before [SZExtractor prepareForExtraction:] on %@ : %@", buf, 0x20u);
      }

      _CreateError("[SZExtractor _suspendStreamWithCompletionBlockSynchronously:completion:]", 979, @"SZExtractorErrorDomain", 3, 0, v11, @"%s called before [SZExtractor prepareForExtraction:] on %@", v12, "[SZExtractor _suspendStreamWithCompletionBlockSynchronously:completion:]");
    }

    else
    {
      if ([(SZExtractor *)self _isValidObject])
      {
        [(SZExtractor *)self setHasHadPostSetupMethodsCalled:1];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __73__SZExtractor__suspendStreamWithCompletionBlockSynchronously_completion___block_invoke;
        v25[3] = &unk_279D26200;
        v25[4] = self;
        v26 = completionCopy;
        v13 = MEMORY[0x26D692A50](v25);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __73__SZExtractor__suspendStreamWithCompletionBlockSynchronously_completion___block_invoke_2;
        v23[3] = &unk_279D26228;
        v24 = v13;
        v14 = v13;
        v15 = MEMORY[0x26D692A50](v23);
        unzipServiceConnection = [(SZExtractor *)self unzipServiceConnection];
        v17 = unzipServiceConnection;
        if (synchronouslyCopy)
        {
          [unzipServiceConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
        }

        else
        {
          [unzipServiceConnection remoteObjectProxyWithErrorHandler:v15];
        }
        v22 = ;

        [v22 suspendStreamWithReply:v14];
        goto LABEL_20;
      }

      v18 = SZGetLoggingHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        selfCopy4 = "[SZExtractor _suspendStreamWithCompletionBlockSynchronously:completion:]";
        v29 = 2112;
        selfCopy3 = self;
        v31 = 2112;
        v32 = 0;
        _os_log_error_impl(&dword_26BC65000, v18, OS_LOG_TYPE_ERROR, "%s called on an invalidated object: %@ : %@", buf, 0x20u);
      }

      _CreateError("[SZExtractor _suspendStreamWithCompletionBlockSynchronously:completion:]", 985, @"SZExtractorErrorDomain", 3, 0, v19, @"%s called on an invalidated object: %@", v20, "[SZExtractor _suspendStreamWithCompletionBlockSynchronously:completion:]");
    }
    v21 = ;
    (*(completionCopy + 2))(completionCopy, 0, v21);

    goto LABEL_20;
  }

  v9 = SZGetLoggingHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy4 = self;
    v29 = 2112;
    selfCopy3 = error;
    _os_log_error_impl(&dword_26BC65000, v9, OS_LOG_TYPE_ERROR, "%@: suspend called on extractor that had already returned error %@", buf, 0x16u);
  }

  (*(completionCopy + 2))(completionCopy, 0, error);
LABEL_20:
}

void __73__SZExtractor__suspendStreamWithCompletionBlockSynchronously_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SZGetLoggingHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_26BC65000, v6, OS_LOG_TYPE_DEFAULT, "%@: calling completion block with offset %llu, error %@", &v8, 0x20u);
  }

  if (v5)
  {
    [*(a1 + 32) setError:v5];
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _invalidateObject];
}

- (void)supplyBytes:(id)bytes withCompletionBlock:(id)block
{
  v55 = *MEMORY[0x277D85DE8];
  bytesCopy = bytes;
  blockCopy = block;
  v8 = [bytesCopy length];
  v9 = SZGetTraceHandle();
  if (os_signpost_enabled(v9))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    _os_signpost_emit_with_name_impl(&dword_26BC65000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SUPPLY_BYTES", "%@: Supply bytes with length %lu began", buf, 0x16u);
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke;
  v48[3] = &unk_279D26098;
  v50 = v8;
  v10 = blockCopy;
  v49 = v10;
  v11 = MEMORY[0x26D692A50](v48);
  error = [(SZExtractor *)self error];
  if (error)
  {
    v13 = SZGetLoggingHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = error;
      _os_log_error_impl(&dword_26BC65000, v13, OS_LOG_TYPE_ERROR, "%@: supply called on extractor that had already returned error %@", buf, 0x16u);
    }

    (v11)[2](v11, error, 1);
  }

  else if ([(SZExtractor *)self needsPreparation])
  {
    v14 = SZGetLoggingHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[SZExtractor supplyBytes:withCompletionBlock:]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v52 = 0;
      _os_log_error_impl(&dword_26BC65000, v14, OS_LOG_TYPE_ERROR, "%s called before [SZExtractor prepareForExtraction:] on %@ : %@", buf, 0x20u);
    }

    v17 = _CreateError("[SZExtractor supplyBytes:withCompletionBlock:]", 795, @"SZExtractorErrorDomain", 3, 0, v15, @"%s called before [SZExtractor prepareForExtraction:] on %@", v16, "[SZExtractor supplyBytes:withCompletionBlock:]");
    (v11)[2](v11, v17, 1);
  }

  else if ([(SZExtractor *)self _isValidObject])
  {
    [(SZExtractor *)self setHasHadPostSetupMethodsCalled:1];
    v18 = [bytesCopy copy];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_163;
    v46[3] = &unk_279D260C0;
    v46[4] = self;
    v47 = v11;
    v19 = MEMORY[0x26D692A50](v46);
    v20 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v52 = __Block_byref_object_copy_;
    v53 = __Block_byref_object_dispose_;
    v54 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v45 = 0;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_170;
    v40[3] = &unk_279D260E8;
    v42 = buf;
    v43 = v44;
    v21 = v20;
    v41 = v21;
    v22 = MEMORY[0x26D692A50](v40);
    serialQueue = [(SZExtractor *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_2;
    block[3] = &unk_279D261D8;
    v33 = v18;
    v34 = v21;
    selfCopy = self;
    v36 = v22;
    v37 = v19;
    v38 = buf;
    v39 = v44;
    v24 = v19;
    v25 = v22;
    v26 = v21;
    v27 = v18;
    dispatch_async(serialQueue, block);

    _Block_object_dispose(v44, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v28 = SZGetLoggingHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[SZExtractor supplyBytes:withCompletionBlock:]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      *&buf[22] = 2112;
      v52 = 0;
      _os_log_error_impl(&dword_26BC65000, v28, OS_LOG_TYPE_ERROR, "%s called on an invalidated object: %@ : %@", buf, 0x20u);
    }

    v31 = _CreateError("[SZExtractor supplyBytes:withCompletionBlock:]", 801, @"SZExtractorErrorDomain", 3, 0, v29, @"%s called on an invalidated object: %@", v30, "[SZExtractor supplyBytes:withCompletionBlock:]");
    (v11)[2](v11, v31, 1);
  }
}

void __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SZGetTraceHandle();
  if (os_signpost_enabled(v4))
  {
    v5 = *(a1 + 40);
    if (v3)
    {
      v6 = 78;
    }

    else
    {
      v6 = 89;
    }

    v7 = 134218240;
    v8 = v5;
    v9 = 1024;
    v10 = v6;
    _os_signpost_emit_with_name_impl(&dword_26BC65000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SUPPLY_BYTES", "Supply bytes with length %lu succeeded: %c", &v7, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

void __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_163(uint64_t a1, void *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = SZGetLoggingHandle();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&dword_26BC65000, v7, OS_LOG_TYPE_ERROR, "%@: calling completion block with error %@", &v11, 0x16u);
    }

    [*(a1 + 32) setError:v5];
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _invalidateObject];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      if (a3)
      {
        v10 = 89;
      }

      else
      {
        v10 = 78;
      }

      v11 = 138412546;
      v12 = v9;
      v13 = 1024;
      LODWORD(v14) = v10;
      _os_log_debug_impl(&dword_26BC65000, v7, OS_LOG_TYPE_DEBUG, "%@: calling completion block with no error, dataComplete=%c", &v11, 0x12u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_170(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v11 = a2;
  v8 = *(*(a1 + 40) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, a2);
  }

  *(*(*(a1 + 48) + 8) + 24) = a3;
  pthread_mutex_lock(&_sAvailableExtractionMemoryMutex);
  _sAvailableExtractionMemory += a4;
  pthread_cond_broadcast(&_sAvailableExtractionMemoryCondition);
  pthread_mutex_unlock(&_sAvailableExtractionMemoryMutex);
  dispatch_group_leave(*(a1 + 32));
}

void __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) length];
  if ((v2 - 5242881) >= 0xFFFFFFFFFFB00000)
  {
    v3 = v2;
    pthread_mutex_lock(&_sAvailableExtractionMemoryMutex);
    if (_sAvailableExtractionMemory >= v3)
    {
      _sAvailableExtractionMemory -= v3;
    }

    else
    {
      v4 = SZGetLoggingHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = v3;
        *&buf[12] = 2048;
        *&buf[14] = _sAvailableExtractionMemory;
        _os_log_debug_impl(&dword_26BC65000, v4, OS_LOG_TYPE_DEBUG, "Unable to reserve %zu bytes; %zu available", buf, 0x16u);
      }

      v3 = 0;
    }

    pthread_mutex_unlock(&_sAvailableExtractionMemoryMutex);
  }

  else
  {
    v3 = 0;
  }

  if (v3 == [*(a1 + 32) length])
  {
    v5 = SZGetLoggingHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_debug_impl(&dword_26BC65000, v5, OS_LOG_TYPE_DEBUG, "Supplying entire byte range data of length %lu", buf, 0xCu);
    }

    dispatch_group_enter(*(a1 + 40));
    v6 = SZGetTraceHandle();
    if (os_signpost_enabled(v6))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_signpost_emit_with_name_impl(&dword_26BC65000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DATA_OVER_XPC", "Sending buffer of size %lu to the unzip service over XPC", buf, 0xCu);
    }

    v7 = [*(a1 + 48) unzipServiceConnection];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_175;
    v60[3] = &unk_279D26110;
    v61 = *(a1 + 56);
    v62 = v3;
    v8 = [v7 remoteObjectProxyWithErrorHandler:v60];
    v9 = *(a1 + 32);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_176;
    v57[3] = &unk_279D26098;
    v58 = *(a1 + 56);
    v59 = v3;
    [v8 supplyBytes:v9 withReply:v57];

    v10 = v61;
    goto LABEL_54;
  }

  v11 = SZGetTraceHandle();
  if (os_signpost_enabled(v11))
  {
    v12 = [*(a1 + 32) length];
    *buf = 134217984;
    *&buf[4] = v12;
    _os_signpost_emit_with_name_impl(&dword_26BC65000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FRAGMENT_DATA", "Starting fragmentation of the supplied buffer of length : %lu", buf, 0xCu);
  }

  if ([*(a1 + 32) length])
  {
    v13 = 0;
    v14 = 0;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v53 = 0;
      v54 = &v53;
      v55 = 0x2020000000;
      v56 = 0;
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v21 = _ReserveUpToBytes(v14 + v15 - v13);
      v54[3] = v21;
      v22 = SZGetLoggingHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v36 = v54[3];
        *buf = 134218752;
        *&buf[4] = v36;
        *&buf[12] = 2048;
        *&buf[14] = v13;
        *&buf[22] = 2048;
        v70 = v15;
        LOWORD(v71) = 2048;
        *(&v71 + 2) = v14;
        _os_log_debug_impl(&dword_26BC65000, v22, OS_LOG_TYPE_DEBUG, "Reserved %ld bytes at %ld for too-big partial range {%lu, %lu}", buf, 0x2Au);
      }

LABEL_41:
      v25 = SZGetLoggingHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v35 = v54[3];
        *buf = 134218240;
        *&buf[4] = v35;
        *&buf[12] = 2048;
        *&buf[14] = v13;
        _os_log_debug_impl(&dword_26BC65000, v25, OS_LOG_TYPE_DEBUG, "Supplying byte range data of length %lu at location %lu", buf, 0x16u);
      }

      v26 = objc_autoreleasePoolPush();
      v27 = [*(a1 + 32) subdataWithRange:{v13, v54[3]}];
      dispatch_group_enter(*(a1 + 40));
      v28 = SZGetTraceHandle();
      if (os_signpost_enabled(v28))
      {
        v29 = [v27 length];
        *buf = 134217984;
        *&buf[4] = v29;
        _os_signpost_emit_with_name_impl(&dword_26BC65000, v28, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DATA_OVER_XPC", "Sending buffer of size %lu to the unzip service over XPC", buf, 0xCu);
      }

      v30 = [*(a1 + 48) unzipServiceConnection];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_203;
      v48[3] = &unk_279D26160;
      v50 = *(a1 + 56);
      v51 = &v53;
      v31 = v27;
      v49 = v31;
      v32 = [v30 remoteObjectProxyWithErrorHandler:v48];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_204;
      v44[3] = &unk_279D26188;
      v46 = *(a1 + 56);
      v47 = &v53;
      v33 = v31;
      v45 = v33;
      [v32 supplyBytes:v33 withReply:v44];

      objc_autoreleasePoolPop(v26);
      v13 += v54[3];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_50;
      }

      if (v13 >= v14 + v15)
      {
        v34 = SZGetLoggingHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = v15;
          *&buf[12] = 2048;
          *&buf[14] = v14;
          _os_log_debug_impl(&dword_26BC65000, v34, OS_LOG_TYPE_DEBUG, "Active partial range {%lu, %lu} exhausted", buf, 0x16u);
        }

        v14 = 0;
LABEL_50:
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      _Block_object_dispose(&v53, 8);
      if (v13 >= [*(a1 + 32) length])
      {
        goto LABEL_52;
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3010000000;
    v70 = &unk_26BC7ECE5;
    v71 = xmmword_26BC79440;
    v16 = *(a1 + 32);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_178;
    v52[3] = &unk_279D26138;
    v52[5] = buf;
    v52[6] = v13;
    v52[4] = &v53;
    [v16 enumerateByteRangesUsingBlock:v52];
    if (!v54[3])
    {
      v15 = *(*&buf[8] + 32);
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __assert_rtn("[SZExtractor supplyBytes:withCompletionBlock:]_block_invoke_2", "SZExtractor.m", 909, "NSNotFound != lastByteRange.location");
      }

      v17 = *(*&buf[8] + 40);
      if (v17 > 0x500000)
      {
        v23 = _ReserveUpToBytes(*(*&buf[8] + 40));
        v54[3] = v23;
        v24 = SZGetLoggingHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v38 = v54[3];
          *v63 = 134218496;
          v64 = v38;
          v65 = 2048;
          v66 = v15;
          v67 = 2048;
          v68 = v17;
          _os_log_debug_impl(&dword_26BC65000, v24, OS_LOG_TYPE_DEBUG, "Reserved %ld bytes for too-big partial range {%lu, %lu}", v63, 0x20u);
        }

        v14 = v17;
        goto LABEL_40;
      }

      v18 = SZGetLoggingHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v37 = *(*&buf[8] + 40);
        *v63 = 134217984;
        v64 = v37;
        _os_log_debug_impl(&dword_26BC65000, v18, OS_LOG_TYPE_DEBUG, "Waiting for %lu bytes to become available", v63, 0xCu);
      }

      v19 = *(*&buf[8] + 40);
      if (v19)
      {
        pthread_mutex_lock(&_sAvailableExtractionMemoryMutex);
        while (_sAvailableExtractionMemory < v19)
        {
          v20 = SZGetLoggingHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *v63 = 134218240;
            v64 = v19;
            v65 = 2048;
            v66 = _sAvailableExtractionMemory;
            _os_log_debug_impl(&dword_26BC65000, v20, OS_LOG_TYPE_DEBUG, "Waiting for %zu bytes to become available; %zu currently available", v63, 0x16u);
          }

          pthread_cond_wait(&_sAvailableExtractionMemoryCondition, &_sAvailableExtractionMemoryMutex);
        }

        _sAvailableExtractionMemory -= v19;
        pthread_mutex_unlock(&_sAvailableExtractionMemoryMutex);
      }

      v54[3] = v19;
    }

    v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_40:
    _Block_object_dispose(buf, 8);
    goto LABEL_41;
  }

LABEL_52:
  v10 = SZGetTraceHandle();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26BC65000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "FRAGMENT_DATA", "Ending fragmentation of the supplied buffer", buf, 2u);
  }

LABEL_54:

  v39 = *(a1 + 40);
  v40 = [*(a1 + 48) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_208;
  block[3] = &unk_279D261B0;
  v42 = *(a1 + 64);
  v43 = *(a1 + 72);
  dispatch_group_notify(v39, v40, block);
}

void __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_175(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 32) + 16))();
  v2 = SZGetTraceHandle();
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 40);
    v4 = 134217984;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_26BC65000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DATA_OVER_XPC", "Finished (Succeeded: N) processing buffer of size %lu sent to the unzip service over XPC", &v4, 0xCu);
  }
}

void __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_176(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 32) + 16))();
  v4 = SZGetTraceHandle();
  if (os_signpost_enabled(v4))
  {
    v5 = *(a1 + 40);
    if (a2)
    {
      v6 = 78;
    }

    else
    {
      v6 = 89;
    }

    v7[0] = 67109376;
    v7[1] = v6;
    v8 = 2048;
    v9 = v5;
    _os_signpost_emit_with_name_impl(&dword_26BC65000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DATA_OVER_XPC", "Finished (Succeeded: %c) processing buffer of size %lu sent to the unzip service over XPC", v7, 0x12u);
  }
}

void __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_178(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, _BYTE *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3 + a4 <= a1[6])
  {
    v10 = SZGetLoggingHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134218240;
      v17 = a3;
      v18 = 2048;
      v19 = a4;
      _os_log_debug_impl(&dword_26BC65000, v10, OS_LOG_TYPE_DEBUG, "Already processed {%lu, %lu}", &v16, 0x16u);
    }
  }

  else
  {
    if (a4 - 5242881 >= 0xFFFFFFFFFFB00000)
    {
      pthread_mutex_lock(&_sAvailableExtractionMemoryMutex);
      if (_sAvailableExtractionMemory >= a4)
      {
        _sAvailableExtractionMemory -= a4;
        v9 = a4;
      }

      else
      {
        v11 = SZGetLoggingHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v16 = 134218240;
          v17 = a4;
          v18 = 2048;
          v19 = _sAvailableExtractionMemory;
          _os_log_debug_impl(&dword_26BC65000, v11, OS_LOG_TYPE_DEBUG, "Unable to reserve %zu bytes; %zu available", &v16, 0x16u);
        }

        v9 = 0;
      }

      pthread_mutex_unlock(&_sAvailableExtractionMemoryMutex);
    }

    else
    {
      v9 = 0;
    }

    v12 = SZGetLoggingHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v9 == a4)
    {
      if (v13)
      {
        v15 = *(*(a1[4] + 8) + 24);
        v16 = 134218240;
        v17 = a4;
        v18 = 2048;
        v19 = v15;
        _os_log_debug_impl(&dword_26BC65000, v12, OS_LOG_TYPE_DEBUG, "Reserved %ld bytes; adding to existing length %ld", &v16, 0x16u);
      }

      *(*(a1[4] + 8) + 24) += a4;
    }

    else
    {
      if (v13)
      {
        v16 = 134218240;
        v17 = a3;
        v18 = 2048;
        v19 = a4;
        _os_log_debug_impl(&dword_26BC65000, v12, OS_LOG_TYPE_DEBUG, "Failed to reserve last range; falling out with last range {%lu, %lu}", &v16, 0x16u);
      }

      v14 = *(a1[5] + 8);
      *(v14 + 32) = a3;
      *(v14 + 40) = a4;
      *a5 = 1;
    }
  }
}

void __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_203(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 40) + 16))();
  v2 = SZGetTraceHandle();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) length];
    v4 = 134217984;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_26BC65000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DATA_OVER_XPC", "Finished (Succeeded: N) processing buffer of size %lu sent to the unzip service over XPC", &v4, 0xCu);
  }
}

void __47__SZExtractor_supplyBytes_withCompletionBlock___block_invoke_204(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  v4 = SZGetTraceHandle();
  if (os_signpost_enabled(v4))
  {
    if (v3)
    {
      v5 = 78;
    }

    else
    {
      v5 = 89;
    }

    v6 = [*(a1 + 32) length];
    v7[0] = 67109376;
    v7[1] = v5;
    v8 = 2048;
    v9 = v6;
    _os_signpost_emit_with_name_impl(&dword_26BC65000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DATA_OVER_XPC", "Finished (Succeeded: %c) processing buffer of size %lu sent to the unzip service over XPC", v7, 0x12u);
  }
}

- (BOOL)needsPreparation
{
  serialQueue = [(SZExtractor *)self serialQueue];
  v3 = serialQueue == 0;

  return v3;
}

- (BOOL)_isValidObject
{
  unzipServiceConnection = [(SZExtractor *)self unzipServiceConnection];
  v3 = unzipServiceConnection != 0;

  return v3;
}

- (void)_invalidateObject
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(SZExtractor *)self _isValidObject])
  {
    v3 = SZGetLoggingHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_26BC65000, v3, OS_LOG_TYPE_DEFAULT, "%@: invalidating", &v5, 0xCu);
    }

    unzipServiceConnection = [(SZExtractor *)self unzipServiceConnection];
    [unzipServiceConnection invalidate];

    [(SZExtractor *)self setUnzipServiceConnection:0];
  }
}

- (void)prepareForExtractionToPath:(id)path completionBlock:(id)block
{
  v13 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  blockCopy = block;
  v8 = SZGetLoggingHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = pathCopy;
    _os_log_impl(&dword_26BC65000, v8, OS_LOG_TYPE_DEFAULT, "%@: preparing for extraction to path %@", &v9, 0x16u);
  }

  [(SZExtractor *)self setExtractionPath:pathCopy];
  [(SZExtractor *)self prepareForExtraction:blockCopy];
}

- (void)_prepareForExtractionSynchronously:(BOOL)synchronously withCompletionBlock:(id)block
{
  synchronouslyCopy = synchronously;
  v26 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = SZGetLoggingHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_26BC65000, v7, OS_LOG_TYPE_DEFAULT, "%@: preparing", buf, 0xCu);
  }

  extractionPath = [(SZExtractor *)self extractionPath];

  if (!extractionPath)
  {
    v12 = SZGetLoggingHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy3 = 0;
      _os_log_error_impl(&dword_26BC65000, v12, OS_LOG_TYPE_ERROR, "extractionPath was nil. Did you mean to call -prepareForExtractionToPath:completionBlock: instead? : %@", buf, 0xCu);
    }

    _CreateError("[SZExtractor _prepareForExtractionSynchronously:withCompletionBlock:]", 716, @"SZExtractorErrorDomain", 3, 0, v13, @"extractionPath was nil. Did you mean to call -prepareForExtractionToPath:completionBlock: instead?", v14, v21);
    goto LABEL_11;
  }

  if ([(SZExtractor *)self hasHadPostSetupMethodsCalled])
  {
    v9 = SZGetLoggingHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      selfCopy3 = "[SZExtractor _prepareForExtractionSynchronously:withCompletionBlock:]";
      v24 = 2112;
      v25 = 0;
      _os_log_error_impl(&dword_26BC65000, v9, OS_LOG_TYPE_ERROR, "Calling %s after any calls to other non-init methods on this instance is an error. : %@", buf, 0x16u);
    }

    _CreateError("[SZExtractor _prepareForExtractionSynchronously:withCompletionBlock:]", 722, @"SZExtractorErrorDomain", 3, 0, v10, @"Calling %s after any calls to other non-init methods on this instance is an error.", v11, "[SZExtractor _prepareForExtractionSynchronously:withCompletionBlock:]");
    v15 = LABEL_11:;
    blockCopy[2](blockCopy, 0, v15);

    goto LABEL_12;
  }

  if ([(SZExtractor *)self needsPreparation])
  {
    [(SZExtractor *)self _prepareForRemoteExtractionSynchronously:synchronouslyCopy withCompletionBlock:blockCopy];
  }

  else
  {
    error = [(SZExtractor *)self error];
    if (error)
    {
      v17 = error;
      v18 = SZGetLoggingHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v24 = 2112;
        v25 = v17;
        _os_log_impl(&dword_26BC65000, v18, OS_LOG_TYPE_DEFAULT, "%@: prepare called on extractor that had already returned error %@", buf, 0x16u);
      }

      blockCopy[2](blockCopy, 0, v17);
    }

    else
    {
      lastResumptionOffset = [(SZExtractor *)self lastResumptionOffset];
      v20 = SZGetLoggingHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v24 = 2048;
        v25 = lastResumptionOffset;
        _os_log_impl(&dword_26BC65000, v20, OS_LOG_TYPE_DEFAULT, "%@: prepare called on object that was already prepared; returning resumption offset %llu", buf, 0x16u);
      }

      blockCopy[2](blockCopy, lastResumptionOffset, 0);
    }
  }

LABEL_12:
}

- (void)_prepareForRemoteExtractionSynchronously:(BOOL)synchronously withCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("com.apple.StreamingZip.SZExtractorBufferSubmissionQueue", v7);
  serialQueue = self->_serialQueue;
  self->_serialQueue = v8;

  serialQueue = [(SZExtractor *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__SZExtractor__prepareForRemoteExtractionSynchronously_withCompletionBlock___block_invoke;
  block[3] = &unk_279D26070;
  block[4] = self;
  v13 = blockCopy;
  synchronouslyCopy = synchronously;
  v11 = blockCopy;
  dispatch_sync(serialQueue, block);
}

void __76__SZExtractor__prepareForRemoteExtractionSynchronously_withCompletionBlock___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  bzero(__s, 0x400uLL);
  v47 = [*(a1 + 32) extractionPath];
  v2 = *(a1 + 32);
  v57 = 0;
  v3 = [v2 _serviceConnectionWithError:&v57];
  v4 = v57;
  if (v3)
  {
    v5 = objc_alloc_init(SZExtractorInternalDelegate);
    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    *(v6 + 64) = v5;

    os_unfair_lock_lock(&SZConfiguredStreamingUnzipDelegateProtocolInterface_lock);
    WeakRetained = objc_loadWeakRetained(&SZConfiguredStreamingUnzipDelegateProtocolInterface_weakInterface);
    if (!WeakRetained)
    {
      WeakRetained = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287CA7698];
      objc_storeWeak(&SZConfiguredStreamingUnzipDelegateProtocolInterface_weakInterface, WeakRetained);
    }

    os_unfair_lock_unlock(&SZConfiguredStreamingUnzipDelegateProtocolInterface_lock);
    [v3 setExportedInterface:WeakRetained];

    v9 = [*(a1 + 32) internalExtractorDelegate];
    [v3 setExportedObject:v9];

    objc_initWeak(location, *(a1 + 32));
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __76__SZExtractor__prepareForRemoteExtractionSynchronously_withCompletionBlock___block_invoke_2;
    v55[3] = &unk_279D25FA8;
    objc_copyWeak(&v56, location);
    [v3 setInterruptionHandler:v55];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __76__SZExtractor__prepareForRemoteExtractionSynchronously_withCompletionBlock___block_invoke_2_86;
    v53[3] = &unk_279D25FA8;
    objc_copyWeak(&v54, location);
    [v3 setInvalidationHandler:v53];
    objc_destroyWeak(&v54);
    objc_destroyWeak(&v56);
    objc_destroyWeak(location);
    [v3 resume];
    [*(a1 + 32) setUnzipServiceConnection:v3];
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [v10 fileExistsAtPath:v47];

    if (v11)
    {
      v12 = v4;
    }

    else
    {
      v65 = *MEMORY[0x277CCA180];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:16877];
      v66 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];

      v15 = [MEMORY[0x277CCAA00] defaultManager];
      v52 = v4;
      v16 = [v15 createDirectoryAtPath:v47 withIntermediateDirectories:1 attributes:v14 error:&v52];
      v12 = v52;

      if (!v16)
      {
        v30 = SZGetLoggingHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *location = 138412802;
          *&location[4] = v47;
          v59 = 2112;
          v60 = v12;
          v61 = 2112;
          v62 = v12;
          _os_log_error_impl(&dword_26BC65000, v30, OS_LOG_TYPE_ERROR, "Failed to create extraction directory at path %@: %@ : %@", location, 0x20u);
        }

        v33 = _CreateError("[SZExtractor _prepareForRemoteExtractionSynchronously:withCompletionBlock:]_block_invoke", 637, @"SZExtractorErrorDomain", 1, v12, v31, @"Failed to create extraction directory at path %@: %@", v32, v47);
        [*(a1 + 32) setError:v33];

LABEL_22:
        v4 = v12;
        goto LABEL_23;
      }
    }

    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = v17;
    v19 = realpath_DARWIN_EXTSN([v17 fileSystemRepresentationWithPath:v47], __s) == 0;

    if (v19)
    {
      v25 = *__error();
      v26 = SZGetLoggingHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v45 = strerror(v25);
        *location = 138413058;
        *&location[4] = v47;
        v59 = 2080;
        v60 = __s;
        v61 = 2080;
        v62 = v45;
        v63 = 2112;
        v64 = 0;
        _os_log_error_impl(&dword_26BC65000, v26, OS_LOG_TYPE_ERROR, "Failed to realpath %@ at %s: %s : %@", location, 0x2Au);
      }

      strerror(v25);
      v29 = _CreateError("[SZExtractor _prepareForRemoteExtractionSynchronously:withCompletionBlock:]_block_invoke", 644, *MEMORY[0x277CCA5B8], v25, 0, v27, @"Failed to realpath %@ at %s: %s", v28, v47);
      [*(a1 + 32) setError:v29];
    }

    else
    {
      v20 = sandbox_extension_issue_file();
      if (v20)
      {
        v21 = [MEMORY[0x277CCAA00] defaultManager];
        v22 = [v21 stringWithFileSystemRepresentation:__s length:strlen(__s)];

        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __76__SZExtractor__prepareForRemoteExtractionSynchronously_withCompletionBlock___block_invoke_2_110;
        v50[3] = &unk_279D25FF8;
        v23 = *(a1 + 40);
        v50[4] = *(a1 + 32);
        v51 = v23;
        v24 = MEMORY[0x26D692A50](v50);
        if (*(a1 + 48) == 1)
        {
          [v3 synchronousRemoteObjectProxyWithErrorHandler:v24];
        }

        else
        {
          [v3 remoteObjectProxyWithErrorHandler:v24];
        }
        v43 = ;
        v44 = [*(a1 + 32) options];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __76__SZExtractor__prepareForRemoteExtractionSynchronously_withCompletionBlock___block_invoke_3;
        v48[3] = &unk_279D26048;
        v48[4] = *(a1 + 32);
        v49 = *(a1 + 40);
        [v43 setupUnzipperWithOutputPath:v22 sandboxExtensionToken:v20 options:v44 withReply:v48];

        free(v20);
        goto LABEL_28;
      }

      v34 = *__error();
      v35 = SZGetLoggingHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v46 = strerror(v34);
        *location = 136315650;
        *&location[4] = __s;
        v59 = 2080;
        v60 = v46;
        v61 = 2112;
        v62 = 0;
        _os_log_error_impl(&dword_26BC65000, v35, OS_LOG_TYPE_ERROR, "Failed to issue sandbox extension for %s : %s : %@", location, 0x20u);
      }

      strerror(v34);
      v38 = _CreateError("[SZExtractor _prepareForRemoteExtractionSynchronously:withCompletionBlock:]_block_invoke", 652, *MEMORY[0x277CCA5B8], v34, 0, v36, @"Failed to issue sandbox extension for %s : %s", v37, __s);
      [*(a1 + 32) setError:v38];
    }

    goto LABEL_22;
  }

  [*(a1 + 32) setError:v4];
LABEL_23:
  v39 = [*(a1 + 32) lastResumptionOffset];
  v40 = [*(a1 + 32) error];
  v41 = SZGetLoggingHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *(a1 + 32);
    *location = 138412802;
    *&location[4] = v42;
    v59 = 2048;
    v60 = v39;
    v61 = 2112;
    v62 = v40;
    _os_log_impl(&dword_26BC65000, v41, OS_LOG_TYPE_DEFAULT, "%@: calling prepare completion block with offset %llu, error %@", location, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  if (v40)
  {
    [*(a1 + 32) _invalidateObject];
  }

  v12 = v4;
LABEL_28:
}

void __76__SZExtractor__prepareForRemoteExtractionSynchronously_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = SZGetLoggingHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v6 = 138412290;
    *&v6[4] = 0;
    _os_log_error_impl(&dword_26BC65000, v2, OS_LOG_TYPE_ERROR, "Connection interrupted to streaming unzip service. : %@", v6, 0xCu);
  }

  v5 = _CreateError("[SZExtractor _prepareForRemoteExtractionSynchronously:withCompletionBlock:]_block_invoke", 616, *MEMORY[0x277CCA050], 4097, 0, v3, @"Connection interrupted to streaming unzip service.", v4, *v6);
  [WeakRetained setError:v5];

  [WeakRetained _invalidateObject];
}

void __76__SZExtractor__prepareForRemoteExtractionSynchronously_withCompletionBlock___block_invoke_2_86(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277CCA050];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"Connection invalidated to streaming unzip service.";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v2 errorWithDomain:v3 code:4099 userInfo:v4];
  [WeakRetained setError:v5];

  [WeakRetained _invalidateObject];
}

void __76__SZExtractor__prepareForRemoteExtractionSynchronously_withCompletionBlock___block_invoke_2_110(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SZGetLoggingHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    *buf = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v3;
    _os_log_error_impl(&dword_26BC65000, v4, OS_LOG_TYPE_ERROR, "%@: prepare returning error %@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __76__SZExtractor__prepareForRemoteExtractionSynchronously_withCompletionBlock___block_invoke_2_114;
  v13 = &unk_279D25FD0;
  v14 = v5;
  v15 = v3;
  v6 = v3;
  [v5 _runWithLock:&v10];
  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v6, v7, v8);
  [*(a1 + 32) _invalidateObject];
}

void __76__SZExtractor__prepareForRemoteExtractionSynchronously_withCompletionBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__SZExtractor__prepareForRemoteExtractionSynchronously_withCompletionBlock___block_invoke_4;
  v11[3] = &unk_279D26020;
  v7 = v5;
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v14 = a3;
  [v6 _runWithLock:v11];
  v9 = SZGetLoggingHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 138412802;
    v16 = v10;
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_26BC65000, v9, OS_LOG_TYPE_DEFAULT, "%@: calling prepare completion block with offset %llu, error %@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  if (v7)
  {
    [*(a1 + 32) _invalidateObject];
  }
}

void __76__SZExtractor__prepareForRemoteExtractionSynchronously_withCompletionBlock___block_invoke_4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    objc_storeStrong((a1[5] + 24), v2);
  }

  *(a1[5] + 16) = a1[6];
}

- (id)_serviceConnectionWithError:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(SZExtractor *)self privileged])
  {
    v4 = @"com.apple.StreamingUnzipService.privileged";
  }

  else
  {
    v4 = @"com.apple.StreamingUnzipService";
  }

  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:v4];
  if (v5)
  {
    os_unfair_lock_lock(&SZConfiguredStreamingUnzipProtocolInterface_lock);
    WeakRetained = objc_loadWeakRetained(&SZConfiguredStreamingUnzipProtocolInterface_weakInterface);
    if (!WeakRetained)
    {
      WeakRetained = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287CA8AC0];
      objc_storeWeak(&SZConfiguredStreamingUnzipProtocolInterface_weakInterface, WeakRetained);
    }

    os_unfair_lock_unlock(&SZConfiguredStreamingUnzipProtocolInterface_lock);
    [v5 setRemoteObjectInterface:WeakRetained];

    v7 = 0;
  }

  else
  {
    v8 = SZGetLoggingHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v12 = 138412290;
      *&v12[4] = 0;
      _os_log_error_impl(&dword_26BC65000, v8, OS_LOG_TYPE_ERROR, "Failed to create NSXPCConnection : %@", v12, 0xCu);
    }

    v7 = _CreateError("[SZExtractor _serviceConnectionWithError:]", 571, @"SZExtractorErrorDomain", 1, 0, v9, @"Failed to create NSXPCConnection", v10, *v12);
    if (error)
    {
      v7 = v7;
      *error = v7;
    }
  }

  return v5;
}

- (BOOL)_synchronouslyPrepareForExtractionAtOffset:(unint64_t *)offset
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SZExtractor__synchronouslyPrepareForExtractionAtOffset___block_invoke;
  v5[3] = &unk_279D25F80;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = offset;
  [(SZExtractor *)self _prepareForExtractionSynchronously:1 withCompletionBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __58__SZExtractor__synchronouslyPrepareForExtractionAtOffset___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = SZGetLoggingHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_error_impl(&dword_26BC65000, v6, OS_LOG_TYPE_ERROR, "%@: prepare for extraction failed: %@", &v8, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    **(a1 + 48) = a2;
  }
}

- (void)_runWithLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_ivarLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (NSXPCConnection)unzipServiceConnection
{
  os_unfair_lock_lock(&self->_ivarLock);
  v3 = self->_unzipServiceConnection;
  os_unfair_lock_unlock(&self->_ivarLock);

  return v3;
}

- (void)setUnzipServiceConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_ivarLock);
  unzipServiceConnection = self->_unzipServiceConnection;
  self->_unzipServiceConnection = connectionCopy;

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (NSError)error
{
  os_unfair_lock_lock(&self->_ivarLock);
  v3 = self->_error;
  os_unfair_lock_unlock(&self->_ivarLock);

  return v3;
}

- (void)setError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_ivarLock);
  error = self->_error;
  self->_error = errorCopy;

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (unint64_t)lastResumptionOffset
{
  os_unfair_lock_lock(&self->_ivarLock);
  lastResumptionOffset = self->_lastResumptionOffset;
  os_unfair_lock_unlock(&self->_ivarLock);
  return lastResumptionOffset;
}

- (void)setLastResumptionOffset:(unint64_t)offset
{
  os_unfair_lock_lock(&self->_ivarLock);
  self->_lastResumptionOffset = offset;

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (SZExtractorDelegate)extractorDelegate
{
  os_unfair_lock_lock(&self->_ivarLock);
  internalExtractorDelegate = [(SZExtractor *)self internalExtractorDelegate];
  v4 = internalExtractorDelegate;
  if (internalExtractorDelegate)
  {
    WeakRetained = objc_loadWeakRetained((internalExtractorDelegate + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  os_unfair_lock_unlock(&self->_ivarLock);

  return WeakRetained;
}

- (void)setExtractorDelegate:(id)delegate
{
  delegateCopy = delegate;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v5 = [(SZExtractor *)self description];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __36__SZExtractor_setExtractorDelegate___block_invoke;
  v16 = &unk_279D25F58;
  selfCopy = self;
  v6 = v5;
  v18 = v6;
  v7 = delegateCopy;
  v19 = v7;
  v20 = &v21;
  [(SZExtractor *)self _runWithLock:&v13];
  if (v22[3])
  {
    v8 = objc_opt_respondsToSelector();
    v9 = objc_opt_respondsToSelector();
    v10 = objc_opt_respondsToSelector();
    v11 = v8 & 1;
    if (v9)
    {
      v11 = v8 & 1 | 2;
    }

    if (v10)
    {
      v12 = v11 | 4;
    }

    else
    {
      v12 = v11;
    }

    [(SZExtractor *)self setActiveExtractorDelegateMethods:v12, v13, v14, v15, v16, selfCopy, v18];
  }

  _Block_object_dispose(&v21, 8);
}

void __36__SZExtractor_setExtractorDelegate___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(v2 + 56))
  {
    v5 = SZGetLoggingHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      return;
    }

    v11 = *(a1 + 40);
    v14 = 138412546;
    v15 = v11;
    v16 = 2080;
    v17 = "[SZExtractor setExtractorDelegate:]_block_invoke";
    v12 = "%@: %s was called before [SZExtractor prepareForExtraction:]; this doesn't do anything";
LABEL_14:
    _os_log_error_impl(&dword_26BC65000, v5, OS_LOG_TYPE_ERROR, v12, &v14, 0x16u);
    goto LABEL_11;
  }

  v3 = *(v2 + 32);
  v4 = SZGetLoggingHandle();
  v5 = v4;
  if (!v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 40);
    v14 = 138412546;
    v15 = v13;
    v16 = 2080;
    v17 = "[SZExtractor setExtractorDelegate:]_block_invoke";
    v12 = "%@: %s was called on an invalidated object";
    goto LABEL_14;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v14 = 138412546;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    _os_log_impl(&dword_26BC65000, v5, OS_LOG_TYPE_DEFAULT, "%@: Setting extractor delegate to 0x%p", &v14, 0x16u);
  }

  *(*(a1 + 32) + 14) = 1;
  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) internalExtractorDelegate];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak((v9 + 8), v8);
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

- (SZExtractorDelegate)delegate
{
  os_unfair_lock_lock(&self->_ivarLock);
  internalExtractorDelegate = [(SZExtractor *)self internalExtractorDelegate];
  v4 = internalExtractorDelegate;
  if (internalExtractorDelegate)
  {
    WeakRetained = objc_loadWeakRetained((internalExtractorDelegate + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  os_unfair_lock_unlock(&self->_ivarLock);

  return WeakRetained;
}

- (SZExtractor)initWithPath:(id)path md5Hashes:(id)hashes hashedChunkSize:(unint64_t)size resumptionOffset:(unint64_t *)offset
{
  v10 = MEMORY[0x277CBEAC0];
  v11 = MEMORY[0x277CCABB0];
  hashesCopy = hashes;
  pathCopy = path;
  v14 = [v11 numberWithUnsignedLongLong:size];
  v15 = [v10 dictionaryWithObjectsAndKeys:{@"SZExtractorHashTypeMD5", @"SZExtractorOptionsHashType", hashesCopy, @"SZExtractorOptionsHashesArray", v14, @"SZExtractorOptionsHashedChunkSize", 0}];

  v16 = [(SZExtractor *)self initWithPath:pathCopy options:v15 resumptionOffset:offset];
  return v16;
}

- (SZExtractor)initWithPath:(id)path options:(id)options resumptionOffset:(unint64_t *)offset
{
  v6 = [(SZExtractor *)self initWithPath:path options:options];
  v7 = v6;
  if (v6 && ![(SZExtractor *)v6 _synchronouslyPrepareForExtractionAtOffset:offset])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (SZExtractor)initWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = SZExtractor;
  v7 = [(SZExtractor *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_ivarLock._os_unfair_lock_opaque = 0;
    if (![(SZExtractor *)v7 _setUpWithPath:0 options:optionsCopy error:error])
    {

      v8 = 0;
    }
  }

  return v8;
}

- (SZExtractor)initWithOptions:(id)options
{
  optionsCopy = options;
  v8 = 0;
  v5 = [(SZExtractor *)self initWithOptions:optionsCopy error:&v8];
  v6 = v8;
  if (!v5)
  {
    SZThrowForSetupError(v6);
  }

  return v5;
}

- (SZExtractor)initWithPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = SZExtractor;
  v10 = [(SZExtractor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_ivarLock._os_unfair_lock_opaque = 0;
    if (![(SZExtractor *)v10 _setUpWithPath:pathCopy options:optionsCopy error:error])
    {

      v11 = 0;
    }
  }

  return v11;
}

- (SZExtractor)initWithPath:(id)path options:(id)options
{
  pathCopy = path;
  optionsCopy = options;
  v11 = 0;
  v8 = [(SZExtractor *)self initWithPath:pathCopy options:optionsCopy error:&v11];
  v9 = v11;
  if (!v8)
  {
    SZThrowForSetupError(v9);
  }

  return v8;
}

- (BOOL)_setUpWithPath:(id)path options:(id)options error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  optionsCopy = options;
  v10 = [optionsCopy objectForKeyedSubscript:@"SZExtractorOptionsHashesArray"];
  if (!v10)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = MEMORY[0x277CCACA8];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v22 stringWithFormat:@"SZExtractorOptionsHashesArray must be an array, but is a %@", v24];

    v26 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v40[0] = v25;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v20 = [v26 errorWithDomain:@"SZExtractorErrorDomain" code:6 userInfo:v27];

    goto LABEL_11;
  }

  if ([v10 count] >= 2)
  {
    v11 = [optionsCopy objectForKeyedSubscript:@"SZExtractorOptionsHashedChunkSize"];
    if (!v11 || (v12 = v11, [optionsCopy objectForKeyedSubscript:@"SZExtractorOptionsHashedChunkSize"], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, v12, (isKindOfClass & 1) == 0))
    {
      v28 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v38 = @"SZExtractor requires SZExtractorOptionsHashedChunkSize if passing multiple hashes in SZExtractorOptionsHashesArray";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v20 = [v28 errorWithDomain:@"SZExtractorErrorDomain" code:7 userInfo:v25];
LABEL_11:

      if (error)
      {
        v29 = v20;
        v21 = 0;
        *error = v20;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_14;
    }
  }

LABEL_6:
  v15 = [pathCopy copy];
  extractionPath = self->_extractionPath;
  self->_extractionPath = v15;

  v17 = [optionsCopy copy];
  options = self->_options;
  self->_options = v17;

  v19 = SZGetLoggingHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v33 = 2112;
    v34 = pathCopy;
    v35 = 2112;
    v36 = optionsCopy;
    _os_log_impl(&dword_26BC65000, v19, OS_LOG_TYPE_DEFAULT, "%@: initialized with path: %@ options: %@", buf, 0x20u);
  }

  v20 = 0;
  v21 = 1;
LABEL_14:

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  extractionPath = [(SZExtractor *)self extractionPath];
  options = [(SZExtractor *)self options];
  v7 = [v4 initWithPath:extractionPath options:options];

  if (self->_privileged)
  {
    v7[12] = 1;
  }

  return v7;
}

- (unint64_t)hash
{
  extractionPath = [(SZExtractor *)self extractionPath];
  options = [(SZExtractor *)self options];
  v5 = [options hash];

  if (extractionPath)
  {
    v5 ^= [extractionPath hash];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    options = [v5 options];
    options2 = [(SZExtractor *)self options];
    v8 = [options isEqual:options2];

    if (v8)
    {
      extractionPath = [v5 extractionPath];
      extractionPath2 = [(SZExtractor *)self extractionPath];
      v11 = extractionPath2;
      if ((extractionPath != 0) != (extractionPath2 != 0) || extractionPath && extractionPath2 && ![extractionPath isEqual:extractionPath2])
      {
        LOBYTE(v12) = 0;
      }

      else
      {
        privileged = [v5 privileged];
        v12 = privileged ^ [(SZExtractor *)self privileged]^ 1;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v11 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (![(SZExtractor *)self needsPreparation]&& [(SZExtractor *)self _isValidObject])
  {
    v5 = SZGetLoggingHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_26BC65000, v5, OS_LOG_TYPE_DEFAULT, "%@: suspending stream in preparation for serializing ourselves", buf, 0xCu);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__SZExtractor_encodeWithCoder___block_invoke;
    v8[3] = &unk_279D25F30;
    v8[4] = self;
    [(SZExtractor *)self _suspendStreamWithCompletionBlockSynchronously:1 completion:v8];
  }

  [coderCopy encodeObject:self->_options forKey:@"options"];
  extractionPath = self->_extractionPath;
  if (extractionPath)
  {
    [coderCopy encodeObject:extractionPath forKey:@"extractionPath"];
  }

  [coderCopy encodeBool:self->_privileged forKey:@"privileged"];
  v7 = SZGetLoggingHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_26BC65000, v7, OS_LOG_TYPE_DEFAULT, "%@: serialized", buf, 0xCu);
  }
}

void __31__SZExtractor_encodeWithCoder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = SZGetLoggingHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&dword_26BC65000, v5, OS_LOG_TYPE_ERROR, "%@: Suspending stream prior to encoding failed with error: %@", &v7, 0x16u);
    }
  }
}

- (SZExtractor)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SZExtractor;
  v5 = [(SZExtractor *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v5->_ivarLock._os_unfair_lock_opaque = 0;
    v7 = [coderCopy decodePropertyListForKey:@"options"];
    options = v6->_options;
    v6->_options = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extractionPath"];
    extractionPath = v6->_extractionPath;
    v6->_extractionPath = v9;

    v6->_privileged = [coderCopy decodeBoolForKey:@"privileged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      connection = [coderCopy connection];
      v12 = [connection valueForEntitlement:@"com.apple.private.SZExtractor.privileged"];
      bOOLValue = [v12 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        v6->_privileged = 0;
      }
    }

    v14 = SZGetLoggingHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_26BC65000, v14, OS_LOG_TYPE_DEFAULT, "%@: deserialized", buf, 0xCu);
    }
  }

  return v6;
}

- (SZExtractor)init
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v2 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v5 = 136315138;
  v6 = "[SZExtractor init]";
  _os_log_send_and_compose_impl(v3, &v8, v7, 80, &dword_26BC65000, v2, 16, "%s not available.", &v5);
  result = _os_crash_msg();
  __break(1u);
  return result;
}

- (void)setActiveExtractorDelegateMethods:(int)methods
{
  v3 = *&methods;
  v13 = *MEMORY[0x277D85DE8];
  v5 = SZGetLoggingHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_26BC65000, v5, OS_LOG_TYPE_DEFAULT, "%@: setting active extractor delegate methods to 0x%x", buf, 0x12u);
  }

  unzipServiceConnection = [(SZExtractor *)self unzipServiceConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SZExtractor_PrivateInterfaces__setActiveExtractorDelegateMethods___block_invoke;
  v8[3] = &unk_279D262A0;
  v8[4] = self;
  v7 = [unzipServiceConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 setActiveDelegateMethods:v3];
}

void __68__SZExtractor_PrivateInterfaces__setActiveExtractorDelegateMethods___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SZGetLoggingHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_26BC65000, v4, OS_LOG_TYPE_ERROR, "%@: Failed to set delegate methods enabled: %@", &v6, 0x16u);
  }
}

- (id)initForRemoteExtractionWithPath:(id)path options:(id)options resumptionOffset:(unint64_t *)offset
{
  v6 = [(SZExtractor *)self initWithPath:path options:options];
  v7 = v6;
  if (v6 && ![(SZExtractor *)v6 _synchronouslyPrepareForExtractionAtOffset:offset])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

+ (unint64_t)availableExtractionMemory
{
  pthread_mutex_lock(&_sAvailableExtractionMemoryMutex);
  v2 = _sAvailableExtractionMemory;
  pthread_mutex_unlock(&_sAvailableExtractionMemoryMutex);
  return v2;
}

+ (int)servicePIDWithError:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -1;
  v4 = [SZExtractor alloc];
  v5 = [(SZExtractor *)v4 initWithOptions:MEMORY[0x277CBEC10]];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__SZExtractor_Testing__servicePIDWithError___block_invoke;
  v15[3] = &unk_279D26250;
  v15[4] = &v20;
  v6 = MEMORY[0x26D692A50](v15);
  v7 = v21;
  obj = v21[5];
  v8 = [(SZExtractor *)v5 _serviceConnectionWithError:&obj];
  objc_storeStrong(v7 + 5, obj);
  if (!v8)
  {
    v10 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  [v8 resume];
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v10 = v9;
  if (v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__SZExtractor_Testing__servicePIDWithError___block_invoke_2;
    v13[3] = &unk_279D26278;
    v13[4] = &v20;
    v13[5] = &v16;
    [v9 getPidForTestingWithReply:v13];
  }

  if (error)
  {
LABEL_7:
    if (*(v17 + 6) == -1)
    {
      *error = v21[5];
    }
  }

LABEL_9:
  [v8 invalidate];
  v11 = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

void __44__SZExtractor_Testing__servicePIDWithError___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SZGetLoggingHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_26BC65000, v4, OS_LOG_TYPE_ERROR, "remoteObjectProxy returning error %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __44__SZExtractor_Testing__servicePIDWithError___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2 < 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

@end