@interface _LTTranslationContext(OspreyRequest)
- (FTMutableSpeechTranslationStreamingRequest)_ospreySpeechTranslationRequestWithHybridEndpointer:()OspreyRequest;
- (FTMutableSpeechTranslationStreamingRequest)_ospreyTextToSpeechTranslationRequestWithText:()OspreyRequest;
- (FTMutableTextToSpeechRequest)_ospreyTTSRequestWithText:()OspreyRequest;
- (__CFString)redactIfNeeded:()OspreyRequest;
- (id)_ttsVoiceStringWithLocale:()OspreyRequest;
- (id)sequoiaClientHeaderValue;
@end

@implementation _LTTranslationContext(OspreyRequest)

- (id)_ttsVoiceStringWithLocale:()OspreyRequest
{
  v3 = _LTLocaleMappedForTTS();
  v4 = _LTPreferredVoiceTypeForLocale(v3);
  v5 = _LTVoiceTypeRemoteServiceString(v4);

  return v5;
}

- (FTMutableSpeechTranslationStreamingRequest)_ospreySpeechTranslationRequestWithHybridEndpointer:()OspreyRequest
{
  v5 = objc_alloc_init(FTMutableStartSpeechTranslationRequest);
  uniqueID = [self uniqueID];
  v7 = _LTPreferencesRequestIDOverride(uniqueID);
  [(FTMutableStartSpeechTranslationRequest *)v5 setRequest_id:v7];

  sessionID = [self sessionID];
  v9 = _LTPreferencesSessionIDOverride(sessionID);
  [(FTMutableStartSpeechTranslationRequest *)v5 setConversation_id:v9];

  clientIdentifier = [self clientIdentifier];
  [(FTMutableStartSpeechTranslationRequest *)v5 setApp_id:clientIdentifier];

  -[FTMutableStartSpeechTranslationRequest setRestricted_mode:](v5, "setRestricted_mode:", [self censorSpeech]);
  -[FTMutableStartSpeechTranslationRequest setOpt_in_status:](v5, "setOpt_in_status:", LTDOspreyDataSharingStatus([self dataSharingOptInStatus]));
  [(FTMutableStartSpeechTranslationRequest *)v5 setStreaming_mode:1];
  v11 = objc_alloc_init(FTMutableTranslationOptions);
  -[FTMutableTranslationOptions setEnable_disambiguation_alternatives:](v11, "setEnable_disambiguation_alternatives:", [self supportsGenderDisambiguation]);
  dataSharingOptInStatus = [self dataSharingOptInStatus];
  [(FTMutableTranslationOptions *)v11 setDisable_payload_logging:LTDDisablePayloadLogging(dataSharingOptInStatus, v13)];
  v14 = [(FTMutableStartSpeechTranslationRequest *)v5 setOptions:v11];
  v16 = _LTOSLogTranslationEngine(v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_LTTranslationContext(OspreyRequest) _ospreySpeechTranslationRequestWithHybridEndpointer:v16];
  }

  array = [MEMORY[0x277CBEB18] array];
  v18 = objc_alloc_init(FTMutableTranslationLocalePair);
  localePair = [self localePair];
  sourceLocale = [localePair sourceLocale];
  _ltLocaleIdentifier = [sourceLocale _ltLocaleIdentifier];
  [(FTMutableTranslationLocalePair *)v18 setSource_locale:_ltLocaleIdentifier];

  localePair2 = [self localePair];
  targetLocale = [localePair2 targetLocale];
  _ltLocaleIdentifier2 = [targetLocale _ltLocaleIdentifier];
  [(FTMutableTranslationLocalePair *)v18 setTarget_locale:_ltLocaleIdentifier2];

  v77 = v18;
  [array addObject:v18];
  v79 = array;
  if ([self autodetectLanguage])
  {
    v25 = objc_alloc_init(FTMutableTranslationLocalePair);
    localePair3 = [self localePair];
    targetLocale2 = [localePair3 targetLocale];
    _ltLocaleIdentifier3 = [targetLocale2 _ltLocaleIdentifier];
    [(FTMutableTranslationLocalePair *)v25 setSource_locale:_ltLocaleIdentifier3];

    localePair4 = [self localePair];
    sourceLocale2 = [localePair4 sourceLocale];
    _ltLocaleIdentifier4 = [sourceLocale2 _ltLocaleIdentifier];
    [(FTMutableTranslationLocalePair *)v25 setTarget_locale:_ltLocaleIdentifier4];

    array = v79;
    [v79 addObject:v25];
  }

  [(FTMutableStartSpeechTranslationRequest *)v5 setTranslation_locale_pairs:array];
  v32 = objc_alloc_init(FTMutableStartSpeechRequest);
  uniqueID2 = [self uniqueID];
  v34 = _LTPreferencesRequestIDOverride(uniqueID2);
  [(FTMutableStartSpeechRequest *)v32 setSpeech_id:v34];

  [(FTMutableStartSpeechRequest *)v32 setTask_name:@"MtApp"];
  [(FTMutableStartSpeechRequest *)v32 setCodec:6];
  [(FTMutableStartSpeechRequest *)v32 setStream_results:1];
  [(FTMutableStartSpeechRequest *)v32 setStore_audio:1];
  autoEndpoint = [self autoEndpoint];
  [(FTMutableStartSpeechRequest *)v32 setEnd_point_mode:autoEndpoint];
  [(FTMutableStartSpeechRequest *)v32 setEnable_server_side_endpoint:autoEndpoint];
  [(FTMutableStartSpeechRequest *)v32 setClient_endpointer_model_version:@"1"];
  [(FTMutableStartSpeechRequest *)v32 setEnable_hybrid_endpoint:autoEndpoint & a3];
  [(FTMutableStartSpeechRequest *)v32 setKeyboard_identifier:&stru_284834138];
  [(FTMutableStartSpeechRequest *)v32 setInput_origin:&stru_284834138];
  [(FTMutableStartSpeechRequest *)v32 setInitial_recognition_candidate_id:0];
  [(FTMutableStartSpeechRequest *)v32 setDisable_auto_punctuation:1];
  [(FTMutableStartSpeechTranslationRequest *)v5 setStart_speech_request:v32];
  v36 = objc_alloc_init(FTMutableTranslationRequest);
  uniqueID3 = [self uniqueID];
  v38 = _LTPreferencesRequestIDOverride(uniqueID3);
  [(FTMutableTranslationRequest *)v36 setSpeech_id:v38];

  uniqueID4 = [self uniqueID];
  v40 = _LTPreferencesRequestIDOverride(uniqueID4);
  [(FTMutableTranslationRequest *)v36 setRequest_id:v40];

  [self taskHint];
  v41 = _LTTranslationModelTaskString();
  [(FTMutableTranslationRequest *)v36 setTask:v41];

  v42 = [(FTMutableTranslationRequest *)v36 setOptions:v11];
  v44 = _LTOSLogTranslationEngine(v42, v43);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    [_LTTranslationContext(OspreyRequest) _ospreySpeechTranslationRequestWithHybridEndpointer:v44];
  }

  v78 = v11;
  [(FTMutableStartSpeechTranslationRequest *)v5 setTranslation_request:v36];
  array2 = [MEMORY[0x277CBEB18] array];
  v46 = objc_alloc_init(FTMutableTextToSpeechRequest);
  uniqueID5 = [self uniqueID];
  v48 = _LTPreferencesRequestIDOverride(uniqueID5);
  [(FTMutableTextToSpeechRequest *)v46 setSpeech_id:v48];

  uniqueID6 = [self uniqueID];
  v50 = _LTPreferencesRequestIDOverride(uniqueID6);
  [(FTMutableTextToSpeechRequest *)v46 setSession_id:v50];

  localePair5 = [self localePair];
  targetLocale3 = [localePair5 targetLocale];
  _ltLocaleIdentifier5 = [targetLocale3 _ltLocaleIdentifier];
  [(FTMutableTextToSpeechRequest *)v46 setLanguage:_ltLocaleIdentifier5];

  localePair6 = [self localePair];
  targetLocale4 = [localePair6 targetLocale];
  v56 = [self _ttsVoiceStringWithLocale:targetLocale4];
  [(FTMutableTextToSpeechRequest *)v46 setGender:v56];

  [(FTMutableTextToSpeechRequest *)v46 setAudio_type:1];
  v57 = objc_alloc_init(FTMutableTextToSpeechRequestMeta);
  clientIdentifier2 = [self clientIdentifier];
  [(FTMutableTextToSpeechRequestMeta *)v57 setApp_id:clientIdentifier2];

  [(FTMutableTextToSpeechRequestMeta *)v57 setChannel_type:2];
  [(FTMutableTextToSpeechRequest *)v46 setMeta_info:v57];
  [array2 addObject:v46];
  if ([self autodetectLanguage])
  {
    v59 = objc_alloc_init(FTMutableTextToSpeechRequest);
    uniqueID7 = [self uniqueID];
    v61 = _LTPreferencesRequestIDOverride(uniqueID7);
    [(FTMutableTextToSpeechRequest *)v59 setSpeech_id:v61];

    uniqueID8 = [self uniqueID];
    v63 = _LTPreferencesRequestIDOverride(uniqueID8);
    [(FTMutableTextToSpeechRequest *)v59 setSession_id:v63];

    localePair7 = [self localePair];
    sourceLocale3 = [localePair7 sourceLocale];
    [sourceLocale3 _ltLocaleIdentifier];
    v76 = v5;
    v66 = v36;
    v68 = v67 = array2;
    [(FTMutableTextToSpeechRequest *)v59 setLanguage:v68];

    localePair8 = [self localePair];
    sourceLocale4 = [localePair8 sourceLocale];
    v71 = [self _ttsVoiceStringWithLocale:sourceLocale4];
    [(FTMutableTextToSpeechRequest *)v59 setGender:v71];

    array2 = v67;
    v36 = v66;
    v5 = v76;

    [(FTMutableTextToSpeechRequest *)v59 setAudio_type:1];
    v72 = objc_alloc_init(FTMutableTextToSpeechRequestMeta);
    clientIdentifier3 = [self clientIdentifier];
    [(FTMutableTextToSpeechRequestMeta *)v72 setApp_id:clientIdentifier3];

    [(FTMutableTextToSpeechRequestMeta *)v72 setChannel_type:2];
    [(FTMutableTextToSpeechRequest *)v59 setMeta_info:v72];
    [array2 addObject:v59];
  }

  [(FTMutableStartSpeechTranslationRequest *)v5 setText_to_speech_requests:array2];
  v74 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
  [(FTMutableSpeechTranslationStreamingRequest *)v74 setContent_type:1];
  [(FTMutableSpeechTranslationStreamingRequest *)v74 setContentAsFTStartSpeechTranslationRequest:v5];

  return v74;
}

- (FTMutableSpeechTranslationStreamingRequest)_ospreyTextToSpeechTranslationRequestWithText:()OspreyRequest
{
  v53[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(FTMutableStartSpeechTranslationRequest);
  uniqueID = [self uniqueID];
  v7 = _LTPreferencesRequestIDOverride(uniqueID);
  [(FTMutableStartSpeechTranslationRequest *)v5 setRequest_id:v7];

  sessionID = [self sessionID];
  v9 = _LTPreferencesSessionIDOverride(sessionID);
  [(FTMutableStartSpeechTranslationRequest *)v5 setConversation_id:v9];

  clientIdentifier = [self clientIdentifier];
  [(FTMutableStartSpeechTranslationRequest *)v5 setApp_id:clientIdentifier];

  -[FTMutableStartSpeechTranslationRequest setRestricted_mode:](v5, "setRestricted_mode:", [self censorSpeech]);
  -[FTMutableStartSpeechTranslationRequest setOpt_in_status:](v5, "setOpt_in_status:", LTDOspreyDataSharingStatus([self dataSharingOptInStatus]));
  [(FTMutableStartSpeechTranslationRequest *)v5 setStreaming_mode:0];
  v11 = objc_alloc_init(FTMutableTranslationOptions);
  -[FTMutableTranslationOptions setEnable_disambiguation_alternatives:](v11, "setEnable_disambiguation_alternatives:", [self supportsGenderDisambiguation]);
  dataSharingOptInStatus = [self dataSharingOptInStatus];
  [(FTMutableTranslationOptions *)v11 setDisable_payload_logging:LTDDisablePayloadLogging(dataSharingOptInStatus, v13)];
  v14 = [(FTMutableStartSpeechTranslationRequest *)v5 setOptions:v11];
  v16 = _LTOSLogTranslationEngine(v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_LTTranslationContext(OspreyRequest) _ospreyTextToSpeechTranslationRequestWithText:v16];
  }

  array = [MEMORY[0x277CBEB18] array];
  v18 = objc_alloc_init(FTMutableTranslationLocalePair);
  localePair = [self localePair];
  sourceLocale = [localePair sourceLocale];
  _ltLocaleIdentifier = [sourceLocale _ltLocaleIdentifier];
  [(FTMutableTranslationLocalePair *)v18 setSource_locale:_ltLocaleIdentifier];

  localePair2 = [self localePair];
  targetLocale = [localePair2 targetLocale];
  _ltLocaleIdentifier2 = [targetLocale _ltLocaleIdentifier];
  [(FTMutableTranslationLocalePair *)v18 setTarget_locale:_ltLocaleIdentifier2];

  [array addObject:v18];
  v52 = array;
  [(FTMutableStartSpeechTranslationRequest *)v5 setTranslation_locale_pairs:array];
  v25 = objc_alloc_init(FTMutableTranslationRequest);
  uniqueID2 = [self uniqueID];
  v27 = _LTPreferencesRequestIDOverride(uniqueID2);
  [(FTMutableTranslationRequest *)v25 setSpeech_id:v27];

  uniqueID3 = [self uniqueID];
  v29 = _LTPreferencesRequestIDOverride(uniqueID3);
  [(FTMutableTranslationRequest *)v25 setRequest_id:v29];

  [self taskHint];
  v30 = _LTTranslationModelTaskString();
  [(FTMutableTranslationRequest *)v25 setTask:v30];

  v53[0] = v4;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  [(FTMutableTranslationRequest *)v25 setTranslation_phrase:v31];

  -[FTMutableTranslationRequest setIs_partial:](v25, "setIs_partial:", [self isFinal] ^ 1);
  v32 = [(FTMutableTranslationRequest *)v25 setOptions:v11];
  v34 = _LTOSLogTranslationEngine(v32, v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    [_LTTranslationContext(OspreyRequest) _ospreyTextToSpeechTranslationRequestWithText:v34];
  }

  [(FTMutableStartSpeechTranslationRequest *)v5 setTranslation_request:v25, v4];
  array2 = [MEMORY[0x277CBEB18] array];
  v36 = objc_alloc_init(FTMutableTextToSpeechRequest);
  uniqueID4 = [self uniqueID];
  v38 = _LTPreferencesRequestIDOverride(uniqueID4);
  [(FTMutableTextToSpeechRequest *)v36 setSpeech_id:v38];

  uniqueID5 = [self uniqueID];
  v40 = _LTPreferencesRequestIDOverride(uniqueID5);
  [(FTMutableTextToSpeechRequest *)v36 setSession_id:v40];

  localePair3 = [self localePair];
  targetLocale2 = [localePair3 targetLocale];
  _ltLocaleIdentifier3 = [targetLocale2 _ltLocaleIdentifier];
  [(FTMutableTextToSpeechRequest *)v36 setLanguage:_ltLocaleIdentifier3];

  localePair4 = [self localePair];
  targetLocale3 = [localePair4 targetLocale];
  v46 = [self _ttsVoiceStringWithLocale:targetLocale3];
  [(FTMutableTextToSpeechRequest *)v36 setGender:v46];

  [(FTMutableTextToSpeechRequest *)v36 setAudio_type:1];
  v47 = objc_alloc_init(FTMutableTextToSpeechRequestMeta);
  clientIdentifier2 = [self clientIdentifier];
  [(FTMutableTextToSpeechRequestMeta *)v47 setApp_id:clientIdentifier2];

  [(FTMutableTextToSpeechRequestMeta *)v47 setChannel_type:2];
  [(FTMutableTextToSpeechRequest *)v36 setMeta_info:v47];
  [array2 addObject:v36];
  [(FTMutableStartSpeechTranslationRequest *)v5 setText_to_speech_requests:array2];
  v49 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
  [(FTMutableSpeechTranslationStreamingRequest *)v49 setContent_type:1];
  [(FTMutableSpeechTranslationStreamingRequest *)v49 setContentAsFTStartSpeechTranslationRequest:v5];

  return v49;
}

- (FTMutableTextToSpeechRequest)_ospreyTTSRequestWithText:()OspreyRequest
{
  v4 = a3;
  v5 = objc_alloc_init(FTMutableTextToSpeechRequest);
  [(FTMutableTextToSpeechRequest *)v5 setText:v4];

  localePair = [self localePair];
  targetLocale = [localePair targetLocale];
  v8 = [self _ttsVoiceStringWithLocale:targetLocale];
  [(FTMutableTextToSpeechRequest *)v5 setGender:v8];

  localePair2 = [self localePair];
  targetLocale2 = [localePair2 targetLocale];
  _ltLocaleIdentifier = [targetLocale2 _ltLocaleIdentifier];
  v12 = _LTLocaleIdentifierMappedForTTS();
  [(FTMutableTextToSpeechRequest *)v5 setLanguage:v12];

  [(FTMutableTextToSpeechRequest *)v5 setAudio_type:1];
  uniqueID = [self uniqueID];
  v14 = _LTPreferencesRequestIDOverride(uniqueID);
  [(FTMutableTextToSpeechRequest *)v5 setSpeech_id:v14];

  sessionID = [self sessionID];
  v16 = _LTPreferencesSessionIDOverride(sessionID);
  [(FTMutableTextToSpeechRequest *)v5 setSession_id:v16];

  [(FTMutableTextToSpeechRequest *)v5 setEnable_word_timing_info:1];
  v17 = objc_alloc_init(FTMutableTextToSpeechRequestMeta);
  clientIdentifier = [self clientIdentifier];
  [(FTMutableTextToSpeechRequestMeta *)v17 setApp_id:clientIdentifier];

  [(FTMutableTextToSpeechRequestMeta *)v17 setChannel_type:2];
  [(FTMutableTextToSpeechRequest *)v5 setMeta_info:v17];

  return v5;
}

- (__CFString)redactIfNeeded:()OspreyRequest
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (([v3 hasPrefix:@"com.apple."] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"translate"))
    {
      v5 = v4;
    }

    else
    {
      v5 = @"<redacted>";
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sequoiaClientHeaderValue
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v3 = arc4random_uniform(0xAu);
  appIdentifier = [self appIdentifier];
  clientIdentifier = [self clientIdentifier];
  if (appIdentifier && v3)
  {
    v6 = [self redactIfNeeded:appIdentifier];

    appIdentifier = v6;
  }

  if (clientIdentifier && v3)
  {
    v7 = [self redactIfNeeded:clientIdentifier];

    clientIdentifier = v7;
  }

  if (appIdentifier)
  {
    v8 = appIdentifier;
  }

  else
  {
    v8 = clientIdentifier;
  }

  if (appIdentifier)
  {
    v9 = clientIdentifier;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  v11 = v9;
  if (v10)
  {
    [v2 appendString:v10];
  }

  if (v11)
  {
    [v2 appendFormat:@" (%@)", v11];
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  if (localeIdentifier)
  {
    [v2 appendFormat:@"; %@", localeIdentifier];
  }

  if ([self sourceOrigin] == 1)
  {
    [v2 appendString:@" | OCR"];
  }

  if ([self sourceOrigin] == 2)
  {
    [v2 appendString:@" | action-button"];
  }

  if ([self sourceOrigin] == 4)
  {
    [v2 appendString:@" | control-center"];
  }

  v14 = [MEMORY[0x277CCACA8] stringWithString:v2];

  return v14;
}

- (void)_ospreySpeechTranslationRequestWithHybridEndpointer:()OspreyRequest .cold.1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_0_15(&dword_232E53000, v3, v4, "Disambiguation: Creating online speech translation request (with ASR input), setting option enable_disambiguation_alternatives: %{BOOL}i", v5, v6, v7, v8);
}

- (void)_ospreySpeechTranslationRequestWithHybridEndpointer:()OspreyRequest .cold.2(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_0_15(&dword_232E53000, v3, v4, "Disambiguation: Creating FTMutableTranslationRequest as part of online speech translation request (with ASR input), setting option enable_disambiguation_alternatives: %{BOOL}i", v5, v6, v7, v8);
}

- (void)_ospreyTextToSpeechTranslationRequestWithText:()OspreyRequest .cold.1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_0_15(&dword_232E53000, v3, v4, "Disambiguation: Creating online speech translation request text-based input, setting option for enable_disambiguation_alternatives: %{BOOL}i", v5, v6, v7, v8);
}

- (void)_ospreyTextToSpeechTranslationRequestWithText:()OspreyRequest .cold.2(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_0_15(&dword_232E53000, v3, v4, "Disambiguation: Creating online FTMutableTranslationRequest as part of text-based speech translation request, setting  option enable_disambiguation_alternatives: %{BOOL}i", v5, v6, v7, v8);
}

@end