@interface CDPDLocalSecretFollowUpProviderImpl
- (CDPDLocalSecretFollowUpProviderImpl)init;
- (CDPDLocalSecretFollowUpProviderImpl)initWithAltDSID:(id)d telemetryFlowID:(id)iD;
- (void)deleteConfirmExistingSecretFollowUp;
- (void)deleteCreatePasscodeFollowUp;
- (void)deleteLocalSecretChangeFollowUp;
- (void)postConfirmExistingSecretFollowUp;
- (void)postLocalSecretChangeFollowUp;
- (void)postRepairFollowUp;
@end

@implementation CDPDLocalSecretFollowUpProviderImpl

- (CDPDLocalSecretFollowUpProviderImpl)initWithAltDSID:(id)d telemetryFlowID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v9 = [(CDPDLocalSecretFollowUpProviderImpl *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_altDSID, d);
    objc_storeStrong(&v10->telemetryFlowID, iD);
  }

  return v10;
}

- (CDPDLocalSecretFollowUpProviderImpl)init
{
  v3.receiver = self;
  v3.super_class = CDPDLocalSecretFollowUpProviderImpl;
  return [(CDPDLocalSecretFollowUpProviderImpl *)&v3 init];
}

- (void)postRepairFollowUp
{
  contextForStateRepair = [MEMORY[0x277CFD4D8] contextForStateRepair];
  [contextForStateRepair setAltDSID:self->_altDSID];
  [contextForStateRepair setTelemetryFlowID:self->telemetryFlowID];
  v3 = +[CDPDFollowUpController sharedInstance];
  [v3 postFollowUpItemForContext:contextForStateRepair error:0];
}

- (void)postLocalSecretChangeFollowUp
{
  v11 = *MEMORY[0x277D85DE8];
  contextForOfflinePasscodeChange = [MEMORY[0x277CFD4D8] contextForOfflinePasscodeChange];
  [contextForOfflinePasscodeChange setAltDSID:self->_altDSID];
  [contextForOfflinePasscodeChange setTelemetryFlowID:self->telemetryFlowID];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [contextForOfflinePasscodeChange altDSID];
    v7 = 141558274;
    v8 = 1752392040;
    v9 = 2112;
    v10 = altDSID;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "postLocalSecretChangeFollowUp: altDSID:%{mask.hash}@", &v7, 0x16u);
  }

  v6 = +[CDPDFollowUpController sharedInstance];
  [v6 postFollowUpItemForContext:contextForOfflinePasscodeChange error:0];
}

- (void)deleteLocalSecretChangeFollowUp
{
  v11 = *MEMORY[0x277D85DE8];
  contextForOfflinePasscodeChange = [MEMORY[0x277CFD4D8] contextForOfflinePasscodeChange];
  [contextForOfflinePasscodeChange setAltDSID:self->_altDSID];
  [contextForOfflinePasscodeChange setTelemetryFlowID:self->telemetryFlowID];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [contextForOfflinePasscodeChange altDSID];
    v7 = 141558274;
    v8 = 1752392040;
    v9 = 2112;
    v10 = altDSID;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "deleteLocalSecretChangeFollowUp: altDSID:%{mask.hash}@", &v7, 0x16u);
  }

  v6 = +[CDPDFollowUpController sharedInstance];
  [v6 clearFollowUpWithContext:contextForOfflinePasscodeChange error:0];
}

- (void)postConfirmExistingSecretFollowUp
{
  v11 = *MEMORY[0x277D85DE8];
  contextForConfirmExistingSecret = [MEMORY[0x277CFD4D8] contextForConfirmExistingSecret];
  [contextForConfirmExistingSecret setAltDSID:self->_altDSID];
  [contextForConfirmExistingSecret setTelemetryFlowID:self->telemetryFlowID];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [contextForConfirmExistingSecret altDSID];
    v7 = 141558274;
    v8 = 1752392040;
    v9 = 2112;
    v10 = altDSID;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "postConfirmExistingSecretFollowUp: altDSID:%{mask.hash}@", &v7, 0x16u);
  }

  v6 = +[CDPDFollowUpController sharedInstance];
  [v6 postFollowUpItemForContext:contextForConfirmExistingSecret error:0];
}

- (void)deleteConfirmExistingSecretFollowUp
{
  v11 = *MEMORY[0x277D85DE8];
  contextForConfirmExistingSecret = [MEMORY[0x277CFD4D8] contextForConfirmExistingSecret];
  [contextForConfirmExistingSecret setAltDSID:self->_altDSID];
  [contextForConfirmExistingSecret setTelemetryFlowID:self->telemetryFlowID];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [contextForConfirmExistingSecret altDSID];
    v7 = 141558274;
    v8 = 1752392040;
    v9 = 2112;
    v10 = altDSID;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "deleteConfirmExistingSecretFollowUp: altDSID:%{mask.hash}@", &v7, 0x16u);
  }

  v6 = +[CDPDFollowUpController sharedInstance];
  [v6 clearFollowUpWithContext:contextForConfirmExistingSecret error:0];
}

- (void)deleteCreatePasscodeFollowUp
{
  v3 = MEMORY[0x277CFD4D8];
  v4 = objc_alloc_init(MEMORY[0x277CFD4A8]);
  v6 = [v3 contextForWalrusCreatePasscodeWithCDPContext:v4];

  [v6 setAltDSID:self->_altDSID];
  [v6 setTelemetryFlowID:self->telemetryFlowID];
  v5 = +[CDPDFollowUpController sharedInstance];
  [v5 clearFollowUpWithContext:v6 error:0];
}

@end