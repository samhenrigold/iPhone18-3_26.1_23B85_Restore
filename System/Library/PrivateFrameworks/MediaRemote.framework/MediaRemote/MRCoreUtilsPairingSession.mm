@interface MRCoreUtilsPairingSession
- (BOOL)deleteIdentityWithError:(id *)error;
- (BOOL)isPaired;
- (BOOL)shouldAutoRetryPairingExchange:(id)exchange;
- (MRCoreUtilsPairingSession)initWithRole:(unint64_t)role device:(id)device;
- (MRDeviceInfo)_createDeviceFromPeer:(uint64_t)peer;
- (MRDeviceInfo)_createPeerDeviceFromPeer:(uint64_t)peer;
- (MRDeviceInfo)pairedPeerDevice;
- (NSArray)pairedPeerDevices;
- (NSMutableDictionary)mediaRemotePairedDevices;
- (NSString)peerIdentifier;
- (id)_generateSetupCodeWithMaximumLength:(uint64_t)length;
- (id)_onQueueInitializePairingSessionWithState:(uint64_t)state;
- (id)_onQueuePerformPairingExchangeWithInputData:(void *)data error:;
- (id)addPeer;
- (id)decryptData:(id)data withError:(id *)error;
- (id)encryptData:(id)data withError:(id *)error;
- (id)extendedPeerInfo;
- (id)initializePairingSession:(PairingSessionPrivate *)session;
- (id)pairedDevices;
- (id)removePeer;
- (id)updatePeer;
- (uint64_t)_displaySetupCode:(uint64_t)code;
- (uint64_t)_promptForSetupCodeWithDelay:(uint64_t)result;
- (uint64_t)shouldAutoRetry;
- (void)_delegateDidEnterPasscode:(void *)passcode;
- (void)_handlePairingCompleteWithError:(void *)error;
- (void)_handleSetupExchangeComplete;
- (void)_hideSetupCode;
- (void)_onQueueDeriveEncryptionKeys;
- (void)close;
- (void)dealloc;
- (void)handlePairingExchangeData:(id)data completion:(id)completion;
- (void)handlePairingFailureWithStatus:(int)status;
- (void)openInState:(unint64_t)state;
- (void)setPairingFlags:(unsigned int)flags;
@end

@implementation MRCoreUtilsPairingSession

- (MRCoreUtilsPairingSession)initWithRole:(unint64_t)role device:(id)device
{
  v14.receiver = self;
  v14.super_class = MRCoreUtilsPairingSession;
  v4 = [(MRCryptoPairingSession *)&v14 initWithRole:role device:device];
  v5 = v4;
  if (v4)
  {
    v4->_state = 1;
    v6 = +[MRPasscodeCredentials standardCredentials];
    credentials = v5->_credentials;
    v5->_credentials = v6;

    v8 = objc_opt_class();
    Name = class_getName(v8);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(Name, v10);
    queue = v5->_queue;
    v5->_queue = v11;

    *&v5->_pairingDelegate.context = 0u;
    *&v5->_pairingDelegate.hideSetupCode_f = 0u;
    *&v5->_pairingDelegate.copyIdentity_f = 0u;
    *&v5->_pairingDelegate.savePeer_f = 0u;
    v5->_pairingDelegate.resumeResponse_f = 0;
    v5->_pairingDelegate.context = v5;
    v5->_pairingDelegate.showSetupCode_f = _MRCUPSShowSetupCodeCallback;
    v5->_pairingDelegate.hideSetupCode_f = _MRCUPSHideSetupCodeCallback;
    v5->_pairingDelegate.promptForSetupCode_f = _MRCUPSPromptForSetupCodeCallback;
    v5->_pairingFlags = 0;
  }

  return v5;
}

- (void)dealloc
{
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  self->_pairingDelegate.context = 0;
  v4.receiver = self;
  v4.super_class = MRCoreUtilsPairingSession;
  [(MRCoreUtilsPairingSession *)&v4 dealloc];
}

- (BOOL)isPaired
{
  pairedPeerDevice = [(MRCoreUtilsPairingSession *)self pairedPeerDevice];
  v3 = pairedPeerDevice != 0;

  return v3;
}

- (id)pairedDevices
{
  mediaRemotePairedDevices = [(MRCoreUtilsPairingSession *)self mediaRemotePairedDevices];
  allValues = [mediaRemotePairedDevices allValues];

  return allValues;
}

- (void)close
{
  if (self->_state <= 3)
  {
    Error = MRMediaRemoteCreateError(25);
    [(MRCoreUtilsPairingSession *)self _handlePairingCompleteWithError:?];
  }

  self->_state = 1;
  [(MRCoreUtilsPairingSession *)self setInputKey:0];
  [(MRCoreUtilsPairingSession *)self setInputNonce:0];
  [(MRCoreUtilsPairingSession *)self setOutputKey:0];

  [(MRCoreUtilsPairingSession *)self setOutputNonce:0];
}

- (void)handlePairingExchangeData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRCoreUtilsPairingSession_handlePairingExchangeData_completion___block_invoke;
  block[3] = &unk_1E769E410;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(queue, block);
}

- (id)encryptData:(id)data withError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__19;
  v27 = __Block_byref_object_dispose__19;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__19;
  v21 = __Block_byref_object_dispose__19;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__MRCoreUtilsPairingSession_encryptData_withError___block_invoke;
  v13[3] = &unk_1E769EE60;
  v13[4] = self;
  v15 = &v23;
  v8 = dataCopy;
  v14 = v8;
  v16 = &v17;
  dispatch_sync(queue, v13);
  if (v18[5])
  {
    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v18[5];
      *buf = 138543362;
      v30 = v10;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Error while encrypting data: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      *error = v18[5];
    }
  }

  v11 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __51__MRCoreUtilsPairingSession_encryptData_withError___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 136) == 5)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(*(a1 + 40), "length")}];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = MSVWeakLinkSymbol();
    v5([*(*(a1 + 32) + 160) bytes], objc_msgSend(*(*(a1 + 32) + 168), "bytes"), 0, 0, objc_msgSend(*(a1 + 40), "bytes"), objc_msgSend(*(a1 + 40), "length"), objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "mutableBytes"), v14);
    [*(*(*(a1 + 48) + 8) + 40) appendBytes:v14 length:16];
    v6 = [*(*(a1 + 32) + 168) mutableBytes];
    v7 = [*(*(a1 + 32) + 168) length];
    if (v7)
    {
      v8 = v7 - 1;
      do
      {
        if (++*v6++)
        {
          v10 = 1;
        }

        else
        {
          v10 = v8 == 0;
        }

        --v8;
      }

      while (!v10);
    }
  }

  else
  {
    v11 = MRCreateCryptoError(@"Session not open");
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (id)decryptData:(id)data withError:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__19;
  v28 = __Block_byref_object_dispose__19;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__19;
  v22 = __Block_byref_object_dispose__19;
  v23 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__MRCoreUtilsPairingSession_decryptData_withError___block_invoke;
  v13[3] = &unk_1E769EE60;
  v8 = dataCopy;
  v14 = v8;
  selfCopy = self;
  v16 = &v18;
  v17 = &v24;
  dispatch_sync(queue, v13);
  if (v19[5])
  {
    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v19[5];
      *buf = 138543362;
      v31 = v10;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Error while decrypting data: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      *error = v19[5];
    }
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __51__MRCoreUtilsPairingSession_decryptData_withError___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length] <= 0xF)
  {
    v2 = @"Encrypted data has an invalid length";
LABEL_15:
    v25 = MRCreateCryptoError(v2);
    v26 = *(*(a1 + 48) + 8);
    v24 = *(v26 + 40);
    *(v26 + 40) = v25;
    goto LABEL_16;
  }

  if (*(*(a1 + 40) + 136) != 5)
  {
    v2 = @"Session not open";
    goto LABEL_15;
  }

  v27 = [*(a1 + 32) subdataWithRange:{objc_msgSend(*(a1 + 32), "length") - 16, 16}];
  v3 = [*(a1 + 32) subdataWithRange:{0, objc_msgSend(*(a1 + 32), "length") - 16}];
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(v3, "length")}];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = MSVWeakLinkSymbol();
  v8 = [*(*(a1 + 40) + 144) bytes];
  v9 = [*(*(a1 + 40) + 152) bytes];
  v10 = [v3 bytes];
  v11 = [v3 length];
  v12 = [*(*(*(a1 + 56) + 8) + 40) mutableBytes];
  v13 = v27;
  v14 = v7(v8, v9, 0, 0, v10, v11, v12, [v27 bytes]);
  v15 = [*(*(a1 + 40) + 152) mutableBytes];
  v16 = [*(*(a1 + 40) + 152) length];
  if (v16)
  {
    v17 = v16 - 1;
    do
    {
      if (++*v15++)
      {
        v19 = 1;
      }

      else
      {
        v19 = v17 == 0;
      }

      --v17;
    }

    while (!v19);
  }

  if (v14)
  {
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = [v20 initWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:0];
    v22 = *(*(a1 + 48) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  v24 = v27;
LABEL_16:
}

- (BOOL)deleteIdentityWithError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MRCoreUtilsPairingSession_deleteIdentityWithError___block_invoke;
  v7[3] = &unk_1E769A4C8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  if (error)
  {
    *error = v9[5];
  }

  v5 = v9[5] == 0;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __53__MRCoreUtilsPairingSession_deleteIdentityWithError___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(v2 + 40))
  {
    __53__MRCoreUtilsPairingSession_deleteIdentityWithError___block_invoke_cold_1(v2);
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 40) + 8) + 40);
      v12 = 138543362;
      v13 = v4;
      v5 = "[CryptoPairingSession(CoreUtils)] Error initializing pairing session during identity deletion. %{public}@";
LABEL_9:
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, v5, &v12, 0xCu);
    }
  }

  else
  {
    v6 = MSVWeakLinkSymbol();
    v7 = v6(*(*(a1 + 32) + 40));
    if (!v7)
    {
      return;
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:0];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(*(a1 + 40) + 8) + 40);
      v12 = 138543362;
      v13 = v11;
      v5 = "[CryptoPairingSession(CoreUtils)] Error deleting identity. %{public}@";
      goto LABEL_9;
    }
  }
}

- (void)openInState:(unint64_t)state
{
  v17 = *MEMORY[0x1E69E9840];
  self->_hasExchangedMessage = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__19;
  queue = self->_queue;
  v13 = __Block_byref_object_dispose__19;
  v14 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MRCoreUtilsPairingSession_openInState___block_invoke;
  block[3] = &unk_1E769EE88;
  block[4] = self;
  block[5] = &v9;
  block[6] = state;
  dispatch_sync(queue, block);
  if (v10[5])
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v10[5];
      *buf = 138543362;
      v16 = v7;
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Error initializing pairing session. %{public}@", buf, 0xCu);
    }

    [(MRCoreUtilsPairingSession *)self _handlePairingCompleteWithError:?];
  }

  else
  {
    self->_state = state;
    if (![(MRCryptoPairingSession *)self role])
    {
      [(MRCoreUtilsPairingSession *)self handlePairingExchangeData:0 completion:&__block_literal_global_45];
    }
  }

  _Block_object_dispose(&v9, 8);
}

void __41__MRCoreUtilsPairingSession_openInState___block_invoke_15(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Failed to begin pairing exchange. %{public}@", &v4, 0xCu);
    }
  }
}

- (BOOL)shouldAutoRetryPairingExchange:(id)exchange
{
  device = [(MRCryptoPairingSession *)self device];
  supportsSystemPairing = [device supportsSystemPairing];

  return supportsSystemPairing ^ 1;
}

- (id)initializePairingSession:(PairingSessionPrivate *)session
{
  v4 = MSVWeakLinkSymbol();
  v4(session, @"com.apple.MediaRemote.pairing", 1212434788, @"Media Remote Pairing Identity", @"Media Remote Pairing Identity", 1212436594, @"Paired TV Remote Peer", @"Paired TV Remote Peer", 0);
  return 0;
}

- (id)addPeer
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    device = [(MRCryptoPairingSession *)self device];
    *buf = 138412290;
    v22 = device;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Pairing device %@...", buf, 0xCu);
  }

  device2 = [(MRCryptoPairingSession *)self device];

  if (!device2)
  {
    v8 = @"Cannot add peer, No device available";
    goto LABEL_9;
  }

  if (!self->_pairingSession)
  {
    v8 = @"Cannot update peer, No pairing session available";
    goto LABEL_9;
  }

  v20 = 0;
  v19 = 0;
  v6 = MSVWeakLinkSymbol();
  v7 = v6(self->_pairingSession, &v20, &v19);
  if (!v7)
  {
    v8 = @"Cannot add peer, No peer Identifier available";
LABEL_9:
    v9 = MRCreateCryptoError(v8);
    goto LABEL_10;
  }

  v11 = v7;
  extendedPeerInfo = [(MRCoreUtilsPairingSession *)self extendedPeerInfo];
  v13 = MSVWeakLinkSymbol();
  v14 = v13(self->_pairingSession, v11, v20, extendedPeerInfo);
  v19 = v14;
  if (!v14)
  {
    goto LABEL_20;
  }

  if (v14 != -25299)
  {
    goto LABEL_19;
  }

  v15 = _MRLogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = v11;
    _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "Duplicate record found for identifier %s dumping pairing", buf, 0xCu);
  }

  removePeer = [(MRCoreUtilsPairingSession *)self removePeer];
  if (removePeer)
  {
    goto LABEL_21;
  }

  v17 = MSVWeakLinkSymbol();
  v19 = v17(self->_pairingSession, v11, v20, extendedPeerInfo);
  if (v19)
  {
LABEL_19:
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    removePeer = [v18 initWithDomain:*MEMORY[0x1E696A768] code:v19 userInfo:0];
  }

  else
  {
LABEL_20:
    removePeer = 0;
  }

LABEL_21:
  free(v11);
  v9 = removePeer;

LABEL_10:

  return v9;
}

- (id)removePeer
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    device = [(MRCryptoPairingSession *)self device];
    v15 = 138412290;
    v16 = device;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Unpairing device %@", &v15, 0xCu);
  }

  device2 = [(MRCryptoPairingSession *)self device];

  if (!device2)
  {
    v12 = @"Cannot remove peer, No device available";
LABEL_10:
    v13 = MRCreateCryptoError(v12);
    goto LABEL_15;
  }

  if (!self->_pairingSession)
  {
    v12 = @"Cannot update peer, No pairing session available";
    goto LABEL_10;
  }

  peerIdentifier = [(MRCoreUtilsPairingSession *)self peerIdentifier];
  if (peerIdentifier)
  {
    v7 = MSVWeakLinkSymbol();
    v8 = v7(self->_pairingSession, [peerIdentifier UTF8String], objc_msgSend(peerIdentifier, "length"));
    if (!v8)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v9 = v8;
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = [v10 initWithDomain:*MEMORY[0x1E696A768] code:v9 userInfo:0];
  }

  else
  {
    v11 = MRCreateCryptoError(@"Could not find peer");
  }

  v13 = v11;
LABEL_14:

LABEL_15:

  return v13;
}

- (id)updatePeer
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    device = [(MRCryptoPairingSession *)self device];
    v16 = 138412290;
    v17 = device;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Updating Peer %@", &v16, 0xCu);
  }

  device2 = [(MRCryptoPairingSession *)self device];

  if (!device2)
  {
    v8 = @"Cannot update peer, No device available";
LABEL_10:
    v7 = MRCreateCryptoError(v8);
    goto LABEL_11;
  }

  if (!self->_pairingSession)
  {
    v8 = @"Cannot update peer, No pairing session available";
    goto LABEL_10;
  }

  peerIdentifier = [(MRCoreUtilsPairingSession *)self peerIdentifier];
  if (peerIdentifier)
  {
    extendedPeerInfo = [(MRCoreUtilsPairingSession *)self extendedPeerInfo];
    v11 = MSVWeakLinkSymbol();
    v12 = v11(self->_pairingSession, [peerIdentifier UTF8String], objc_msgSend(peerIdentifier, "length"), extendedPeerInfo);
    if (v12)
    {
      v13 = v12;
      v14 = _MRLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 67109120;
        LODWORD(v17) = v13;
        _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Error updating peer (OSStatus = %d)", &v16, 8u);
      }

      v15 = objc_alloc(MEMORY[0x1E696ABC0]);
      v7 = [v15 initWithDomain:*MEMORY[0x1E696A768] code:v13 userInfo:0];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = MRCreateCryptoError(@"Could not find peer");
  }

LABEL_11:

  return v7;
}

- (NSString)peerIdentifier
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = 0;
  device = [(MRCryptoPairingSession *)self device];

  if (device)
  {
    if (self->_pairingSession)
    {
      v13 = 0;
      v12 = 0;
      v4 = MSVWeakLinkSymbol();
      v5 = v4(self->_pairingSession, &v13, &v12);
      if (v5)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
        v7 = v15[5];
        v15[5] = v6;

        free(v5);
      }
    }

    if (!v15[5])
    {
      mediaRemotePairedDevices = [(MRCoreUtilsPairingSession *)self mediaRemotePairedDevices];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __43__MRCoreUtilsPairingSession_peerIdentifier__block_invoke;
      v11[3] = &unk_1E769EEB0;
      v11[4] = self;
      v11[5] = &v14;
      [mediaRemotePairedDevices enumerateKeysAndObjectsUsingBlock:v11];
    }
  }

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __43__MRCoreUtilsPairingSession_peerIdentifier__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = [v8 device];
  v11 = [v10 identifier];
  v12 = [v9 identifier];

  LODWORD(v9) = objc_msgSend_isEqualToString_(v11);
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)setPairingFlags:(unsigned int)flags
{
  self->_pairingFlags = flags;
  v4 = MSVWeakLinkSymbol();
  pairingSession = self->_pairingSession;
  pairingFlags = self->_pairingFlags;

  v4(pairingSession, pairingFlags);
}

- (MRDeviceInfo)pairedPeerDevice
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_pairingSession)
  {
    selfCopy = self;
    v24 = 0;
    v3 = MSVWeakLinkSymbol();
    v4 = v3(selfCopy->_pairingSession, &v24);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v19 = *v21;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          v9 = [MEMORY[0x1E696AEC0] stringWithCString:"info" encoding:4];
          v10 = [v8 objectForKey:v9];

          v11 = [v10 objectForKey:@"MediaRemote_PeerIdentifier"];
          v12 = selfCopy;
          device = [(MRCryptoPairingSession *)selfCopy device];
          identifier = [device identifier];
          isEqualToString = objc_msgSend_isEqualToString_(identifier);

          if (isEqualToString)
          {
            v16 = [(MRCoreUtilsPairingSession *)v12 _createPeerDeviceFromPeer:v8];

            goto LABEL_12;
          }

          selfCopy = v12;
        }

        v6 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_12:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (MRDeviceInfo)_createPeerDeviceFromPeer:(uint64_t)peer
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (peer && v3)
  {
    v5 = objc_alloc_init(MRDeviceInfo);
    v6 = [v4 objectForKey:@"identifier"];
    [(MRDeviceInfo *)v5 setIdentifier:v6];
  }

  return v5;
}

- (NSArray)pairedPeerDevices
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_pairingSession)
  {
    v17 = 0;
    v4 = MSVWeakLinkSymbol();
    v5 = v4(self->_pairingSession, &v17);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(MRCoreUtilsPairingSession *)self _createPeerDeviceFromPeer:?];
          [v3 addObject:{v11, v13}];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  return v3;
}

- (NSMutableDictionary)mediaRemotePairedDevices
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_pairingSession)
  {
    v23 = 0;
    v3 = MSVWeakLinkSymbol();
    v4 = v3(self->_pairingSession, &v23);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = v5;
    v7 = *v20;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v10 = [(MRCoreUtilsPairingSession *)self _createDeviceFromPeer:v9];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 objectForKey:@"identifier"];
          [v18 setObject:v11 forKey:v12];
LABEL_14:

          goto LABEL_15;
        }

        v13 = _MRLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Found empty extended info entry, removing it", buf, 2u);
        }

        v11 = [v9 objectForKey:@"identifier"];
        v14 = MSVWeakLinkSymbol();
        v23 = v14(self->_pairingSession, [v11 UTF8String], objc_msgSend(v11, "length"));
        if (v23)
        {
          v12 = _MRLogForCategory(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v25 = v23;
            _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Could not delete empty entry with status %lu", buf, 0xCu);
          }

          goto LABEL_14;
        }

LABEL_15:

        ++v8;
      }

      while (v6 != v8);
      v15 = [obj countByEnumeratingWithState:&v19 objects:v26 count:16];
      v6 = v15;
      if (!v15)
      {
LABEL_19:

        break;
      }
    }
  }

  return v18;
}

- (MRDeviceInfo)_createDeviceFromPeer:(uint64_t)peer
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (peer && v3)
  {
    v6 = [v3 objectForKey:@"info"];
    v7 = [v6 objectForKey:@"MediaRemote_PeerIdentifier"];
    v8 = [v6 objectForKey:@"MediaRemote_PeerName"];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v5 = 0;
    }

    else
    {
      v5 = objc_alloc_init(MRDeviceInfo);
      [(MRDeviceInfo *)v5 setIdentifier:v7];
      [(MRDeviceInfo *)v5 setName:v9];
    }
  }

  return v5;
}

- (uint64_t)_promptForSetupCodeWithDelay:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = a2;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Requesting delegate to prompt for setup code with delay = %f", buf, 0xCu);
    }

    delegate = [v3 delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_initWeak(buf, v3);
      delegate2 = [v3 delegate];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __58__MRCoreUtilsPairingSession__promptForSetupCodeWithDelay___block_invoke;
      v10[3] = &unk_1E769EED8;
      v12 = a2;
      v9 = v3;
      v11 = v9;
      [delegate2 pairingSession:v9 promptForSetupCodeWithDelay:v10 completion:a2];

      objc_destroyWeak(buf);
      return 0;
    }

    else
    {
      return 4294960582;
    }
  }

  return result;
}

void __55__MRCoreUtilsPairingSession__delegateDidEnterPasscode___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Failed to resume pairing process after setting setup code. %{public}@", &v4, 0xCu);
    }
  }
}

void __57__MRCoreUtilsPairingSession__handleSetupExchangeComplete__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 136);
  if (v2 != 3)
  {
    if (v2 != 2)
    {
      return;
    }

    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Exchange complete. Proceeding to verify step.", buf, 2u);
    }

    v4 = [*(a1 + 32) addPeer];
    if (v4)
    {
      v5 = _MRLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Failed to record successfully paired peer", buf, 2u);
      }
    }

    *(*(a1 + 32) + 136) = 3;
    v6 = [(MRCoreUtilsPairingSession *)*(a1 + 32) _onQueueInitializePairingSessionWithState:?];

    if (v6)
    {
      v7 = _MRLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = v6;
        _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Error initializing verify session. %{public}@", buf, 0xCu);
      }

LABEL_12:

      *(*(a1 + 32) + 136) = 0;
      v8 = *(a1 + 32);
      if (v8)
      {
        [(MRCoreUtilsPairingSession *)v8 _handlePairingCompleteWithError:v6];
      }

      goto LABEL_19;
    }

    if (![*(a1 + 32) role])
    {
      v11 = *(a1 + 32);
      v15 = 0;
      v7 = [(MRCoreUtilsPairingSession *)v11 _onQueuePerformPairingExchangeWithInputData:&v15 error:?];
      v12 = v15;
      if (v12)
      {
        v6 = v12;
        v13 = _MRLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v6;
          _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Failed to prepare data for verify exchange. %@", buf, 0xCu);
        }

        goto LABEL_12;
      }

      if (v7)
      {
        v14 = [*(a1 + 32) delegate];
        [v14 pairingSession:*(a1 + 32) didPrepareExchangeData:v7];
      }
    }

    v6 = 0;
LABEL_19:

    return;
  }

  v9 = _MRLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Verify complete. Deriving encryption keys.", buf, 2u);
  }

  [(MRCoreUtilsPairingSession *)*(a1 + 32) _onQueueDeriveEncryptionKeys];
  v10 = [*(a1 + 32) updatePeer];
}

void __66__MRCoreUtilsPairingSession_handlePairingExchangeData_completion___block_invoke(uint64_t *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v17 = 0;
  v4 = [(MRCoreUtilsPairingSession *)v2 _onQueuePerformPairingExchangeWithInputData:v3 error:&v17];
  v5 = v17;
  v6 = [v5 domain];
  if (!objc_msgSend_isEqualToString_(v6))
  {
    goto LABEL_12;
  }

  v7 = [v5 code];

  if (v7 == -6727)
  {
    v8 = [a1[4] removePeer];
    if ([a1[4] shouldAutoRetryPairingExchange:v5])
    {
      *(a1[4] + 128) = 0;
      *(a1[4] + 136) = 2;
      v9 = [(MRCoreUtilsPairingSession *)a1[4] _onQueueInitializePairingSessionWithState:?];

      if (v9)
      {
        goto LABEL_6;
      }

      v12 = a1[4];
      v13 = a1[5];
      v16 = 0;
      v14 = [(MRCoreUtilsPairingSession *)v12 _onQueuePerformPairingExchangeWithInputData:v13 error:&v16];
      v5 = v16;
      v6 = v4;
      v4 = v14;
LABEL_12:

      if (v5)
      {
        goto LABEL_5;
      }

LABEL_13:
      if (v4)
      {
        v15 = [a1[4] delegate];
        [v15 pairingSession:a1[4] didPrepareExchangeData:v4];

        v9 = 0;
        *(a1[4] + 128) = 1;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_16;
    }
  }

  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  v9 = v5;
LABEL_6:
  v10 = _MRLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v9;
    _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Failed to handle pairing exchange. %{public}@", buf, 0xCu);
  }

  v11 = a1[4];
  if (v11)
  {
    [(MRCoreUtilsPairingSession *)v11 _handlePairingCompleteWithError:v9];
  }

LABEL_16:
  (*(a1[6] + 16))();
}

- (id)_onQueuePerformPairingExchangeWithInputData:(void *)data error:
{
  v5 = a2;
  if (self)
  {
    v16 = 0;
    v14 = 0;
    v15 = 0;
    if (*(self + 40))
    {
      v6 = MSVWeakLinkSymbol();
      v7 = v6(*(self + 40), [v5 bytes], objc_msgSend(v5, "length"), &v15, &v14, &v16);
      if (v7 == -6771 || v7 == 0)
      {
        if (v14)
        {
          v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v15 length:?];
        }

        else
        {
          v9 = 0;
        }

        if (v16)
        {
          [(MRCoreUtilsPairingSession *)self _handleSetupExchangeComplete];
        }

        v12 = 0;
        if (!data)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v10 = v7;
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = [v11 initWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:0];
    }

    else
    {
      v12 = MRCreateCryptoError(@"No pairing session");
    }

    v9 = 0;
    if (!data)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v12 = v12;
    *data = v12;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (id)_onQueueInitializePairingSessionWithState:(uint64_t)state
{
  v30 = *MEMORY[0x1E69E9840];
  if (state)
  {
    role = [state role];
    if (a2 == 4)
    {
      v7 = 5;
      if (role == 1)
      {
        v10 = 6;
      }

      else
      {
        v10 = 0;
      }

      v11 = role == 0;
      if (role)
      {
        v12 = role == 1;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v5 = role == 1;
      if (role == 1)
      {
        v6 = 4;
      }

      else
      {
        v6 = 0;
      }

      if (role)
      {
        v7 = v6;
      }

      else
      {
        v5 = 0;
        v7 = 3;
      }

      v8 = 1;
      if (role == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      if (role)
      {
        v10 = v9;
      }

      else
      {
        v8 = 1;
        v10 = 1;
      }

      if (a2 != 2)
      {
        v8 = 0;
        v10 = 0;
      }

      v11 = a2 == 3;
      if (a2 == 3)
      {
        v12 = v5;
      }

      else
      {
        v12 = v8;
      }
    }

    if (v11)
    {
      v13 = v7;
    }

    else
    {
      v13 = v10;
    }

    v14 = *(state + 40);
    if (v14)
    {
      CFRelease(v14);
      *(state + 40) = 0;
    }

    v15 = MSVWeakLinkSymbol();
    v16 = v15(state + 40, state + 48, v13);
    if (v16)
    {
      v17 = v16;
      v18 = _MRLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 67109120;
        LODWORD(v29) = v17;
        _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Error initializing pairing session (OSStatus = %d)", &v28, 8u);
      }

      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v17 userInfo:0];
    }

    else
    {
      v19 = [state initializePairingSession:*(state + 40)];
      if (v12)
      {
        v20 = _MRLogForCategory(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(state + 132);
          v28 = 67109120;
          LODWORD(v29) = v21;
          _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Pairing flags are: %u", &v28, 8u);
        }

        device = [state device];
        if (MRPairedDeviceSupportsACL(device))
        {
          v23 = *(state + 132);

          if ((v23 & 4) != 0)
          {
            v24 = _MRLogForCategory(0);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              device2 = [state device];
              v28 = 138543362;
              v29 = device2;
              _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Enabling ACL for device: %{public}@", &v28, 0xCu);
            }

            v26 = MSVWeakLinkSymbol();
            v26(*(state + 40), &unk_1F1577B18);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)handlePairingFailureWithStatus:(int)status
{
  if ([(MRCoreUtilsPairingSession *)self shouldAutoRetry])
  {
    if (self)
    {
      removePeer = [(MRCoreUtilsPairingSession *)self removePeer];

      [(MRCoreUtilsPairingSession *)self openInState:2];
    }
  }

  else
  {
    self->_state = 1;
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:status userInfo:0];
    [(MRCoreUtilsPairingSession *)self _handlePairingCompleteWithError:v6];
  }
}

- (uint64_t)shouldAutoRetry
{
  if (!self || self[17] != 3)
  {
    return 0;
  }

  device = [self device];
  v2 = [device supportsSystemPairing] ^ 1;

  return v2;
}

void __41__MRCoreUtilsPairingSession_openInState___block_invoke(uint64_t a1)
{
  v1 = [(MRCoreUtilsPairingSession *)*(a1 + 32) _onQueueInitializePairingSessionWithState:?];
  OUTLINED_FUNCTION_0_16(v1);
}

- (id)extendedPeerInfo
{
  if (self)
  {
    device = [self device];

    if (device)
    {
      device = objc_alloc_init(MEMORY[0x1E695DF90]);
      device2 = [self device];
      name = [device2 name];

      if (name)
      {
        [device setObject:name forKey:@"MediaRemote_PeerName"];
      }

      device3 = [self device];
      identifier = [device3 identifier];

      if (identifier)
      {
        [device setObject:identifier forKey:@"MediaRemote_PeerIdentifier"];
      }
    }
  }

  else
  {
    device = 0;
  }

  return device;
}

- (id)_generateSetupCodeWithMaximumLength:(uint64_t)length
{
  if (length)
  {
    passcode = [*(length + 32) passcode];
    passcode2 = [*(length + 32) passcode];
    if ([passcode2 length] >= a2)
    {
      v7 = [passcode substringToIndex:a2];
    }

    else
    {
      passcode3 = [*(length + 32) passcode];
      v7 = [passcode substringToIndex:{objc_msgSend(passcode3, "length")}];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_displaySetupCode:(uint64_t)code
{
  v3 = a2;
  if (code)
  {
    delegate = [code delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [code delegate];
      [delegate2 pairingSession:code showSetupCode:v3];

      code = 0;
    }

    else
    {
      code = 4294960582;
    }
  }

  return code;
}

- (void)_hideSetupCode
{
  if (self)
  {
    delegate = [self delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      delegate2 = [self delegate];
      [delegate2 pairingSessionHideSetupCode:self];
    }
  }
}

void __58__MRCoreUtilsPairingSession__promptForSetupCodeWithDelay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(a1 + 40) <= 0.0)
  {
    if (v3)
    {
LABEL_11:
      [(MRCoreUtilsPairingSession *)*(a1 + 32) _delegateDidEnterPasscode:v8];
      v6 = 0;
      goto LABEL_8;
    }

    v4 = @"Pairing Session NULL setup code";
  }

  else
  {
    v4 = @"Pairing Session Delay";
  }

  v5 = MRCreateCryptoError(v4);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    [(MRCoreUtilsPairingSession *)v7 _handlePairingCompleteWithError:v6];
  }

LABEL_8:
}

- (void)_delegateDidEnterPasscode:(void *)passcode
{
  v7 = a2;
  if (passcode)
  {
    if (!passcode[5])
    {
      v6 = MRCreateCryptoError(@"Pairing Session is not available");
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    v3 = MSVWeakLinkSymbol();
    v4 = v3(passcode[5], [v7 UTF8String], -1);
    if (v4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set setup code on pairing session (OSStatus = %d)", v4];
      v6 = MRCreateCryptoError(v5);

      if (!v6)
      {
        goto LABEL_9;
      }

LABEL_7:
      [(MRCoreUtilsPairingSession *)passcode _handlePairingCompleteWithError:v6];

      goto LABEL_9;
    }

    [passcode handlePairingExchangeData:0 completion:&__block_literal_global_90];
  }

LABEL_9:
}

- (void)_handlePairingCompleteWithError:(void *)error
{
  v6 = a2;
  if (error)
  {
    delegate = [error delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [error delegate];
      [delegate2 pairingSession:error didCompleteExchangeWithError:v6];
    }
  }
}

- (void)_handleSetupExchangeComplete
{
  if (self)
  {
    v1 = *(self + 120);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__MRCoreUtilsPairingSession__handleSetupExchangeComplete__block_invoke;
    block[3] = &unk_1E769A228;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

- (void)_onQueueDeriveEncryptionKeys
{
  v43 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32];
    v40 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:8];
    v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32];
    v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:8];
    role = [self role];
    v38 = v4;
    v39 = v3;
    if (role == 1)
    {
      v6 = [MEMORY[0x1E695DEF0] dataWithBytes:"MediaRemote-Write-Encryption-Key" length:32];
      v7 = MEMORY[0x1E695DEF0];
      v8 = "MediaRemote-Read-Encryption-Key";
      v9 = 31;
    }

    else
    {
      if (role)
      {
        v10 = 0;
        v6 = 0;
LABEL_8:
        v11 = MSVWeakLinkSymbol();
        v12 = v11(self[5], "MediaRemote-Salt", 16, [v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v2, "length"), objc_msgSend(v2, "mutableBytes"));
        if (v12)
        {
          v21 = v12;
          v22 = _MRLogForCategory(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v42 = v21;
            OUTLINED_FUNCTION_1_15(&dword_1A2860000, v23, v24, "[CryptoPairingSession(CoreUtils)] Failed to derive input key (OSStatus = %d)", v25, v26, v27, v28, v37, v4, v3, v40);
          }

          v17 = v38;
          v3 = v39;
        }

        else
        {
          mutableBytes = [v40 mutableBytes];
          for (i = [v40 length]; i; --i)
          {
            *mutableBytes++ = 0;
          }

          v15 = MSVWeakLinkSymbol();
          v16 = v15(self[5], "MediaRemote-Salt", 16, [v10 bytes], objc_msgSend(v10, "length"), objc_msgSend(v3, "length"), objc_msgSend(v3, "mutableBytes"));
          if (!v16)
          {
            v17 = v38;
            mutableBytes2 = [v38 mutableBytes];
            for (j = [v38 length]; j; --j)
            {
              *mutableBytes2++ = 0;
            }

            v20 = _MRLogForCategory(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Successfully derived encryption keys.", buf, 2u);
            }

            [self setInputKey:v2];
            [self setInputNonce:v40];
            [self setOutputKey:v3];
            [self setOutputNonce:v38];
            self[17] = 5;
            [(MRCoreUtilsPairingSession *)self _handlePairingCompleteWithError:?];
            goto LABEL_21;
          }

          v21 = v16;
          v22 = _MRLogForCategory(0);
          v17 = v38;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v42 = v21;
            OUTLINED_FUNCTION_1_15(&dword_1A2860000, v31, v32, "[CryptoPairingSession(CoreUtils)] Failed to derive output key (OSStatus = %d)", v33, v34, v35, v36, v37, v38, v3, v40);
          }
        }

        self[17] = 0;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = [v29 initWithDomain:*MEMORY[0x1E696A768] code:v21 userInfo:0];
        [(MRCoreUtilsPairingSession *)self _handlePairingCompleteWithError:v30];

LABEL_21:
        return;
      }

      v6 = [MEMORY[0x1E695DEF0] dataWithBytes:"MediaRemote-Read-Encryption-Key" length:31];
      v7 = MEMORY[0x1E695DEF0];
      v8 = "MediaRemote-Write-Encryption-Key";
      v9 = 32;
    }

    v10 = [v7 dataWithBytes:v8 length:v9];
    goto LABEL_8;
  }
}

void __53__MRCoreUtilsPairingSession_deleteIdentityWithError___block_invoke_cold_1(uint64_t a1)
{
  v1 = [(MRCoreUtilsPairingSession *)a1 _onQueueInitializePairingSessionWithState:?];
  OUTLINED_FUNCTION_0_16(v1);
}

@end