@interface NEPacketTunnelProvider
- (NEPacketTunnelProvider)initWithVirtualInterfaceType:(int64_t)type;
- (NWTCPConnection)createTCPConnectionThroughTunnelToEndpoint:(NWEndpoint *)remoteEndpoint enableTLS:(BOOL)enableTLS TLSParameters:(NWTLSParameters *)TLSParameters delegate:(id)delegate;
- (NWUDPSession)createUDPSessionThroughTunnelToEndpoint:(NWEndpoint *)remoteEndpoint fromEndpoint:(NWHostEndpoint *)localEndpoint;
- (OS_nw_interface)virtualInterface;
- (id)getTunnelInterface;
- (void)cancelTunnelWithError:(NSError *)error;
- (void)requestSocket:(BOOL)socket interface:(id)interface local:(id)local remote:(id)remote completionHandler:(id)handler;
- (void)setTunnelNetworkSettings:(id)settings completionHandler:(id)handler;
- (void)startTunnelWithOptions:(NSDictionary *)options completionHandler:(void *)completionHandler;
- (void)stopTunnelWithReason:(NEProviderStopReason)reason completionHandler:(void *)completionHandler;
@end

@implementation NEPacketTunnelProvider

- (void)setTunnelNetworkSettings:(id)settings completionHandler:(id)handler
{
  v25[1] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  handlerCopy = handler;
  v9 = settingsCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  iPv4Settings = [v9 IPv4Settings];
  if (!iPv4Settings || ([v9 IPv4Settings], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "configMethod") == 3))
  {
    iPv6Settings = [v9 IPv6Settings];
    if (!iPv6Settings)
    {
      if (iPv4Settings)
      {
      }

      goto LABEL_16;
    }

    v12 = iPv6Settings;
    iPv6Settings2 = [v9 IPv6Settings];
    configMethod = [iPv6Settings2 configMethod];

    if (iPv4Settings)
    {
    }

    if (configMethod == 2)
    {
LABEL_16:
      v21.receiver = self;
      v21.super_class = NEPacketTunnelProvider;
      [(NETunnelProvider *)&v21 setTunnelNetworkSettings:v9 completionHandler:handlerCopy];
      goto LABEL_17;
    }
  }

  else
  {
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"Non-manual IP addressing can only be used with NEEthernetTunnelNetworkSettings";
    v16 = MEMORY[0x1E695DF20];
    v17 = v25;
    v18 = &v24;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_16;
  }

  v15 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E696A578];
  v23 = @"Non-manual IP addressing can only be used with NEEthernetTunnelProvider";
  v16 = MEMORY[0x1E695DF20];
  v17 = &v23;
  v18 = &v22;
LABEL_13:
  v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
  v20 = [v15 errorWithDomain:@"NETunnelProviderErrorDomain" code:1 userInfo:v19];

  handlerCopy[2](handlerCopy, v20);
LABEL_17:
}

- (void)requestSocket:(BOOL)socket interface:(id)interface local:(id)local remote:(id)remote completionHandler:(id)handler
{
  socketCopy = socket;
  v25 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  handlerCopy = handler;
  remoteCopy = remote;
  localCopy = local;
  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = "PFKey";
    v19 = 138412802;
    selfCopy = self;
    if (socketCopy)
    {
      v17 = "IKE";
    }

    v21 = 2080;
    v22 = v17;
    v23 = 2112;
    v24 = interfaceCopy;
    _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_INFO, "%@: Getting %s Socket for Interface %@", &v19, 0x20u);
  }

  context = [(NEProvider *)self context];
  [context requestSocket:socketCopy interface:interfaceCopy local:localCopy remote:remoteCopy completionHandler:handlerCopy];
}

- (void)stopTunnelWithReason:(NEProviderStopReason)reason completionHandler:(void *)completionHandler
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = completionHandler;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2048;
    v11 = reason;
    _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "%@: Stopping with reason %ld", &v8, 0x16u);
  }

  v6[2](v6);
}

- (void)startTunnelWithOptions:(NSDictionary *)options completionHandler:(void *)completionHandler
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = options;
  v7 = completionHandler;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@: Starting with options %@", &v9, 0x16u);
  }

  v7[2](v7, 0);
}

- (void)cancelTunnelWithError:(NSError *)error
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = error;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: canceling with error %@", &v7, 0x16u);
  }

  context = [(NEProvider *)self context];
  [context cancelWithError:v4];
}

- (NWUDPSession)createUDPSessionThroughTunnelToEndpoint:(NWEndpoint *)remoteEndpoint fromEndpoint:(NWHostEndpoint *)localEndpoint
{
  v6 = localEndpoint;
  v7 = MEMORY[0x1E6977E40];
  v8 = remoteEndpoint;
  v9 = objc_alloc_init(v7);
  if (v6)
  {
    v10 = MEMORY[0x1E6977E08];
    hostname = [(NWHostEndpoint *)v6 hostname];
    port = [(NWHostEndpoint *)v6 port];
    v13 = [v10 endpointWithHostname:hostname port:port];
    [v9 setLocalAddress:v13];
  }

  getTunnelInterface = [(NEPacketTunnelProvider *)self getTunnelInterface];
  [v9 setRequiredInterface:getTunnelInterface];

  v15 = [objc_alloc(MEMORY[0x1E6977E70]) initWithEndpoint:v8 parameters:v9];

  return v15;
}

- (id)getTunnelInterface
{
  if (self)
  {
    packetFlow = [self packetFlow];
    if (packetFlow)
    {
      v3 = packetFlow[11];

      if (!v3)
      {
        goto LABEL_10;
      }

      v4 = objc_alloc(MEMORY[0x1E6977E30]);
      packetFlow2 = [self packetFlow];
      v6 = packetFlow2;
      if (packetFlow2 && (v7 = *(packetFlow2 + 88)) != 0)
      {
        v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (v7 + 265), 0x600u);
      }

      else
      {
        v8 = 0;
      }

      v3 = [v4 initWithInterfaceName:v8];
    }

    else
    {
      v6 = 0;
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_10:

  return v3;
}

- (NWTCPConnection)createTCPConnectionThroughTunnelToEndpoint:(NWEndpoint *)remoteEndpoint enableTLS:(BOOL)enableTLS TLSParameters:(NWTLSParameters *)TLSParameters delegate:(id)delegate
{
  v7 = enableTLS;
  v10 = TLSParameters;
  v11 = MEMORY[0x1E6977E40];
  v12 = delegate;
  v13 = remoteEndpoint;
  v14 = objc_alloc_init(v11);
  [v14 setEnableTLS:v7];
  if (v10 && v7)
  {
    tLSSessionID = [(NWTLSParameters *)v10 TLSSessionID];
    [v14 setTLSSessionID:tLSSessionID];

    sSLCipherSuites = [(NWTLSParameters *)v10 SSLCipherSuites];
    [v14 setSSLCipherSuites:sSLCipherSuites];

    [v14 setMinimumSSLProtocolVersion:{-[NWTLSParameters minimumSSLProtocolVersion](v10, "minimumSSLProtocolVersion")}];
    [v14 setMaximumSSLProtocolVersion:{-[NWTLSParameters maximumSSLProtocolVersion](v10, "maximumSSLProtocolVersion")}];
  }

  getTunnelInterface = [(NEPacketTunnelProvider *)self getTunnelInterface];
  [v14 setRequiredInterface:getTunnelInterface];

  v18 = [objc_alloc(MEMORY[0x1E6977E68]) initWithEndpoint:v13 parameters:v14 delegate:v12];

  return v18;
}

- (OS_nw_interface)virtualInterface
{
  packetFlow = [(NEPacketTunnelProvider *)self packetFlow];
  if (packetFlow)
  {
    v4 = packetFlow[11];

    if (!v4)
    {
      goto LABEL_7;
    }

    packetFlow2 = [(NEPacketTunnelProvider *)self packetFlow];
    v6 = packetFlow2;
    if (packetFlow2)
    {
      packetFlow2 = *(packetFlow2 + 88);
    }

    NEVirtualInterfaceGetIndex(packetFlow2);
    v4 = nw_interface_create_with_index();
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

LABEL_7:

  return v4;
}

- (NEPacketTunnelProvider)initWithVirtualInterfaceType:(int64_t)type
{
  v13.receiver = self;
  v13.super_class = NEPacketTunnelProvider;
  v4 = [(NEProvider *)&v13 initAllowUnentitled:0];
  if (v4)
  {
    v5 = [NEPacketTunnelFlow alloc];
    if (v5)
    {
      v14.receiver = v5;
      v14.super_class = NEPacketTunnelFlow;
      v6 = [(NEProvider *)&v14 init];
      if (v6)
      {
        v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);
        v9 = dispatch_queue_create("NEPacketTunnelFlow queue", v8);
        context = v6->super.super._context;
        v6->super.super._context = v9;

        v6[1].super.super._defaultPath = type;
      }
    }

    else
    {
      v6 = 0;
    }

    packetFlow = v4->_packetFlow;
    v4->_packetFlow = v6;
  }

  return v4;
}

@end