@interface AXSpeakServer
+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(unint64_t)identifier;
+ (id)sharedInstance;
- (AXSpeakServer)init;
- (BOOL)_isAllowedToSpeakForPid:(int)pid;
- (BOOL)typingFeedbackEnabled;
- (TTSSpeechManager)speechManager;
- (id)_massageKeyboardLanguage:(id)language;
- (id)_prepareSpeechAction;
- (id)_processCharacterForPunctuation:(id)punctuation;
- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier pid:(int)pid error:(id *)error;
- (void)_observeNotifications:(BOOL)notifications;
- (void)_observeSpeechAccessibilityPreferenceChanges;
- (void)_processTypingFeedback:(id)feedback;
- (void)_speakAction:(id)action isForResponderElement:(BOOL)element;
- (void)_tryObservingNotifications;
- (void)_updateSpokenLangugage:(id)langugage;
- (void)dealloc;
- (void)handleFirstValueChangeWithCompletion:(id)completion;
- (void)handleTextReplacementOccurred:(id)occurred;
- (void)handleValueChange:(id)change;
- (void)processAutocorrectionOutput:(id)output;
- (void)processDelayedTypingFeedback:(id)feedback;
- (void)processWordOutput:(id)output;
- (void)withFirstResponderOnMainQueue:(id)queue;
@end

@implementation AXSpeakServer

- (TTSSpeechManager)speechManager
{
  speechManager = self->_speechManager;
  if (!speechManager)
  {
    v4 = objc_alloc_init(TTSSpeechManager);
    v5 = self->_speechManager;
    self->_speechManager = v4;

    [(TTSSpeechManager *)self->_speechManager setUsesAuxiliarySession:1];
    speechManager = self->_speechManager;
  }

  return speechManager;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1278;
  block[3] = &unk_8338;
  block[4] = self;
  if (qword_CB68 != -1)
  {
    dispatch_once(&qword_CB68, block);
  }

  v2 = qword_CB60;

  return v2;
}

- (AXSpeakServer)init
{
  v22.receiver = self;
  v22.super_class = AXSpeakServer;
  v2 = [(AXSpeakServer *)&v22 init];
  if (v2)
  {
    v3 = +[TTSSpeechManager availableLanguageCodes];
    availableLanguages = v2->_availableLanguages;
    v2->_availableLanguages = v3;

    v5 = objc_allocWithZone(NSDictionary);
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.AccessibilitySettingsLoader"];
    v7 = [v6 pathForResource:@"KeyboardToLanguage" ofType:@"plist"];
    v8 = [v5 initWithContentsOfFile:v7];
    keyboardToLanguage = v2->_keyboardToLanguage;
    v2->_keyboardToLanguage = v8;

    v10 = dispatch_queue_create("speak-corrections-punctuation", 0);
    punctuationLoaderQueue = v2->_punctuationLoaderQueue;
    v2->_punctuationLoaderQueue = v10;

    v2->_pasteOperationOccurred = 0;
    v12 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    feedbackDelayTimer = v2->_feedbackDelayTimer;
    v2->_feedbackDelayTimer = v12;

    [(AXDispatchTimer *)v2->_feedbackDelayTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v14 = objc_alloc_init(AXCharacterSoundMap);
    characterSoundMap = v2->_characterSoundMap;
    v2->_characterSoundMap = v14;

    v2->_lastTextReplacementOccurredTime = -3061152000.0;
    v16 = objc_alloc_init(AXIndexMap);
    letterPunctuationTable = v2->_letterPunctuationTable;
    v2->_letterPunctuationTable = v16;

    v18 = dispatch_queue_create("AXSpeakServer.Operation", 0);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v18;

    [(AXSpeakServer *)v2 _observeSpeechAccessibilityPreferenceChanges];
    [(AXSpeakServer *)v2 _tryObservingNotifications];
    v20 = v2;
  }

  return v2;
}

- (BOOL)typingFeedbackEnabled
{
  v2 = +[AXSettings sharedInstance];
  if ([v2 phoneticFeedbackEnabled] & 1) != 0 || (objc_msgSend(v2, "wordFeedbackEnabled") & 1) != 0 || (objc_msgSend(v2, "letterFeedbackEnabled") & 1) != 0 || (objc_msgSend(v2, "speakCorrectionsEnabled"))
  {
    quickTypePredictionFeedbackEnabled = 1;
  }

  else
  {
    quickTypePredictionFeedbackEnabled = [v2 quickTypePredictionFeedbackEnabled];
  }

  return quickTypePredictionFeedbackEnabled;
}

- (void)_observeSpeechAccessibilityPreferenceChanges
{
  objc_initWeak(&location, self);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1660;
  v12 = &unk_8360;
  objc_copyWeak(&v13, &location);
  v3 = objc_retainBlock(&v9);
  v4 = [AXSettings sharedInstance:v9];
  [v4 registerUpdateBlock:v3 forRetrieveSelector:"phoneticFeedbackEnabled" withListener:self];

  v5 = +[AXSettings sharedInstance];
  [v5 registerUpdateBlock:v3 forRetrieveSelector:"wordFeedbackEnabled" withListener:self];

  v6 = +[AXSettings sharedInstance];
  [v6 registerUpdateBlock:v3 forRetrieveSelector:"letterFeedbackEnabled" withListener:self];

  v7 = +[AXSettings sharedInstance];
  [v7 registerUpdateBlock:v3 forRetrieveSelector:"speakCorrectionsEnabled" withListener:self];

  v8 = +[AXSettings sharedInstance];
  [v8 registerUpdateBlock:v3 forRetrieveSelector:"quickTypePredictionFeedbackEnabled" withListener:self];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_tryObservingNotifications
{
  if ([(AXSpeakServer *)self typingFeedbackEnabled])
  {

    [(AXSpeakServer *)self _observeNotifications:1];
  }
}

- (void)dealloc
{
  [(AXSpeakServer *)self _observeNotifications:0];
  currentLanguage = self->_currentLanguage;
  self->_currentLanguage = 0;

  v4.receiver = self;
  v4.super_class = AXSpeakServer;
  [(AXSpeakServer *)&v4 dealloc];
}

- (void)_observeNotifications:(BOOL)notifications
{
  if (notifications)
  {
    objc_initWeak(&location, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_185C;
    v4[3] = &unk_8388;
    v4[4] = self;
    objc_copyWeak(&v5, &location);
    [AXElement registerNotifications:&off_8910 withIdentifier:@"SpeakTyping" withHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {

    [AXElement unregisterNotifications:@"SpeakTyping"];
  }
}

- (id)_massageKeyboardLanguage:(id)language
{
  v4 = AXCLanguageConvertToCanonicalForm();
  if (![(NSArray *)self->_availableLanguages containsObject:v4])
  {
    v5 = [(NSDictionary *)self->_keyboardToLanguage objectForKey:v4];

    v4 = v5;
  }

  return v4;
}

- (void)_updateSpokenLangugage:(id)langugage
{
  langugageCopy = langugage;
  v5 = [(AXSpeakServer *)self _massageKeyboardLanguage:langugageCopy];
  v6 = AXLogSpeakTyping();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    currentLanguage = self->_currentLanguage;
    *buf = 138412802;
    v11 = currentLanguage;
    v12 = 2112;
    v13 = langugageCopy;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Updating language: Current: %@ new: %@ [massaged: %@]", buf, 0x20u);
  }

  if (![(NSString *)self->_currentLanguage isEqualToString:v5]&& self->_currentLanguage | v5)
  {
    objc_storeStrong(&self->_currentLanguage, v5);
    [(AXIndexMap *)self->_letterPunctuationTable removeAllObjects];
    punctuationLoaderQueue = self->_punctuationLoaderQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1B54;
    block[3] = &unk_83D8;
    block[4] = self;
    dispatch_async(punctuationLoaderQueue, block);
  }
}

- (void)handleTextReplacementOccurred:(id)occurred
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1CA4;
  v5[3] = &unk_8400;
  occurredCopy = occurred;
  selfCopy = self;
  v4 = occurredCopy;
  [(AXSpeakServer *)self withFirstResponderOnMainQueue:v5];
}

- (void)withFirstResponderOnMainQueue:(id)queue
{
  queueCopy = queue;
  operationQueue = [(AXSpeakServer *)self operationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1E7C;
  block[3] = &unk_8478;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(operationQueue, block);
}

- (void)handleFirstValueChangeWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2108;
  v4[3] = &unk_84E0;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(AXSpeakServer *)selfCopy withFirstResponderOnMainQueue:v4];
}

- (void)handleValueChange:(id)change
{
  changeCopy = change;
  v5 = AXLogSpeakTyping();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v45 = changeCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Value change %@", buf, 0xCu);
  }

  if (!UIAccessibilityIsVoiceOverRunning())
  {
    if (CFAbsoluteTimeGetCurrent() - self->_lastTextReplacementOccurredTime < 0.1)
    {
      v6 = AXLogSpeakTyping();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Value change but we just had a text replacement occur", buf, 2u);
      }

      goto LABEL_20;
    }

    responderElement = [(AXSpeakServer *)self responderElement];
    if (responderElement)
    {
      v8 = responderElement;
      responderElement2 = [(AXSpeakServer *)self responderElement];
      isValid = [responderElement2 isValid];

      if (isValid)
      {
        responderElement3 = [(AXSpeakServer *)self responderElement];
        traits = [responderElement3 traits];
        v13 = kAXSecureTextFieldTrait & ~traits;

        if (!v13)
        {
          goto LABEL_20;
        }

        elementValueText = [(AXSpeakServer *)self elementValueText];
        if ([elementValueText isAXAttributedString] && objc_msgSend(elementValueText, "hasAttribute:", UIAccessibilityTokenPlaceholder))
        {

          elementValueText = 0;
        }

        responderElement4 = [(AXSpeakServer *)self responderElement];
        [responderElement4 updateCache:2006];

        responderElement5 = [(AXSpeakServer *)self responderElement];
        value = [responderElement5 value];

        responderElement6 = [(AXSpeakServer *)self responderElement];
        selectedTextRange = [responderElement6 selectedTextRange];
        v40 = v20;
        v41 = selectedTextRange;

        v21 = +[UIKeyboardInputModeController sharedInputModeController];
        currentInputModeInPreference = [v21 currentInputModeInPreference];
        primaryLanguage = [currentInputModeInPreference primaryLanguage];

        [(AXSpeakServer *)self _updateSpokenLangugage:primaryLanguage];
        v24 = [elementValueText length];
        v25 = [value length];
        responderElement7 = [(AXSpeakServer *)self responderElement];
        application = [responderElement7 application];
        isDictationListening = [application isDictationListening];

        if (isDictationListening)
        {
          v29 = AXLogSpeakTyping();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Will not speak because app-dictation is running", buf, 2u);
          }
        }

        else
        {
          if (self->_pasteOperationOccurred)
          {
            goto LABEL_36;
          }

          v31 = v24 - v25;
          if (_AXSLetterFeedbackEnabled() || _AXSPhoneticFeedbackEnabled())
          {
            v32 = +[AXFirstResponderValueChangeManager sharedInstance];
            LOBYTE(v39) = 1;
            v33 = [v32 outputValueChangeForNewValue:value oldValue:elementValueText selectedTextRange:v41 shouldEchoDeletion:v40 isSingleInsert:0 feedbackType:v31 == -1 lastKeyboardKeyPress:CFAbsoluteTimeGetCurrent() shouldOutputSingleCharactersOnly:{1, v39}];
            v34 = [v33 stringByReplacingOccurrencesOfString:@" " withString:&stru_8658];

            if (v34 && [v34 length])
            {
              v35 = AXLogSpeakTyping();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 138477827;
                v45 = v34;
                _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "New output string to process: %{private}@", buf, 0xCu);
              }

              [(AXSpeakServer *)self processDelayedTypingFeedback:v34];
            }
          }

          if (!_AXSWordFeedbackEnabled())
          {
            goto LABEL_36;
          }

          v36 = +[AXFirstResponderValueChangeManager sharedInstance];
          v37 = [v36 outputValueChangeForNewValue:value oldValue:elementValueText selectedTextRange:v41 shouldEchoDeletion:v40 isSingleInsert:0 feedbackType:v31 == -1 lastKeyboardKeyPress:{CFAbsoluteTimeGetCurrent(), 2}];
          v29 = [v37 stringByReplacingOccurrencesOfString:@" " withString:&stru_8658];

          v38 = AXLogSpeakTyping();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            v45 = v29;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "New output string to process: %{private}@", buf, 0xCu);
          }

          if ([v29 length])
          {
            [(AXSpeakServer *)self processWordOutput:v29];
          }
        }

LABEL_36:
        [(AXSpeakServer *)self setElementValueText:value];

        goto LABEL_20;
      }
    }

    v30 = AXLogSpeakTyping();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Need a new responder", buf, 2u);
    }

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_27C8;
    v42[3] = &unk_83B0;
    v42[4] = self;
    v43 = changeCopy;
    [(AXSpeakServer *)self handleFirstValueChangeWithCompletion:v42];
  }

LABEL_20:
}

- (id)_prepareSpeechAction
{
  v3 = objc_alloc_init(TTSSpeechAction);
  [v3 setShouldProcessEmoji:1];
  if (self->_currentLanguage)
  {
    v4 = AXLanguageCanonicalFormToGeneralLanguage();
  }

  else
  {
    v5 = +[AVSpeechSynthesisVoice currentLanguageCode];
    v4 = AXLanguageCanonicalFormToGeneralLanguage();
  }

  v6 = +[AXSettings sharedInstance];
  v7 = [v6 speechVoiceIdentifierForLanguage:v4 sourceKey:AXSpeechSourceKeySpeechFeatures exists:0];

  [v3 setVoiceIdentifier:v7];
  [v3 setLanguage:self->_currentLanguage];
  v8 = +[AXSettings sharedInstance];
  [v8 quickSpeakSpeakingRate];
  [v3 setSpeakingRate:v9];

  return v3;
}

- (void)processAutocorrectionOutput:(id)output
{
  outputCopy = output;
  _prepareSpeechAction = [(AXSpeakServer *)self _prepareSpeechAction];
  [_prepareSpeechAction setShouldQueue:1];
  [_prepareSpeechAction setCannotInterrupt:1];
  speechManager = [(AXSpeakServer *)self speechManager];
  [speechManager setSpeechEnabled:1];

  [_prepareSpeechAction setString:outputCopy];
  v7 = AXLogSpeakTyping();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = _prepareSpeechAction;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Process autocorrect: %@", &v8, 0xCu);
  }

  [(AXSpeakServer *)self _speakAction:_prepareSpeechAction isForResponderElement:1];
}

- (void)processWordOutput:(id)output
{
  feedbackDelayTimer = self->_feedbackDelayTimer;
  outputCopy = output;
  [(AXDispatchTimer *)feedbackDelayTimer cancel];
  _prepareSpeechAction = [(AXSpeakServer *)self _prepareSpeechAction];
  speechManager = [(AXSpeakServer *)self speechManager];
  [speechManager setSpeechEnabled:1];

  [_prepareSpeechAction setString:outputCopy];
  v8 = AXLogSpeakTyping();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = _prepareSpeechAction;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Process word: %@", &v9, 0xCu);
  }

  [(AXSpeakServer *)self _speakAction:_prepareSpeechAction isForResponderElement:1];
}

- (id)_processCharacterForPunctuation:(id)punctuation
{
  punctuationCopy = punctuation;
  v5 = [punctuationCopy length];
  v6 = punctuationCopy;
  v7 = v6;
  if (v5 <= 2)
  {
    v8 = AXUnicodeCodePointForCharacterString();
    if (v8 >= 0x10000)
    {
      v7 = AXVOLocalizedStringForCharacter();
      v10 = v6;
    }

    else
    {
      v7 = v6;
      if ([v6 length] != &dword_0 + 1)
      {
        goto LABEL_8;
      }

      letterPunctuationTable = [(AXSpeakServer *)self letterPunctuationTable];
      v10 = [letterPunctuationTable objectForIndex:v8];

      if (v10)
      {
        v10 = v10;

        v7 = v10;
      }

      else
      {
        v7 = v6;
      }
    }
  }

LABEL_8:

  return v7;
}

- (void)_processTypingFeedback:(id)feedback
{
  feedbackCopy = feedback;
  _prepareSpeechAction = [(AXSpeakServer *)self _prepareSpeechAction];
  voiceIdentifier = [_prepareSpeechAction voiceIdentifier];
  speechManager = [(AXSpeakServer *)self speechManager];
  [speechManager setSpeechEnabled:1];

  if ([feedbackCopy length])
  {
    v8 = [(AXSpeakServer *)self _feedbackForCharacter:feedbackCopy andVoiceIdentifier:voiceIdentifier];
    v9 = +[AXLanguageManager sharedInstance];
    language = [_prepareSpeechAction language];
    v11 = [v9 dialectForLanguageID:language];

    if (([v11 canSpeakString:feedbackCopy] & 1) != 0 || v11 && (objc_msgSend(v11, "speakableCharacters"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12) || AXLanguageIsSpeakableEmojiString())
    {
      v13 = feedbackCopy;
    }

    else
    {
      v13 = [(AXSpeakServer *)self _processCharacterForPunctuation:feedbackCopy];
    }

    v14 = v13;
    if ([v13 isEqualToString:feedbackCopy])
    {
      if ([feedbackCopy length] != &dword_0 + 1)
      {
LABEL_12:
        if (_AXSLetterFeedbackEnabled() && _AXSPhoneticFeedbackEnabled())
        {
          if (v8)
          {
            v17 = [feedbackCopy stringByAppendingString:{@", "}];
            iPASpeechPhonemes3 = [v17 stringByAppendingString:v8];

            iPASpeechPhonemes = [iPASpeechPhonemes3 IPASpeechPhonemes];
            v20 = [iPASpeechPhonemes length];

            if (v20)
            {
              v31 = AVSpeechSynthesisIPANotationAttribute;
              iPASpeechPhonemes2 = [iPASpeechPhonemes3 IPASpeechPhonemes];
              v32 = iPASpeechPhonemes2;
              v22 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            }

            else
            {
              v22 = 0;
            }

            v23 = [NSAttributedString alloc];
            v24 = iPASpeechPhonemes3;
LABEL_28:
            v25 = [v23 initWithString:v24 attributes:v22];
            [_prepareSpeechAction setAttributedString:v25];

            goto LABEL_29;
          }
        }

        else if (!_AXSLetterFeedbackEnabled())
        {
          if (!_AXSPhoneticFeedbackEnabled() || !v8)
          {
            goto LABEL_29;
          }

          iPASpeechPhonemes3 = [v8 IPASpeechPhonemes];
          if ([iPASpeechPhonemes3 length])
          {
            v29 = AVSpeechSynthesisIPANotationAttribute;
            v30 = iPASpeechPhonemes3;
            v22 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          }

          else
          {
            v22 = 0;
          }

          v23 = [NSAttributedString alloc];
          v24 = v8;
          goto LABEL_28;
        }

        [_prepareSpeechAction setString:feedbackCopy];
LABEL_29:

        goto LABEL_30;
      }

      v15 = [TTSSpeechManager literalStringMarkup:voiceIdentifier string:feedbackCopy speakCap:1];
    }

    else
    {
      v15 = v14;
    }

    v16 = v15;

    feedbackCopy = v16;
    goto LABEL_12;
  }

LABEL_30:
  string = [_prepareSpeechAction string];
  if ([string length])
  {

LABEL_33:
    [(AXSpeakServer *)self _speakAction:_prepareSpeechAction isForResponderElement:1];
    goto LABEL_34;
  }

  attributedString = [_prepareSpeechAction attributedString];
  v28 = [attributedString length];

  if (v28)
  {
    goto LABEL_33;
  }

LABEL_34:
}

- (void)processDelayedTypingFeedback:(id)feedback
{
  feedbackCopy = feedback;
  if ([feedbackCopy length])
  {
    v5 = +[AXSettings sharedInstance];
    [v5 characterFeedbackDelayDuration];
    v7 = v6;

    [(AXDispatchTimer *)self->_feedbackDelayTimer cancel];
    objc_initWeak(&location, self);
    feedbackDelayTimer = self->_feedbackDelayTimer;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_30B4;
    v9[3] = &unk_8508;
    objc_copyWeak(&v11, &location);
    v10 = feedbackCopy;
    [(AXDispatchTimer *)feedbackDelayTimer afterDelay:v9 processBlock:v7];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(unint64_t)identifier
{
  if (identifier - 3 > 0xC)
  {
    return @"com.apple.accessibility.SpeakTypingServices";
  }

  else
  {
    return qword_8550[identifier - 3];
  }
}

- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier pid:(int)pid error:(id *)error
{
  v7 = *&pid;
  messageCopy = message;
  withIdentifierCopy = withIdentifier;
  v13 = AXLogSpeakTyping();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_43E8(messageCopy, v13);
  }

  v14 = [messageCopy objectForKey:@"AXSpeakTypingPayloadKeyLanguage"];
  v15 = AXLanguageCanonicalFormToGeneralLanguage();

  if (v15)
  {
    [(AXSpeakServer *)self _updateSpokenLangugage:v15];
  }

  _prepareSpeechAction = [(AXSpeakServer *)self _prepareSpeechAction];
  v17 = 0;
  if (identifier <= 8)
  {
    if (identifier <= 5)
    {
      switch(identifier)
      {
        case 3uLL:
          if (![(AXSpeakServer *)self _isAllowedToSpeakForPid:v7])
          {
            speechManager2 = AXLogSpeakTyping();
            if (os_log_type_enabled(speechManager2, OS_LOG_TYPE_ERROR))
            {
              sub_4460(v7, speechManager2);
            }

            goto LABEL_61;
          }

          buf[0] = 0;
          objc_opt_class();
          v27 = [messageCopy objectForKey:AXSpeakTypingPayloadKeyPrediction];
          v28 = __UIAccessibilityCastAsClass();

          [_prepareSpeechAction setString:v28];
          [(AXSpeakServer *)self _speakAction:_prepareSpeechAction isForResponderElement:1];
          break;
        case 4uLL:
          v41 = +[AXSpringBoardServer server];
          isRingerMuted = [v41 isRingerMuted];

          if (isRingerMuted && !UIAccessibilityIsVoiceOverRunning())
          {
            goto LABEL_68;
          }

          if ([(AXSpeakServer *)self _isAllowedToSpeakForPid:v7])
          {
            buf[0] = 0;
            objc_opt_class();
            v43 = [messageCopy objectForKey:AXSpeakTypingPayloadKeyWord];
            v28 = __UIAccessibilityCastAsClass();

            v44 = AXLogSpeakTyping();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138477827;
              v69 = v28;
              _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "autocorrect: %{private}@", buf, 0xCu);
            }

            [(AXSpeakServer *)self processAutocorrectionOutput:v28];
          }

          else
          {
            v28 = AXLogSpeakTyping();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              sub_44D8(self, v7, v28);
            }
          }

          break;
        case 5uLL:
          v18 = +[AXSpringBoardServer server];
          isRingerMuted2 = [v18 isRingerMuted];

          v20 = [messageCopy objectForKey:@"fromAutocorrections"];
          bOOLValue = [v20 BOOLValue];

          if (bOOLValue && isRingerMuted2)
          {
            if (UIAccessibilityIsVoiceOverRunning())
            {
              goto LABEL_68;
            }

            goto LABEL_58;
          }

          if ((bOOLValue & 1) == 0)
          {
LABEL_58:
            speechManager = [(AXSpeakServer *)self speechManager];
            [speechManager stopSpeaking:0];

            speechManager2 = [(AXSpeakServer *)self speechManager];
            [speechManager2 clearSpeechQueue];
            goto LABEL_61;
          }

LABEL_68:
          v17 = 0;
          goto LABEL_75;
        default:
          goto LABEL_75;
      }

LABEL_67:

      goto LABEL_68;
    }

    if (identifier == 6)
    {
      speechManager3 = [(AXSpeakServer *)self speechManager];
      [speechManager3 stopSpeaking:0];

      v28 = [messageCopy objectForKey:AXSpeakTypingPayloadKeyWord];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        v32 = __UIAccessibilityCastAsClass();
        objc_opt_class();
        v33 = [messageCopy objectForKey:@"AXSpeakTypingPayloadKeyRate"];
        v34 = __UIAccessibilityCastAsClass();

        [v34 doubleValue];
        v36 = v35;

        buf[0] = 0;
        objc_opt_class();
        v37 = [messageCopy objectForKey:@"AXSpeakTypingPayloadKeyVolume"];
        v38 = __UIAccessibilityCastAsClass();

        [v38 doubleValue];
        v40 = v39;

        [_prepareSpeechAction setString:v32];
        if (v36 > 0.0)
        {
          [_prepareSpeechAction setSpeakingRate:v36];
        }

        if (v40 > 0.0)
        {
          [_prepareSpeechAction setVolume:v40];
        }

        [(AXSpeakServer *)self _speakAction:_prepareSpeechAction isForResponderElement:0];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_67;
        }

        v56 = objc_opt_class();
        v32 = [NSSet setWithObjects:v56, objc_opt_class(), 0];
        buf[0] = 0;
        objc_opt_class();
        v57 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v32 fromData:v28 error:0];
        v58 = __UIAccessibilityCastAsClass();

        v59 = [v58 length];
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_3B28;
        v62[3] = &unk_8530;
        v62[4] = self;
        v63 = v58;
        v60 = v58;
        [v60 enumerateAttributesInRange:0 options:v59 usingBlock:{0, v62}];
      }

      goto LABEL_67;
    }

    if (identifier == 7)
    {
      v47 = AXLogSpeakTyping();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        lastSpeechAction = [(AXSpeakServer *)self lastSpeechAction];
        *buf = 138477827;
        v69 = lastSpeechAction;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "Retrieve last action: %{private}@", buf, 0xCu);
      }

      lastSpeechAction2 = [(AXSpeakServer *)self lastSpeechAction];
      attributedString = [lastSpeechAction2 attributedString];
      lastSpeechAction3 = [(AXSpeakServer *)self lastSpeechAction];
      v52 = lastSpeechAction3;
      if (attributedString)
      {
        attributedString2 = [lastSpeechAction3 attributedString];
        string = [attributedString2 string];
      }

      else
      {
        string = [lastSpeechAction3 string];
      }

      if (string)
      {
        v26 = string;
      }

      else
      {
        v26 = &stru_8658;
      }

      v64 = @"result";
      v65 = v26;
      v17 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
LABEL_74:

      goto LABEL_75;
    }

    voiceIdentifier = [(TTSSpeechAction *)self->_lastSpeechAction voiceIdentifier];
    v24 = voiceIdentifier;
    if (voiceIdentifier)
    {
      v25 = voiceIdentifier;
    }

    else
    {
      v25 = &stru_8658;
    }

    v66 = @"result";
    v67 = v25;
    v17 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];

LABEL_31:
    if (!AXIsInternalInstall())
    {
      goto LABEL_75;
    }

    v26 = [messageCopy objectForKey:@"enabled"];
    [(__CFString *)v26 BOOLValue];
    _AXSSetPhoneticFeedbackEnabled();
    goto LABEL_74;
  }

  if (identifier <= 11)
  {
    if (identifier == 9)
    {
      v29 = AXLogSpeakTyping();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        lastSpeechAction4 = [(AXSpeakServer *)self lastSpeechAction];
        *buf = 138477827;
        v69 = lastSpeechAction4;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Clear last: %{private}@", buf, 0xCu);
      }

      [(AXSpeakServer *)self setLastSpeechAction:0];
      goto LABEL_68;
    }

    if (identifier == 10)
    {
      +[UIKeyboard removeAllDynamicDictionaries];
      speechManager2 = +[AXSettings sharedInstance];
      v45 = [messageCopy objectForKey:@"voiceIdentifier"];
      v46 = [messageCopy objectForKey:@"language"];
      [speechManager2 setSpeechVoiceIdentifier:v45 forLanguage:v46 sourceKey:AXSpeechSourceKeySpeechFeatures];
    }

    else
    {
      if (!AXIsInternalInstall())
      {
        goto LABEL_68;
      }

      speechManager2 = [messageCopy objectForKey:@"enabled"];
      [speechManager2 BOOLValue];
      _AXSSetLetterFeedbackEnabled();
    }

LABEL_61:

    goto LABEL_68;
  }

  switch(identifier)
  {
    case 0xCuLL:
      if (!AXIsInternalInstall())
      {
        goto LABEL_68;
      }

      speechManager2 = [messageCopy objectForKey:@"enabled"];
      [speechManager2 BOOLValue];
      _AXSSetWordFeedbackEnabled();
      goto LABEL_61;
    case 0xDuLL:
      goto LABEL_31;
    case 0xFuLL:
      if (AXIsInternalInstall())
      {
        _AXSSetInUnitTestMode();
      }

      v17 = &off_8928;
      break;
  }

LABEL_75:

  return v17;
}

- (BOOL)_isAllowedToSpeakForPid:(int)pid
{
  responderElement = [(AXSpeakServer *)self responderElement];
  v6 = [responderElement pid];

  if (v6 == pid)
  {
    return 1;
  }

  responderElement2 = [(AXSpeakServer *)self responderElement];

  if (!responderElement2)
  {
    return 0;
  }

  responderElement3 = [(AXSpeakServer *)self responderElement];
  remoteParent = [responderElement3 remoteParent];

  if (!remoteParent)
  {
    return 0;
  }

  v11 = 9;
  while (1)
  {
    v12 = [remoteParent pid];
    v7 = v12 == pid;
    if (v12 == pid)
    {
      break;
    }

    v10RemoteParent = [remoteParent remoteParent];

    if (v11-- != 0)
    {
      remoteParent = v10RemoteParent;
      if (v10RemoteParent)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  v10RemoteParent = remoteParent;
LABEL_13:

  return v7;
}

- (void)_speakAction:(id)action isForResponderElement:(BOOL)element
{
  elementCopy = element;
  actionCopy = action;
  v7 = +[MCProfileConnection sharedConnection];
  v8 = [v7 effectiveBoolValueForSetting:MCFeatureAccessibilityTypingFeedbackAllowed];

  speechManager = AXLogSpeakTyping();
  v10 = os_log_type_enabled(speechManager, OS_LOG_TYPE_INFO);
  if (v8 == 2)
  {
    if (v10)
    {
      v11 = 138477827;
      v12 = actionCopy;
      _os_log_impl(&dword_0, speechManager, OS_LOG_TYPE_INFO, "Will NOT speak action due to ManagedConfiguration restrictions: %{private}@", &v11, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      v11 = 138477827;
      v12 = actionCopy;
      _os_log_impl(&dword_0, speechManager, OS_LOG_TYPE_INFO, "Will speak action: %{private}@", &v11, 0xCu);
    }

    [(AXSpeakServer *)self setLastSpeechAction:actionCopy];
    [(AXSpeakServer *)self setIsLastSpeechActionForResponderElement:elementCopy];
    speechManager = [(AXSpeakServer *)self speechManager];
    [speechManager dispatchSpeechAction:actionCopy];
  }
}

@end