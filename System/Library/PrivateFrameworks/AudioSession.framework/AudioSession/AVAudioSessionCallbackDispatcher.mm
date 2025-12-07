@interface AVAudioSessionCallbackDispatcher
- (void)IOControllerEvent:(unint64_t)event sessions:(id)sessions isDecoupledInput:(BOOL)input;
- (void)pingClient:(unsigned int)client;
@end

@implementation AVAudioSessionCallbackDispatcher

- (void)pingClient:(unsigned int)client
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *avas::client::gSessionClientLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315650;
    v6 = "AVAudioSessionCallbackDispatcher.mm";
    v7 = 1024;
    v8 = 192;
    v9 = 1024;
    clientCopy = client;
    _os_log_impl(&dword_1AC8A4000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d pingClient called for session %x", &v5, 0x18u);
  }

  AVAudioSessionHandlePing(client);
}

- (void)IOControllerEvent:(unint64_t)event sessions:(id)sessions isDecoupledInput:(BOOL)input
{
  inputCopy = input;
  sessionsCopy = sessions;
  bytes = [sessionsCopy bytes];
  v9 = [sessionsCopy length];
  __p = 0;
  v11 = 0;
  v12 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, bytes, (bytes + (v9 & 0xFFFFFFFFFFFFFFFCLL)), v9 >> 2);
  AVAudioSessionDispatchIOControllerEvent(event, &__p, inputCopy);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

@end