@interface OspreyGRPCStreamingContext
- (OspreyGRPCStreamingContext)initWithQueue:(id)queue responseHandler:(id)handler completion:(id)completion;
- (void)_writeFrame:(id)frame compressed:(BOOL)compressed error:(id *)error;
- (void)bindToUrlRequest:(id)request;
- (void)completeWithError:(id)error;
- (void)finishWriting;
- (void)handleResponseData:(id)data;
@end

@implementation OspreyGRPCStreamingContext

- (OspreyGRPCStreamingContext)initWithQueue:(id)queue responseHandler:(id)handler completion:(id)completion
{
  queueCopy = queue;
  handlerCopy = handler;
  completionCopy = completion;
  v33.receiver = self;
  v33.super_class = OspreyGRPCStreamingContext;
  v12 = [(OspreyGRPCStreamingContext *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    v14 = MEMORY[0x25F8A5BA0](completionCopy);
    completion = v13->_completion;
    v13->_completion = v14;

    v16 = [[OspreyMessageReader alloc] initWithMessageHandler:handlerCopy];
    messageReader = v13->_messageReader;
    v13->_messageReader = v16;

    v18 = objc_alloc_init(OspreyMessageWriter);
    messageWriter = v13->_messageWriter;
    v13->_messageWriter = v18;

    v31 = 0;
    v32 = 0;
    [MEMORY[0x277CBEAE0] getBoundStreamsWithBufferSize:2048 inputStream:&v32 outputStream:&v31];
    v20 = v32;
    v21 = v31;
    inputStream = v13->_inputStream;
    v13->_inputStream = v20;
    v23 = v20;

    queue = v13->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__OspreyGRPCStreamingContext_initWithQueue_responseHandler_completion___block_invoke;
    block[3] = &unk_2799F1D08;
    v28 = v13;
    v29 = v21;
    v30 = queueCopy;
    v25 = v21;
    dispatch_async(queue, block);
  }

  return v13;
}

uint64_t __71__OspreyGRPCStreamingContext_initWithQueue_responseHandler_completion___block_invoke(void *a1)
{
  v2 = [[OspreyBufferedOutputStream alloc] initWithBufferSize:0x2000 underlyingOutputStream:a1[5] queue:a1[6]];
  v3 = a1[4];
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = a1[5];

  return [v5 open];
}

- (void)finishWriting
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__OspreyGRPCStreamingContext_finishWriting__block_invoke;
  block[3] = &unk_2799F1D30;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)bindToUrlRequest:(id)request
{
  if (!self->_closed)
  {
    [request setHTTPBodyStream:self->_inputStream];
  }
}

- (void)completeWithError:(id)error
{
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    OspreyLoggingInit(errorCopy, v5);
    v7 = OspreyLogContextGRPC;
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
    {
      [(OspreyGRPCStreamingContext *)v7 completeWithError:v6];
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  inputStream = self->_inputStream;
  self->_inputStream = 0;

  [(OspreyBufferedOutputStream *)self->_outputStream close];
  outputStream = self->_outputStream;
  self->_outputStream = 0;

  messageReader = self->_messageReader;
  self->_messageReader = 0;

  messageWriter = self->_messageWriter;
  self->_messageWriter = 0;

  self->_closed = 1;
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, v6);
    v13 = self->_completion;
    self->_completion = 0;
  }
}

- (void)handleResponseData:(id)data
{
  dataCopy = data;
  messageReader = self->_messageReader;
  OspreyLoggingInit(dataCopy, v6);
  v7 = OspreyLogContextGRPC;
  if (messageReader)
  {
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
    {
      [OspreyGRPCStreamingContext handleResponseData:];
    }

    dispatch_assert_queue_V2(self->_queue);
    [(OspreyMessageReader *)self->_messageReader readData:dataCopy];
  }

  else if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
  {
    [(OspreyGRPCStreamingContext *)v7 handleResponseData:v8, v9, v10, v11, v12, v13, v14];
  }
}

- (void)_writeFrame:(id)frame compressed:(BOOL)compressed error:(id *)error
{
  compressedCopy = compressed;
  frameCopy = frame;
  v10 = frameCopy;
  if (self->_closed)
  {
    OspreyLoggingInit(frameCopy, v9);
    v11 = OspreyLogContextGRPC;
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
    {
      [(OspreyGRPCStreamingContext *)v11 _writeFrame:v12 compressed:v13 error:v14, v15, v16, v17, v18];
    }
  }

  else
  {
    if (compressedCopy && !self->_compressionEnabled)
    {
      OspreyLoggingInit(frameCopy, v9);
      v19 = OspreyLogContextGRPC;
      if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
      {
        [(OspreyGRPCStreamingContext *)v19 _writeFrame:v20 compressed:v21 error:v22, v23, v24, v25, v26];
      }

      LOBYTE(compressedCopy) = 0;
    }

    queue = self->_queue;
    v28 = qos_class_self();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __59__OspreyGRPCStreamingContext__writeFrame_compressed_error___block_invoke;
    v30[3] = &unk_2799F1D58;
    v31 = v10;
    selfCopy = self;
    v34 = compressedCopy;
    errorCopy = error;
    v29 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v28, 0, v30);
    dispatch_async(queue, v29);
  }
}

uint64_t __59__OspreyGRPCStreamingContext__writeFrame_compressed_error___block_invoke(uint64_t a1, uint64_t a2)
{
  OspreyLoggingInit(a1, a2);
  v3 = OspreyLogContextGRPC;
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    __59__OspreyGRPCStreamingContext__writeFrame_compressed_error___block_invoke_cold_1(a1, v3);
  }

  return [*(*(a1 + 40) + 32) writeMessageData:*(a1 + 32) toStream:*(*(a1 + 40) + 48) compressionEnabled:*(a1 + 56) error:*(a1 + 48)];
}

- (void)completeWithError:(void *)a1 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_DEBUG, "%s Completed with error: %@", v5, 0x16u);
}

- (void)handleResponseData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_1();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_25DDE6000, v2, OS_LOG_TYPE_DEBUG, "%s %@ handling %@", v3, 0x20u);
}

- (void)handleResponseData:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[OspreyGRPCStreamingContext handleResponseData:]";
  OUTLINED_FUNCTION_0(&dword_25DDE6000, a1, a3, "%s Attempted to handle response data when context is closed.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_writeFrame:(uint64_t)a3 compressed:(uint64_t)a4 error:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[OspreyGRPCStreamingContext _writeFrame:compressed:error:]";
  OUTLINED_FUNCTION_0(&dword_25DDE6000, a1, a3, "%s Attempted to compress data frame on request that hasn't negotiated compression.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_writeFrame:(uint64_t)a3 compressed:(uint64_t)a4 error:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[OspreyGRPCStreamingContext _writeFrame:compressed:error:]";
  OUTLINED_FUNCTION_0(&dword_25DDE6000, a1, a3, "%s Attempted to write frame when context is closed.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __59__OspreyGRPCStreamingContext__writeFrame_compressed_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 length];
  v6 = *(*(a1 + 40) + 48);
  v7 = 136315650;
  v8 = "[OspreyGRPCStreamingContext _writeFrame:compressed:error:]_block_invoke";
  v9 = 2048;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_debug_impl(&dword_25DDE6000, v4, OS_LOG_TYPE_DEBUG, "%s Writing frame of length %lu to outputStream: %@", &v7, 0x20u);
}

@end