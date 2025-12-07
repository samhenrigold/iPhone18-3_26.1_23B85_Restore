@interface NviDirectionalitySignalProvider
- (NviDirectionalitySignalProvider)initWithDataSource:(id)source assetsProvider:(id)provider;
- (void)addDelegate:(id)delegate;
- (void)audioChunkAvailable:(id)available numChannels:(unint64_t)channels numSamplesPerChannel:(unint64_t)channel startSampleId:(unint64_t)id atAbsMachTimestamp:(unint64_t)timestamp;
- (void)dealloc;
- (void)removeDelegate:(id)delegate;
- (void)request:(id)request didFailWithError:(id)error;
- (void)request:(id)request didProduceResult:(id)result;
- (void)reset;
- (void)startWithNviContext:(id)context didStartHandler:(id)handler;
- (void)stopWithDidStopHandler:(id)handler;
@end

@implementation NviDirectionalitySignalProvider

- (void)request:(id)request didFailWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  v7 = NviLogContextFacility;
  if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[NviDirectionalitySignalProvider request:didFailWithError:]";
    v10 = 2114;
    v11 = requestCopy;
    v12 = 2114;
    v13 = errorCopy;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s request: %{public}@, returnedError: %{public}@", &v8, 0x20u);
  }
}

- (void)request:(id)request didProduceResult:(id)result
{
  resultCopy = result;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__NviDirectionalitySignalProvider_request_didProduceResult___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v9 = resultCopy;
  selfCopy = self;
  v7 = resultCopy;
  dispatch_async(queue, v8);
}

void __60__NviDirectionalitySignalProvider_request_didProduceResult___block_invoke(uint64_t a1, const char *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_timeRange(v3, a2);
    v4 = *(a1 + 32);
    v5 = v33;
    if (v4)
    {
      objc_msgSend_timeRange(v4);
      v6 = *(&v31 + 1);
      v7 = *(a1 + 32);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
  }

  v7 = 0;
  v6 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
LABEL_6:
  v8 = *(*(a1 + 40) + 12);
  [v7 azimuth];
  *(*(a1 + 40) + 16) = ((1.0 - *(*(a1 + 40) + 12)) * *(*(a1 + 40) + 16)) + (v8 * v9);
  [*(*(a1 + 40) + 80) setSigGenTs:mach_absolute_time()];
  v10 = *(a1 + 32);
  if (v10)
  {
    objc_msgSend_timeRange(v10);
    v11 = v27;
  }

  else
  {
    v11 = 0;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
  }

  [*(*(a1 + 40) + 80) setStartSample:v11];
  [*(*(a1 + 40) + 80) setEndSample:v6 + v5];
  [*(a1 + 32) azimuth];
  [*(*(a1 + 40) + 80) setAzimuth:?];
  v12 = *(a1 + 40);
  LODWORD(v13) = *(v12 + 16);
  [*(v12 + 80) setEstimatedAzimuth:v13];
  [*(*(a1 + 40) + 80) setProcessedAudioDurMs:{(*(*(a1 + 40) + 72) / objc_msgSend(*(*(a1 + 40) + 24), "sampleRate")) * 1000.0}];
  v14 = [*(a1 + 32) spatialSpectrum];
  [*(*(a1 + 40) + 80) setSpatialSpectrumData:v14];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = *(*(a1 + 40) + 48);
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v23 + 1) + 8 * i) signalProvider:*(a1 + 40) hasSignalData:{*(*(a1 + 40) + 80), v23}];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v36 count:16];
    }

    while (v17);
  }

  v20 = *(a1 + 40);
  v21 = *(v20 + 88);
  v22 = [*(v20 + 80) stringForLogging];
  [v21 logData:v22];
}

- (void)audioChunkAvailable:(id)available numChannels:(unint64_t)channels numSamplesPerChannel:(unint64_t)channel startSampleId:(unint64_t)id atAbsMachTimestamp:(unint64_t)timestamp
{
  availableCopy = available;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __121__NviDirectionalitySignalProvider_audioChunkAvailable_numChannels_numSamplesPerChannel_startSampleId_atAbsMachTimestamp___block_invoke;
  block[3] = &unk_2784C3E20;
  block[4] = self;
  v15 = availableCopy;
  channelCopy = channel;
  idCopy = id;
  channelsCopy = channels;
  v13 = availableCopy;
  dispatch_async(queue, block);
}

void __121__NviDirectionalitySignalProvider_audioChunkAvailable_numChannels_numSamplesPerChannel_startSampleId_atAbsMachTimestamp___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    v3 = *(v1 + 96);
    v4 = [*(a1 + 40) rawMicChannelsDataWithNumSamplesPerChannel:*(a1 + 48)];
    [v3 addSamples:objc_msgSend(v4 numSamples:{"bytes"), *(a1 + 48)}];

    v5 = *(a1 + 32);
    if ((*(v5 + 64) & 0x8000000000000000) != 0)
    {
      *(v5 + 64) = *(a1 + 56);
      v6 = NviLogContextFacility;
      if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = *(*(a1 + 32) + 64);
        v9 = *(a1 + 64);
        v10 = *(a1 + 48);
        v11 = v6;
        v28 = 136316162;
        v29 = "[NviDirectionalitySignalProvider audioChunkAvailable:numChannels:numSamplesPerChannel:startSampleId:atAbsMachTimestamp:]_block_invoke";
        v30 = 2050;
        v31 = v8;
        v32 = 2050;
        v33 = v9;
        v34 = 2050;
        v35 = v10;
        v36 = 2050;
        v37 = [v7 length];
        _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_DEFAULT, "%s Dir: firstSample: %{public}lu, numChannels=%{public}lu, numSamplesPerChannel: %{public}lu, length: %{public}lu", &v28, 0x34u);
      }
    }

    v12 = [*(a1 + 40) rawMicChannelsDataWithNumSamplesPerChannel:*(a1 + 48)];
    v13 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:7208966];
    v14 = [objc_alloc(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:v13 channelLayout:{objc_msgSend(*(*(a1 + 32) + 24), "sampleRate")}];
    v15 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v14 frameCapacity:*(a1 + 48)];
    [v15 setFrameLength:*(a1 + 48)];
    v16 = *(a1 + 48);
    v17 = +[NviConstants numChannelsForNviDirectionality];
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = 2 * v16;
      v21 = v17;
      do
      {
        v22 = [v12 bytes];
        v23 = [v15 mutableAudioBufferList];
        v24 = *(a1 + 48);
        if (v24)
        {
          v25 = *(v23 + 16 * v19 + 16);
          v26 = (v22 + v18);
          do
          {
            v27 = *v26++;
            *v25++ = v27 / 32767.0;
            --v24;
          }

          while (v24);
        }

        ++v19;
        v18 += v20;
      }

      while (v19 != v21);
    }

    [*(*(a1 + 32) + 56) analyzeAudioBuffer:v15 atAudioFramePosition:*(*(a1 + 32) + 72)];
    *(*(a1 + 32) + 72) += *(a1 + 48);
  }
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NviDirectionalitySignalProvider_reset__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __40__NviDirectionalitySignalProvider_reset__block_invoke(uint64_t result)
{
  *(*(result + 32) + 72) = 0;
  *(*(result + 32) + 16) = 0;
  *(*(result + 32) + 8) = 0;
  return result;
}

- (void)stopWithDidStopHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__NviDirectionalitySignalProvider_stopWithDidStopHandler___block_invoke;
  v7[3] = &unk_2784C6E98;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __58__NviDirectionalitySignalProvider_stopWithDidStopHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  [*(*(a1 + 32) + 24) removeReceiver:?];
  [*(*(a1 + 32) + 88) endRequest];
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  *(v2 + 88) = 0;

  [*(*(a1 + 32) + 96) endAudio];
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  *(v4 + 96) = 0;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)startWithNviContext:(id)context didStartHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NviDirectionalitySignalProvider_startWithNviContext_didStartHandler___block_invoke;
  block[3] = &unk_2784C6C68;
  block[4] = self;
  v12 = contextCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

void __71__NviDirectionalitySignalProvider_startWithNviContext_didStartHandler___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  [*(*(a1 + 32) + 32) dirAzimuthEMAParam];
  *(*(a1 + 32) + 12) = v2;
  *(*(a1 + 32) + 64) = -1;
  *(*(a1 + 32) + 72) = 0;
  *(*(a1 + 32) + 16) = 0;
  *(*(a1 + 32) + 8) = 0;
  v3 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:7208966];
  v4 = [objc_alloc(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:v3 channelLayout:{objc_msgSend(*(*(a1 + 32) + 24), "sampleRate")}];
  v5 = [objc_alloc(MEMORY[0x277CDC8F0]) initWithFormat:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = v5;

  v8 = objc_alloc_init(MEMORY[0x277CDC930]);
  v9 = *(a1 + 32);
  v10 = *(v9 + 56);
  v38 = 0;
  v11 = [v10 addRequest:v8 withObserver:v9 error:&v38];
  v12 = v38;
  v13 = v12;
  if (!v11 || v12)
  {
    v14 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[NviDirectionalitySignalProvider startWithNviContext:didStartHandler:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s Failed to create Directionality req: %@", buf, 0x16u);
    }
  }

  v15 = [(NviSignalData *)[NviDirectionalitySignalData alloc] initWithSignalType:4 timestamp:mach_absolute_time()];
  v16 = *(a1 + 32);
  v17 = *(v16 + 80);
  *(v16 + 80) = v15;

  if (NviIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&NviIsInternalBuild_onceToken, &__block_literal_global_12_14123);
  }

  if (NviIsInternalBuild_isInternal == 1 && [*(*(a1 + 32) + 32) isDirectionalityLoggingEnabled])
  {
    v18 = [*(*(a1 + 32) + 40) rootLogDir];
    v19 = [v18 stringByAppendingPathComponent:@"dir.wav"];

    v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v19];
    v40 = 0;
    memset(buf, 0, sizeof(buf));
    objc_msgSend_nviDirectionalityLpcmNonInterleavedASBD(NviConstants);
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    objc_msgSend_nviDirectionalityLpcmInterleavedASBD(NviConstants);
    v21 = [NviAudioFileWriter alloc];
    v33[0] = *buf;
    v33[1] = *&buf[16];
    v34 = v40;
    v31[0] = v35;
    v31[1] = v36;
    v32 = v37;
    v22 = [(NviAudioFileWriter *)v21 initWithURL:v20 inputFormat:v33 outputFormat:v31];
    v23 = *(a1 + 32);
    v24 = *(v23 + 96);
    *(v23 + 96) = v22;

    v25 = [*(*(a1 + 32) + 40) rootLogDir];
    v26 = [v25 stringByAppendingPathComponent:@"dir.data"];

    v27 = +[NviDirectionalitySignalData headerString];
    v28 = [[NviDataLogger alloc] initWithFilePath:v26 appendHdr:v27];
    v29 = *(a1 + 32);
    v30 = *(v29 + 88);
    *(v29 + 88) = v28;
  }

  [*(*(a1 + 32) + 24) addReceiver:?];
  (*(*(a1 + 48) + 16))();
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__NviDirectionalitySignalProvider_removeDelegate___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__NviDirectionalitySignalProvider_addDelegate___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = NviLogContextFacility;
  if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[NviDirectionalitySignalProvider dealloc]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = NviDirectionalitySignalProvider;
  [(NviDirectionalitySignalProvider *)&v4 dealloc];
}

- (NviDirectionalitySignalProvider)initWithDataSource:(id)source assetsProvider:(id)provider
{
  v22 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = NviDirectionalitySignalProvider;
  v9 = [(NviDirectionalitySignalProvider *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSrc, source);
    objc_storeStrong(&v10->_assetsProvider, provider);
    v10->_currReqFirstSampleId = -1;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v10->_delegates;
    v10->_delegates = weakObjectsHashTable;

    v13 = dispatch_queue_create("com.apple.nvi.sigprov.dir", 0);
    queue = v10->_queue;
    v10->_queue = v13;

    v15 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[NviDirectionalitySignalProvider initWithDataSource:assetsProvider:]";
      v20 = 2048;
      v21 = v10;
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s nvidir=%p", buf, 0x16u);
    }
  }

  return v10;
}

@end