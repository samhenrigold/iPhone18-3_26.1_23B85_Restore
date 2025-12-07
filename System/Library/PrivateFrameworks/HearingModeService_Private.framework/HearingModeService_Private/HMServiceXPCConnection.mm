@interface HMServiceXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (void)clientActivate:(id)activate completion:(id)completion;
- (void)clientFetchOcclusionResultForDeviceIdentifier:(id)identifier featureID:(int)d completion:(id)completion;
- (void)clientModifyDeviceConfig:(id)config identifier:(id)identifier completion:(id)completion;
- (void)clientReportDiagnosticRecord:(id)record;
- (void)clientReportHMDeviceRecordChanged:(id)changed;
- (void)clientReportHMDeviceRecordLost:(id)lost;
- (void)clientReportValidAudiograms:(id)audiograms invalidAudiograms:(id)invalidAudiograms error:(id)error;
- (void)clientSetOcclusionIndicationShownForDeviceAddress:(id)address featureID:(int)d type:(int)type action:(int)action;
- (void)clientSyncFetchHearingModeDeviceRecordForIdentifier:(id)identifier recordHandler:(id)handler;
- (void)clientTriggerFetchAudiograms:(id)audiograms completion:(id)completion;
- (void)clientTriggerOnDemandDiagnosticCheckForDeviceIdentifier:(id)identifier completion:(id)completion;
- (void)xpcConnectionInvalidated;
@end

@implementation HMServiceXPCConnection

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    LOBYTE(v3) = 1;
    return v3;
  }

  p_xpcCnx = &self->_xpcCnx;
  v6 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.HearingModeService"];
  v7 = [v6 isEqual:MEMORY[0x277CBEC38]];

  if (v7)
  {
    LOBYTE(v3) = 1;
    self->_entitled = 1;
    return v3;
  }

  if (gLogCategory_HMServiceDaemon > 90)
  {
LABEL_9:
    LOBYTE(v3) = 0;
    return v3;
  }

  if (gLogCategory_HMServiceDaemon != -1 || (v3 = _LogCategory_Initialize()) != 0)
  {
    [HMServiceXPCConnection _entitledAndReturnError:?];
    goto LABEL_9;
  }

  return v3;
}

- (void)xpcConnectionInvalidated
{
  v7 = self->_hearingModeClient;
  hearingModeClient = self->_hearingModeClient;
  self->_hearingModeClient = 0;

  v5 = v7;
  if (v7)
  {
    if (gLogCategory_HMServiceDaemon <= 10)
    {
      if (gLogCategory_HMServiceDaemon != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
      {
        [(HMServiceXPCConnection *)v5 xpcConnectionInvalidated];
        v5 = v7;
      }
    }

    invalidate = [(HMServiceClient *)v5 invalidate];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](invalidate, v5);
}

- (void)clientActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__HMServiceXPCConnection_clientActivate_completion___block_invoke;
  v20[3] = &unk_2796F0598;
  v22 = &v23;
  v9 = completionCopy;
  v21 = v9;
  v10 = MEMORY[0x253095540](v20);
  if (gLogCategory_HMServiceDaemon <= 10 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMServiceDaemon, "[HMServiceXPCConnection clientActivate:completion:]", 10, "Hearing Mode Client activate: %@", activateCopy);
  }

  v11 = (v24 + 5);
  obj = v24[5];
  v12 = [(HMServiceXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    objc_storeStrong(&self->_hearingModeClient, activate);
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }

    [(HMServiceDaemon *)self->_daemon _update];
    v13 = +[HMDeviceManager sharedInstance];
    availableRecords = [v13 availableRecords];

    if (gLogCategory_HMServiceDaemon <= 30 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMServiceDaemon, "-[HMServiceXPCConnection clientActivate:completion:]", 30, "available record count: %lu", [availableRecords count]);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__HMServiceXPCConnection_clientActivate_completion___block_invoke_2;
    v18[3] = &unk_2796F0420;
    v18[4] = self;
    [availableRecords enumerateKeysAndObjectsUsingBlock:v18];
    if ([activateCopy internalFlags])
    {
      v15 = +[HMDeviceManager sharedInstance];
      availableDiagnosticRecords = [v15 availableDiagnosticRecords];

      if (gLogCategory_HMServiceDaemon <= 30 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_HMServiceDaemon, "-[HMServiceXPCConnection clientActivate:completion:]", 30, "available diagnostic record count: %lu", [availableDiagnosticRecords count]);
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __52__HMServiceXPCConnection_clientActivate_completion___block_invoke_3;
      v17[3] = &unk_2796F05C0;
      v17[4] = self;
      [availableDiagnosticRecords enumerateKeysAndObjectsUsingBlock:v17];
    }
  }

  v10[2](v10);

  _Block_object_dispose(&v23, 8);
}

uint64_t __52__HMServiceXPCConnection_clientActivate_completion___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
LABEL_4:
      LogPrintF(&gLogCategory_HMServiceDaemon, "[HMServiceXPCConnection clientActivate:completion:]_block_invoke", 90, "### Hearing Mode Client activate failed: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)clientSyncFetchHearingModeDeviceRecordForIdentifier:(id)identifier recordHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__HMServiceXPCConnection_clientSyncFetchHearingModeDeviceRecordForIdentifier_recordHandler___block_invoke;
  v17[3] = &unk_2796F05E8;
  v19 = &v21;
  v8 = handlerCopy;
  v18 = v8;
  v20 = &v27;
  v9 = MEMORY[0x253095540](v17);
  v10 = (v22 + 5);
  obj = v22[5];
  LOBYTE(self) = [(HMServiceXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v10, obj);
  if (self)
  {
    v11 = +[HMDeviceManager sharedInstance];
    availableRecords = [v11 availableRecords];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __92__HMServiceXPCConnection_clientSyncFetchHearingModeDeviceRecordForIdentifier_recordHandler___block_invoke_2;
    v13[3] = &unk_2796F04B8;
    v14 = identifierCopy;
    v15 = &v27;
    [availableRecords enumerateKeysAndObjectsUsingBlock:v13];
    if (gLogCategory_HMServiceDaemon <= 30 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMServiceDaemon, "[HMServiceXPCConnection clientSyncFetchHearingModeDeviceRecordForIdentifier:recordHandler:]", 30, "fetch HMDeviceRecord, returning %@", v28[5]);
    }

    (*(v8 + 2))(v8, v28[5]);
  }

  v9[2](v9);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

uint64_t __92__HMServiceXPCConnection_clientSyncFetchHearingModeDeviceRecordForIdentifier_recordHandler___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
LABEL_4:
      LogPrintF(&gLogCategory_HMServiceDaemon, "[HMServiceXPCConnection clientSyncFetchHearingModeDeviceRecordForIdentifier:recordHandler:]_block_invoke", 90, "### fetch HMDeviceRecord %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __92__HMServiceXPCConnection_clientSyncFetchHearingModeDeviceRecordForIdentifier_recordHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v12 = v7;
  v10 = v9;
  if (v10 == v12)
  {

    goto LABEL_6;
  }

  if ((v12 != 0) == (v10 == 0))
  {

    goto LABEL_8;
  }

  v11 = [v12 isEqual:v10];

  if (v11)
  {
LABEL_6:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }

LABEL_8:
}

- (void)clientFetchOcclusionResultForDeviceIdentifier:(id)identifier featureID:(int)d completion:(id)completion
{
  v6 = *&d;
  identifierCopy = identifier;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __93__HMServiceXPCConnection_clientFetchOcclusionResultForDeviceIdentifier_featureID_completion___block_invoke;
  v17[3] = &unk_2796F0598;
  v19 = &v20;
  v10 = completionCopy;
  v18 = v10;
  v11 = MEMORY[0x253095540](v17);
  if (identifierCopy)
  {
    v12 = (v21 + 5);
    obj = v21[5];
    v13 = [(HMServiceXPCConnection *)self _entitledAndReturnError:&obj];
    objc_storeStrong(v12, obj);
    if (v13)
    {
      [(HMServiceDaemon *)self->_daemon _fetchOcclusionResultForDeviceIdentifier:identifierCopy featureID:v6 completion:v10];
    }
  }

  else
  {
    v14 = NSErrorF(*MEMORY[0x277CCA590], 4294960591, "Fetch occlusion result: missing device UUID");
    v15 = v21[5];
    v21[5] = v14;
  }

  v11[2](v11);

  _Block_object_dispose(&v20, 8);
}

uint64_t __93__HMServiceXPCConnection_clientFetchOcclusionResultForDeviceIdentifier_featureID_completion___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
LABEL_4:
      LogPrintF(&gLogCategory_HMServiceDaemon, "[HMServiceXPCConnection clientFetchOcclusionResultForDeviceIdentifier:featureID:completion:]_block_invoke", 90, "### Hearing Mode Client fetch occlusion result: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)clientModifyDeviceConfig:(id)config identifier:(id)identifier completion:(id)completion
{
  configCopy = config;
  identifierCopy = identifier;
  completionCopy = completion;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__HMServiceXPCConnection_clientModifyDeviceConfig_identifier_completion___block_invoke;
  v18[3] = &unk_2796F0598;
  v20 = &v21;
  v11 = completionCopy;
  v19 = v11;
  v12 = MEMORY[0x253095540](v18);
  if (!identifierCopy)
  {
    NSErrorF(*MEMORY[0x277CCA590], 4294960591, "Modify device config: missing identifier");
    v15 = LABEL_12:;
    v16 = v22[5];
    v22[5] = v15;

    goto LABEL_9;
  }

  if (!configCopy)
  {
    NSErrorF(*MEMORY[0x277CCA590], 4294960591, "Modify device config: missing config");
    goto LABEL_12;
  }

  v13 = (v22 + 5);
  obj = v22[5];
  v14 = [(HMServiceXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v13, obj);
  if (v14)
  {
    if (gLogCategory_HMServiceDaemon <= 30 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_HMServiceDaemon, "[HMServiceXPCConnection clientModifyDeviceConfig:identifier:completion:]", 30, "received config: %@", configCopy);
    }

    [(HMServiceDaemon *)self->_daemon _modifyDeviceConfig:configCopy identifier:identifierCopy completion:v11];
  }

LABEL_9:
  v12[2](v12);

  _Block_object_dispose(&v21, 8);
}

uint64_t __73__HMServiceXPCConnection_clientModifyDeviceConfig_identifier_completion___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
LABEL_4:
      LogPrintF(&gLogCategory_HMServiceDaemon, "[HMServiceXPCConnection clientModifyDeviceConfig:identifier:completion:]_block_invoke", 90, "### Hearing Mode Client Modify device config: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)clientReportValidAudiograms:(id)audiograms invalidAudiograms:(id)invalidAudiograms error:(id)error
{
  if (!self->_audiogramsReported)
  {
    xpcCnx = self->_xpcCnx;
    errorCopy = error;
    invalidAudiogramsCopy = invalidAudiograms;
    audiogramsCopy = audiograms;
    remoteObjectProxy = [(NSXPCConnection *)xpcCnx remoteObjectProxy];
    [remoteObjectProxy clientHMAvailableAudiograms:audiogramsCopy invalidAudiograms:invalidAudiogramsCopy error:errorCopy];

    self->_audiogramsReported = 1;
  }
}

- (void)clientSetOcclusionIndicationShownForDeviceAddress:(id)address featureID:(int)d type:(int)type action:(int)action
{
  v6 = *&action;
  v7 = *&type;
  v8 = *&d;
  addressCopy = address;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __98__HMServiceXPCConnection_clientSetOcclusionIndicationShownForDeviceAddress_featureID_type_action___block_invoke;
  v18[3] = &unk_2796F0610;
  v18[4] = &v19;
  v11 = MEMORY[0x253095540](v18);
  v12 = (v20 + 5);
  obj = v20[5];
  LOBYTE(self) = [(HMServiceXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v12, obj);
  if (self)
  {
    if (gLogCategory_HMServiceDaemon <= 10 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
    {
      if (v7 > 8)
      {
        v13 = "?";
      }

      else
      {
        v13 = off_2796F0630[v7];
      }

      if (v8 > 3)
      {
        v14 = "?";
      }

      else
      {
        v14 = off_2796F0678[v8];
      }

      if (v6 > 4)
      {
        v15 = "?";
      }

      else
      {
        v15 = off_2796F0698[v6];
      }

      LogPrintF(&gLogCategory_HMServiceDaemon, "[HMServiceXPCConnection clientSetOcclusionIndicationShownForDeviceAddress:featureID:type:action:]", 10, "OcclusionIndicationShown with address: %@, type: %s, feature: %s, action: %s", addressCopy, v13, v14, v15);
    }

    v16 = +[HMDeviceManager sharedInstance];
    [v16 occlusionIndicationShownForDeviceAddress:addressCopy featureID:v8 type:v7 action:v6];
  }

  v11[2](v11);

  _Block_object_dispose(&v19, 8);
}

uint64_t __98__HMServiceXPCConnection_clientSetOcclusionIndicationShownForDeviceAddress_featureID_type_action___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
      return LogPrintF(&gLogCategory_HMServiceDaemon, "[HMServiceXPCConnection clientSetOcclusionIndicationShownForDeviceAddress:featureID:type:action:]_block_invoke", 90, "### Set OcclusionIndicationShown failed: %{error}", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&gLogCategory_HMServiceDaemon, "[HMServiceXPCConnection clientSetOcclusionIndicationShownForDeviceAddress:featureID:type:action:]_block_invoke", 90, "### Set OcclusionIndicationShown failed: %{error}", v1);
    }
  }

  return result;
}

- (void)clientTriggerFetchAudiograms:(id)audiograms completion:(id)completion
{
  audiogramsCopy = audiograms;
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HMServiceXPCConnection_clientTriggerFetchAudiograms_completion___block_invoke;
  v15[3] = &unk_2796F0598;
  v17 = &v18;
  v9 = completionCopy;
  v16 = v9;
  v10 = MEMORY[0x253095540](v15);
  v11 = (v19 + 5);
  obj = v19[5];
  v12 = [(HMServiceXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    objc_storeStrong(&self->_hearingModeClient, audiograms);
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }

    self->_audiogramsReported = 0;
    v13 = +[HMHealthKitUtilities sharedInstance];
    [v13 startAudiogramQuery];
  }

  v10[2](v10);

  _Block_object_dispose(&v18, 8);
}

uint64_t __66__HMServiceXPCConnection_clientTriggerFetchAudiograms_completion___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
LABEL_4:
      LogPrintF(&gLogCategory_HMServiceDaemon, "[HMServiceXPCConnection clientTriggerFetchAudiograms:completion:]_block_invoke", 90, "### fetch audiograms failed: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)clientTriggerOnDemandDiagnosticCheckForDeviceIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__HMServiceXPCConnection_clientTriggerOnDemandDiagnosticCheckForDeviceIdentifier_completion___block_invoke;
  v15[3] = &unk_2796F0598;
  v17 = &v18;
  v8 = completionCopy;
  v16 = v8;
  v9 = MEMORY[0x253095540](v15);
  if (identifierCopy)
  {
    v10 = (v19 + 5);
    obj = v19[5];
    v11 = [(HMServiceXPCConnection *)self _entitledAndReturnError:&obj];
    objc_storeStrong(v10, obj);
    if (v11)
    {
      if (gLogCategory_HMServiceDaemon <= 30 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_HMServiceDaemon, "[HMServiceXPCConnection clientTriggerOnDemandDiagnosticCheckForDeviceIdentifier:completion:]", 30, "Triggering diagnostic Check for device identifier: %@", identifierCopy);
      }

      [(HMServiceDaemon *)self->_daemon _triggerDiagnosticCheckForIdentifier:identifierCopy completion:v8];
    }
  }

  else
  {
    v12 = NSErrorF(*MEMORY[0x277CCA590], 4294960591, "diagnostic Check: missing identifier");
    v13 = v19[5];
    v19[5] = v12;
  }

  v9[2](v9);

  _Block_object_dispose(&v18, 8);
}

uint64_t __93__HMServiceXPCConnection_clientTriggerOnDemandDiagnosticCheckForDeviceIdentifier_completion___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_HMServiceDaemon <= 90)
  {
    if (gLogCategory_HMServiceDaemon != -1)
    {
LABEL_4:
      LogPrintF(&gLogCategory_HMServiceDaemon, "[HMServiceXPCConnection clientTriggerOnDemandDiagnosticCheckForDeviceIdentifier:completion:]_block_invoke", 90, "### Hearing Mode Client diagnostic Check failed: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)clientReportHMDeviceRecordChanged:(id)changed
{
  changedCopy = changed;
  bluetoothUUID = [changedCopy bluetoothUUID];
  if (bluetoothUUID)
  {
    bluetoothAddress = [changedCopy bluetoothAddress];
    if (bluetoothAddress)
    {
      records = self->_records;
      if (!records)
      {
        v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v8 = self->_records;
        self->_records = v7;

        records = self->_records;
      }

      [(NSMutableDictionary *)records setObject:changedCopy forKeyedSubscript:bluetoothUUID];
      if (self->_hearingModeClient)
      {
        remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
        [remoteObjectProxy clientHMDeviceRecordChanged:changedCopy];
      }
    }
  }
}

- (void)clientReportHMDeviceRecordLost:(id)lost
{
  lostCopy = lost;
  bluetoothUUID = [lostCopy bluetoothUUID];
  if (bluetoothUUID)
  {
    v5 = [(NSMutableDictionary *)self->_records objectForKeyedSubscript:bluetoothUUID];

    if (v5)
    {
      hearingModeClient = self->_hearingModeClient;
      if (hearingModeClient)
      {
        records = self->_records;
        v8 = hearingModeClient;
        [(NSMutableDictionary *)records setObject:0 forKeyedSubscript:bluetoothUUID];
        remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];

        [remoteObjectProxy clientHMDeviceRecordLost:lostCopy];
      }
    }
  }
}

- (void)clientReportDiagnosticRecord:(id)record
{
  recordCopy = record;
  bluetoothUUID = [recordCopy bluetoothUUID];
  if (bluetoothUUID)
  {
    bluetoothAddress = [recordCopy bluetoothAddress];
    if (bluetoothAddress && self->_hearingModeClient)
    {
      remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [remoteObjectProxy clientHMDeviceDiagnosticRecordFound:recordCopy];
    }
  }
}

@end