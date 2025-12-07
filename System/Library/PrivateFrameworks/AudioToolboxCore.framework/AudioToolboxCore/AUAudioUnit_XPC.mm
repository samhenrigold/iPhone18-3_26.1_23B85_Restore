@interface AUAudioUnit_XPC
- ($115C4C562B26FF47E01F9F4EA65B5887)remoteProcessAuditToken;
- (BOOL)_setBusCount:(unint64_t)count scope:(unsigned int)scope error:(id *)error;
- (BOOL)allocateRenderResourcesAndReturnError:(id *)error;
- (BOOL)deleteUserPreset:(id)preset error:(id *)error;
- (BOOL)disableProfile:(id)profile cable:(unsigned __int8)cable onChannel:(unsigned __int8)channel error:(id *)error;
- (BOOL)enableProfile:(id)profile cable:(unsigned __int8)cable onChannel:(unsigned __int8)channel error:(id *)error;
- (BOOL)isLocalCachingDisabled;
- (BOOL)providesUserInterface;
- (BOOL)saveUserPreset:(id)preset error:(id *)error;
- (float)getV2Parameter:(unint64_t)parameter sequenceNumber:(unsigned int)number;
- (id).cxx_construct;
- (id)_getBus:(unsigned int)bus scope:(unsigned int)scope error:(id *)error;
- (id)_getInvalidationNotificationInfo;
- (id)_getValueForKey:(id)key;
- (id)_getValueForProperty:(id)property error:(id *)error;
- (id)audioUnitInstanceUUID;
- (id)inputBusses;
- (id)internalRenderBlock;
- (id)messageChannelFor:(id)for;
- (id)outputBusses;
- (id)parameterTree;
- (id)parametersForOverviewWithCount:(int64_t)count;
- (id)presetStateFor:(id)for error:(id *)error;
- (id)profileStateForCable:(unsigned __int8)cable channel:(unsigned __int8)channel;
- (id)speechVoices;
- (id)supportedViewConfigurations:(id)configurations;
- (id)userPresets;
- (id)valueForUndefinedKey:(id)key;
- (void)_doOpen:(id)open completion:(id)completion;
- (void)_invalidatePipePoolAndUser;
- (void)_parameterTreeChanged;
- (void)_refreshBusses:(unsigned int)busses;
- (void)_setState:(id)state forKey:(id)key error:(id *)error;
- (void)_setValue:(id)value forProperty:(id)property error:(id *)error;
- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (void)cancelSpeechRequest;
- (void)dealloc;
- (void)didCrash:(id)crash;
- (void)didInvalidate;
- (void)internalDeallocateRenderResources;
- (void)invalidateAllParameters;
- (void)propertiesChanged:(id)changed;
- (void)remoteReset;
- (void)removeObserver:(id)observer forKeyPath:(id)path;
- (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context;
- (void)reset;
- (void)selectViewConfiguration:(id)configuration;
- (void)setLocalCachingDisabled:(BOOL)disabled;
- (void)setMusicalContextBlock:(id)block;
- (void)setTransportStateBlock:(id)block;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)synthesizeSpeechRequest:(id)request;
@end

@implementation AUAudioUnit_XPC

- (id).cxx_construct
{
  MEMORY[0x193ADEF60](self + 584, a2);
  *(self + 82) = 850045863;
  *(self + 664) = 0u;
  *(self + 680) = 0u;
  *(self + 696) = 0u;
  *(self + 89) = 0;
  *(self + 93) = 850045863;
  *(self + 47) = 0u;
  *(self + 48) = 0u;
  *(self + 49) = 0u;
  *(self + 100) = 0;
  *(self + 103) = 0;
  *(self + 105) = 0;
  *(self + 106) = 0;
  *(self + 104) = 0;
  *(self + 107) = 0;
  *(self + 108) = 0;
  *(self + 872) = 0;
  *(self + 944) = 0;
  *(self + 484) = 0;
  return self;
}

- (void)setLocalCachingDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v7[6] = *MEMORY[0x1E69E9840];
  *(self + 484) = disabled | 0x100;
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::sync_message(&v6, *(self + 72));
  v4 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::sync_proxy(&v6);
  v5 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::reply(&v6);
  [v4 localCachingDisabled:1 newValue:disabledCopy reply:v5];

  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v7);
}

- (BOOL)isLocalCachingDisabled
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = self + 968;
  if ((*(self + 969) & 1) == 0)
  {
    caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::sync_message(&v6, *(self + 72));
    v3 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::sync_proxy(&v6);
    v4 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},BOOL>::reply(&v6);
    [v3 localCachingDisabled:0 newValue:0 reply:v4];

    *v2 = v8 | 0x100;
    std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](v7);

    if (!v2[1])
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  return *v2;
}

- (id)audioUnitInstanceUUID
{
  v7[6] = *MEMORY[0x1E69E9840];
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::sync_message(&v6, *(self + 72));
  v2 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::sync_proxy(&v6);
  v3 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSString * {__strong}>::reply(&v6);
  [v2 retrieveInstanceUUID:v3];

  v4 = v7[5];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSString * {__strong}> &&)>::~__value_func[abi:ne200100](v7);

  return v4;
}

- (id)speechVoices
{
  v8[6] = *MEMORY[0x1E69E9840];
  objc_msgSend_componentDescription(self, a2);
  if (v7 == 1635087216)
  {
    caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(&v7, *(self + 72));
    v3 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(&v7);
    v4 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::reply(&v7);
    [v3 getSpeechVoices:v4];

    v5 = v8[5];
    std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v8);
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (void)cancelSpeechRequest
{
  v8[4] = *MEMORY[0x1E69E9840];
  objc_msgSend_componentDescription(self, a2);
  if (v7 == 1635087216)
  {
    v3 = *(self + 72);
    v6[0] = &unk_1F033F978;
    v6[1] = &__block_literal_global_221;
    v6[3] = v6;
    caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v7, v3, v6);
    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v6);
    v4 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v7);
    v5 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v7);
    [v4 cancelSpeechRequest:v5];

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v8);
  }
}

- (void)synthesizeSpeechRequest:(id)request
{
  v10[4] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  objc_msgSend_componentDescription(self);
  if (v9 == 1635087216)
  {
    v5 = *(self + 72);
    v8[0] = &unk_1F033F978;
    v8[1] = &__block_literal_global_219;
    v8[3] = v8;
    caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v9, v5, v8);
    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v8);
    v6 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v9);
    v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v9);
    [v6 synthesizeSpeechRequest:requestCopy reply:v7];

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v10);
  }
}

- (id)messageChannelFor:(id)for
{
  v26 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v5 = *(self + 72);
  *aBlock = &unk_1F032CCB8;
  *&aBlock[8] = &v19;
  *&aBlock[24] = aBlock;
  v6 = v5;
  v19 = v6;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::__value_func[abi:ne200100](v20, aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100](aBlock);
  v21 = 0;
  v22 = 0;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::__value_func[abi:ne200100](v25, v20);
  v7 = v19;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 3321888768;
  *&aBlock[16] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP21NSXPCListenerEndpointEE10sync_proxyEv_block_invoke;
  *&aBlock[24] = &__block_descriptor_64_ea8_32c84_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP21NSXPCListenerEndpointEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::__value_func[abi:ne200100](v24, v25);
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100](v24);
  v9 = std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100](v25);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::__value_func[abi:ne200100](v9, v20);
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 3321888768;
  *&aBlock[16] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP21NSXPCListenerEndpointEE5replyEv_block_invoke;
  *&aBlock[24] = &__block_descriptor_64_ea8_32c84_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP21NSXPCListenerEndpointEEEEEE_e43_v24__0__NSError_8__NSXPCListenerEndpoint_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::__value_func[abi:ne200100](v24, v25);
  v10 = _Block_copy(aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100](v24);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100](v25);
  [v8 getCustomMessageChannelFor:forCopy reply:v10];

  v11 = v22;
  v12 = v11;
  v13 = v21;
  if (!v21)
  {
    if (v11)
    {
      v14 = [[AUMessageChannel_XPC alloc] initWithListenerEndpoint:v11];
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!kAUExtensionScope)
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v14 = *kAUExtensionScope;
  if (v14)
  {
LABEL_8:
    v16 = v14;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v13;
      *aBlock = 136315650;
      *&aBlock[4] = "AUAudioUnit_XPC.mm";
      *&aBlock[12] = 1024;
      *&aBlock[14] = 1345;
      *&aBlock[18] = 2112;
      *&aBlock[20] = v17;
      _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to receive messageChannel with error: %@", aBlock, 0x1Cu);
    }

LABEL_11:
    v14 = 0;
  }

LABEL_12:

  std::__function::__value_func<void ()(NSError *,std::tuple<NSXPCListenerEndpoint * {__strong}> &&)>::~__value_func[abi:ne200100](v20);

  return v14;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)remoteProcessAuditToken
{
  result = *(self + 72);
  if (result)
  {
    return objc_msgSend_auditToken(result, a3);
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (id)userPresets
{
  v23 = *MEMORY[0x1E69E9840];
  if (![(AUAudioUnit *)self supportsUserPresets])
  {
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_14;
  }

  v3 = *(self + 72);
  *aBlock = &unk_1F032CC10;
  *&aBlock[8] = &v16;
  *&aBlock[24] = aBlock;
  v4 = v3;
  v16 = v4;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::__value_func[abi:ne200100](v17, aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100](aBlock);
  v18 = 0;
  obj = 0;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::__value_func[abi:ne200100](v22, v17);
  v5 = v16;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 3321888768;
  *&aBlock[16] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayIP17AUAudioUnitPresetEEE10sync_proxyEv_block_invoke;
  *&aBlock[24] = &__block_descriptor_64_ea8_32c91_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayIP17AUAudioUnitPresetEEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::__value_func[abi:ne200100](v21, v22);
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100](v21);
  v7 = std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::__value_func[abi:ne200100](v7, v17);
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 3321888768;
  *&aBlock[16] = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayIP17AUAudioUnitPresetEEE5replyEv_block_invoke;
  *&aBlock[24] = &__block_descriptor_64_ea8_32c91_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayIP17AUAudioUnitPresetEEEEEEE_e29_v24__0__NSError_8__NSArray_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::__value_func[abi:ne200100](v21, v22);
  v8 = _Block_copy(aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100](v21);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  [v6 loadUserPresets:v8];

  objc_storeStrong(self + 120, obj);
  v9 = v18;
  if (v18)
  {
    if (kAUExtensionScope)
    {
      v10 = *kAUExtensionScope;
      if (!v10)
      {
LABEL_12:
        v11 = MEMORY[0x1E695E0F0];
        goto LABEL_13;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    v13 = v10;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v9;
      *aBlock = 136315650;
      *&aBlock[4] = "AUAudioUnit_XPC.mm";
      *&aBlock[12] = 1024;
      *&aBlock[14] = 1317;
      *&aBlock[18] = 2112;
      *&aBlock[20] = v14;
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to load user presets: %@", aBlock, 0x1Cu);
    }

    goto LABEL_12;
  }

  v11 = *(self + 120);
LABEL_13:

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<AUAudioUnitPreset *> * {__strong}> &&)>::~__value_func[abi:ne200100](v17);
LABEL_14:

  return v11;
}

- (id)presetStateFor:(id)for error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  forCopy = for;
  if ([(AUAudioUnit *)self supportsUserPresets])
  {
    v7 = *(self + 72);
    aBlock = &unk_1F032CB68;
    v21 = &v16;
    p_aBlock = &aBlock;
    v8 = v7;
    v16 = v8;
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::__value_func[abi:ne200100](v17, &aBlock);

    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100](&aBlock);
    v18 = 0;
    v19 = 0;
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::__value_func[abi:ne200100](v25, v17);
    v9 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 3321888768;
    v22 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEE10sync_proxyEv_block_invoke;
    p_aBlock = &__block_descriptor_64_ea8_32c101_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEEEEEE_e17_v16__0__NSError_8l;
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::__value_func[abi:ne200100](v24, v25);
    v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100](v24);
    v11 = std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100](v25);
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::__value_func[abi:ne200100](v11, v17);
    aBlock = MEMORY[0x1E69E9820];
    v21 = 3321888768;
    v22 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEE5replyEv_block_invoke;
    p_aBlock = &__block_descriptor_64_ea8_32c101_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEEEEEE_e34_v24__0__NSError_8__NSDictionary_16l;
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::__value_func[abi:ne200100](v24, v25);
    v12 = _Block_copy(&aBlock);
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100](v24);
    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100](v25);
    [v10 presetStateFor:forCopy reply:v12];

    if (error)
    {
      *error = v18;
    }

    v13 = v19;
    if (v18)
    {
      error = 0;
    }

    else
    {
      error = v19;
    }

    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary<NSString *,objc_object *> * {__strong}> &&)>::~__value_func[abi:ne200100](v17);
  }

  else if (error)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10850 userInfo:0];
    *error = v14;

    error = 0;
  }

  return error;
}

- (BOOL)deleteUserPreset:(id)preset error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  presetCopy = preset;
  if ([(AUAudioUnit *)self supportsUserPresets])
  {
    caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(&v11, *(self + 72));
    v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v11);
    v8 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v11);
    [v7 deleteUserPreset:presetCopy reply:v8];

    if (error)
    {
      *error = v13;
    }

    LOBYTE(error) = v13 == 0;

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v12);
  }

  else if (error)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10850 userInfo:0];
    *error = v9;

    LOBYTE(error) = 0;
  }

  return error;
}

- (BOOL)saveUserPreset:(id)preset error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  presetCopy = preset;
  if ([(AUAudioUnit *)self supportsUserPresets])
  {
    caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(&v12, *(self + 72));
    v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v12);
    fullStateForDocument = [(AUAudioUnit *)self fullStateForDocument];
    v9 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v12);
    [v7 saveUserPreset:presetCopy state:fullStateForDocument reply:v9];

    if (error)
    {
      *error = v14;
    }

    LOBYTE(error) = v14 == 0;

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v13);
  }

  else if (error)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10850 userInfo:0];
    *error = v10;

    LOBYTE(error) = 0;
  }

  return error;
}

- (void)_setState:(id)state forKey:(id)key error:(id *)error
{
  stateCopy = state;
  keyCopy = key;
  [(AUAudioUnit_XPC *)self invalidateAllParameters];
  v9 = [AUAudioUnitProperty propertyWithKey:keyCopy];
  [(AUAudioUnit_XPC *)self _setValue:stateCopy forProperty:v9 error:error];
}

- (void)invalidateAllParameters
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(self + 119);
  if (v2)
  {
    allParameters = [v2 allParameters];
  }

  else
  {
    allParameters = MEMORY[0x1E695E0F0];
  }

  v4 = [allParameters countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allParameters);
        }

        [*(*(&v7 + 1) + 8 * i) setLocalValueStale:{1, v7}];
      }

      v4 = [allParameters countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)disableProfile:(id)profile cable:(unsigned __int8)cable onChannel:(unsigned __int8)channel error:(id *)error
{
  channelCopy = channel;
  cableCopy = cable;
  v19 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(&v16, *(self + 72));
  v11 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v16);
  v12 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v16);
  [v11 disableProfile:profileCopy cable:cableCopy onChannel:channelCopy reply:v12];

  v13 = v18;
  if (v13 && error)
  {
    v13 = v13;
    *error = v13;
  }

  v14 = v13 == 0;

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v17);
  return v14;
}

- (BOOL)enableProfile:(id)profile cable:(unsigned __int8)cable onChannel:(unsigned __int8)channel error:(id *)error
{
  channelCopy = channel;
  cableCopy = cable;
  v19 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(&v16, *(self + 72));
  v11 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v16);
  v12 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v16);
  [v11 enableProfile:profileCopy cable:cableCopy onChannel:channelCopy reply:v12];

  v13 = v18;
  if (v13 && error)
  {
    v13 = v13;
    *error = v13;
  }

  v14 = v13 == 0;

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v17);
  return v14;
}

- (id)profileStateForCable:(unsigned __int8)cable channel:(unsigned __int8)channel
{
  channelCopy = channel;
  cableCopy = cable;
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(self + 72);
  aBlock = &unk_1F032CAC0;
  v19 = &v14;
  p_aBlock = &aBlock;
  v7 = v6;
  v14 = v7;
  std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::__value_func[abi:ne200100](v15, &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::~__value_func[abi:ne200100](&aBlock);
  v16 = 0;
  v17 = 0;
  std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::__value_func[abi:ne200100](v23, v15);
  v8 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 3321888768;
  v20 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP18MIDICIProfileStateEE10sync_proxyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c81_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP18MIDICIProfileStateEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::__value_func[abi:ne200100](v22, v23);
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  v10 = std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::~__value_func[abi:ne200100](v23);
  std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::__value_func[abi:ne200100](v10, v15);
  aBlock = MEMORY[0x1E69E9820];
  v19 = 3321888768;
  v20 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP18MIDICIProfileStateEE5replyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c81_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP18MIDICIProfileStateEEEEEE_e40_v24__0__NSError_8__MIDICIProfileState_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::__value_func[abi:ne200100](v22, v23);
  v11 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::~__value_func[abi:ne200100](v23);
  [v9 profileStateForCable:cableCopy channel:channelCopy reply:v11];

  v12 = v17;
  std::__function::__value_func<void ()(NSError *,std::tuple<MIDICIProfileState * {__strong}> &&)>::~__value_func[abi:ne200100](v15);

  return v12;
}

- (BOOL)providesUserInterface
{
  cachedViewController = [(AUAudioUnit *)self cachedViewController];
  v3 = cachedViewController != 0;

  return v3;
}

- (void)selectViewConfiguration:(id)configuration
{
  v10[4] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = *(self + 72);
  v8[0] = &unk_1F033F978;
  v8[1] = &__block_literal_global_207;
  v8[3] = v8;
  caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v9, v5, v8);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v8);
  v6 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v9);
  v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v9);
  [v6 selectViewConfiguration:configurationCopy reply:v7];

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v10);
}

- (id)supportedViewConfigurations:(id)configurations
{
  v23 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  v5 = *(self + 72);
  aBlock = &unk_1F032CA18;
  v18 = &v13;
  p_aBlock = &aBlock;
  v6 = v5;
  v13 = v6;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::__value_func[abi:ne200100](v14, &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100](&aBlock);
  v15 = 0;
  v16 = 0;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::__value_func[abi:ne200100](v22, v14);
  v7 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 3321888768;
  v19 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP10NSIndexSetEE10sync_proxyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c73_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP10NSIndexSetEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::__value_func[abi:ne200100](v21, v22);
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100](v21);
  v9 = std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::__value_func[abi:ne200100](v9, v14);
  aBlock = MEMORY[0x1E69E9820];
  v18 = 3321888768;
  v19 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP10NSIndexSetEE5replyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c73_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP10NSIndexSetEEEEEE_e32_v24__0__NSError_8__NSIndexSet_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::__value_func[abi:ne200100](v21, v22);
  v10 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100](v21);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  [v8 supportedViewConfigurations:configurationsCopy reply:v10];

  v11 = v16;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSIndexSet * {__strong}> &&)>::~__value_func[abi:ne200100](v14);

  return v11;
}

- (id)parametersForOverviewWithCount:(int64_t)count
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(self + 72);
  aBlock = &unk_1F032C970;
  v17 = &v12;
  p_aBlock = &aBlock;
  v5 = v4;
  v12 = v5;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v13, &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](&aBlock);
  v14 = 0;
  v15 = 0;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v21, v13);
  v6 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 3321888768;
  v18 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayIP8NSNumberEEE10sync_proxyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c81_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayIP8NSNumberEEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v20, v21);
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v20);
  v8 = std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v21);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v8, v13);
  aBlock = MEMORY[0x1E69E9820];
  v17 = 3321888768;
  v18 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP7NSArrayIP8NSNumberEEE5replyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c81_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP7NSArrayIP8NSNumberEEEEEEE_e29_v24__0__NSError_8__NSArray_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::__value_func[abi:ne200100](v20, v21);
  v9 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v20);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v21);
  [v7 parametersForOverviewWithCount:count reply:v9];

  v10 = v15;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](v13);

  return v10;
}

- (float)getV2Parameter:(unint64_t)parameter sequenceNumber:(unsigned int)number
{
  v4 = *&number;
  v13 = *MEMORY[0x1E69E9840];
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::sync_message(&v10, *(self + 72));
  v6 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::sync_proxy(&v10);
  v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},float>::reply(&v10);
  [v6 getParameter:parameter sequenceNumber:v4 reply:v7];

  v8 = v12;
  std::__function::__value_func<void ()(NSError *,std::tuple<float> &&)>::~__value_func[abi:ne200100](v11);

  return v8;
}

- (id)parameterTree
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(self + 119);
  if (v2)
  {
    goto LABEL_2;
  }

  std::mutex::lock((self + 744));
  v3 = *(self + 119);
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = *(self + 72);
    aBlock = &unk_1F032C778;
    v29 = &v24;
    p_aBlock = &aBlock;
    v7 = v6;
    v24 = v7;
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::__value_func[abi:ne200100](v25, &aBlock);

    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100](&aBlock);
    v26 = 0;
    obj = 0;
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::__value_func[abi:ne200100](v33, v25);
    v8 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 3321888768;
    v30 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP15AUParameterTreeEE10sync_proxyEv_block_invoke;
    p_aBlock = &__block_descriptor_64_ea8_32c78_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP15AUParameterTreeEEEEEE_e17_v16__0__NSError_8l;
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::__value_func[abi:ne200100](v32, v33);
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100](v32);
    v10 = std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100](v33);
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::__value_func[abi:ne200100](v10, v25);
    aBlock = MEMORY[0x1E69E9820];
    v29 = 3321888768;
    v30 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJU8__strongP15AUParameterTreeEE5replyEv_block_invoke;
    p_aBlock = &__block_descriptor_64_ea8_32c78_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP15AUParameterTreeEEEEEE_e37_v24__0__NSError_8__AUParameterTree_16l;
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::__value_func[abi:ne200100](v32, v33);
    v11 = _Block_copy(&aBlock);
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100](v32);
    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100](v33);
    [v9 getParameterTree:v11];

    objc_storeStrong(self + 119, obj);
    LOBYTE(v9) = v26 == 0;

    std::__function::__value_func<void ()(NSError *,std::tuple<AUParameterTree * {__strong}> &&)>::~__value_func[abi:ne200100](v25);
    if (v9)
    {
      objc_initWeak(&aBlock, *(self + 72));
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __32__AUAudioUnit_XPC_parameterTree__block_invoke;
      v22[3] = &unk_1E72C0E00;
      objc_copyWeak(&v23, &aBlock);
      [*(self + 119) setImplementorValueProvider:v22];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __32__AUAudioUnit_XPC_parameterTree__block_invoke_2;
      v20[3] = &unk_1E72C0E28;
      objc_copyWeak(&v21, &aBlock);
      [*(self + 119) setImplementorStringFromValueCallback:v20];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __32__AUAudioUnit_XPC_parameterTree__block_invoke_3;
      v18[3] = &unk_1E72C0E50;
      objc_copyWeak(&v19, &aBlock);
      [*(self + 119) setImplementorValueFromStringCallback:v18];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __32__AUAudioUnit_XPC_parameterTree__block_invoke_4;
      v16 = &unk_1E72C0E78;
      objc_copyWeak(&v17, &aBlock);
      [*(self + 119) setImplementorDisplayNameWithLengthCallback:&v13];
      [*(self + 119) setRemoteParameterSynchronizerXPCConnection:{*(self + 72), v13, v14, v15, v16}];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&aBlock);
      std::mutex::unlock((self + 744));
      v2 = *(self + 119);
LABEL_2:
      v3 = v2;
      goto LABEL_7;
    }
  }

  std::mutex::unlock((self + 744));
LABEL_7:

  return v3;
}

- (void)propertiesChanged:(id)changed
{
  v19 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  std::recursive_mutex::lock((self + 584));
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = changedCopy;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v13 = 0;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = *(v9 + 20);
        if (v10)
        {
          v11 = [(AUAudioUnit_XPC *)self _getBus:*(v9 + 24) scope:v10 error:0];
          [v11 propertyChanged:v9];
        }

        else if ([*(v9 + 8) isEqualToString:@"inputBusses"])
        {
          v6 = 1;
        }

        else if ([*(v9 + 8) isEqualToString:@"outputBusses"])
        {
          v13 = 1;
        }

        else
        {
          if ([*(v9 + 8) isEqualToString:@"parameterTree"])
          {
            [(AUAudioUnit_XPC *)self _parameterTreeChanged];
          }

          [(AUAudioUnit_XPC *)self willChangeValueForKey:*(v9 + 8)];
          [(AUAudioUnit_XPC *)self didChangeValueForKey:*(v9 + 8)];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);

    std::recursive_mutex::unlock((self + 584));
    if (v6)
    {
      [(AUAudioUnit_XPC *)self _refreshBusses:1];
    }

    if (v13)
    {
      [(AUAudioUnit_XPC *)self _refreshBusses:2];
    }
  }

  else
  {

    std::recursive_mutex::unlock((self + 584));
  }
}

- (id)_getBus:(unsigned int)bus scope:(unsigned int)scope error:(id *)error
{
  if (scope == 1)
  {
    v7 = &OBJC_IVAR___AUAudioUnit_XPC__inputBusses;
LABEL_5:
    v8 = *(self + *v7);
    if ([v8 count] > bus)
    {
      v9 = [v8 objectAtIndexedSubscript:?];
      goto LABEL_13;
    }

    if (error)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10877 userInfo:0];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (scope == 2)
  {
    v7 = &OBJC_IVAR___AUAudioUnit_XPC__outputBusses;
    goto LABEL_5;
  }

  v8 = 0;
  if (error)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10866 userInfo:0];
LABEL_11:
    v9 = 0;
    *error = v10;
    goto LABEL_13;
  }

LABEL_12:
  v9 = 0;
LABEL_13:

  return v9;
}

- (void)removeObserver:(id)observer forKeyPath:(id)path
{
  v14[4] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit_XPC *)&v11 removeObserver:observer forKeyPath:pathCopy];
  if ((*(self + 742) & 1) == 0)
  {
    std::recursive_mutex::lock((self + 584));
    v7 = [AUAudioUnitProperty propertyWithKey:pathCopy];
    v8 = *(self + 72);
    v12[0] = &unk_1F033F978;
    v12[1] = &__block_literal_global_192;
    v12[3] = v12;
    caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v13, v8, v12);
    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v12);
    v9 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v13);
    v10 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v13);
    [v9 removePropertyObserver:v7 context:0 reply:v10];

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v14);
    std::recursive_mutex::unlock((self + 584));
  }
}

- (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context
{
  v16[4] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  *(self + 742) = 1;
  v13.receiver = self;
  v13.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit_XPC *)&v13 removeObserver:observer forKeyPath:pathCopy context:context];
  std::recursive_mutex::lock((self + 584));
  v9 = [AUAudioUnitProperty propertyWithKey:pathCopy];
  v10 = *(self + 72);
  v14[0] = &unk_1F033F978;
  v14[1] = &__block_literal_global_190;
  v14[3] = v14;
  caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v15, v10, v14);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v14);
  v11 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v15);
  v12 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v15);
  [v11 removePropertyObserver:v9 context:context reply:v12];

  *(self + 742) = 0;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v16);

  std::recursive_mutex::unlock((self + 584));
}

- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  v18[4] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit_XPC *)&v15 addObserver:observer forKeyPath:pathCopy options:options context:context];
  std::recursive_mutex::lock((self + 584));
  v11 = [AUAudioUnitProperty propertyWithKey:pathCopy];
  v12 = *(self + 72);
  v16[0] = &unk_1F033F978;
  v16[1] = &__block_literal_global_188;
  v16[3] = v16;
  caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v17, v12, v16);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v16);
  v13 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::async_proxy(&v17);
  v14 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::reply(&v17);
  [v13 addPropertyObserver:v11 context:context reply:v14];

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v18);
  std::recursive_mutex::unlock((self + 584));
}

- (void)_refreshBusses:(unsigned int)busses
{
  v3 = *&busses;
  v24 = *MEMORY[0x1E69E9840];
  v5 = caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(&v21, *(self + 72));
  v6 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(v5);
  v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::reply(&v21);
  [v6 getBusses:v3 reply:v7];

  v8 = v23;
  v9 = &OBJC_IVAR___AUAudioUnit_XPC__outputBusses;
  if (v3 == 1)
  {
    v9 = &OBJC_IVAR___AUAudioUnit_XPC__inputBusses;
  }

  v10 = *(self + *v9);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        objc_storeWeak((v15 + 112), self);
        objc_storeWeak((v15 + 120), *(self + 72));
        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [v10 replaceBusses:{v11, v16}];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  v15 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(&v12, *(self + 72));
  v8 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(&v12);
  v9 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::reply(&v12);
  [v8 setValue:valueCopy forKey:keyCopy reply:v9];

  v10 = v14;
  if (v10)
  {
    [(AUAudioUnit_XPC *)self propertiesChanged:v10];
    v11 = v14;
  }

  else
  {
    v11 = 0;
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](v13);
}

- (id)valueForUndefinedKey:(id)key
{
  v10[6] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::sync_message(&v9, *(self + 72));
  v5 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::sync_proxy(&v9);
  v6 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::reply(&v9);
  [v5 valueForKey:keyCopy reply:v6];

  v7 = v10[5];
  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100](v10);

  return v7;
}

- (void)_setValue:(id)value forProperty:(id)property error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  propertyCopy = property;
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(&v13, *(self + 72));
  v10 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(&v13);
  v11 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::reply(&v13);
  [v10 setValue:valueCopy forProperty:propertyCopy propagateError:error != 0 reply:v11];

  v12 = v16;
  if (v12)
  {
    [(AUAudioUnit_XPC *)self propertiesChanged:v12];
  }

  if (error && v15)
  {
    *error = v15;
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](&v14);
}

- (id)_getValueForKey:(id)key
{
  v4 = [AUAudioUnitProperty propertyWithKey:key];
  v5 = [(AUAudioUnit_XPC *)self _getValueForProperty:v4 error:0];

  return v5;
}

- (id)_getValueForProperty:(id)property error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::sync_message(&v13, *(self + 72));
  v7 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::sync_proxy(&v13);
  v8 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},objc_object * {__strong}>::reply(&v13);
  [v7 valueForProperty:propertyCopy propagateError:error != 0 reply:v8];

  v9 = v16;
  v10 = v9;
  if (error)
  {
    v10 = v9;
    if (v15)
    {
      *error = v15;
      v10 = v16;
    }
  }

  v11 = v9;

  std::__function::__value_func<void ()(NSError *,std::tuple<objc_object * {__strong}> &&)>::~__value_func[abi:ne200100](&v14);

  return v11;
}

- (id)internalRenderBlock
{
  objc_msgSend_componentDescription(self, a2);
  v3 = 1;
  if (v12[0] <= 1635085669)
  {
    if (v12[0] == 1635083896 || v12[0] == 1635084142)
    {
      goto LABEL_10;
    }
  }

  else if ((v12[0] - 1635085670) <= 0xF && ((1 << (LOBYTE(v12[0]) - 102)) & 0x8009) != 0 || v12[0] == 1635086188)
  {
    goto LABEL_10;
  }

  v3 = 0;
LABEL_10:
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__AUAudioUnit_XPC_internalRenderBlock__block_invoke;
  v10[3] = &__block_descriptor_41_e433_i60__0_I8r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_16I24q28__AudioBufferList_I_1_AudioBuffer_II_v___36r__AURenderEvent__AURenderEventHeader___AURenderEvent_qCC__AUParameterEvent___AURenderEvent_qC_3C_IQf__AUMIDIEvent___AURenderEvent_qCCSC_3C___AUMIDIEventList___AURenderEvent_qCCC_MIDIEventList_iI_1_MIDIEventPacket_QI_64I______44___i___I__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_Iq__AudioBufferList_I_1_AudioBuffer_II_v____52l;
  v10[4] = self + 872;
  v11 = v3;
  v6 = _Block_copy(v10);
  v7 = _Block_copy(v6);

  return v7;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit *)&v3 reset];
  [(AUAudioUnit_XPC *)self remoteReset];
}

- (void)remoteReset
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *(self + 72);
  v4[0] = &unk_1F033F978;
  v4[1] = &__block_literal_global_180;
  v4[3] = v4;
  caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::message(&v5, v2, v4);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v4);
  v3 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v5);
  [v3 reset:&__block_literal_global_182];

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v6);
}

- (void)internalDeallocateRenderResources
{
  v8[6] = *MEMORY[0x1E69E9840];
  v3 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
  AURegistrationServerConnection::WakeExtension(*(v3 + 48), *(self + 182), 3);
  if (*(self + 944) == 1)
  {
    auoop::RenderPipeUser::~RenderPipeUser((self + 872));
    *(v4 + 72) = 0;
  }

  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(&v7, *(self + 72));
  v5 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v7);
  [v5 uninitialize:&__block_literal_global_176];

  v6.receiver = self;
  v6.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit *)&v6 internalDeallocateRenderResources];

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v8);
}

- (BOOL)allocateRenderResourcesAndReturnError:(id *)error
{
  v134 = *MEMORY[0x1E69E9840];
  if ([(AUAudioUnit *)self renderResourcesAllocated])
  {
    v5 = 1;
    return v5 & 1;
  }

  musicalContextBlock = [(AUAudioUnit *)self musicalContextBlock];
  transportStateBlock = [(AUAudioUnit *)self transportStateBlock];
  mIDIOutputEventBlock = [(AUAudioUnit *)self MIDIOutputEventBlock];
  errorCopy = error;
  mIDIOutputEventListBlock = [(AUAudioUnit *)self MIDIOutputEventListBlock];
  v10 = transportStateBlock != 0;
  v11 = musicalContextBlock != 0;
  v12 = mIDIOutputEventListBlock != 0;

  v13 = *(self + 72);
  aBlock = &unk_1F032C628;
  *&v122 = v129;
  *&v123 = &aBlock;
  v14 = v13;
  *v129 = v14;
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::__value_func[abi:ne200100](&v129[8], &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&aBlock);
  v133 = 0;
  v131 = 0u;
  memset(v132, 0, sizeof(v132));
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::__value_func[abi:ne200100](&v115, &v129[8]);
  v15 = *v129;
  aBlock = MEMORY[0x1E69E9820];
  *&v122 = 3321888768;
  *(&v122 + 1) = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJmmmU8__strongP6NSDatabjEE10sync_proxyEv_block_invoke;
  *&v123 = &__block_descriptor_64_ea8_32c73_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJmmmU8__strongP6NSDatabjEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::__value_func[abi:ne200100](&v123 + 8, &v115);
  v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&v123 + 8);
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&v115);
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::__value_func[abi:ne200100](&v115, &v129[8]);
  aBlock = MEMORY[0x1E69E9820];
  *&v122 = 3321888768;
  *(&v122 + 1) = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJmmmU8__strongP6NSDatabjEE5replyEv_block_invoke;
  *&v123 = &__block_descriptor_64_ea8_32c73_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJmmmU8__strongP6NSDatabjEEEEEE_e43_v56__0__NSError_8Q16Q24Q32__NSData_40B48I52l;
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::__value_func[abi:ne200100](&v123 + 8, &v115);
  v17 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&v123 + 8);
  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&v115);
  [v16 initialize:(v11 || 2 * v10) | (4 * (mIDIOutputEventBlock != 0)) | (8 * v12) reply:v17];

  v18 = DWORD2(v131);
  v19 = *v132;
  v20 = *&v132[8];
  v21 = *&v132[16];
  v22 = v133;
  v23 = v131;
  if (v23)
  {
    v24 = v23;
    if (error)
    {
      v25 = v23;
      *error = v24;
    }

    [(AUAudioUnit *)self setRenderResourcesAllocated:0];

    std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&v129[8]);
    goto LABEL_7;
  }

  v108 = v22;

  std::__function::__value_func<void ()(NSError *,std::tuple<unsigned long,unsigned long,unsigned long,NSData * {__strong},BOOL,unsigned int> &&)>::~__value_func[abi:ne200100](&v129[8]);
  if (v20 <= 0)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10875 userInfo:0];
      *error = v5 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v111.receiver = self;
  v111.super_class = AUAudioUnit_XPC;
  if (![(AUAudioUnit *)&v111 allocateRenderResourcesAndReturnError:error])
  {
    goto LABEL_7;
  }

  v27 = v21;
  [v21 bytes];
  v107 = v21;
  v28 = [v21 length];
  if (v28 >= 0x28)
  {
    std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](v28 / 0x28);
  }

  mIDIOutputBufferSizeHint = [(AUAudioUnit *)self MIDIOutputBufferSizeHint];
  v30 = v21;
  LOBYTE(aBlock) = 1;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v31 = v30;
  v125 = v31;
  v126 = 0.0;
  v127 = v18;
  v128 = mIDIOutputBufferSizeHint;
  v32 = AUOOPRenderingClient::NeverTimesOut(v31);
  if ((v32 & 1) == 0)
  {
    LOBYTE(aBlock) = 0;
  }

  [v31 bytes];
  if (0xCCCCCCCCCCCCCCCDLL * ((40 * ([v31 length] / 0x28uLL)) >> 3) != v20 + v19)
  {
    std::terminate();
  }

  bytes = [v31 bytes];
  v34 = 40 * ([v31 length] / 0x28uLL);
  if (!v34)
  {
    v35 = 0;
    v36 = 0;
    goto LABEL_88;
  }

  v37 = 0;
  v38 = (bytes + 16);
  v39 = 0.0;
  do
  {
    if (v19 == v37)
    {
      v126 = *(v38 - 2);
    }

    if (*(v38 - 2) == 1819304813 && *(v38 + 1) == 1)
    {
      v40 = *(v38 + 2);
      if (v40 == *v38)
      {
        v41 = *(v38 + 4);
        if (v40 >= v41 >> 3)
        {
          v42 = *(v38 + 3);
          if (v42)
          {
            v43 = *(v38 - 1);
            if ((v43 & 0x20) != 0 || (v46 = v40 == v40 / v42 * v42, v40 /= v42, v46))
            {
              v44 = 0;
              if ((v43 & 2) == 0 && 8 * v40 == v41)
              {
                if (v43)
                {
                  if ((v43 & 0x1F84) != 0)
                  {
                    goto LABEL_82;
                  }

                  if (v40 == 4)
                  {
                    v44 = 1;
                  }

                  else
                  {
                    v44 = 4 * (v40 == 8);
                  }
                }

                else if ((v43 & 4) != 0)
                {
                  v45 = (v43 >> 7) & 0x3F;
                  if (v45 == 24 && v40 == 4)
                  {
                    v44 = 3;
                  }

                  else if (v45 || v40 != 4)
                  {
                    v46 = v40 == 2 && v45 == 0;
                    if (v46)
                    {
                      v44 = 2;
                    }

                    else
                    {
                      v44 = 0;
                    }
                  }

                  else
                  {
                    v44 = 5;
                  }
                }

                else
                {
                  v44 = 0;
                }
              }

              v47 = (*(v38 - 1) & 0x20) == 0;
              if (v37 >= v19)
              {
                v50 = v124;
                if (v124 >= *(&v124 + 1))
                {
                  v104 = v124 - *(&v123 + 1);
                  v55 = 0xAAAAAAAAAAAAAAABLL * ((v124 - *(&v123 + 1)) >> 2);
                  v56 = v55 + 1;
                  if (v55 + 1 > 0x1555555555555555)
                  {
LABEL_147:
                    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                  }

                  v101 = *(&v123 + 1);
                  if (0x5555555555555556 * ((*(&v124 + 1) - *(&v123 + 1)) >> 2) > v56)
                  {
                    v56 = 0x5555555555555556 * ((*(&v124 + 1) - *(&v123 + 1)) >> 2);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((*(&v124 + 1) - *(&v123 + 1)) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                  {
                    v57 = 0x1555555555555555;
                  }

                  else
                  {
                    v57 = v56;
                  }

                  if (v57)
                  {
                    std::allocator<auoop::RenderPipeConfig::CompactFormat>::allocate_at_least[abi:ne200100](v57);
                  }

                  v60 = 4 * ((v124 - *(&v123 + 1)) >> 2);
                  *v60 = v44;
                  *(v60 + 4) = v42;
                  *(v60 + 8) = v47;
                  *(v60 + 9) = 0;
                  *(v60 + 11) = 0;
                  v51 = 12 * v55 + 12;
                  memcpy((12 * v55 - v104), v101, v104);
                  *(&v123 + 1) = 12 * v55 - v104;
                  v124 = v51;
                  if (v101)
                  {
                    operator delete(v101);
                  }
                }

                else
                {
                  *v124 = v44;
                  *(v50 + 4) = v42;
                  *(v50 + 8) = v47;
                  *(v50 + 9) = 0;
                  v51 = v50 + 12;
                  *(v50 + 11) = 0;
                }

                *&v124 = v51;
              }

              else
              {
                v48 = *(&v122 + 1);
                if (*(&v122 + 1) >= v123)
                {
                  v103 = *(&v122 + 1) - v122;
                  v52 = 0xAAAAAAAAAAAAAAABLL * ((*(&v122 + 1) - v122) >> 2);
                  v53 = v52 + 1;
                  if (v52 + 1 > 0x1555555555555555)
                  {
                    goto LABEL_147;
                  }

                  v100 = v122;
                  if (0x5555555555555556 * ((v123 - v122) >> 2) > v53)
                  {
                    v53 = 0x5555555555555556 * ((v123 - v122) >> 2);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v123 - v122) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                  {
                    v54 = 0x1555555555555555;
                  }

                  else
                  {
                    v54 = v53;
                  }

                  if (v54)
                  {
                    std::allocator<auoop::RenderPipeConfig::CompactFormat>::allocate_at_least[abi:ne200100](v54);
                  }

                  v58 = 4 * ((*(&v122 + 1) - v122) >> 2);
                  *v58 = v44;
                  *(v58 + 4) = v42;
                  *(v58 + 8) = v47;
                  *(v58 + 9) = 0;
                  *(v58 + 11) = 0;
                  v49 = 12 * v52 + 12;
                  v59 = v58 - v103;
                  memcpy((v58 - v103), v100, v103);
                  *&v122 = v59;
                  *(&v122 + 1) = v49;
                  *&v123 = 0;
                  if (v100)
                  {
                    operator delete(v100);
                  }
                }

                else
                {
                  **(&v122 + 1) = v44;
                  *(v48 + 4) = v42;
                  *(v48 + 8) = v47;
                  *(v48 + 9) = 0;
                  v49 = v48 + 12;
                  *(v48 + 11) = 0;
                }

                *(&v122 + 1) = v49;
              }

              v21 = v107;
            }
          }
        }
      }
    }

LABEL_82:
    if (v39 == 0.0)
    {
      v39 = *(v38 - 2);
    }

    else if (*(v38 - 2) != v39)
    {
      LOBYTE(aBlock) = 0;
    }

    ++v37;
    v38 += 5;
    v34 -= 40;
  }

  while (v34);
  v35 = *(&v123 + 1);
  v36 = v124;
LABEL_88:
  if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 2) > 1)
  {
    LOBYTE(aBlock) = 0;
  }

  v61 = *(self + 72);
  musicalContextBlock2 = [(AUAudioUnit *)self musicalContextBlock];
  transportStateBlock2 = [(AUAudioUnit *)self transportStateBlock];
  mIDIOutputEventBlock2 = [(AUAudioUnit *)self MIDIOutputEventBlock];
  mIDIOutputEventListBlock2 = [(AUAudioUnit *)self MIDIOutputEventListBlock];
  isRenderingOffline = [(AUAudioUnit *)self isRenderingOffline];
  v97 = musicalContextBlock2;
  objc_msgSend_componentDescription(self);
  v96 = *v129 == 1635085673;
  v63 = *(self + 107);
  std::recursive_mutex::lock(v63);
  v65 = *(v63 + 80);
  v64 = *(v63 + 88);
  if (v65 != v64)
  {
    while (1)
    {
      v66 = *v65;
      if (*(*v65 + 8) == 1)
      {
        v68 = *(v66 + 16);
        v67 = *(v66 + 24);
        if (v67 - v68 == *(&v122 + 1) - v122)
        {
          if (v68 == v67)
          {
LABEL_99:
            v71 = *(v66 + 40);
            v70 = *(v66 + 48);
            if (v70 - v71 == v36 - v35)
            {
              if (v71 == v70)
              {
LABEL_106:
                if (*(v66 + 72) == v126 && *(v66 + 80) >= v127 && *(v66 + 84) >= v128)
                {
                  break;
                }
              }

              else
              {
                v72 = v35;
                while (*v71 == *v72 && *(v71 + 4) == *(v72 + 4) && *(v71 + 8) == *(v72 + 8))
                {
                  v71 += 12;
                  v72 += 12;
                  if (v71 == v70)
                  {
                    goto LABEL_106;
                  }
                }
              }
            }
          }

          else
          {
            v69 = v122;
            while (*v68 == *v69 && *(v68 + 4) == *(v69 + 4) && *(v68 + 8) == *(v69 + 8))
            {
              v68 += 12;
              v69 += 12;
              if (v68 == v67)
              {
                goto LABEL_99;
              }
            }
          }
        }
      }

      if (++v65 == v64)
      {
        goto LABEL_110;
      }
    }
  }

  if (v65 == v64)
  {
LABEL_110:
    operator new();
  }

  v73 = *v65;
  v74 = v61;
  v75 = v74;
  v76 = *(v73 + 88);
  v77 = *(v73 + 92);
  *(v73 + 88) = v76 + 1;
  if (*(v73 + 96) > v76)
  {
    v78 = v76 + 1;
  }

  else
  {
    v78 = *(v73 + 96);
  }

  v106 = v74;
  if (v77 < v78)
  {
    while (1)
    {
      v80 = *(v73 + 120);
      v79 = *(v73 + 128);
      while (v80 != v79)
      {
        if (!*(v80 + 8) && (atomic_exchange(v80, 1u) & 1) == 0)
        {
          *(v80 + 24) = pthread_self();
          bytes2 = [*(v73 + 64) bytes];
          v82 = [*(v73 + 64) length];
          v112 = bytes2;
          v113 = 0xCCCCCCCCCCCCCCCDLL * ((40 * (v82 / 0x28)) >> 3);
          v114 = *(v73 + 80);
          v75;
          operator new();
        }

        v80 += 32;
      }
    }
  }

  v83 = [*(v63 + 184) count];
  v84 = [*(v63 + 184) addObject:v106];
  if (!v83)
  {
    v85 = auoop::gWorkgroupManager(v84);
    if (*(v63 + 176) == 1)
    {
      auoop::WorkgroupPropagator::~WorkgroupPropagator((v63 + 104));
      *(v63 + 176) = 0;
    }

    *v129 = &unk_1F0327218;
    *&v129[8] = v63 + 64;
    *&v129[24] = v129;
    auoop::WorkgroupPropagator::WorkgroupPropagator((v63 + 104), v85, v129);
    std::__function::__value_func<void ()(applesauce::xpc::dict const&)>::~__value_func[abi:ne200100](v129);
    *(v63 + 176) = 1;
  }

  *&v129[16] = v106;
  *&v129[24] = v97;
  v130 = transportStateBlock2;
  *&v131 = mIDIOutputEventBlock2;
  *(&v131 + 1) = mIDIOutputEventListBlock2;
  *v132 = v108;
  v132[4] = isRenderingOffline;
  v132[5] = v96;
  *&v132[6] = v110;
  v132[8] = 0;
  *v129 = 0;
  *&v129[8] = self;
  v115 = v73;
  *&v116 = self;
  *(&v116 + 1) = v106;
  *&v117 = v97;
  *(&v117 + 1) = transportStateBlock2;
  *v118 = mIDIOutputEventBlock2;
  *&v118[8] = mIDIOutputEventListBlock2;
  *&v118[16] = v108;
  v118[20] = isRenderingOffline;
  v118[21] = v96;
  *&v118[22] = v110;
  v119 = 0;
  v120 = 1;
  auoop::RenderPipeUser::~RenderPipeUser(v129);
  std::recursive_mutex::unlock(v63);
  v5 = v120;
  if (v120)
  {
    v86 = (self + 872);
    if (*(self + 944) == 1)
    {
      v87 = *v86;
      v88 = v115;
      *(self + 55) = v116;
      *(self + 56) = v117;
      *(self + 57) = *v118;
      *(self + 926) = *&v118[14];
    }

    else
    {
      v87 = 0;
      v88 = v115;
      *(self + 55) = v116;
      *(self + 56) = v117;
      *(self + 57) = *v118;
      *(self + 116) = *&v118[16];
      *(self + 936) = 0;
      *(self + 944) = 1;
    }

    *v86 = v88;
    v115 = v87;
    v91 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
    AURegistrationServerConnection::WakeExtension(*(v91 + 48), *(self + 182), 2);
    goto LABEL_141;
  }

  v89 = v115;
  if (!kAUExtensionScope)
  {
    v90 = MEMORY[0x1E69E9C10];
    v92 = MEMORY[0x1E69E9C10];
    goto LABEL_135;
  }

  v90 = *kAUExtensionScope;
  if (v90)
  {
LABEL_135:
    v93 = v90;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v94 = [v89 description];
      *v129 = 136315650;
      *&v129[4] = "AUAudioUnit_XPC.mm";
      *&v129[12] = 1024;
      *&v129[14] = 823;
      *&v129[18] = 2112;
      *&v129[20] = v94;
      _os_log_impl(&dword_18F5DF000, v93, OS_LOG_TYPE_ERROR, "%25s:%-5d render pipe user creation failure (%@)", v129, 0x1Cu);
    }
  }

  if (errorCopy)
  {
    v95 = v89;
    *errorCopy = v89;
  }

  [(AUAudioUnit *)self deallocateRenderResources];

LABEL_141:
  caulk::__expected_detail::base<auoop::RenderPipeUser,NSError * {__strong}>::~base(&v115);

  if (*(&v123 + 1))
  {
    operator delete(*(&v123 + 1));
  }

  if (v122)
  {
    operator delete(v122);
  }

LABEL_8:

  return v5 & 1;
}

- (void)setTransportStateBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit *)&v8 setTransportStateBlock:blockCopy];
  v5 = self + 872;
  if (*(self + 944) == 1)
  {
    musicalContextBlock = [(AUAudioUnit *)self musicalContextBlock];
    transportStateBlock = [(AUAudioUnit *)self transportStateBlock];
    auoop::RenderPipeUser::setV3HostCallbacks(v5, musicalContextBlock, transportStateBlock);
  }
}

- (void)setMusicalContextBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit *)&v8 setMusicalContextBlock:blockCopy];
  v5 = self + 872;
  if (*(self + 944) == 1)
  {
    musicalContextBlock = [(AUAudioUnit *)self musicalContextBlock];
    transportStateBlock = [(AUAudioUnit *)self transportStateBlock];
    auoop::RenderPipeUser::setV3HostCallbacks(v5, musicalContextBlock, transportStateBlock);
  }
}

- (BOOL)_setBusCount:(unint64_t)count scope:(unsigned int)scope error:(id *)error
{
  v6 = *&scope;
  v20 = *MEMORY[0x1E69E9840];
  caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_message(&v16, *(self + 72));
  v9 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::sync_proxy(&v16);
  v10 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong},NSArray * {__strong}>::reply(&v16);
  [v9 setBusCount:count scope:v6 reply:v10];

  v11 = v19;
  v12 = v18;
  v13 = v12;
  if (error)
  {
    v14 = v12;
    *error = v13;
  }

  if (v11)
  {
    [(AUAudioUnit_XPC *)self propertiesChanged:v11];
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray * {__strong}> &&)>::~__value_func[abi:ne200100](&v17);
  return v13 == 0;
}

- (id)outputBusses
{
  if ([(AUAudioUnit_XPC *)self isLocalCachingDisabled])
  {
    [(AUAudioUnit_XPC *)self _refreshBusses:2];
  }

  v3 = *(self + 102);

  return v3;
}

- (id)inputBusses
{
  if ([(AUAudioUnit_XPC *)self isLocalCachingDisabled])
  {
    [(AUAudioUnit_XPC *)self _refreshBusses:1];
  }

  v3 = *(self + 101);

  return v3;
}

- (void)_parameterTreeChanged
{
  v3 = *(self + 119);
  if (v3)
  {
    [v3 setRemoteParameterSynchronizerXPCConnection:0];
    v4 = *(self + 119);
    *(self + 119) = 0;
  }
}

- (void)dealloc
{
  v11[6] = *MEMORY[0x1E69E9840];
  v3 = *(self + 119);
  if (v3)
  {
    [v3 setRemoteParameterSynchronizerXPCConnection:*(self + 72)];
    v4 = *(self + 119);
    *(self + 119) = 0;
  }

  v5 = *(self + 72);
  if (v5)
  {
    caulk::xpc::sync_message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_message(&v10, v5);
    v6 = caulk::xpc::message<objc_object  {objcproto22AUAudioUnitXPCProtocol}* {__strong}>::sync_proxy(&v10);
    [v6 close:&__block_literal_global_166];

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v11);
  }

  v7 = *(self + 101);
  *(self + 101) = 0;

  v8 = *(self + 102);
  *(self + 102) = 0;

  v9.receiver = self;
  v9.super_class = AUAudioUnit_XPC;
  [(AUAudioUnit *)&v9 dealloc];
}

- (void)didCrash:(id)crash
{
  v38 = *MEMORY[0x1E69E9840];
  crashCopy = crash;
  [(AUAudioUnit_XPC *)self _invalidatePipePoolAndUser];
  val = self;
  _getInvalidationNotificationInfo = [(AUAudioUnit_XPC *)self _getInvalidationNotificationInfo];
  v5 = [_getInvalidationNotificationInfo mutableCopy];

  v20 = v5;
  if (crashCopy)
  {
    v6 = [crashCopy valueForKey:@"Path"];
    v17 = v6;
    if (v6)
    {
      [v5 setObject:v6 forKey:{@"Executable Path", v6}];
    }

    [v5 valueForKey:{@"Descriptions", v17}];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v7 = v28 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v8)
    {
      v9 = *v28;
      v10 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v27 + 1) + 8 * i) getValue:&v26];
          if (kAUExtensionScope)
          {
            v12 = *kAUExtensionScope;
            if (!v12)
            {
              continue;
            }
          }

          else
          {
            v13 = v10;
            v12 = v10;
          }

          v14 = v12;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            CAFormatter::CAFormatter(&v25, &v26);
            *buf = 136315650;
            v32 = "AUAudioUnit_XPC.mm";
            v33 = 1024;
            v34 = 641;
            v35 = 2080;
            v36 = v25;
            _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Crashed AU possible component description: %s", buf, 0x1Cu);
            if (v25)
            {
              free(v25);
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v8);
    }
  }

  objc_initWeak(buf, val);
  v15 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __28__AUAudioUnit_XPC_didCrash___block_invoke;
  block[3] = &unk_1F032C220;
  objc_copyWeak(&v24, buf);
  v23 = v20;
  v16 = v20;
  dispatch_async(v15, block);

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (void)didInvalidate
{
  [(AUAudioUnit_XPC *)self _invalidatePipePoolAndUser];
  _getInvalidationNotificationInfo = [(AUAudioUnit_XPC *)self _getInvalidationNotificationInfo];
  objc_initWeak(&location, self);
  v4 = dispatch_time(0, 0);
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __32__AUAudioUnit_XPC_didInvalidate__block_invoke;
  block[3] = &unk_1F032C220;
  objc_copyWeak(&v9, &location);
  v8 = _getInvalidationNotificationInfo;
  v6 = _getInvalidationNotificationInfo;
  dispatch_after(v4, v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_getInvalidationNotificationInfo
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"audioUnit";
  v3 = [MEMORY[0x1E696B098] valueWithPointer:*(self + 90)];
  v12[0] = v3;
  v11[1] = @"AUAudioUnit";
  v4 = [MEMORY[0x1E696B098] valueWithPointer:self];
  v12[1] = v4;
  v11[2] = @"Service PID";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(self + 182)];
  v12[2] = v5;
  v11[3] = @"Host PID";
  v6 = MEMORY[0x1E696AD98];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v8 = [v6 numberWithInt:{objc_msgSend(processInfo, "processIdentifier")}];
  v12[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

- (void)_invalidatePipePoolAndUser
{
  v2 = self + 872;
  if (*(self + 944) == 1)
  {
    atomic_store(1u, self + 936);
  }

  objc_initWeak(&location, self);
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AUAudioUnit_XPC__invalidatePipePoolAndUser__block_invoke;
  block[3] = &unk_1E72C2AA8;
  objc_copyWeak(v5, &location);
  v5[1] = v2;
  dispatch_async(v3, block);

  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

- (void)_doOpen:(id)open completion:(id)completion
{
  v80 = *MEMORY[0x1E69E9840];
  openCopy = open;
  completionCopy = completion;
  objc_storeStrong(self + 72, open);
  objc_initWeak(&location, self);
  v7 = *(self + 72);
  aBlock = &unk_1F032C538;
  v75 = &v66;
  p_aBlock = &aBlock;
  v8 = v7;
  v66 = v8;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::__value_func[abi:ne200100](v67, &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100](&aBlock);
  v68 = 0;
  v69 = 0;
  v71 = 0;
  v70 = 0;
  v72 = 0;
  memset(v73, 0, sizeof(v73));
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::__value_func[abi:ne200100](v79, v67);
  v9 = v66;
  aBlock = MEMORY[0x1E69E9820];
  v75 = 3321888768;
  v76 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJbbU8__strongP7NSArrayS7_bbimmEE10sync_proxyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c79_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJbbU8__strongP7NSArrayS6_bbimmEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::__value_func[abi:ne200100](v78, v79);
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100](v78);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100](v79);
  objc_msgSend_componentDescription(self);
  auInstanceUUID = [(AUAudioUnit_XPC *)self auInstanceUUID];
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::__value_func[abi:ne200100](v79, v67);
  aBlock = MEMORY[0x1E69E9820];
  v75 = 3321888768;
  v76 = ___ZN5caulk3xpc7messageIU8__strongPU33objcproto22AUAudioUnitXPCProtocol11objc_objectJbbU8__strongP7NSArrayS7_bbimmEE5replyEv_block_invoke;
  p_aBlock = &__block_descriptor_64_ea8_32c79_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJbbU8__strongP7NSArrayS6_bbimmEEEEEE_e62_v68__0__NSError_8B16B20__NSArray_24__NSArray_32B40B44i48Q52Q60l;
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::__value_func[abi:ne200100](v78, v79);
  v12 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100](v78);
  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100](v79);
  [v10 open:v62 instanceUUID:auInstanceUUID reply:v12];

  v13 = v68;
  if (v13)
  {
    completionCopy[2](completionCopy, v13);
    goto LABEL_62;
  }

  *(self + 370) = v69;
  v50 = v70;
  v51 = v71;
  v14 = v72;
  v15 = HIBYTE(v72);
  *(self + 182) = v73[0];
  *(self + 732) = vmovn_s64(*&v73[1]);
  v16 = [[AUAudioUnitBusArray_XPC alloc] initWithOwner:self scope:1 busses:v50 countWritable:v14];
  v17 = *(self + 101);
  *(self + 101) = v16;

  v18 = [[AUAudioUnitBusArray_XPC alloc] initWithOwner:self scope:2 busses:v51 countWritable:v15];
  v19 = *(self + 102);
  *(self + 102) = v18;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v20 = *(self + 101);
  v21 = [v20 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v21)
  {
    v22 = *v59;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v59 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v58 + 1) + 8 * i);
        objc_storeWeak((v24 + 112), self);
        objc_storeWeak((v24 + 120), *(self + 72));
      }

      v21 = [v20 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v21);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v25 = *(self + 102);
  v26 = [v25 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v26)
  {
    v27 = *v55;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v55 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v54 + 1) + 8 * j);
        objc_storeWeak((v29 + 112), self);
        objc_storeWeak((v29 + 120), *(self + 72));
      }

      v26 = [v25 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v26);
  }

  {
    auoop::RenderPipePoolManager::instance(void)::global = 0;
    qword_1EAD0E5E8 = 0;
    qword_1EAD0E5F0 = 0;
    qword_1EAD0E5E0 = 0;
  }

  os_unfair_lock_lock(&auoop::RenderPipePoolManager::instance(void)::global);
  v30 = *(self + 182);
  v31 = qword_1EAD0E5E0;
  v32 = qword_1EAD0E5E8;
  v33 = qword_1EAD0E5E0;
  if (qword_1EAD0E5E0 != qword_1EAD0E5E8)
  {
    while (1)
    {
      v34 = v33[1];
      if (!v34 || *(v34 + 8) == -1)
      {
        break;
      }

      v33 += 2;
      if (v33 == qword_1EAD0E5E8)
      {
        goto LABEL_39;
      }
    }

    if (v33 != qword_1EAD0E5E8)
    {
      v35 = v33 + 2;
      if (v33 + 2 != qword_1EAD0E5E8)
      {
        do
        {
          v36 = v35[1];
          if (v36 && *(v36 + 8) != -1)
          {
            v37 = *v35;
            *v35 = 0;
            v35[1] = 0;
            v38 = v33[1];
            *v33 = v37;
            v33[1] = v36;
            if (v38)
            {
              std::__shared_weak_count::__release_weak(v38);
            }

            v33 += 2;
          }

          v35 += 2;
        }

        while (v35 != v32);
        v31 = qword_1EAD0E5E0;
        v32 = qword_1EAD0E5E8;
      }
    }
  }

  if (v33 == v32)
  {
LABEL_39:
    v33 = v32;
  }

  else
  {
    while (v32 != v33)
    {
      v39 = *(v32 - 8);
      if (v39)
      {
        std::__shared_weak_count::__release_weak(v39);
      }

      v32 -= 16;
    }

    qword_1EAD0E5E8 = v33;
    v31 = qword_1EAD0E5E0;
  }

  if (v31 == v33)
  {
    goto LABEL_52;
  }

  do
  {
    v40 = *(v31 + 8);
    if (v40)
    {
      v41 = std::__shared_weak_count::lock(v40);
      if (v41)
      {
        v42 = v41;
        v43 = *v31;
        if (!*v31)
        {
          goto LABEL_48;
        }

        std::recursive_mutex::lock(*v31);
        if (*v43[1].__m_.__opaque != v30)
        {
          std::recursive_mutex::unlock(v43);
LABEL_48:
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
          goto LABEL_49;
        }

        v44 = v43[1].__m_.__opaque[4];
        std::recursive_mutex::unlock(v43);
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        if ((v44 & 1) == 0)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_49:
    v31 += 16;
  }

  while (v31 != v33);
  v31 = v33;
LABEL_51:
  v33 = qword_1EAD0E5E8;
LABEL_52:
  if (v31 == v33 || (v45 = *(v31 + 8)) == 0 || (v46 = std::__shared_weak_count::lock(v45)) == 0)
  {
LABEL_58:
    operator new();
  }

  if (!*v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    goto LABEL_58;
  }

  *&v47 = *v31;
  *(&v47 + 1) = v46;
  v48 = *(self + 108);
  *(self + 856) = v47;
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  os_unfair_lock_unlock(&auoop::RenderPipePoolManager::instance(void)::global);
  v49 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
  AURegistrationServerConnection::RegisterExtensionProcess(v49);
  completionCopy[2](completionCopy, 0);

  v13 = 0;
LABEL_62:

  std::__function::__value_func<void ()(NSError *,std::tuple<BOOL,BOOL,NSArray * {__strong},NSArray * {__strong},BOOL,BOOL,int,unsigned long,unsigned long> &&)>::~__value_func[abi:ne200100](v67);
  objc_destroyWeak(&location);
}

@end