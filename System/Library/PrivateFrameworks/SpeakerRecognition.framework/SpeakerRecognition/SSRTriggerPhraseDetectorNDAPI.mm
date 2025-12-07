@interface SSRTriggerPhraseDetectorNDAPI
- (SSRTriggerPhraseDetectorNDAPI)initWithConfigPath:(id)path resourcePath:(id)resourcePath phId:(unint64_t)id;
- (id)analyzeWavData:(id)data numSamples:(unint64_t)samples;
- (id)getSuperVectorWithEndPoint:(unint64_t)point;
- (void)dealloc;
@end

@implementation SSRTriggerPhraseDetectorNDAPI

- (id)getSuperVectorWithEndPoint:(unint64_t)point
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    novDetect = nd_getsupervector();
    if (novDetect)
    {
      novDetect = [MEMORY[0x277CBEA90] dataWithBytes:*novDetect length:4 * novDetect[2]];
    }

    v3 = vars8;
  }

  return novDetect;
}

- (id)analyzeWavData:(id)data numSamples:(unint64_t)samples
{
  dataCopy = data;
  [data bytes];
  nd_wavedata();
  if (self->_novDetect && (nd_phrasecount() < 1 ? (v7 = nd_getresults()) : (v7 = nd_getphraseresults()), (v8 = v7) != 0))
  {
    v9 = objc_alloc_init(SSRTriggerPhraseDetectorNDAPIResult);
    [(SSRTriggerPhraseDetectorNDAPIResult *)v9 setPhId:self->_phId];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v9 setSamplesFed:*v8];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v9 setBestPhrase:v8[3]];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v9 setBestStart:v8[1]];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v9 setBestEnd:v8[2]];
    LODWORD(v10) = v8[4];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v9 setBestScore:v10];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v9 setIsEarlyWarning:*(v8 + 20)];
    [(SSRTriggerPhraseDetectorNDAPIResult *)v9 setIsRescoring:*(v8 + 21)];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  if (self->_novDetect)
  {
    nd_close();
    self->_novDetect = 0;
  }

  v3.receiver = self;
  v3.super_class = SSRTriggerPhraseDetectorNDAPI;
  [(SSRTriggerPhraseDetectorNDAPI *)&v3 dealloc];
}

- (SSRTriggerPhraseDetectorNDAPI)initWithConfigPath:(id)path resourcePath:(id)resourcePath phId:(unint64_t)id
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  resourcePathCopy = resourcePath;
  v20.receiver = self;
  v20.super_class = SSRTriggerPhraseDetectorNDAPI;
  v10 = [(SSRTriggerPhraseDetectorNDAPI *)&v20 init];
  if (!v10)
  {
    goto LABEL_8;
  }

  v10->_novDetect = nd_create();
  v10->_phId = id;
  v11 = MEMORY[0x277D01970];
  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v22 = "[SSRTriggerPhraseDetectorNDAPI initWithConfigPath:resourcePath:phId:]";
    v23 = 2114;
    *v24 = pathCopy;
    *&v24[8] = 2114;
    *&v24[10] = resourcePathCopy;
    _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Initializing NDAPI using %{public}@, %{public}@", buf, 0x20u);
  }

  [pathCopy UTF8String];
  [resourcePathCopy cStringUsingEncoding:4];
  v13 = nd_initialize();
  if (v13)
  {
    v14 = v13;
    v15 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v18 = v15;
      v19 = nd_error();
      *buf = 136315650;
      v22 = "[SSRTriggerPhraseDetectorNDAPI initWithConfigPath:resourcePath:phId:]";
      v23 = 1026;
      *v24 = v14;
      *&v24[4] = 2082;
      *&v24[6] = v19;
      _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s Failed to initialize NDAPI: err=[%{public}d]:%{public}s", buf, 0x1Cu);
    }

    v16 = 0;
  }

  else
  {
LABEL_8:
    v16 = v10;
  }

  return v16;
}

@end