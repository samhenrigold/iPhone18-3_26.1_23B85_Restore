@interface BLTSettingsSendSerializer
- (BLTSettingsSendSerializer)init;
- (void)handleFileURL:(id)l;
- (void)sendNowWithSent:(id)sent withAcknowledgement:(id)acknowledgement withTimeout:(id)timeout;
- (void)sendRequest:(id)request type:(unsigned __int16)type withTimeout:(id)timeout withDescription:(id)description onlyOneFor:(id)for didSend:(id)send andResponse:(id)response spoolToFile:(BOOL)self0;
@end

@implementation BLTSettingsSendSerializer

- (BLTSettingsSendSerializer)init
{
  v17.receiver = self;
  v17.super_class = BLTSettingsSendSerializer;
  v2 = [(BLTSettingsSendSerializer *)&v17 init];
  if (v2)
  {
    v3 = [[BLTSendQueueSerializer alloc] initWithUsesMessageIdentifiers:1];
    queueSerializer = v2->_queueSerializer;
    v2->_queueSerializer = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("BLTSettingsSendSerializer", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    array = [MEMORY[0x277CBEB18] array];
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    ackHandlers = v2->_ackHandlers;
    v2->_ackHandlers = dictionary;

    v13 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__BLTSettingsSendSerializer_init__block_invoke;
    block[3] = &unk_278D31428;
    v16 = v2;
    dispatch_async(v13, block);
  }

  return v2;
}

void __33__BLTSettingsSendSerializer_init__block_invoke(uint64_t a1)
{
  v2 = BLTFileURLInPairingPathWait(@"settingsynctmpdata");
  if (v2)
  {
    goto LABEL_5;
  }

  v3 = blt_general_log(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __33__BLTSettingsSendSerializer_init__block_invoke_cold_1(v3);
  }

  v2 = BLTFileURLInHomePath(@"settingsynctmpdata");
  if (v2)
  {
LABEL_5:
    v4 = v2;
  }

  else
  {
    v5 = blt_general_log(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __28__BLTBulletinSendQueue_init__block_invoke_cold_2(v5);
    }

    v4 = 0;
  }

  [*(*(a1 + 32) + 24) setSendFileURL:v4];
}

- (void)handleFileURL:(id)l
{
  queueSerializer = self->_queueSerializer;
  lCopy = l;
  delegate = [(BLTSettingsSendSerializerPassthrough *)self delegate];
  [(BLTSendQueueSerializer *)queueSerializer handleFileURL:lCopy protobufHandler:delegate];
}

- (void)sendRequest:(id)request type:(unsigned __int16)type withTimeout:(id)timeout withDescription:(id)description onlyOneFor:(id)for didSend:(id)send andResponse:(id)response spoolToFile:(BOOL)self0
{
  typeCopy = type;
  requestCopy = request;
  timeoutCopy = timeout;
  descriptionCopy = description;
  forCopy = for;
  sendCopy = send;
  responseCopy = response;
  if (file)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __117__BLTSettingsSendSerializer_sendRequest_type_withTimeout_withDescription_onlyOneFor_didSend_andResponse_spoolToFile___block_invoke;
    block[3] = &unk_278D32350;
    block[4] = self;
    v25 = requestCopy;
    v29 = typeCopy;
    v26 = descriptionCopy;
    v27 = responseCopy;
    v28 = sendCopy;
    dispatch_async(queue, block);
  }

  else
  {
    delegate = [(BLTSettingsSendSerializerPassthrough *)self delegate];
    [delegate sendRequest:requestCopy type:typeCopy withTimeout:timeoutCopy withDescription:descriptionCopy onlyOneFor:forCopy didSend:sendCopy andResponse:responseCopy];
  }
}

void __117__BLTSettingsSendSerializer_sendRequest_type_withTimeout_withDescription_onlyOneFor_didSend_andResponse_spoolToFile___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 24);
  v7 = *(a1 + 72);
  v23 = 0;
  [v6 add:v5 type:v7 messageIdentifier:&v23];
  v8 = v23;
  v9 = blt_ids_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 48);
    v3 = v10;
    if (!v10)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = objc_opt_class();
      v1 = NSStringFromClass(v12);
      v2 = [*(a1 + 40) redact];
      v3 = [v11 stringWithFormat:@"%@: %@", v1, v2];
    }

    v13 = *(a1 + 56);
    *buf = 138412802;
    if (v13)
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    v25 = v3;
    v26 = 2112;
    v27 = v8;
    v28 = 2080;
    v29 = v14;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Setting send stored protobuf %@ got message identifier: %@ with response completion: %s", buf, 0x20u);
    if (!v10)
    {
    }
  }

  if (*(a1 + 56) && v8)
  {
    objc_initWeak(buf, *(a1 + 32));
    v15 = *(a1 + 56);
    if (v15)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __117__BLTSettingsSendSerializer_sendRequest_type_withTimeout_withDescription_onlyOneFor_didSend_andResponse_spoolToFile___block_invoke_26;
      v20[3] = &unk_278D32328;
      v9 = &v22;
      objc_copyWeak(&v22, buf);
      v21 = *(a1 + 56);
      v16 = [v20 copy];
      v3 = &v21;
    }

    else
    {
      v16 = 0;
    }

    [*(*(a1 + 32) + 40) setObject:v16 forKeyedSubscript:v8];
    if (v15)
    {

      objc_destroyWeak(&v9->isa);
    }

    objc_destroyWeak(buf);
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    v18 = *(*(a1 + 32) + 32);
    v19 = [v17 copy];
    [v18 addObject:v19];
  }
}

void __117__BLTSettingsSendSerializer_sendRequest_type_withTimeout_withDescription_onlyOneFor_didSend_andResponse_spoolToFile___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();

  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[6])
  {
    v6 = WeakRetained[8] + 1;
    WeakRetained[8] = v6;
    v7 = WeakRetained[7];
    if (v7)
    {
      if (v6 >= v7)
      {
        v6 = WeakRetained[7];
      }

      v4.n128_f64[0] = v6 / v7;
    }

    else
    {
      v4.n128_u64[0] = 1.0;
    }

    (*(WeakRetained[6] + 16))(v4);
    v5 = WeakRetained;
  }
}

- (void)sendNowWithSent:(id)sent withAcknowledgement:(id)acknowledgement withTimeout:(id)timeout
{
  sentCopy = sent;
  acknowledgementCopy = acknowledgement;
  timeoutCopy = timeout;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__BLTSettingsSendSerializer_sendNowWithSent_withAcknowledgement_withTimeout___block_invoke;
  v15[3] = &unk_278D323A0;
  v17 = sentCopy;
  v18 = acknowledgementCopy;
  v15[4] = self;
  v16 = timeoutCopy;
  v12 = timeoutCopy;
  v13 = acknowledgementCopy;
  v14 = sentCopy;
  dispatch_sync(queue, v15);
}

void __77__BLTSettingsSendSerializer_sendNowWithSent_withAcknowledgement_withTimeout___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  [*(*(a1 + 32) + 32) removeAllObjects];
  v3 = [*(*(a1 + 32) + 40) copy];
  [*(*(a1 + 32) + 40) removeAllObjects];
  *(*(a1 + 32) + 56) = [v3 count];
  *(*(a1 + 32) + 64) = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __77__BLTSettingsSendSerializer_sendNowWithSent_withAcknowledgement_withTimeout___block_invoke_2;
  v17 = &unk_278D32378;
  v4 = v2;
  v18 = v4;
  v19 = *(a1 + 48);
  v5 = MEMORY[0x245D067A0](&v14);
  v6 = v5;
  if (*(*(a1 + 32) + 56))
  {
    v7 = [*(a1 + 56) copy];
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;

    v10 = *(a1 + 32);
    v11 = v10[3];
    v12 = [v10 delegate];
    [v11 sendWithSender:v12 timeout:*(a1 + 40) responseHandlers:v3 didSend:v6 didQueue:0];
  }

  else
  {
    (*(v5 + 16))(v5, 1, 0);
    v13 = *(a1 + 56);
    if (v13)
    {
      (*(v13 + 16))(1.0);
    }
  }
}

void __77__BLTSettingsSendSerializer_sendNowWithSent_withAcknowledgement_withTimeout___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v12 + 1) + 8 * v10) + 16))(*(*(&v12 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }
}

@end