@interface SFTranscriberModelOptions
- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field geoLMRegionID:(id)d modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech enableParallelLoading:(BOOL)self0;
- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field geoLMRegionID:(id)d modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech enableParallelLoading:(BOOL)self0 enableFullPayloadCorrection:(BOOL)self1;
- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field geoLMRegionID:(id)d modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech enableParallelLoading:(BOOL)self0 enableFullPayloadCorrection:(BOOL)self1 languageModelCustomizationConfig:(id)self2;
- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock;
- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech;
- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech enableParallelLoading:(BOOL)loading;
- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field modelOverrideURL:(id)rL taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech;
@end

@implementation SFTranscriberModelOptions

- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field modelOverrideURL:(id)rL taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech
{
  *(&v8 + 1) = 0;
  LOBYTE(v8) = speech;
  return [SFTranscriberModelOptions initWithSupplementalModelURL:"initWithSupplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfileURLs:taskForMemoryLock:atypicalSpeech:enableParallelLoading:enableFullPayloadCorrection:" farField:l geoLMRegionID:field modelOverrideURL:0 speechProfileURLs:rL taskForMemoryLock:MEMORY[0x1E695E0F0] atypicalSpeech:lock enableParallelLoading:v8 enableFullPayloadCorrection:?];
}

- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock
{
  BYTE2(v8) = 0;
  LOWORD(v8) = 0;
  return [SFTranscriberModelOptions initWithSupplementalModelURL:"initWithSupplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfileURLs:taskForMemoryLock:atypicalSpeech:enableParallelLoading:enableFullPayloadCorrection:" farField:l geoLMRegionID:field modelOverrideURL:0 speechProfileURLs:rL taskForMemoryLock:ls atypicalSpeech:lock enableParallelLoading:v8 enableFullPayloadCorrection:?];
}

- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech
{
  *(&v9 + 1) = 0;
  LOBYTE(v9) = speech;
  return [SFTranscriberModelOptions initWithSupplementalModelURL:"initWithSupplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfileURLs:taskForMemoryLock:atypicalSpeech:enableParallelLoading:enableFullPayloadCorrection:" farField:l geoLMRegionID:field modelOverrideURL:0 speechProfileURLs:rL taskForMemoryLock:ls atypicalSpeech:lock enableParallelLoading:v9 enableFullPayloadCorrection:?];
}

- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech enableParallelLoading:(BOOL)loading
{
  BYTE2(v10) = 0;
  BYTE1(v10) = loading;
  LOBYTE(v10) = speech;
  return [SFTranscriberModelOptions initWithSupplementalModelURL:"initWithSupplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfileURLs:taskForMemoryLock:atypicalSpeech:enableParallelLoading:enableFullPayloadCorrection:" farField:l geoLMRegionID:field modelOverrideURL:0 speechProfileURLs:rL taskForMemoryLock:ls atypicalSpeech:lock enableParallelLoading:v10 enableFullPayloadCorrection:?];
}

- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field geoLMRegionID:(id)d modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech enableParallelLoading:(BOOL)self0
{
  BYTE2(v11) = 0;
  LOWORD(v11) = __PAIR16__(loading, speech);
  return [SFTranscriberModelOptions initWithSupplementalModelURL:"initWithSupplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfileURLs:taskForMemoryLock:atypicalSpeech:enableParallelLoading:enableFullPayloadCorrection:" farField:l geoLMRegionID:field modelOverrideURL:d speechProfileURLs:rL taskForMemoryLock:ls atypicalSpeech:lock enableParallelLoading:v11 enableFullPayloadCorrection:?];
}

- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field geoLMRegionID:(id)d modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech enableParallelLoading:(BOOL)self0 enableFullPayloadCorrection:(BOOL)self1
{
  *(&v12 + 1) = __PAIR16__(correction, loading);
  LOBYTE(v12) = speech;
  return [SFTranscriberModelOptions initWithSupplementalModelURL:"initWithSupplementalModelURL:farField:geoLMRegionID:modelOverrideURL:speechProfileURLs:taskForMemoryLock:atypicalSpeech:enableParallelLoading:enableFullPayloadCorrection:languageModelCustomizationConfig:" farField:l geoLMRegionID:field modelOverrideURL:d speechProfileURLs:rL taskForMemoryLock:ls atypicalSpeech:lock enableParallelLoading:v12 enableFullPayloadCorrection:0 languageModelCustomizationConfig:?];
}

- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field geoLMRegionID:(id)d modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech enableParallelLoading:(BOOL)self0 enableFullPayloadCorrection:(BOOL)self1 languageModelCustomizationConfig:(id)self2
{
  dCopy = d;
  lsCopy = ls;
  configCopy = config;
  v37.receiver = self;
  v37.super_class = SFTranscriberModelOptions;
  lockCopy = lock;
  rLCopy = rL;
  lCopy = l;
  v24 = [(SFTranscriberModelOptions *)&v37 init];
  v25 = [lCopy copy];

  supplementalModelURL = v24->_supplementalModelURL;
  v24->_supplementalModelURL = v25;

  v24->_farField = field;
  geoLMRegionID = v24->_geoLMRegionID;
  v24->_geoLMRegionID = dCopy;
  v28 = dCopy;

  v29 = [rLCopy copy];
  modelOverrideURL = v24->_modelOverrideURL;
  v24->_modelOverrideURL = v29;

  speechProfileURLs = v24->_speechProfileURLs;
  v24->_speechProfileURLs = lsCopy;
  v32 = lsCopy;

  v33 = [lockCopy copy];
  taskForMemoryLock = v24->_taskForMemoryLock;
  v24->_taskForMemoryLock = v33;

  v24->_atypicalSpeech = speech;
  v24->_enableParallelLoading = loading;
  v24->_enableFullPayloadCorrection = correction;
  languageModelCustomizationConfig = v24->_languageModelCustomizationConfig;
  v24->_languageModelCustomizationConfig = configCopy;

  return v24;
}

@end