@interface NEExtensionPacketTunnelProviderHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)fetchVirtualInterfaceTypeWithCompletionHandler:(id)handler;
- (void)requestSocket:(BOOL)socket interface:(id)interface local:(id)local remote:(id)remote completionHandler:(id)handler;
- (void)setAppUUIDMap:(id)map;
- (void)setupVirtualInterface:(id)interface;
- (void)validateWithCompletionHandler:(id)handler;
@end

@implementation NEExtensionPacketTunnelProviderHostContext

- (void)validateWithCompletionHandler:(id)handler
{
  v3.receiver = self;
  v3.super_class = NEExtensionPacketTunnelProviderHostContext;
  [(NEExtensionProviderHostContext *)&v3 validateWithCompletionHandler:handler];
}

- (void)setAppUUIDMap:(id)map
{
  mapCopy = map;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext setAppUUIDMap:mapCopy];
}

- (void)requestSocket:(BOOL)socket interface:(id)interface local:(id)local remote:(id)remote completionHandler:(id)handler
{
  socketCopy = socket;
  v30 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  handlerCopy = handler;
  remoteCopy = remote;
  localCopy = local;
  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      Property = objc_getProperty(self, v17, 64, 1);
    }

    else
    {
      Property = 0;
    }

    v23 = Property;
    *buf = 138412802;
    selfCopy = self;
    v26 = 2112;
    v27 = interfaceCopy;
    v28 = 1024;
    v29 = [v23 pid];
    _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "%@: requestSocket %@ (pid %d)", buf, 0x1Cu);
  }

  delegate = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa delegate];
  if (self)
  {
    v20 = objc_getProperty(self, v18, 64, 1);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  [delegate extension:self didRequestSocket:socketCopy interface:interfaceCopy local:localCopy remote:remoteCopy effectivePID:objc_msgSend(v21 completionHandler:{"pid"), handlerCopy}];
}

- (void)fetchVirtualInterfaceTypeWithCompletionHandler:(id)handler
{
  v9 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@: fetchVirtualInterfaceTypeWithCompletionHandler", &v7, 0xCu);
  }

  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext fetchVirtualInterfaceTypeWithCompletionHandler:handlerCopy];
}

- (void)setupVirtualInterface:(id)interface
{
  interfaceCopy = interface;
  vendorContext = [(NEExtensionProviderHostContext *)&self->super.super.super.super.isa vendorContext];
  [vendorContext setupVirtualInterface:interfaceCopy];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_2563 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_2563, &__block_literal_global_71);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_2564;

  return v3;
}

uint64_t __77__NEExtensionPacketTunnelProviderHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1D80];
  v1 = _extensionAuxiliaryHostProtocol_protocol_2564;
  _extensionAuxiliaryHostProtocol_protocol_2564 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_2566 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_2566, &__block_literal_global_2567);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_2568;

  return v3;
}

uint64_t __79__NEExtensionPacketTunnelProviderHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1CE0];
  v1 = _extensionAuxiliaryVendorProtocol_protocol_2568;
  _extensionAuxiliaryVendorProtocol_protocol_2568 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end