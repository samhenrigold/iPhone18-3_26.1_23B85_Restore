@interface CSStartOfSpeechDetector
- (CSStartOfSpeechDetector)initWithConfig:(id)config samplingRate:(unint64_t)rate minSpeechFrames:(unint64_t)frames numLeadingFrames:(unint64_t)leadingFrames delegate:(id)delegate;
- (CSStartOfSpeechDetectorDelegate)delegate;
- (void)addAudio:(id)audio numSamples:(unint64_t)samples;
- (void)clientSilenceFeaturesAvailable:(id)available;
- (void)endAudio;
- (void)resetForNewRequest;
@end

@implementation CSStartOfSpeechDetector

- (CSStartOfSpeechDetectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)clientSilenceFeaturesAvailable:(id)available
{
  availableCopy = available;
  sosQueue = self->_sosQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__CSStartOfSpeechDetector_clientSilenceFeaturesAvailable___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = availableCopy;
  v6 = availableCopy;
  dispatch_async(sosQueue, v7);
}

void __58__CSStartOfSpeechDetector_clientSilenceFeaturesAvailable___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v3 = MEMORY[0x277D015D8];
  v4 = *MEMORY[0x277D015D8];
  v5 = os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v5)
    {
      v35 = 136315138;
      v36 = "[CSStartOfSpeechDetector clientSilenceFeaturesAvailable:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Start of speech already reported, ignoring !", &v35, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = v4;
      [v6 silencePosterior];
      v9 = v8;
      [*(a1 + 40) silenceFramesCountMs];
      v11 = v10;
      [*(a1 + 40) processedAudioMs];
      v12 = *(*(a1 + 32) + 48);
      v35 = 136316162;
      v36 = "[CSStartOfSpeechDetector clientSilenceFeaturesAvailable:]_block_invoke";
      v37 = 2050;
      v38 = v9;
      v39 = 2050;
      v40 = v11;
      v41 = 2050;
      v42 = v13;
      v43 = 2050;
      v44 = v12;
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s silProb= %{public}f, silnfcnt=%{public}f, clientProcessedAudioMs=%{public}f curSpeechFrmCnt=%{public}lu", &v35, 0x34u);
    }

    [*(a1 + 40) silenceFramesCountMs];
    if (v14 == 0.0)
    {
      [*(a1 + 40) processedAudioMs];
      v15 = *(a1 + 32);
      v17 = v16 - *(v15 + 12);
      *(v15 + 48) = ((v17 / [*(v15 + 24) getFrameDurationMs]) + *(v15 + 48));
    }

    else
    {
      *(*(a1 + 32) + 48) = 0;
    }

    [*(a1 + 40) processedAudioMs];
    *&v18 = v18;
    *(*(a1 + 32) + 12) = LODWORD(v18);
    if (*(*(a1 + 32) + 48) >= *(*(a1 + 32) + 40))
    {
      [*(a1 + 40) processedAudioMs];
      v20 = *(a1 + 32);
      v21 = v19 / 1000.0 * *(v20 + 64);
      v22 = *(v20 + 48);
      v23 = [*(v20 + 24) getFrameDurationMs] * v22;
      v24 = *(a1 + 32);
      v25 = *(v24 + 56);
      v26 = (v21 - (v23 * *(v24 + 64)) / 1000.0);
      v27 = [*(v24 + 24) getFrameDurationMs];
      v28 = *(a1 + 32);
      v29 = *(v28 + 64);
      v30 = ((v27 * v25) / 1000.0 * v29);
      if (v26 <= v30)
      {
        v30 = 0;
      }

      v31 = v26 - v30;
      v32 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 136316162;
        v36 = "[CSStartOfSpeechDetector clientSilenceFeaturesAvailable:]_block_invoke";
        v37 = 2050;
        v38 = v21;
        v39 = 2050;
        v40 = v31;
        v41 = 2048;
        v42 = v21 - v31;
        v43 = 2050;
        v44 = (v42 / v29);
        _os_log_impl(&dword_222E4D000, v32, OS_LOG_TYPE_DEFAULT, "%s Speech prob target reached at %{public}lu from %{public}lu, #samples=%lu, secs=%{public}f", &v35, 0x34u);
        v28 = *(a1 + 32);
      }

      *(v28 + 8) = 1;
      [*(*(a1 + 32) + 24) endAudio];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));

      if (WeakRetained)
      {
        v34 = objc_loadWeakRetained((*(a1 + 32) + 16));
        [v34 startOfSpeechDetector:*(a1 + 32) foundStartSampleAt:v31];
      }
    }
  }
}

- (void)endAudio
{
  sosQueue = self->_sosQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CSStartOfSpeechDetector_endAudio__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(sosQueue, block);
}

uint64_t __35__CSStartOfSpeechDetector_endAudio__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(*(a1 + 32) + 24);

  return [v4 endAudio];
}

- (void)addAudio:(id)audio numSamples:(unint64_t)samples
{
  audioCopy = audio;
  sosQueue = self->_sosQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CSStartOfSpeechDetector_addAudio_numSamples___block_invoke;
  block[3] = &unk_2784C6998;
  block[4] = self;
  v10 = audioCopy;
  samplesCopy = samples;
  v8 = audioCopy;
  dispatch_async(sosQueue, block);
}

- (void)resetForNewRequest
{
  sosQueue = self->_sosQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CSStartOfSpeechDetector_resetForNewRequest__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(sosQueue, block);
}

void __45__CSStartOfSpeechDetector_resetForNewRequest__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D071E0]) initWithConfigFile:*(*(a1 + 32) + 32) samplingRate:*(*(a1 + 32) + 64) queue:*(*(a1 + 32) + 72)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  [*(*(a1 + 32) + 24) setDelegate:?];
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 24);
    v7 = 136315394;
    v8 = "[CSStartOfSpeechDetector resetForNewRequest]_block_invoke";
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Reset: Created EARCaesuraSilencePosteriorGenerator: %{public}@", &v7, 0x16u);
  }

  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 8) = 0;
}

- (CSStartOfSpeechDetector)initWithConfig:(id)config samplingRate:(unint64_t)rate minSpeechFrames:(unint64_t)frames numLeadingFrames:(unint64_t)leadingFrames delegate:(id)delegate
{
  v28 = *MEMORY[0x277D85DE8];
  configCopy = config;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = CSStartOfSpeechDetector;
  v15 = [(CSStartOfSpeechDetector *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v16->_samplingRate = rate;
    objc_storeStrong(&v16->_configFile, config);
    v16->_minSpeechFrames = frames;
    v16->_numLeadingFrames = leadingFrames;
    v17 = dispatch_queue_create("StartOfSpeech SPG queue", 0);
    spgQueue = v16->_spgQueue;
    v16->_spgQueue = v17;

    v19 = dispatch_queue_create("StartOfSpeech queue", 0);
    sosQueue = v16->_sosQueue;
    v16->_sosQueue = v19;

    v21 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "[CSStartOfSpeechDetector initWithConfig:samplingRate:minSpeechFrames:numLeadingFrames:delegate:]";
      v26 = 2114;
      v27 = v16;
      _os_log_impl(&dword_222E4D000, v21, OS_LOG_TYPE_DEFAULT, "%s Created CSStartOfSpeechDetector: %{public}@ ", buf, 0x16u);
    }
  }

  return v16;
}

@end