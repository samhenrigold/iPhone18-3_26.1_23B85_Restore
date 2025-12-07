@interface SYOutputStreamTransaction
- (BOOL)prepare:(id *)prepare;
- (SYOutputStreamTransaction)initWithMetadata:(id)metadata;
- (id)finalizeOutput:(id *)output;
- (void)dealloc;
@end

@implementation SYOutputStreamTransaction

- (SYOutputStreamTransaction)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = SYOutputStreamTransaction;
  v5 = [(SYOutputStreamTransaction *)&v12 init];
  if (v5 && (v6 = [metadataCopy copy], metadata = v5->_metadata, v5->_metadata = v6, metadata, stream = v5->_stream, v5->_stream = 0, stream, v5->_stream))
  {
    fileURL = v5->_fileURL;
    v5->_fileURL = 0;

    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *self;
  v5 = a2;
  v6 = _SYObfuscate(a3);
  v7 = 138412546;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1DF835000, v5, OS_LOG_TYPE_ERROR, "SYOutputStreamTransaction failed to clean up a temporary file at URL %@: %{public}@", &v7, 0x16u);
}

- (BOOL)prepare:(id *)prepare
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = dispatch_semaphore_create(0);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __37__SYOutputStreamTransaction_prepare___block_invoke;
  v20 = &unk_1E86CB4C0;
  v6 = v5;
  v21 = v6;
  [(SYStreamEventHandlerBlocks *)self->_stream setOnOpenComplete:&v17];
  v7 = [(SYStreamEventHandlerBlocks *)self->_stream onOpenComplete:v17];
  [(SYStreamEventHandlerBlocks *)self->_stream setOnError:v7];

  [(SYStreamEventHandlerBlocks *)self->_stream open];
  v8 = dispatch_walltime(0, 30000000000);
  if (dispatch_semaphore_wait(v6, v8))
  {
    [(SYStreamEventHandlerBlocks *)self->_stream close];
    if (prepare)
    {
      v9 = objc_alloc(MEMORY[0x1E696ABC0]);
      v10 = *MEMORY[0x1E696A978];
      fileURL = self->_fileURL;
      v22 = *MEMORY[0x1E696A980];
      v23[0] = fileURL;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *prepare = [v9 initWithDomain:v10 code:-1001 userInfo:v12];
    }
  }

  streamStatus = [(SYStreamEventHandlerBlocks *)self->_stream streamStatus];
  if (streamStatus == 7)
  {
    if (prepare)
    {
      *prepare = [(SYStreamEventHandlerBlocks *)self->_stream streamError];
    }
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E696AE38]) initWithParent:0 userInfo:0];
    progress = self->_progress;
    self->_progress = v14;

    [(NSProgress *)self->_progress setTotalUnitCount:1000];
  }

  return streamStatus != 7;
}

- (id)finalizeOutput:(id *)output
{
  v15[2] = *MEMORY[0x1E69E9840];
  streamStatus = [(SYStreamEventHandlerBlocks *)self->_stream streamStatus];
  if (streamStatus != 6)
  {
    if (streamStatus == 7)
    {
      if (output)
      {
        [(SYStreamEventHandlerBlocks *)self->_stream streamError];
        *output = v6 = 0;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_9;
    }

    [(SYStreamEventHandlerBlocks *)self->_stream close];
  }

  v7 = objc_opt_new();
  [v7 setDecompressedFileSize:{-[SYStreamEventHandlerBlocks bytesThroughput](self->_stream, "bytesThroughput")}];
  if (_MakeFileTransferAnchor_onceToken != -1)
  {
    [SYOutputStreamTransaction finalizeOutput:];
  }

  v8 = _MakeFileTransferAnchor___formatter;
  v9 = objc_opt_new();
  v10 = [v8 stringFromDate:v9];

  [v7 setEndAnchor:v10];
  v6 = objc_opt_new();
  [v6 setFileURL:self->_fileURL];
  [v6 setMetadata:self->_metadata];
  [v6 setPbHeaderInfo:v7];
  v11 = *MEMORY[0x1E69A4780];
  v14[0] = *MEMORY[0x1E69A4788];
  v14[1] = v11;
  v15[0] = MEMORY[0x1E695E118];
  v15[1] = MEMORY[0x1E695E110];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v6 setExtraIDSOptions:v12];

LABEL_9:

  return v6;
}

@end