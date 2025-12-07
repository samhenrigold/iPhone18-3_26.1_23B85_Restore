@interface AFAggregator
+ (id)_fullAggDKeyWithPrefix:(id)prefix error:(id)error;
+ (id)_stringForGatekeeperType:(unint64_t)type;
+ (void)logCDMAssetEvictedForAssetType:(id)type language:(id)language;
+ (void)logCreateAssistant;
+ (void)logDESEvaluationForLanguage:(id)language error:(id)error;
+ (void)logDESRecordingForLanguage:(id)language error:(id)error;
+ (void)logDictationCancelled;
+ (void)logDictationFailedWithError:(id)error;
+ (void)logDictationFollowedByContinueOccurredForLanguage:(id)language;
+ (void)logDictationFollowedByKeyboardDeleteOccurredForLanguage:(id)language;
+ (void)logDictationFollowedByKeyboardInputOccurredForLanguage:(id)language;
+ (void)logDictationStarted;
+ (void)logDictationSucceeded;
+ (void)logEnabledState:(unint64_t)state;
+ (void)logKeyboardInputFollowedByContinueOccurredForLanguage:(id)language;
+ (void)logLoadAssistant;
+ (void)logLocalRecognitionAssetEvictedForLanguage:(id)language;
+ (void)logLocalRecognitionLoadedForLanguage:(id)language duration:(double)duration;
+ (void)logLocalRecognitionLostForLanguage:(id)language;
+ (void)logLocalRecognitionWonForLanguage:(id)language;
+ (void)logRequestCancelAfterSeconds:(double)seconds;
+ (void)logRequestCompletedWithDuration:(double)duration;
+ (void)logRequestLaunchedApp;
+ (void)logSiriInvokedVia:(int64_t)via;
+ (void)logSiriMediaVolumeAction:(int64_t)action;
+ (void)logSiriOtherRequestStarted;
+ (void)logSiriQuickStopAction:(unint64_t)action;
+ (void)logSiriRequestCancelled;
+ (void)logSiriRequestFailedWithError:(id)error;
+ (void)logSiriRequestSucceeded;
+ (void)logSiriSpeechRequestStarted;
+ (void)logStarkGatekeeperAppearedForType:(unint64_t)type;
+ (void)logStarkGatekeeperDismissedManuallyForType:(unint64_t)type;
+ (void)logUILockCanceledVTActivation;
- (void)connectionDidDrop;
- (void)connectionDidFail;
- (void)recordFailure:(int)failure forConnectionType:(unint64_t)type;
- (void)recordSessionRetrySuccess;
- (void)recordSuccessForConnectionType:(unint64_t)type isWarm:(BOOL)warm forTimeInterval:(double)interval;
- (void)speechResponseReceived;
@end

@implementation AFAggregator

+ (void)logSiriOtherRequestStarted
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[AFAggregator logSiriOtherRequestStarted]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v3, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.SiriStarted.Other", 1);
}

+ (void)logSiriRequestSucceeded
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[AFAggregator logSiriRequestSucceeded]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v3, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.SiriSucceeded", 1);
}

+ (void)logSiriSpeechRequestStarted
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[AFAggregator logSiriSpeechRequestStarted]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v3, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.SiriStarted.Speech", 1);
}

+ (void)logLoadAssistant
{
  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.LoadAssistant", 1);

  AnalyticsSendEvent();
}

+ (void)logCDMAssetEvictedForAssetType:(id)type language:(id)language
{
  v15 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  languageCopy = language;
  v7 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "+[AFAggregator logCDMAssetEvictedForAssetType:language:]";
    v11 = 2112;
    v12 = typeCopy;
    v13 = 2112;
    v14 = languageCopy;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  languageCopy = [@"com.apple.siri.CDMAssetEvicted." stringByAppendingFormat:@"%@-%@", typeCopy, languageCopy];
  _AFAggregatorClientAddValueForScalarKey(languageCopy, 1);
}

+ (void)logDESEvaluationForLanguage:(id)language error:(id)error
{
  errorCopy = error;
  if (language)
  {
    v8 = errorCopy;
    v6 = [@"com.apple.siri.DESEvaluation." stringByAppendingString:language];
    if (v8)
    {
      v7 = [v6 stringByAppendingFormat:@".%ld", objc_msgSend(v8, "code")];

      v6 = v7;
    }

    _AFAggregatorClientAddValueForScalarKey(v6, 1);

    errorCopy = v8;
  }
}

+ (void)logDESRecordingForLanguage:(id)language error:(id)error
{
  errorCopy = error;
  if (language)
  {
    v8 = errorCopy;
    v6 = [@"com.apple.siri.DESRecording." stringByAppendingString:language];
    if (v8)
    {
      v7 = [v6 stringByAppendingFormat:@".%ld", objc_msgSend(v8, "code")];

      v6 = v7;
    }

    _AFAggregatorClientAddValueForScalarKey(v6, 1);

    errorCopy = v8;
  }
}

+ (void)logLocalRecognitionLostForLanguage:(id)language
{
  if (language)
  {
    v3 = [@"com.apple.siri.LocalRecognitionLost." stringByAppendingString:?];
    _AFAggregatorClientAddValueForScalarKey(v3, 1);
  }
}

+ (void)logLocalRecognitionWonForLanguage:(id)language
{
  if (language)
  {
    v3 = [@"com.apple.siri.LocalRecognitionWon." stringByAppendingString:?];
    _AFAggregatorClientAddValueForScalarKey(v3, 1);
  }
}

+ (void)logLocalRecognitionLoadedForLanguage:(id)language duration:(double)duration
{
  if (language)
  {
    v5 = [@"com.apple.siri.LocalRecognitionLoaded." stringByAppendingString:?];
    _AFAggregatorClientPushValueForDistributionKey(v5, duration);
  }
}

+ (void)logLocalRecognitionAssetEvictedForLanguage:(id)language
{
  v10 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "+[AFAggregator logLocalRecognitionAssetEvictedForLanguage:]";
    v8 = 2112;
    v9 = languageCopy;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@", &v6, 0x16u);
  }

  v5 = [@"com.apple.siri.LocalRecognitionAssetEvicted." stringByAppendingString:languageCopy];
  _AFAggregatorClientAddValueForScalarKey(v5, 1);
}

+ (void)logEnabledState:(unint64_t)state
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "+[AFAggregator logEnabledState:]";
    v12 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %tu", buf, 0x16u);
  }

  if ((state & 2) != 0)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v8[0] = @"com.apple.message.siri.enabled";
  v8[1] = @"com.apple.message.dictation.enabled";
  if ((state & 4) != 0)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v9[0] = v5;
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  AnalyticsSendEvent();
}

+ (void)logCreateAssistant
{
  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.CreateAssistant", 1);

  AnalyticsSendEvent();
}

+ (void)logUILockCanceledVTActivation
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "+[AFAggregator logUILockCanceledVTActivation]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s ", &v3, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.VTActivationCancel.UILocked", 1);
}

+ (void)logKeyboardInputFollowedByContinueOccurredForLanguage:(id)language
{
  v11 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "+[AFAggregator logKeyboardInputFollowedByContinueOccurredForLanguage:]";
    v9 = 2112;
    v10 = languageCopy;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  if (languageCopy)
  {
    v5 = languageCopy;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = [@"com.apple.siri.KeyboardEntryFollowedByContinue." stringByAppendingString:v5];
  _AFAggregatorClientAddValueForScalarKey(v6, 1);
}

+ (void)logDictationFollowedByKeyboardDeleteOccurredForLanguage:(id)language
{
  v11 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "+[AFAggregator logDictationFollowedByKeyboardDeleteOccurredForLanguage:]";
    v9 = 2112;
    v10 = languageCopy;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  if (languageCopy)
  {
    v5 = languageCopy;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = [@"com.apple.siri.DictationFollowedByKeyboardDelete." stringByAppendingString:v5];
  _AFAggregatorClientAddValueForScalarKey(v6, 1);
}

+ (void)logDictationFollowedByKeyboardInputOccurredForLanguage:(id)language
{
  v11 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "+[AFAggregator logDictationFollowedByKeyboardInputOccurredForLanguage:]";
    v9 = 2112;
    v10 = languageCopy;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  if (languageCopy)
  {
    v5 = languageCopy;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = [@"com.apple.siri.DictationFollowedByKeyboardEntry." stringByAppendingString:v5];
  _AFAggregatorClientAddValueForScalarKey(v6, 1);
}

+ (void)logDictationFollowedByContinueOccurredForLanguage:(id)language
{
  v11 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "+[AFAggregator logDictationFollowedByContinueOccurredForLanguage:]";
    v9 = 2112;
    v10 = languageCopy;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  if (languageCopy)
  {
    v5 = languageCopy;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = [@"com.apple.siri.DictationFollowedByContinue." stringByAppendingString:v5];
  _AFAggregatorClientAddValueForScalarKey(v6, 1);
}

+ (void)logDictationCancelled
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[AFAggregator logDictationCancelled]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v3, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.DictationCancelled", 1);
}

+ (void)logDictationSucceeded
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[AFAggregator logDictationSucceeded]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v3, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.DictationSucceeded", 1);
}

+ (void)logDictationFailedWithError:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "+[AFAggregator logDictationFailedWithError:]";
    v9 = 2114;
    v10 = errorCopy;
    _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s %{public}@", &v7, 0x16u);
  }

  v6 = [self _fullAggDKeyWithPrefix:@"com.apple.siri.DictationFailed." error:errorCopy];
  _AFAggregatorClientAddValueForScalarKey(v6, 1);
}

+ (void)logDictationStarted
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[AFAggregator logDictationStarted]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v3, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.DictationStarted", 1);
}

+ (void)logSiriRequestCancelled
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[AFAggregator logSiriRequestCancelled]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v3, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.SiriCancelled", 1);
}

+ (void)logSiriRequestFailedWithError:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "+[AFAggregator logSiriRequestFailedWithError:]";
    v9 = 2114;
    v10 = errorCopy;
    _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s %{public}@", &v7, 0x16u);
  }

  v6 = [self _fullAggDKeyWithPrefix:@"com.apple.siri.SiriFailed." error:errorCopy];
  _AFAggregatorClientAddValueForScalarKey(v6, 1);
}

+ (void)logRequestLaunchedApp
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[AFAggregator logRequestLaunchedApp]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v3, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.SiriSucceeded", 1);
  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.SiriCancelled", -1);
}

+ (id)_fullAggDKeyWithPrefix:(id)prefix error:(id)error
{
  prefixCopy = prefix;
  errorCopy = error;
  v7 = prefixCopy;
  domain = [errorCopy domain];
  code = [errorCopy code];
  userInfo = [errorCopy userInfo];
  v11 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  domain2 = [errorCopy domain];
  isEqualToString = objc_msgSend_isEqualToString_(domain2);

  if (!isEqualToString)
  {
    goto LABEL_8;
  }

  if (code == 1 && v11)
  {
    v14 = [v7 stringByAppendingFormat:@"%@.%ld.", domain, 1];

    goto LABEL_6;
  }

  v14 = v7;
  if (!v11)
  {
LABEL_8:
    v14 = v7;
    if (!domain)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

LABEL_6:
  v15 = v11;

  domain3 = [v15 domain];

  code = [v15 code];
  errorCopy = v15;
  domain = domain3;
  if (!domain3)
  {
LABEL_7:
    v17 = [v14 stringByAppendingString:@"Other"];
    goto LABEL_12;
  }

LABEL_9:
  if ([domain length] >= 0x1F)
  {
    v18 = [domain substringToIndex:30];

    domain = v18;
  }

  v17 = [v14 stringByAppendingFormat:@"%@.%ld", domain, code];

  v7 = domain;
LABEL_12:

  return v17;
}

+ (void)logSiriMediaVolumeAction:(int64_t)action
{
  if ((action - 2) <= 2)
  {
    ADClientAddValueForScalarKey();
  }
}

+ (void)logSiriQuickStopAction:(unint64_t)action
{
  actionCopy = action;
  if (action)
  {
    ADClientAddValueForScalarKey();
    if ((actionCopy & 2) == 0)
    {
LABEL_3:
      if ((actionCopy & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      ADClientAddValueForScalarKey();
      if ((actionCopy & 8) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((action & 2) == 0)
  {
    goto LABEL_3;
  }

  ADClientAddValueForScalarKey();
  if ((actionCopy & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((actionCopy & 8) == 0)
  {
    return;
  }

LABEL_9:

  ADClientAddValueForScalarKey();
}

+ (void)logSiriInvokedVia:(int64_t)via
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (via == 1)
  {
    v3 = @"hardware_button";
  }

  else
  {
    if (via != 8)
    {
      return;
    }

    v3 = @"voice_trigger";
  }

  ADClientAddValueForScalarKey();
  v5 = @"via";
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  AnalyticsSendEvent();
}

+ (void)logRequestCancelAfterSeconds:(double)seconds
{
  if (seconds >= 0.0)
  {
    if (seconds >= 1.0)
    {
      if (seconds >= 2.0)
      {
        if (seconds >= 3.0)
        {
          if (seconds >= 4.0)
          {
            if (seconds >= 5.0)
            {
              if (seconds >= 6.0)
              {
                if (seconds >= 7.0)
                {
                  if (seconds >= 8.0)
                  {
                    if (seconds >= 9.0)
                    {
                      if (seconds >= 10.0)
                      {
                        if (seconds >= 11.0)
                        {
                          if (seconds >= 12.0)
                          {
                            if (seconds >= 13.0)
                            {
                              if (seconds >= 14.0)
                              {
                                if (seconds >= 15.0)
                                {
                                  if (seconds >= 20.0)
                                  {
                                    if (seconds >= 25.0)
                                    {
                                      if (seconds >= 30.0)
                                      {
                                        if (seconds >= 35.0)
                                        {
                                          if (seconds >= 40.0)
                                          {
                                            v3 = @"com.apple.siri.RequestCancel.40SecondsOrMore";
                                          }

                                          else
                                          {
                                            v3 = @"com.apple.siri.RequestCancel.40Seconds";
                                          }
                                        }

                                        else
                                        {
                                          v3 = @"com.apple.siri.RequestCancel.35Seconds";
                                        }
                                      }

                                      else
                                      {
                                        v3 = @"com.apple.siri.RequestCancel.30Seconds";
                                      }
                                    }

                                    else
                                    {
                                      v3 = @"com.apple.siri.RequestCancel.25Seconds";
                                    }
                                  }

                                  else
                                  {
                                    v3 = @"com.apple.siri.RequestCancel.20Seconds";
                                  }
                                }

                                else
                                {
                                  v3 = @"com.apple.siri.RequestCancel.15Seconds";
                                }
                              }

                              else
                              {
                                v3 = @"com.apple.siri.RequestCancel.14Seconds";
                              }
                            }

                            else
                            {
                              v3 = @"com.apple.siri.RequestCancel.13Seconds";
                            }
                          }

                          else
                          {
                            v3 = @"com.apple.siri.RequestCancel.12Seconds";
                          }
                        }

                        else
                        {
                          v3 = @"com.apple.siri.RequestCancel.11Seconds";
                        }
                      }

                      else
                      {
                        v3 = @"com.apple.siri.RequestCancel.10Seconds";
                      }
                    }

                    else
                    {
                      v3 = @"com.apple.siri.RequestCancel.9Seconds";
                    }
                  }

                  else
                  {
                    v3 = @"com.apple.siri.RequestCancel.8Seconds";
                  }
                }

                else
                {
                  v3 = @"com.apple.siri.RequestCancel.7Seconds";
                }
              }

              else
              {
                v3 = @"com.apple.siri.RequestCancel.6Seconds";
              }
            }

            else
            {
              v3 = @"com.apple.siri.RequestCancel.5Seconds";
            }
          }

          else
          {
            v3 = @"com.apple.siri.RequestCancel.4Seconds";
          }
        }

        else
        {
          v3 = @"com.apple.siri.RequestCancel.3Seconds";
        }
      }

      else
      {
        v3 = @"com.apple.siri.RequestCancel.2Seconds";
      }
    }

    else
    {
      v3 = @"com.apple.siri.RequestCancel.LessThan1";
    }

    _AFAggregatorClientAddValueForScalarKey(v3, 1);
  }
}

+ (void)logRequestCompletedWithDuration:(double)duration
{
  v9 = *MEMORY[0x1E69E9840];
  if (duration < 0.0)
  {
    duration = 0.0;
  }

  if (duration > 10.0)
  {
    duration = 10.0;
  }

  durationCopy = duration;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "+[AFAggregator logRequestCompletedWithDuration:]";
    v7 = 1024;
    v8 = durationCopy;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %d", &v5, 0x12u);
  }

  _AFAggregatorClientAddValueForScalarKey(*(&off_1E73476B0 + durationCopy), 1);
}

- (void)speechResponseReceived
{
  [(AFAggregator *)self recordSuccessForConnectionType:self->_type isWarm:speechResponseReceived_sIsWarm forTimeInterval:CFAbsoluteTimeGetCurrent() - self->_startTime];
  speechResponseReceived_sIsWarm = 1;
  if (self->_sessionIsRetrying)
  {
    [(AFAggregator *)self recordSessionRetrySuccess];
    self->_sessionIsRetrying = 0;
  }
}

- (void)connectionDidDrop
{
  if (self->_hasActiveRequest && !self->_sessionIsRetrying)
  {
    [(AFAggregator *)self recordFailure:1 forConnectionType:self->_type];
  }
}

- (void)connectionDidFail
{
  if (self->_hasActiveRequest && !self->_sessionIsRetrying)
  {
    [(AFAggregator *)self recordFailure:0 forConnectionType:self->_type];
  }
}

- (void)recordSessionRetrySuccess
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v4 = @"NO";
    if (self->_retryPrefersWWAN)
    {
      v4 = @"YES";
    }

    v5 = 136315394;
    v6 = "[AFAggregator recordSessionRetrySuccess]";
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s WWAN fallback %@", &v5, 0x16u);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.RetrySuccess", 1);
  if (self->_retryPrefersWWAN)
  {
    _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.WWAN.FallbackSuccess", 1);
  }
}

- (void)recordFailure:(int)failure forConnectionType:(unint64_t)type
{
  Mutable = CFStringCreateMutable(0, 31);
  CFStringAppendCString(Mutable, "com.apple.siri.", 0x600u);
  if (type - 1 > 8)
  {
    v7 = "Unknown.";
  }

  else
  {
    v7 = off_1E7347768[type - 1];
  }

  CFStringAppendCString(Mutable, v7, 0x600u);
  if (failure)
  {
    v8 = "Dropped";
  }

  else
  {
    v8 = "Failed";
  }

  CFStringAppendCString(Mutable, v8, 0x600u);
  _AFAggregatorClientAddValueForScalarKey(Mutable, 1);

  CFRelease(Mutable);
}

- (void)recordSuccessForConnectionType:(unint64_t)type isWarm:(BOOL)warm forTimeInterval:(double)interval
{
  warmCopy = warm;
  Mutable = CFStringCreateMutable(0, 52);
  CFStringAppendCString(Mutable, "com.apple.siri.", 0x600u);
  if (warmCopy)
  {
    v9 = "";
  }

  else
  {
    v9 = "Cold.";
  }

  CFStringAppendCString(Mutable, v9, 0x600u);
  if (type - 1 > 8)
  {
    v10 = "Unknown.";
  }

  else
  {
    v10 = off_1E7347768[type - 1];
  }

  CFStringAppendCString(Mutable, v10, 0x600u);
  intervalCopy = 0.0;
  if (interval >= 0.0)
  {
    intervalCopy = interval;
  }

  if (intervalCopy > 10.0)
  {
    intervalCopy = 10.0;
  }

  CFStringAppendCString(Mutable, off_1E7347710[intervalCopy], 0x600u);
  _AFAggregatorClientAddValueForScalarKey(Mutable, 1);

  CFRelease(Mutable);
}

+ (id)_stringForGatekeeperType:(unint64_t)type
{
  if (type > 3)
  {
    return 0;
  }

  else
  {
    return off_1E73477C8[type];
  }
}

+ (void)logStarkGatekeeperAppearedForType:(unint64_t)type
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [self _stringForGatekeeperType:type];
  v4 = v3;
  if (v3)
  {
    v5 = [@"com.apple.siri.Car.GateKeeper.Appeared" stringByAppendingFormat:@".%@", v3];
  }

  else
  {
    v5 = @"com.apple.siri.Car.GateKeeper.Appeared";
  }

  _AFAggregatorClientAddValueForScalarKey(v5, 1);
  v6 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "+[AFAggregator(AssistantUI) logStarkGatekeeperAppearedForType:]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s logged for key: %@", buf, 0x16u);
  }
}

+ (void)logStarkGatekeeperDismissedManuallyForType:(unint64_t)type
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [self _stringForGatekeeperType:type];
  v4 = v3;
  if (v3)
  {
    v5 = [@"com.apple.siri.Car.GateKeeper.Dismissed.Manual" stringByAppendingFormat:@".%@", v3];
  }

  else
  {
    v5 = @"com.apple.siri.Car.GateKeeper.Dismissed.Manual";
  }

  _AFAggregatorClientAddValueForScalarKey(v5, 1);
  v6 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "+[AFAggregator(AssistantUI) logStarkGatekeeperDismissedManuallyForType:]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s logged for key: %@", buf, 0x16u);
  }
}

@end