@interface MCNearbyDiscoveryPeerConnection
- (BOOL)shouldDecideAboutConnection;
- (MCNearbyDiscoveryPeerConnection)initWithLocalServiceName:(id)name;
- (id)stringForStreamEventCode:(unint64_t)code;
- (int)socketForStream:(id)stream;
- (void)attachInputStream:(id)stream outputStream:(id)outputStream;
- (void)connectToNetService:(id)service;
- (void)dealloc;
- (void)invalidate;
- (void)sendData:(id)data withCompletionHandler:(id)handler;
- (void)setSyncQueue:(id)queue;
- (void)setTargetQueue:(id)queue;
- (void)setupInputStream:(id)stream outputStream:(id)outputStream;
- (void)shouldDecideAboutConnection;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
- (void)syncAcceptedConnection;
- (void)syncAppendDataToSend:(id)send;
- (void)syncCloseConnectionNow;
- (void)syncHandleInputStreamEvent:(unint64_t)event;
- (void)syncHandleOutputStreamEvent:(unint64_t)event;
- (void)syncHandleStreamEventOpenCompleted:(id)completed;
- (void)syncProcessMessage:(int)message data:(id)data sequenceNumber:(unsigned int)number;
- (void)syncReadFromInputStream;
- (void)syncReceivedData:(id)data error:(id)error;
- (void)syncSendData;
- (void)syncSendHello;
- (void)syncSendMessage:(int)message data:(id)data withCompletionHandler:(id)handler;
- (void)syncSendMessageReceipt:(int)receipt sequenceNumber:(unsigned int)number;
@end

@implementation MCNearbyDiscoveryPeerConnection

- (MCNearbyDiscoveryPeerConnection)initWithLocalServiceName:(id)name
{
  v13.receiver = self;
  v13.super_class = MCNearbyDiscoveryPeerConnection;
  v4 = [(MCNearbyDiscoveryPeerConnection *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v4->_dataReceived = v5;
    if (v5 && (v6 = objc_alloc_init(MEMORY[0x277CBEB28]), (v4->_dataToSend = v6) != 0) && (v7 = objc_alloc_init(MEMORY[0x277CBEB28]), (v4->_dataToSendHoldingQueue = v7) != 0) && (v8 = objc_alloc_init(MEMORY[0x277CBEB18]), (v4->_receivedDataHoldingQueue = v8) != 0) && (v9 = objc_alloc_init(MEMORY[0x277CBEB18]), (v4->_receivedDataContentHoldingQueue = v9) != 0) && (v10 = objc_alloc_init(MEMORY[0x277CBEB18]), (v4->_messageReceiptHandlerList = v10) != 0) && (v11 = objc_alloc_init(MEMORY[0x277CBEB18]), (v4->_messageReceiptHandlerHoldingQueue = v11) != 0))
    {
      [(MCNearbyDiscoveryPeerConnection *)v4 setLocalServiceName:name];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)setSyncQueue:(id)queue
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  syncQueue = self->_syncQueue;
  if (syncQueue)
  {
    dispatch_release(syncQueue);
  }

  self->_syncQueue = queue;
}

- (void)setTargetQueue:(id)queue
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  targetQueue = self->_targetQueue;
  if (targetQueue)
  {
    dispatch_release(targetQueue);
  }

  self->_targetQueue = queue;
}

- (void)syncAppendDataToSend:(id)send
{
  [(NSMutableData *)self->_dataToSend appendData:send];
  if (self->_readyToWrite)
  {

    [(MCNearbyDiscoveryPeerConnection *)self syncSendData];
  }
}

- (void)setupInputStream:(id)stream outputStream:(id)outputStream
{
  v19 = *MEMORY[0x277D85DE8];
  [stream setDelegate:self];
  [outputStream setDelegate:self];
  v7 = MEMORY[0x277D85CD0];
  if (self->_syncQueue)
  {
    syncQueue = self->_syncQueue;
  }

  else
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  MEMORY[0x23EE80CD0](stream, syncQueue);
  if (self->_syncQueue)
  {
    v9 = self->_syncQueue;
  }

  else
  {
    v9 = v7;
  }

  MEMORY[0x23EE80DC0](outputStream, v9);
  v10 = *MEMORY[0x277CBAE10];
  v11 = MEMORY[0x277CBEC38];
  [stream setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBAE10]];
  v12 = [outputStream setProperty:v11 forKey:v10];
  self->_shouldSendHello = 1;
  v14 = mcdpc_log(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218240;
    streamCopy = stream;
    v17 = 2048;
    outputStreamCopy = outputStream;
    _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "Opening input [%p]/output [%p] streams.", &v15, 0x16u);
  }

  [stream open];
  [outputStream open];
}

- (void)connectToNetService:(id)service
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__MCNearbyDiscoveryPeerConnection_connectToNetService___block_invoke;
  v4[3] = &unk_278B43C60;
  if (!syncQueue)
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  v4[4] = service;
  v4[5] = self;
  dispatch_async(syncQueue, v4);
}

void __55__MCNearbyDiscoveryPeerConnection_connectToNetService___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = mcdpc_log(a1, a2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v6 = [*(a1 + 32) name];
    v7 = *(a1 + 40);
    v8 = *(v7 + 8);
    *buf = 138412802;
    *&buf[4] = v6;
    v13 = 2048;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Requesting connection with netService with name [%@] ptr [%p] remote [%@].", buf, 0x20u);
  }

  v9 = *(a1 + 40);
  if (*(v9 + 40) || *(v9 + 48))
  {
    v10 = mcdpc_log(v4, v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Already connected!", buf, 2u);
    }
  }

  else
  {
    *(v9 + 24) = 0;
    *(*(a1 + 40) + 25) = 0;
    v11 = 0;
    *buf = 0;
    [*(a1 + 32) getInputStream:buf outputStream:&v11];
    [*(a1 + 40) setupInputStream:*buf outputStream:v11];
    [*(a1 + 40) setInputStream:*buf];
    [*(a1 + 40) setOutputStream:v11];
  }
}

- (void)attachInputStream:(id)stream outputStream:(id)outputStream
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MCNearbyDiscoveryPeerConnection_attachInputStream_outputStream___block_invoke;
  block[3] = &unk_278B43C88;
  if (!syncQueue)
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  block[4] = self;
  block[5] = stream;
  block[6] = outputStream;
  dispatch_async(syncQueue, block);
}

void __66__MCNearbyDiscoveryPeerConnection_attachInputStream_outputStream___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = mcdpc_log(a1, a2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(a1 + 48);
    v11 = 138412802;
    v12 = v7;
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Responding connection sequence - remoteServiceName [%@] inputStream [%p] outputStream =[%p]).", &v11, 0x20u);
  }

  v9 = *(a1 + 32);
  if (*(v9 + 40) || *(v9 + 48))
  {
    v10 = mcdpc_log(v4, v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Already connected!", &v11, 2u);
    }
  }

  else
  {
    *(v9 + 24) = 0;
    *(*(a1 + 32) + 25) = 0;
    [*(a1 + 32) setupInputStream:*(a1 + 40) outputStream:*(a1 + 48)];
    [*(a1 + 32) setInputStream:*(a1 + 40)];
    [*(a1 + 32) setOutputStream:*(a1 + 48)];
  }
}

- (BOOL)shouldDecideAboutConnection
{
  v20 = *MEMORY[0x277D85DE8];
  localServiceName = [(MCNearbyDiscoveryPeerConnection *)self localServiceName];
  if (localServiceName && (localServiceName = [(MCNearbyDiscoveryPeerConnection *)self remoteServiceName]) != 0)
  {
    v5 = [(NSString *)[(MCNearbyDiscoveryPeerConnection *)self remoteServiceName] isEqualToString:[(MCNearbyDiscoveryPeerConnection *)self localServiceName]];
    if (v5)
    {
      v7 = mcdpc_log(v5, v6);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        [MCNearbyDiscoveryPeerConnection shouldDecideAboutConnection];
LABEL_8:
        LOBYTE(v8) = 0;
      }
    }

    else
    {
      v10 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", -[MCNearbyDiscoveryPeerConnection localServiceName](self, "localServiceName")];
      v11 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", -[MCNearbyDiscoveryPeerConnection remoteServiceName](self, "remoteServiceName")];
      do
      {
        [v10 appendFormat:@"+%@", -[MCNearbyDiscoveryPeerConnection remoteServiceName](self, "remoteServiceName")];
        [v11 appendFormat:@"+%@", -[MCNearbyDiscoveryPeerConnection localServiceName](self, "localServiceName")];
        CC_MD5([v10 UTF8String], objc_msgSend(v10, "length"), md);
        CC_MD5([v11 UTF8String], objc_msgSend(v11, "length"), v16);
        v12 = bswap64(*md);
        v13 = bswap64(*v16);
        if (v12 != v13)
        {
          break;
        }

        v12 = bswap64(v19);
        v13 = bswap64(v17);
      }

      while (v12 == v13);
      if (v12 < v13)
      {
        v14 = -1;
      }

      else
      {
        v14 = 1;
      }

      return v14 >> 31;
    }
  }

  else
  {
    v9 = mcdpc_log(localServiceName, v4);
    v8 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [MCNearbyDiscoveryPeerConnection shouldDecideAboutConnection];
      goto LABEL_8;
    }
  }

  return v8;
}

- (void)syncSendData
{
  if (self->_shouldSendHello)
  {
    [(MCNearbyDiscoveryPeerConnection *)self syncSendHello];
    self->_shouldSendHello = 0;
  }

  if ([(NSMutableData *)self->_dataToSend length])
  {
    v3 = [(NSOutputStream *)self->_outputStream write:[(NSMutableData *)self->_dataToSend bytes] maxLength:[(NSMutableData *)self->_dataToSend length]];
    if (v3 < 1)
    {
      return;
    }

    [(NSMutableData *)self->_dataToSend replaceBytesInRange:0 withBytes:v3 length:0, 0];
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  self->_readyToWrite = v4;
}

- (void)syncSendMessage:(int)message data:(id)data withCompletionHandler:(id)handler
{
  v61 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  v11 = v9;
  if (message == 2000 || message == 2100 || message == 2200)
  {
    v12 = [handler copy];
    v13 = [data length];
    currentSequenceNumber = self->_currentSequenceNumber;
    self->_currentSequenceNumber = (currentSequenceNumber + 1) & 0x7FFFFFFF;
    buf[0] = BYTE1(message);
    buf[1] = message;
    v51 = 0;
    v52 = HIBYTE(v13);
    v53 = BYTE2(v13);
    v54 = BYTE1(v13);
    v55 = v13;
    v56 = 0;
    v57 = HIBYTE(currentSequenceNumber);
    v58 = BYTE2(currentSequenceNumber);
    v59 = BYTE1(currentSequenceNumber);
    v60 = currentSequenceNumber;
    v15 = crc32(0, buf, 0x10u);
    v16 = [data length];
    if (v16)
    {
      v16 = crc32(v15, [data bytes], objc_msgSend(data, "length"));
      v15 = v16;
    }

    v56 = bswap32(v15);
    v18 = mcdpc_log(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      inputStream = self->_inputStream;
      outputStream = self->_outputStream;
      remoteServiceName = self->_remoteServiceName;
      *v44 = 67110658;
      LODWORD(v45) = currentSequenceNumber;
      WORD2(v45) = 1024;
      *(&v45 + 6) = v13 + 16;
      WORD5(v45) = 1024;
      HIDWORD(v45) = v15;
      *v46 = 2048;
      *&v46[2] = self;
      *v47 = 2048;
      *&v47[2] = inputStream;
      *v48 = 2048;
      *&v48[2] = outputStream;
      LOWORD(v49[0]) = 2112;
      *(v49 + 2) = remoteServiceName;
      _os_log_impl(&dword_239FB7000, v18, OS_LOG_TYPE_DEFAULT, "Made message #%u with length [len=%u] and crc [=%08X] - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", v44, 0x3Cu);
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __78__MCNearbyDiscoveryPeerConnection_syncSendMessage_data_withCompletionHandler___block_invoke;
    v40[3] = &unk_278B44198;
    v41 = currentSequenceNumber;
    v42 = v13;
    v43 = v15;
    v40[4] = self;
    v40[5] = v12;
    v22 = [v40 copy];
    v24 = v22;
    if (message == 2100 && !self->_connected)
    {
      v31 = mcdpc_log(v22, v23);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [data length];
        v33 = self->_inputStream;
        v34 = self->_outputStream;
        v35 = self->_remoteServiceName;
        *v44 = 67110146;
        LODWORD(v45) = v32;
        WORD2(v45) = 2048;
        *(&v45 + 6) = self;
        HIWORD(v45) = 2048;
        *v46 = v33;
        *&v46[8] = 2048;
        *v47 = v34;
        *&v47[8] = 2112;
        *v48 = v35;
        _os_log_impl(&dword_239FB7000, v31, OS_LOG_TYPE_DEFAULT, "Still connecting - queueing data (%u) - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", v44, 0x30u);
      }

      [(NSMutableArray *)self->_messageReceiptHandlerHoldingQueue addObject:v24];
      [(NSMutableData *)self->_dataToSendHoldingQueue appendBytes:buf length:16];
      [(NSMutableData *)self->_dataToSendHoldingQueue appendData:data];
    }

    else
    {
      [(NSMutableArray *)self->_messageReceiptHandlerList addObject:v22];
      v25 = [MEMORY[0x277CBEB28] dataWithBytes:buf length:16];
      v26 = [v25 appendData:data];
      v28 = mcdpc_log(v26, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        if (message == 2000)
        {
          v29 = "Hello";
        }

        else if (message == 2200)
        {
          v29 = "Accept";
        }

        else
        {
          v29 = "Data";
        }

        v36 = [data length];
        v37 = self->_inputStream;
        v38 = self->_outputStream;
        v39 = self->_remoteServiceName;
        *v44 = 136316418;
        *&v45 = v29;
        WORD4(v45) = 1024;
        *(&v45 + 10) = v36;
        HIWORD(v45) = 2048;
        *v46 = self;
        *&v46[8] = 2048;
        *v47 = v37;
        *&v47[8] = 2048;
        *v48 = v38;
        *&v48[8] = 2112;
        v49[0] = v39;
        _os_log_impl(&dword_239FB7000, v28, OS_LOG_TYPE_DEFAULT, "Sending type [%s] data [%u] - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", v44, 0x3Au);
      }

      [(MCNearbyDiscoveryPeerConnection *)self syncAppendDataToSend:v25];
    }
  }

  else
  {
    v30 = mcdpc_log(v9, v10);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MCNearbyDiscoveryPeerConnection syncSendMessage:data:withCompletionHandler:];
    }

    (*(handler + 2))(handler, [MEMORY[0x277CCA9B8] errorWithDomain:@"MCNearbyDiscoveryPeerConnection" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Unable to send unknown message type", *MEMORY[0x277CCA450])}]);
  }

  objc_autoreleasePoolPop(v11);
}

BOOL __78__MCNearbyDiscoveryPeerConnection_syncSendMessage_data_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v31 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = mcdpc_log(a1, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 52) + 16;
    v8 = *(a1 + 56);
    v9 = *(a1 + 32);
    v10 = v9[5];
    v11 = v9[6];
    v12 = v9[1];
    v16[0] = 67110914;
    v16[1] = v2;
    v17 = 1024;
    v18 = v6;
    v19 = 1024;
    v20 = v7;
    v21 = 1024;
    v22 = v8;
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    v26 = v10;
    v27 = 2048;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Got receipt #%u for message #%u with length [len=%u] and crc [=%08X] - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", v16, 0x42u);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    if (v4 == v2)
    {
      v14 = 0;
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCNearbyDiscoveryPeerConnection" code:-2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Receipt does not match", *MEMORY[0x277CCA450])}];
    }

    (*(v13 + 16))(v13, v14);
  }

  return v4 == v2;
}

- (void)syncSendHello
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

- (void)syncAcceptedConnection
{
  v32 = *MEMORY[0x277D85DE8];
  [(MCNearbyDiscoveryPeerConnection *)self syncAppendDataToSend:self->_dataToSendHoldingQueue];
  [(NSMutableArray *)self->_messageReceiptHandlerList addObjectsFromArray:self->_messageReceiptHandlerHoldingQueue];
  [(NSMutableArray *)self->_messageReceiptHandlerHoldingQueue removeAllObjects];
  v3 = [(NSMutableArray *)self->_receivedDataHoldingQueue count];
  if (v3)
  {
    receiveDataHandler = self->_receiveDataHandler;
    if (receiveDataHandler)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      receivedDataHoldingQueue = self->_receivedDataHoldingQueue;
      v7 = [(NSMutableArray *)receivedDataHoldingQueue countByEnumeratingWithState:&v19 objects:v31 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v20;
        v10 = MEMORY[0x277D85CD0];
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(receivedDataHoldingQueue);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            if (self->_targetQueue)
            {
              targetQueue = self->_targetQueue;
            }

            else
            {
              targetQueue = v10;
            }

            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v18[2] = __57__MCNearbyDiscoveryPeerConnection_syncAcceptedConnection__block_invoke;
            v18[3] = &unk_278B441C0;
            v18[4] = v12;
            v18[5] = receiveDataHandler;
            dispatch_async(targetQueue, v18);
          }

          v8 = [(NSMutableArray *)receivedDataHoldingQueue countByEnumeratingWithState:&v19 objects:v31 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v14 = mcdpc_log(v3, v4);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        inputStream = self->_inputStream;
        outputStream = self->_outputStream;
        remoteServiceName = self->_remoteServiceName;
        *buf = 134218754;
        selfCopy = self;
        v25 = 2048;
        v26 = inputStream;
        v27 = 2048;
        v28 = outputStream;
        v29 = 2112;
        v30 = remoteServiceName;
        _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "ReceiveDataHandler is nil - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x2Au);
      }
    }
  }

  [(NSMutableArray *)self->_receivedDataContentHoldingQueue removeAllObjects];
  self->_connected = 1;
}

- (void)syncSendMessageReceipt:(int)receipt sequenceNumber:(unsigned int)number
{
  v12 = *MEMORY[0x277D85DE8];
  buf[0] = BYTE1(receipt);
  buf[1] = receipt;
  v6 = 256;
  v7 = 0;
  v8 = HIBYTE(number);
  v9 = BYTE2(number);
  v10 = BYTE1(number);
  numberCopy = number;
  HIDWORD(v7) = bswap32(crc32(0, buf, 0x10u));
  -[MCNearbyDiscoveryPeerConnection syncAppendDataToSend:](self, "syncAppendDataToSend:", [MEMORY[0x277CBEA90] dataWithBytes:buf length:16]);
}

- (void)syncProcessMessage:(int)message data:(id)data sequenceNumber:(unsigned int)number
{
  v5 = *&number;
  v110 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  v11 = v9;
  if (message != 2200)
  {
    if (message == 2100)
    {
      v15 = mcdpc_log(v9, v10);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        inputStream = self->_inputStream;
        outputStream = self->_outputStream;
        remoteServiceName = self->_remoteServiceName;
        *buf = 134218754;
        *v104 = self;
        *&v104[8] = 2048;
        *v105 = inputStream;
        *&v105[8] = 2048;
        *&v105[10] = outputStream;
        *&v105[18] = 2112;
        *&v105[20] = remoteServiceName;
        _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "Got Data - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x2Au);
      }

      v19 = [(MCNearbyDiscoveryPeerConnection *)self syncSendMessageReceipt:2100 sequenceNumber:v5];
      receivedDataContentHoldingQueue = self->_receivedDataContentHoldingQueue;
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_27;
      v99[3] = &unk_278B44238;
      v99[4] = receivedDataContentHoldingQueue;
      v99[5] = data;
      if (!self->_connected)
      {
        v33 = [data length];
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v34 = self->_receivedDataContentHoldingQueue;
        v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v95 objects:v102 count:16];
        if (v35)
        {
          v37 = v35;
          v38 = *v96;
          do
          {
            v39 = 0;
            do
            {
              if (*v96 != v38)
              {
                objc_enumerationMutation(v34);
              }

              v33 += [*(*(&v95 + 1) + 8 * v39++) length];
            }

            while (v37 != v39);
            v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v95 objects:v102 count:16];
            v37 = v35;
          }

          while (v35);
        }

        if (v33 >> 24 > 4)
        {
          v53 = mcdpc_log(v35, v36);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = self->_inputStream;
            v55 = self->_outputStream;
            v56 = self->_remoteServiceName;
            *buf = 134218754;
            *v104 = self;
            *&v104[8] = 2048;
            *v105 = v54;
            *&v105[8] = 2048;
            *&v105[10] = v55;
            *&v105[18] = 2112;
            *&v105[20] = v56;
            _os_log_impl(&dword_239FB7000, v53, OS_LOG_TYPE_DEFAULT, "Too many enqueued messages before connect. Closing connection.ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x2Au);
          }

          goto LABEL_62;
        }

        -[NSMutableArray addObject:](self->_receivedDataHoldingQueue, "addObject:", [v99 copy]);
        [(NSMutableArray *)self->_receivedDataContentHoldingQueue addObject:data];
        goto LABEL_63;
      }

      receiveDataHandler = self->_receiveDataHandler;
      if (receiveDataHandler)
      {
        if (self->_targetQueue)
        {
          targetQueue = self->_targetQueue;
        }

        else
        {
          targetQueue = MEMORY[0x277D85CD0];
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_29;
        block[3] = &unk_278B441C0;
        block[4] = v99;
        block[5] = receiveDataHandler;
        dispatch_async(targetQueue, block);
        goto LABEL_63;
      }

      v71 = mcdpc_log(v19, v20);
      if (!os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v72 = self->_inputStream;
      v73 = self->_outputStream;
      v74 = self->_remoteServiceName;
      *buf = 134218754;
      *v104 = self;
      *&v104[8] = 2048;
      *v105 = v72;
      *&v105[8] = 2048;
      *&v105[10] = v73;
      *&v105[18] = 2112;
      *&v105[20] = v74;
      v75 = "ReceiveDataHandler is nil - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].";
      v76 = v71;
      v77 = 42;
    }

    else
    {
      if (message == 2000)
      {
        v12 = [data length];
        if (v12 <= 5)
        {
          v14 = mcdpc_log(v12, v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [MCNearbyDiscoveryPeerConnection syncProcessMessage:data data:? sequenceNumber:?];
          }

          goto LABEL_62;
        }

        bytes = [data bytes];
        v41 = *bytes;
        v42 = __rev16(*(bytes + 4));
        v43 = [data length];
        if (v43 < v42 + 6)
        {
          v45 = mcdpc_log(v43, v44);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = [data length];
            v47 = self->_inputStream;
            v48 = self->_outputStream;
            v49 = self->_remoteServiceName;
            *buf = 67110402;
            *v104 = v42;
            *&v104[4] = 1024;
            *&v104[6] = v46;
            *v105 = 2048;
            *&v105[2] = self;
            *&v105[10] = 2048;
            *&v105[12] = v47;
            *&v105[20] = 2048;
            *&v105[22] = v48;
            *&v105[30] = 2112;
            *&v105[32] = v49;
            v50 = "Hello body not enough for service name: %u+6 > %u - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].";
            v51 = v45;
            v52 = 54;
LABEL_37:
            _os_log_error_impl(&dword_239FB7000, v51, OS_LOG_TYPE_ERROR, v50, buf, v52);
            goto LABEL_62;
          }

          goto LABEL_62;
        }

        if (!v42)
        {
          v83 = mcdpc_log(v43, v44);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            [MCNearbyDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:];
          }

          goto LABEL_62;
        }

        if (*(bytes + 6 + [data length] - 7))
        {
          v57 = [data length];
          v58 = v57 - 12;
          v60 = mcdpc_log(v57, v59);
          v61 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
          if (v58 > 0xFFFFFFFFFFFFFFFALL || v42 < 4)
          {
            if (v61)
            {
              [MCNearbyDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:];
            }

            goto LABEL_62;
          }

          if (v61)
          {
            v62 = *(bytes + 6);
            v63 = *(bytes + 7);
            v64 = *(bytes + 8);
            v65 = bytes + 6 + v42;
            v66 = *(v65 - 3);
            v67 = *(v65 - 2);
            LODWORD(v65) = *(v65 - 1);
            v68 = self->_inputStream;
            v69 = self->_outputStream;
            v70 = self->_remoteServiceName;
            *buf = 67111682;
            *v104 = v62;
            *&v104[4] = 1024;
            *&v104[6] = v63;
            *v105 = 1024;
            *&v105[2] = v64;
            *&v105[6] = 1024;
            *&v105[8] = v66;
            *&v105[12] = 1024;
            *&v105[14] = v67;
            *&v105[18] = 1024;
            *&v105[20] = v65;
            *&v105[24] = 1024;
            *&v105[26] = v42;
            *&v105[30] = 2048;
            *&v105[32] = self;
            *&v105[40] = 2048;
            *&v105[42] = v68;
            v106 = 2048;
            v107 = v69;
            v108 = 2112;
            v109 = v70;
            v50 = "Remote name [%c%c%c..%c%c%c] not properly terminated at length=%u - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].";
            v51 = v60;
            v52 = 84;
            goto LABEL_37;
          }

LABEL_62:
          [(MCNearbyDiscoveryPeerConnection *)self syncCloseConnectionNow];
          goto LABEL_63;
        }

        -[MCNearbyDiscoveryPeerConnection setRemoteServiceName:](self, "setRemoteServiceName:", [MEMORY[0x277CCACA8] stringWithUTF8String:bytes + 6]);
        shouldDecideAboutConnection = [(MCNearbyDiscoveryPeerConnection *)self shouldDecideAboutConnection];
        v85 = shouldDecideAboutConnection;
        v87 = mcdpc_log(shouldDecideAboutConnection, v86);
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          v88 = self->_inputStream;
          v89 = self->_outputStream;
          v90 = self->_remoteServiceName;
          *buf = 67110402;
          *v104 = bswap32(v41);
          *&v104[4] = 1024;
          *&v104[6] = v85;
          *v105 = 2048;
          *&v105[2] = self;
          *&v105[10] = 2048;
          *&v105[12] = v88;
          *&v105[20] = 2048;
          *&v105[22] = v89;
          *&v105[30] = 2112;
          *&v105[32] = v90;
          _os_log_impl(&dword_239FB7000, v87, OS_LOG_TYPE_DEFAULT, "Got Hello (flags = %08x) shouldDecide (%d) - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x36u);
        }

        [(MCNearbyDiscoveryPeerConnection *)self syncSendMessageReceipt:2000 sequenceNumber:v5];
        if (v85)
        {
          v101[0] = MEMORY[0x277D85DD0];
          v101[1] = 3221225472;
          v101[2] = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke;
          v101[3] = &unk_278B441E8;
          v101[4] = self;
          v91 = [v101 copy];
          connectedHandler = self->_connectedHandler;
          if (connectedHandler)
          {
            self->_connectedHandler = 0;
            v30 = MEMORY[0x277D85CD0];
            if (self->_targetQueue)
            {
              v30 = self->_targetQueue;
            }

            v100[0] = MEMORY[0x277D85DD0];
            v100[1] = 3221225472;
            v100[2] = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_3;
            v100[3] = &unk_278B44210;
            v100[4] = self;
            v100[5] = connectedHandler;
            v100[6] = v91;
            v31 = v100;
LABEL_21:
            dispatch_async(v30, v31);

            goto LABEL_63;
          }
        }

        goto LABEL_63;
      }

      v32 = mcdpc_log(v9, v10);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      if (message)
      {
        v78 = "?";
      }

      else
      {
        v78 = "Invalid";
      }

      v79 = [data length];
      v80 = self->_inputStream;
      v81 = self->_outputStream;
      v82 = self->_remoteServiceName;
      *buf = 136316418;
      *v104 = v78;
      *&v104[8] = 1024;
      *v105 = v79;
      *&v105[4] = 2048;
      *&v105[6] = self;
      *&v105[14] = 2048;
      *&v105[16] = v80;
      *&v105[24] = 2048;
      *&v105[26] = v81;
      *&v105[34] = 2112;
      *&v105[36] = v82;
      v75 = "Unrecognized message %s (body size=%u) - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].";
      v76 = v32;
      v77 = 58;
    }

    _os_log_impl(&dword_239FB7000, v76, OS_LOG_TYPE_DEFAULT, v75, buf, v77);
    goto LABEL_63;
  }

  v24 = mcdpc_log(v9, v10);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = self->_inputStream;
    v26 = self->_outputStream;
    v27 = self->_remoteServiceName;
    *buf = 134218754;
    *v104 = self;
    *&v104[8] = 2048;
    *v105 = v25;
    *&v105[8] = 2048;
    *&v105[10] = v26;
    *&v105[18] = 2112;
    *&v105[20] = v27;
    _os_log_impl(&dword_239FB7000, v24, OS_LOG_TYPE_DEFAULT, "Got Accept - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x2Au);
  }

  [(MCNearbyDiscoveryPeerConnection *)self syncSendMessageReceipt:2200 sequenceNumber:v5];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_30;
  v93[3] = &unk_278B441E8;
  v93[4] = self;
  v28 = [v93 copy];
  connectedHandler = self->_connectedHandler;
  if (connectedHandler)
  {
    self->_connectedHandler = 0;
    v30 = MEMORY[0x277D85CD0];
    if (self->_targetQueue)
    {
      v30 = self->_targetQueue;
    }

    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_4;
    v92[3] = &unk_278B44210;
    v92[4] = self;
    v92[5] = connectedHandler;
    v92[6] = v28;
    v31 = v92;
    goto LABEL_21;
  }

LABEL_63:
  objc_autoreleasePoolPop(v11);
}

void __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v30 = *MEMORY[0x277D85DE8];
  v4 = mcdpc_log(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "declines";
    v6 = *(a1 + 32);
    v7 = v6[5];
    v8 = v6[6];
    if (v2)
    {
      v5 = "approves";
    }

    v9 = v6[1];
    v10 = "close connection";
    *buf = 136316418;
    if (v2)
    {
      v10 = "accept connection";
    }

    v19 = v5;
    v20 = 2080;
    v21 = v10;
    v22 = 2048;
    v23 = v6;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Peer %s. Will %s - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x3Eu);
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 136);
  if (v2)
  {
    v13 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v14 = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_25;
  }

  else
  {
    v13 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v14 = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_2;
  }

  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = MEMORY[0x277D85CD0];
  }

  v13[2] = v14;
  v13[3] = &unk_278B43DF0;
  v13[4] = v11;
  dispatch_async(v15, v13);
}

uint64_t __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_25(uint64_t a1)
{
  [*(a1 + 32) syncSendAccept];
  v2 = *(a1 + 32);

  return [v2 syncAcceptedConnection];
}

uint64_t __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_27(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  v4 = *(a1 + 40);
  v5 = *(a2 + 16);

  return v5(a2, v4, 0);
}

void __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_30(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  if (a2)
  {
    v4 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v5 = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_2_31;
  }

  else
  {
    v4 = v7;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v5 = __74__MCNearbyDiscoveryPeerConnection_syncProcessMessage_data_sequenceNumber___block_invoke_3_32;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = MEMORY[0x277D85CD0];
  }

  v4[2] = v5;
  v4[3] = &unk_278B43DF0;
  v4[4] = v2;
  dispatch_async(v6, v4);
}

- (void)syncReceivedData:(id)data error:(id)error
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v9 = v7;
  if (data)
  {
    context = v7;
    [(NSMutableData *)self->_dataReceived appendData:data];
    bytes = [(NSMutableData *)self->_dataReceived bytes];
    v11 = [(NSMutableData *)self->_dataReceived length];
    v13 = v11;
    if (v11 < 0x10)
    {
LABEL_3:
      v14 = [(NSMutableData *)self->_dataReceived length];
      v9 = context;
      if (v14 != v13)
      {
        [(NSMutableData *)self->_dataReceived replaceBytesInRange:0 withBytes:v14 - v13 length:0, 0];
      }

      goto LABEL_34;
    }

    p_messageReceiptHandlerHoldingQueue = &self->_messageReceiptHandlerHoldingQueue;
    while (1)
    {
      v19 = bswap32(*(bytes + 1));
      if (v19 >= 0x5000001)
      {
        v34 = mcdpc_log(v11, v12);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [MCNearbyDiscoveryPeerConnection syncReceivedData:error:];
        }

        goto LABEL_33;
      }

      if (v19 > v13 - 16)
      {
        goto LABEL_3;
      }

      v20 = *(bytes + 12);
      v21 = (*(bytes + 15) | (*(bytes + 13) << 16) | (*(bytes + 14) << 8)) & 0xFFFFFF | (v20 << 24);
      if (v20 << 24 < 0)
      {
        v35 = mcdpc_log(v11, v12);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [MCNearbyDiscoveryPeerConnection syncReceivedData:error:];
        }

        goto LABEL_33;
      }

      v22 = *bytes;
      v23 = *(bytes + 3);
      if (v23)
      {
        if (v19)
        {
          break;
        }
      }

      v24 = bswap32(*(bytes + 2));
      *(bytes + 2) = 0;
      v25 = v19 + 16;
      v26 = crc32(0, bytes, v19 + 16);
      if (v24 != v26)
      {
        v37 = mcdpc_log(v26, v27);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [MCNearbyDiscoveryPeerConnection syncReceivedData:error:];
        }

LABEL_33:
        [(MCNearbyDiscoveryPeerConnection *)self syncCloseConnectionNow];
        v9 = context;
        goto LABEL_34;
      }

      v28 = __rev16(v22);
      if (v23)
      {
        if ((v28 != 2100 || (p_messageReceiptHandlerList = p_messageReceiptHandlerHoldingQueue, ![(NSMutableArray *)*p_messageReceiptHandlerHoldingQueue count])) && (v30 = [(NSMutableArray *)self->_messageReceiptHandlerList count], p_messageReceiptHandlerList = &self->_messageReceiptHandlerList, !v30) || (v32 = [(NSMutableArray *)*p_messageReceiptHandlerList objectAtIndex:0, p_messageReceiptHandlerHoldingQueue], v30 = [(NSMutableArray *)*p_messageReceiptHandlerList removeObjectAtIndex:0], !v32))
        {
          v38 = mcdpc_log(v30, v31);
          v9 = context;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [MCNearbyDiscoveryPeerConnection syncReceivedData:error:];
          }

          goto LABEL_7;
        }

        v33 = v32[2](v32, v21);

        if ((v33 & 1) == 0)
        {
          v40 = mcdpc_log(v11, v12);
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
          v9 = context;
          if (v41)
          {
            [MCNearbyDiscoveryPeerConnection syncReceivedData:error:];
          }

          goto LABEL_7;
        }
      }

      else
      {
        v11 = -[MCNearbyDiscoveryPeerConnection syncProcessMessage:data:sequenceNumber:](self, "syncProcessMessage:data:sequenceNumber:", v28, [MEMORY[0x277CBEA90] dataWithBytes:bytes + 8 length:v19], v21);
        if (self->_connectionClosed)
        {
          v39 = mcdpc_log(v11, v12);
          v9 = context;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [MCNearbyDiscoveryPeerConnection syncReceivedData:error:];
          }

          goto LABEL_34;
        }
      }

      bytes = (bytes + v25);
      v13 -= v25;
      if (v13 <= 0xF)
      {
        goto LABEL_3;
      }
    }

    v36 = mcdpc_log(v11, v12);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [MCNearbyDiscoveryPeerConnection syncReceivedData:error:];
    }

    goto LABEL_33;
  }

  v15 = mcdpc_log(v7, v8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    inputStream = self->_inputStream;
    outputStream = self->_outputStream;
    remoteServiceName = self->_remoteServiceName;
    *buf = 138413314;
    errorCopy = error;
    v46 = 2048;
    selfCopy = self;
    v48 = 2048;
    v49 = inputStream;
    v50 = 2048;
    v51 = outputStream;
    v52 = 2112;
    v53 = remoteServiceName;
    _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "End of stream, error: %@ - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x34u);
  }

LABEL_7:
  [(MCNearbyDiscoveryPeerConnection *)self syncCloseConnectionNow];
LABEL_34:
  objc_autoreleasePoolPop(v9);
}

- (void)syncCloseConnectionNow
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = mcdpc_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    inputStream = self->_inputStream;
    outputStream = self->_outputStream;
    remoteServiceName = self->_remoteServiceName;
    *buf = 134218754;
    selfCopy = self;
    v16 = 2048;
    v17 = inputStream;
    v18 = 2048;
    v19 = outputStream;
    v20 = 2112;
    v21 = remoteServiceName;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Closing connection - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x2Au);
  }

  *&self->_connected = 256;
  [(NSInputStream *)self->_inputStream close];
  [(NSInputStream *)self->_inputStream setDelegate:0];

  self->_inputStream = 0;
  [(NSOutputStream *)self->_outputStream close];
  [(NSOutputStream *)self->_outputStream setDelegate:0];

  self->_outputStream = 0;
  self->_remoteServiceName = 0;
  [(NSMutableData *)self->_dataReceived replaceBytesInRange:0 withBytes:[(NSMutableData *)self->_dataReceived length] length:0, 0];
  [(NSMutableData *)self->_dataToSendHoldingQueue replaceBytesInRange:0 withBytes:[(NSMutableData *)self->_dataToSendHoldingQueue length] length:0, 0];
  messageReceiptHandlerList = self->_messageReceiptHandlerList;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke;
  v13[3] = &unk_278B44260;
  v13[4] = self;
  [(NSMutableArray *)messageReceiptHandlerList enumerateObjectsUsingBlock:v13];
  messageReceiptHandlerHoldingQueue = self->_messageReceiptHandlerHoldingQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_34;
  v12[3] = &unk_278B44260;
  v12[4] = self;
  [(NSMutableArray *)messageReceiptHandlerHoldingQueue enumerateObjectsUsingBlock:v12];
  [(NSMutableArray *)self->_messageReceiptHandlerList removeAllObjects];
  [(NSMutableArray *)self->_messageReceiptHandlerHoldingQueue removeAllObjects];
  connectedHandler = self->_connectedHandler;
  if (connectedHandler)
  {
    self->_connectedHandler = 0;
    if (self->_targetQueue)
    {
      targetQueue = self->_targetQueue;
    }

    else
    {
      targetQueue = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_36;
    block[3] = &unk_278B44020;
    block[4] = connectedHandler;
    dispatch_async(targetQueue, block);
  }

  else if (self->_receiveDataHandler)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"MCNearbyDiscoveryPeerConnection" code:-4 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Connection closed", *MEMORY[0x277CCA450])}];
    (*(self->_receiveDataHandler + 2))();
  }
}

void __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(*(a1 + 32) + 144))
    {
      v3 = *(*(a1 + 32) + 144);
    }

    else
    {
      v3 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_2;
    block[3] = &unk_278B44020;
    block[4] = a2;
    dispatch_async(v3, block);
  }

  else
  {
    v4 = mcdpc_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v5[5];
      v7 = v5[6];
      v8 = v5[1];
      *buf = 134218754;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "ReceiptHander should not be nil - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x2Au);
    }
  }
}

void __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_34(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(*(a1 + 32) + 144))
    {
      v3 = *(*(a1 + 32) + 144);
    }

    else
    {
      v3 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_2_35;
    block[3] = &unk_278B44020;
    block[4] = a2;
    dispatch_async(v3, block);
  }

  else
  {
    v4 = mcdpc_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v5[5];
      v7 = v5[6];
      v8 = v5[1];
      *buf = 134218754;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "ReceiptHandler should not be nil - ptr [%p] inputStream [%p] outputStream [%p] remote [%@].", buf, 0x2Au);
    }
  }
}

uint64_t __57__MCNearbyDiscoveryPeerConnection_syncCloseConnectionNow__block_invoke_36(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCNearbyDiscoveryPeerConnection" code:-3 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Unable to connect", *MEMORY[0x277CCA450])}];
  v3 = *(*(a1 + 32) + 16);
  v4 = v2;
  v5 = *(a1 + 32);

  return v3(v5, 0, 0, 0, v4);
}

- (void)invalidate
{
  syncQueue = MEMORY[0x277D85CD0];
  if (self->_syncQueue)
  {
    syncQueue = self->_syncQueue;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MCNearbyDiscoveryPeerConnection_invalidate__block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

uint64_t __45__MCNearbyDiscoveryPeerConnection_invalidate__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 25) = 1;

  *(*(a1 + 32) + 128) = 0;
  *(*(a1 + 32) + 120) = 0;
  v2 = *(a1 + 32);

  return [v2 syncCloseConnectionNow];
}

- (void)dealloc
{
  [(MCNearbyDiscoveryPeerConnection *)self syncCloseConnectionNow];
  connectedHandler = self->_connectedHandler;
  if (connectedHandler)
  {
  }

  receiveDataHandler = self->_receiveDataHandler;
  if (receiveDataHandler)
  {
  }

  syncQueue = self->_syncQueue;
  if (syncQueue)
  {
    dispatch_release(syncQueue);
  }

  targetQueue = self->_targetQueue;
  if (targetQueue)
  {
    dispatch_release(targetQueue);
  }

  v7.receiver = self;
  v7.super_class = MCNearbyDiscoveryPeerConnection;
  [(MCNearbyDiscoveryPeerConnection *)&v7 dealloc];
}

- (void)sendData:(id)data withCompletionHandler:(id)handler
{
  if (data)
  {
    v7 = [data length];
    if (v7 > 0x1400000)
    {
      v12 = mcdpc_log(v7, v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MCNearbyDiscoveryPeerConnection sendData:withCompletionHandler:];
      }

      (*(handler + 2))(handler, [MEMORY[0x277CCA9B8] errorWithDomain:@"MCNearbyDiscoveryPeerConnection" code:-5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Message is too big to send", *MEMORY[0x277CCA450])}]);
    }

    else
    {
      v9 = [handler copy];
      syncQueue = self->_syncQueue;
      if (!syncQueue)
      {
        syncQueue = MEMORY[0x277D85CD0];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__MCNearbyDiscoveryPeerConnection_sendData_withCompletionHandler___block_invoke;
      block[3] = &unk_278B43F80;
      block[4] = self;
      block[5] = data;
      block[6] = v9;
      dispatch_async(syncQueue, block);
    }
  }

  else
  {
    v11 = *(handler + 2);

    v11(handler, 0);
  }
}

- (id)stringForStreamEventCode:(unint64_t)code
{
  v3 = @"None";
  v4 = @"Has Space Available";
  v5 = @"End Encountered";
  v6 = @"Error Occured";
  if (code != 8)
  {
    v6 = @"None";
  }

  if (code != 16)
  {
    v5 = v6;
  }

  if (code != 4)
  {
    v4 = v5;
  }

  if (code == 2)
  {
    v3 = @"Has Bytes Available";
  }

  if (code == 1)
  {
    v3 = @"Open Completed";
  }

  if (code <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (void)syncReadFromInputStream
{
  v13 = *MEMORY[0x277D85DE8];
  data = [MEMORY[0x277CBEB28] data];
  v4 = [(NSInputStream *)self->_inputStream read:v12 maxLength:4096];
  v6 = mcdpc_log(v4, v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v10 = 134217984;
    v11 = v4;
    _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Bytes read from buffer [%ld].", &v10, 0xCu);
  }

  if (v4 < 0)
  {
    v9 = mcdpc_log(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MCNearbyDiscoveryPeerConnection syncReadFromInputStream];
    }
  }

  else
  {
    if (v4)
    {
      [data appendBytes:v12 length:v4];
    }

    if ([data length])
    {
      [(MCNearbyDiscoveryPeerConnection *)self syncReceivedData:data error:0];
    }
  }
}

- (int)socketForStream:(id)stream
{
  v3 = [stream propertyForKey:*MEMORY[0x277CBF078]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length] == 4)
  {
    return *[v3 bytes];
  }

  else
  {
    return -1;
  }
}

- (void)syncHandleStreamEventOpenCompleted:(id)completed
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = [(MCNearbyDiscoveryPeerConnection *)self socketForStream:?];
  if (v4 == -1)
  {
    v13 = mcdpc_log(v4, v5);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 134217984;
    completedCopy4 = completed;
    v10 = "Failed get socket for stream [%p].";
    v11 = v13;
    v12 = 12;
    goto LABEL_37;
  }

  v6 = v4;
  v21 = 0;
  InterfaceInfo = SocketGetInterfaceInfo();
  if (InterfaceInfo)
  {
    v9 = mcdpc_log(InterfaceInfo, v8);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 134218240;
    completedCopy4 = completed;
    v24 = 1024;
    v25 = v6;
    v10 = "SocketGetInterfaceInfo failed for stream=%p socket=%d.";
    v11 = v9;
    v12 = 18;
    goto LABEL_37;
  }

  *&v34.sa_len = 0;
  *&v34.sa_data[6] = 0;
  v20 = 16;
  v14 = getsockname(v6, &v34, &v20);
  if (v14 == -1)
  {
    v17 = mcdpc_log(v14, v15);
    v14 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    v16 = 0;
    if (v14)
    {
      *buf = 134218240;
      completedCopy4 = completed;
      v24 = 1024;
      v25 = v6;
      _os_log_impl(&dword_239FB7000, v17, OS_LOG_TYPE_DEFAULT, "Failed to get port for stream=%p socket=%d.", buf, 0x12u);
      v16 = 0;
    }
  }

  else
  {
    v16 = bswap32(*v34.sa_data) >> 16;
  }

  v18 = mcdpc_log(v14, v15);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (v21 <= 15)
    {
      if (v21 > 3)
      {
        if (v21 == 4)
        {
          v19 = "AWDL";
          goto LABEL_36;
        }

        if (v21 == 8)
        {
          v19 = "USB";
          goto LABEL_36;
        }
      }

      else
      {
        if (v21 == 1)
        {
          v19 = "Enet";
          goto LABEL_36;
        }

        if (v21 == 2)
        {
          v19 = "WiFi";
          goto LABEL_36;
        }
      }
    }

    else if (v21 <= 63)
    {
      if (v21 == 16)
      {
        v19 = "Direct";
        goto LABEL_36;
      }

      if (v21 == 32)
      {
        v19 = "BTLE";
        goto LABEL_36;
      }
    }

    else
    {
      switch(v21)
      {
        case 0x40:
          v19 = "WFD";
          goto LABEL_36;
        case 0x80:
          v19 = "NAN";
          goto LABEL_36;
        case 0x100:
          v19 = "IPsecBT";
LABEL_36:
          *buf = 134219266;
          completedCopy4 = completed;
          v24 = 1024;
          v25 = v6;
          v26 = 1024;
          v27 = v16;
          v28 = 2080;
          v29 = &v35;
          v30 = 1024;
          v31 = HIDWORD(v21);
          v32 = 2080;
          v33 = v19;
          v10 = "Stream [%p] info: socket=%d port=%d interfaceName=%s interfaceIndex=%d transportType=%s.";
          v11 = v18;
          v12 = 50;
LABEL_37:
          _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
          return;
      }
    }

    if (v21 == 512)
    {
      v19 = "IPSecWiFi";
    }

    else
    {
      v19 = "?";
    }

    goto LABEL_36;
  }
}

- (void)syncHandleInputStreamEvent:(unint64_t)event
{
  v16 = *MEMORY[0x277D85DE8];
  if (event <= 3)
  {
    if (event == 1)
    {
      v10 = mcdpc_log(self, a2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        inputStream = self->_inputStream;
        v12 = 138412290;
        v13 = inputStream;
        _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Stream %@ opened.", &v12, 0xCu);
      }

      [(MCNearbyDiscoveryPeerConnection *)self syncHandleStreamEventOpenCompleted:self->_inputStream];
    }

    else if (event == 2)
    {

      [(MCNearbyDiscoveryPeerConnection *)self syncReadFromInputStream];
    }
  }

  else
  {
    switch(event)
    {
      case 4uLL:
        v5 = mcdpc_log(self, a2);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [(MCNearbyDiscoveryPeerConnection *)self stringForStreamEventCode:4];
          v7 = self->_inputStream;
          v12 = 138412546;
          v13 = v6;
          v14 = 2112;
          v15 = v7;
          _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected event (%@) for input stream %@.", &v12, 0x16u);
        }

        break;
      case 0x10uLL:
        v8 = mcdpc_log(self, a2);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_inputStream;
          v12 = 138412290;
          v13 = v9;
          _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "End for stream %@.", &v12, 0xCu);
        }

        [(MCNearbyDiscoveryPeerConnection *)self syncCloseConnectionNow];
        break;
      case 8uLL:
        v4 = mcdpc_log(self, a2);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          [MCNearbyDiscoveryPeerConnection syncHandleInputStreamEvent:?];
        }

        break;
    }
  }
}

- (void)syncHandleOutputStreamEvent:(unint64_t)event
{
  v16 = *MEMORY[0x277D85DE8];
  if (event <= 3)
  {
    if (event == 1)
    {
      v10 = mcdpc_log(self, a2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        outputStream = self->_outputStream;
        v12 = 138412290;
        v13 = outputStream;
        _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Stream %@ opened.", &v12, 0xCu);
      }

      [(MCNearbyDiscoveryPeerConnection *)self syncHandleStreamEventOpenCompleted:self->_outputStream];
    }

    else if (event == 2)
    {
      v5 = mcdpc_log(self, a2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(MCNearbyDiscoveryPeerConnection *)self stringForStreamEventCode:2];
        v7 = self->_outputStream;
        v12 = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected event (%@) for output stream %@.", &v12, 0x16u);
      }
    }
  }

  else
  {
    switch(event)
    {
      case 4uLL:

        [(MCNearbyDiscoveryPeerConnection *)self syncSendData];
        break;
      case 0x10uLL:
        v8 = mcdpc_log(self, a2);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_outputStream;
          v12 = 138412290;
          v13 = v9;
          _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "End for stream %@", &v12, 0xCu);
        }

        [(MCNearbyDiscoveryPeerConnection *)self syncCloseConnectionNow];
        break;
      case 8uLL:
        v4 = mcdpc_log(self, a2);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          [MCNearbyDiscoveryPeerConnection syncHandleOutputStreamEvent:?];
        }

        break;
    }
  }
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = mcdpc_log(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218242;
    streamCopy = stream;
    v15 = 2112;
    v16 = [(MCNearbyDiscoveryPeerConnection *)self stringForStreamEventCode:event];
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Stream [%p] event [%@].", &v13, 0x16u);
  }

  if (self->_syncQueue)
  {
    syncQueue = self->_syncQueue;
  }

  else
  {
    syncQueue = MEMORY[0x277D85CD0];
  }

  dispatch_assert_queue_V2(syncQueue);
  if (self->_inputStream == stream)
  {
    [(MCNearbyDiscoveryPeerConnection *)self syncHandleInputStreamEvent:event];
  }

  else if (self->_outputStream == stream)
  {
    [(MCNearbyDiscoveryPeerConnection *)self syncHandleOutputStreamEvent:event];
  }

  else
  {
    v11 = mcdpc_log(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MCNearbyDiscoveryPeerConnection *)self stringForStreamEventCode:event];
      v13 = 138412290;
      streamCopy = v12;
      _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Unknown stream - ignoring event [%@].", &v13, 0xCu);
    }
  }
}

- (void)shouldDecideAboutConnection
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Eu);
}

- (void)syncProcessMessage:data:sequenceNumber:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

- (void)syncProcessMessage:data:sequenceNumber:.cold.2()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

- (void)syncProcessMessage:(void *)a1 data:sequenceNumber:.cold.3(void *a1)
{
  [a1 length];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
}

- (void)syncReceivedData:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

- (void)syncReceivedData:error:.cold.2()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

- (void)syncReceivedData:error:.cold.3()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

- (void)syncReceivedData:error:.cold.4()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

- (void)syncReceivedData:error:.cold.5()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

- (void)syncReceivedData:error:.cold.6()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

- (void)syncReceivedData:error:.cold.7()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

- (void)sendData:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

- (void)syncHandleInputStreamEvent:(uint64_t)a1 .cold.1(uint64_t a1)
{
  [*(a1 + 40) streamError];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)syncHandleOutputStreamEvent:(uint64_t)a1 .cold.1(uint64_t a1)
{
  [*(a1 + 48) streamError];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end