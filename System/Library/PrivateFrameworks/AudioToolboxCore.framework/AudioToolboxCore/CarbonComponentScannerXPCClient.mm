@interface CarbonComponentScannerXPCClient
- (AudioComponentVector)initialScan:(SEL)scan;
- (CarbonComponentScannerXPCClient)init;
- (id)xpcConnection;
- (void)closeService;
- (void)dealloc;
- (void)handleConnectionError:(BOOL)error;
- (void)rescan:(id)rescan added:(void *)added removed:(void *)removed;
@end

@implementation CarbonComponentScannerXPCClient

- (void)closeService
{
  v11 = *MEMORY[0x1E69E9840];
  [(CarbonComponentScannerXPCClient *)self xpcConnection];
  v5[0] = &unk_1F033F978;
  v5[1] = &__block_literal_global_15898;
  v2 = v5[3] = v5;
  v6 = v2;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v7, v5);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v5);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v10, v7);
  v3 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJEE11async_proxyEv_block_invoke;
  v8[3] = &__block_descriptor_64_ea8_32c50_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJEEEEEE_e17_v16__0__NSError_8l;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v9, v10);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v8];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v9);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v10);
  [v4 closeService];

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v7);
}

- (void)rescan:(id)rescan added:(void *)added removed:(void *)removed
{
  v26[4] = *MEMORY[0x1E69E9840];
  rescanCopy = rescan;
  [(CarbonComponentScannerXPCClient *)self xpcConnection];
  aBlock.__begin_ = &unk_1F033F8D0;
  aBlock.__end_ = &v19;
  v9 = *&aBlock.mSorted = &aBlock;
  v19 = v9;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::__value_func[abi:ne200100](v20, &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100](&aBlock);
  v21 = 0;
  v22 = 0;
  obj = 0;

  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::__value_func[abi:ne200100](v26, v20);
  v10 = v19;
  aBlock.__begin_ = MEMORY[0x1E69E9820];
  aBlock.__end_ = 3321888768;
  aBlock.__cap_ = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJU8__strongP6NSDataS7_EE10sync_proxyEv_block_invoke;
  *&aBlock.mSorted = &__block_descriptor_64_ea8_32c71_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP6NSDataS6_EEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::__value_func[abi:ne200100](v25, v26);
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v25);
  v12 = std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v26);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::__value_func[abi:ne200100](v12, v20);
  aBlock.__begin_ = MEMORY[0x1E69E9820];
  aBlock.__end_ = 3321888768;
  aBlock.__cap_ = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJU8__strongP6NSDataS7_EE5replyEv_block_invoke;
  *&aBlock.mSorted = &__block_descriptor_64_ea8_32c71_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP6NSDataS6_EEEEEE_e39_v32__0__NSError_8__NSData_16__NSData_24l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::__value_func[abi:ne200100](v25, v26);
  v13 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v25);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v26);
  [v11 rescan:rescanCopy reply:v13];

  v14 = v21;
  if (v14)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v15 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      LODWORD(aBlock.__begin_) = 136315650;
      *(&aBlock.__begin_ + 4) = "CarbonComponentScannerXPCClient.mm";
      WORD2(aBlock.__end_) = 1024;
      *(&aBlock.__end_ + 6) = 112;
      WORD1(aBlock.__cap_) = 2112;
      *(&aBlock.__cap_ + 4) = v14;
      _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d CarbonComponentScannerXPCClient error encountered on rescan: %@", &aBlock, 0x1Cu);
    }
  }

  else
  {
    v17 = 0;
    v18 = v22;
    objc_storeStrong(&v17, obj);
    AudioComponentVector::createWithSerializedData(&aBlock, v18);
    std::vector<std::shared_ptr<APComponent>>::__vdeallocate(added);
    *added = *&aBlock.__begin_;
    *(added + 2) = aBlock.__cap_;
    memset(&aBlock, 0, 24);
    *(added + 24) = aBlock.mSorted;
    v26[0] = &aBlock;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](v26);
    AudioComponentVector::createWithSerializedData(&aBlock, v17);
    std::vector<std::shared_ptr<APComponent>>::__vdeallocate(removed);
    *removed = *&aBlock.__begin_;
    *(removed + 2) = aBlock.__cap_;
    memset(&aBlock, 0, 24);
    *(removed + 24) = aBlock.mSorted;
    v26[0] = &aBlock;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](v26);
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong},NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v20);
}

- (AudioComponentVector)initialScan:(SEL)scan
{
  v23[4] = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(CarbonComponentScannerXPCClient *)self xpcConnection];
  aBlock.__begin_ = &unk_1F033F810;
  aBlock.__end_ = &v17;
  v7 = *&aBlock.mSorted = &aBlock;
  v17 = v7;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::__value_func[abi:ne200100](v18, &aBlock);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100](&aBlock);
  v19 = 0;
  v20 = 0;

  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::__value_func[abi:ne200100](v23, v18);
  v8 = v17;
  aBlock.__begin_ = MEMORY[0x1E69E9820];
  aBlock.__end_ = 3321888768;
  aBlock.__cap_ = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJU8__strongP6NSDataEE10sync_proxyEv_block_invoke;
  *&aBlock.mSorted = &__block_descriptor_64_ea8_32c68_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP6NSDataEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::__value_func[abi:ne200100](v22, v23);
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&aBlock];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  v10 = std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v23);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::__value_func[abi:ne200100](v10, v18);
  aBlock.__begin_ = MEMORY[0x1E69E9820];
  aBlock.__end_ = 3321888768;
  aBlock.__cap_ = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33CarbonComponentScannerXPCProtocol11objc_objectJU8__strongP6NSDataEE5replyEv_block_invoke;
  *&aBlock.mSorted = &__block_descriptor_64_ea8_32c68_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP6NSDataEEEEEE_e28_v24__0__NSError_8__NSData_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::__value_func[abi:ne200100](v22, v23);
  v11 = _Block_copy(&aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v22);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v23);
  [v9 initialScan:v6 reply:v11];

  v12 = v19;
  if (v12)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v13 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      LODWORD(aBlock.__begin_) = 136315650;
      *(&aBlock.__begin_ + 4) = "CarbonComponentScannerXPCClient.mm";
      WORD2(aBlock.__end_) = 1024;
      *(&aBlock.__end_ + 6) = 88;
      WORD1(aBlock.__cap_) = 2112;
      *(&aBlock.__cap_ + 4) = v12;
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d CarbonComponentScannerXPCClient error encountered on initialScan: %@", &aBlock, 0x1Cu);
    }

    *&retstr->__begin_ = 0u;
    *&retstr->__cap_ = 0u;
    retstr->mSorted = 1;
  }

  else
  {
    v14 = v20;
    AudioComponentVector::createWithSerializedData(&aBlock, v14);
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    std::vector<std::shared_ptr<APComponent>>::__init_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(retstr, aBlock.__begin_, aBlock.__end_, (aBlock.__end_ - aBlock.__begin_) >> 4);
    retstr->mSorted = aBlock.mSorted;
    v23[0] = &aBlock;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](v23);
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<NSData * {__strong}> &&)>::~__value_func[abi:ne200100](v18);
  return result;
}

- (void)handleConnectionError:(BOOL)error
{
  errorCopy = error;
  v14 = *MEMORY[0x1E69E9840];
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v5 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
  {
    v7 = "interrupted";
    *&v11[4] = "CarbonComponentScannerXPCClient.mm";
    *v11 = 136315650;
    if (errorCopy)
    {
      v7 = "invalidated";
    }

    *&v11[12] = 1024;
    *&v11[14] = 70;
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d CarbonComponentScannerXPCClient connection was %s!", v11, 0x1Cu);
  }

  connection = self->_connection;
  p_connection = &self->_connection;
  [(NSXPCConnection *)connection invalidate:*v11];
  v10 = *p_connection;
  *p_connection = 0;
}

- (id)xpcConnection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.audio.CarbonComponentScanner.x86-64"];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0356570];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__CarbonComponentScannerXPCClient_xpcConnection__block_invoke;
    v10[3] = &unk_1E72C2DF8;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__CarbonComponentScannerXPCClient_xpcConnection__block_invoke_2;
    v8[3] = &unk_1E72C2DF8;
    objc_copyWeak(&v9, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v8];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __48__CarbonComponentScannerXPCClient_xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained handleConnectionError:0];
  }
}

void __48__CarbonComponentScannerXPCClient_xpcConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained handleConnectionError:1];
  }
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }

  v5.receiver = self;
  v5.super_class = CarbonComponentScannerXPCClient;
  [(CarbonComponentScannerXPCClient *)&v5 dealloc];
}

- (CarbonComponentScannerXPCClient)init
{
  v6.receiver = self;
  v6.super_class = CarbonComponentScannerXPCClient;
  v2 = [(CarbonComponentScannerXPCClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    connection = v2->_connection;
    v2->_connection = 0;
  }

  return v3;
}

@end