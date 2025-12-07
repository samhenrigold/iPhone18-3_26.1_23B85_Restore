@interface CBServer
- (CBServer)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_handleConnectionInvalidated:(id)invalidated;
- (void)_invalidate;
- (void)_startIfNeeded;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)pairingGenerateOOBDataForPeer:(id)peer completionHandler:(id)handler;
- (void)pairingSetOOBEnabled:(BOOL)enabled peer:(id)peer completionHandler:(id)handler;
- (void)peripheralManager:(id)manager didOpenL2CAPChannel:(id)channel error:(id)error;
- (void)peripheralManager:(id)manager didPublishL2CAPChannel:(unsigned __int16)channel error:(id)error;
- (void)peripheralManager:(id)manager didUnpublishL2CAPChannel:(unsigned __int16)channel error:(id)error;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)setLabel:(id)label;
@end

@implementation CBServer

- (CBServer)init
{
  v6.receiver = self;
  v6.super_class = CBServer;
  v2 = [(CBServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_CBServer;
    v4 = v3;
  }

  return v3;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    selfCopy = self;
    LogCategory_Remove();
    self = selfCopy;
    selfCopy->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CBServer;
  [(CBServer *)&v4 dealloc];
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EBE51AA8;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CBServer_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E811E440;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __36__CBServer__activateWithCompletion___block_invoke;
  v14[3] = &unk_1E811D350;
  v16 = &v17;
  v14[4] = self;
  v5 = completionCopy;
  v15 = v5;
  v6 = MEMORY[0x1C68DF720](v14);
  if (self->_activateCalled)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960575, "activate already called");
    v12 = LABEL_13:;
    v13 = v18[5];
    v18[5] = v12;

    goto LABEL_9;
  }

  if (self->_invalidateCalled)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294896148, "activate after invalidate");
    goto LABEL_13;
  }

  self->_activateCalled = 1;
  v7 = [[CBPeripheralManager alloc] initWithDelegate:self queue:self->_dispatchQueue];
  peripheralManager = self->_peripheralManager;
  self->_peripheralManager = v7;

  if (!self->_peripheralManager)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "Create CBPeripheralManager failed");
    goto LABEL_13;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v10 = MEMORY[0x1C68DF720](v5);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = v10;

  [(CBServer *)self _startIfNeeded];
LABEL_9:
  v6[2](v6);

  _Block_object_dispose(&v17, 8);
}

void *__36__CBServer__activateWithCompletion___block_invoke(void *result)
{
  if (*(*(result[6] + 8) + 40))
  {
    v1 = **(result[4] + 48);
    if (v1 <= 90)
    {
      v2 = result;
      if (v1 != -1 || (v3 = _LogCategory_Initialize(), result = v2, v3))
      {
        v5 = CUPrintNSError();
        LogPrintF_safe();

        result = v2;
      }
    }

    v4 = *(result[5] + 16);

    return v4();
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__CBServer_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v4 = MEMORY[0x1C68DF720](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v4)
    {
      v6 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960573, "Invalidated");
      (v4)[2](v4, v6);
    }

    if (_os_feature_enabled_impl() && self->_bleListenPSM == CBAssignedL2CAPPSMForSoftwareUpdate && self->_tempLTK)
    {
      sharedPairingAgent = [(CBManager *)self->_peripheralManager sharedPairingAgent];
      v8 = sharedPairingAgent;
      if (sharedPairingAgent)
      {
        [sharedPairingAgent removeGlobalTemporaryLTK];
      }
    }

    if (self->_bleListeningPSM)
    {
      [(CBPeripheralManager *)self->_peripheralManager unpublishL2CAPChannel:?];
      self->_bleListeningPSM = 0;
    }

    [(CBPeripheralManager *)self->_peripheralManager setDelegate:0];
    peripheralManager = self->_peripheralManager;
    self->_peripheralManager = 0;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = self->_connections;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v21 + 1) + 8 * i) invalidate];
        }

        v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    [(NSMutableSet *)self->_connections removeAllObjects];
    v15 = MEMORY[0x1C68DF720](self->_invalidationHandler);
    acceptHandler = self->_acceptHandler;
    self->_acceptHandler = 0;

    bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
    self->_bluetoothStateChangedHandler = 0;

    configChangedHandler = self->_configChangedHandler;
    self->_configChangedHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (v15)
    {
      v15[2](v15);
    }

    v20 = self->_ucat->var0;
    if (v20 <= 30 && (v20 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (void)_startIfNeeded
{
  var0 = self->_ucat->var0;
  if (var0 <= 9 && (var0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  if (!self->_bleListeningPSM && [(CBManager *)self->_peripheralManager state]== CBManagerStatePoweredOn)
  {
    if (_os_feature_enabled_impl() && self->_bleListenPSM == CBAssignedL2CAPPSMForSoftwareUpdate && self->_tempLTK)
    {
      sharedPairingAgent = [(CBManager *)self->_peripheralManager sharedPairingAgent];
      v5 = sharedPairingAgent;
      if (sharedPairingAgent)
      {
        delegate = [sharedPairingAgent delegate];

        if (!delegate)
        {
          [v5 setDelegate:self];
        }

        [v5 setGlobalTemporaryLTK:self->_tempLTK useCase:720897];
      }
    }

    peripheralManager = self->_peripheralManager;
    bleListenPSM = self->_bleListenPSM;

    [(CBPeripheralManager *)peripheralManager publishL2CAPChannel:bleListenPSM requiresEncryption:0];
  }
}

- (void)_handleConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  l2capChannel = [invalidatedCopy l2capChannel];
  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    v6 = [l2capChannel PSM];
    peer = [l2capChannel peer];
    [peer identifier];
    v9 = v8 = v6;
    LogPrintF_safe();
  }

  [(NSMutableSet *)self->_connections removeObject:invalidatedCopy, v8, v9];
}

- (void)pairingGenerateOOBDataForPeer:(id)peer completionHandler:(id)handler
{
  peerCopy = peer;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__6;
  v49 = __Block_byref_object_dispose__6;
  v50 = 0;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __60__CBServer_pairingGenerateOOBDataForPeer_completionHandler___block_invoke;
  v41[3] = &unk_1E8122320;
  v44 = &v45;
  v41[4] = self;
  v8 = peerCopy;
  v42 = v8;
  v9 = handlerCopy;
  v43 = v9;
  v16 = MEMORY[0x1C68DF720](v41);
  if (self->_invalidateCalled)
  {
    v35 = CBErrorF(-71148, "Use after invalidate", v10, v11, v12, v13, v14, v15, v39);
    v24 = v46[5];
    v46[5] = v35;
  }

  else
  {
    sharedPairingAgent = [(CBManager *)self->_peripheralManager sharedPairingAgent];
    v24 = sharedPairingAgent;
    if (sharedPairingAgent)
    {
      delegate = [sharedPairingAgent delegate];

      if (!delegate)
      {
        [v24 setDelegate:self];
      }

      v32 = [v24 retrieveOOBDataForPeer:v8];
      if (v32)
      {
        var0 = self->_ucat->var0;
        if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
        {
          identifier = [v8 identifier];
          v40 = CUPrintNSDataHex();
          LogPrintF_safe();
        }

        (*(v9 + 2))(v9, v32, 0);
      }

      else
      {
        v37 = CBErrorF(-6700, "Generate OOB data failed", v26, v27, v28, v29, v30, v31, v39);
        v38 = v46[5];
        v46[5] = v37;
      }
    }

    else
    {
      v36 = CBErrorF(-6705, "No pairing agent", v18, v19, v20, v21, v22, v23, v39);
      v32 = v46[5];
      v46[5] = v36;
    }
  }

  v16[2](v16);
  _Block_object_dispose(&v45, 8);
}

uint64_t __60__CBServer_pairingGenerateOOBDataForPeer_completionHandler___block_invoke(uint64_t result)
{
  if (*(*(*(result + 56) + 8) + 40))
  {
    v1 = result;
    v2 = **(*(result + 32) + 48);
    if (v2 <= 90 && (v2 != -1 || _LogCategory_Initialize()))
    {
      v3 = [*(v1 + 40) identifier];
      v5 = CUPrintNSError();
      LogPrintF_safe();
    }

    v4 = *(*(v1 + 48) + 16);

    return v4();
  }

  return result;
}

- (void)pairingSetOOBEnabled:(BOOL)enabled peer:(id)peer completionHandler:(id)handler
{
  peerCopy = peer;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__6;
  v43 = __Block_byref_object_dispose__6;
  v44 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __56__CBServer_pairingSetOOBEnabled_peer_completionHandler___block_invoke;
  v34[3] = &unk_1E8122348;
  v37 = &v39;
  v34[4] = self;
  enabledCopy = enabled;
  v10 = peerCopy;
  v35 = v10;
  v11 = handlerCopy;
  v36 = v11;
  v18 = MEMORY[0x1C68DF720](v34);
  if (self->_invalidateCalled)
  {
    v30 = CBErrorF(-71148, "Use after invalidate", v12, v13, v14, v15, v16, v17, v33);
    v26 = v40[5];
    v40[5] = v30;
  }

  else
  {
    sharedPairingAgent = [(CBManager *)self->_peripheralManager sharedPairingAgent];
    v26 = sharedPairingAgent;
    if (sharedPairingAgent)
    {
      delegate = [sharedPairingAgent delegate];

      if (!delegate)
      {
        [v26 setDelegate:self];
      }

      [v26 setOOBPairingEnabled:1 forPeer:v10];
      var0 = self->_ucat->var0;
      if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
      {
        identifier = [v10 identifier];
        LogPrintF_safe();
      }

      (*(v11 + 2))(v11, 0);
    }

    else
    {
      v31 = CBErrorF(-6705, "No pairing agent", v20, v21, v22, v23, v24, v25, v33);
      v32 = v40[5];
      v40[5] = v31;
    }
  }

  v18[2](v18);
  _Block_object_dispose(&v39, 8);
}

uint64_t __56__CBServer_pairingSetOOBEnabled_peer_completionHandler___block_invoke(uint64_t result)
{
  if (*(*(*(result + 56) + 8) + 40))
  {
    v1 = result;
    v2 = **(*(result + 32) + 48);
    if (v2 <= 90 && (v2 != -1 || _LogCategory_Initialize()))
    {
      v3 = [*(v1 + 40) identifier];
      v5 = CUPrintNSError();
      LogPrintF_safe();
    }

    v4 = *(*(v1 + 48) + 16);

    return v4();
  }

  return result;
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  v33 = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v26 = pairingCopy;
  identifier = [pairingCopy identifier];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = self->_connections;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        l2capChannel = [v16 l2capChannel];
        peer = [l2capChannel peer];
        identifier2 = [peer identifier];

        if ([identifier2 isEqual:identifier])
        {
          v22 = v26;
          v21 = agentCopy;
          v23 = passkeyCopy;
          [v16 pairingAgent:agentCopy peerDidRequestPairing:v26 type:type passkey:passkeyCopy];

          goto LABEL_13;
        }
      }

      v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  var0 = self->_ucat->var0;
  v22 = v26;
  v21 = agentCopy;
  v23 = passkeyCopy;
  if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_13:
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  v27 = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  pairingCopy = pairing;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v20 = pairingCopy;
  identifier = [pairingCopy identifier];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = self->_connections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        l2capChannel = [v13 l2capChannel];
        peer = [l2capChannel peer];
        identifier2 = [peer identifier];

        if ([identifier2 isEqual:identifier])
        {
          v19 = v20;
          v18 = agentCopy;
          [v13 pairingAgent:agentCopy peerDidCompletePairing:v20];

          goto LABEL_13;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  var0 = self->_ucat->var0;
  v19 = v20;
  v18 = agentCopy;
  if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_13:
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  v31 = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  pairingCopy = pairing;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v24 = pairingCopy;
  identifier = [pairingCopy identifier];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_connections;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        l2capChannel = [v15 l2capChannel];
        peer = [l2capChannel peer];
        identifier2 = [peer identifier];

        if ([identifier2 isEqual:identifier])
        {
          v21 = v24;
          v20 = agentCopy;
          [v15 pairingAgent:agentCopy peerDidCompletePairing:v24];

          v22 = errorCopy;
          goto LABEL_13;
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  var0 = self->_ucat->var0;
  v21 = v24;
  v20 = agentCopy;
  v22 = errorCopy;
  if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
  {
    v10 = CUPrintNSError();
    LogPrintF_safe();
LABEL_13:
  }
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  v27 = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  unpairCopy = unpair;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v20 = unpairCopy;
  identifier = [unpairCopy identifier];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = self->_connections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        l2capChannel = [v13 l2capChannel];
        peer = [l2capChannel peer];
        identifier2 = [peer identifier];

        if ([identifier2 isEqual:identifier])
        {
          v19 = v20;
          v18 = agentCopy;
          [v13 pairingAgent:agentCopy peerDidUnpair:v20];

          goto LABEL_13;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  var0 = self->_ucat->var0;
  v19 = v20;
  v18 = agentCopy;
  if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

LABEL_13:
}

- (void)peripheralManagerDidUpdateState:(id)state
{
  dispatchQueue = self->_dispatchQueue;
  stateCopy = state;
  dispatch_assert_queue_V2(dispatchQueue);
  state = [stateCopy state];

  var0 = self->_ucat->var0;
  if (var0 > 30 || var0 == -1 && !_LogCategory_Initialize())
  {
    if (state != 1)
    {
      goto LABEL_5;
    }

LABEL_10:
    self->_bleListeningPSM = 0;
    return;
  }

  LogPrintF_safe();
  if (state == 1)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (state == 5)
  {

    [(CBServer *)self _startIfNeeded];
  }
}

- (void)peripheralManager:(id)manager didPublishL2CAPChannel:(unsigned __int16)channel error:(id)error
{
  channelCopy = channel;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  var0 = self->_ucat->var0;
  if (errorCopy)
  {
    if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
    {
      v12 = CUPrintNSError();
      LogPrintF_safe();
    }
  }

  else if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  self->_bleListeningPSM = channelCopy;
  v8 = MEMORY[0x1C68DF720](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v8)
  {
    (v8)[2](v8, errorCopy);
  }

  else if (self->_bleListenPSM != channelCopy)
  {
    v10 = MEMORY[0x1C68DF720](self->_configChangedHandler);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10);
    }
  }
}

- (void)peripheralManager:(id)manager didUnpublishL2CAPChannel:(unsigned __int16)channel error:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    v7 = CUPrintNSError();
    LogPrintF_safe();
  }
}

- (void)peripheralManager:(id)manager didOpenL2CAPChannel:(id)channel error:(id)error
{
  channelCopy = channel;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (errorCopy)
  {
    [CBServer peripheralManager:errorCopy didOpenL2CAPChannel:? error:?];
  }

  else
  {
    v9 = channelCopy;
    var0 = self->_ucat->var0;
    if (v9)
    {
      if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
      {
        peer = [v9 peer];
        identifier = [peer identifier];
        v13 = [v9 PSM];
        CUPrintNSError();
        v27 = v26 = v13;
        v23 = identifier;
        LogPrintF_safe();
      }

      v14 = objc_alloc_init(CBConnection);
      [(CBConnection *)v14 setDispatchQueue:self->_dispatchQueue];
      [(CBConnection *)v14 setL2capChannel:v9];
      [(CBConnection *)v14 setServer:self];
      if (self->_label)
      {
        [(CBConnection *)v14 setLabel:?];
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __56__CBServer_peripheralManager_didOpenL2CAPChannel_error___block_invoke;
      v30[3] = &unk_1E811CF50;
      v30[4] = self;
      v30[5] = v14;
      [(CBConnection *)v14 setServerInvalidationHandler:v30, v23, v26, v27];
      v29 = 0;
      v15 = [(CBConnection *)v14 activateDirectAndReturnError:&v29];
      v16 = v29;
      if (v15)
      {
        connections = self->_connections;
        if (!connections)
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v19 = self->_connections;
          self->_connections = v18;

          connections = self->_connections;
        }

        [(NSMutableSet *)connections addObject:v14];
        v20 = MEMORY[0x1C68DF720](self->_acceptHandler);
        v21 = v20;
        if (v20)
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __56__CBServer_peripheralManager_didOpenL2CAPChannel_error___block_invoke_2;
          v28[3] = &unk_1E8120B60;
          v28[4] = self;
          v28[5] = v9;
          v28[6] = v14;
          (*(v20 + 16))(v20, v14, v28);
        }
      }

      else
      {
        v22 = self->_ucat->var0;
        if (v22 <= 90 && (v22 != -1 || _LogCategory_Initialize()))
        {
          v25 = CUPrintNSError();
          LogPrintF_safe();

          [(CBConnection *)v14 invalidate];
        }

        else
        {
          [(CBConnection *)v14 invalidate];
        }
      }
    }

    else
    {
      [CBServer peripheralManager:self->_ucat didOpenL2CAPChannel:&self->_ucat error:?];
    }
  }
}

uint64_t __56__CBServer_peripheralManager_didOpenL2CAPChannel_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = **(v5 + 48);
  if (v3)
  {
    v15 = v3;
    if (v6 <= 30)
    {
      if (v6 != -1 || (v10 = _LogCategory_Initialize(), v5 = *(a1 + 32), v10))
      {
        v7 = [*(a1 + 40) PSM];
        v8 = [*(a1 + 40) peer];
        [v8 identifier];
        v13 = v12 = v7;
        LogPrintF_safe();

        v5 = *(a1 + 32);
      }
    }

    [*(v5 + 24) removeObject:{*(a1 + 48), v12, v13}];
    v3 = [*(a1 + 48) invalidate];
    goto LABEL_10;
  }

  if (v6 <= 30)
  {
    v15 = 0;
    if (v6 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      [*(a1 + 40) PSM];
      v9 = [*(a1 + 40) peer];
      v14 = [v9 identifier];
      LogPrintF_safe();

LABEL_10:
      v4 = v15;
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)peripheralManager:(uint64_t)a1 didOpenL2CAPChannel:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 48);
  if (v2 <= 90 && (v2 != -1 || _LogCategory_Initialize()))
  {
    v3 = CUPrintNSError();
    LogPrintF_safe();
  }
}

- (uint64_t)peripheralManager:(uint64_t)result didOpenL2CAPChannel:(uint64_t)a2 error:(uint64_t *)a3 .cold.2(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

@end