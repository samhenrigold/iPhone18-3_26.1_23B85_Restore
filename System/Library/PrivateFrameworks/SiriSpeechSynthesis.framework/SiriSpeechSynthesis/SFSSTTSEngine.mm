@interface SFSSTTSEngine
- (AudioStreamBasicDescription)asbd;
- (AudioStreamBasicDescription)constructPcmAsbdWithSampleRate:(SEL)rate;
- (SFSSTTSEngine)initWithVoicePath:(id)path resourcePath:(id)resourcePath;
- (id)loadResourceAtPath:(id)path mimeType:(id)type;
- (id)synthesizeText:(id)text loggable:(BOOL)loggable synthesisBegin:(id)begin synthesisChunk:(id)chunk synthesisEnd:(id)end;
- (void)dealloc;
- (void)preheat;
- (void)stopSynthesis;
@end

@implementation SFSSTTSEngine

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[1].mFormatID;
  *&retstr->mSampleRate = *&self->mBitsPerChannel;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[1].mBytesPerFrame;
  return self;
}

- (void)preheat
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = mach_absolute_time();
  TTSSynthesizer::preheat(self->_synthesizer.__ptr_);
  v4 = mach_absolute_time();
  v5 = SFSSGetLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    [SFSpeechSynthesisUtils absoluteTimeToSecond:v4 - v3];
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_269079000, v5, OS_LOG_TYPE_INFO, "Engine preheating latency: %.3f", &v7, 0xCu);
  }
}

- (void)stopSynthesis
{
  v3 = SFSSGetLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "Stop synthesis.", buf, 2u);
  }

  TTSSynthesizer::stop_synthesis(self->_synthesizer.__ptr_);
  v4 = SFSSGetLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_269079000, v4, OS_LOG_TYPE_INFO, "Synthesis stopped.", v5, 2u);
  }
}

- (id)synthesizeText:(id)text loggable:(BOOL)loggable synthesisBegin:(id)begin synthesisChunk:(id)chunk synthesisEnd:(id)end
{
  v37 = *MEMORY[0x277D85DE8];
  textCopy = text;
  beginCopy = begin;
  chunkCopy = chunk;
  endCopy = end;
  v15 = [[SFSSTTSEngineCallbackResult alloc] initWithBeginCallback:beginCopy chunkCallback:chunkCopy endCallback:endCopy];
  callbackResult = self->_callbackResult;
  self->_callbackResult = v15;

  objc_msgSend_asbd(self);
  v17 = self->_callbackResult;
  v34 = v27;
  v35 = v28;
  v36 = v29;
  [(SFSSTTSEngineCallbackResult *)v17 setAsbd:&v34];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __84__SFSSTTSEngine_synthesizeText_loggable_synthesisBegin_synthesisChunk_synthesisEnd___block_invoke;
  v26[3] = &unk_279C4C440;
  v26[4] = self;
  *(&v35 + 1) = 0;
  *&v34 = &unk_2879AE700;
  *(&v34 + 1) = MEMORY[0x26D631550](v26);
  *(&v35 + 1) = &v34;
  v18 = textCopy;
  std::string::basic_string[abi:ne200100]<0>(&__p, [textCopy UTF8String]);
  [(SFSSTTSEngineCallbackResult *)self->_callbackResult pcmDataBuffer];
  [(SFSSTTSEngineCallbackResult *)self->_callbackResult marker];
  v19 = *(&v35 + 1);
  if (!*(&v35 + 1))
  {
    goto LABEL_4;
  }

  if (*(&v35 + 1) != &v34)
  {
    v19 = (*(**(&v35 + 1) + 16))(*(&v35 + 1));
LABEL_4:
    v33 = v19;
    goto LABEL_6;
  }

  v33 = v32;
  (*(**(&v35 + 1) + 24))(*(&v35 + 1), v32);
LABEL_6:
  v20 = TTSSynthesizer::synthesize_text_with_markers_async();
  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](v32);
  if (v25 < 0)
  {
    operator delete(__p);
    if (!v20)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v20)
  {
LABEL_10:
    v21 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA470];
    v31 = @"TTSSynthesizer::synthesize_text";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v20 = [v21 errorWithDomain:@"SFSpeechSynthesisDeviceErrorDomain" code:v20 userInfo:v22];
  }

LABEL_11:
  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](&v34);

  return v20;
}

uint64_t __84__SFSSTTSEngine_synthesizeText_loggable_synthesisBegin_synthesisChunk_synthesisEnd___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) callbackResult];
  v4 = [v3 synthesisCallback:a2];

  return v4;
}

- (id)loadResourceAtPath:(id)path mimeType:(id)type
{
  v17[3] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  typeCopy = type;
  std::string::basic_string[abi:ne200100]<0>(&v14, [pathCopy UTF8String]);
  v7 = typeCopy;
  std::string::basic_string[abi:ne200100]<0>(&__p, [typeCopy UTF8String]);
  resource = TTSSynthesizer::load_resource();
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
    if (!resource)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (resource)
  {
LABEL_7:
    v9 = MEMORY[0x277CCA9B8];
    v16[0] = @"path";
    v16[1] = @"mimeType";
    v17[0] = pathCopy;
    v17[1] = typeCopy;
    v16[2] = *MEMORY[0x277CCA470];
    v17[2] = @"TTSSynthesizer::load_resource";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    resource = [v9 errorWithDomain:@"SFSpeechSynthesisDeviceErrorDomain" code:resource userInfo:v10];
  }

LABEL_8:

  return resource;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SFSSTTSEngine;
  [(SFSSTTSEngine *)&v2 dealloc];
}

- (AudioStreamBasicDescription)constructPcmAsbdWithSampleRate:(SEL)rate
{
  retstr->mSampleRate = a4;
  *&retstr->mFormatID = xmmword_26914CD80;
  *&retstr->mBytesPerFrame = xmmword_26914CD90;
  return self;
}

- (SFSSTTSEngine)initWithVoicePath:(id)path resourcePath:(id)resourcePath
{
  v16 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  resourcePathCopy = resourcePath;
  v14.receiver = self;
  v14.super_class = SFSSTTSEngine;
  v9 = [(SFSSTTSEngine *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_voicePath, path);
    if (v10->_voicePath)
    {
      operator new();
    }

    v11 = SFSSGetLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = pathCopy;
      _os_log_error_impl(&dword_269079000, v11, OS_LOG_TYPE_ERROR, "Voice asset path is invalid, path=%@", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end