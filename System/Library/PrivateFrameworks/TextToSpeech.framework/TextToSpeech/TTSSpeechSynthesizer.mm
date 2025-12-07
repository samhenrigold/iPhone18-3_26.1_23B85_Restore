@interface TTSSpeechSynthesizer
+ (BOOL)isSystemVoice:(id)voice;
+ (id)_speechVoiceForIdentifier:(id)identifier language:(id)language footprint:(int64_t)footprint;
+ (id)audioFileSettingsForVoice:(id)voice;
+ (id)availableLanguageCodes;
+ (id)remapVoiceIdentifier:(id)identifier;
+ (id)unavailableVoiceIdentifiers;
+ (id)voiceForIdentifier:(id)identifier;
- (BOOL)_continueSpeakingRequest:(id)request withError:(id *)error;
- (BOOL)_pauseSpeakingRequest:(id)request atNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously error:(id *)error;
- (BOOL)_startSpeakingString:(id)string orSSMLString:(id)lString withLanguageCode:(id)code jobId:(id)id request:(id *)request error:(id *)error;
- (BOOL)_stopSpeakingRequest:(id)request atNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously error:(id *)error;
- (BOOL)continueSpeakingWithError:(id *)error;
- (BOOL)isSpeaking;
- (BOOL)pauseSpeakingAtNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously error:(id *)error;
- (BOOL)stopSpeakingAtNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously error:(id *)error;
- (NSArray)audioEffects;
- (NSString)bundleIdentifier;
- (NSString)resolvedVoiceIdentifier;
- (NSString)voiceIdentifier;
- (TTSSpeechSynthesizer)init;
- (TTSSpeechSynthesizerDelegate)delegate;
- (_TtC12TextToSpeech15CoreSynthesizer)coreSynth;
- (float)normalizedRate;
- (id)_makeRequestForVoice:(id)voice andLanguageCode:(id)code;
- (id)_preprocessText:(id)text languageCode:(id)code;
- (id)_processMarker:(id)marker forRequest:(id)request;
- (id)_resolveVoiceForLanguage:(id)language;
- (id)resolvedVoiceIdentifierForLanguageCode:(id)code;
- (id)speechString;
- (id)voiceResolver;
- (unsigned)audioQueueFlags;
- (void)_mediaServicesDied;
- (void)_setDelegate:(id)delegate;
- (void)dealloc;
- (void)setAudioEffects:(id)effects;
- (void)setAudioQueueFlags:(unsigned int)flags;
- (void)setBundleIdentifier:(id)identifier;
- (void)setDelegate:(id)delegate;
- (void)setNormalizedRate:(float)rate;
- (void)setOutputChannels:(id)channels;
- (void)setPhonemeSubstitutions:(id)substitutions;
- (void)setPitch:(float)pitch;
- (void)setUserSubstitutions:(id)substitutions;
- (void)setVolume:(float)volume;
- (void)speechRequest:(id)request didStopWithSuccess:(BOOL)success phonemesSpoken:(id)spoken error:(id)error;
- (void)speechRequest:(id)request withMarker:(id)marker;
- (void)speechRequestDidContinue:(id)continue;
- (void)speechRequestDidPause:(id)pause;
- (void)speechRequestDidStart:(id)start;
- (void)testingSetLastRuleConversion:(id)conversion replacement:(id)replacement;
- (void)updateCoreSynthSubstitutions;
- (void)useSpecificAudioSession:(unsigned int)session;
@end

@implementation TTSSpeechSynthesizer

- (float)normalizedRate
{
  [(TTSSpeechSynthesizer *)self rate];
  v4 = v3;
  [(TTSSpeechSynthesizer *)self rate];
  v6 = (((v5 + -1.0) / 3.0) * 0.5) + 0.5;
  result = v5 * 0.5;
  if (v4 >= 1.0)
  {
    return v6;
  }

  return result;
}

- (void)setNormalizedRate:(float)rate
{
  v3 = rate < 0.5;
  v4 = (rate + -0.5 + rate + -0.5) * 3.0 + 1.0;
  rate = rate + rate;
  if (!v3)
  {
    rate = v4;
  }

  [(TTSSpeechSynthesizer *)self setRate:*&rate];
}

+ (BOOL)isSystemVoice:(id)voice
{
  v3 = [self voiceForIdentifier:voice];
  isSystemVoice = [v3 isSystemVoice];

  return isSystemVoice;
}

+ (id)unavailableVoiceIdentifiers
{
  if (qword_1EB391018 != -1)
  {
    sub_1A9578A9C();
  }

  v3 = qword_1EB391010;

  return v3;
}

+ (id)voiceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1A93521CC;
  v16 = sub_1A93521DC;
  v17 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = +[_TtC12TextToSpeech13VoiceResolver shared];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A93521E4;
  v9[3] = &unk_1E78807D8;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 voiceForIdentifier:identifierCopy preferringLanguage:0 completionHandler:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)testingSetLastRuleConversion:(id)conversion replacement:(id)replacement
{
  replacementCopy = replacement;
  conversionCopy = conversion;
  v7 = objc_opt_new();
  testingLastRuleConversion = self->_testingLastRuleConversion;
  self->_testingLastRuleConversion = v7;

  [(NSMutableDictionary *)self->_testingLastRuleConversion setObject:conversionCopy forKeyedSubscript:@"original"];
  [(NSMutableDictionary *)self->_testingLastRuleConversion setObject:replacementCopy forKeyedSubscript:@"replacement"];
}

+ (id)availableLanguageCodes
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1A93521CC;
  v14 = sub_1A93521DC;
  v15 = MEMORY[0x1E695E0F0];
  v2 = dispatch_semaphore_create(0);
  v3 = +[_TtC12TextToSpeech13VoiceResolver shared];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A935248C;
  v7[3] = &unk_1E7880800;
  v9 = &v10;
  v4 = v2;
  v8 = v4;
  [v3 currentLocaleIdentifiersWithCompletionHandler:v7];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (TTSSpeechSynthesizer)init
{
  v23.receiver = self;
  v23.super_class = TTSSpeechSynthesizer;
  v2 = [(TTSSpeechSynthesizer *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("TTSSpeechSynthesizer", v3);
    v5 = *(v2 + 6);
    *(v2 + 6) = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *(v2 + 5);
    *(v2 + 5) = v6;

    __asm { FMOV            V0.2S, #1.0 }

    *(v2 + 92) = _D0;
    *(v2 + 25) = 1065353216;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = *(v2 + 7);
    *(v2 + 7) = v13;

    objc_storeStrong(v2 + 14, MEMORY[0x1E69E96A0]);
    v15 = voucher_copy();
    v16 = *(v2 + 22);
    *(v2 + 22) = v15;

    array = [MEMORY[0x1E695DEC8] array];
    v18 = *(v2 + 19);
    *(v2 + 19) = array;

    array2 = [MEMORY[0x1E695DEC8] array];
    v20 = *(v2 + 18);
    *(v2 + 18) = array2;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__mediaServicesDied name:*MEMORY[0x1E6958120] object:0];
  }

  return v2;
}

- (_TtC12TextToSpeech15CoreSynthesizer)coreSynth
{
  coreSynth = self->_coreSynth;
  if (!coreSynth)
  {
    v4 = objc_alloc_init(_TtC12TextToSpeech15CoreSynthesizer);
    v5 = self->_coreSynth;
    self->_coreSynth = v4;

    coreSynth = self->_coreSynth;
  }

  return coreSynth;
}

- (id)voiceResolver
{
  coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
  voiceResolver = [coreSynth voiceResolver];

  return voiceResolver;
}

- (void)_mediaServicesDied
{
  v3 = AXTTSLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A9324000, v3, OS_LOG_TYPE_DEFAULT, "Media services reset", v4, 2u);
  }

  [(NSMutableDictionary *)self->_channels removeAllObjects];
}

- (void)dealloc
{
  [(TTSSpeechSynthesizer *)self _stopSpeakingRequest:0 atNextBoundary:0 synchronously:0 error:0];
  v3.receiver = self;
  v3.super_class = TTSSpeechSynthesizer;
  [(TTSSpeechSynthesizer *)&v3 dealloc];
}

- (void)_setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xDF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xBF | v10;
  }
}

- (void)setVolume:(float)volume
{
  if (volume > 1.0)
  {
    volume = 1.0;
  }

  self->_volume = fmaxf(volume, 0.0001);
}

- (void)setPitch:(float)pitch
{
  if (pitch > 2.0)
  {
    pitch = 2.0;
  }

  self->_pitch = fmaxf(pitch, 0.5);
}

- (void)setBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
  [coreSynth setBundleIdentifier:identifierCopy];
}

- (NSString)bundleIdentifier
{
  coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
  bundleIdentifier = [coreSynth bundleIdentifier];

  return bundleIdentifier;
}

- (void)setOutputChannels:(id)channels
{
  objc_storeStrong(&self->_outputChannels, channels);
  channelsCopy = channels;
  coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
  [coreSynth setChannels:channelsCopy];
}

- (void)setUserSubstitutions:(id)substitutions
{
  v4 = [substitutions copy];
  v5 = v4;
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  userSubstitutions = self->_userSubstitutions;
  self->_userSubstitutions = array;

  [(NSArray *)self->_userSubstitutions enumerateObjectsUsingBlock:&unk_1F1CEFE98];

  MEMORY[0x1EEE66B58](self, sel_updateCoreSynthSubstitutions);
}

- (void)setPhonemeSubstitutions:(id)substitutions
{
  v4 = [substitutions copy];
  v5 = v4;
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  phonemeSubstitutions = self->_phonemeSubstitutions;
  self->_phonemeSubstitutions = array;

  MEMORY[0x1EEE66B58](self, sel_updateCoreSynthSubstitutions);
}

- (void)updateCoreSynthSubstitutions
{
  if ((TTSIsBaseSystem() & 1) == 0)
  {
    coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
    v3 = [(NSArray *)self->_userSubstitutions arrayByAddingObjectsFromArray:self->_phonemeSubstitutions];
    [coreSynth setLegacySubstitutions:v3];
  }
}

- (NSString)resolvedVoiceIdentifier
{
  v2 = [objc_opt_class() voiceForIdentifier:self->_voiceIdentifier];
  identifier = [v2 identifier];

  return identifier;
}

- (id)resolvedVoiceIdentifierForLanguageCode:(id)code
{
  v3 = [(TTSSpeechSynthesizer *)self _resolveVoiceForLanguage:code];
  identifier = [v3 identifier];

  return identifier;
}

- (NSString)voiceIdentifier
{
  voiceIdentifier = self->_voiceIdentifier;
  if (voiceIdentifier)
  {
    identifier = voiceIdentifier;
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_1A93521CC;
    v19 = sub_1A93521DC;
    v20 = 0;
    v5 = dispatch_semaphore_create(0);
    voiceResolver = [(TTSSpeechSynthesizer *)self voiceResolver];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = sub_1A9352E2C;
    v12 = &unk_1E78807D8;
    v14 = &v15;
    v7 = v5;
    v13 = v7;
    [voiceResolver voiceForIdentifier:0 preferringLanguage:0 completionHandler:&v9];

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    identifier = [v16[5] identifier];

    _Block_object_dispose(&v15, 8);
  }

  return identifier;
}

- (id)_preprocessText:(id)text languageCode:(id)code
{
  textCopy = text;
  codeCopy = code;
  if ([codeCopy isEqual:@"he-IL"])
  {
    v7 = [textCopy stringByReplacingOccurrencesOfString:@"/י" withString:&stru_1F1CFF8D8];

    textCopy = [v7 stringByReplacingOccurrencesOfString:@"/ה" withString:&stru_1F1CFF8D8];

    v8 = [textCopy stringByReplacingOccurrencesOfString:@"/ת" withString:&stru_1F1CFF8D8];
LABEL_5:
    v9 = v8;

    textCopy = v9;
    goto LABEL_6;
  }

  if ([codeCopy isEqual:@"ja-JP"])
  {
    v8 = AXSpeechReplaceJapaneseElongationCharactersIfNeeded(textCopy);
    goto LABEL_5;
  }

LABEL_6:
  if ([textCopy length] >= 4)
  {
    localizedUppercaseString = [textCopy localizedUppercaseString];
    v11 = [localizedUppercaseString isEqualToString:textCopy];

    if (v11)
    {
      localizedLowercaseString = [textCopy localizedLowercaseString];

      textCopy = localizedLowercaseString;
    }
  }

  v13 = [textCopy stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

  v14 = [v13 stringByReplacingOccurrencesOfString:@"‘" withString:@"'"];

  v15 = [v14 stringByReplacingOccurrencesOfString:@"−" withString:@"-"];

  v19 = 12288;
  v16 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v19 length:1];
  v17 = [v15 stringByReplacingOccurrencesOfString:v16 withString:@" "];

  return v17;
}

+ (id)remapVoiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_opt_class() voiceForIdentifier:identifierCopy];

  identifier = [v4 identifier];

  return identifier;
}

- (id)_resolveVoiceForLanguage:(id)language
{
  languageCopy = language;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1A93521CC;
  v18 = sub_1A93521DC;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  voiceResolver = [(TTSSpeechSynthesizer *)self voiceResolver];
  voiceIdentifier = self->_voiceIdentifier;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A9353264;
  v11[3] = &unk_1E78807D8;
  v13 = &v14;
  v8 = v5;
  v12 = v8;
  [voiceResolver voiceForIdentifier:voiceIdentifier preferringLanguage:languageCopy completionHandler:v11];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)_makeRequestForVoice:(id)voice andLanguageCode:(id)code
{
  voiceCopy = voice;
  codeCopy = code;
  v8 = objc_alloc_init(TTSSpeechRequest);
  voucher = [(TTSSpeechSynthesizer *)self voucher];
  [(TTSSpeechRequest *)v8 setVoucher:voucher];

  [(TTSSpeechRequest *)v8 setVoice:voiceCopy];
  if (self->_perVoiceSettings)
  {
    [(TTSSpeechRequest *)v8 setVoiceSettings:?];
  }

  language = [voiceCopy language];
  if (language)
  {
    language2 = [voiceCopy language];
    [(TTSSpeechRequest *)v8 setLanguageCode:language2];
  }

  else
  {
    [(TTSSpeechRequest *)v8 setLanguageCode:codeCopy];
  }

  -[TTSSpeechRequest setGender:](v8, "setGender:", [voiceCopy gender]);
  [(TTSSpeechRequest *)v8 setPitch:self->_pitch];
  [(TTSSpeechRequest *)v8 setRate:self->_rate];
  [(TTSSpeechRequest *)v8 setVolume:self->_volume];
  [(TTSSpeechRequest *)v8 setMaintainsInput:*&self->_synthesizerFlags >> 7];
  outputChannels = [(TTSSpeechSynthesizer *)self outputChannels];
  [(TTSSpeechRequest *)v8 setChannels:outputChannels];

  audioBufferCallback = [(TTSSpeechSynthesizer *)self audioBufferCallback];
  [(TTSSpeechRequest *)v8 setAudioBufferCallback:audioBufferCallback];

  [(TTSSpeechRequest *)v8 setSynthesizeSilently:[(TTSSpeechSynthesizer *)self synthesizeSilently]];
  [(TTSSpeechRequest *)v8 setIgnoreSubstitutions:[(TTSSpeechSynthesizer *)self ignoreSubstitutions]];
  if (!self->_useSharedSession)
  {
    if (self->_audioSessionIDIsValid)
    {
      audioSessionID = self->_audioSessionID;
    }

    else
    {
      mEMORY[0x1E6958468] = [MEMORY[0x1E6958468] sharedInstance];
      audioSessionID = [mEMORY[0x1E6958468] opaqueSessionID];
    }

    [(TTSSpeechRequest *)v8 setAudioSessionID:audioSessionID];
    [(TTSSpeechRequest *)v8 setAudioSessionIDIsValid:1];
    [(TTSSpeechRequest *)v8 setAudioQueueFlags:self->_audioQueueFlags];
  }

  return v8;
}

- (BOOL)_startSpeakingString:(id)string orSSMLString:(id)lString withLanguageCode:(id)code jobId:(id)id request:(id *)request error:(id *)error
{
  stringCopy = string;
  lStringCopy = lString;
  codeCopy = code;
  idCopy = id;
  if (!(stringCopy | lStringCopy))
  {
    v17 = TTSErrorCreate(0, @"TTSErrorDomain", -4005, @"speech string is empty");
    if (v17)
    {
      stringCopy = 0;
      if (!error)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  v18 = [(TTSSpeechSynthesizer *)self _resolveVoiceForLanguage:codeCopy];
  if (v18)
  {
    v19 = v18;
    errorCopy = error;
    language = [v18 language];
    v21 = language;
    if (language)
    {
      v22 = language;
    }

    else
    {
      v22 = codeCopy;
    }

    v23 = [(TTSSpeechSynthesizer *)self _preprocessText:stringCopy languageCode:v22];

    v24 = [(TTSSpeechSynthesizer *)self _makeRequestForVoice:v19 andLanguageCode:codeCopy];
    v25 = v24;
    if (idCopy)
    {
      [v24 setJobIdentifier:idCopy];
    }

    else
    {
      v27 = +[_TtC12TextToSpeech15TTSSpeechTracer shared];
      makeSpeechJobIdentifier = [v27 makeSpeechJobIdentifier];
      [v25 setJobIdentifier:makeSpeechJobIdentifier];
    }

    v29 = +[_TtC12TextToSpeech15TTSSpeechTracer shared];
    v30 = &stru_1F1CFF8D8;
    if (lStringCopy)
    {
      v30 = lStringCopy;
    }

    if (v23)
    {
      v31 = v23;
    }

    else
    {
      v31 = v30;
    }

    v32 = [_TtC12TextToSpeech18TTSSpeechEventObjc makeWithStart:v31];
    jobIdentifier = [v25 jobIdentifier];
    [v29 emitWithEvent:v32 forIdentifier:jobIdentifier];

    objc_initWeak(&location, v25);
    date = [MEMORY[0x1E695DF00] date];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = sub_1A93538B8;
    v45[3] = &unk_1E7880848;
    v35 = date;
    v46 = v35;
    objc_copyWeak(&v47, &location);
    [v25 setLatencyCallback:v45];
    if (lStringCopy)
    {
      v36 = lStringCopy;
    }

    else
    {
      v36 = v23;
    }

    [v25 setText:v36];
    [v25 setSpeechStringType:lStringCopy != 0];
    [v25 setDispatchTime:CFAbsoluteTimeGetCurrent()];
    if (v25)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A9353948;
      block[3] = &unk_1E7880870;
      block[4] = self;
      v43 = v25;
      v44 = codeCopy;
      dispatch_sync(queue, block);
    }

    if (request)
    {
      v38 = v25;
      *request = v25;
    }

    objc_destroyWeak(&v47);

    objc_destroyWeak(&location);
    v17 = 0;
    stringCopy = v23;
    error = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_28;
    }

LABEL_27:
    v17 = v17;
    *error = v17;
LABEL_28:
    v26 = v17 == 0;
    goto LABEL_29;
  }

  v17 = TTSErrorCreate(0, @"TTSErrorDomain", -4005, @"no voice available to speak with the supplied language code");
  if (error)
  {
    v17 = v17;
    v26 = 0;
    *error = v17;
  }

  else
  {
    v26 = 0;
  }

LABEL_29:

  return v26;
}

+ (id)audioFileSettingsForVoice:(id)voice
{
  voiceCopy = voice;
  if (voiceCopy)
  {
    v4 = [TTSSpeechSynthesizer voiceForIdentifier:voiceCopy];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_1A93521CC;
    v20 = sub_1A93521DC;
    v21 = 0;
    v5 = dispatch_semaphore_create(0);
    synthesisProviderVoice = [v4 synthesisProviderVoice];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = sub_1A9353B54;
    v13 = &unk_1E7880898;
    v15 = &v16;
    v7 = v5;
    v14 = v7;
    [_TtC12TextToSpeech13TTSAURenderer formatForVoice:synthesisProviderVoice completionHandler:&v10];

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    settings = [v17[5] settings];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    settings = 0;
  }

  return settings;
}

+ (id)_speechVoiceForIdentifier:(id)identifier language:(id)language footprint:(int64_t)footprint
{
  identifierCopy = identifier;
  languageCopy = language;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1A93521CC;
  v20 = sub_1A93521DC;
  v21 = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = +[_TtC12TextToSpeech13VoiceResolver shared];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A9353D34;
  v13[3] = &unk_1E78807D8;
  v15 = &v16;
  v10 = v8;
  v14 = v10;
  [v9 voiceForIdentifier:identifierCopy preferringLanguage:languageCopy completionHandler:v13];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (BOOL)_stopSpeakingRequest:(id)request atNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = self->_speechRequests;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (!requestCopy || *(*(&v23 + 1) + 8 * i) == requestCopy)
        {
          v14 = dispatch_semaphore_create(0);
          coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = sub_1A9353FA4;
          v21[3] = &unk_1E78808C0;
          v22 = v14;
          v16 = v14;
          [coreSynth stopSpeakingAt:boundary completionHandler:v21];

          dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if ([(NSMutableArray *)self->_speechRequests count])
  {
    v17 = 0;
  }

  else
  {
    v17 = TTSErrorCreate(0, @"TTSErrorDomain", -4003, @"not currently speaking");
  }

  if (error)
  {
    v17 = v17;
    *error = v17;
  }

  v18 = v17 == 0;

  return v18;
}

- (BOOL)_pauseSpeakingRequest:(id)request atNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_speechRequests;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if (!requestCopy || v13 == requestCopy)
        {
          v14 = dispatch_semaphore_create(0);
          coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = sub_1A93541C4;
          v22[3] = &unk_1E78808C0;
          v23 = v14;
          v16 = v14;
          [coreSynth pauseSpeakingAt:boundary completionHandler:v22];

          dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
          [(TTSSpeechSynthesizer *)self speechRequestDidPause:v13];
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  if ([(NSMutableArray *)self->_speechRequests count])
  {
    v17 = 0;
  }

  else
  {
    v17 = TTSErrorCreate(0, @"TTSErrorDomain", -4003, @"not currently speaking");
  }

  if (error)
  {
    v17 = v17;
    *error = v17;
  }

  v18 = v17 == 0;

  return v18;
}

- (BOOL)_continueSpeakingRequest:(id)request withError:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_speechRequests;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (!requestCopy || v12 == requestCopy)
        {
          coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
          continueSpeaking = [coreSynth continueSpeaking];

          if (continueSpeaking)
          {
            [(TTSSpeechSynthesizer *)self speechRequestDidContinue:v12];
          }
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if (![(NSMutableArray *)self->_speechRequests count])
  {
    v15 = TTSErrorCreate(0, @"TTSErrorDomain", -4003, @"no active speech job");
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v15 = 0;
  if (error)
  {
LABEL_14:
    v15 = v15;
    *error = v15;
  }

LABEL_15:
  v16 = v15 == 0;

  return v16;
}

- (NSArray)audioEffects
{
  coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
  effects = [coreSynth effects];

  return effects;
}

- (void)setAudioEffects:(id)effects
{
  effectsCopy = effects;
  coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
  [coreSynth setEffects:effectsCopy];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A93544A4;
  v7[3] = &unk_1E787FE98;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

- (TTSSpeechSynthesizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)stopSpeakingAtNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously error:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93545AC;
  block[3] = &unk_1E78808E8;
  block[4] = self;
  block[5] = &v10;
  synchronouslyCopy = synchronously;
  block[6] = boundary;
  block[7] = error;
  dispatch_sync(queue, block);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

- (BOOL)pauseSpeakingAtNextBoundary:(int64_t)boundary synchronously:(BOOL)synchronously error:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93546AC;
  block[3] = &unk_1E78808E8;
  block[4] = self;
  block[5] = &v10;
  synchronouslyCopy = synchronously;
  block[6] = boundary;
  block[7] = error;
  dispatch_sync(queue, block);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

- (BOOL)continueSpeakingWithError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A935479C;
  block[3] = &unk_1E7880910;
  block[4] = self;
  block[5] = &v7;
  block[6] = error;
  dispatch_sync(queue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isSpeaking
{
  coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
  if ([coreSynth isSpeaking])
  {
    isPaused = 1;
  }

  else
  {
    coreSynth2 = [(TTSSpeechSynthesizer *)self coreSynth];
    isPaused = [coreSynth2 isPaused];
  }

  return isPaused;
}

- (id)speechString
{
  lastObject = [(NSMutableArray *)self->_speechRequests lastObject];
  text = [lastObject text];

  return text;
}

- (void)useSpecificAudioSession:(unsigned int)session
{
  if (session)
  {
    self->_audioSessionID = session;
    *&self->_useSharedSession = 256;
    v5 = [MEMORY[0x1E6958468] retrieveSessionWithID:?];
    coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
    [coreSynth setAudioSession:v5];
  }
}

- (unsigned)audioQueueFlags
{
  coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
  audioQueueFlags = [coreSynth audioQueueFlags];

  return audioQueueFlags;
}

- (void)setAudioQueueFlags:(unsigned int)flags
{
  v3 = *&flags;
  coreSynth = [(TTSSpeechSynthesizer *)self coreSynth];
  [coreSynth setAudioQueueFlags:v3];
}

- (void)speechRequestDidStart:(id)start
{
  startCopy = start;
  if (*&self->_synthesizerFlags)
  {
    delegateTargetQueue = [(TTSSpeechSynthesizer *)self delegateTargetQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A9354A80;
    v6[3] = &unk_1E787FE98;
    v6[4] = self;
    v7 = startCopy;
    dispatch_async(delegateTargetQueue, v6);
  }
}

- (void)speechRequestDidPause:(id)pause
{
  pauseCopy = pause;
  if ((*&self->_synthesizerFlags & 8) != 0)
  {
    delegateTargetQueue = [(TTSSpeechSynthesizer *)self delegateTargetQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A9354B90;
    v6[3] = &unk_1E787FE98;
    v6[4] = self;
    v7 = pauseCopy;
    dispatch_async(delegateTargetQueue, v6);
  }
}

- (void)speechRequestDidContinue:(id)continue
{
  continueCopy = continue;
  if ((*&self->_synthesizerFlags & 0x10) != 0)
  {
    delegateTargetQueue = [(TTSSpeechSynthesizer *)self delegateTargetQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A9354CA0;
    v6[3] = &unk_1E787FE98;
    v6[4] = self;
    v7 = continueCopy;
    dispatch_async(delegateTargetQueue, v6);
  }
}

- (void)speechRequest:(id)request didStopWithSuccess:(BOOL)success phonemesSpoken:(id)spoken error:(id)error
{
  requestCopy = request;
  spokenCopy = spoken;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A9354DE8;
  block[3] = &unk_1E7880988;
  block[4] = self;
  v18 = requestCopy;
  successCopy = success;
  v19 = spokenCopy;
  v20 = errorCopy;
  v14 = errorCopy;
  v15 = spokenCopy;
  v16 = requestCopy;
  dispatch_async(queue, block);
}

- (void)speechRequest:(id)request withMarker:(id)marker
{
  requestCopy = request;
  markerCopy = marker;
  v8 = [(TTSSpeechSynthesizer *)self _processMarker:markerCopy forRequest:requestCopy];
  if (v8)
  {
    if ((*&self->_synthesizerFlags & 0x40) != 0)
    {
      delegateTargetQueue = [(TTSSpeechSynthesizer *)self delegateTargetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A9355324;
      block[3] = &unk_1E7880870;
      block[4] = self;
      v16 = v8;
      v17 = requestCopy;
      dispatch_async(delegateTargetQueue, block);
    }

    if ([markerCopy markType] == 1)
    {
      v10 = markerCopy;
      if ((*&self->_synthesizerFlags & 0x20) != 0)
      {
        delegateTargetQueue2 = [(TTSSpeechSynthesizer *)self delegateTargetQueue];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = sub_1A935537C;
        v12[3] = &unk_1E7880870;
        v12[4] = self;
        v13 = v10;
        v14 = requestCopy;
        dispatch_async(delegateTargetQueue2, v12);
      }
    }
  }
}

- (id)_processMarker:(id)marker forRequest:(id)request
{
  v35 = *MEMORY[0x1E69E9840];
  markerCopy = marker;
  requestCopy = request;
  if ([markerCopy markType] != 1)
  {
    goto LABEL_10;
  }

  v7 = markerCopy;
  wordRange = [v7 wordRange];
  v10 = v9;
  text = [requestCopy text];
  if (wordRange <= [text length])
  {
    v12 = wordRange + v10;
    text2 = [requestCopy text];
    v14 = [text2 length];

    if (v12 <= v14)
    {
LABEL_9:

LABEL_10:
      v20 = markerCopy;
      goto LABEL_11;
    }
  }

  else
  {
  }

  text3 = [requestCopy text];
  v16 = [text3 length];

  if (wordRange < v16)
  {
    text4 = [requestCopy text];
    v18 = [text4 length];

    v19 = AXTTSLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = v18 - wordRange;
      text5 = [requestCopy text];
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "markType")}];
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:wordRange];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
      v27 = 138413058;
      v28 = text5;
      v29 = 2112;
      v30 = v24;
      v31 = 2112;
      v32 = v25;
      v33 = 2112;
      v34 = v26;
      _os_log_error_impl(&dword_1A9324000, v19, OS_LOG_TYPE_ERROR, "Speech processing error: [%@] / mark: %@ / range: %@, %@", &v27, 0x2Au);
    }

    goto LABEL_9;
  }

  v20 = 0;
LABEL_11:

  return v20;
}

@end