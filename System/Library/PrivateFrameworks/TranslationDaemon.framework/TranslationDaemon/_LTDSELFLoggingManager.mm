@interface _LTDSELFLoggingManager
+ (void)initialize;
- (_LTDSELFLoggingManager)init;
- (id)sendFrameworkRequestWithInvocationId:(id)id qssSessionId:(id)sessionId requestType:(int64_t)type requestRoute:(int64_t)route requestSize:(unint64_t)size;
- (void)_invocationStartTier1WithInvocationId:(id)id linkId:(id)linkId appBundleId:(id)bundleId;
- (void)invocationAppBackgroundedWithInvocationId:(id)id payload:(id)payload localePair:(id)pair;
- (void)invocationCancelWithInvocationId:(id)id reason:(id)reason qssSessionId:(id)sessionId;
- (void)invocationEndSuccessfullyWithInvocationId:(id)id qssSessionId:(id)sessionId localePair:(id)pair;
- (void)invocationEndWithInvocationId:(id)id error:(id)error qssSessionId:(id)sessionId localePair:(id)pair;
- (void)invocationLanguageIdentificationCompletedWithInputSource:(id)source inputSource:(int64_t)inputSource topLocale:(id)locale lowConfidenceLocales:(id)locales;
- (void)invocationStartWithInvocationId:(id)id task:(int64_t)task inputMode:(int64_t)mode invocationType:(int64_t)type translateAppContext:(id)context;
- (void)invocationTranslationTTSPlayedWithInvocationId:(id)id sourceOrTargetLanguage:(int64_t)language isAutoplayTranslation:(BOOL)translation ttsPlaybackSpeed:(int64_t)speed audioChannel:(int64_t)channel;
- (void)invocationUserEndedTypingEndedReasonTimeoutWithInvocationId:(id)id payload:(id)payload localePair:(id)pair;
- (void)invocationUserEndedTypingReasonNextButtonPressedWithInvocationId:(id)id payload:(id)payload localePair:(id)pair;
- (void)invocationUserEndedTypingReasonTextBoxDismissedWithInvocationId:(id)id payload:(id)payload localePair:(id)pair;
- (void)selfLoggingEventWithData:(id)data;
- (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)data;
- (void)sendSpeechTranslationFrameworkRequestSentWithInvocationId:(id)id qssSessionId:(id)sessionId requestRoute:(int64_t)route payloadSizeInBytes:(unint64_t)bytes;
@end

@implementation _LTDSELFLoggingManager

+ (void)initialize
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v6[0] = objc_opt_class();
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    v5 = _endpoints;
    _endpoints = v4;
  }
}

- (_LTDSELFLoggingManager)init
{
  v10.receiver = self;
  v10.super_class = _LTDSELFLoggingManager;
  v2 = [(_LTDSELFLoggingManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(_LTDSELFLoggingSessionIdProvider);
    sessionIdProvider = v2->_sessionIdProvider;
    v2->_sessionIdProvider = v3;

    v7 = _LTOSLogSELFLogging(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_LTDSELFLoggingManager init];
    }

    v8 = v2;
  }

  return v2;
}

- (void)selfLoggingEventWithData:(id)data
{
  dataCopy = data;
  invocationId = [dataCopy invocationId];

  if (invocationId)
  {
    v8 = objc_alloc(MEMORY[0x277D5AC78]);
    invocationId2 = [dataCopy invocationId];
    v10 = [v8 initWithNSUUID:invocationId2];

    qssSessionId = [dataCopy qssSessionId];

    if (qssSessionId)
    {
      v12 = objc_alloc(MEMORY[0x277D5AC78]);
      qssSessionId2 = [dataCopy qssSessionId];
      qssSessionId = [v12 initWithNSUUID:qssSessionId2];
    }

    translationLocalePair = [dataCopy translationLocalePair];
    type = [dataCopy type];
    if (type > 5)
    {
      if (type <= 7)
      {
        if (type == 6)
        {
          translationPayload = [dataCopy translationPayload];
          translationLocalePair2 = [dataCopy translationLocalePair];
          [(_LTDSELFLoggingManager *)self invocationUserEndedTypingReasonNextButtonPressedWithInvocationId:v10 payload:translationPayload localePair:translationLocalePair2];
        }

        else
        {
          translationPayload = [dataCopy translationPayload];
          translationLocalePair2 = [dataCopy translationLocalePair];
          [(_LTDSELFLoggingManager *)self invocationUserEndedTypingEndedReasonTimeoutWithInvocationId:v10 payload:translationPayload localePair:translationLocalePair2];
        }

        goto LABEL_33;
      }

      if (type == 8)
      {
        translationPayload = [dataCopy translationPayload];
        translationLocalePair2 = [dataCopy translationLocalePair];
        [(_LTDSELFLoggingManager *)self invocationAppBackgroundedWithInvocationId:v10 payload:translationPayload localePair:translationLocalePair2];
        goto LABEL_33;
      }

      if (type != 9)
      {
        if (type == 10)
        {
          v19 = objc_alloc(MEMORY[0x277D5AC78]);
          uUID = [MEMORY[0x277CCAD78] UUID];
          translationPayload = [v19 initWithNSUUID:uUID];

          trustedClientIdentifier = [dataCopy trustedClientIdentifier];
          v22 = trustedClientIdentifier;
          if (trustedClientIdentifier)
          {
            untrustedClientIdentifier = trustedClientIdentifier;
          }

          else
          {
            untrustedClientIdentifier = [dataCopy untrustedClientIdentifier];
          }

          translationLocalePair2 = untrustedClientIdentifier;

          if (arc4random_uniform(0xAu))
          {

            translationLocalePair2 = @"redacted-3rd-party-bundle-id";
          }

          [(_LTDSELFLoggingManager *)self _invocationStartTier1WithInvocationId:v10 linkId:translationPayload appBundleId:translationLocalePair2];
          goto LABEL_33;
        }

LABEL_35:

        goto LABEL_36;
      }

      translationTTSData = [dataCopy translationTTSData];
      sourceOrTargetLanguage = [translationTTSData sourceOrTargetLanguage];
      translationTTSData2 = [dataCopy translationTTSData];
      isAutoplayTranslation = [translationTTSData2 isAutoplayTranslation];
      translationTTSData3 = [dataCopy translationTTSData];
      playbackSpeed = [translationTTSData3 playbackSpeed];
      translationTTSData4 = [dataCopy translationTTSData];
      -[_LTDSELFLoggingManager invocationTranslationTTSPlayedWithInvocationId:sourceOrTargetLanguage:isAutoplayTranslation:ttsPlaybackSpeed:audioChannel:](self, "invocationTranslationTTSPlayedWithInvocationId:sourceOrTargetLanguage:isAutoplayTranslation:ttsPlaybackSpeed:audioChannel:", v10, sourceOrTargetLanguage, isAutoplayTranslation, playbackSpeed, [translationTTSData4 audioChannel]);
    }

    else
    {
      if (type > 2)
      {
        if (type == 3)
        {
          translationPayload = [dataCopy invocationEndedError];
          [(_LTDSELFLoggingManager *)self invocationEndWithInvocationId:v10 error:translationPayload qssSessionId:qssSessionId localePair:translationLocalePair];
        }

        else
        {
          if (type != 4)
          {
            translationPayload = [dataCopy translationPayload];
            translationLocalePair2 = [dataCopy translationLocalePair];
            [(_LTDSELFLoggingManager *)self invocationUserEndedTypingReasonTextBoxDismissedWithInvocationId:v10 payload:translationPayload localePair:translationLocalePair2];
LABEL_33:

            goto LABEL_34;
          }

          translationPayload = [dataCopy invocationCancelledReason];
          [(_LTDSELFLoggingManager *)self invocationCancelWithInvocationId:v10 reason:translationPayload qssSessionId:qssSessionId];
        }

LABEL_34:

        goto LABEL_35;
      }

      if (type != 1)
      {
        if (type == 2)
        {
          [(_LTDSELFLoggingManager *)self invocationEndSuccessfullyWithInvocationId:v10 qssSessionId:qssSessionId localePair:translationLocalePair];
        }

        goto LABEL_35;
      }

      translationTTSData = [dataCopy startInvocationOptions];
      task = [translationTTSData task];
      translationTTSData2 = [dataCopy startInvocationOptions];
      inputMode = [translationTTSData2 inputMode];
      translationTTSData3 = [dataCopy startInvocationOptions];
      invocationType = [translationTTSData3 invocationType];
      translationTTSData4 = [dataCopy startInvocationOptions];
      translateAppContext = [translationTTSData4 translateAppContext];
      [(_LTDSELFLoggingManager *)self invocationStartWithInvocationId:v10 task:task inputMode:inputMode invocationType:invocationType translateAppContext:translateAppContext];
    }

    goto LABEL_35;
  }

  v18 = _LTOSLogSELFLogging(v6, v7);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager selfLoggingEventWithData:];
  }

LABEL_36:
}

- (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)data
{
  v4 = MEMORY[0x277D5AC78];
  dataCopy = data;
  v6 = [v4 alloc];
  invocationId = [dataCopy invocationId];
  v12 = [v6 initWithNSUUID:invocationId];

  lowConfidenceLocales = [dataCopy lowConfidenceLocales];
  v9 = [lowConfidenceLocales _ltCompactMap:&__block_literal_global_16];

  inputSource = [dataCopy inputSource];
  topLocale = [dataCopy topLocale];

  [(_LTDSELFLoggingManager *)self invocationLanguageIdentificationCompletedWithInputSource:v12 inputSource:inputSource topLocale:topLocale lowConfidenceLocales:v9];
}

- (void)invocationStartWithInvocationId:(id)id task:(int64_t)task inputMode:(int64_t)mode invocationType:(int64_t)type translateAppContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  idCopy = id;
  contextCopy = context;
  v12 = _LTOSLogSELFLogging(contextCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager invocationStartWithInvocationId:v12 task:idCopy inputMode:type invocationType:? translateAppContext:?];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = _endpoints;
  v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v25 + 1) + 8 * v16);
        lt_appGroupDefaults = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
        lt_isOnDeviceOnly = [lt_appGroupDefaults lt_isOnDeviceOnly];
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v17 startWithTask:task inputMode:mode invocationType:type interfaceMode:0 explicitLanguageFilterEnabled:0 onDevice:lt_isOnDeviceOnly mtId:idCopy sessionId:sessionId translateAppContext:contextCopy];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }
}

- (void)_invocationStartTier1WithInvocationId:(id)id linkId:(id)linkId appBundleId:(id)bundleId
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  linkIdCopy = linkId;
  bundleIdCopy = bundleId;
  v12 = _LTOSLogSELFLogging(bundleIdCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager _invocationStartTier1WithInvocationId:v12 linkId:idCopy appBundleId:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = _endpoints;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v18 startTier1WithLinkId:linkIdCopy appBundleId:bundleIdCopy mtId:idCopy sessionId:sessionId];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }
}

- (void)invocationEndSuccessfullyWithInvocationId:(id)id qssSessionId:(id)sessionId localePair:(id)pair
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  sessionIdCopy = sessionId;
  pairCopy = pair;
  v12 = _LTOSLogSELFLogging(pairCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager invocationEndSuccessfullyWithInvocationId:v12 qssSessionId:idCopy localePair:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = _endpoints;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v18 endSuccessfullyWithExists:1 localePair:pairCopy qssSessionId:sessionIdCopy mtId:idCopy sessionId:sessionId];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }
}

- (void)invocationEndWithInvocationId:(id)id error:(id)error qssSessionId:(id)sessionId localePair:(id)pair
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  errorCopy = error;
  sessionIdCopy = sessionId;
  pairCopy = pair;
  v15 = _LTOSLogSELFLogging(pairCopy, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager invocationEndWithInvocationId:errorCopy error:v15 qssSessionId:idCopy localePair:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = _endpoints;
  v16 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v23 + 1) + 8 * v19);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v20 endWithError:errorCopy localePair:pairCopy qssSessionId:sessionIdCopy mtId:idCopy sessionId:sessionId];

        ++v19;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }
}

- (void)invocationCancelWithInvocationId:(id)id reason:(id)reason qssSessionId:(id)sessionId
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  reasonCopy = reason;
  sessionIdCopy = sessionId;
  v12 = _LTOSLogSELFLogging(sessionIdCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager invocationCancelWithInvocationId:reasonCopy reason:v12 qssSessionId:idCopy];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = _endpoints;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v18 cancelWithExists:1 reason:reasonCopy qssSessionId:sessionIdCopy mtId:idCopy sessionId:sessionId];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }
}

- (void)invocationUserEndedTypingReasonTextBoxDismissedWithInvocationId:(id)id payload:(id)payload localePair:(id)pair
{
  v27 = *MEMORY[0x277D85DE8];
  idCopy = id;
  payloadCopy = payload;
  pairCopy = pair;
  lt_appGroupDefaults = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v21 = payloadCopy;
  if ([lt_appGroupDefaults lt_isOnDeviceOnly])
  {
    v12 = 0;
  }

  else
  {
    v12 = payloadCopy;
  }

  v13 = v12;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = _endpoints;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 userDismissedTextBoxWithPayload:v13 localePair:pairCopy mtId:idCopy sessionId:sessionId];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }
}

- (void)invocationUserEndedTypingReasonNextButtonPressedWithInvocationId:(id)id payload:(id)payload localePair:(id)pair
{
  v27 = *MEMORY[0x277D85DE8];
  idCopy = id;
  payloadCopy = payload;
  pairCopy = pair;
  lt_appGroupDefaults = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v21 = payloadCopy;
  if ([lt_appGroupDefaults lt_isOnDeviceOnly])
  {
    v12 = 0;
  }

  else
  {
    v12 = payloadCopy;
  }

  v13 = v12;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = _endpoints;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 userPressedNextButtonWithPayload:v13 localePair:pairCopy mtId:idCopy sessionId:sessionId];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }
}

- (void)invocationUserEndedTypingEndedReasonTimeoutWithInvocationId:(id)id payload:(id)payload localePair:(id)pair
{
  v27 = *MEMORY[0x277D85DE8];
  idCopy = id;
  payloadCopy = payload;
  pairCopy = pair;
  lt_appGroupDefaults = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v21 = payloadCopy;
  if ([lt_appGroupDefaults lt_isOnDeviceOnly])
  {
    v12 = 0;
  }

  else
  {
    v12 = payloadCopy;
  }

  v13 = v12;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = _endpoints;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 userTimeoutWithPayload:v13 localePair:pairCopy mtId:idCopy sessionId:sessionId];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }
}

- (void)invocationAppBackgroundedWithInvocationId:(id)id payload:(id)payload localePair:(id)pair
{
  v27 = *MEMORY[0x277D85DE8];
  idCopy = id;
  payloadCopy = payload;
  pairCopy = pair;
  lt_appGroupDefaults = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v21 = payloadCopy;
  if ([lt_appGroupDefaults lt_isOnDeviceOnly])
  {
    v12 = 0;
  }

  else
  {
    v12 = payloadCopy;
  }

  v13 = v12;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = _endpoints;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 appBackgroundedWithPayload:v13 localePair:pairCopy mtId:idCopy sessionId:sessionId];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }
}

- (void)invocationTranslationTTSPlayedWithInvocationId:(id)id sourceOrTargetLanguage:(int64_t)language isAutoplayTranslation:(BOOL)translation ttsPlaybackSpeed:(int64_t)speed audioChannel:(int64_t)channel
{
  translationCopy = translation;
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = _endpoints;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
          [v15 translationTTSPlayed:language isAutoplayTranslation:translationCopy ttsPlaybackSpeed:speed audioChannel:channel mtId:idCopy sessionId:sessionId];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)invocationLanguageIdentificationCompletedWithInputSource:(id)source inputSource:(int64_t)inputSource topLocale:(id)locale lowConfidenceLocales:(id)locales
{
  v25 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  localeCopy = locale;
  localesCopy = locales;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = _endpoints;
  v13 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v17 languageIdentificationCompletedWithInputSource:inputSource topLocale:localeCopy lowConfidenceLocales:localesCopy mtId:sourceCopy sessionId:sessionId];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }
}

- (id)sendFrameworkRequestWithInvocationId:(id)id qssSessionId:(id)sessionId requestType:(int64_t)type requestRoute:(int64_t)route requestSize:(unint64_t)size
{
  idCopy = id;
  sessionIdCopy = sessionId;
  v15 = sessionIdCopy;
  if (idCopy)
  {
    v16 = [_LTDSELFLoggingFrameworkRequest alloc];
    v17 = [(_LTDSELFLoggingFrameworkRequest *)v16 initWithInvocationId:idCopy endpoints:_endpoints sessionIdProvider:self->_sessionIdProvider qssSessionId:v15 requestType:type requestRoute:route requestSize:size];
  }

  else
  {
    v18 = _LTOSLogSELFLogging(sessionIdCopy, v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [_LTDSELFLoggingManager sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:];
    }

    v17 = 0;
  }

  return v17;
}

- (void)sendSpeechTranslationFrameworkRequestSentWithInvocationId:(id)id qssSessionId:(id)sessionId requestRoute:(int64_t)route payloadSizeInBytes:(unint64_t)bytes
{
  v29 = *MEMORY[0x277D85DE8];
  idCopy = id;
  sessionIdCopy = sessionId;
  v13 = sessionIdCopy;
  v23 = idCopy;
  if (idCopy)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = _endpoints;
    v14 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:v23];
          sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
          [v18 frameworkRequestSentWithFrameworkRequestId:0 qssSessionId:v13 requestType:2 requestRoute:route requestSize:bytes mtId:v19 sessionId:sessionId];
        }

        v15 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v21 = _LTOSLogSELFLogging(sessionIdCopy, v12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [_LTDSELFLoggingManager sendSpeechTranslationFrameworkRequestSentWithInvocationId:qssSessionId:requestRoute:payloadSizeInBytes:];
    }
  }
}

- (void)invocationStartWithInvocationId:(uint64_t)a3 task:inputMode:invocationType:translateAppContext:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 formattedText];
  LODWORD(v13) = 134218242;
  *(&v13 + 4) = a3;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_9(&dword_232E53000, v7, v8, "Invocation start with type: %ld and invocationId %{public}@", v9, v10, v11, v12, v13, DWORD2(v13));
}

- (void)_invocationStartTier1WithInvocationId:(void *)a1 linkId:(void *)a2 appBundleId:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 formattedText];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v5, v6, "Invocation start tier 1 with invocationId: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

- (void)invocationEndSuccessfullyWithInvocationId:(void *)a1 qssSessionId:(void *)a2 localePair:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 formattedText];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v5, v6, "Invocation end successfully for invocationId %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

- (void)invocationEndWithInvocationId:(void *)a3 error:qssSessionId:localePair:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 formattedText];
  LODWORD(v13) = 138412546;
  *(&v13 + 4) = a1;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_9(&dword_232E53000, v7, v8, "Invocation end with error (%@) for invocationId %{public}@", v9, v10, v11, v12, v13, DWORD2(v13));
}

- (void)invocationCancelWithInvocationId:(uint64_t)a1 reason:(void *)a2 qssSessionId:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 formattedText];
  LODWORD(v13) = 138412546;
  *(&v13 + 4) = a1;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_9(&dword_232E53000, v7, v8, "Invocation cancelled with reason (%@) for invocationId %{public}@", v9, v10, v11, v12, v13, DWORD2(v13));
}

@end