@interface BLTSendQueueSerializer
- (BLTSendQueueSerializer)initWithUsesMessageIdentifiers:(BOOL)identifiers;
- (BOOL)handleFileURL:(id)l protobufHandler:(id)handler;
- (void)add:(id)add type:(unsigned __int16)type messageIdentifier:(id *)identifier;
- (void)cleanup;
- (void)sendWithSender:(id)sender timeout:(id)timeout responseHandlers:(id)handlers didSend:(id)send didQueue:(id)queue;
- (void)setSendFileURL:(id)l;
@end

@implementation BLTSendQueueSerializer

- (BLTSendQueueSerializer)initWithUsesMessageIdentifiers:(BOOL)identifiers
{
  v5.receiver = self;
  v5.super_class = BLTSendQueueSerializer;
  result = [(BLTSendQueueSerializer *)&v5 init];
  if (result)
  {
    result->_usesMessageIdentifiers = identifiers;
  }

  return result;
}

- (void)setSendFileURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    v5 = blt_send_queue_log(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BLTSendQueueSerializer setSendFileURL:];
    }
  }

  v6 = [lCopy copy];
  sendFileURL = self->_sendFileURL;
  self->_sendFileURL = v6;

  [(BLTSendQueueSerializer *)self cleanup];
}

- (void)cleanup
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = blt_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sendFileURL = self->_sendFileURL;
    *buf = 138412290;
    v34 = sendFileURL;
    _os_log_impl(&dword_241FB3000, v3, OS_LOG_TYPE_DEFAULT, "Removing queue file %@", buf, 0xCu);
  }

  v5 = self->_sendFileURL;
  if (v5)
  {
    lastPathComponent = [(NSURL *)v5 lastPathComponent];
    uRLByDeletingLastPathComponent = [(NSURL *)self->_sendFileURL URLByDeletingLastPathComponent];
    path = [uRLByDeletingLastPathComponent path];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v32 = 0;
    v25 = path;
    v10 = [defaultManager contentsOfDirectoryAtPath:path error:&v32];
    v11 = v32;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v29;
      *&v13 = 138412546;
      v24 = v13;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          if ([(NSURL *)v17 containsString:lastPathComponent, v24])
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v19 = [v25 stringByAppendingPathComponent:v17];
            v27 = v11;
            v20 = [defaultManager2 removeItemAtPath:v19 error:&v27];
            v21 = v27;

            if ((v20 & 1) == 0)
            {
              v23 = blt_general_log(v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = v24;
                v34 = v17;
                v35 = 2112;
                v36 = v21;
                _os_log_error_impl(&dword_241FB3000, v23, OS_LOG_TYPE_ERROR, "Error removing %@ error: %@", buf, 0x16u);
              }
            }

            v11 = v21;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v14);
    }
  }
}

- (void)add:(id)add type:(unsigned __int16)type messageIdentifier:(id *)identifier
{
  v37[1] = *MEMORY[0x277D85DE8];
  addCopy = add;
  typeCopy = type;
  sendFileURL = [(BLTSendQueueSerializer *)self sendFileURL];
  if (sendFileURL)
  {
    v10 = sendFileURL;
    fileSystemRepresentation = [sendFileURL fileSystemRepresentation];
    if (fileSystemRepresentation)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:fileSystemRepresentation];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v14 = [defaultManager fileExistsAtPath:v12];

      if (v14 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v15 = objc_claimAutoreleasedReturnValue(), v36 = *MEMORY[0x277CCA1B0], v37[0] = *MEMORY[0x277CCA1B8], objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v37, &v36, 1), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "createFileAtPath:contents:attributes:", v12, 0, v16), v16, v15, (v17))
      {
        v32 = 0;
        v19 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v10 error:&v32];
        v20 = v32;
        v21 = v20;
        if (v19)
        {
          [v19 seekToEndOfFile];
          v22 = [MEMORY[0x277CBEA90] dataWithBytes:&typeCopy length:2];
          _writeDataToFile(v22, v19);

          data = [addCopy data];
          v24 = blt_ids_log(data);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [data length];
            *buf = 134217984;
            v35 = v25;
            _os_log_impl(&dword_241FB3000, v24, OS_LOG_TYPE_DEFAULT, "Serializing protobuf bytes: %lu", buf, 0xCu);
          }

          _writeDataToFile(data, v19);
          if ([(BLTSendQueueSerializer *)self usesMessageIdentifiers])
          {
            uUID = [MEMORY[0x277CCAD78] UUID];
            uUIDString = [uUID UUIDString];
            v28 = [@"blt-" stringByAppendingString:uUIDString];

            v29 = [v28 dataUsingEncoding:4];
            _writeDataToFile(v29, v19);

            if (identifier)
            {
              v30 = v28;
              *identifier = v28;
            }
          }
        }

        else
        {
          data = blt_send_queue_log(v20);
          if (os_log_type_enabled(data, OS_LOG_TYPE_ERROR))
          {
            [BLTSendQueueSerializer add:v21 type:data messageIdentifier:?];
          }
        }
      }

      else
      {
        v19 = blt_send_queue_log(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [BLTSendQueueSerializer add:v12 type:v19 messageIdentifier:?];
        }

        v21 = 0;
      }

      v10 = v21;
    }

    else
    {
      v31 = blt_send_queue_log(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        [BLTSendQueueSerializer add:type:messageIdentifier:];
      }
    }
  }

  else
  {
    v10 = blt_send_queue_log(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BLTSendQueueSerializer add:v10 type:? messageIdentifier:?];
    }
  }
}

- (void)sendWithSender:(id)sender timeout:(id)timeout responseHandlers:(id)handlers didSend:(id)send didQueue:(id)queue
{
  v45 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  timeoutCopy = timeout;
  handlersCopy = handlers;
  sendCopy = send;
  queueCopy = queue;
  sendFileURL = [(BLTSendQueueSerializer *)self sendFileURL];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v20 = [sendFileURL URLByAppendingPathExtension:uUIDString];

  if (v20)
  {
    v32 = timeoutCopy;
    v22 = senderCopy;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v38 = 0;
    v24 = [defaultManager linkItemAtURL:sendFileURL toURL:v20 error:&v38];
    v25 = v38;

    if (v24)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v37 = v25;
      v27 = [defaultManager2 removeItemAtURL:sendFileURL error:&v37];
      v28 = v37;

      senderCopy = v22;
      if ((v27 & 1) == 0)
      {
        v30 = blt_send_queue_log(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [BLTSendQueueSerializer sendWithSender:timeout:responseHandlers:didSend:didQueue:];
        }
      }

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __83__BLTSendQueueSerializer_sendWithSender_timeout_responseHandlers_didSend_didQueue___block_invoke;
      v33[3] = &unk_278D31D38;
      v34 = v20;
      v35 = sendFileURL;
      v36 = sendCopy;
      timeoutCopy = v32;
      [v22 sendFileURL:v34 withTimeout:v32 extraMetadata:0 responseHandlers:handlersCopy didSend:v33 didQueue:queueCopy];

      v31 = v34;
      goto LABEL_12;
    }

    v28 = v25;
    senderCopy = v22;
  }

  else
  {
    v28 = 0;
  }

  v31 = blt_send_queue_log(v21);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v40 = sendFileURL;
    v41 = 2112;
    v42 = v20;
    v43 = 2112;
    v44 = v28;
    _os_log_error_impl(&dword_241FB3000, v31, OS_LOG_TYPE_ERROR, "Error creating link for sending URL: %@ at %@ error: %@", buf, 0x20u);
  }

LABEL_12:
}

void __83__BLTSendQueueSerializer_sendWithSender_timeout_responseHandlers_didSend_didQueue___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = *(a1 + 32);
  v13 = 0;
  v8 = [v6 removeItemAtURL:v7 error:&v13];
  v9 = v13;

  if ((v8 & 1) == 0)
  {
    v11 = blt_send_queue_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __83__BLTSendQueueSerializer_sendWithSender_timeout_responseHandlers_didSend_didQueue___block_invoke_cold_1(a1, v9, v11);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }
}

- (BOOL)handleFileURL:(id)l protobufHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  lCopy = l;
  handlerCopy = handler;
  v8 = blt_send_queue_log(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_INFO, "Received new queue", buf, 2u);
  }

  v35 = 0;
  v9 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:lCopy error:&v35];
  v10 = v35;
  v11 = v10;
  if (v9)
  {
    v34 = v10;
    v12 = _readDataFromFile(v9);
    v13 = _readDataFromFile(v9);
    v14 = blt_ids_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 length];
      *buf = 134217984;
      v37 = v15;
      _os_log_impl(&dword_241FB3000, v14, OS_LOG_TYPE_DEFAULT, "Deserializing protobuf bytes: %lu", buf, 0xCu);
    }

    if ([(BLTSendQueueSerializer *)self usesMessageIdentifiers])
    {
      v16 = _readDataFromFile(v9);
    }

    else
    {
      v16 = 0;
    }

    if ([v13 length])
    {
      v33 = [v12 length] != 0;
    }

    else
    {
      v33 = 0;
    }

    if ([v13 length])
    {
      while ([v12 length])
      {
        v19 = *[v12 bytes];
        v20 = [objc_alloc(MEMORY[0x277D189F0]) initWithProtobufData:v13 type:v19 isResponse:0];
        if (v16)
        {
          v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v16 encoding:4];
          context = [v20 context];

          if (!context)
          {
            v23 = objc_alloc(MEMORY[0x277D189D8]);
            v24 = [v23 initWithDictionary:MEMORY[0x277CBEC10] boostContext:0];
            [v20 setContext:v24];
          }

          context2 = [v20 context];
          [context2 setOutgoingResponseIdentifier:v21];
        }

        [handlerCopy handleIDSProtobuf:v20];
        v26 = _readDataFromFile(v9);

        v27 = _readDataFromFile(v9);

        v29 = blt_ids_log(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v27 length];
          *buf = 134217984;
          v37 = v30;
          _os_log_impl(&dword_241FB3000, v29, OS_LOG_TYPE_DEFAULT, "Deserializing protobuf bytes: %lu", buf, 0xCu);
        }

        if ([(BLTSendQueueSerializer *)self usesMessageIdentifiers])
        {
          v31 = _readDataFromFile(v9);

          v16 = v31;
        }

        v12 = v26;
        v13 = v27;
        if (![v27 length])
        {
          goto LABEL_28;
        }
      }
    }

    v27 = v13;
    v26 = v12;
LABEL_28:

    v11 = v34;
    v18 = v33;
  }

  else
  {
    v17 = blt_send_queue_log(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v37 = lCopy;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&dword_241FB3000, v17, OS_LOG_TYPE_ERROR, "Encountered error opening file %@: %@", buf, 0x16u);
    }

    _BLTCaptureBug(@"IDSFileOpenError");
    v18 = 0;
  }

  return v18;
}

- (void)setSendFileURL:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  v2 = 0;
  _os_log_error_impl(&dword_241FB3000, v0, OS_LOG_TYPE_ERROR, "%@ setSendFileURL: %@", v1, 0x16u);
}

- (void)add:(uint64_t)a1 type:(NSObject *)a2 messageIdentifier:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Error creating file %@", &v2, 0xCu);
}

- (void)add:(uint64_t)a1 type:(NSObject *)a2 messageIdentifier:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Encountered error opening file: %@", &v2, 0xCu);
}

- (void)add:type:messageIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)add:(uint64_t)a1 type:(NSObject *)a2 messageIdentifier:.cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_241FB3000, a2, OS_LOG_TYPE_FAULT, "%@ add:type:messageIdentifier: sendURL is nil", &v2, 0xCu);
}

void __83__BLTSendQueueSerializer_sendWithSender_timeout_responseHandlers_didSend_didQueue___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 40);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0(&dword_241FB3000, a2, a3, "Error removing %@ error: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end