@interface VTUIAudioHintPlayer
- (BOOL)_hasValidHints;
- (BOOL)_systemLanguageMatchesSiriLanguage:(id)language siriLanguage:(id)siriLanguage;
- (BOOL)_useCompactPhraseForInstruction:(int64_t)instruction;
- (VTUIAudioHintPlayer)initWithLanguage:(id)language delegate:(id)delegate;
- (VTUIAudioHintPlayerDelegate)delegate;
- (id)_audioHintPathForFileName:(id)name;
- (id)_getTrainingPageAudioHintRequests;
- (void)_setupHints;
- (void)_timerFired;
- (void)cleanup;
- (void)sendError:(id)error toMainForCompletion:(id)completion;
- (void)setLanguage:(id)language;
- (void)setOutputVoice:(id)voice;
- (void)speakAudioHint:(unint64_t)hint completion:(id)completion;
- (void)speakConfirmationDialog:(id)dialog;
- (void)updateIfNeededForUsesMultipleTriggers:(BOOL)triggers;
@end

@implementation VTUIAudioHintPlayer

- (VTUIAudioHintPlayer)initWithLanguage:(id)language delegate:(id)delegate
{
  v19 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = VTUIAudioHintPlayer;
  v8 = [(VTUIAudioHintPlayer *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(VTUIAudioHintPlayer *)v8 setLanguage:languageCopy];
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10 = objc_alloc_init(VTUISpeechSynthesizer);
    synth = v9->_synth;
    v9->_synth = v10;

    v12 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[VTUIAudioHintPlayer initWithLanguage:delegate:]";
      v17 = 2112;
      v18 = languageCopy;
      _os_log_impl(&dword_2728BC000, v12, OS_LOG_TYPE_DEFAULT, "%s Audio Hint language: %@", buf, 0x16u);
    }
  }

  return v9;
}

- (void)setLanguage:(id)language
{
  v17 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  objc_storeStrong(&self->_language, language);
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  outputVoice = [mEMORY[0x277CEF368] outputVoice];
  outputVoice = self->_outputVoice;
  self->_outputVoice = outputVoice;

  if (!self->_outputVoice)
  {
    v9 = [MEMORY[0x277CEF528] voiceInfoForLanguageCode:self->_language];
    v10 = self->_outputVoice;
    self->_outputVoice = v9;
  }

  [(VTUIAudioHintPlayer *)self _setupHints];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[VTUIAudioHintPlayer setLanguage:]";
    v15 = 2112;
    v16 = languageCopy;
    _os_log_impl(&dword_2728BC000, v11, OS_LOG_TYPE_DEFAULT, "%s Audio Hint language: %@", &v13, 0x16u);
  }

  if ([(VTUIAudioHintPlayer *)self _hasValidHints])
  {
    _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
    self->_shouldSpeakAudioHint = [(VTUIAudioHintPlayer *)self _systemLanguageMatchesSiriLanguage:_deviceLanguage siriLanguage:self->_language];
  }

  else
  {
    self->_shouldSpeakAudioHint = 0;
  }
}

- (void)updateIfNeededForUsesMultipleTriggers:(BOOL)triggers
{
  if (self->_useCompactHints != triggers)
  {
    self->_useCompactHints = triggers;
    [(VTUIAudioHintPlayer *)self _setupHints];
    if ([(VTUIAudioHintPlayer *)self _hasValidHints])
    {
      _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
      self->_shouldSpeakAudioHint = [(VTUIAudioHintPlayer *)self _systemLanguageMatchesSiriLanguage:_deviceLanguage siriLanguage:self->_language];
    }

    else
    {
      self->_shouldSpeakAudioHint = 0;
    }
  }
}

- (void)setOutputVoice:(id)voice
{
  v12 = *MEMORY[0x277D85DE8];
  voiceCopy = voice;
  objc_storeStrong(&self->_outputVoice, voice);
  [(VTUIAudioHintPlayer *)self _setupHints];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[VTUIAudioHintPlayer setOutputVoice:]";
    v10 = 2112;
    v11 = voiceCopy;
    _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_DEFAULT, "%s Audio Hint output voice: %@", &v8, 0x16u);
  }

  if ([(VTUIAudioHintPlayer *)self _hasValidHints])
  {
    _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
    self->_shouldSpeakAudioHint = [(VTUIAudioHintPlayer *)self _systemLanguageMatchesSiriLanguage:_deviceLanguage siriLanguage:self->_language];
  }

  else
  {
    self->_shouldSpeakAudioHint = 0;
  }
}

- (BOOL)_hasValidHints
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_trainingPageAudioHintPreviews count]> 4)
  {
    return 1;
  }

  if ([(NSArray *)self->_trainingPageAudioHintInstructions count]>= 5)
  {
    v4 = [(NSArray *)self->_trainingPageAudioHintInstructions objectAtIndexedSubscript:0];
    v5 = [v4 isEqualToString:&stru_2881E5778];

    if (!v5)
    {
      return 1;
    }
  }

  v6 = *MEMORY[0x277CEF098];
  v7 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v7)
  {
    language = self->_language;
    v9 = 136315394;
    v10 = "[VTUIAudioHintPlayer _hasValidHints]";
    v11 = 2112;
    v12 = language;
    _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_DEFAULT, "%s No valid audio hints for language %@", &v9, 0x16u);
    return 0;
  }

  return result;
}

- (BOOL)_systemLanguageMatchesSiriLanguage:(id)language siriLanguage:(id)siriLanguage
{
  v29 = *MEMORY[0x277D85DE8];
  siriLanguageCopy = siriLanguage;
  v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:language];
  languageCode = [v6 languageCode];
  countryCode = [v6 countryCode];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%@", languageCode, countryCode];
  scriptCode = [v6 scriptCode];
  v11 = MEMORY[0x277CEF098];
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v20 = "[VTUIAudioHintPlayer _systemLanguageMatchesSiriLanguage:siriLanguage:]";
    v21 = 2112;
    v22 = languageCode;
    v23 = 2112;
    v24 = scriptCode;
    v25 = 2112;
    v26 = countryCode;
    v27 = 2112;
    v28 = siriLanguageCopy;
    _os_log_impl(&dword_2728BC000, v12, OS_LOG_TYPE_DEFAULT, "%s System locale (language-scriptCode-countryCode): %@-%@-%@, Siri language: %@", buf, 0x34u);
  }

  if ([siriLanguageCopy isEqualToString:v9])
  {
    goto LABEL_4;
  }

  if ([languageCode isEqualToString:@"zh"] && objc_msgSend(scriptCode, "isEqualToString:", @"Hans"))
  {
    if ([siriLanguageCopy isEqualToString:@"zh-CN"])
    {
LABEL_4:
      v13 = 1;
      goto LABEL_21;
    }

    v14 = @"yue-CN";
LABEL_16:
    v13 = [siriLanguageCopy isEqualToString:v14];
    goto LABEL_21;
  }

  if ([languageCode isEqualToString:@"zh"] && ((objc_msgSend(countryCode, "isEqualToString:", @"MO") & 1) != 0 || objc_msgSend(countryCode, "isEqualToString:", @"HK")))
  {
    v14 = @"zh-HK";
    goto LABEL_16;
  }

  if ([languageCode isEqualToString:@"zh"] && objc_msgSend(scriptCode, "isEqualToString:", @"Hant"))
  {
    v14 = @"zh-TW";
    goto LABEL_16;
  }

  if (scriptCode)
  {
    v15 = *v11;
    v13 = 0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[VTUIAudioHintPlayer _systemLanguageMatchesSiriLanguage:siriLanguage:]";
      _os_log_impl(&dword_2728BC000, v15, OS_LOG_TYPE_DEFAULT, "%s Not playing Audio Hint due to Siri language and system language mismatch", buf, 0xCu);
      v13 = 0;
    }
  }

  else
  {
    v16 = [siriLanguageCopy componentsSeparatedByString:@"-"];
    v17 = [v16 objectAtIndexedSubscript:0];

    v13 = [v17 isEqualToString:languageCode];
  }

LABEL_21:

  return v13;
}

- (BOOL)_useCompactPhraseForInstruction:(int64_t)instruction
{
  if (instruction != 1)
  {
    if (instruction == 5)
    {
      return 1;
    }

    if (instruction != 3)
    {
      return self->_useCompactHints;
    }
  }

  return 0;
}

- (void)_setupHints
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = +[VTUIStyle sharedStyle];
  array = [MEMORY[0x277CBEB18] array];
  for (i = 1; i != 6; ++i)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"AUDIO_INSTRUCTION_UTT%lu", i];
    v6 = +[VTUIStringsHelper sharedStringsHelper];
    v7 = [v2 VTUIDeviceSpecificString:v5];
    v8 = [v6 localizedAudioStringForKey:v7];

    if (v8)
    {
      [array addObject:v8];
    }
  }

  v9 = +[VTUIStringsHelper sharedStringsHelper];
  v10 = [v9 localizedAudioStringForKey:@"AUDIO_INSTRUCTION_READY"];
  [array addObject:v10];

  v11 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  trainingPageAudioHintInstructions = self->_trainingPageAudioHintInstructions;
  self->_trainingPageAudioHintInstructions = v11;

  v13 = MEMORY[0x277CEF098];
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    language = self->_language;
    *buf = 136315394;
    v24 = "[VTUIAudioHintPlayer _setupHints]";
    v25 = 2112;
    v26 = language;
    _os_log_impl(&dword_2728BC000, v14, OS_LOG_TYPE_DEFAULT, "%s Audio Hint language: %@", buf, 0x16u);
  }

  v16 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
  {
    outputVoice = self->_outputVoice;
    v18 = v16;
    v19 = [(AFVoiceInfo *)outputVoice description];
    *buf = 136315394;
    v24 = "[VTUIAudioHintPlayer _setupHints]";
    v25 = 2112;
    v26 = v19;
    _os_log_impl(&dword_2728BC000, v18, OS_LOG_TYPE_DEFAULT, "%s Audio Hint outputVoice: %@", buf, 0x16u);
  }

  _getTrainingPageAudioHintRequests = [(VTUIAudioHintPlayer *)self _getTrainingPageAudioHintRequests];
  trainingPageAudioHintPreviews = self->_trainingPageAudioHintPreviews;
  self->_trainingPageAudioHintPreviews = _getTrainingPageAudioHintRequests;
}

- (id)_getTrainingPageAudioHintRequests
{
  array = [MEMORY[0x277CBEB18] array];
  for (i = 1; i != 7; ++i)
  {
    v5 = objc_alloc(MEMORY[0x277D61478]);
    language = self->_language;
    name = [(AFVoiceInfo *)self->_outputVoice name];
    v8 = [v5 initWithLanguage:language name:name];

    v9 = objc_alloc(MEMORY[0x277D613E0]);
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[VTUIAudioHintPlayer useCompactHints](self, "useCompactHints")}];
    v11 = [v9 initWithVoice:v8 dialogNumber:i useCompactHints:v10 != 0];

    if ([v11 isValid])
    {
      [array addObject:v11];
    }
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  return v12;
}

- (id)_audioHintPathForFileName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = NSStringFromSelector(a2);
    v13 = 136315650;
    v14 = "[VTUIAudioHintPlayer _audioHintPathForFileName:]";
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = nameCopy;
    _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s %@: Finding path for filename: %@", &v13, 0x20u);
  }

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 pathForResource:nameCopy ofType:@"opx"];
  if (!v10)
  {
    v11 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[VTUIAudioHintPlayer _audioHintPathForFileName:]";
      v15 = 2112;
      v16 = nameCopy;
      _os_log_impl(&dword_2728BC000, v11, OS_LOG_TYPE_DEFAULT, "%s No audio hint file %@", &v13, 0x16u);
    }
  }

  return v10;
}

- (void)cleanup
{
  [(VTUISpeechSynthesizer *)self->_synth stopSpeaking];
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)speakConfirmationDialog:(id)dialog
{
  v38 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  [(NSTimer *)self->_timer invalidate];
  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__timerFired selector:0 userInfo:0 repeats:3.0];
  timer = self->_timer;
  self->_timer = v5;

  [MEMORY[0x277D7A8D8] requestPhraseSpotterBypassing:1 timeout:3.0];
  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[VTUIAudioHintPlayer speakConfirmationDialog:]";
    v36 = 2048;
    v37 = 0x4008000000000000;
    _os_log_impl(&dword_2728BC000, v8, OS_LOG_TYPE_DEFAULT, "%s requestPhraseSpotterBypassing for %f seconds", buf, 0x16u);
  }

  if (self->_shouldSpeakAudioHint)
  {
    if ([(NSArray *)self->_trainingPageAudioHintPreviews count]== 5)
    {
      v9 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v35 = "[VTUIAudioHintPlayer speakConfirmationDialog:]";
        _os_log_impl(&dword_2728BC000, v9, OS_LOG_TYPE_DEFAULT, "%s Locale only has training dialogs without a confirmation dialog", buf, 0xCu);
      }

      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = [v10 initWithDomain:*MEMORY[0x277CEF588] code:0 userInfo:0];
      [(VTUIAudioHintPlayer *)self sendError:v11 toMainForCompletion:dialogCopy];
    }

    else if ([(NSArray *)self->_trainingPageAudioHintPreviews count]== 6)
    {
      lastObject = [(NSArray *)self->_trainingPageAudioHintPreviews lastObject];
      [lastObject setUseCompactHints:{-[VTUIAudioHintPlayer _useCompactPhraseForInstruction:](self, "_useCompactPhraseForInstruction:", 5)}];
      v13 = MGGetBoolAnswer();
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v15 = WeakRetained != 0;

      if ((v15 & v13) != 0)
      {
        objc_initWeak(buf, self);
        v16 = objc_loadWeakRetained(&self->_delegate);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke;
        v29[3] = &unk_279E54A80;
        v11 = lastObject;
        v30 = v11;
        objc_copyWeak(&v33, buf);
        selfCopy = self;
        v32 = dialogCopy;
        [v16 fetchaudioSessionID:v29];

        objc_destroyWeak(&v33);
        objc_destroyWeak(buf);
      }

      else
      {
        synth = self->_synth;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke_69;
        v25[3] = &unk_279E54A58;
        v11 = lastObject;
        v26 = v11;
        selfCopy2 = self;
        v28 = dialogCopy;
        [(VTUISpeechSynthesizer *)synth speak:v11 completion:v25];
      }
    }

    else
    {
      lastObject2 = [(NSArray *)self->_trainingPageAudioHintInstructions lastObject];
      v18 = self->_synth;
      language = self->_language;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke_70;
      v21[3] = &unk_279E54A58;
      v22 = lastObject2;
      selfCopy3 = self;
      v24 = dialogCopy;
      v11 = lastObject2;
      [(VTUISpeechSynthesizer *)v18 speak:v11 language:language completion:v21];
    }
  }
}

void __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting SiriTTSAudioHintRequest audioSessionID, id: %u", buf, 0x12u);
  }

  [*(a1 + 32) setAudioSessionId:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(WeakRetained + 8);
    v8 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke_66;
    v12[3] = &unk_279E54A58;
    v9 = v8;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v9;
    v14 = v10;
    v15 = v11;
    [v7 speak:v9 completion:v12];
  }
}

void __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke_66(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v8 = 136315394;
      *&v8[4] = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
      *&v8[12] = 2112;
      *&v8[14] = v3;
      v6 = "%s Error speaking confirmation dialog %@";
LABEL_6:
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, v6, v8, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    *v8 = 136315394;
    *&v8[4] = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
    *&v8[12] = 2112;
    *&v8[14] = v7;
    v6 = "%s Finished speaking confirmation dialog audioHintRequest %@";
    goto LABEL_6;
  }

  [*(a1 + 40) sendError:v3 toMainForCompletion:{*(a1 + 48), *v8, *&v8[8], v9}];
}

void __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke_69(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v8 = 136315394;
      *&v8[4] = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
      *&v8[12] = 2112;
      *&v8[14] = v3;
      v6 = "%s Error speaking confirmation dialog %@";
LABEL_6:
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, v6, v8, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    *v8 = 136315394;
    *&v8[4] = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
    *&v8[12] = 2112;
    *&v8[14] = v7;
    v6 = "%s Finished speaking confirmation dialog audioHintRequest %@";
    goto LABEL_6;
  }

  [*(a1 + 40) sendError:v3 toMainForCompletion:{*(a1 + 48), *v8, *&v8[8], v9}];
}

void __47__VTUIAudioHintPlayer_speakConfirmationDialog___block_invoke_70(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v8 = 136315394;
      *&v8[4] = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
      *&v8[12] = 2112;
      *&v8[14] = v3;
      v6 = "%s Error speaking confirmation dialog %@";
LABEL_6:
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, v6, v8, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    *v8 = 136315394;
    *&v8[4] = "[VTUIAudioHintPlayer speakConfirmationDialog:]_block_invoke";
    *&v8[12] = 2112;
    *&v8[14] = v7;
    v6 = "%s Finished speaking confirmation dialog %@";
    goto LABEL_6;
  }

  [*(a1 + 40) sendError:v3 toMainForCompletion:{*(a1 + 48), *v8, *&v8[8], v9}];
}

- (void)_timerFired
{
  v14 = *MEMORY[0x277D85DE8];
  isSpeaking = [(VTUISpeechSynthesizer *)self->_synth isSpeaking];
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (isSpeaking)
  {
    if (v5)
    {
      v10 = 136315394;
      v11 = "[VTUIAudioHintPlayer _timerFired]";
      v12 = 2048;
      v13 = 0x4000000000000000;
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s requestPhraseSpotterBypassing for %f more seconds because synth is still speaking", &v10, 0x16u);
    }

    v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__timerFired selector:0 userInfo:0 repeats:2.0];
    timer = self->_timer;
    self->_timer = v6;

    v8 = MEMORY[0x277D7A8D8];
    [(NSTimer *)self->_timer timeInterval];
    [v8 requestPhraseSpotterBypassing:1 timeout:?];
  }

  else
  {
    if (v5)
    {
      v10 = 136315138;
      v11 = "[VTUIAudioHintPlayer _timerFired]";
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Reenabling phrase spotter", &v10, 0xCu);
    }

    [(NSTimer *)self->_timer invalidate];
    v9 = self->_timer;
    self->_timer = 0;
  }
}

- (void)sendError:(id)error toMainForCompletion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__VTUIAudioHintPlayer_sendError_toMainForCompletion___block_invoke;
  v9[3] = &unk_279E54AA8;
  v10 = errorCopy;
  v11 = completionCopy;
  v7 = errorCopy;
  v8 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)speakAudioHint:(unint64_t)hint completion:(id)completion
{
  completionCopy = completion;
  if (self->_shouldSpeakAudioHint)
  {
    trainingPageAudioHintPreviews = self->_trainingPageAudioHintPreviews;
    if (trainingPageAudioHintPreviews && [(NSArray *)trainingPageAudioHintPreviews count]- 1 >= hint)
    {
      if ([(NSArray *)self->_trainingPageAudioHintPreviews count]> hint)
      {
        v10 = [(NSArray *)self->_trainingPageAudioHintPreviews objectAtIndexedSubscript:hint];
        [v10 setUseCompactHints:{-[VTUIAudioHintPlayer _useCompactPhraseForInstruction:](self, "_useCompactPhraseForInstruction:", hint)}];
        v11 = MGGetBoolAnswer();
        WeakRetained = objc_loadWeakRetained(&self->_delegate);

        if (WeakRetained && v11)
        {
          objc_initWeak(&location, self);
          v13 = objc_loadWeakRetained(&self->_delegate);
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke;
          v27[3] = &unk_279E54A80;
          v14 = v10;
          v28 = v14;
          objc_copyWeak(&v31, &location);
          selfCopy = self;
          v30 = completionCopy;
          [v13 fetchaudioSessionID:v27];

          objc_destroyWeak(&v31);
          objc_destroyWeak(&location);
LABEL_16:

          goto LABEL_17;
        }

        synth = self->_synth;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke_73;
        v23[3] = &unk_279E54A58;
        v24 = v10;
        selfCopy2 = self;
        v26 = completionCopy;
        v14 = v10;
        [(VTUISpeechSynthesizer *)synth speak:v14 completion:v23];

        v17 = v24;
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      trainingPageAudioHintInstructions = self->_trainingPageAudioHintInstructions;
      if (trainingPageAudioHintInstructions && [(NSArray *)trainingPageAudioHintInstructions count]- 1 > hint)
      {
        if ([(NSArray *)self->_trainingPageAudioHintInstructions count]<= hint)
        {
          v9 = 0;
        }

        else
        {
          v9 = [(NSArray *)self->_trainingPageAudioHintInstructions objectAtIndexedSubscript:hint];
        }

        v15 = self->_synth;
        language = self->_language;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke_74;
        v19[3] = &unk_279E54A58;
        v20 = v9;
        selfCopy3 = self;
        v22 = completionCopy;
        v14 = v9;
        [(VTUISpeechSynthesizer *)v15 speak:v14 language:language completion:v19];

        v17 = v20;
        goto LABEL_15;
      }
    }
  }

LABEL_17:
}

void __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting SiriTTSAudioHintRequest audioSessionID, id: %u", buf, 0x12u);
  }

  [*(a1 + 32) setAudioSessionId:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained[8];
  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke_72;
  v11[3] = &unk_279E54A58;
  v8 = v7;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  [v6 speak:v8 completion:v11];
}

void __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke_72(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v8 = 136315394;
      *&v8[4] = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
      *&v8[12] = 2112;
      *&v8[14] = v3;
      v6 = "%s Error speaking audio hint %@";
LABEL_6:
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, v6, v8, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    *v8 = 136315394;
    *&v8[4] = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
    *&v8[12] = 2112;
    *&v8[14] = v7;
    v6 = "%s Finished speaking audio hint request %@";
    goto LABEL_6;
  }

  [*(a1 + 40) sendError:v3 toMainForCompletion:{*(a1 + 48), *v8, *&v8[8], v9}];
}

void __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke_73(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v8 = 136315394;
      *&v8[4] = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
      *&v8[12] = 2112;
      *&v8[14] = v3;
      v6 = "%s Error speaking audio hint %@";
LABEL_6:
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, v6, v8, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    *v8 = 136315394;
    *&v8[4] = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
    *&v8[12] = 2112;
    *&v8[14] = v7;
    v6 = "%s Finished speaking audio hint request %@";
    goto LABEL_6;
  }

  [*(a1 + 40) sendError:v3 toMainForCompletion:{*(a1 + 48), *v8, *&v8[8], v9}];
}

void __49__VTUIAudioHintPlayer_speakAudioHint_completion___block_invoke_74(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v8 = 136315394;
      *&v8[4] = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
      *&v8[12] = 2112;
      *&v8[14] = v3;
      v6 = "%s Error speaking audio hint %@";
LABEL_6:
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, v6, v8, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    *v8 = 136315394;
    *&v8[4] = "[VTUIAudioHintPlayer speakAudioHint:completion:]_block_invoke";
    *&v8[12] = 2112;
    *&v8[14] = v7;
    v6 = "%s Finished speaking audio hint with string %@";
    goto LABEL_6;
  }

  [*(a1 + 40) sendError:v3 toMainForCompletion:{*(a1 + 48), *v8, *&v8[8], v9}];
}

- (VTUIAudioHintPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end