@interface VSSpeechEngine
+ (BOOL)hasPhaticResponses:(id)responses;
+ (BOOL)isUserCancelError:(id)error;
+ (id)mimeForFileExtension:(id)extension;
- (AudioStreamBasicDescription)asbd;
- (BOOL)initializeWithResourcePath:(id)path;
- (VSSpeechEngine)initWithVoicePath:(id)path resourcePath:(id)resourcePath;
- (id)loadResource:(id)resource error:(id *)error;
- (id)loadResourceAtPath:(id)path mimeType:(id)type error:(id *)error;
- (id)synthesizeText:(id)text loggable:(BOOL)loggable callback:(id)callback;
- (id)synthesizeText:loggable:callback:;
- (uint64_t)synthesizeText:loggable:callback:;
- (void)dealloc;
- (void)preheat;
- (void)setPitch:(float)pitch;
- (void)setRate:(float)rate;
- (void)setVolume:(float)volume;
- (void)stopAtMarker:(int64_t)marker;
- (void)synthesizeText:loggable:callback:;
- (void)unloadResource:(id)resource;
@end

@implementation VSSpeechEngine

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[2].mFormatID;
  *&retstr->mSampleRate = *&self[1].mBitsPerChannel;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[2].mBytesPerFrame;
  return self;
}

- (void)preheat
{
  v9 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_synthesisLock lock];
  v3 = mach_absolute_time();
  TTSSynthesizer::preheat(self->_synthesizer);
  [(NSLock *)self->_synthesisLock unlock];
  v4 = mach_absolute_time();
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v4 - v3;
    if (VSAbsoluteTimeToSecond_onceToken != -1)
    {
      dispatch_once(&VSAbsoluteTimeToSecond_onceToken, &__block_literal_global_7);
    }

    v7 = 134217984;
    v8 = *&VSAbsoluteTimeToSecond_clockFactor * v6;
    _os_log_impl(&dword_272850000, v5, OS_LOG_TYPE_INFO, "Engine preheating latency: %.3f", &v7, 0xCu);
  }
}

- (void)stopAtMarker:(int64_t)marker
{
  if (marker == 1)
  {
    currentCallbackResult = [(VSSpeechEngine *)self currentCallbackResult];
    [currentCallbackResult setStopMark:1];
  }

  else if (!marker)
  {
    TTSSynthesizer::stop_synthesis(self->_synthesizer);
  }

  currentCallbackResult2 = [(VSSpeechEngine *)self currentCallbackResult];
  [currentCallbackResult2 setStopMark:marker];
}

- (id)synthesizeText:(id)text loggable:(BOOL)loggable callback:(id)callback
{
  v45 = *MEMORY[0x277D85DE8];
  textCopy = text;
  callbackCopy = callback;
  [(NSLock *)self->_synthesisLock lock];
  v9 = VSGetLogDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = self;
    _os_log_debug_impl(&dword_272850000, v9, OS_LOG_TYPE_DEBUG, "VSSpeechEngine %p started synthesis.", buf, 0xCu);
  }

  v10 = [[VSSpeechSynthesisCallbackResult alloc] initWithCallback:callbackCopy];
  objc_msgSend_asbd(self);
  *buf = v29;
  v43 = v30;
  v44 = v31;
  [(VSSpeechSynthesisCallbackResult *)v10 setAsbd:buf];
  [(VSSpeechSynthesisCallbackResult *)v10 setText:textCopy];
  objc_storeStrong(&self->_currentCallbackResult, v10);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __51__VSSpeechEngine_synthesizeText_loggable_callback___block_invoke;
  v28[3] = &unk_279E4EFF0;
  v28[4] = self;
  *(&v43 + 1) = 0;
  *buf = &unk_2881D6040;
  *&buf[8] = MEMORY[0x2743CEF70](v28);
  *(&v43 + 1) = buf;
  TTSSynthesizer::set_censor_plaintext(self->_synthesizer);
  TTSSynthesizer::set_neural_cost();
  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  v11 = v10;
  v41[0] = &unk_2881D64E0;
  v41[1] = v11;
  v41[3] = v41;
  Observable::on_event();
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v41);
  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  v12 = v11;
  v40[0] = &unk_2881D6560;
  v40[1] = v12;
  v40[3] = v40;
  Observable::on_event();
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v40);
  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  v13 = v12;
  v39[0] = &unk_2881D65E0;
  v39[1] = v13;
  v39[3] = v39;
  Observable::on_event();
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v39);
  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  v14 = v13;
  v38[0] = &unk_2881D6660;
  v38[1] = v14;
  v38[3] = v38;
  Observable::on_event();
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v38);
  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  v15 = textCopy;
  std::string::basic_string[abi:ne200100]<0>(&__p, [textCopy UTF8String]);
  [(VSSpeechSynthesisCallbackResult *)v14 sampleBuffer];
  [(VSSpeechSynthesisCallbackResult *)v14 markerBuffer];
  v16 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_14;
  }

  if (*(&v43 + 1) != buf)
  {
    v16 = (*(**(&v43 + 1) + 16))();
LABEL_14:
    v35 = v16;
    goto LABEL_16;
  }

  v35 = v34;
  (*(**(&v43 + 1) + 24))();
LABEL_16:
  v17 = TTSSynthesizer::synthesize_text_with_markers_async();
  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](v34);
  if (v37 < 0)
  {
    operator delete(__p);
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Observable::remove_observer();
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Observable::remove_observer();
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Observable::remove_observer();
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Observable::remove_observer();
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  v18 = VSGetLogDefault();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__p) = 134217984;
    *(&__p + 4) = self;
    _os_log_debug_impl(&dword_272850000, v18, OS_LOG_TYPE_DEBUG, "VSSpeechEngine %p finished synthesis.", &__p, 0xCu);
  }

  [(NSLock *)self->_synthesisLock unlock];
  if (v17)
  {
    v19 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA470];
    v33 = @"TTSSynthesizer::synthesize_text_with_markers_async";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v21 = [v19 errorWithDomain:@"VSVocalizerEngine" code:v17 userInfo:v20];
  }

  else
  {
    v21 = 0;
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](buf);

  return v21;
}

uint64_t __51__VSSpeechEngine_synthesizeText_loggable_callback___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) currentCallbackResult];
  v4 = [v3 synthesisCallback:a2];

  return v4;
}

- (uint64_t)synthesizeText:loggable:callback:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z51-[VSSpeechEngine synthesizeText:loggable:callback:]E3$_0"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)synthesizeText:loggable:callback:
{

  JUMPOUT(0x2743CE900);
}

- (id)synthesizeText:loggable:callback:
{
  *a2 = &unk_2881D64E0;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (void)unloadResource:(id)resource
{
  v7 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = resourceCopy;
    [(NSLock *)self->_synthesisLock lock];
    if (v5)
    {
      objc_msgSend_resource(v5);
    }

    else
    {
      v6 = 0uLL;
    }

    TTSSynthesizer::unload_resource();
    if (*(&v6 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
    }

    [(NSLock *)self->_synthesisLock unlock];
  }

  else
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v6) = 138412290;
      *(&v6 + 4) = resourceCopy;
      _os_log_error_impl(&dword_272850000, v5, OS_LOG_TYPE_ERROR, "Unknown voice resource handle to unload: %@", &v6, 0xCu);
    }
  }
}

- (id)loadResource:(id)resource error:(id *)error
{
  v27[2] = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  path = [resourceCopy path];
  if (path)
  {
    pathExtension = [resourceCopy pathExtension];
    v9 = [VSSpeechEngine mimeForFileExtension:pathExtension];

    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = resourceCopy;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_272850000, v10, OS_LOG_TYPE_INFO, "Loading resource: %@, mime-type: %@", buf, 0x16u);
    }

    if (v9)
    {
      v11 = [(VSSpeechEngine *)self loadResourceAtPath:path mimeType:v9 error:error];
    }

    else
    {
      v15 = VSGetLogDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = resourceCopy;
        _os_log_error_impl(&dword_272850000, v15, OS_LOG_TYPE_ERROR, "Unable to find mime-type for '%@'", buf, 0xCu);
      }

      if (error)
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CCA470];
        v20[0] = @"url";
        v20[1] = v17;
        v21[0] = resourceCopy;
        v21[1] = @"unknown mime-type";
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
        *error = [v16 errorWithDomain:@"VSVocalizerEngine" code:1 userInfo:v18];
      }

      v9 = 0;
      v11 = 0;
    }

    goto LABEL_15;
  }

  v12 = VSGetLogDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = resourceCopy;
    _os_log_error_impl(&dword_272850000, v12, OS_LOG_TYPE_ERROR, "Url doesn't conform to RFC 1808 '%@'", buf, 0xCu);
  }

  if (error)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA470];
    v26[0] = @"url";
    v26[1] = v14;
    v27[0] = resourceCopy;
    v27[1] = @"unknown path";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    [v13 errorWithDomain:@"VSVocalizerEngine" code:1 userInfo:v9];
    *error = v11 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (id)loadResourceAtPath:(id)path mimeType:(id)type error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  typeCopy = type;
  [(NSLock *)self->_synthesisLock lock];
  std::string::basic_string[abi:ne200100]<0>(buf, [pathCopy UTF8String]);
  v10 = typeCopy;
  std::string::basic_string[abi:ne200100]<0>(&__p, [typeCopy UTF8String]);
  TTSSynthesizer::load_voice_resource();
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(*buf);
  }

  [(NSLock *)self->_synthesisLock unlock];
  if (v21)
  {
    v11 = objc_alloc_init(VSSpeechEngineVoiceResource);
    v12 = v11;
    v17 = v21;
    v18 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(VSSpeechEngineVoiceResource *)v11 setResource:&v17];
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  else
  {
    v13 = VSGetLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = pathCopy;
      _os_log_error_impl(&dword_272850000, v13, OS_LOG_TYPE_ERROR, "Unable to load resource '%@'", buf, 0xCu);
    }

    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v23[0] = @"path";
      v23[1] = @"mimeType";
      v24[0] = pathCopy;
      v24[1] = typeCopy;
      v23[2] = *MEMORY[0x277CCA470];
      v24[2] = @"TTSSynthesizer::load_voice_resource";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
      *error = [v14 errorWithDomain:@"VSVocalizerEngine" code:1 userInfo:v15];
    }

    v12 = 0;
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  return v12;
}

- (void)setVolume:(float)volume
{
  v10 = *MEMORY[0x277D85DE8];
  if (volume <= 0.01)
  {
    volumeCopy = 0.01;
  }

  else
  {
    volumeCopy = volume;
  }

  if (self->_volume != volumeCopy)
  {
    v5 = TTSSynthesizer::set_global_property();
    if (v5)
    {
      v6 = v5;
      v7 = VSGetLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 134217984;
        v9 = v6;
        _os_log_error_impl(&dword_272850000, v7, OS_LOG_TYPE_ERROR, "Error setVolume 0x%zx", &v8, 0xCu);
      }
    }

    else
    {
      self->_volume = volumeCopy;
    }
  }
}

- (void)setRate:(float)rate
{
  v11 = *MEMORY[0x277D85DE8];
  rateCopy = rate;
  if (rateCopy < 0.5)
  {
    rateCopy = 0.5;
  }

  if (rateCopy >= 4.0)
  {
    rateCopy = 4.0;
  }

  v4 = rateCopy;
  if (self->_rate != v4)
  {
    v6 = TTSSynthesizer::set_global_property();
    if (v6)
    {
      v7 = v6;
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = v7;
        _os_log_error_impl(&dword_272850000, v8, OS_LOG_TYPE_ERROR, "Error setRate 0x%zx", &v9, 0xCu);
      }
    }

    else
    {
      self->_rate = v4;
    }
  }
}

- (void)setPitch:(float)pitch
{
  v11 = *MEMORY[0x277D85DE8];
  pitchCopy = pitch;
  if (pitchCopy < 0.5)
  {
    pitchCopy = 0.5;
  }

  if (pitchCopy >= 2.0)
  {
    pitchCopy = 2.0;
  }

  v4 = pitchCopy;
  if (self->_pitch != v4)
  {
    v6 = TTSSynthesizer::set_global_property();
    if (v6)
    {
      v7 = v6;
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = v7;
        _os_log_error_impl(&dword_272850000, v8, OS_LOG_TYPE_ERROR, "Error setPitch 0x%zx", &v9, 0xCu);
      }
    }

    else
    {
      self->_pitch = v4;
    }
  }
}

- (void)dealloc
{
  synthesizer = self->_synthesizer;
  if (synthesizer)
  {
    TTSSynthesizer::~TTSSynthesizer(synthesizer);
    MEMORY[0x2743CE900]();
  }

  self->_synthesizer = 0;
  v4.receiver = self;
  v4.super_class = VSSpeechEngine;
  [(VSSpeechEngine *)&v4 dealloc];
}

- (BOOL)initializeWithResourcePath:(id)path
{
  v11 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  voicePath = self->_voicePath;
  v6 = VSGetLogDefault();
  v7 = v6;
  if (voicePath)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = self->_voicePath;
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_272850000, v7, OS_LOG_TYPE_INFO, "Initializing engine with voice path: %@", buf, 0xCu);
    }

    operator new();
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_272850000, v7, OS_LOG_TYPE_ERROR, "Failed to initialize synthesizer due to missing voice path.\n", buf, 2u);
  }

  return 0;
}

- (VSSpeechEngine)initWithVoicePath:(id)path resourcePath:(id)resourcePath
{
  v44 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  resourcePathCopy = resourcePath;
  v38.receiver = self;
  v38.super_class = VSSpeechEngine;
  v7 = [(VSSpeechEngine *)&v38 init];
  v8 = v7;
  v33 = v7;
  if (!v7)
  {
    goto LABEL_3;
  }

  objc_storeStrong(&v7->_voicePath, path);
  v33->_volume = 0.8;
  __asm { FMOV            V0.2S, #1.0 }

  *&v33->_rate = _D0;
  v14 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  synthesisLock = v33->_synthesisLock;
  v33->_synthesisLock = v14;

  v16 = [(VSSpeechEngine *)v33 initializeWithResourcePath:resourcePathCopy];
  v8 = v33;
  if (!v16)
  {
    v18 = VSGetLogDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = pathCopy;
      v42 = 2112;
      v43 = resourcePathCopy;
      _os_log_impl(&dword_272850000, v18, OS_LOG_TYPE_DEFAULT, "voice path '%@', resource path '%@'\n", buf, 0x16u);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v20 = defaultManager;
    v30 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:0];
    v21 = VSGetLogDefault();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v30 count];
      *buf = 67109120;
      LODWORD(v41) = v22;
      _os_log_impl(&dword_272850000, v21, OS_LOG_TYPE_DEFAULT, "%d files under voice path:", buf, 8u);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v30;
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v24)
    {
      v25 = *v35;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          v28 = VSGetLogDefault();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v27;
            _os_log_impl(&dword_272850000, v28, OS_LOG_TYPE_DEFAULT, "- %@", buf, 0xCu);
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v24);
    }

    else
    {
    }

    v17 = 0;
  }

  else
  {
LABEL_3:
    v17 = v8;
  }

  return v17;
}

+ (id)mimeForFileExtension:(id)extension
{
  extensionCopy = extension;
  if ([extensionCopy isEqualToString:@"dcb"])
  {
    v4 = @"application/edct-bin-dictionary";
  }

  else if ([extensionCopy isEqualToString:@"txt"])
  {
    v4 = @"application/x-vocalizer-rettt+text";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)hasPhaticResponses:(id)responses
{
  responsesCopy = responses;
  std::string::basic_string[abi:ne200100]<0>(&__p, [responsesCopy UTF8String]);
  has_phatic_responses = TTSSynthesizer::has_phatic_responses();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  return has_phatic_responses;
}

+ (BOOL)isUserCancelError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy && [errorCopy code] == 2147485703)
  {
    domain = [v4 domain];
    v6 = [domain isEqualToString:@"VSVocalizerEngine"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end