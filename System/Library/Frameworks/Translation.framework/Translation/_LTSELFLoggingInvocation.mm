@interface _LTSELFLoggingInvocation
+ (void)translationTTSPlayedWithInvocationId:(id)id sourceOrTargetLanguage:(int64_t)language isAutoplayTranslation:(BOOL)translation ttsPlaybackSpeed:(int64_t)speed audioChannel:(int64_t)channel;
+ (void)userEndedTypingWithInvocationId:(id)id payload:(id)payload localePair:(id)pair reason:(int64_t)reason;
- (_LTSELFLoggingInvocation)initWithInvocationId:(id)id;
- (void)cancelWithReason:(id)reason localePair:(id)pair qssSessionId:(id)id;
- (void)endSuccessfullyWithQSSSessionId:(id)id localePair:(id)pair;
- (void)endWithError:(id)error localePair:(id)pair qssSessionId:(id)id;
- (void)languageIdentificationCompletedWithInputSource:(int64_t)source topLocale:(id)locale lowConfidenceLocales:(id)locales;
- (void)sendEventWithPayload:(id)payload localePair:(id)pair type:(int64_t)type;
- (void)sendUserEndedTypingEventWithPayload:(id)payload localePair:(id)pair type:(int64_t)type;
- (void)startedWithClientIdentifier:(id)identifier;
- (void)userEndedTypingWithPayload:(id)payload localePair:(id)pair reason:(int64_t)reason;
@end

@implementation _LTSELFLoggingInvocation

- (_LTSELFLoggingInvocation)initWithInvocationId:(id)id
{
  idCopy = id;
  v10.receiver = self;
  v10.super_class = _LTSELFLoggingInvocation;
  v6 = [(_LTSELFLoggingInvocation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_endSent = 0;
    objc_storeStrong(&v6->_invocationId, id);
    v8 = v7;
  }

  return v7;
}

- (void)endSuccessfullyWithQSSSessionId:(id)id localePair:(id)pair
{
  idCopy = id;
  pairCopy = pair;
  v9 = pairCopy;
  if (self->_endSent)
  {
    v10 = _LTOSLogSELFLogging(pairCopy, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [_LTSELFLoggingInvocation endSuccessfullyWithQSSSessionId:localePair:];
    }
  }

  else
  {
    v11 = [[_LTSELFLoggingEventData alloc] initWithType:2 invocationId:self->_invocationId];
    [(_LTSELFLoggingEventData *)v11 setQssSessionId:idCopy];
    [(_LTSELFLoggingEventData *)v11 setTranslationLocalePair:v9];
    [_LTTranslator selfLoggingEventWithData:v11];
    self->_endSent = 1;
  }
}

- (void)endWithError:(id)error localePair:(id)pair qssSessionId:(id)id
{
  errorCopy = error;
  pairCopy = pair;
  idCopy = id;
  v12 = idCopy;
  if (self->_endSent)
  {
    v13 = _LTOSLogSELFLogging(idCopy, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_LTSELFLoggingInvocation endWithError:localePair:qssSessionId:];
    }
  }

  else
  {
    v14 = [[_LTSELFLoggingEventData alloc] initWithType:3 invocationId:self->_invocationId];
    [(_LTSELFLoggingEventData *)v14 setQssSessionId:v12];
    [(_LTSELFLoggingEventData *)v14 setInvocationEndedError:errorCopy];
    [(_LTSELFLoggingEventData *)v14 setTranslationLocalePair:pairCopy];
    [_LTTranslator selfLoggingEventWithData:v14];
    self->_endSent = 1;
  }
}

- (void)cancelWithReason:(id)reason localePair:(id)pair qssSessionId:(id)id
{
  reasonCopy = reason;
  pairCopy = pair;
  idCopy = id;
  v12 = idCopy;
  if (self->_endSent)
  {
    v13 = _LTOSLogSELFLogging(idCopy, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_LTSELFLoggingInvocation cancelWithReason:localePair:qssSessionId:];
    }
  }

  else
  {
    v14 = [[_LTSELFLoggingEventData alloc] initWithType:4 invocationId:self->_invocationId];
    [(_LTSELFLoggingEventData *)v14 setQssSessionId:v12];
    [(_LTSELFLoggingEventData *)v14 setInvocationCancelledReason:reasonCopy];
    [(_LTSELFLoggingEventData *)v14 setTranslationLocalePair:pairCopy];
    [_LTTranslator selfLoggingEventWithData:v14];
    self->_endSent = 1;
  }
}

- (void)userEndedTypingWithPayload:(id)payload localePair:(id)pair reason:(int64_t)reason
{
  if (reason >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = reason + 5;
  }

  [(_LTSELFLoggingInvocation *)self sendUserEndedTypingEventWithPayload:payload localePair:pair type:v5];
}

+ (void)translationTTSPlayedWithInvocationId:(id)id sourceOrTargetLanguage:(int64_t)language isAutoplayTranslation:(BOOL)translation ttsPlaybackSpeed:(int64_t)speed audioChannel:(int64_t)channel
{
  translationCopy = translation;
  idCopy = id;
  v13 = [[_LTSELFLoggingEventData alloc] initWithType:9 invocationId:idCopy];

  v12 = [[_LTSELFLoggingTranslationTTSData alloc] initWithSourceOrTargetLanguage:language isAutoplayTranslation:translationCopy ttsPlaybackSpeed:speed audioChannel:channel];
  [(_LTSELFLoggingEventData *)v13 setTranslationTTSData:v12];
  [_LTTranslator selfLoggingEventWithData:v13];
}

- (void)languageIdentificationCompletedWithInputSource:(int64_t)source topLocale:(id)locale lowConfidenceLocales:(id)locales
{
  localesCopy = locales;
  localeCopy = locale;
  v10 = [[_LTSELFLoggingTranslationLIDData alloc] initWithInvocationId:self->_invocationId inputSource:source topLocale:localeCopy lowConfidenceLocales:localesCopy];

  [_LTTranslator selfLoggingLanguageIdentificationCompletedWithLIDData:v10];
}

- (void)sendEventWithPayload:(id)payload localePair:(id)pair type:(int64_t)type
{
  pairCopy = pair;
  payloadCopy = payload;
  v10 = [[_LTSELFLoggingEventData alloc] initWithType:type invocationId:self->_invocationId];
  [(_LTSELFLoggingEventData *)v10 setTranslationPayload:payloadCopy];

  [(_LTSELFLoggingEventData *)v10 setTranslationLocalePair:pairCopy];
  [_LTTranslator selfLoggingEventWithData:v10];
}

- (void)sendUserEndedTypingEventWithPayload:(id)payload localePair:(id)pair type:(int64_t)type
{
  if (self->_endSent)
  {
    v6 = _LTOSLogSELFLogging(self, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_LTSELFLoggingInvocation sendUserEndedTypingEventWithPayload:localePair:type:];
    }
  }

  else
  {
    [(_LTSELFLoggingInvocation *)self sendEventWithPayload:payload localePair:pair type:type];
    self->_endSent = 1;
  }
}

+ (void)userEndedTypingWithInvocationId:(id)id payload:(id)payload localePair:(id)pair reason:(int64_t)reason
{
  pairCopy = pair;
  payloadCopy = payload;
  idCopy = id;
  v12 = [_LTSELFLoggingEventData alloc];
  if (reason >= 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = reason + 5;
  }

  v14 = [(_LTSELFLoggingEventData *)v12 initWithType:v13 invocationId:idCopy];

  [(_LTSELFLoggingEventData *)v14 setTranslationPayload:payloadCopy];
  [(_LTSELFLoggingEventData *)v14 setTranslationLocalePair:pairCopy];

  [_LTTranslator selfLoggingEventWithData:v14];
}

- (void)startedWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [_LTSELFLoggingEventData alloc];
  invocationId = [(_LTSELFLoggingInvocation *)self invocationId];
  v7 = [(_LTSELFLoggingEventData *)v5 initWithType:10 invocationId:invocationId];

  [(_LTSELFLoggingEventData *)v7 setUntrustedClientIdentifier:identifierCopy];
  [_LTTranslator selfLoggingEventWithData:v7];
}

- (void)endSuccessfullyWithQSSSessionId:localePair:.cold.1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_23AAF5000, v0, v1, "Invocation [%{public}@] has ended already, so ignoring successful end of event with QSS Session ID of %{public}@");
}

- (void)endWithError:localePair:qssSessionId:.cold.1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_23AAF5000, v0, v1, "Invocation [%{public}@] has ended already so ignoring end with error of event with QSS Session ID of %{public}@");
}

- (void)cancelWithReason:localePair:qssSessionId:.cold.1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_23AAF5000, v0, v1, "Invocation [%{public}@] has ended already so ignoring cancel with reason of event with QSS Session ID of %{public}@");
}

- (void)sendUserEndedTypingEventWithPayload:localePair:type:.cold.1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  v2 = 138543362;
  v3 = v0;
  _os_log_debug_impl(&dword_23AAF5000, v1, OS_LOG_TYPE_DEBUG, "Invocation [%{public}@] has ended already, so ignoring successful end with user ending typing", &v2, 0xCu);
}

@end