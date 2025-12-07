@interface EARCaesuraSilencePosteriorGenerator
- (EARCaesuraSilencePosteriorGeneratorDelegate)delegate;
@end

@implementation EARCaesuraSilencePosteriorGenerator

void __56__EARCaesuraSilencePosteriorGenerator__startComputeTask__block_invoke(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = mach_absolute_time();
    __p = 0;
    v30 = 0;
    v31 = 0;
    quasar::SilencePosteriorGenerator::estimateSilenceDuration(*(a1 + 40), &__p);
    v5 = v4;
    v6 = mach_absolute_time();
    v7 = [EARClientSilenceFeatures alloc];
    SilenceFramesCountMs = quasar::SilencePosteriorGenerator::getSilenceFramesCountMs(*(a1 + 40));
    SilenceProbability = quasar::SilencePosteriorGenerator::getSilenceProbability(*(a1 + 40));
    SilenceDurationMs = quasar::SilencePosteriorGenerator::getSilenceDurationMs(*(a1 + 40));
    SilencePosterior = quasar::SilencePosteriorGenerator::getSilencePosterior(*(a1 + 40));
    v2 += v6 - v3;
    v12 = [(EARClientSilenceFeatures *)v7 initWithSilenceFramesCountMs:v2 silenceProbability:SilenceFramesCountMs silenceDurationMs:SilenceProbability silencePosterior:SilenceDurationMs processedAudioMs:SilencePosterior inferenceTime:quasar::SilencePosteriorGenerator::getProcessedAudioMs(*(a1 + 40))];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v14 = [WeakRetained delegate];
    [v14 clientSilenceFeaturesAvailable:v12];

    v15 = objc_loadWeakRetained((a1 + 32));
    v16 = [v15 delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = objc_loadWeakRetained((a1 + 32));
      v19 = [v18 delegate];
      v20 = __p;
      v21 = v30;
      *&v22 = quasar::SilencePosteriorGenerator::getProcessedAudioMs(*(a1 + 40));
      [v19 silenceDurationEstimateAvailable:v20 numEstimates:(v21 - v20) >> 2 clientProcessedAudioMs:v22];
    }

    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }
  }

  while ((v5 & 1) != 0);
  v23 = objc_loadWeakRetained((a1 + 32));
  v24 = [v23 delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = objc_loadWeakRetained((a1 + 32));
    v27 = [v26 delegate];
    v28 = objc_loadWeakRetained((a1 + 32));
    [v27 silencePosteriorGeneratorProcessorIsFinished:v28];
  }
}

- (EARCaesuraSilencePosteriorGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithConfigFile:(uint64_t *)a1 samplingRate:(NSObject *)a2 queue:.cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B501D000, a2, OS_LOG_TYPE_ERROR, "EARSPG: SilencePosteriorGenerator Config file does not exist at %@", &v3, 0xCu);
}

@end