@interface SBSSysdiagnoseInterface
- (SBSSysdiagnoseInterface)initWithTarget:(id)target;
- (void)airDropSysdiagnose:(id)sysdiagnose airDropID:(id)d completionHandler:(id)handler;
- (void)cancelSysdiagnose:(id)sysdiagnose;
- (void)createSysdiagnose:(id)sysdiagnose;
- (void)dealloc;
- (void)sysdiagnoseHasStarted:(BOOL)started;
@end

@implementation SBSSysdiagnoseInterface

- (void)dealloc
{
  [(NSXPCConnection *)self->_sbConnection invalidate];
  v3.receiver = self;
  v3.super_class = SBSSysdiagnoseInterface;
  [(SBSSysdiagnoseInterface *)&v3 dealloc];
}

- (void)airDropSysdiagnose:(id)sysdiagnose airDropID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  sbProxy = self->_sbProxy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__SBSSysdiagnoseInterface_airDropSysdiagnose_airDropID_completionHandler___block_invoke;
  v11[3] = &unk_279CD52E8;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(SBSImplementer *)sbProxy airDropSysdiagnose:sysdiagnose airDropID:d completionHandler:v11];
}

- (void)cancelSysdiagnose:(id)sysdiagnose
{
  sysdiagnoseCopy = sysdiagnose;
  sbProxy = self->_sbProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SBSSysdiagnoseInterface_cancelSysdiagnose___block_invoke;
  v7[3] = &unk_279CD55F8;
  v8 = sysdiagnoseCopy;
  v6 = sysdiagnoseCopy;
  [(SBSImplementer *)sbProxy cancelCurrentSysdiagnose:v7];
}

- (void)createSysdiagnose:(id)sysdiagnose
{
  sysdiagnoseCopy = sysdiagnose;
  sbProxy = self->_sbProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SBSSysdiagnoseInterface_createSysdiagnose___block_invoke;
  v7[3] = &unk_279CD52C0;
  v8 = sysdiagnoseCopy;
  v6 = sysdiagnoseCopy;
  [(SBSImplementer *)sbProxy createSysdiagnose:v7];
}

- (void)sysdiagnoseHasStarted:(BOOL)started
{
  startedCopy = started;
  sbConnection = [(SBSSysdiagnoseInterface *)self sbConnection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__SBSSysdiagnoseInterface_sysdiagnoseHasStarted___block_invoke;
  v6[3] = &__block_descriptor_33_e17_v16__0__NSError_8l;
  v7 = startedCopy;
  v5 = [sbConnection synchronousRemoteObjectProxyWithErrorHandler:v6];
  [v5 sysdiagnoseHasStarted:startedCopy];
}

void __49__SBSSysdiagnoseInterface_sysdiagnoseHasStarted___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _SBSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v5;
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_26B246000, v4, OS_LOG_TYPE_ERROR, "Failed to set sysdiagnose started to %d, %@", v6, 0x12u);
  }
}

- (SBSSysdiagnoseInterface)initWithTarget:(id)target
{
  targetCopy = target;
  v13.receiver = self;
  v13.super_class = SBSSysdiagnoseInterface;
  v5 = [(SBSSysdiagnoseInterface *)&v13 init];
  if (v5)
  {
    if ([targetCopy isEqualToString:@"localhost"])
    {
      v6 = [SBSUtils connectionWithExportedObject:0];
      sbConnection = v5->_sbConnection;
      v5->_sbConnection = v6;

      sbConnection = [(SBSSysdiagnoseInterface *)v5 sbConnection];
      remoteObjectProxy = [sbConnection remoteObjectProxy];
      sbProxy = v5->_sbProxy;
      v5->_sbProxy = remoteObjectProxy;
    }

    else
    {
      v11 = [SBSUtils createProxyConnectionForRapportTarget:targetCopy];
      sbConnection = v5->_sbProxy;
      v5->_sbProxy = v11;
    }
  }

  return v5;
}

@end