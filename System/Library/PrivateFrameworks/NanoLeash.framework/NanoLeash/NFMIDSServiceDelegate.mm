@interface NFMIDSServiceDelegate
- (NFMIDSServiceDelegate)init;
- (id)_sendProtoBuf:(id)buf service:(id)service priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response;
- (id)sendProtoBuf:(id)buf service:(id)service priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response retryCount:(int64_t)count retryInterval:(double)interval;
- (void)_enqueueMessage:(id)message service:(id)service priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response retryCount:(int64_t)count retryInterval:(double)interval idsIdentifier:(id)self0;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
@end

@implementation NFMIDSServiceDelegate

- (NFMIDSServiceDelegate)init
{
  v8.receiver = self;
  v8.super_class = NFMIDSServiceDelegate;
  v2 = [(NFMIDSServiceDelegate *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inflightMessages = v2->_inflightMessages;
    v2->_inflightMessages = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingMessages = v2->_pendingMessages;
    v2->_pendingMessages = v5;
  }

  return v2;
}

- (id)_sendProtoBuf:(id)buf service:(id)service priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response
{
  responseCopy = response;
  v26 = *MEMORY[0x277D85DE8];
  bufCopy = buf;
  identifierCopy = identifier;
  serviceCopy = service;
  v14 = nfm_log(serviceCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v23 = 60;
    v24 = 2080;
    v25 = "[NFMIDSServiceDelegate _sendProtoBuf:service:priority:responseIdentifier:expectsResponse:]";
    _os_log_impl(&dword_25B17F000, v14, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __91__NFMIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke;
  v19[3] = &unk_2799338B8;
  v20 = identifierCopy;
  v21 = bufCopy;
  v15 = bufCopy;
  v16 = identifierCopy;
  v17 = NFMProtoSend(serviceCopy, v15, priority, v16, responseCopy, v19);

  return v17;
}

void __91__NFMIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nfm_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __91__NFMIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke_cold_1(a1, v3, v4);
  }
}

- (void)_enqueueMessage:(id)message service:(id)service priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response retryCount:(int64_t)count retryInterval:(double)interval idsIdentifier:(id)self0
{
  v41 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  serviceCopy = service;
  identifierCopy = identifier;
  idsIdentifierCopy = idsIdentifier;
  v21 = nfm_log(idsIdentifierCopy);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    buf = 0x4604000202;
    v39 = 2080;
    v40 = "[NFMIDSServiceDelegate _enqueueMessage:service:priority:responseIdentifier:expectsResponse:retryCount:retryInterval:idsIdentifier:]";
    _os_log_impl(&dword_25B17F000, v21, OS_LOG_TYPE_DEFAULT, "%d %s", &buf, 0x12u);
  }

  objc_initWeak(&buf, self);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __132__NFMIDSServiceDelegate__enqueueMessage_service_priority_responseIdentifier_expectsResponse_retryCount_retryInterval_idsIdentifier___block_invoke;
  v32 = &unk_2799338E0;
  objc_copyWeak(v36, &buf);
  v22 = messageCopy;
  v33 = v22;
  v23 = serviceCopy;
  v34 = v23;
  v36[1] = priority;
  v24 = identifierCopy;
  v35 = v24;
  responseCopy = response;
  v25 = MEMORY[0x25F8637B0](&v29);
  inflightMessages = self->_inflightMessages;
  intervalCopy = 0.0;
  if (interval >= 0.0)
  {
    intervalCopy = interval;
  }

  v28 = [NFMIDSMessageInstance newMessageInstanceWithAction:v25 retryCount:count & ~(count >> 63) retryInterval:intervalCopy, v29, v30, v31, v32];
  [(NSMutableDictionary *)inflightMessages setObject:v28 forKey:idsIdentifierCopy];

  objc_destroyWeak(v36);
  objc_destroyWeak(&buf);
}

void __132__NFMIDSServiceDelegate__enqueueMessage_service_priority_responseIdentifier_expectsResponse_retryCount_retryInterval_idsIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained _sendProtoBuf:*(a1 + 32) service:*(a1 + 40) priority:*(a1 + 64) responseIdentifier:*(a1 + 48) expectsResponse:*(a1 + 72)];
}

- (id)sendProtoBuf:(id)buf service:(id)service priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response retryCount:(int64_t)count retryInterval:(double)interval
{
  responseCopy = response;
  v37 = *MEMORY[0x277D85DE8];
  bufCopy = buf;
  serviceCopy = service;
  identifierCopy = identifier;
  v19 = nfm_log(identifierCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v34 = 80;
    v35 = 2080;
    v36 = "[NFMIDSServiceDelegate sendProtoBuf:service:priority:responseIdentifier:expectsResponse:retryCount:retryInterval:]";
    _os_log_impl(&dword_25B17F000, v19, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v20 = [(NFMIDSServiceDelegate *)self _sendProtoBuf:bufCopy service:serviceCopy priority:priority responseIdentifier:identifierCopy expectsResponse:responseCopy];
  v21 = v20;
  if (v20)
  {
    [(NFMIDSServiceDelegate *)self _enqueueMessage:bufCopy service:serviceCopy priority:priority responseIdentifier:identifierCopy expectsResponse:responseCopy retryCount:count retryInterval:interval idsIdentifier:v20];
  }

  else
  {
    v22 = nfm_log(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [NFMIDSServiceDelegate sendProtoBuf:v22 service:? priority:? responseIdentifier:? expectsResponse:? retryCount:? retryInterval:?];
    }

    v23 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __115__NFMIDSServiceDelegate_sendProtoBuf_service_priority_responseIdentifier_expectsResponse_retryCount_retryInterval___block_invoke;
    block[3] = &unk_279933908;
    block[4] = self;
    v26 = bufCopy;
    v27 = serviceCopy;
    priorityCopy = priority;
    v32 = responseCopy;
    v28 = identifierCopy;
    countCopy = count;
    intervalCopy = interval;
    dispatch_after(v23, MEMORY[0x277D85CD0], block);
  }

  return v21;
}

uint64_t __115__NFMIDSServiceDelegate_sendProtoBuf_service_priority_responseIdentifier_expectsResponse_retryCount_retryInterval___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _sendProtoBuf:*(a1 + 40) service:*(a1 + 48) priority:*(a1 + 64) responseIdentifier:*(a1 + 56) expectsResponse:*(a1 + 88)];
  if (v2)
  {
    [*(a1 + 32) _enqueueMessage:*(a1 + 40) service:*(a1 + 48) priority:*(a1 + 64) responseIdentifier:*(a1 + 56) expectsResponse:*(a1 + 88) retryCount:*(a1 + 72) retryInterval:*(a1 + 80) idsIdentifier:v2];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  v12 = nfm_log(contextCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = 138413058;
    v14 = protobufCopy;
    v15 = 2112;
    v16 = dCopy;
    v17 = 2112;
    v18 = contextCopy;
    v19 = 1024;
    type = [protobufCopy type];
    _os_log_error_impl(&dword_25B17F000, v12, OS_LOG_TYPE_ERROR, "########### incomingUnhandledProtobuf: %@ from: %@ context: %@ type: %d", &v13, 0x26u);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = nfm_log(errorCopy);
  v17 = v16;
  if (errorCopy || !success)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v30 = identifierCopy;
      v31 = 2112;
      v32 = serviceCopy;
      v33 = 2112;
      v34 = accountCopy;
      v35 = 2112;
      v36 = errorCopy;
      _os_log_error_impl(&dword_25B17F000, v17, OS_LOG_TYPE_ERROR, "########### Failed to send message ID: %@ (%@ -- %@) Error: %@", buf, 0x2Au);
    }

    v18 = [(NSMutableDictionary *)self->_inflightMessages objectForKey:identifierCopy];
    retryCount = [v18 retryCount];
    if (retryCount < 1)
    {
      if (!v18)
      {
LABEL_16:

        goto LABEL_17;
      }

      v23 = nfm_log(retryCount);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v30 = identifierCopy;
        v31 = 2112;
        v32 = serviceCopy;
        v33 = 2112;
        v34 = accountCopy;
        v35 = 2112;
        v36 = errorCopy;
        _os_log_error_impl(&dword_25B17F000, v23, OS_LOG_TYPE_ERROR, "########### Failed fallback attempt(s) for message ID: %@ (%@ -- %@) Error: %@", buf, 0x2Au);
      }
    }

    else
    {
      v20 = nfm_log(retryCount);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v30 = identifierCopy;
        v31 = 2112;
        v32 = serviceCopy;
        v33 = 2112;
        v34 = accountCopy;
        v35 = 2112;
        v36 = errorCopy;
        _os_log_impl(&dword_25B17F000, v20, OS_LOG_TYPE_DEFAULT, "########### Attempt fallback message send for ID: %@ (%@ -- %@) Error: %@", buf, 0x2Au);
      }

      [(NSMutableDictionary *)self->_inflightMessages removeObjectForKey:identifierCopy];
      [v18 setRetryCount:{objc_msgSend(v18, "retryCount") - 1}];
      [(NSMutableDictionary *)self->_pendingMessages setObject:v18 forKey:identifierCopy];
      [v18 retryInterval];
      v22 = dispatch_time(0, (v21 * 1000000000.0));
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __77__NFMIDSServiceDelegate_service_account_identifier_didSendWithSuccess_error___block_invoke;
      v24[3] = &unk_279933930;
      v25 = identifierCopy;
      v26 = serviceCopy;
      v27 = accountCopy;
      selfCopy = self;
      dispatch_after(v22, MEMORY[0x277D85CD0], v24);

      v23 = v25;
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = identifierCopy;
    _os_log_impl(&dword_25B17F000, v17, OS_LOG_TYPE_DEFAULT, "########### Success Sending Message ID: %@", buf, 0xCu);
  }

  [(NSMutableDictionary *)self->_inflightMessages removeObjectForKey:identifierCopy];
  [(NSMutableDictionary *)self->_pendingMessages removeObjectForKey:identifierCopy];
LABEL_17:
}

void __77__NFMIDSServiceDelegate_service_account_identifier_didSendWithSuccess_error___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = nfm_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25B17F000, v2, OS_LOG_TYPE_DEFAULT, "########### Firing fallback message ID: %@ (%@ -- %@)", &v10, 0x20u);
  }

  v6 = [*(a1[7] + 16) objectForKey:a1[4]];
  v7 = nfm_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_25B17F000, v7, OS_LOG_TYPE_DEFAULT, "########### Firing messageInstance %@", &v10, 0xCu);
  }

  if (v6)
  {
    v8 = [v6 retryAction];

    if (v8)
    {
      [*(a1[7] + 8) setObject:v6 forKey:a1[4]];
      v9 = [v6 retryAction];
      v9[2]();
    }
  }
}

void __91__NFMIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = @"Response ";
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = 138413314;
  if (!v4)
  {
    v3 = &stru_286C63C98;
  }

  v7 = v3;
  v8 = 1024;
  v9 = 62;
  v10 = 2080;
  v11 = "[NFMIDSServiceDelegate _sendProtoBuf:service:priority:responseIdentifier:expectsResponse:]_block_invoke";
  v12 = 2112;
  v13 = v5;
  v14 = 2112;
  v15 = a2;
  _os_log_error_impl(&dword_25B17F000, log, OS_LOG_TYPE_ERROR, "########### Failed to send IDS %@Protobuf (%d %s) -- %@ (Error: %@)", &v6, 0x30u);
}

@end