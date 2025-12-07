@interface APCarSessionRequestHandler
- (APCarSessionRequestHandler)init;
- (void)_startAdvertisingCarPlayControlForUSB;
- (void)_startAdvertisingCarPlayControlForWiFiUUID:(id)d;
- (void)addCarPlayHelper:(OpaqueAPCarPlayHelperHelper *)helper;
- (void)cancelRequests;
- (void)checkCarPlayControlAdvertisingForUSB;
- (void)checkCarPlayControlAdvertisingForWiFiUUID:(id)d;
- (void)dealloc;
- (void)prepareForRemovingWiFiUUID:(id)d completion:(id)completion;
- (void)registerSessionRequestHandlerMachService;
- (void)removeCarPlayHelper:(OpaqueAPCarPlayHelperHelper *)helper;
- (void)startAdvertisingCarPlayControlForUSB;
- (void)startAdvertisingCarPlayControlForWiFiUUID:(id)d;
- (void)startSessionWithHost:(id)host requestIdentifier:(id)identifier completion:(id)completion;
- (void)stoppedSessionForHostIdentifier:(id)identifier;
@end

@implementation APCarSessionRequestHandler

- (void)checkCarPlayControlAdvertisingForUSB
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__APCarSessionRequestHandler_checkCarPlayControlAdvertisingForUSB__block_invoke;
  block[3] = &unk_278BC6E38;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__66__APCarSessionRequestHandler_checkCarPlayControlAdvertisingForUSB__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) wantsCarPlayControlAdvertisingForUSB];
  if (result)
  {
    if (gLogCategory_APBrowserCarSessionHelper <= 50)
    {
      if (gLogCategory_APBrowserCarSessionHelper != -1 || (result = _LogCategory_Initialize(), result))
      {
        __66__APCarSessionRequestHandler_checkCarPlayControlAdvertisingForUSB__block_invoke_cold_1(result, v3, v4);
      }
    }

    v5 = *(a1 + 32);

    return [v5 _startAdvertisingCarPlayControlForUSB];
  }

  return result;
}

- (APCarSessionRequestHandler)init
{
  v4.receiver = self;
  v4.super_class = APCarSessionRequestHandler;
  v2 = [(APCarSessionRequestHandler *)&v4 init];
  if (v2)
  {
    v2->_queue = dispatch_queue_create("com.apple.airplay.APCarSessionRequestHandler", 0);
    v2->_carPlayHelpers = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
  }

  return v2;
}

- (void)dealloc
{
  carPlayHelpers = self->_carPlayHelpers;
  if (carPlayHelpers)
  {
    CFRelease(carPlayHelpers);
    self->_carPlayHelpers = 0;
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v5.receiver = self;
  v5.super_class = APCarSessionRequestHandler;
  [(APCarSessionRequestHandler *)&v5 dealloc];
}

- (void)registerSessionRequestHandlerMachService
{
  selfCopy = self;
  if (gLogCategory_APBrowserCarSessionHelper <= 50)
  {
    if (gLogCategory_APBrowserCarSessionHelper != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(APCarSessionRequestHandler *)self registerSessionRequestHandlerMachService];
    }
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__5;
  v4 = getCARSessionRequestAgentClass_softClass;
  v10 = __Block_byref_object_dispose__5;
  v11 = getCARSessionRequestAgentClass_softClass;
  if (!getCARSessionRequestAgentClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getCARSessionRequestAgentClass_block_invoke;
    v5[3] = &unk_278BC7CE0;
    v5[4] = &v6;
    __getCARSessionRequestAgentClass_block_invoke(v5);
    v4 = v7[5];
  }

  _Block_object_dispose(&v6, 8);
  selfCopy->_agent = [[v4 alloc] initWithRequestHandler:selfCopy];
}

- (void)addCarPlayHelper:(OpaqueAPCarPlayHelperHelper *)helper
{
  if (self->_agent)
  {
    [APCarSessionRequestHandler addCarPlayHelper:];
  }

  else
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__APCarSessionRequestHandler_addCarPlayHelper___block_invoke;
    v4[3] = &unk_278BC72B0;
    v4[4] = self;
    v4[5] = helper;
    dispatch_sync(queue, v4);
  }
}

- (void)removeCarPlayHelper:(OpaqueAPCarPlayHelperHelper *)helper
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__APCarSessionRequestHandler_removeCarPlayHelper___block_invoke;
  v4[3] = &unk_278BC72B0;
  v4[4] = self;
  v4[5] = helper;
  dispatch_sync(queue, v4);
}

- (void)startSessionWithHost:(id)host requestIdentifier:(id)identifier completion:(id)completion
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__APCarSessionRequestHandler_startSessionWithHost_requestIdentifier_completion___block_invoke;
  block[3] = &unk_278BC71D0;
  block[4] = self;
  block[5] = host;
  block[6] = identifier;
  dispatch_sync(queue, block);
  if (completion)
  {
    (*(completion + 2))(completion, 1, 0);
  }
}

void __80__APCarSessionRequestHandler_startSessionWithHost_requestIdentifier_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__APCarSessionRequestHandler_startSessionWithHost_requestIdentifier_completion___block_invoke_3;
  v6[3] = &unk_278BC9B58;
  v8 = DerivedStorage;
  v9 = a2;
  v7 = *(a1 + 32);
  dispatch_sync(v5, v6);
}

uint64_t __80__APCarSessionRequestHandler_startSessionWithHost_requestIdentifier_completion___block_invoke_3(uint64_t result)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = *(result + 48);
  if (!*(v1 + 177))
  {
    return result;
  }

  v2 = result;
  if (!*(v1 + 248) && !*(v1 + 256))
  {
    SNPrintF(buf, 64, "APCarPlayHelperSession_Session.%{ptr}", *(result + 56));
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __80__APCarSessionRequestHandler_startSessionWithHost_requestIdentifier_completion___block_invoke_3_cold_1(buf, v3, v4);
    }

    v5 = os_transaction_create();
    v1 = *(v2 + 48);
    *(v1 + 248) = v5;
    *(v1 + 256) = 1;
  }

  if (*(v1 + 264))
  {
    APSEventRecorderRecordEvent();
    v6 = LogCategoryCopyOSLogHandle();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23D2A9000, v8, OS_SIGNPOST_EVENT, 0x2B8D0800uLL, "AP_SIGNPOST_CAR_STARTSESSIONHOST", "", buf, 2u);
    }

    if (v7)
    {
    }
  }

  v9 = [*(v2 + 32) wirelessIPv6Addresses];
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  if (v9 && (v10 = v9, [v9 count]))
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:buf count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = StringToSockAddr([*(*(&v31 + 1) + 8 * i) cStringUsingEncoding:4], v35, 28, 0);
          if (v15)
          {
            __80__APCarSessionRequestHandler_startSessionWithHost_requestIdentifier_completion___block_invoke_3_cold_2(v15);
            goto LABEL_29;
          }

          if (BYTE1(v35[0]) == 30)
          {
            goto LABEL_29;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:buf count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = 1;
  }

  else
  {
LABEL_29:
    v16 = 0;
  }

  v17 = *(v2 + 48);
  *(v17 + 176) = v16;
  if (gLogCategory_APBrowserCarSessionHelper <= 50)
  {
    if (gLogCategory_APBrowserCarSessionHelper != -1 || (v20 = _LogCategory_Initialize(), v17 = *(v2 + 48), v20))
    {
      if (*(v17 + 177))
      {
        if (*(v17 + 64))
        {
          v18 = "[Session/WiFi/USB]";
          v19 = "[Session/USB]";
LABEL_42:
          if (*(v17 + 112))
          {
            v21 = v18;
          }

          else
          {
            v21 = v19;
          }

          if (*(v17 + 176))
          {
            v22 = "yes";
          }

          else
          {
            v22 = "no";
          }

          LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "[APCarSessionRequestHandler startSessionWithHost:requestIdentifier:completion:]_block_invoke", 33554482, "[%{ptr}] %s StartSessionHost: requestID=%@, isIPv4=%s, host=%@\n", *(v2 + 56), v21, *(v2 + 40), v22, *(v2 + 32));
          v17 = *(v2 + 48);
          goto LABEL_49;
        }

        v18 = "[Session/WiFi]";
      }

      else
      {
        if (*(v17 + 64))
        {
          v18 = "[Bonjour/WiFi/USB]";
          v19 = "[Bonjour/USB]";
          goto LABEL_42;
        }

        v18 = "[Bonjour/WiFi]";
      }

      v19 = "<Invalid>";
      goto LABEL_42;
    }
  }

LABEL_49:

  v23 = *(v2 + 32);
  v24 = *(v2 + 48);
  *(v24 + 184) = v23;
  v25 = *(v24 + 192);
  v26 = [*(v2 + 40) UUIDString];
  *(*(v2 + 48) + 192) = v26;
  if (v26)
  {
    CFRetain(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v28 = *(v2 + 48);
  *(v28 + 200) = Current;
  v29 = *(v28 + 144);
  v30 = [*(v2 + 32) carplayWiFiUUID];
  *(*(v2 + 48) + 144) = v30;
  if (v30)
  {
    CFRetain(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (*(*(v2 + 48) + 144))
  {
    carPlayHelperSession_connectivityHelperCheckIfWiFiUUIDChanged(*(v2 + 56));
  }

  return carPlayHelperSession_updateNetworkAndSessionState(*(v2 + 56));
}

- (void)stoppedSessionForHostIdentifier:(id)identifier
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__APCarSessionRequestHandler_stoppedSessionForHostIdentifier___block_invoke;
  v4[3] = &unk_278BC71F8;
  v4[4] = self;
  v4[5] = identifier;
  dispatch_sync(queue, v4);
}

void __62__APCarSessionRequestHandler_stoppedSessionForHostIdentifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__APCarSessionRequestHandler_stoppedSessionForHostIdentifier___block_invoke_3;
  block[3] = &unk_278BC6E88;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[4] = *(a1 + 32);
  dispatch_sync(v5, block);
}

void *__62__APCarSessionRequestHandler_stoppedSessionForHostIdentifier___block_invoke_3(void *result)
{
  v1 = result[5];
  if (!*(v1 + 177) || !*(v1 + 184))
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_APBrowserCarSessionHelper <= 50)
  {
    if (gLogCategory_APBrowserCarSessionHelper != -1)
    {
      v3 = result[6];
      goto LABEL_6;
    }

    v10 = _LogCategory_Initialize();
    v1 = v2[5];
    if (v10)
    {
      v3 = v2[6];
      if (!*(v1 + 177))
      {
        v4 = *(v1 + 64);
        v5 = "[Bonjour/WiFi/USB]";
        v6 = "[Bonjour/USB]";
        v7 = *(v1 + 112) == 0;
        v8 = "[Bonjour/WiFi]";
        goto LABEL_7;
      }

LABEL_6:
      v4 = *(v1 + 64);
      v5 = "[Session/WiFi/USB]";
      v6 = "[Session/USB]";
      v7 = *(v1 + 112) == 0;
      v8 = "[Session/WiFi]";
LABEL_7:
      if (v7)
      {
        v5 = v6;
        v8 = "<Invalid>";
      }

      if (v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = v8;
      }

      LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "-[APCarSessionRequestHandler stoppedSessionForHostIdentifier:]_block_invoke_3", 33554482, "[%{ptr}] %s CloseSessionHost, deviceID: %@, sessionHost.deviceIdentifier: %@\n", v3, v9, v2[4], [*(v1 + 184) deviceIdentifier]);
      v1 = v2[5];
    }
  }

  v11 = *(v1 + 144);
  if (v11)
  {
    CFRelease(v11);
    *(v2[5] + 144) = 0;
    v1 = v2[5];
  }

  v12 = v2[5];
  *(v12 + 184) = 0;
  v13 = *(v12 + 192);
  if (v13)
  {
    CFRelease(v13);
    *(v2[5] + 192) = 0;
    v12 = v2[5];
  }

  *(v12 + 200) = 0;
  *(v12 + 208) = 0;
  if (*(v12 + 248))
  {
    v16 = os_transaction_copy_description();
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __62__APCarSessionRequestHandler_stoppedSessionForHostIdentifier___block_invoke_3_cold_1(v16, v14, v15);
    }

    free(v16);
    v17 = *(v2[5] + 248);
    if (v17)
    {

      *(v2[5] + 248) = 0;
    }
  }

  v18 = v2[6];

  return carPlayHelperSession_updateNetworkAndSessionState(v18);
}

- (void)_startAdvertisingCarPlayControlForUSB
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50)
  {
    if (gLogCategory_APBrowserCarSessionHelper != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(APCarSessionRequestHandler *)self _startAdvertisingCarPlayControlForUSB];
    }
  }

  CFSetApplyBlock();
}

void __67__APCarSessionRequestHandler__startAdvertisingCarPlayControlForUSB__block_invoke(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__APCarSessionRequestHandler__startAdvertisingCarPlayControlForUSB__block_invoke_2;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = DerivedStorage;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

uint64_t __67__APCarSessionRequestHandler__startAdvertisingCarPlayControlForUSB__block_invoke_2(uint64_t result)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if (!*(v1 + 177) && *(v1 + 64))
  {
    v2 = result;
    if (!*(v1 + 248) && !*(v1 + 256))
    {
      SNPrintF(v16, 64, "APCarPlayHelperSession_USB.%{ptr}", *(result + 40));
      if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
      {
        __67__APCarSessionRequestHandler__startAdvertisingCarPlayControlForUSB__block_invoke_2_cold_1(v16, v3, v4);
      }

      v5 = os_transaction_create();
      v1 = *(v2 + 32);
      *(v1 + 248) = v5;
      *(v1 + 256) = 1;
    }

    if (gLogCategory_APBrowserCarSessionHelper > 50)
    {
      goto LABEL_26;
    }

    if (gLogCategory_APBrowserCarSessionHelper == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_26:
        Current = CFAbsoluteTimeGetCurrent();
        v15 = *(v2 + 40);
        *(*(v2 + 32) + 104) = Current;
        return carPlayHelperSession_updateNetworkAndSessionState(v15);
      }

      v1 = *(v2 + 32);
    }

    v6 = *(v1 + 177);
    v7 = *(v1 + 64);
    v8 = *(v1 + 112);
    v9 = "[Session/WiFi/USB]";
    if (!v8)
    {
      v9 = "[Session/USB]";
    }

    v10 = "[Session/WiFi]";
    if (!v8)
    {
      v10 = "<Invalid>";
    }

    if (!v7)
    {
      v9 = v10;
    }

    v11 = "[Bonjour/USB]";
    v12 = v8 == 0;
    v13 = "[Bonjour/WiFi]";
    if (v12)
    {
      v13 = "<Invalid>";
    }

    else
    {
      v11 = "[Bonjour/WiFi/USB]";
    }

    if (v7)
    {
      v13 = v11;
    }

    if (v6)
    {
      v13 = v9;
    }

    LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "[APCarSessionRequestHandler _startAdvertisingCarPlayControlForUSB]_block_invoke_2", 33554482, "[%{ptr}] %s StartBonjourForUSB\n", *(v2 + 40), v13);
    goto LABEL_26;
  }

  return result;
}

- (void)startAdvertisingCarPlayControlForUSB
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__APCarSessionRequestHandler_startAdvertisingCarPlayControlForUSB__block_invoke;
  block[3] = &unk_278BC6E38;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_startAdvertisingCarPlayControlForWiFiUUID:(id)d
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    [(APCarSessionRequestHandler *)d _startAdvertisingCarPlayControlForWiFiUUID:a2, d];
  }

  CFSetApplyBlock();
}

void __73__APCarSessionRequestHandler__startAdvertisingCarPlayControlForWiFiUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__APCarSessionRequestHandler__startAdvertisingCarPlayControlForWiFiUUID___block_invoke_2;
  block[3] = &unk_278BC6E88;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[4] = *(a1 + 32);
  dispatch_sync(v5, block);
}

void *__73__APCarSessionRequestHandler__startAdvertisingCarPlayControlForWiFiUUID___block_invoke_2(void *result)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (result + 5);
  v1 = result[5];
  if (!*(v1 + 177) && *(v1 + 112))
  {
    v3 = result;
    if (!*(v1 + 248) && !*(v1 + 256))
    {
      SNPrintF(v12, 64, "APCarPlayHelperSession_WiFi.%{ptr}", result[6]);
      if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
      {
        __73__APCarSessionRequestHandler__startAdvertisingCarPlayControlForWiFiUUID___block_invoke_2_cold_1(v12, v4, v5);
      }

      v6 = os_transaction_create();
      v7 = *v2;
      *(v7 + 248) = v6;
      *(v7 + 256) = 1;
    }

    v8 = (v3 + 6);
    carPlayHelperSession_connectivityHelperCheckIfWiFiUUIDChanged(v3[6]);
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __73__APCarSessionRequestHandler__startAdvertisingCarPlayControlForWiFiUUID___block_invoke_2_cold_2((v3 + 6), v2, v3);
    }

    v9 = v3[4];
    v10 = v3[5];
    v11 = *(v10 + 144);
    *(v10 + 144) = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    *(*v2 + 152) = CFAbsoluteTimeGetCurrent();
    return carPlayHelperSession_updateNetworkAndSessionState(*v8);
  }

  return result;
}

- (void)startAdvertisingCarPlayControlForWiFiUUID:(id)d
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__APCarSessionRequestHandler_startAdvertisingCarPlayControlForWiFiUUID___block_invoke;
  v4[3] = &unk_278BC71F8;
  v4[4] = self;
  v4[5] = d;
  dispatch_sync(queue, v4);
}

- (void)checkCarPlayControlAdvertisingForWiFiUUID:(id)d
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__APCarSessionRequestHandler_checkCarPlayControlAdvertisingForWiFiUUID___block_invoke;
  v4[3] = &unk_278BC71F8;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(queue, v4);
}

void *__72__APCarSessionRequestHandler_checkCarPlayControlAdvertisingForWiFiUUID___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) wantsCarPlayControlAdvertisingForWiFiUUID:*(a1 + 40)];
  if (result)
  {
    if (gLogCategory_APBrowserCarSessionHelper <= 50)
    {
      if (gLogCategory_APBrowserCarSessionHelper != -1 || (result = _LogCategory_Initialize(), result))
      {
        __72__APCarSessionRequestHandler_checkCarPlayControlAdvertisingForWiFiUUID___block_invoke_cold_1(result, v3, v4);
      }
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 _startAdvertisingCarPlayControlForWiFiUUID:v6];
  }

  return result;
}

- (void)prepareForRemovingWiFiUUID:(id)d completion:(id)completion
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke;
  v6[3] = &unk_278BC71F8;
  v6[4] = d;
  v6[5] = self;
  dispatch_sync(queue, v6);
  if (completion)
  {
    (*(completion + 2))(completion, 1, 0);
  }
}

uint64_t __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke_cold_1(a1, a2, a3);
  }

  return CFSetApplyBlock();
}

void __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke_3;
  block[3] = &unk_278BC6E88;
  block[5] = a2;
  block[6] = DerivedStorage;
  block[4] = *(a1 + 32);
  dispatch_sync(v5, block);
}

uint64_t __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    __68__APCarSessionRequestHandler_prepareForRemovingWiFiUUID_completion___block_invoke_3_cold_1(a1, a2, a3);
  }

  result = FigCFEqual();
  if (result)
  {
    v5 = a1[6];
    v6 = *(v5 + 144);
    if (v6)
    {
      CFRelease(v6);
      *(a1[6] + 144) = 0;
      v5 = a1[6];
    }

    *(v5 + 152) = 0;
    v7 = a1[5];

    return carPlayHelperSession_updateNetworkAndSessionState(v7);
  }

  return result;
}

- (void)cancelRequests
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__APCarSessionRequestHandler_cancelRequests__block_invoke;
  block[3] = &unk_278BC6E38;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __44__APCarSessionRequestHandler_cancelRequests__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50)
  {
    if (gLogCategory_APBrowserCarSessionHelper != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __44__APCarSessionRequestHandler_cancelRequests__block_invoke_cold_1(a1, a2, a3);
    }
  }

  return CFSetApplyBlock();
}

void __44__APCarSessionRequestHandler_cancelRequests__block_invoke_2(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__APCarSessionRequestHandler_cancelRequests__block_invoke_3;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a2;
  v5[5] = DerivedStorage;
  dispatch_sync(v4, v5);
}

uint64_t __44__APCarSessionRequestHandler_cancelRequests__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    __44__APCarSessionRequestHandler_cancelRequests__block_invoke_3_cold_1(a1, a2, a3);
  }

  v4 = *(a1 + 40);
  *(v4 + 104) = 0;
  v5 = *(v4 + 144);
  if (v5)
  {
    CFRelease(v5);
    *(*(a1 + 40) + 144) = 0;
    v4 = *(a1 + 40);
  }

  *(v4 + 152) = 0;

  v6 = *(a1 + 40);
  *(v6 + 184) = 0;
  v7 = *(v6 + 192);
  if (v7)
  {
    CFRelease(v7);
    *(*(a1 + 40) + 192) = 0;
    v6 = *(a1 + 40);
  }

  *(v6 + 200) = 0;
  *(v6 + 208) = 0;
  if (*(v6 + 248))
  {
    v10 = os_transaction_copy_description();
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __44__APCarSessionRequestHandler_cancelRequests__block_invoke_3_cold_2(v10, v8, v9);
    }

    free(v10);
    v11 = *(*(a1 + 40) + 248);
    if (v11)
    {

      *(*(a1 + 40) + 248) = 0;
    }
  }

  v12 = *(a1 + 32);

  return carPlayHelperSession_updateNetworkAndSessionState(v12);
}

- (uint64_t)addCarPlayHelper:.cold.1()
{
  result = APSLogErrorAt();
  if (gLogCategory_APBrowserCarSessionHelper <= 90)
  {
    if (gLogCategory_APBrowserCarSessionHelper != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "[APCarSessionRequestHandler addCarPlayHelper:]", 33554522, "Can't add helpers after Mach Service registration");
    }
  }

  return result;
}

@end