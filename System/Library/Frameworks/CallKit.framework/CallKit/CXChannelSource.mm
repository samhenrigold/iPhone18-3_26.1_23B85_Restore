@interface CXChannelSource
- (void)handleAudioSessionActivationStateChangedTo:(id)to;
@end

@implementation CXChannelSource

- (void)handleAudioSessionActivationStateChangedTo:(id)to
{
  toCopy = to;
  queue = [(CXAbstractProviderSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CXChannelSource_handleAudioSessionActivationStateChangedTo___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = toCopy;
  selfCopy = self;
  v6 = toCopy;
  dispatch_async(queue, v7);
}

void __62__CXChannelSource_handleAudioSessionActivationStateChangedTo___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) BOOLValue];
    v5 = 136315394;
    v6 = "[CXChannelSource handleAudioSessionActivationStateChangedTo:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Sending %s %d", &v5, 0x12u);
  }

  v4 = [*(a1 + 40) vendorProtocolDelegate];
  [v4 handleAudioSessionActivationStateChangedTo:*(a1 + 32)];
}

@end