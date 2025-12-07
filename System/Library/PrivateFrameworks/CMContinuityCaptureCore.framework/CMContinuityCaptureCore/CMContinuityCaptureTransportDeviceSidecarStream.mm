@interface CMContinuityCaptureTransportDeviceSidecarStream
- (CMContinuityCaptureTransportDeviceSidecarStream)initWithSidecarStream:(id)stream entity:(int64_t)entity messageDelegate:(id)delegate;
- (NSString)description;
- (id)cipherKeyforSessionID:(id)d;
- (void)activate:(id)activate;
- (void)sendMessage:(id)message message:(id)a4 completion:(id)completion;
@end

@implementation CMContinuityCaptureTransportDeviceSidecarStream

- (id)cipherKeyforSessionID:(id)d
{
  stream = self->_stream;
  dCopy = d;
  rapportStream = [(SidecarStream *)stream rapportStream];
  streamKey = [rapportStream streamKey];
  v7 = CMContinuityCaptureCreateCipherKey(streamKey, dCopy);

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  streamIdentifier = [(CMContinuityCaptureTransportDeviceSidecarStream *)self streamIdentifier];
  v7 = [v3 stringWithFormat:v5, streamIdentifier, self->_entity, self];

  return v7;
}

- (void)activate:(id)activate
{
  activateCopy = activate;
  objc_initWeak(&location, self);
  streamIdentifier = [(CMContinuityCaptureTransportDeviceSidecarStream *)self streamIdentifier];
  if (self->_active == -1)
  {
    self->_active = 0;
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Activate", buf, 0xCu);
    }

    if (![(CMContinuityCaptureTransportDeviceSidecarStream *)self isMediaStream])
    {
      stream = self->_stream;
      v12[1] = MEMORY[0x277D85DD0];
      v12[2] = 3221225472;
      v12[3] = __60__CMContinuityCaptureTransportDeviceSidecarStream_activate___block_invoke;
      v12[4] = &unk_278D5D130;
      objc_copyWeak(&v14, &location);
      v13 = streamIdentifier;
      [(SidecarStream *)stream setHandler:?];

      objc_destroyWeak(&v14);
    }

    v9 = self->_stream;
    v10 = MEMORY[0x277D85DD0];
    objc_copyWeak(v12, &location);
    v11 = activateCopy;
    [(SidecarStream *)v9 activateWithCompletion:v10, 3221225472, __60__CMContinuityCaptureTransportDeviceSidecarStream_activate___block_invoke_6, &unk_278D5C260];

    objc_destroyWeak(v12);
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    (*(activateCopy + 2))(activateCopy, v6);
  }

  objc_destroyWeak(&location);
}

void __60__CMContinuityCaptureTransportDeviceSidecarStream_activate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v5 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_loadWeakRetained((a1 + 40));
        v8 = 138543618;
        v9 = v6;
        v10 = 2112;
        v11 = v3;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ got message %@", &v8, 0x16u);
      }

      v7 = objc_loadWeakRetained(WeakRetained + 4);
      [v7 enqueueResponse:? identifier:?];
    }
  }
}

void __60__CMContinuityCaptureTransportDeviceSidecarStream_activate___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [v3 code] == 0;
    }

    else
    {
      v5 = 1;
    }

    WeakRetained[10] = v5;
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Activation complete Error %{public}@", &v8, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)sendMessage:(id)message message:(id)a4 completion:(id)completion
{
  messageCopy = message;
  v9 = a4;
  completionCopy = completion;
  objc_initWeak(location, self);
  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:?];
  v12 = MEMORY[0x277CCABB0];
  CMContinuityCaptureGetMessageGenerationID();
  v13 = [v12 numberWithUnsignedLongLong:?];
  [v11 setObject:? forKeyedSubscript:?];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__CMContinuityCaptureTransportDeviceSidecarStream_sendMessage_message_completion___block_invoke;
  block[3] = &unk_278D5C490;
  objc_copyWeak(&v36, location);
  v14 = messageCopy;
  v34 = v14;
  v15 = completionCopy;
  v35 = v15;
  v16 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __82__CMContinuityCaptureTransportDeviceSidecarStream_sendMessage_message_completion___block_invoke_11;
  v27 = &unk_278D5D158;
  objc_copyWeak(&v32, location);
  v17 = v16;
  v30 = v17;
  v18 = v11;
  v28 = v18;
  v19 = v14;
  v29 = v19;
  v20 = v15;
  v31 = v20;
  v21 = MEMORY[0x245D12020](&v24);
  [(SidecarStream *)self->_stream sendOPACK:v24 completion:v25, v26, v27];
  v22 = dispatch_time(0, 10000000000);
  v23 = dispatch_get_global_queue(2, 0);
  dispatch_after(v22, v23, v17);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v36);

  objc_destroyWeak(location);
}

void __82__CMContinuityCaptureTransportDeviceSidecarStream_sendMessage_message_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 48));
      v5 = *(a1 + 32);
      v8 = 138543618;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Message send timeout for %@", &v8, 0x16u);
    }

    v6 = *(a1 + 40);
    v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    (*(v6 + 16))(v6, v7);
  }
}

void __82__CMContinuityCaptureTransportDeviceSidecarStream_sendMessage_message_completion___block_invoke_11(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    dispatch_block_cancel(*(a1 + 48));
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) objectForKeyedSubscript:?];
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) objectForKeyedSubscript:?];
      v9 = 138544386;
      v10 = WeakRetained;
      v11 = 2114;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 2112;
      v18 = a2;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Message GID %{public}@ identifier %{public}@ selector %{public}@ send error %@", &v9, 0x34u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (CMContinuityCaptureTransportDeviceSidecarStream)initWithSidecarStream:(id)stream entity:(int64_t)entity messageDelegate:(id)delegate
{
  streamCopy = stream;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = CMContinuityCaptureTransportDeviceSidecarStream;
  v11 = [(CMContinuityCaptureTransportDeviceSidecarStream *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_messageDelegate, delegateCopy);
    objc_storeStrong(&v12->_stream, stream);
    v12->_entity = entity;
    stream = v12->_stream;
    if (stream)
    {
      v14 = *MEMORY[0x277CBECE8];
      nwClientID = [(SidecarStream *)stream nwClientID];
      v17 = v16;
      *&v26.byte0 = nwClientID;
      *&v26.byte8 = v17;
      v18 = CFUUIDCreateFromUUIDBytes(v14, v26);
      v19 = CFUUIDCreateString(v14, v18);
      v20 = v19;
      if (v19)
      {
        v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:?];
      }

      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    streamUUID = v12->_streamUUID;
    v12->_streamUUID = v21;

    v12->_active = -1;
    v23 = v12;
  }

  return v12;
}

@end