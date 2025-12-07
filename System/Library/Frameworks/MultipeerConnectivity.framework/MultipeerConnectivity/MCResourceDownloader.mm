@interface MCResourceDownloader
- (MCResourceDownloader)initWithSession:(id)session resourceUrl:(id)url name:(id)name peerID:(id)d;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)dealloc;
- (void)sendData:(id)data fromByteOffset:(unint64_t)offset;
- (void)syncCloseStreamForSession:(id)session withError:(id)error;
@end

@implementation MCResourceDownloader

- (MCResourceDownloader)initWithSession:(id)session resourceUrl:(id)url name:(id)name peerID:(id)d
{
  v14.receiver = self;
  v14.super_class = MCResourceDownloader;
  v10 = [(MCResourceDownloader *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(MCResourceDownloader *)v10 setSession:session];
    [(MCResourceDownloader *)v11 setResourceName:name];
    [(MCResourceDownloader *)v11 setPeerID:d];
    v12 = [MEMORY[0x277CBABA0] requestWithURL:url];
    -[MCResourceDownloader setUrlSession:](v11, "setUrlSession:", [MEMORY[0x277CBABB8] sessionWithConfiguration:objc_msgSend(MEMORY[0x277CBABC8] delegate:"defaultSessionConfiguration") delegateQueue:{v11, 0}]);
    [(MCResourceDownloader *)v11 setUrlTask:[(NSURLSession *)v11->_urlSession dataTaskWithRequest:v12]];
    [(NSURLSessionDataTask *)v11->_urlTask resume];
  }

  return v11;
}

- (void)dealloc
{
  objc_storeWeak(&self->_session, 0);
  _Block_release(self->_urlResponseHandler);
  v3.receiver = self;
  v3.super_class = MCResourceDownloader;
  [(MCResourceDownloader *)&v3 dealloc];
}

- (void)syncCloseStreamForSession:(id)session withError:(id)error
{
  v7 = [objc_msgSend(session "peerStates")];
  v8 = [objc_msgSend(v7 "outgoingStreams")];
  if (v8)
  {
    v9 = v8;
    [session syncSendXDataStreamCloseFromSenderToPID:-[MCPeerID pid](self->_peerID streamID:"pid") closeReason:{objc_msgSend(v8, "streamID"), 2 * (error != 0)}];
    peerID = self->_peerID;

    [session syncCloseOutgoingStream:v9 forPeer:peerID state:v7 error:error shouldTriggerCancelProgress:0];
  }

  else
  {
    v11 = [objc_msgSend(v7 "outgoingStreamRequests")];
    if ([v11 completionHandler])
    {
      callbackQueue = [session callbackQueue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __60__MCResourceDownloader_syncCloseStreamForSession_withError___block_invoke;
      v13[3] = &unk_278B43C60;
      v13[4] = v11;
      v13[5] = error;
      dispatch_async(callbackQueue, v13);
    }

    [objc_msgSend(v7 "outgoingStreamRequests")];
  }
}

uint64_t __60__MCResourceDownloader_syncCloseStreamForSession_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 16))(v2, *(a1 + 40));
  v3 = *(a1 + 32);

  return [v3 setCompletionHandler:0];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = [(MCResourceDownloader *)self session:session];
  v10 = mcs_log(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    sessionCopy = session;
    v15 = 2112;
    errorCopy = error;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "URL session[%@] did complete with error [%@].", buf, 0x16u);
  }

  if (error)
  {
    if (v8)
    {
      syncQueue = [(MCSession *)v8 syncQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__MCResourceDownloader_URLSession_task_didCompleteWithError___block_invoke;
      block[3] = &unk_278B43C88;
      block[4] = self;
      block[5] = v8;
      block[6] = error;
      dispatch_async(syncQueue, block);
    }
  }
}

void __61__MCResourceDownloader_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) syncCloseStreamForSession:*(a1 + 40) withError:*(a1 + 48)];
  v2 = *(a1 + 40);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = mcs_log(self, a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    taskCopy = task;
    v17 = 2112;
    responseCopy = response;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "URLSession received task[%@] response[%@].", buf, 0x16u);
  }

  session = [(MCResourceDownloader *)self session];
  if (session)
  {
    v12 = session;
    syncQueue = [(MCSession *)session syncQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__MCResourceDownloader_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
    block[3] = &unk_278B43CB0;
    block[4] = v12;
    block[5] = self;
    block[7] = task;
    block[8] = handler;
    block[6] = response;
    dispatch_async(syncQueue, block);
  }
}

void __81__MCResourceDownloader_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [objc_msgSend(*(a1 + 32) "peerStates")];
  v3 = [objc_msgSend(v2 "outgoingStreamRequests")];
  v5 = mcs_log(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    *buf = 138412802;
    v14 = v6;
    v15 = 2112;
    v16 = [v3 name];
    v17 = 1024;
    v18 = [v3 streamID];
    _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Streaming: received HTTP response [%@] stream name [%@] streamID [%08X].", buf, 0x1Cu);
  }

  v7 = [*(a1 + 48) statusCode];
  v8 = *(a1 + 64);
  if (v7 == 200)
  {
    *(*(a1 + 40) + 24) = _Block_copy(v8);
    if (![*(a1 + 56) countOfBytesExpectedToReceive])
    {
      [v3 setProgressUnbounded:1];
    }

    [objc_msgSend(v3 "progress")];
    [*(a1 + 32) syncStartStreamWithName:*(*(a1 + 40) + 40) toPeer:*(*(a1 + 40) + 48) mcFD:0xFFFFFFFFLL isResource:1];
  }

  else
  {
    v8[2](v8, 0);
    v9 = [MEMORY[0x277CBAB48] localizedStringForStatusCode:v7];
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:6 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v9, *MEMORY[0x277CCA450])}];
    if ([v3 completionHandler])
    {
      v11 = [*(a1 + 32) callbackQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __81__MCResourceDownloader_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_173;
      v12[3] = &unk_278B43C60;
      v12[4] = v3;
      v12[5] = v10;
      dispatch_async(v11, v12);
    }

    [objc_msgSend(v2 "outgoingStreamRequests")];
  }
}

uint64_t __81__MCResourceDownloader_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_173(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 16))(v2, *(a1 + 40));
  v3 = *(a1 + 32);

  return [v3 setCompletionHandler:0];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = mcs_log(self, a2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    taskCopy = task;
    v17 = 1024;
    v18 = [data length];
    _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "URLSession received task[%@] bytes[%d].", buf, 0x12u);
  }

  [(NSURLSessionDataTask *)self->_urlTask suspend];
  session = [(MCResourceDownloader *)self session];
  if (session)
  {
    v11 = session;
    if ([data length])
    {
      [(MCResourceDownloader *)self sendData:data fromByteOffset:0];
    }

    else
    {
      syncQueue = [(MCSession *)v11 syncQueue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __59__MCResourceDownloader_URLSession_dataTask_didReceiveData___block_invoke;
      v14[3] = &unk_278B43C60;
      v14[4] = self;
      v14[5] = v11;
      dispatch_async(syncQueue, v14);
    }
  }

  else
  {
    v12 = mcs_log(0, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MCResourceDownloader URLSession:dataTask:didReceiveData:];
    }

    [(NSURLSessionDataTask *)self->_urlTask cancel];
  }
}

void __59__MCResourceDownloader_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) syncCloseStreamForSession:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"MCSession", 0, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"No data.", *MEMORY[0x277CCA450]))}];
  v2 = *(a1 + 40);
}

- (void)sendData:(id)data fromByteOffset:(unint64_t)offset
{
  v35 = *MEMORY[0x277D85DE8];
  session = [(MCResourceDownloader *)self session];
  if (session)
  {
    v9 = session;
    v10 = [objc_msgSend(-[NSMutableDictionary objectForKey:](-[MCSession peerStates](session "peerStates")];
    [v10 setSourceSuspended:1];
    v25[1] = v25;
    v11 = v25 - ((AGPSessionMaximumSegmentSize(1) + 15) & 0x1FFFFFFF0);
    *v11 = bswap32([v10 streamID]);
    LODWORD(v12) = AGPSessionMaximumSegmentSize(1) - 4;
    v13 = [data length];
    v14 = v13 - offset;
    if (v13 - offset >= v12)
    {
      v12 = v12;
    }

    else
    {
      v12 = v13 - offset;
    }

    v15 = memcpy(v11 + 4, ([data bytes] + offset), v12);
    v17 = mcs_log(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      name = [v10 name];
      *buf = 138412802;
      v30 = name;
      v31 = 2048;
      v32 = v12;
      v33 = 2048;
      v34 = v14;
      _os_log_impl(&dword_239FB7000, v17, OS_LOG_TYPE_DEFAULT, "Streaming: Outgoing HTTP download stream segment [%@]: %ld bytes to send (total %ld).", buf, 0x20u);
    }

    *buf = 0;
    v28 = [(MCPeerID *)self->_peerID pid];
    agpSession = [(MCSession *)v9 agpSession];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __48__MCResourceDownloader_sendData_fromByteOffset___block_invoke;
    v27[3] = &unk_278B43CD8;
    v27[8] = v12;
    v27[9] = v14;
    v27[4] = v10;
    v27[5] = self;
    v27[10] = offset;
    v27[6] = data;
    v27[7] = v9;
    v20 = AGPSessionSendTo(agpSession, &v28, 1, v11, v12 + 4, buf, 0, 0xAu, 1u, v27);
    if (v20)
    {
      v22 = mcs_log(v20, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [MCResourceDownloader sendData:fromByteOffset:];
      }

      syncQueue = [(MCSession *)v9 syncQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__MCResourceDownloader_sendData_fromByteOffset___block_invoke_177;
      block[3] = &unk_278B43C60;
      block[4] = self;
      block[5] = v9;
      dispatch_async(syncQueue, block);
    }
  }

  else
  {
    v24 = mcs_log(0, v8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MCResourceDownloader URLSession:dataTask:didReceiveData:];
    }

    [(NSURLSessionDataTask *)self->_urlTask cancel];
  }
}

void __48__MCResourceDownloader_sendData_fromByteOffset___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) progress])
  {
    v2 = [*(a1 + 32) progressUnbounded];
    v3 = [*(a1 + 32) progress];
    v4 = v3;
    if (v2)
    {
      v5 = [v3 totalUnitCount];
      v6 = v5 - [objc_msgSend(*(a1 + 32) "progress")];
      v4 = [*(a1 + 32) progress];
      v7 = ([v4 completedUnitCount] + v6 * 0.05);
    }

    else
    {
      v7 = *(a1 + 64) + [v3 completedUnitCount];
    }

    [v4 setCompletedUnitCount:v7];
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 40);
  if (*(a1 + 72) == v8)
  {
    if ([v9[2] state] == 3)
    {
      v10 = [*(a1 + 56) syncQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __48__MCResourceDownloader_sendData_fromByteOffset___block_invoke_2;
      v12[3] = &unk_278B43C60;
      v11 = *(a1 + 56);
      v12[4] = *(a1 + 40);
      v12[5] = v11;
      dispatch_async(v10, v12);
    }

    else
    {
      [*(*(a1 + 40) + 16) resume];
      [*(a1 + 32) setSourceSuspended:0];
    }
  }

  else
  {
    [v9 sendData:*(a1 + 48) fromByteOffset:*(a1 + 80) + v8];
  }
}

void __48__MCResourceDownloader_sendData_fromByteOffset___block_invoke_177(uint64_t a1)
{
  [*(a1 + 32) syncCloseStreamForSession:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"MCSession", 0, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Send failure.", *MEMORY[0x277CCA450]))}];
  v2 = *(a1 + 40);
}

- (void)URLSession:dataTask:didReceiveData:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendData:fromByteOffset:.cold.1()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

@end