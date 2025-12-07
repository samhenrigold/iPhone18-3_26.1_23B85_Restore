@interface SiriTTSSynthesisEngine
+ (BOOL)hasPhaticResponsesWithVoicePath:(id)path;
+ (BOOL)hasWordTimingSupportWithVoicePath:(id)path;
+ (_NSRange)_gryphonVoiceCompatibility;
- (AudioStreamBasicDescription)asbd;
- (BOOL)_unlockedLoadResourceWithPath:(id)path error:(id *)error;
- (BOOL)_unlockedSynthesize:(id)synthesize error:(id *)error;
- (BOOL)loadResourceWithPath:(id)path error:(id *)error;
- (BOOL)preheatWithError:(id *)error;
- (BOOL)supportPhaticResponse;
- (BOOL)supportWordTiming;
- (BOOL)synthesize:(id)synthesize error:(id *)error;
- (SiriTTSSynthesisEngine)initWithVoicePath:(id)path resourcePath:(id)resourcePath error:(id *)error;
- (id)_unlockedSynthesize:error:;
- (uint64_t)_unlockedSynthesize:error:;
- (void)_unlockedSynthesize:error:;
- (void)_unlockedUnloadResource:(id)resource;
- (void)dealloc;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
- (void)unloadResource:(id)resource;
@end

@implementation SiriTTSSynthesisEngine

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[2].mFormatID;
  *&retstr->mSampleRate = *&self[1].mBitsPerChannel;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[2].mBytesPerFrame;
  return self;
}

+ (_NSRange)_gryphonVoiceCompatibility
{
  engine_description = TTSSynthesizer::get_engine_description(self);
  v2 = (HIDWORD(engine_description) - engine_description + 1);
  engine_description = engine_description;
  result.length = v2;
  result.location = engine_description;
  return result;
}

- (void)setAsbd:(AudioStreamBasicDescription *)asbd
{
  v3 = *&asbd->mSampleRate;
  v4 = *&asbd->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&asbd->mBitsPerChannel;
  *&self->_asbd.mBytesPerPacket = v4;
  *&self->_asbd.mSampleRate = v3;
}

- (BOOL)supportPhaticResponse
{
  supportPhaticResponseCachedValue = self->_supportPhaticResponseCachedValue;
  if (supportPhaticResponseCachedValue)
  {

    return [(NSNumber *)supportPhaticResponseCachedValue BOOLValue];
  }

  else
  {
    v5 = [SiriTTSSynthesisEngine hasPhaticResponsesWithVoicePath:self->_voicePath];
    v6 = v5;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v8 = self->_supportPhaticResponseCachedValue;
    self->_supportPhaticResponseCachedValue = v7;

    return v6;
  }
}

- (BOOL)supportWordTiming
{
  supportWordTimingCachedValue = self->_supportWordTimingCachedValue;
  if (supportWordTimingCachedValue)
  {

    return [(NSNumber *)supportWordTimingCachedValue BOOLValue];
  }

  else
  {
    v5 = [SiriTTSSynthesisEngine hasWordTimingSupportWithVoicePath:self->_voicePath];
    v6 = v5;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v8 = self->_supportWordTimingCachedValue;
    self->_supportWordTimingCachedValue = v7;

    return v6;
  }
}

- (BOOL)preheatWithError:(id *)error
{
  [(NSLock *)self->_lock lock];
  LOBYTE(error) = [(SiriTTSSynthesisEngine *)self _preheatWithError:error];
  [(NSLock *)self->_lock unlock];
  return error;
}

- (BOOL)synthesize:(id)synthesize error:(id *)error
{
  synthesizeCopy = synthesize;
  [(NSLock *)self->_lock lock];
  LOBYTE(error) = [(SiriTTSSynthesisEngine *)self _unlockedSynthesize:synthesizeCopy error:error];
  [(NSLock *)self->_lock unlock];

  return error;
}

- (BOOL)_unlockedSynthesize:(id)synthesize error:(id *)error
{
  v94[4] = *MEMORY[0x1E69E9840];
  synthesizeCopy = synthesize;
  synthesizer = self->_synthesizer;
  [synthesizeCopy privacySensitive];
  TTSSynthesizer::set_censor_plaintext(synthesizer);
  [synthesizeCopy profile];
  TTSSynthesizer::set_neural_cost();
  [synthesizeCopy neuralSentencePitch];
  TTSSynthesizer::set_global_property();
  [synthesizeCopy neuralSentencePitchRange];
  TTSSynthesizer::set_global_property();
  [synthesizeCopy neuralSentenceDuration];
  TTSSynthesizer::set_global_property();
  [synthesizeCopy neuralSentenceEnergy];
  TTSSynthesizer::set_global_property();
  [synthesizeCopy neuralSentenceTilt];
  TTSSynthesizer::set_global_property();
  requestId = [synthesizeCopy requestId];

  if (requestId)
  {
    requestId2 = [synthesizeCopy requestId];
    std::string::basic_string[abi:ne200100]<0>(&__p, [requestId2 UTF8String]);
    TTSSynthesizer::set_global_property();
    if (SHIBYTE(v73) < 0)
    {
      operator delete(__p);
    }
  }

  [synthesizeCopy disableThermalFallback];
  TTSSynthesizer::set_global_property();
  v79 = 0;
  v80 = 0;
  v81 = 0;
  [synthesizeCopy rate];
  if (v10 != 0.0)
  {
    [synthesizeCopy rate];
    if (fabsf(v11 + -1.0) >= 0.01)
    {
      [synthesizeCopy rate];
      TTSSynthesizer::set_global_property();
    }
  }

  [synthesizeCopy pitch];
  if (v12 != 0.0)
  {
    [synthesizeCopy pitch];
    if (v13 != 1.0)
    {
      [synthesizeCopy pitch];
      TTSSynthesizer::set_global_property();
    }
  }

  [synthesizeCopy volume];
  if (v14 != 0.0)
  {
    [synthesizeCopy volume];
    if (v15 != 0.8)
    {
      [synthesizeCopy volume];
      TTSSynthesizer::set_global_property();
    }
  }

  LOBYTE(__p) = 0;
  v78 = 0;
  promptStyle = [synthesizeCopy promptStyle];
  v17 = promptStyle == 0;

  if (!v17)
  {
    std::string::basic_string[abi:ne200100]<0>(&v62, "");
    promptStyle2 = [synthesizeCopy promptStyle];
    v19 = promptStyle2;
    std::string::basic_string[abi:ne200100]<0>(&v60, [promptStyle2 UTF8String]);
    TTSSynthesizer::set_dynamic_prompts();
    if (v78 == v71)
    {
      if (v78)
      {
        if (SHIBYTE(v73) < 0)
        {
          operator delete(__p);
        }

        __p = *v65;
        v73 = v66;
        HIBYTE(v66) = 0;
        LOBYTE(v65[0]) = 0;
        if (SHIBYTE(v75) < 0)
        {
          operator delete(v74);
        }

        v74 = *v67;
        v75 = v68;
        HIBYTE(v68) = 0;
        LOBYTE(v67[0]) = 0;
        std::vector<std::string>::__vdeallocate(&v76);
        v76 = v69;
        memset(&v69, 0, sizeof(v69));
        std::vector<std::string>::__vdeallocate(&v77);
        v77 = v70;
        memset(&v70, 0, sizeof(v70));
      }
    }

    else if (v78)
    {
      v82 = &v77;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v82);
      v82 = &v76;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v82);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74);
      }

      if (SHIBYTE(v73) < 0)
      {
        operator delete(__p);
      }

      v78 = 0;
    }

    else
    {
      __p = *v65;
      v20 = v66;
      v65[0] = 0;
      v65[1] = 0;
      v21 = *v67;
      v66 = 0;
      v67[0] = 0;
      v74 = v21;
      v73 = v20;
      v75 = v68;
      v67[1] = 0;
      v68 = 0;
      v76 = v69;
      memset(&v69, 0, sizeof(v69));
      v77 = v70;
      memset(&v70, 0, sizeof(v70));
      v78 = 1;
    }

    if (v71 == 1)
    {
      v82 = &v70;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v82);
      v82 = &v69;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v82);
      if (SHIBYTE(v68) < 0)
      {
        operator delete(v67[0]);
      }

      if (SHIBYTE(v66) < 0)
      {
        operator delete(v65[0]);
      }
    }

    if (v61 < 0)
    {
      operator delete(v60);
    }

    if (v64 < 0)
    {
      operator delete(v62);
    }
  }

  if (v78 == 1)
  {
    if (v73 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_p];
    if (v75 >= 0)
    {
      v24 = &v74;
    }

    else
    {
      v24 = v74;
    }

    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v24];
    dynamicPromptHandler = [synthesizeCopy dynamicPromptHandler];
    (dynamicPromptHandler)[2](dynamicPromptHandler, v23, v25);
  }

  audioHandler = [synthesizeCopy audioHandler];
  v28 = audioHandler == 0;

  if (!v28)
  {
    TTSSynthesizer::get_event_bus(&v62, self->_synthesizer);
    v29 = synthesizeCopy;
    v94[0] = &unk_1F28C4A40;
    v94[1] = v29;
    v94[3] = v94;
    TTSSynthesizerEventBus::on_audio();
    std::__function::__value_func<void ()(std::vector<float> const&)>::~__value_func[abi:ne200100](v94);
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v79, v65);
    if (v65[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65[1]);
    }
  }

  promptHandler = [synthesizeCopy promptHandler];
  v31 = promptHandler == 0;

  if (!v31)
  {
    TTSSynthesizer::get_event_bus(&v62, self->_synthesizer);
    v32 = synthesizeCopy;
    v93[0] = &unk_1F28C4AC0;
    v93[1] = v32;
    v93[3] = v93;
    Observable::on_event();
    std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v93);
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v79, v65);
    if (v65[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65[1]);
    }
  }

  wordTimingsHandler = [synthesizeCopy wordTimingsHandler];
  v34 = wordTimingsHandler == 0;

  if (!v34)
  {
    mSampleRate = self->_asbd.mSampleRate;
    TTSSynthesizer::get_event_bus(&v62, self->_synthesizer);
    v36 = synthesizeCopy;
    v89 = &unk_1F28C4B40;
    *&mSampleRate = mSampleRate;
    v90 = LODWORD(mSampleRate);
    v91 = v36;
    v92 = &v89;
    TTSSynthesizerEventBus::on_marker();
    std::__function::__value_func<void ()(std::vector<TTSSynthesizer::Marker> const&)>::~__value_func[abi:ne200100](&v89);
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v79, v65);
    if (v65[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65[1]);
    }
  }

  neuralFallbackHandler = [synthesizeCopy neuralFallbackHandler];
  v38 = neuralFallbackHandler == 0;

  if (!v38)
  {
    TTSSynthesizer::get_event_bus(&v62, self->_synthesizer);
    v39 = synthesizeCopy;
    v88[0] = &unk_1F28C4BC0;
    v88[1] = v39;
    v88[3] = v88;
    Observable::on_event();
    std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v88);
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v79, v65);
    if (v65[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65[1]);
    }
  }

  useHydraFrontendHandler = [synthesizeCopy useHydraFrontendHandler];
  v41 = useHydraFrontendHandler == 0;

  if (!v41)
  {
    TTSSynthesizer::get_event_bus(&v62, self->_synthesizer);
    v42 = synthesizeCopy;
    v87[0] = &unk_1F28C4C40;
    v87[1] = v42;
    v87[3] = v87;
    Observable::on_event();
    std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v87);
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v79, v65);
    if (v65[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65[1]);
    }
  }

  synthesisIssueHandler = [synthesizeCopy synthesisIssueHandler];
  v44 = synthesisIssueHandler == 0;

  if (!v44)
  {
    TTSSynthesizer::get_event_bus(&v62, self->_synthesizer);
    v45 = synthesizeCopy;
    v86[0] = &unk_1F28C4CC0;
    v86[1] = v45;
    v86[3] = v86;
    Observable::on_event();
    std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v86);
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v79, v65);
    if (v65[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65[1]);
    }
  }

  wordAlignmentFailureHandler = [synthesizeCopy wordAlignmentFailureHandler];
  v47 = wordAlignmentFailureHandler == 0;

  if (!v47)
  {
    TTSSynthesizer::get_event_bus(&v62, self->_synthesizer);
    v48 = synthesizeCopy;
    v85[0] = &unk_1F28C4D40;
    v85[1] = v48;
    v85[3] = v85;
    Observable::on_event();
    std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v85);
    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v79, v65);
    if (v65[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65[1]);
    }
  }

  text = [synthesizeCopy text];
  v50 = text;
  std::string::basic_string[abi:ne200100]<0>(v65, [text UTF8String]);
  v51 = TTSSynthesizer::synthesize_text();
  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65[0]);
  }

  v52 = v79;
  for (i = v80; v52 != i; v52 += 16)
  {
    TTSSynthesizer::get_event_bus(v65, self->_synthesizer);
    v54 = *(v52 + 8);
    v59 = v54;
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Observable::remove_observer();
    if (v59)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v59);
    }

    if (v65[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65[1]);
    }
  }

  TTSSynthesizer::set_global_property();
  TTSSynthesizer::set_global_property();
  TTSSynthesizer::set_global_property();
  TTSSynthesizer::set_global_property();
  TTSSynthesizer::set_global_property();
  TTSSynthesizer::set_global_property();
  TTSSynthesizer::set_global_property();
  TTSSynthesizer::set_global_property();
  if (error && v51)
  {
    v55 = MEMORY[0x1E696ABC0];
    v83 = *MEMORY[0x1E696A588];
    v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TTSSynthesizer::synthesize_text error: %@", 0];
    v84 = v56;
    v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    *error = [v55 errorWithDomain:@"SiriTTSSynthesisEngine" code:v51 userInfo:v57];
  }

  if (v78 == 1)
  {
    v65[0] = &v77;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v65);
    v65[0] = &v76;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v65);
    if (SHIBYTE(v75) < 0)
    {
      operator delete(v74);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(__p);
    }
  }

  *&__p = &v79;
  std::vector<std::shared_ptr<Observer>>::__destroy_vector::operator()[abi:ne200100](&__p);

  return v51 == 0;
}

- (uint64_t)_unlockedSynthesize:error:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z52-[SiriTTSSynthesisEngine _unlockedSynthesize:error:]E3$_0"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)_unlockedSynthesize:error:
{

  JUMPOUT(0x1B27394E0);
}

- (id)_unlockedSynthesize:error:
{
  *a2 = &unk_1F28C4A40;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (void)unloadResource:(id)resource
{
  resourceCopy = resource;
  [(NSLock *)self->_lock lock];
  [(SiriTTSSynthesisEngine *)self _unlockedUnloadResource:resourceCopy];
  [(NSLock *)self->_lock unlock];
}

- (void)_unlockedUnloadResource:(id)resource
{
  resourceCopy = resource;
  v4 = resourceCopy;
  if (resourceCopy)
  {
    objc_msgSend_handle(resourceCopy);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v5)
    {
      objc_msgSend_handle(v4);
      TTSSynthesizer::unload_resource();
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }
}

- (BOOL)loadResourceWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  [(NSLock *)self->_lock lock];
  LOBYTE(error) = [(SiriTTSSynthesisEngine *)self _unlockedLoadResourceWithPath:pathCopy error:error];
  [(NSLock *)self->_lock unlock];

  return error;
}

- (BOOL)_unlockedLoadResourceWithPath:(id)path error:(id *)error
{
  v25[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  path = [pathCopy path];
  std::string::basic_string[abi:ne200100]<0>(&v20, [path UTF8String]);
  mimeType = [pathCopy mimeType];
  v9 = mimeType;
  std::string::basic_string[abi:ne200100]<0>(&__p, [mimeType UTF8String]);
  TTSSynthesizer::load_voice_resource();
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  v10 = v22;
  if (v22)
  {
    v16 = v22;
    v17 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [pathCopy setHandle:&v16];
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    [(NSMutableArray *)self->_loadedResources addObject:pathCopy];
  }

  else if (error)
  {
    v11 = MEMORY[0x1E696ABC0];
    v24[0] = @"path";
    path2 = [pathCopy path];
    v25[0] = path2;
    v24[1] = @"mimeType";
    mimeType2 = [pathCopy mimeType];
    v24[2] = *MEMORY[0x1E696A588];
    v25[1] = mimeType2;
    v25[2] = @"TTSSynthesizer::load_voice_resource";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
    *error = [v11 errorWithDomain:@"SiriTTSSynthesisEngine" code:1 userInfo:v14];
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  return v10 != 0;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_loadedResources;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(SiriTTSSynthesisEngine *)self _unlockedUnloadResource:*(*(&v9 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  synthesizer = self->_synthesizer;
  if (synthesizer)
  {
    TTSSynthesizer::~TTSSynthesizer(synthesizer);
    MEMORY[0x1B27394E0]();
  }

  self->_synthesizer = 0;
  v8.receiver = self;
  v8.super_class = SiriTTSSynthesisEngine;
  [(SiriTTSSynthesisEngine *)&v8 dealloc];
}

- (SiriTTSSynthesisEngine)initWithVoicePath:(id)path resourcePath:(id)resourcePath error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  resourcePathCopy = resourcePath;
  v14.receiver = self;
  v14.super_class = SiriTTSSynthesisEngine;
  v13 = [(SiriTTSSynthesisEngine *)&v14 init];
  if (pathCopy && [pathCopy length])
  {
    operator new();
  }

  if (error)
  {
    v9 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"Empty voice path cannot be used.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v9 errorWithDomain:@"SiriTTSSynthesisEngine" code:-1 userInfo:v10];
  }

  return 0;
}

+ (BOOL)hasWordTimingSupportWithVoicePath:(id)path
{
  pathCopy = path;
  std::string::basic_string[abi:ne200100]<0>(&__p, [pathCopy UTF8String]);
  has_word_timing_support = TTSSynthesizer::has_word_timing_support();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  return has_word_timing_support;
}

+ (BOOL)hasPhaticResponsesWithVoicePath:(id)path
{
  pathCopy = path;
  std::string::basic_string[abi:ne200100]<0>(&__p, [pathCopy UTF8String]);
  has_phatic_responses = TTSSynthesizer::has_phatic_responses();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  return has_phatic_responses;
}

@end