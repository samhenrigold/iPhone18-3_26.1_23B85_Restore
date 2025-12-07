@interface DADiagnosticsRemoteRunner
- (BOOL)_establishConnection;
- (DADiagnosticsRemoteRunner)initWithDelegate:(id)delegate;
- (DADiagnosticsRemoteRunnerDelegate)delegate;
- (void)cancelTestWithID:(id)d completion:(id)completion;
- (void)createRemoteRunnerDeviceWithSerialNumber:(id)number completion:(id)completion;
- (void)dealloc;
- (void)destroyRemoteRunnerDeviceWithCompletion:(id)completion;
- (void)getReportWithCompletion:(id)completion;
- (void)getReportWithComponents:(id)components completion:(id)completion;
- (void)ping:(id)ping;
- (void)remoteRunnerDeviceEnded;
- (void)requestAsset:(id)asset completion:(id)completion;
- (void)requestUploadAssets:(id)assets completion:(id)completion;
- (void)runTestWithID:(id)d name:(id)name description:(id)description parameters:(id)parameters completion:(id)completion;
@end

@implementation DADiagnosticsRemoteRunner

- (DADiagnosticsRemoteRunner)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = DADiagnosticsRemoteRunner;
  v5 = [(DADiagnosticsRemoteRunner *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DADiagnosticsRemoteRunner *)v5 setDelegate:delegateCopy];
    if (![(DADiagnosticsRemoteRunner *)v6 _establishConnection])
    {

      v6 = 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  xpcConnection = [(DADiagnosticsRemoteRunner *)self xpcConnection];

  if (xpcConnection)
  {
    xpcConnection2 = [(DADiagnosticsRemoteRunner *)self xpcConnection];
    [xpcConnection2 suspend];

    xpcConnection3 = [(DADiagnosticsRemoteRunner *)self xpcConnection];
    [xpcConnection3 invalidate];

    [(DADiagnosticsRemoteRunner *)self setXpcConnection:0];
  }

  [(DADiagnosticsRemoteRunner *)self setDelegate:0];
  v6.receiver = self;
  v6.super_class = DADiagnosticsRemoteRunner;
  [(DADiagnosticsRemoteRunner *)&v6 dealloc];
}

- (BOOL)_establishConnection
{
  v41[6] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.diagnostics.remote-runner-service" options:4096];
  v21 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2884B79A0];
  v3 = MEMORY[0x277CBEB98];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v41[2] = objc_opt_class();
  v41[3] = objc_opt_class();
  v41[4] = objc_opt_class();
  v41[5] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:6];
  v5 = [v3 setWithArray:v4];
  [v21 setClasses:v5 forSelector:sel_runTestWithID_name_description_parameters_completion_ argumentIndex:3 ofReply:0];

  v6 = MEMORY[0x277CBEB98];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v40[2] = objc_opt_class();
  v40[3] = objc_opt_class();
  v40[4] = objc_opt_class();
  v40[5] = objc_opt_class();
  v40[6] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:7];
  v8 = [v6 setWithArray:v7];
  [v21 setClasses:v8 forSelector:sel_runTestWithID_name_description_parameters_completion_ argumentIndex:0 ofReply:1];

  [v2 setRemoteObjectInterface:v21];
  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2884B7A70];
  [v2 setExportedInterface:v9];
  [v2 setExportedObject:self];
  [v2 activate];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  objc_initWeak(&location, self);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __49__DADiagnosticsRemoteRunner__establishConnection__block_invoke;
  v31[3] = &unk_27A66EBD8;
  v31[4] = &v34;
  objc_copyWeak(&v32, &location);
  v10 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v31];
  if (v10 && !v35[5])
  {
    v12 = dispatch_queue_create("com.apple.Diagnostics.RemoteRunnerCheckQueue", MEMORY[0x277D85CD8]);
    diagsAliveCheckQueue = self->_diagsAliveCheckQueue;
    self->_diagsAliveCheckQueue = v12;

    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy_;
    v29 = __Block_byref_object_dispose_;
    v30 = dispatch_semaphore_create(0);
    v14 = self->_diagsAliveCheckQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__DADiagnosticsRemoteRunner__establishConnection__block_invoke_2;
    block[3] = &unk_27A66EC28;
    v15 = v10;
    v23 = v15;
    v24 = &v25;
    dispatch_async(v14, block);
    v16 = v26[5];
    v17 = dispatch_time(0, 2000000000);
    v18 = dispatch_semaphore_wait(v16, v17);
    v11 = v18 == 0;
    if (!v18)
    {
      [(DADiagnosticsRemoteRunner *)self setXpcConnection:v2];
      [(DADiagnosticsRemoteRunner *)self setRemoteRunnerServer:v15];
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v11 = 0;
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v34, 8);

  return v11;
}

void __49__DADiagnosticsRemoteRunner__establishConnection__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained delegate];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 delegate];
    [v7 remoteRunnerConnectionEndedWithError:v9];

    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 setXpcConnection:0];
  }
}

uint64_t __49__DADiagnosticsRemoteRunner__establishConnection__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__DADiagnosticsRemoteRunner__establishConnection__block_invoke_3;
  v3[3] = &unk_27A66EC00;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 ping:v3];
}

- (void)cancelTestWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  remoteRunnerServer = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (remoteRunnerServer)
  {
    remoteRunnerServer2 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [remoteRunnerServer2 cancelTestWithID:dCopy completion:completionCopy];
  }
}

- (void)createRemoteRunnerDeviceWithSerialNumber:(id)number completion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  remoteRunnerServer = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (remoteRunnerServer)
  {
    remoteRunnerServer2 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [remoteRunnerServer2 createRemoteRunnerDeviceWithSerialNumber:numberCopy completion:completionCopy];
  }
}

- (void)destroyRemoteRunnerDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteRunnerServer = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (remoteRunnerServer)
  {
    remoteRunnerServer2 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [remoteRunnerServer2 destroyRemoteRunnerDeviceWithCompletion:completionCopy];
  }
}

- (void)getReportWithComponents:(id)components completion:(id)completion
{
  componentsCopy = components;
  completionCopy = completion;
  remoteRunnerServer = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (completionCopy && remoteRunnerServer)
  {
    remoteRunnerServer2 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [remoteRunnerServer2 getReportWithComponents:componentsCopy completion:completionCopy];
  }
}

- (void)getReportWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteRunnerServer = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (completionCopy && remoteRunnerServer)
  {
    remoteRunnerServer2 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [remoteRunnerServer2 getReportWithCompletion:completionCopy];
  }
}

- (void)runTestWithID:(id)d name:(id)name description:(id)description parameters:(id)parameters completion:(id)completion
{
  dCopy = d;
  nameCopy = name;
  descriptionCopy = description;
  parametersCopy = parameters;
  completionCopy = completion;
  remoteRunnerServer = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (dCopy && remoteRunnerServer)
  {
    remoteRunnerServer2 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [remoteRunnerServer2 runTestWithID:dCopy name:nameCopy description:descriptionCopy parameters:parametersCopy completion:completionCopy];
  }
}

- (void)ping:(id)ping
{
  pingCopy = ping;
  remoteRunnerServer = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];

  if (remoteRunnerServer)
  {
    remoteRunnerServer2 = [(DADiagnosticsRemoteRunner *)self remoteRunnerServer];
    [remoteRunnerServer2 ping:pingCopy];
  }
}

- (void)remoteRunnerDeviceEnded
{
  delegate = [(DADiagnosticsRemoteRunner *)self delegate];

  if (delegate)
  {
    delegate2 = [(DADiagnosticsRemoteRunner *)self delegate];
    [delegate2 remoteRunnerDeviceEnded];
  }
}

- (void)requestAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  delegate = [(DADiagnosticsRemoteRunner *)self delegate];

  if (delegate)
  {
    delegate2 = [(DADiagnosticsRemoteRunner *)self delegate];
    [delegate2 requestAsset:assetCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)requestUploadAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  delegate = [(DADiagnosticsRemoteRunner *)self delegate];

  if (delegate)
  {
    delegate2 = [(DADiagnosticsRemoteRunner *)self delegate];
    [delegate2 requestUploadAssets:assetsCopy completion:completionCopy];
  }

  else
  {
    delegate2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DADiagnosticsRemoteRunner" code:-6 userInfo:0];
    completionCopy[2](completionCopy, &unk_2884B58F8, delegate2);
  }
}

- (DADiagnosticsRemoteRunnerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end