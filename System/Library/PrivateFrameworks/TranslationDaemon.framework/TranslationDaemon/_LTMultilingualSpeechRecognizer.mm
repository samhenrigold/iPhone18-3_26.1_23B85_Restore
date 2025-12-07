@interface _LTMultilingualSpeechRecognizer
- (_LTMultilingualSpeechRecognizer)initWithModelURLs:(id)ls modelVersions:(id)versions taskHint:(int64_t)hint;
- (void)addSpeechAudioData:(id)data;
- (void)cancelRecognition;
- (void)endAudio;
- (void)setLanguagesRecognized:(id)recognized;
- (void)startRecognitionForLocale:(id)locale autoEndpoint:(BOOL)endpoint enableStreamingSpeechTranslation:(BOOL)translation enableMultiFieldInput:(BOOL)input resultHandler:(id)handler;
@end

@implementation _LTMultilingualSpeechRecognizer

- (_LTMultilingualSpeechRecognizer)initWithModelURLs:(id)ls modelVersions:(id)versions taskHint:(int64_t)hint
{
  lsCopy = ls;
  versionsCopy = versions;
  v21.receiver = self;
  v21.super_class = _LTMultilingualSpeechRecognizer;
  v10 = [(_LTMultilingualSpeechRecognizer *)&v21 init];
  if (v10)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76___LTMultilingualSpeechRecognizer_initWithModelURLs_modelVersions_taskHint___block_invoke;
    v17[3] = &unk_2789B6D10;
    v18 = versionsCopy;
    hintCopy = hint;
    v12 = dictionary;
    v19 = v12;
    [lsCopy enumerateKeysAndObjectsUsingBlock:v17];
    recognizers = v10->_recognizers;
    v10->_recognizers = v12;
    v14 = v12;

    v15 = v10;
  }

  return v10;
}

- (void)startRecognitionForLocale:(id)locale autoEndpoint:(BOOL)endpoint enableStreamingSpeechTranslation:(BOOL)translation enableMultiFieldInput:(BOOL)input resultHandler:(id)handler
{
  endpointCopy = endpoint;
  translationCopy = translation;
  v91 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  handlerCopy = handler;
  selfCopy = self;
  objc_storeStrong(&self->_currentLocale, locale);
  self->_enableMultiFieldInput = input;
  array = [MEMORY[0x277CBEB18] array];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  allKeys = [(NSDictionary *)self->_recognizers allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v78 objects:v90 count:16];
  if (v11)
  {
    v12 = *v79;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v79 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        localeIdentifier = [*(*(&v78 + 1) + 8 * i) localeIdentifier];
        [array addObject:localeIdentifier];
      }

      v11 = [allKeys countByEnumeratingWithState:&v78 objects:v90 count:16];
    }

    while (v11);
  }

  v17 = _LTOSLogSpeech(v15, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    localeIdentifier2 = [localeCopy localeIdentifier];
    *buf = 138543618;
    *&buf[4] = localeIdentifier2;
    *&buf[12] = 2114;
    *&buf[14] = array;
    _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_DEFAULT, "Starting recognition with locale %{public}@, recognizers: %{public}@", buf, 0x16u);
  }

  recognizers = selfCopy->_recognizers;
  if (localeCopy)
  {
    v21 = [(NSDictionary *)recognizers objectForKeyedSubscript:?];
    v89 = v21;
    allValues = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
  }

  else
  {
    allValues = [(NSDictionary *)recognizers allValues];
  }

  v23 = dispatch_queue_create("com.apple.multilingualrecognition.results", 0);
  v24 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v86 = __Block_byref_object_copy__8;
  v87 = __Block_byref_object_dispose__8;
  v88 = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v77[3] = 0;
  v26 = _LTOSLogSpeech(v24, v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [allValues count];
    *v83 = 134217984;
    v84 = v27;
    _os_log_impl(&dword_232E53000, v26, OS_LOG_TYPE_DEFAULT, "Starting recognition for %zu recognizers", v83, 0xCu);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v28 = allValues;
  v29 = [v28 countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (v29)
  {
    v30 = *v74;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v74 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v73 + 1) + 8 * j);
        dispatch_group_enter(v24);
        language = [v32 language];
        localeIdentifier3 = [language localeIdentifier];

        v37 = _LTOSLogSpeech(v35, v36);
        v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
        if (v38)
        {
          *v83 = 138543362;
          v84 = localeIdentifier3;
          _os_log_impl(&dword_232E53000, v37, OS_LOG_TYPE_DEFAULT, "Starting recognizer: %{public}@", v83, 0xCu);
        }

        v40 = _LTOSLogSpeech(v38, v39);
        v41 = os_signpost_id_generate(v40);
        v42 = v40;
        v43 = v42;
        if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
        {
          *v83 = 138543362;
          v84 = localeIdentifier3;
          _os_signpost_emit_with_name_impl(&dword_232E53000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v41, "ASR", "Starting ASR for %{public}@", v83, 0xCu);
        }

        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke;
        v60[3] = &unk_2789B6D60;
        v69 = buf;
        v44 = v43;
        v61 = v44;
        v71 = v41;
        v45 = localeIdentifier3;
        v62 = v45;
        v63 = v23;
        v68 = handlerCopy;
        v46 = v24;
        inputCopy = input;
        v64 = v46;
        v65 = selfCopy;
        v47 = v28;
        v66 = v47;
        v67 = v32;
        v70 = v77;
        [v32 startRecognitionWithAutoStop:endpointCopy enableStreamingSpeechTranslation:translationCopy resultHandler:v60];
      }

      v29 = [v47 countByEnumeratingWithState:&v73 objects:v82 count:16];
    }

    while (v29);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_10;
  block[3] = &unk_2789B6D88;
  v58 = buf;
  v59 = v77;
  v57 = handlerCopy;
  v48 = handlerCopy;
  dispatch_group_notify(v24, v23, block);

  _Block_object_dispose(v77, 8);
  _Block_object_dispose(buf, 8);
}

- (void)addSpeechAudioData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSDictionary *)self->_recognizers allValues];
  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (self->_enableMultiFieldInput)
        {
          language = [*(*(&v14 + 1) + 8 * v9) language];
          if ([language isEqual:self->_currentLocale])
          {
            v12 = dataCopy;
          }

          else
          {
            v12 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(dataCopy, "length")}];
          }

          v13 = v12;

          [v10 addSpeechAudioData:v13];
        }

        else
        {
          [*(*(&v14 + 1) + 8 * v9) addSpeechAudioData:dataCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)endAudio
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogSpeech(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_LTMultilingualSpeechRecognizer endAudio];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSDictionary *)self->_recognizers allValues];
  v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v8++) endAudio];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)cancelRecognition
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSDictionary *)self->_recognizers allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v7 + 1) + 8 * v6++) cancelRecognition];
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setLanguagesRecognized:(id)recognized
{
  v28 = *MEMORY[0x277D85DE8];
  recognizedCopy = recognized;
  v6 = _LTOSLogSpeech(recognizedCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_LTMultilingualSpeechRecognizer setLanguagesRecognized:];
  }

  if ([recognizedCopy isFinal] && objc_msgSend(recognizedCopy, "isConfident"))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [(NSDictionary *)self->_recognizers allValues];
    v7 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          language = [v11 language];
          _ltLocaleIdentifier = [language _ltLocaleIdentifier];
          dominantLanguage = [recognizedCopy dominantLanguage];
          _ltLocaleIdentifier2 = [dominantLanguage _ltLocaleIdentifier];
          v16 = [_ltLocaleIdentifier isEqualToString:_ltLocaleIdentifier2];

          if ((v16 & 1) == 0)
          {
            v19 = _LTOSLogSpeech(v17, v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              [(_LTMultilingualSpeechRecognizer *)v25 setLanguagesRecognized:v19, v11, &v26];
            }

            [v11 cancelRecognition];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v8);
    }
  }
}

- (void)setLanguagesRecognized:(void *)a3 .cold.2(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 language];
  v9 = [v8 _ltLocaleIdentifier];
  *a1 = 138543362;
  *a4 = v9;
  _os_log_debug_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEBUG, "Trying to cancel recognition for %{public}@", a1, 0xCu);
}

@end