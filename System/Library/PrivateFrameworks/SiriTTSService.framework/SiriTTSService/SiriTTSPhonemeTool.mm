@interface SiriTTSPhonemeTool
+ (id)generateTTSPhonemes:(id)phonemes voicePath:(id)path phonemeSystem:(int64_t)system error:(id *)error;
@end

@implementation SiriTTSPhonemeTool

+ (id)generateTTSPhonemes:(id)phonemes voicePath:(id)path phonemeSystem:(int64_t)system error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  phonemesCopy = phonemes;
  pathCopy = path;
  v11 = pathCopy;
  if (system >= 3)
  {
    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      system = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown phoneme system: %d", system];
      v29[0] = system;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      *error = [v15 errorWithDomain:@"SiriTTSPhonemeTool" code:1 userInfo:v17];

      error = 0;
    }
  }

  else
  {
    v12 = **(&unk_1E7AF3818 + system);
    v26[0] = 0;
    v26[1] = 0;
    v27 = 0;
    std::string::basic_string[abi:ne200100]<0>(v21, [pathCopy UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(__p, v12);
    MEMORY[0x1B2739450](v23, v21, __p);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    v13 = phonemesCopy;
    std::string::basic_string[abi:ne200100]<0>(__p, [phonemesCopy UTF8String]);
    SiriTTS::TextToPhoneme::text_to_phoneme();
    *v26 = *v21;
    v27 = v22;
    HIBYTE(v22) = 0;
    LOBYTE(v21[0]) = 0;
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (v27 >= 0)
    {
      v14 = v26;
    }

    else
    {
      v14 = v26[0];
    }

    error = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  return error;
}

@end