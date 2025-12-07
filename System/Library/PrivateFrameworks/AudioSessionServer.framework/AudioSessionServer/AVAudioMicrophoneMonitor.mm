@interface AVAudioMicrophoneMonitor
+ (id)sharedInstance;
- (AVAudioMicrophoneMonitor)init;
- (BOOL)setState:(BOOL)state clientType:(int64_t)type clientID:(unint64_t)d clientDescription:(const char *)description;
- (id).cxx_construct;
@end

@implementation AVAudioMicrophoneMonitor

+ (id)sharedInstance
{
  {
    +[AVAudioMicrophoneMonitor sharedInstance]::gShared = objc_alloc_init(AVAudioMicrophoneMonitor);
  }

  v2 = +[AVAudioMicrophoneMonitor sharedInstance]::gShared;

  return v2;
}

- (AVAudioMicrophoneMonitor)init
{
  if (MediaSafetyNetLibraryCore(0))
  {
    v4.receiver = self;
    v4.super_class = AVAudioMicrophoneMonitor;
    return [(AVAudioMicrophoneMonitor *)&v4 init];
  }

  else
  {

    return 0;
  }
}

- (BOOL)setState:(BOOL)state clientType:(int64_t)type clientID:(unint64_t)d clientDescription:(const char *)description
{
  stateCopy = state;
  if (MediaSafetyNetLibraryCore(0))
  {
    std::mutex::lock((self + 32));
    if (!stateCopy)
    {
      *&__dst = type;
      *(&__dst + 1) = d;
      v15 = std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::find<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>(self + 8, &__dst);
      if ((self + 16) == v15 || (std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__remove_node_pointer(self + 1, v15), operator delete(v15), *(self + 3)))
      {
        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      goto LABEL_27;
    }

    *&__dst = type;
    *(&__dst + 1) = d;
    std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__emplace_unique_key_args<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>,std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>(self + 1, &__dst, &__dst);
    v12 = v11;
    if (description)
    {
      v13 = strlen(description);
      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_30;
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v24) = v13;
      if (v13)
      {
        memcpy(&__dst, description, v13);
      }

      *(&__dst + v14) = 0;
      if (SHIBYTE(v24) >= 0)
      {
        v16 = HIBYTE(v24);
      }

      else
      {
        v16 = *(&__dst + 1);
      }

      if ((HIBYTE(v24) & 0x80) != 0)
      {
        operator delete(__dst);
      }

      if (!v16)
      {
        description = 0;
      }
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v17 = getMSNMonitorSetLastMicrophoneClientSymbolLoc(void)::ptr;
    v30 = getMSNMonitorSetLastMicrophoneClientSymbolLoc(void)::ptr;
    if (!getMSNMonitorSetLastMicrophoneClientSymbolLoc(void)::ptr)
    {
      *&__dst = MEMORY[0x277D85DD0];
      *(&__dst + 1) = 3221225472;
      v24 = ___ZL45getMSNMonitorSetLastMicrophoneClientSymbolLocv_block_invoke;
      v25 = &unk_278CEAD30;
      v26 = &v27;
      v18 = MediaSafetyNetLibrary();
      v19 = dlsym(v18, "MSNMonitorSetLastMicrophoneClient");
      *(v26[1] + 24) = v19;
      getMSNMonitorSetLastMicrophoneClientSymbolLoc(void)::ptr = *(v26[1] + 24);
      v17 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (v17)
    {
      v17(description);
      if (v12)
      {
        v12 = 1;
      }

LABEL_27:
      std::mutex::unlock((self + 32));
      return v12 & 1;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ATMSNMonitorSetLastMicrophoneClient(const char *)"];
    [currentHandler handleFailureInFunction:v22 file:@"MSNSoftLink.h" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
LABEL_30:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = 0;
  return v12 & 1;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 3) = 0;
  *(self + 4) = 850045863;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 11) = 0;
  return self;
}

@end