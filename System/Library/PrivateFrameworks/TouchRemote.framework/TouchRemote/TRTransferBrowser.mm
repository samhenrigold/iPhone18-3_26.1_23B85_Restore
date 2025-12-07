@interface TRTransferBrowser
- (TRTransferBrowser)init;
- (TRTransferBrowserDelegate)delegate;
- (id)_didReceiveEncryptedData:(id)data;
- (id)transferDidReceiveData:(id)data;
- (int)_runSetupStepWithInput:(const void *)input inputLength:(unint64_t)length outputData:(id *)data;
- (int)_runVerifyStepWithInput:(const void *)input inputLength:(unint64_t)length outputData:(id *)data;
- (void)_beginScanningIfPowered;
- (void)_didFinishPairing;
- (void)dealloc;
- (void)start;
- (void)stop;
- (void)transferComplete;
- (void)transferDidFailWithError:(id)error;
- (void)transferDidUpdateScannerState:(id)state;
@end

@implementation TRTransferBrowser

- (TRTransferBrowser)init
{
  v8.receiver = self;
  v8.super_class = TRTransferBrowser;
  v2 = [(TRTransferBrowser *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TouchRemote.TRTransferBrowser", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_semaphore_create(0);
    responseSemaphore = v2->_responseSemaphore;
    v2->_responseSemaphore = v5;
  }

  return v2;
}

- (void)dealloc
{
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
  }

  if (self->_aesContext)
  {
    AES_CTR_Final();
    free(self->_aesContext);
  }

  v4.receiver = self;
  v4.super_class = TRTransferBrowser;
  [(TRTransferBrowser *)&v4 dealloc];
}

- (void)transferDidUpdateScannerState:(id)state
{
  scannerState = [state scannerState];
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__TRTransferBrowser_transferDidUpdateScannerState___block_invoke;
  v6[3] = &unk_279DCEB80;
  v6[4] = self;
  v6[5] = scannerState;
  dispatch_async(queue, v6);
}

_BYTE *__51__TRTransferBrowser_transferDidUpdateScannerState___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = *(a1 + 40);
  result = *(a1 + 32);
  if (result[48] == 1)
  {
    return [result _beginScanningIfPowered];
  }

  return result;
}

- (id)transferDidReceiveData:(id)data
{
  v4 = [data copy];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TRTransferBrowser_transferDidReceiveData___block_invoke;
  block[3] = &unk_279DCEBD0;
  v10 = v4;
  selfCopy = self;
  v12 = &v13;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __44__TRTransferBrowser_transferDidReceiveData___block_invoke(uint64_t a1)
{
  v79 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v2 = TRLogHandle(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(*(a1 + 40) + 24);
      *buf = 138412546;
      *&buf[4] = v3;
      *&buf[12] = 2048;
      *&buf[14] = v4;
      _os_log_impl(&dword_26F2A2000, v2, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Received a full packet: %@, state: %li", buf, 0x16u);
    }
  }

  v5 = *(a1 + 40);
  v6 = v5[3];
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = [*(a1 + 32) bytes];
        v8 = [*(a1 + 32) length];
        v71 = 0;
        v9 = [v5 _runSetupStepWithInput:v7 inputLength:v8 outputData:&v71];
        v10 = v71;
        v11 = v71;
        v12 = v11;
        if (!v9)
        {
          v38 = *(a1 + 40);
          if (v38[3] == 2)
          {
            if (_TRLogEnabled == 1)
            {
              v39 = TRLogHandle(v38);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_26F2A2000, v39, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Verify started.", buf, 2u);
              }

              v38 = *(a1 + 40);
            }

            v70 = v12;
            v40 = [v38 _runVerifyStepWithInput:0 inputLength:0 outputData:&v70];
            v41 = v70;
            v42 = v70;

            if (!v40)
            {
              if (_TRLogEnabled == 1)
              {
                v44 = TRLogHandle(v43);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v42;
                  _os_log_impl(&dword_26F2A2000, v44, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Initial verify output data: %@", buf, 0xCu);
                }
              }

              objc_storeStrong((*(*(a1 + 48) + 8) + 40), v41);
            }

            v12 = v42;
          }

          else
          {
            if (_TRLogEnabled == 1)
            {
              v65 = TRLogHandle(v38);
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v12;
                _os_log_impl(&dword_26F2A2000, v65, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Setup output data: %@", buf, 0xCu);
              }
            }

            objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
          }

          goto LABEL_104;
        }

        if (_TRLogEnabled == 1)
        {
          v13 = TRLogHandle(v11);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v9;
            _os_log_impl(&dword_26F2A2000, v13, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Setup failed: %li", buf, 0xCu);
          }
        }

        v14 = *(a1 + 40);
        v15 = *(v14 + 16);
        if (!v15)
        {
          goto LABEL_38;
        }

        CFRelease(v15);
        goto LABEL_37;
      }

      goto LABEL_18;
    }

    if (_TRLogEnabled == 1)
    {
      v20 = TRLogHandle(a1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2A2000, v20, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Pairing started.", buf, 2u);
      }
    }

    v21 = gQblcfSzZBQsYCCV();
    v22 = v21;
    if (v21)
    {
      if (_TRLogEnabled != 1)
      {
        return;
      }

      v12 = TRLogHandle(v21);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v22;
        v19 = "Error: [TRTransferBrowser] Unable to start pairing session: %li";
LABEL_29:
        _os_log_impl(&dword_26F2A2000, v12, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
        goto LABEL_104;
      }

      goto LABEL_104;
    }

    v30 = *(a1 + 40);
    v72 = 0;
    v31 = [v30 _runSetupStepWithInput:0 inputLength:0 outputData:&v72];
    v32 = v72;
    v33 = v72;
    v12 = v33;
    if (v31)
    {
      if (_TRLogEnabled == 1)
      {
        v34 = TRLogHandle(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v31;
          _os_log_impl(&dword_26F2A2000, v34, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Setup failed: %li", buf, 0xCu);
        }
      }

      v35 = *(a1 + 40);
      v36 = *(v35 + 16);
      if (!v36)
      {
        v37 = 0;
        goto LABEL_92;
      }

      CFRelease(v36);
      v37 = 0;
      *(*(a1 + 40) + 16) = 0;
    }

    else
    {
      if (_TRLogEnabled == 1)
      {
        v66 = TRLogHandle(v33);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v12;
          *&buf[12] = 2048;
          *&buf[14] = v12;
          _os_log_impl(&dword_26F2A2000, v66, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Setup output data: %@ (%p)", buf, 0x16u);
        }
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v32);
      v37 = 1;
    }

    v35 = *(a1 + 40);
LABEL_92:
    *(v35 + 24) = v37;
    goto LABEL_104;
  }

  if (v6 == 2)
  {
    v23 = [*(a1 + 32) bytes];
    v24 = [*(a1 + 32) length];
    v69 = 0;
    v25 = [v5 _runVerifyStepWithInput:v23 inputLength:v24 outputData:&v69];
    v26 = v69;
    v27 = v69;
    v12 = v27;
    if (v25)
    {
      if (_TRLogEnabled == 1)
      {
        v28 = TRLogHandle(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v25;
          _os_log_impl(&dword_26F2A2000, v28, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Verify failed: %li", buf, 0xCu);
        }
      }

      v14 = *(a1 + 40);
      v29 = *(v14 + 16);
      if (!v29)
      {
        goto LABEL_38;
      }

      CFRelease(v29);
LABEL_37:
      *(*(a1 + 40) + 16) = 0;
      v14 = *(a1 + 40);
LABEL_38:
      *(v14 + 24) = 0;
      goto LABEL_104;
    }

    if (_TRLogEnabled == 1)
    {
      v45 = TRLogHandle(v27);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_26F2A2000, v45, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Verify output data: %@", buf, 0xCu);
      }
    }

    v46 = *(a1 + 40);
    if (*(v46 + 24) != 3)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v26);
      goto LABEL_104;
    }

    if (_TRLogEnabled == 1)
    {
      v47 = TRLogHandle(v27);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));
        *buf = 138412290;
        *&buf[4] = WeakRetained;
        _os_log_impl(&dword_26F2A2000, v47, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Asking delegate %@ for data...", buf, 0xCu);
      }

      v46 = *(a1 + 40);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v76 = __Block_byref_object_copy_;
    v77 = __Block_byref_object_dispose_;
    v78 = 0;
    v49 = objc_loadWeakRetained((v46 + 72));
    v50 = objc_opt_respondsToSelector();

    if (v50)
    {
      v52 = objc_loadWeakRetained((*(a1 + 40) + 72));
      [v52 browser:MEMORY[0x277D85DD0] didStartTransferWithSendDataHandler:{3221225472, __44__TRTransferBrowser_transferDidReceiveData___block_invoke_124, &unk_279DCEBA8, *(a1 + 40), buf}];

      *(*(a1 + 40) + 49) = 1;
      v51 = dispatch_semaphore_wait(*(*(a1 + 40) + 40), 0xFFFFFFFFFFFFFFFFLL);
      *(*(a1 + 40) + 49) = 0;
    }

    if (_TRLogEnabled == 1)
    {
      v53 = TRLogHandle(v51);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = *(*&buf[8] + 40);
        *v73 = 138412290;
        v74 = v54;
        _os_log_impl(&dword_26F2A2000, v53, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Got delegate data: %@", v73, 0xCu);
      }
    }

    if ([*(*&buf[8] + 40) length])
    {
      v55 = objc_alloc(MEMORY[0x277CBEB28]);
      v56 = [v55 initWithLength:{objc_msgSend(*(*&buf[8] + 40), "length")}];
      v57 = v56;
      if (*(*(a1 + 40) + 8))
      {
        [*(*&buf[8] + 40) bytes];
        [*(*&buf[8] + 40) length];
        v58 = v57;
        [v57 mutableBytes];
        v59 = AES_CTR_Update();
        v60 = v59;
        if (!v59)
        {
          v67 = *(*(a1 + 48) + 8);
          v68 = v57;
          v61 = *(v67 + 40);
          *(v67 + 40) = v68;
          goto LABEL_101;
        }

        if (_TRLogEnabled == 1)
        {
          v61 = TRLogHandle(v59);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *v73 = 134217984;
            v74 = v60;
            v62 = "Error: [TRTransferBrowser] Context for sending failed: %ld";
            v63 = v61;
            v64 = 12;
LABEL_99:
            _os_log_impl(&dword_26F2A2000, v63, OS_LOG_TYPE_DEFAULT, v62, v73, v64);
            goto LABEL_101;
          }

          goto LABEL_101;
        }
      }

      else if (_TRLogEnabled == 1)
      {
        v61 = TRLogHandle(v56);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *v73 = 0;
          v62 = "Error: [TRTransferBrowser] No context for sending.";
          v63 = v61;
          v64 = 2;
          goto LABEL_99;
        }

LABEL_101:
      }
    }

    else
    {
      if (_TRLogEnabled != 1)
      {
LABEL_103:
        _Block_object_dispose(buf, 8);

        goto LABEL_104;
      }

      v57 = TRLogHandle(0);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *v73 = 0;
        _os_log_impl(&dword_26F2A2000, v57, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Sending no data back.", v73, 2u);
      }
    }

    goto LABEL_103;
  }

  if (v6 != 3)
  {
LABEL_18:
    if (_TRLogEnabled != 1)
    {
      return;
    }

    v12 = TRLogHandle(a1);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_104;
    }

    v18 = *(*(a1 + 40) + 24);
    *buf = 134217984;
    *&buf[4] = v18;
    v19 = "Error: [TRTransferBrowser] Invalid pairing state (%li)";
    goto LABEL_29;
  }

  v16 = [*(a1 + 40) _didReceiveEncryptedData:*(a1 + 32)];
  v17 = *(*(a1 + 48) + 8);
  v12 = *(v17 + 40);
  *(v17 + 40) = v16;
LABEL_104:
}

void __44__TRTransferBrowser_transferDidReceiveData___block_invoke_124(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 length];
  if (v3)
  {
    v4 = [v5 copy];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (v3)
  {
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 40));
}

- (void)transferDidFailWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle(errorCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Transfer failed with error: %@", buf, 0xCu);
    }
  }

  if (self->_waitingOnSemaphore)
  {
    dispatch_semaphore_signal(self->_responseSemaphore);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 browserDidDisconnect:self];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__TRTransferBrowser_transferDidFailWithError___block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__TRTransferBrowser_transferDidFailWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 16) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 24) = 0;
}

- (void)transferComplete
{
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Transfer completed.", buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 browserDidDisconnect:self];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TRTransferBrowser_transferComplete__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__TRTransferBrowser_transferComplete__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 16) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 24) = 0;
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__TRTransferBrowser_start__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __26__TRTransferBrowser_start__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    *(v1 + 48) = 1;
    v10 = @"WPTimeAfterUnlock";
    v11[0] = &unk_287F62900;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v4 = objc_alloc(MEMORY[0x277D7BC78]);
    v5 = *(a1 + 32);
    v6 = dispatch_get_global_queue(0, 0);
    v7 = [v4 initWithDelegate:v5 queue:v6 machName:@"com.apple.touchsetupd.wirelessproximity" options:v3];
    v8 = *(a1 + 32);
    v9 = *(v8 + 64);
    *(v8 + 64) = v7;

    *(*(a1 + 32) + 56) = [*(*(a1 + 32) + 64) scannerState];
    [*(a1 + 32) _beginScanningIfPowered];
  }
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__TRTransferBrowser_stop__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __25__TRTransferBrowser_stop__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 48) == 1)
  {
    *(v1 + 48) = 0;
    [*(*(a1 + 32) + 64) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    *(v3 + 64) = 0;

    *(*(a1 + 32) + 56) = 0;
    v5 = *(a1 + 32);
    if (*(v5 + 56) == 3)
    {
      v6 = *(v5 + 64);

      [v6 stopScan];
    }
  }
}

- (void)_beginScanningIfPowered
{
  if (self->_scannerState == 3)
  {
    [(WPTransfer *)self->_transferSession startScan];
  }
}

- (void)_didFinishPairing
{
  v17 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Pairing finished.", buf, 2u);
    }
  }

  v4 = [@"TRBT-Key" dataUsingEncoding:4];
  v5 = [@"TRBT-IV" dataUsingEncoding:4];
  [v4 bytes];
  [v4 length];
  [v5 bytes];
  [v5 length];
  v6 = PCFdAVst();
  if (v6)
  {
    if (_TRLogEnabled != 1)
    {
      goto LABEL_15;
    }

    v7 = v6;
    v8 = TRLogHandle(v6);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v14 = 134217984;
    v15 = v7;
    v9 = "Error: [TRTransferBrowser] Unable to derive key: %li";
    goto LABEL_13;
  }

  self->_aesContext = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040423EBB36uLL);
  v10 = AES_CTR_Init();
  if (!v10)
  {
    v13 = 3;
    goto LABEL_19;
  }

  if (_TRLogEnabled == 1)
  {
    v11 = v10;
    v8 = TRLogHandle(v10);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      goto LABEL_15;
    }

    v14 = 134217984;
    v15 = v11;
    v9 = "Error: [TRTransferBrowser] Unable to intialize context: %li";
LABEL_13:
    _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, v9, &v14, 0xCu);
    goto LABEL_14;
  }

LABEL_15:
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    v13 = 0;
    self->_pairingSession = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_19:
  self->_pairingState = v13;
}

- (id)_didReceiveEncryptedData:(id)data
{
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (![dataCopy length])
  {
    v6 = 0;
    goto LABEL_19;
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(dataCopy, "length")}];
  if (self->_aesContext)
  {
    [dataCopy bytes];
    [dataCopy length];
    [v5 mutableBytes];
    if (!AES_CTR_Update())
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy_;
      v22 = __Block_byref_object_dispose_;
      v23 = 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = objc_loadWeakRetained(&self->_delegate);
        v10 = [v5 copy];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __46__TRTransferBrowser__didReceiveEncryptedData___block_invoke;
        v17[3] = &unk_279DCEBA8;
        v17[4] = self;
        v17[5] = &v18;
        [v9 browser:self didReceiveData:v10 replyHandler:v17];

        self->_waitingOnSemaphore = 1;
        dispatch_semaphore_wait(self->_responseSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        self->_waitingOnSemaphore = 0;
      }

      if (v19[5])
      {
        v11 = objc_alloc(MEMORY[0x277CBEB28]);
        v12 = [v11 initWithLength:{objc_msgSend(v19[5], "length")}];
        [v19[5] bytes];
        [v19[5] length];
        v13 = v12;
        [v12 mutableBytes];
        v14 = AES_CTR_Update();
        if (v14)
        {
          v6 = 0;
        }

        else
        {
          if (_TRLogEnabled != 1)
          {
            v6 = v12;
            goto LABEL_17;
          }

          v15 = TRLogHandle(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v12;
            _os_log_impl(&dword_26F2A2000, v15, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Writing exchange data response: %@", buf, 0xCu);
          }

          v6 = v12;
          v12 = v15;
        }
      }

      else
      {
        v6 = 0;
      }

LABEL_17:
      _Block_object_dispose(&v18, 8);

      goto LABEL_18;
    }
  }

  v6 = 0;
LABEL_18:

LABEL_19:

  return v6;
}

void __46__TRTransferBrowser__didReceiveEncryptedData___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 length];
  if (v3)
  {
    v4 = [v5 copy];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (v3)
  {
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 40));
}

- (int)_runSetupStepWithInput:(const void *)input inputLength:(unint64_t)length outputData:(id *)data
{
  v23 = *MEMORY[0x277D85DE8];
  memset(v22, 0, sizeof(v22));
  if (length == 1)
  {
    lengthCopy = *input != 0;
  }

  else
  {
    lengthCopy = length;
  }

  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = lengthCopy;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Setup input data length: %ld", buf, 0xCu);
    }
  }

  if (self->_pairingSession)
  {
    v9 = h4BvW7X();
    if (v9)
    {
      v10 = v9;
      if (_TRLogEnabled == 1)
      {
        v11 = TRLogHandle(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v19 = v10;
          _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Unable to do session pairing setup exhange (%li)", buf, 0xCu);
        }
      }
    }

    else
    {
      if (data)
      {
        v14 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:0];
        *data = v14;
        if (_TRLogEnabled == 1)
        {
          v15 = TRLogHandle(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *data;
            *buf = 138412546;
            v19 = v16;
            v20 = 2048;
            v21 = v16;
            _os_log_impl(&dword_26F2A2000, v15, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Writing setup exchange data: %@ (%p)", buf, 0x16u);
          }
        }
      }

      v10 = 0;
      self->_pairingState = 1;
    }
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v12 = TRLogHandle(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        pairingState = self->_pairingState;
        *buf = 134217984;
        v19 = pairingState;
        _os_log_impl(&dword_26F2A2000, v12, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] No session for pairing setup exhange (state: %ld)", buf, 0xCu);
      }
    }

    return 0;
  }

  return v10;
}

- (int)_runVerifyStepWithInput:(const void *)input inputLength:(unint64_t)length outputData:(id *)data
{
  v21 = *MEMORY[0x277D85DE8];
  memset(v20, 0, sizeof(v20));
  if (length == 1)
  {
    lengthCopy = *input != 0;
  }

  else
  {
    lengthCopy = length;
  }

  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = lengthCopy;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Verify input data length: %ld", buf, 0xCu);
    }
  }

  if (self->_pairingSession)
  {
    v9 = VBAEFt();
    if (v9)
    {
      v10 = v9;
      if (_TRLogEnabled == 1)
      {
        v11 = TRLogHandle(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v19 = v10;
          _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Unable to do session pairing verify exhange (%li)", buf, 0xCu);
        }
      }
    }

    else
    {
      if (data)
      {
        v15 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:0];
        *data = v15;
        if (_TRLogEnabled == 1)
        {
          v16 = TRLogHandle(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *data;
            *buf = 138412290;
            v19 = v17;
            _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Writing verify exchange data: %@", buf, 0xCu);
          }
        }
      }

      v10 = 0;
      self->_pairingState = 2;
    }
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v12 = TRLogHandle(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        pairingState = self->_pairingState;
        *buf = 134217984;
        v19 = pairingState;
        _os_log_impl(&dword_26F2A2000, v12, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] No session for pairing verify exhange (state: %ld)", buf, 0xCu);
      }
    }

    return 0;
  }

  return v10;
}

- (TRTransferBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end