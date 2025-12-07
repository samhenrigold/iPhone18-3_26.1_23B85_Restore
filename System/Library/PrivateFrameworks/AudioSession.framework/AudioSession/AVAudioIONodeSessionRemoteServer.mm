@interface AVAudioIONodeSessionRemoteServer
- (AVAudioIONodeSessionRemoteServer)init;
- (BOOL)invalidateIONode:(unsigned int)node error:(id *)error;
- (BOOL)setIONode:(unsigned int)node playState:(unsigned int)state modes:(unsigned int)modes error:(id *)error;
- (id).cxx_construct;
- (id)getPropertiesIONode:(unsigned int)node properties:(id)properties status:(id *)status error:(id *)error;
- (id)setPropertiesIONode:(unsigned int)node values:(id)values error:(id *)error;
- (unsigned)createIONodeWithSourceSession:(unsigned int)session sessionOwnerPID:(id)d playerType:(unsigned int)type error:(id *)error;
- (unsigned)reconfigureIONode:(unsigned int)node withSourceSession:(unsigned int)session sessionOwnerPID:(id)d playerType:(unsigned int)type error:(id *)error;
@end

@implementation AVAudioIONodeSessionRemoteServer

- (AVAudioIONodeSessionRemoteServer)init
{
  v3.receiver = self;
  v3.super_class = AVAudioIONodeSessionRemoteServer;
  if ([(AVAudioIONodeSessionRemoteServer *)&v3 init])
  {
    _ZNSt3__115allocate_sharedB8ne200100INS_15recursive_mutexENS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return 0;
}

- (unsigned)createIONodeWithSourceSession:(unsigned int)session sessionOwnerPID:(id)d playerType:(unsigned int)type error:(id *)error
{
  v7 = *&type;
  v8 = *&session;
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  avas::client::XPCConnection::sync_message<unsigned int>(self->_xpcConnection.__ptr_, &v16);
  v11 = objc_autoreleasePoolPush();
  v12 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},unsigned int>::sync_proxy(&v16);
  v13 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},unsigned int>::reply(&v16);
  [v12 createIONodeWithSourceSession:v8 sessionOwnerPID:dCopy playerType:v7 reply:v13];

  objc_autoreleasePoolPop(v11);
  if (error)
  {
    *error = v18;
  }

  v14 = v19;

  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::~__value_func[abi:ne200100](&v17);
  return v14;
}

- (unsigned)reconfigureIONode:(unsigned int)node withSourceSession:(unsigned int)session sessionOwnerPID:(id)d playerType:(unsigned int)type error:(id *)error
{
  v8 = *&type;
  v9 = *&session;
  v10 = *&node;
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  avas::client::XPCConnection::sync_message<unsigned int>(self->_xpcConnection.__ptr_, &v18);
  v13 = objc_autoreleasePoolPush();
  v14 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},unsigned int>::sync_proxy(&v18);
  v15 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},unsigned int>::reply(&v18);
  [v14 reconfigureIONode:v10 withSourceSession:v9 sessionOwnerPID:dCopy playerType:v8 reply:v15];

  objc_autoreleasePoolPop(v13);
  if (error)
  {
    *error = v20;
  }

  v16 = v21;

  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned int> &&)>::~__value_func[abi:ne200100](&v19);
  return v16;
}

- (BOOL)invalidateIONode:(unsigned int)node error:(id *)error
{
  v5 = *&node;
  v14 = *MEMORY[0x1E69E9840];
  avas::client::XPCConnection::sync_message<>(self->_xpcConnection.__ptr_, &v11);
  v6 = objc_autoreleasePoolPush();
  v7 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::sync_proxy(&v11);
  v8 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(&v11);
  [v7 invalidateIONode:v5 reply:v8];

  objc_autoreleasePoolPop(v6);
  if (error)
  {
    *error = v13;
  }

  v9 = v13 == 0;

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v12);
  return v9;
}

- (BOOL)setIONode:(unsigned int)node playState:(unsigned int)state modes:(unsigned int)modes error:(id *)error
{
  v7 = *&modes;
  v8 = *&state;
  v9 = *&node;
  v18 = *MEMORY[0x1E69E9840];
  avas::client::XPCConnection::sync_message<>(self->_xpcConnection.__ptr_, &v15);
  v10 = objc_autoreleasePoolPush();
  v11 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::sync_proxy(&v15);
  v12 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(&v15);
  [v11 setIONode:v9 playState:v8 modes:v7 reply:v12];

  objc_autoreleasePoolPop(v10);
  if (error)
  {
    *error = v17;
  }

  v13 = v17 == 0;

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v16);
  return v13;
}

- (id)setPropertiesIONode:(unsigned int)node values:(id)values error:(id *)error
{
  v6 = *&node;
  v18 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  avas::client::XPCConnection::sync_message<NSArray * {__strong}>(self->_xpcConnection.__ptr_, &v14);
  v9 = objc_autoreleasePoolPush();
  v10 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(&v14);
  v11 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},NSArray * {__strong}>::reply(&v14);
  [v10 setPropertiesIONode:v6 values:valuesCopy reply:v11];

  objc_autoreleasePoolPop(v9);
  if (error)
  {
    *error = v16;
  }

  v12 = v17;

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](&v15);

  return v12;
}

- (id)getPropertiesIONode:(unsigned int)node properties:(id)properties status:(id *)status error:(id *)error
{
  v8 = *&node;
  v21 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  avas::client::XPCConnection::sync_message<NSDictionary * {__strong},NSDictionary * {__strong}>(self->_xpcConnection.__ptr_, &v16);
  v11 = objc_autoreleasePoolPush();
  v12 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},NSDictionary * {__strong},NSDictionary *>::sync_proxy(&v16);
  v13 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},NSDictionary * {__strong},NSDictionary *>::reply(&v16);
  [v12 getPropertiesIONode:v8 properties:propertiesCopy reply:v13];

  objc_autoreleasePoolPop(v11);
  if (status)
  {
    *status = v20;
  }

  if (error)
  {
    *error = v18;
  }

  v14 = v19;

  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong},NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](&v17);

  return v14;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end