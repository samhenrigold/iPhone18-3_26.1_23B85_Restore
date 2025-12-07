@interface SSGzipOutputStream
- (BOOL)_initializeOutputStream;
- (id)initToFileAtPath:(id)path append:(BOOL)append;
- (id)initToMemory;
- (id)streamError;
- (int64_t)_consumeStreamOutput:(BOOL)output;
- (int64_t)write:(const char *)write maxLength:(unint64_t)length;
- (unint64_t)streamStatus;
- (void)_setStreamError:(int)error context:(id)context;
- (void)close;
- (void)dealloc;
@end

@implementation SSGzipOutputStream

- (BOOL)_initializeOutputStream
{
  v27 = *MEMORY[0x1E69E9840];
  self->_streamContentLength = 0;
  p_stream = &self->_stream;
  self->_stream.zfree = 0;
  self->_stream.opaque = 0;
  self->_stream.zalloc = 0;
  v4 = deflateInit2_(&self->_stream, -1, 8, 31, 8, 0, "1.2.12", 112);
  if (!v4)
  {
    self->_streamOutBufferSize = 4096;
    v19 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    self->_streamOutBuffer = v19;
    p_stream->next_out = v19;
    p_stream->avail_out = self->_streamOutBufferSize;
    return v4 == 0;
  }

  v5 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = objc_opt_class();
  v10 = v9;
  v11 = *__error();
  v21 = 138543874;
  v22 = v9;
  v23 = 1026;
  v24 = v4;
  v25 = 1026;
  v26 = v11;
  v12 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "[%{public}@] -- error initializing z_stream [%{public}d] [Errno: %{public}d]", &v21, 24);

  if (v12)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog(v5, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
LABEL_13:
  }

  return v4 == 0;
}

- (id)initToFileAtPath:(id)path append:(BOOL)append
{
  appendCopy = append;
  v29 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v26.receiver = self;
  v26.super_class = SSGzipOutputStream;
  initToMemory = [(SSGzipOutputStream *)&v26 initToMemory];
  if (initToMemory)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFC0]) initToFileAtPath:pathCopy append:appendCopy];
    v9 = initToMemory[17];
    initToMemory[17] = v8;

    if (![initToMemory _initializeOutputStream] || !initToMemory[17])
    {
      v11 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v11)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        LODWORD(v13) = shouldLog | 2;
      }

      else
      {
        LODWORD(v13) = shouldLog;
      }

      oSLogObject = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v13 = v13;
      }

      else
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v15 = objc_opt_class();
        v27 = 138543362;
        v28 = v15;
        v16 = v15;
        v17 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: Error occurred during initialization", &v27, 12);

        if (!v17)
        {
LABEL_17:

          v24 = initToMemory[17];
          initToMemory[17] = 0;

          v10 = 0;
          goto LABEL_18;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:4];
        free(v17);
        SSFileLog(v11, @"%@", v18, v19, v20, v21, v22, v23, oSLogObject);
      }

      goto LABEL_17;
    }
  }

  v10 = initToMemory;
LABEL_18:

  return v10;
}

- (id)initToMemory
{
  v24 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SSGzipOutputStream;
  initToMemory = [(SSGzipOutputStream *)&v21 initToMemory];
  if (initToMemory)
  {
    initToMemory2 = [objc_alloc(MEMORY[0x1E695DFC0]) initToMemory];
    v4 = initToMemory[17];
    initToMemory[17] = initToMemory2;

    if (![initToMemory _initializeOutputStream] || !initToMemory[17])
    {
      v6 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        LODWORD(v8) = shouldLog | 2;
      }

      else
      {
        LODWORD(v8) = shouldLog;
      }

      oSLogObject = [v6 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v8 = v8;
      }

      else
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v10 = objc_opt_class();
        v22 = 138543362;
        v23 = v10;
        v11 = v10;
        v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: Error occurred during initialization", &v22, 12);

        if (!v12)
        {
LABEL_17:

          v19 = initToMemory[17];
          initToMemory[17] = 0;

          v5 = 0;
          goto LABEL_18;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
        free(v12);
        SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
      }

      goto LABEL_17;
    }
  }

  v5 = initToMemory;
LABEL_18:

  return v5;
}

- (void)dealloc
{
  p_stream = &self->_stream;
  p_stream->next_out = 0;
  p_stream->avail_out = 0;
  deflateEnd(p_stream);
  streamOutBuffer = self->_streamOutBuffer;
  if (streamOutBuffer)
  {
    free(streamOutBuffer);
  }

  v5.receiver = self;
  v5.super_class = SSGzipOutputStream;
  [(SSGzipOutputStream *)&v5 dealloc];
}

- (void)close
{
  v29 = *MEMORY[0x1E69E9840];
  streamError = [(SSGzipOutputStream *)self streamError];

  if (!streamError)
  {
    while (1)
    {
      self->_stream.next_in = 0;
      self->_stream.avail_in = 0;
      v4 = deflate(&self->_stream, 4);
      if (v4 >= 2)
      {
        break;
      }

      v5 = [(SSGzipOutputStream *)self _consumeStreamOutput:1];
      if (v4 == 1 || v5 == -1)
      {
        goto LABEL_7;
      }
    }

    [(SSGzipOutputStream *)self _setStreamError:v4 context:@"close"];
LABEL_7:
    self->_streamContentLength = self->_stream.total_out;
    v6 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      total_in = self->_stream.total_in;
      total_out = self->_stream.total_out;
      v21 = 138544130;
      v22 = v10;
      v23 = 1026;
      v24 = total_in;
      v25 = 1026;
      v26 = total_out;
      v27 = 1026;
      v28 = v4;
      v13 = v10;
      v14 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "[%{public}@] Closed Stream [total_in: %{public}d] [total_out: %{public}d] -- %{public}d", &v21, 30);

      if (!v14)
      {
LABEL_19:

        [(SSGzipOutputStream *)self _setStreamError:deflateEnd(&self->_stream) context:@"close"];
        goto LABEL_20;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog(v6, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
    }

    goto LABEL_19;
  }

LABEL_20:
  [(NSOutputStream *)self->_backingStream close];
}

- (unint64_t)streamStatus
{
  if (self->_streamError)
  {
    return 7;
  }

  else
  {
    return [(NSOutputStream *)self->_backingStream streamStatus];
  }
}

- (id)streamError
{
  streamError = self->_streamError;
  if (streamError)
  {
    streamError = streamError;
  }

  else
  {
    streamError = [(NSOutputStream *)self->_backingStream streamError];
  }

  return streamError;
}

- (int64_t)write:(const char *)write maxLength:(unint64_t)length
{
  v29 = *MEMORY[0x1E69E9840];
  streamError = [(SSGzipOutputStream *)self streamError];

  if (streamError)
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = shouldLog | 2;
    }

    else
    {
      LODWORD(v10) = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v13 = v12;
      streamError2 = [(SSGzipOutputStream *)self streamError];
      v25 = 138543618;
      v26 = v12;
      v27 = 2114;
      v28 = streamError2;
      v15 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "[%{public}@] -- write called on stream with error: %{public}@", &v25, 22);

      if (!v15)
      {
        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog(v8, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

LABEL_14:
    return -1;
  }

  self->_stream.next_in = write;
  self->_stream.avail_in = length;
  do
  {
    self->_stream.next_out = self->_streamOutBuffer;
    self->_stream.avail_out = self->_streamOutBufferSize;
    v23 = deflate(&self->_stream, 0);
    if (v23 >= 2)
    {
      [(SSGzipOutputStream *)self _setStreamError:v23 context:@"write:maxLength:"];
      return -1;
    }

    if ([(SSGzipOutputStream *)self _consumeStreamOutput:1]== -1)
    {
      return -1;
    }
  }

  while (!self->_stream.avail_out);
  self->_stream.next_in = 0;
  self->_stream.avail_in = 0;
  streamError3 = [(SSGzipOutputStream *)self streamError];
  if (streamError3)
  {
    length = -1;
  }

  return length;
}

- (int64_t)_consumeStreamOutput:(BOOL)output
{
  p_stream = &self->_stream;
  avail_out = self->_stream.avail_out;
  if (!output)
  {
    if (avail_out)
    {
      return 0;
    }

    avail_out = 0;
  }

  streamOutBufferSize = self->_streamOutBufferSize;
  if (streamOutBufferSize == avail_out)
  {
    return 0;
  }

  result = [(NSOutputStream *)self->_backingStream write:self->_streamOutBuffer maxLength:streamOutBufferSize - avail_out];
  p_stream->next_out = self->_streamOutBuffer;
  p_stream->avail_out = self->_streamOutBufferSize;
  return result;
}

- (void)_setStreamError:(int)error context:(id)context
{
  v4 = *&error;
  v40 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (v4 >= 2)
  {
    streamError = [(SSGzipOutputStream *)self streamError];

    if (!streamError)
    {
      v8 = *__error();
      v9 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        LODWORD(v11) = shouldLog | 2;
      }

      else
      {
        LODWORD(v11) = shouldLog;
      }

      oSLogObject = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v11 = v11;
      }

      else
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v13 = objc_opt_class();
        v14 = v13;
        v15 = *__error();
        v32 = 138544130;
        v33 = v13;
        v34 = 1026;
        v35 = v4;
        v36 = 1026;
        v37 = v15;
        v38 = 2114;
        v39 = contextCopy;
        v16 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "[%{public}@] -- error deflating stream [%{public}d] [Errno: %{public}d] [Context: %{public}@]", &v32, 34);

        if (!v16)
        {
LABEL_15:

          v30[0] = @"avail_in";
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_stream.avail_in];
          v31[0] = v23;
          v30[1] = @"avail_out";
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_stream.avail_out];
          v31[1] = v24;
          v30[2] = @"error";
          v25 = [MEMORY[0x1E696AD98] numberWithInt:v4];
          v31[2] = v25;
          v30[3] = @"errno";
          v26 = [MEMORY[0x1E696AD98] numberWithInt:v8];
          v30[4] = @"context";
          v31[3] = v26;
          v31[4] = contextCopy;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:5];

          v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSGzipOutputStream" code:v4 userInfo:v27];
          streamError = self->_streamError;
          self->_streamError = v28;

          deflateEnd(&self->_stream);
          goto LABEL_16;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
        free(v16);
        SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
      }

      goto LABEL_15;
    }
  }

LABEL_16:
}

@end