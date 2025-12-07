@interface _LTStreamingUtteranceTranslator
- (_LTStreamingUtteranceTranslating)utteranceTranslator;
- (_LTStreamingUtteranceTranslator)initWithLocalePair:(id)pair offlineMTModel:(id)model taskHint:(int64_t)hint;
- (_LTStreamingUtteranceTranslatorDelegate)delegate;
- (void)_checkSpeakableSegmentsForResult:(id)result expectedGeneration:(int64_t)generation;
- (void)_handleError:(id)error;
- (void)addInput:(id)input;
- (void)inputDidFinish;
- (void)translateInput:(id)input withGeneration:(int64_t)generation completion:(id)completion;
@end

@implementation _LTStreamingUtteranceTranslator

- (_LTStreamingUtteranceTranslator)initWithLocalePair:(id)pair offlineMTModel:(id)model taskHint:(int64_t)hint
{
  pairCopy = pair;
  modelCopy = model;
  v21.receiver = self;
  v21.super_class = _LTStreamingUtteranceTranslator;
  v10 = [(_LTStreamingUtteranceTranslator *)&v21 init];
  if (v10)
  {
    v11 = [pairCopy copy];
    localePair = v10->_localePair;
    v10->_localePair = v11;

    v13 = dispatch_queue_create("com.apple.translation.StreamingUtteranceTranslator", 0);
    queue = v10->_queue;
    v10->_queue = v13;

    v15 = objc_alloc_init(_LTTranslator);
    translator = v10->_translator;
    v10->_translator = v15;

    uUID = [MEMORY[0x277CCAD78] UUID];
    sessionID = v10->_sessionID;
    v10->_sessionID = uUID;

    objc_storeWeak(&v10->_utteranceTranslator, v10);
    objc_storeStrong(&v10->_offlineMTModelURL, model);
    v10->_taskHint = hint;
    v19 = v10;
  }

  return v10;
}

- (void)addInput:(id)input
{
  inputCopy = input;
  v6 = inputCopy;
  if (self->_isFinished)
  {
    v7 = _LTOSLogSpeech(inputCopy, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_LTStreamingUtteranceTranslator addInput:];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44___LTStreamingUtteranceTranslator_addInput___block_invoke;
    block[3] = &unk_278B6CD08;
    objc_copyWeak(&v11, &location);
    v10 = v6;
    dispatch_async(queue, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)inputDidFinish
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49___LTStreamingUtteranceTranslator_inputDidFinish__block_invoke;
  v4[3] = &unk_278B6CD30;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_handleError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  delegate = [(_LTStreamingUtteranceTranslator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate translator:self didEncounterError:errorCopy];
  }
}

- (void)_checkSpeakableSegmentsForResult:(id)result expectedGeneration:(int64_t)generation
{
  v55 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  dispatch_assert_queue_V2(self->_queue);
  v7 = self->_spokenSegments;
  stableSegments = [resultCopy stableSegments];
  v10 = _LTOSLogStabilization(stableSegments, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(_LTStreamingUtteranceTranslator *)v10 _checkSpeakableSegmentsForResult:stableSegments expectedGeneration:v7];
  }

  output = [resultCopy output];
  isFinal = [output isFinal];

  if (isFinal)
  {
    spokenSegments = self->_spokenSegments;
    self->_spokenSegments = 0;

    v18 = _LTOSLogStabilization(v16, v17);
    v13 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (v13)
    {
      [_LTStreamingUtteranceTranslator _checkSpeakableSegmentsForResult:expectedGeneration:];
    }
  }

  if (self->_lastSpokenGeneration <= generation)
  {
    if (![(NSArray *)v7 isEqualToArray:stableSegments])
    {
      v21 = [(NSArray *)v7 count];
      v22 = [stableSegments count];
      if (v21 <= v22)
      {
        v42 = isFinal;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v44 = resultCopy;
        output2 = [resultCopy output];
        locale = [output2 locale];

        v43 = stableSegments;
        v28 = [stableSegments subarrayWithRange:{-[NSArray count](v7, "count"), objc_msgSend(stableSegments, "count") - -[NSArray count](v7, "count")}];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v29 = [v28 countByEnumeratingWithState:&v46 objects:v50 count:16];
        v45 = v28;
        if (v29)
        {
          v30 = v29;
          v31 = *v47;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v47 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = [[_LTStreamingSpeakableOutput alloc] initWithText:*(*(&v46 + 1) + 8 * i) locale:locale];
              if (objc_opt_respondsToSelector())
              {
                v34 = [WeakRetained translator:self didProduceSpeakableOutput:v33];
                v36 = _LTOSLogStabilization(v34, v35);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                {
                  v37 = v36;
                  [(_LTStreamingSpeakableOutput *)v33 translatedText];
                  v39 = v38 = self;
                  *buf = 138739971;
                  generationCopy = v39;
                  _os_log_impl(&dword_23AAF5000, v37, OS_LOG_TYPE_INFO, "Producing spoken output: %{sensitive}@", buf, 0xCu);

                  self = v38;
                  v28 = v45;
                }
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v46 objects:v50 count:16];
          }

          while (v30);
        }

        stableSegments = v43;
        if ((v42 & 1) == 0)
        {
          v40 = [v43 copy];
          v41 = self->_spokenSegments;
          self->_spokenSegments = v40;
        }

        resultCopy = v44;
        self->_lastSpokenGeneration = [v44 generation];
      }

      else
      {
        v24 = _LTOSLogStabilization(v22, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_LTStreamingUtteranceTranslator _checkSpeakableSegmentsForResult:expectedGeneration:];
        }
      }
    }
  }

  else
  {
    v19 = _LTOSLogStabilization(v13, v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      currentGeneration = self->_currentGeneration;
      *buf = 134218240;
      generationCopy = generation;
      v53 = 2048;
      v54 = currentGeneration;
      _os_log_impl(&dword_23AAF5000, v19, OS_LOG_TYPE_DEFAULT, "Processing older result from generation %zd instead of current generation %zd; ignoring any potential stableSegments since they should have already been spoken", buf, 0x16u);
    }
  }
}

- (void)translateInput:(id)input withGeneration:(int64_t)generation completion:(id)completion
{
  completionCopy = completion;
  inputCopy = input;
  v10 = [_LTStabilizationTranslationRequest alloc];
  localePair = [(_LTStreamingUtteranceTranslator *)self localePair];
  v13 = [(_LTStabilizationTranslationRequest *)v10 initWithLocalePair:localePair completion:completionCopy];

  uUIDString = [(NSUUID *)self->_sessionID UUIDString];
  [(_LTTranslationRequest *)v13 setSessionID:uUIDString];

  [(_LTStabilizationTranslationRequest *)v13 setInput:inputCopy];
  [(_LTStabilizationTranslationRequest *)v13 setGeneration:generation];
  [(_LTTranslationRequest *)v13 setTaskHint:self->_taskHint];
  [(_LTTranslationRequest *)v13 set_offlineMTModelURL:self->_offlineMTModelURL];
  [(_LTTranslator *)self->_translator translate:v13];
}

- (_LTStreamingUtteranceTranslatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_LTStreamingUtteranceTranslating)utteranceTranslator
{
  WeakRetained = objc_loadWeakRetained(&self->_utteranceTranslator);

  return WeakRetained;
}

- (void)_checkSpeakableSegmentsForResult:(uint64_t)a3 expectedGeneration:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEA60];
  v6 = a1;
  v7 = [v5 lt_stringArrayDebugDescription:a2];
  v8 = [MEMORY[0x277CBEA60] lt_stringArrayDebugDescription:a3];
  v9 = 138740227;
  v10 = v7;
  v11 = 2117;
  v12 = v8;
  _os_log_debug_impl(&dword_23AAF5000, v6, OS_LOG_TYPE_DEBUG, "New stableSegments: %{sensitive}@; old stable segments: %{sensitive}@", &v9, 0x16u);
}

@end