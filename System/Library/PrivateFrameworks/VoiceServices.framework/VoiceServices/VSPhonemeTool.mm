@interface VSPhonemeTool
+ (id)generateTTSPhonemes:(id)phonemes voicePath:(id)path phonemeSystem:(int64_t)system error:(id *)error;
@end

@implementation VSPhonemeTool

+ (id)generateTTSPhonemes:(id)phonemes voicePath:(id)path phonemeSystem:(int64_t)system error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  phonemesCopy = phonemes;
  pathCopy = path;
  v10 = pathCopy;
  if (system > 2)
  {
    v14 = &stru_2881D71A8;
  }

  else
  {
    v11 = **(&unk_279E4EFD0 + system);
    v20[0] = 0;
    v20[1] = 0;
    v21 = 0;
    std::string::basic_string[abi:ne200100]<0>(v18, [pathCopy UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(__p, v11);
    MEMORY[0x2743CE890](v22, v18, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }

    v12 = phonemesCopy;
    std::string::basic_string[abi:ne200100]<0>(__p, [phonemesCopy UTF8String]);
    SiriTTS::TextToPhoneme::text_to_phoneme();
    *v20 = *v18;
    v21 = v19;
    HIBYTE(v19) = 0;
    LOBYTE(v18[0]) = 0;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v21 >= 0)
    {
      v13 = v20;
    }

    else
    {
      v13 = v20[0];
    }

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }
  }

  return v14;
}

@end