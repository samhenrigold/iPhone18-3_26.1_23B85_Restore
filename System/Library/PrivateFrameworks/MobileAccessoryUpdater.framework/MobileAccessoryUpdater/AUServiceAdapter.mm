@interface AUServiceAdapter
+ (id)sharedInstance;
- (id)_init;
- (void)accessoryDisconnected:(id)disconnected;
- (void)applyFirmwareWithOptions:(id)options;
- (void)bootstrapWithOptions:(id)options;
- (void)deviceClassAttached:(id)attached options:(id)options withReply:(id)reply;
- (void)didApply:(BOOL)apply info:(id)info error:(id)error;
- (void)didBootstrap:(BOOL)bootstrap info:(id)info error:(id)error;
- (void)didDownload:(BOOL)download info:(id)info error:(id)error;
- (void)didFind:(BOOL)find info:(id)info updateAvailable:(BOOL)available needsDownload:(BOOL)download error:(id)error;
- (void)didFinish:(BOOL)finish info:(id)info error:(id)error;
- (void)didPrepare:(BOOL)prepare info:(id)info error:(id)error;
- (void)downloadFirmwareWithOptions:(id)options;
- (void)findFirmwareWithOptions:(id)options remote:(BOOL)remote;
- (void)finishWithOptions:(id)options;
- (void)issueNotification:(id)notification;
- (void)personalizationRequest:(id)request;
- (void)personalizationResponse:(id)response response:(id)a4 status:(id)status;
- (void)prepareFirmwareWithOptions:(id)options;
- (void)progress:(double)progress;
- (void)queryDeviceList:(id)list;
- (void)reportAnalytics:(id)analytics info:(id)info;
@end

@implementation AUServiceAdapter

- (id)_init
{
  v5.receiver = self;
  v5.super_class = AUServiceAdapter;
  v2 = [(AUServiceAdapter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_activeConnection = 0;
  }

  else
  {
    NSLog(&cfstr_SErrorCouldNot.isa, "[AUServiceAdapter _init]");
  }

  return v3;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__AUServiceAdapter_sharedInstance__block_invoke;
  block[3] = &unk_2798E3658;
  block[4] = self;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  return sharedInstance_sharedInstance;
}

void *__34__AUServiceAdapter_sharedInstance__block_invoke(uint64_t a1)
{
  result = [objc_alloc(*(a1 + 32)) _init];
  sharedInstance_sharedInstance = result;
  return result;
}

- (void)deviceClassAttached:(id)attached options:(id)options withReply:(id)reply
{
  v12 = 0;
  v9 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (([(objc_class *)v9 conformsToProtocol:&unk_286AB9150]& 1) != 0)
  {
    updater = [[v9 alloc] initWithDeviceClass:attached delegate:self info:&v12 options:options];
    self->_updater = updater;
    v11 = v12;
  }

  else
  {
    NSLog(&cfstr_SErrorPrincipa.isa, "[AUServiceAdapter deviceClassAttached:options:withReply:]");
    v11 = 0;
    updater = self->_updater;
  }

  (*(reply + 2))(reply, updater != 0, v11);
}

- (void)bootstrapWithOptions:(id)options
{
  updater = self->_updater;
  if (updater)
  {

    [(FudPlugin *)updater bootstrapWithOptions:options];
  }

  else
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, options, "[AUServiceAdapter bootstrapWithOptions:]");
  }
}

- (void)findFirmwareWithOptions:(id)options remote:(BOOL)remote
{
  updater = self->_updater;
  if (updater)
  {

    [(FudPlugin *)updater findFirmwareWithOptions:options remote:remote];
  }

  else
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, options, remote, "[AUServiceAdapter findFirmwareWithOptions:remote:]");
  }
}

- (void)downloadFirmwareWithOptions:(id)options
{
  updater = self->_updater;
  if (updater)
  {

    [(FudPlugin *)updater downloadFirmwareWithOptions:options];
  }

  else
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, options, "[AUServiceAdapter downloadFirmwareWithOptions:]");
  }
}

- (void)prepareFirmwareWithOptions:(id)options
{
  updater = self->_updater;
  if (updater)
  {

    [(FudPlugin *)updater prepareFirmwareWithOptions:options];
  }

  else
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, options, "[AUServiceAdapter prepareFirmwareWithOptions:]");
  }
}

- (void)applyFirmwareWithOptions:(id)options
{
  updater = self->_updater;
  if (updater)
  {

    [(FudPlugin *)updater applyFirmwareWithOptions:options];
  }

  else
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, options, "[AUServiceAdapter applyFirmwareWithOptions:]");
  }
}

- (void)finishWithOptions:(id)options
{
  updater = self->_updater;
  if (updater)
  {

    [(FudPlugin *)updater finishWithOptions:options];
  }

  else
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, options, "[AUServiceAdapter finishWithOptions:]");
  }
}

- (void)queryDeviceList:(id)list
{
  v8 = 0;
  updater = self->_updater;
  if (!updater)
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, "[AUServiceAdapter queryDeviceList:]");
LABEL_7:
    v7 = 0;
    goto LABEL_4;
  }

  if (([(FudPlugin *)updater conformsToProtocol:&unk_286AB91B0]& 1) == 0)
  {
    NSLog(&cfstr_SPluginDoesSup.isa, v6, "[AUServiceAdapter queryDeviceList:]");
    goto LABEL_7;
  }

  [(FudPlugin *)self->_updater queryDeviceList:&v8];
  v7 = v8;
LABEL_4:
  (*(list + 2))(list, v7);
}

- (void)personalizationResponse:(id)response response:(id)a4 status:(id)status
{
  updater = self->_updater;
  if (updater)
  {
    if (([(FudPlugin *)updater conformsToProtocol:&unk_286AB9210]& 1) != 0)
    {
      v14 = self->_updater;

      [(FudPlugin *)v14 personalizationResponse:response response:a4 status:status];
    }

    else
    {
      NSLog(&cfstr_SPluginDoesSup_0.isa, v10, v11, v12, v13, "[AUServiceAdapter personalizationResponse:response:status:]");
    }
  }

  else
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, response, a4, status, "[AUServiceAdapter personalizationResponse:response:status:]");
  }
}

- (void)accessoryDisconnected:(id)disconnected
{
  v4 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global];

  [v4 accessoryDisconnected:disconnected];
}

- (void)didBootstrap:(BOOL)bootstrap info:(id)info error:(id)error
{
  bootstrapCopy = bootstrap;
  v8 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_171];

  [v8 didBootstrap:bootstrapCopy info:info error:error];
}

- (void)didFind:(BOOL)find info:(id)info updateAvailable:(BOOL)available needsDownload:(BOOL)download error:(id)error
{
  downloadCopy = download;
  availableCopy = available;
  findCopy = find;
  v12 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_173];

  [v12 didFind:findCopy info:info updateAvailable:availableCopy needsDownload:downloadCopy error:error];
}

- (void)didDownload:(BOOL)download info:(id)info error:(id)error
{
  downloadCopy = download;
  v8 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_175];

  [v8 didDownload:downloadCopy info:info error:error];
}

- (void)didPrepare:(BOOL)prepare info:(id)info error:(id)error
{
  prepareCopy = prepare;
  v8 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_177];

  [v8 didPrepare:prepareCopy info:info error:error];
}

- (void)didApply:(BOOL)apply info:(id)info error:(id)error
{
  applyCopy = apply;
  v8 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_179];

  [v8 didApply:applyCopy info:info error:error];
}

- (void)didFinish:(BOOL)finish info:(id)info error:(id)error
{
  finishCopy = finish;
  v8 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_181];

  [v8 didFinish:finishCopy info:info error:error];
}

- (void)personalizationRequest:(id)request
{
  v4 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_183];

  [v4 personalizationRequest:request];
}

- (void)progress:(double)progress
{
  v4 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_185];

  [v4 progress:progress];
}

- (void)reportAnalytics:(id)analytics info:(id)info
{
  v6 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_187];

  [v6 reportAnalytics:analytics info:info];
}

- (void)issueNotification:(id)notification
{
  v4 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_189];

  [v4 issueNotification:notification];
}

@end