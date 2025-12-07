@interface IATextInputActionsAnalytics
- (IATextInputActionsAnalytics)initWithAnalyticsMetadataObserver:(id)observer;
- (IATextInputActionsAnalytics)initWithAnalyticsMetadataObserver:(id)observer withEventHandler:(id)handler;
- (IATextInputActionsAnalytics)initWithAnalyticsMetadataObserver:(id)observer withServiceName:(id)name;
- (IATextInputActionsMetadataObserving)analyticsDelegate;
- (id)_instanceOfActionClass:(Class)class;
- (void)_didDeleteBackwardAction:(id)action;
- (void)_didDeleteBackwardCount:(unint64_t)count withType:(int64_t)type shouldOverrideInputActionCountToZero:(BOOL)zero withInputMode:(id)mode forceNotMarkedText:(BOOL)text;
- (void)_didDeleteBackwardText:(id)text withType:(int64_t)type shouldOverrideInputActionCountToZero:(BOOL)zero withInputMode:(id)mode forceNotMarkedText:(BOOL)markedText;
- (void)_didDeleteBackwardTextDetails:(id)details withType:(int64_t)type shouldOverrideInputActionCountToZero:(BOOL)zero withInputMode:(id)mode forceNotMarkedText:(BOOL)text;
- (void)_didDeletionKeyPressOfKey:(id)key withType:(int64_t)type;
- (void)_didInsertTextAction:(id)action;
- (void)_didInsertionKeyPressOfKey:(id)key withType:(int64_t)type;
- (void)_didReplacementForText:(id)text withText:(id)withText allowNilText:(BOOL)nilText allowEmptyText:(BOOL)emptyText allowNilReplacement:(BOOL)replacement withSource:(int64_t)source withType:(int64_t)type withInputActionCount:(int64_t)self0;
- (void)didAutocorrectReplacementForText:(id)text withText:(id)withText;
- (void)didAutocorrectTapOnCompletionReplacementForText:(id)text withText:(id)withText;
- (void)didCalloutBarReplacementForText:(id)text withText:(id)withText;
- (void)didCandidateBarAction;
- (void)didCandidateBarReplacementForText:(id)text withText:(id)withText;
- (void)didChangeToSelection:(_NSRange)selection relativeRangeBefore:(_NSRange)before;
- (void)didCommitText:(id)text;
- (void)didCompositionReplacementForText:(id)text withText:(id)withText;
- (void)didConversionForMarkedText:(id)text withText:(id)withText;
- (void)didCopy:(id)copy;
- (void)didCut:(id)cut;
- (void)didDecompositionReplacementForText:(id)text withText:(id)withText;
- (void)didDeleteBackwardText:(id)text;
- (void)didDeleteBackwardText:(id)text withType:(int64_t)type;
- (void)didDeleteBackwardText:(id)text withType:(int64_t)type withInputMode:(id)mode;
- (void)didDeletionKeyPress;
- (void)didDeletionKeyPressOfKey:(id)key withType:(int64_t)type;
- (void)didDictationBegin:(BOOL)begin usesMultiModalDictation:(BOOL)dictation;
- (void)didDictationEnd;
- (void)didGlomojiTap:(id)tap newInputMode:(id)mode;
- (void)didGlomojiTap:(unint64_t)tap originalInputMode:(id)mode newInputMode:(id)inputMode;
- (void)didInlineCompletionReplacementForText:(id)text withText:(id)withText;
- (void)didInlineCompletionTapOnCompletionReplacementForText:(id)text withText:(id)withText;
- (void)didInsertText:(id)text withType:(int64_t)type relativeRangeBefore:(_NSRange)before withNumAlternatives:(int64_t)alternatives selectedTextBefore:(id)textBefore withInputMode:(id)mode;
- (void)didInsertionKeyPress;
- (void)didInsertionKeyPressOfKey:(id)key withType:(int64_t)type;
- (void)didKBMenuAppear:(id)appear;
- (void)didKBMenuAppear:(unint64_t)appear originalInputMode:(id)mode;
- (void)didKBMenuDismiss:(unint64_t)dismiss;
- (void)didKBMenuInteraction:(unint64_t)interaction selectedAction:(unint64_t)action newInputMode:(id)mode;
- (void)didKeyboardDockItemButtonPress:(unint64_t)press buttonType:(unint64_t)type buttonSize:(CGSize)size touchDown:(CGPoint)down touchUp:(CGPoint)up touchDuration:(double)duration inputSource:(int64_t)source inputType:(int64_t)self0 uiInterfaceOrientation:(int64_t)self1;
- (void)didOther;
- (void)didPaste:(id)paste;
- (void)didRedo;
- (void)didReplaceWithCandidate:(int64_t)candidate;
- (void)didRevisionBubbleReplacementForText:(id)text withText:(id)withText;
- (void)didRevisionBubbleTap;
- (void)didSessionBegin;
- (void)didSessionEnd;
- (void)didUndo;
- (void)dispatchToAnalyticsQueue:(id)queue;
- (void)flushAndSetLastAction:(id)action;
- (void)invalidateConnection;
- (void)mergeOrConsumeAction:(id)action;
- (void)populateActionInputMode:(id)mode withInputMode:(id)inputMode;
@end

@implementation IATextInputActionsAnalytics

- (void)didSessionBegin
{
  v3 = sub_1D461074C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C470();
  }

  v4 = objc_opt_class();
  v6 = objc_msgSend__instanceOfActionClass_(self, v5, v4);
  v9 = objc_msgSend_asBegan(v6, v7, v8);

  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1D46106E0;
  v12[3] = &unk_1E84897C8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(queue, v12);
}

- (IATextInputActionsMetadataObserving)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (IATextInputActionsAnalytics)initWithAnalyticsMetadataObserver:(id)observer
{
  observerCopy = observer;
  v7 = objc_msgSend_xpcEnabled(IAUtility, v5, v6);
  v8 = v7;
  v9 = sub_1D461074C(v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_1D460F000, v9, OS_LOG_TYPE_INFO, "initWithAnalyticsMetadataObserver service", buf, 2u);
    }

    v12 = objc_msgSend_initWithAnalyticsMetadataObserver_withServiceName_(self, v11, observerCopy, @"com.apple.inputanalyticsd");
  }

  else
  {
    if (v10)
    {
      *v16 = 0;
      _os_log_impl(&dword_1D460F000, v9, OS_LOG_TYPE_INFO, "initWithAnalyticsMetadataObserver in-process", v16, 2u);
    }

    v12 = objc_msgSend_initWithAnalyticsMetadataObserver_withEventHandler_(self, v13, observerCopy, &unk_1F4FDA350);
  }

  v14 = v12;

  return v14;
}

- (void)invalidateConnection
{
  v3 = sub_1D461074C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D460F000, v3, OS_LOG_TYPE_INFO, "invalidateConnection called", buf, 2u);
  }

  objc_msgSend_invalidateConnection(self->_xpcClient, v4, v5);
  xpcClient = self->_xpcClient;
  self->_xpcClient = 0;

  v8 = sub_1D461074C(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1D460F000, v8, OS_LOG_TYPE_INFO, "invalidateConnection completed", v9, 2u);
  }
}

- (id)_instanceOfActionClass:(Class)class
{
  v5 = objc_msgSend_analyticsDelegate(self, a2, class);

  if (!v5)
  {
    v7 = sub_1D461074C(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1D462C3AC();
    }
  }

  v8 = objc_opt_class();
  if (objc_msgSend_isSubclassOfClass_(class, v9, v8))
  {
    v10 = objc_alloc_init(class);
    v13 = objc_msgSend_analyticsDelegate(self, v11, v12);
    v16 = objc_msgSend_sessionIdentifier(v13, v14, v15);
    objc_msgSend_setSessionIdentifier_(self, v17, v16);

    v20 = objc_msgSend_sessionIdentifier(self, v18, v19);
    objc_msgSend_setTextInputSessionId_(v10, v21, v20);

    v24 = objc_msgSend_analyticsDelegate(self, v22, v23);
    v27 = objc_msgSend_source(v24, v25, v26);
    objc_msgSend_setSource_(v10, v28, v27);

    v31 = objc_msgSend_analyticsDelegate(self, v29, v30);
    v34 = objc_msgSend_flagOptions(v31, v32, v33);
    objc_msgSend_setFlagOptions_(v10, v35, v34);

    v38 = objc_msgSend_analyticsDelegate(self, v36, v37);
    v41 = objc_msgSend_appBundleId(v38, v39, v40);
    objc_msgSend_setAppBundleId_(v10, v42, v41);

    v45 = objc_msgSend_analyticsDelegate(self, v43, v44);
    v48 = objc_msgSend_processBundleId(v45, v46, v47);
    objc_msgSend_setProcessBundleId_(v10, v49, v48);

    v52 = objc_msgSend_string(MEMORY[0x1E696AD60], v50, v51);
    objc_msgSend_setClientSideSessionErrors_(v10, v53, v52);

    v56 = objc_msgSend_analyticsDelegate(self, v54, v55);
    v59 = objc_msgSend_inputMode(v56, v57, v58);
    objc_msgSend_populateActionInputMode_withInputMode_(self, v60, v10, v59);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)flushAndSetLastAction:(id)action
{
  actionCopy = action;
  v6 = actionCopy;
  if (self->_lastAction)
  {
    if (self->_useAnalyticsDaemon)
    {
      v7 = sub_1D461074C(actionCopy);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_1D460F000, v7, OS_LOG_TYPE_INFO, "flushAndSetLastAction calling sendSignal:toChannel:withNullableSessionID:withPayload:", v16, 2u);
      }

      v10 = objc_msgSend_textInputSessionId(v6, v8, v9);
      v13 = objc_msgSend_toDictionary(self->_lastAction, v11, v12);
      objc_msgSend_sendSignal_toChannel_withNullableSessionID_withPayload_(IASignalAnalytics, v14, @"DidAction", @"LegacyTextInputActions", v10, v13);
    }

    if (self->_useLocalAnalytics)
    {
      objc_msgSend_consumeAction_(self->_localServer, v5, self->_lastAction);
    }
  }

  lastAction = self->_lastAction;
  self->_lastAction = v6;
}

- (void)mergeOrConsumeAction:(id)action
{
  v51 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v8 = actionCopy;
  if (actionCopy)
  {
    v9 = objc_msgSend_flagOptions(actionCopy, v6, v7);
    if (v9 >= 9)
    {
      v12 = sub_1D461074C(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1D462C3E8(v8, v12, v13);
      }
    }

    if (self->_useAnalyticsDaemon)
    {
      v14 = objc_msgSend_asBegan(v8, v10, v11);

      if (v14)
      {
        v16 = sub_1D461074C(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1D460F000, v16, OS_LOG_TYPE_INFO, "mergeOrConsumeAction calling sendSignal:toChannel:withNullableSessionID:withPayload:", &v45, 2u);
        }

        v19 = objc_msgSend_textInputSessionId(v8, v17, v18);
        v22 = objc_msgSend_toDictionary(v8, v20, v21);
        objc_msgSend_sendSignal_toChannel_withNullableSessionID_withPayload_(IASignalAnalytics, v23, @"DidSessionBegin", @"LegacyTextInputActions", v19, v22);
      }
    }

    v24 = objc_msgSend_asEnd(v8, v10, v11);
    v27 = v24;
    if (v24)
    {
      if (self->_useLocalAnalytics)
      {
        v28 = objc_msgSend_keyboardTrialParameters(v24, v25, v26);
        objc_msgSend_setKeyboardTrialParameters_(self->_localServer, v29, v28);
      }

      objc_msgSend_flushAndSetLastAction_(self, v25, v27);
      Action = objc_msgSend_flushAndSetLastAction_(self, v30, 0);
      if (self->_useAnalyticsDaemon)
      {
        v32 = sub_1D461074C(Action);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1D460F000, v32, OS_LOG_TYPE_INFO, "mergeOrConsumeAction calling sendSignal:toChannel:withNullableSessionID:withPayload:", &v45, 2u);
        }

        v35 = objc_msgSend_textInputSessionId(v27, v33, v34);
        v38 = objc_msgSend_toDictionary(v27, v36, v37);
        objc_msgSend_sendSignal_toChannel_withNullableSessionID_withPayload_(IASignalAnalytics, v39, @"DidSessionEnd", @"LegacyTextInputActions", v35, v38);
      }
    }

    else
    {
      lastAction = self->_lastAction;
      if (lastAction)
      {
        v41 = objc_msgSend_mergeActionIfPossible_(lastAction, v25, v8);
        v42 = sub_1D461074C(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v44 = self->_lastAction;
          v45 = 134218499;
          v46 = v41;
          v47 = 2113;
          v48 = v44;
          v49 = 2113;
          v50 = v8;
          _os_log_debug_impl(&dword_1D460F000, v42, OS_LOG_TYPE_DEBUG, "[IATextInputActionsAnalytics] mergeOrConsumeAction: Merge result %lu lastAction:%{private}@ newAction:%{private}@", &v45, 0x20u);
        }

        if (!v41)
        {
          objc_msgSend_flushAndSetLastAction_(self, v43, v8);
        }
      }

      else
      {
        objc_storeStrong(&self->_lastAction, action);
      }
    }
  }
}

- (void)populateActionInputMode:(id)mode withInputMode:(id)inputMode
{
  modeCopy = mode;
  inputModeCopy = inputMode;
  v9 = inputModeCopy;
  if (inputModeCopy)
  {
    v10 = objc_msgSend_copy(inputModeCopy, v7, v8);
    objc_msgSend_setInputMode_(modeCopy, v11, v10);

    v14 = objc_msgSend_analyticsDelegate(self, v12, v13);
    v17 = objc_msgSend_flagOptions(v14, v15, v16);
    LODWORD(v10) = objc_msgSend_isWebSetInFlagOptions_(IATextInputActionsUtils, v18, v17);

    if (v10)
    {
      v21 = objc_msgSend_inputMode(modeCopy, v19, v20);
      v24 = objc_msgSend_keyboardType(v21, v22, v23);
      v27 = objc_msgSend_length(v24, v25, v26);

      v30 = objc_msgSend_inputMode(modeCopy, v28, v29);
      v33 = v30;
      if (v27)
      {
        v34 = objc_msgSend_keyboardType(v30, v31, v32);
        v36 = objc_msgSend_stringByAppendingString_(v34, v35, @"Web");
        v39 = objc_msgSend_inputMode(modeCopy, v37, v38);
        objc_msgSend_setKeyboardType_(v39, v40, v36);
      }

      else
      {
        objc_msgSend_setKeyboardType_(v30, v31, @"Web");
      }
    }
  }
}

- (void)didSessionEnd
{
  v3 = sub_1D461074C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C4A4();
  }

  v4 = objc_opt_class();
  v6 = objc_msgSend__instanceOfActionClass_(self, v5, v4);
  v9 = objc_msgSend_asEnd(v6, v7, v8);

  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);
  v13 = objc_msgSend_keyboardTrialParameters(WeakRetained, v11, v12);
  objc_msgSend_setKeyboardTrialParameters_(v9, v14, v13);

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1D46135E8;
  v17[3] = &unk_1E84897C8;
  v17[4] = self;
  v18 = v9;
  v16 = v9;
  dispatch_async(queue, v17);
}

- (void)didOther
{
  v2 = sub_1D461074C(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C4D8();
  }
}

- (void)didInsertText:(id)text withType:(int64_t)type relativeRangeBefore:(_NSRange)before withNumAlternatives:(int64_t)alternatives selectedTextBefore:(id)textBefore withInputMode:(id)mode
{
  length = before.length;
  v55 = *MEMORY[0x1E69E9840];
  textCopy = text;
  textBeforeCopy = textBefore;
  modeCopy = mode;
  v16 = sub_1D461074C(modeCopy);
  v17 = v16;
  if (textCopy)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v48 = objc_msgSend_description(modeCopy, v18, v19);
      v49 = 138478339;
      v50 = textCopy;
      v51 = 2113;
      v52 = textBeforeCopy;
      v53 = 2113;
      v54 = v48;
      _os_log_debug_impl(&dword_1D460F000, v17, OS_LOG_TYPE_DEBUG, "[IATextInputActionsAnalytics] didInsertText:%{private}@ selectedTextBefore:%{private}@ withInputMode:%{private}@", &v49, 0x20u);
    }

    if (objc_msgSend_length(textBeforeCopy, v20, v21))
    {
      objc_msgSend__didDeleteBackwardText_withType_shouldOverrideInputActionCountToZero_withInputMode_forceNotMarkedText_(self, v22, textBeforeCopy, type, 1, modeCopy, 1);
    }

    else if (!textBeforeCopy && length)
    {
      objc_msgSend__didDeleteBackwardCount_withType_shouldOverrideInputActionCountToZero_withInputMode_forceNotMarkedText_(self, v22, length, type, 1, modeCopy, 1);
    }

    v23 = objc_opt_class();
    v25 = objc_msgSend__instanceOfActionClass_(self, v24, v23);
    v17 = objc_msgSend_asInsertion(v25, v26, v27);

    objc_msgSend_setTextInputActionsType_(v17, v28, type);
    objc_msgSend_setWithAlternativesCount_(v17, v29, alternatives > 0);
    objc_msgSend_populateActionInputMode_withInputMode_(self, v30, v17, modeCopy);
    v32 = objc_msgSend_getDetailsForString_(IAStringDetails, v31, textCopy);
    v35 = objc_msgSend_characters(v32, v33, v34);
    objc_msgSend_setInsertedTextLength_(v17, v36, v35);
    v39 = objc_msgSend_emojiCharacters(v32, v37, v38);
    objc_msgSend_setInsertedEmojiCount_(v17, v40, v39);
    if (objc_msgSend_textIsTooLong(v32, v41, v42))
    {
      v45 = objc_msgSend_clientSideSessionErrors(v17, v43, v44);
      objc_msgSend_appendString_(v45, v46, @"T");
    }

    objc_msgSend__didInsertTextAction_(self, v47, v17);
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1D462C50C();
  }
}

- (void)_didInsertTextAction:(id)action
{
  actionCopy = action;
  v7 = objc_msgSend_flagOptions(actionCopy, v5, v6);
  if (objc_msgSend_isEmojiSearchSetInFlagOptions_(IATextInputActionsUtils, v8, v7))
  {
    if (objc_msgSend_source(actionCopy, v9, v10) == 5)
    {
      objc_msgSend_setSource_(actionCopy, v11, 4);
      if (objc_msgSend_insertedEmojiCount(actionCopy, v12, v13) == 1 && objc_msgSend_insertedTextLength(actionCopy, v14, v15) == 1)
      {
        objc_msgSend_setInputActionCountFromMergedActions_(actionCopy, v16, 1);
      }
    }
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1D4613A08;
  v19[3] = &unk_1E84897C8;
  v19[4] = self;
  v20 = actionCopy;
  v18 = actionCopy;
  dispatch_async(queue, v19);
}

- (void)_didDeleteBackwardTextDetails:(id)details withType:(int64_t)type shouldOverrideInputActionCountToZero:(BOOL)zero withInputMode:(id)mode forceNotMarkedText:(BOOL)text
{
  textCopy = text;
  zeroCopy = zero;
  detailsCopy = details;
  modeCopy = mode;
  v14 = modeCopy;
  if (detailsCopy)
  {
    v15 = objc_opt_class();
    v17 = objc_msgSend__instanceOfActionClass_(self, v16, v15);
    v20 = objc_msgSend_asDeletion(v17, v18, v19);

    objc_msgSend_setTextInputActionsType_(v20, v21, type);
    v24 = objc_msgSend_characters(detailsCopy, v22, v23);
    objc_msgSend_setRemovedTextLength_(v20, v25, v24);
    v28 = objc_msgSend_emojiCharacters(detailsCopy, v26, v27);
    objc_msgSend_setRemovedEmojiCount_(v20, v29, v28);
    if (objc_msgSend_textIsTooLong(detailsCopy, v30, v31))
    {
      v34 = objc_msgSend_clientSideSessionErrors(v20, v32, v33);
      objc_msgSend_appendString_(v34, v35, @"T");
    }

    objc_msgSend_populateActionInputMode_withInputMode_(self, v32, v20, v14);
    if (zeroCopy)
    {
      v38 = objc_msgSend_inputActionCount(v20, v36, v37);
      objc_msgSend_setInputActionCountFromMergedActions_(v20, v39, -v38);
    }

    if (textCopy)
    {
      v40 = objc_msgSend_flagOptions(v20, v36, v37);
      objc_msgSend_setFlagOptions_(v20, v41, v40 & 0xFFFFFFFFFFFFFFFDLL);
    }

    objc_msgSend__didDeleteBackwardAction_(self, v36, v20);
  }

  else
  {
    v42 = sub_1D461074C(modeCopy);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1D462C59C();
    }
  }
}

- (void)_didDeleteBackwardText:(id)text withType:(int64_t)type shouldOverrideInputActionCountToZero:(BOOL)zero withInputMode:(id)mode forceNotMarkedText:(BOOL)markedText
{
  markedTextCopy = markedText;
  zeroCopy = zero;
  modeCopy = mode;
  v14 = modeCopy;
  if (text)
  {
    v15 = objc_msgSend_getDetailsForString_(IAStringDetails, v13, text);
    objc_msgSend__didDeleteBackwardTextDetails_withType_shouldOverrideInputActionCountToZero_withInputMode_forceNotMarkedText_(self, v16, v15, type, zeroCopy, v14, markedTextCopy);
  }

  else
  {
    v17 = sub_1D461074C(modeCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1D462C59C();
    }
  }
}

- (void)didDeleteBackwardText:(id)text
{
  textCopy = text;
  v5 = sub_1D461074C(textCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C5D8();
  }

  objc_msgSend_didDeleteBackwardText_withType_(self, v6, textCopy, 1);
}

- (void)didDeleteBackwardText:(id)text withType:(int64_t)type
{
  textCopy = text;
  v7 = sub_1D461074C(textCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C64C();
  }

  objc_msgSend__didDeleteBackwardText_withType_shouldOverrideInputActionCountToZero_withInputMode_forceNotMarkedText_(self, v8, textCopy, type, 0, 0, 0);
}

- (void)didDeleteBackwardText:(id)text withType:(int64_t)type withInputMode:(id)mode
{
  v23 = *MEMORY[0x1E69E9840];
  textCopy = text;
  modeCopy = mode;
  v10 = sub_1D461074C(modeCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = objc_msgSend_stringForType_(IATextInputActionsUtils, v11, type);
    v16 = objc_msgSend_description(modeCopy, v14, v15);
    v17 = 138740483;
    v18 = textCopy;
    v19 = 2113;
    v20 = v13;
    v21 = 2113;
    v22 = v16;
    _os_log_debug_impl(&dword_1D460F000, v10, OS_LOG_TYPE_DEBUG, "[IATextInputActionsAnalytics] didDeleteBackwardText:%{sensitive}@ withType:%{private}@ withInputMode:'%{private}@'", &v17, 0x20u);
  }

  objc_msgSend__didDeleteBackwardText_withType_shouldOverrideInputActionCountToZero_withInputMode_forceNotMarkedText_(self, v12, textCopy, type, 0, modeCopy, 0);
}

- (void)_didDeleteBackwardCount:(unint64_t)count withType:(int64_t)type shouldOverrideInputActionCountToZero:(BOOL)zero withInputMode:(id)mode forceNotMarkedText:(BOOL)text
{
  zeroCopy = zero;
  modeCopy = mode;
  v12 = sub_1D461074C(modeCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C6EC(type, count);
  }

  v13 = objc_alloc_init(IAStringDetails);
  objc_msgSend_setCharacters_(v13, v14, count);
  objc_msgSend__didDeleteBackwardTextDetails_withType_shouldOverrideInputActionCountToZero_withInputMode_forceNotMarkedText_(self, v15, v13, type, zeroCopy, modeCopy, 0);
}

- (void)_didDeleteBackwardAction:(id)action
{
  actionCopy = action;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1D4613FC4;
  v7[3] = &unk_1E84897C8;
  v7[4] = self;
  v8 = actionCopy;
  v6 = actionCopy;
  dispatch_async(queue, v7);
}

- (void)didChangeToSelection:(_NSRange)selection relativeRangeBefore:(_NSRange)before
{
  length = before.length;
  location = before.location;
  v6 = selection.length;
  v7 = selection.location;
  v30 = *MEMORY[0x1E69E9840];
  if (selection.length != before.length || selection.location != before.location)
  {
    v9 = sub_1D461074C(self);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218752;
      v23 = v7;
      v24 = 2048;
      v25 = v6;
      v26 = 2048;
      v27 = location;
      v28 = 2048;
      v29 = length;
      _os_log_debug_impl(&dword_1D460F000, v9, OS_LOG_TYPE_DEBUG, "[IATextInputActionsAnalytics] didChangeToSelection:(%lu, %lu) rangeBefore:(%lu, %lu)", buf, 0x2Au);
    }

    v10 = objc_opt_class();
    v12 = objc_msgSend__instanceOfActionClass_(self, v11, v10);
    v15 = objc_msgSend_asSelection(v12, v13, v14);

    objc_msgSend_setRelativeRangeBefore_(v15, v16, location, length);
    objc_msgSend_setRangeAfter_(v15, v17, v7, v6);
    queue = self->_queue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1D4614188;
    v20[3] = &unk_1E84897C8;
    v20[4] = self;
    v21 = v15;
    v19 = v15;
    dispatch_async(queue, v20);
  }
}

- (void)didCopy:(id)copy
{
  v4 = sub_1D461074C(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C790();
  }

  v5 = objc_opt_class();
  v7 = objc_msgSend__instanceOfActionClass_(self, v6, v5);
  v10 = objc_msgSend_asCopy(v7, v8, v9);

  objc_msgSend_setTextInputActionsType_(v10, v11, 11);
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1D4614294;
  v14[3] = &unk_1E84897C8;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  dispatch_async(queue, v14);
}

- (void)didCut:(id)cut
{
  v4 = sub_1D461074C(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C7C4();
  }

  v5 = objc_opt_class();
  v7 = objc_msgSend__instanceOfActionClass_(self, v6, v5);
  v10 = objc_msgSend_asCut(v7, v8, v9);

  objc_msgSend_setTextInputActionsType_(v10, v11, 10);
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1D46143A0;
  v14[3] = &unk_1E84897C8;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  dispatch_async(queue, v14);
}

- (void)didPaste:(id)paste
{
  v4 = sub_1D461074C(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C7F8();
  }

  v5 = objc_opt_class();
  v7 = objc_msgSend__instanceOfActionClass_(self, v6, v5);
  v10 = objc_msgSend_asPaste(v7, v8, v9);

  objc_msgSend_setTextInputActionsType_(v10, v11, 12);
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1D46144AC;
  v14[3] = &unk_1E84897C8;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  dispatch_async(queue, v14);
}

- (void)didUndo
{
  v3 = sub_1D461074C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C82C();
  }

  v4 = objc_opt_class();
  v6 = objc_msgSend__instanceOfActionClass_(self, v5, v4);
  v9 = objc_msgSend_asUndo(v6, v7, v8);

  objc_msgSend_setTextInputActionsType_(v9, v10, 13);
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1D46145B8;
  v13[3] = &unk_1E84897C8;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  dispatch_async(queue, v13);
}

- (void)didRedo
{
  v3 = sub_1D461074C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C860();
  }

  v4 = objc_opt_class();
  v6 = objc_msgSend__instanceOfActionClass_(self, v5, v4);
  v9 = objc_msgSend_asRedo(v6, v7, v8);

  objc_msgSend_setTextInputActionsType_(v9, v10, 14);
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1D46146C4;
  v13[3] = &unk_1E84897C8;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  dispatch_async(queue, v13);
}

- (void)_didReplacementForText:(id)text withText:(id)withText allowNilText:(BOOL)nilText allowEmptyText:(BOOL)emptyText allowNilReplacement:(BOOL)replacement withSource:(int64_t)source withType:(int64_t)type withInputActionCount:(int64_t)self0
{
  textCopy = text;
  withTextCopy = withText;
  v20 = withTextCopy;
  if (textCopy)
  {
    v21 = textCopy;
  }

  else
  {
    v21 = &stru_1F4FDAA18;
  }

  if (textCopy || nilText)
  {
    v23 = objc_msgSend_length(v21, v18, v19);
    if (v23 || emptyText)
    {
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = &stru_1F4FDAA18;
      }

      if (v20 || replacement)
      {
        v25 = objc_opt_class();
        v27 = objc_msgSend__instanceOfActionClass_(self, v26, v25);
        v30 = objc_msgSend_asReplaceText(v27, v28, v29);

        objc_msgSend_setSource_(v30, v31, source);
        objc_msgSend_setTextInputActionsType_(v30, v32, type);
        v34 = objc_msgSend_getDetailsForString_(IAStringDetails, v33, v21);
        v37 = objc_msgSend_characters(v34, v35, v36);
        objc_msgSend_setRemovedTextLength_(v30, v38, v37);
        v41 = objc_msgSend_emojiCharacters(v34, v39, v40);
        objc_msgSend_setRemovedEmojiCount_(v30, v42, v41);
        if (objc_msgSend_textIsTooLong(v34, v43, v44))
        {
          v47 = objc_msgSend_clientSideSessionErrors(v30, v45, v46);
          objc_msgSend_appendString_(v47, v48, @"T");
        }

        v50 = objc_msgSend_getDetailsForString_(IAStringDetails, v49, v22);
        v53 = objc_msgSend_characters(v50, v51, v52);
        objc_msgSend_setInsertedTextLength_(v30, v54, v53);
        v57 = objc_msgSend_emojiCharacters(v50, v55, v56);
        objc_msgSend_setInsertedEmojiCount_(v30, v58, v57);
        if (objc_msgSend_textIsTooLong(v50, v59, v60))
        {
          v63 = objc_msgSend_clientSideSessionErrors(v30, v61, v62);
          objc_msgSend_appendString_(v63, v64, @"T");
        }

        v65 = objc_msgSend_inputActionCount(v30, v61, v62);
        objc_msgSend_setInputActionCountFromMergedActions_(v30, v66, count - v65);
        queue = self->_queue;
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = sub_1D46149B0;
        v69[3] = &unk_1E84897C8;
        v69[4] = self;
        v70 = v30;
        v68 = v30;
        dispatch_async(queue, v69);
      }

      else
      {
        v22 = sub_1D461074C(v23);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1D462C97C();
        }
      }
    }

    else
    {
      v24 = sub_1D461074C(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1D462C914();
      }

      v22 = v20;
    }
  }

  else
  {
    v22 = sub_1D461074C(withTextCopy);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1D462C894();
    }

    v21 = v20;
  }
}

- (void)didCandidateBarReplacementForText:(id)text withText:(id)withText
{
  textCopy = text;
  withTextCopy = withText;
  v8 = sub_1D461074C(withTextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C9F8();
  }

  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v9, textCopy, withTextCopy, 1, 1, 0, 7, 1, 1);
}

- (void)didCalloutBarReplacementForText:(id)text withText:(id)withText
{
  textCopy = text;
  withTextCopy = withText;
  v8 = sub_1D461074C(withTextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CA60();
  }

  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v9, textCopy, withTextCopy, 0, 0, 0, 8, 1, 1);
}

- (void)didAutocorrectReplacementForText:(id)text withText:(id)withText
{
  textCopy = text;
  withTextCopy = withText;
  v8 = sub_1D461074C(withTextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CAC8();
  }

  v11 = objc_msgSend_analyticsDelegate(self, v9, v10);
  v14 = objc_msgSend_source(v11, v12, v13);
  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v15, textCopy, withTextCopy, 0, 0, 1, v14, 6, 1);
}

- (void)didAutocorrectTapOnCompletionReplacementForText:(id)text withText:(id)withText
{
  textCopy = text;
  withTextCopy = withText;
  v8 = sub_1D461074C(withTextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CB30();
  }

  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v9, textCopy, withTextCopy, 0, 0, 1, 12, 6, 1);
}

- (void)didInlineCompletionReplacementForText:(id)text withText:(id)withText
{
  textCopy = text;
  withTextCopy = withText;
  v8 = sub_1D461074C(withTextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CB98();
  }

  v11 = objc_msgSend_analyticsDelegate(self, v9, v10);
  v14 = objc_msgSend_source(v11, v12, v13);
  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v15, textCopy, withTextCopy, 1, 1, 0, v14, 15, 1);
}

- (void)didInlineCompletionTapOnCompletionReplacementForText:(id)text withText:(id)withText
{
  textCopy = text;
  withTextCopy = withText;
  v8 = sub_1D461074C(withTextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CC00();
  }

  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v9, textCopy, withTextCopy, 1, 1, 0, 12, 15, 1);
}

- (void)didRevisionBubbleReplacementForText:(id)text withText:(id)withText
{
  textCopy = text;
  withTextCopy = withText;
  v8 = sub_1D461074C(withTextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CC68();
  }

  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v9, textCopy, withTextCopy, 0, 0, 0, 11, 1, 0);
}

- (void)didRevisionBubbleTap
{
  v3 = sub_1D461074C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CCD0();
  }

  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v4, &stru_1F4FDAA18, &stru_1F4FDAA18, 0, 1, 0, 11, 1, 1);
}

- (void)didCandidateBarAction
{
  v3 = objc_opt_class();
  v5 = objc_msgSend__instanceOfActionClass_(self, v4, v3);
  v8 = objc_msgSend_asReplaceText(v5, v6, v7);

  objc_msgSend_setTextInputActionsType_(v8, v9, 1);
  objc_msgSend_setSource_(v8, v10, 7);
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1D4614FD8;
  v13[3] = &unk_1E84897C8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)didReplaceWithCandidate:(int64_t)candidate
{
  v5 = sub_1D461074C(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CD04(candidate, v5);
  }

  v6 = objc_opt_class();
  v8 = objc_msgSend__instanceOfActionClass_(self, v7, v6);
  v11 = objc_msgSend_asReplaceWithCandidate(v8, v9, v10);

  objc_msgSend_setReplaceWithCandidateType_(v11, v12, candidate);
  v15 = objc_msgSend_inputActionCount(v11, v13, v14);
  objc_msgSend_setInputActionCountFromMergedActions_(v11, v16, -v15);
  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1D4615100;
  v19[3] = &unk_1E84897C8;
  v19[4] = self;
  v20 = v11;
  v18 = v11;
  dispatch_async(queue, v19);
}

- (void)didCompositionReplacementForText:(id)text withText:(id)withText
{
  textCopy = text;
  withTextCopy = withText;
  v8 = sub_1D461074C(withTextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CD9C();
  }

  v11 = objc_msgSend_analyticsDelegate(self, v9, v10);
  v14 = objc_msgSend_source(v11, v12, v13);
  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v15, textCopy, withTextCopy, 0, 0, 0, v14, 17, 1);
}

- (void)didDecompositionReplacementForText:(id)text withText:(id)withText
{
  textCopy = text;
  withTextCopy = withText;
  v8 = sub_1D461074C(withTextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CE04();
  }

  v11 = objc_msgSend_analyticsDelegate(self, v9, v10);
  v14 = objc_msgSend_source(v11, v12, v13);
  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v15, textCopy, withTextCopy, 0, 0, 0, v14, 18, 1);
}

- (void)didConversionForMarkedText:(id)text withText:(id)withText
{
  textCopy = text;
  withTextCopy = withText;
  v10 = withTextCopy;
  if (textCopy && withTextCopy)
  {
    v11 = objc_msgSend_length(textCopy, v8, v9);
    if (v11 && (v11 = objc_msgSend_length(v10, v12, v13)) != 0)
    {
      v16 = objc_msgSend_analyticsDelegate(self, v14, v15);
      v19 = objc_msgSend_source(v16, v17, v18);

      if (v19 <= 0xC && ((1 << v19) & 0x10B8) != 0)
      {
        v23 = objc_msgSend_analyticsDelegate(self, v21, v22);
        v26 = objc_msgSend_flagOptions(v23, v24, v25);
        isMarkedTextSetInFlagOptions = objc_msgSend_isMarkedTextSetInFlagOptions_(IATextInputActionsUtils, v27, v26);

        if (isMarkedTextSetInFlagOptions)
        {
          v30 = sub_1D461074C(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_1D462CE6C();
          }
        }

        v31 = objc_opt_class();
        v33 = objc_msgSend__instanceOfActionClass_(self, v32, v31);
        v36 = objc_msgSend_asInsertion(v33, v34, v35);

        objc_msgSend_setTextInputActionsType_(v36, v37, 7);
        v39 = objc_msgSend_getDetailsForString_(IAStringDetails, v38, v10);
        v42 = objc_msgSend_characters(v39, v40, v41);
        objc_msgSend_setInsertedTextLength_(v36, v43, v42);
        v46 = objc_msgSend_emojiCharacters(v39, v44, v45);
        objc_msgSend_setInsertedEmojiCount_(v36, v47, v46);
        if (objc_msgSend_textIsTooLong(v39, v48, v49))
        {
          v52 = objc_msgSend_clientSideSessionErrors(v36, v50, v51);
          objc_msgSend_appendString_(v52, v53, @"T");
        }

        v54 = objc_msgSend_inputActionCount(v36, v50, v51);
        objc_msgSend_setInputActionCountFromMergedActions_(v36, v55, 1 - v54);
        queue = self->_queue;
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = sub_1D4615550;
        v58[3] = &unk_1E84897C8;
        v58[4] = self;
        v59 = v36;
        v57 = v36;
        dispatch_async(queue, v58);

        goto LABEL_18;
      }

      v39 = sub_1D461074C(v20);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v39 = sub_1D461074C(v11);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }
    }

    sub_1D462CED4();
    goto LABEL_18;
  }

  v39 = sub_1D461074C(withTextCopy);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    sub_1D462CF3C();
  }

LABEL_18:
}

- (void)didCommitText:(id)text
{
  textCopy = text;
  v7 = textCopy;
  if (textCopy && (textCopy = objc_msgSend_length(textCopy, v5, v6)) != 0)
  {
    v8 = sub_1D461074C(textCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462CFA4();
    }

    v9 = objc_opt_class();
    v11 = objc_msgSend__instanceOfActionClass_(self, v10, v9);
    v14 = objc_msgSend_asCommitText(v11, v12, v13);

    v16 = objc_msgSend_getDetailsForString_(IAStringDetails, v15, v7);
    v19 = objc_msgSend_characters(v16, v17, v18);
    objc_msgSend_setInsertedTextLength_(v14, v20, v19);
    v23 = objc_msgSend_emojiCharacters(v16, v21, v22);
    objc_msgSend_setInsertedEmojiCount_(v14, v24, v23);
    if (objc_msgSend_textIsTooLong(v16, v25, v26))
    {
      v29 = objc_msgSend_clientSideSessionErrors(v14, v27, v28);
      objc_msgSend_appendString_(v29, v30, @"T");
    }

    queue = self->_queue;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1D4615710;
    v33[3] = &unk_1E84897C8;
    v33[4] = self;
    v34 = v14;
    v32 = v14;
    dispatch_async(queue, v33);
  }

  else
  {
    v16 = sub_1D461074C(textCopy);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1D462D050();
    }
  }
}

- (void)didKeyboardDockItemButtonPress:(unint64_t)press buttonType:(unint64_t)type buttonSize:(CGSize)size touchDown:(CGPoint)down touchUp:(CGPoint)up touchDuration:(double)duration inputSource:(int64_t)source inputType:(int64_t)self0 uiInterfaceOrientation:(int64_t)self1
{
  y = up.y;
  x = up.x;
  v18 = down.y;
  v19 = down.x;
  height = size.height;
  width = size.width;
  v70 = *MEMORY[0x1E69E9840];
  v24 = sub_1D461074C(self);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v47 = objc_msgSend_stringForKeyboardDockItemButtonPressResult_(IATextInputActionsUtils, v25, press);
    v49 = objc_msgSend_stringForKeyboardDockItemButtonType_(IATextInputActionsUtils, v48, type);
    *buf = 138479875;
    v53 = v47;
    v54 = 2113;
    v55 = v49;
    v56 = 2048;
    v57 = width;
    v58 = 2048;
    v59 = height;
    v60 = 2048;
    v61 = v19;
    v62 = 2048;
    v63 = v18;
    v64 = 2048;
    v65 = x;
    v66 = 2048;
    v67 = y;
    v68 = 2048;
    durationCopy = duration;
    _os_log_debug_impl(&dword_1D460F000, v24, OS_LOG_TYPE_DEBUG, "[IATextInputActionsAnalytics] didKeyboardDockItemButtonPress:%{private}@ buttonType:%{private}@ buttonSize:(%fw %fh) touchDown:(%f,%f) touchUp:(%f,%f) touchDuration:%f", buf, 0x5Cu);
  }

  v26 = objc_opt_class();
  v28 = objc_msgSend__instanceOfActionClass_(self, v27, v26);
  v31 = objc_msgSend_asKeyboardDockItemButtonPress(v28, v29, v30);

  objc_msgSend_setSource_(v31, v32, source);
  objc_msgSend_setTextInputActionsType_(v31, v33, inputType);
  objc_msgSend_setButtonPressResult_(v31, v34, press);
  objc_msgSend_setButtonType_(v31, v35, type);
  objc_msgSend_setUiOrientation_(v31, v36, orientation);
  objc_msgSend_setButtonSize_(v31, v37, v38, width, height);
  objc_msgSend_setTouchDownPoint_(v31, v39, v40, v19, v18);
  objc_msgSend_setTouchUpPoint_(v31, v41, v42, x, y);
  objc_msgSend_setTouchDuration_(v31, v43, v44, duration);
  queue = self->_queue;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = sub_1D46159C4;
  v50[3] = &unk_1E84897C8;
  v50[4] = self;
  v51 = v31;
  v46 = v31;
  dispatch_async(queue, v50);
}

- (void)didGlomojiTap:(id)tap newInputMode:(id)mode
{
  modeCopy = mode;
  tapCopy = tap;
  v8 = sub_1D4620EF8(tapCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D08C();
  }

  v9 = objc_opt_class();
  v11 = objc_msgSend__instanceOfActionClass_(self, v10, v9);
  v14 = objc_msgSend_asGlomojiTap(v11, v12, v13);

  objc_msgSend_setGlomojiType_(v14, v15, 0);
  objc_msgSend_setOriginalInputMode_(v14, v16, tapCopy);

  objc_msgSend_setUpdatedInputMode_(v14, v17, modeCopy);
  queue = self->_queue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1D4615B0C;
  v20[3] = &unk_1E84897C8;
  v20[4] = self;
  v21 = v14;
  v19 = v14;
  dispatch_async(queue, v20);
}

- (void)didGlomojiTap:(unint64_t)tap originalInputMode:(id)mode newInputMode:(id)inputMode
{
  inputModeCopy = inputMode;
  modeCopy = mode;
  v10 = sub_1D4620EF8(modeCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D08C();
  }

  v11 = objc_opt_class();
  v13 = objc_msgSend__instanceOfActionClass_(self, v12, v11);
  v16 = objc_msgSend_asGlomojiTap(v13, v14, v15);

  objc_msgSend_setGlomojiType_(v16, v17, tap);
  objc_msgSend_setOriginalInputMode_(v16, v18, modeCopy);

  objc_msgSend_setUpdatedInputMode_(v16, v19, inputModeCopy);
  queue = self->_queue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1D4615C58;
  v22[3] = &unk_1E84897C8;
  v22[4] = self;
  v23 = v16;
  v21 = v16;
  dispatch_async(queue, v22);
}

- (void)didKBMenuAppear:(id)appear
{
  appearCopy = appear;
  v5 = sub_1D4620EF8(appearCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D0C0();
  }

  v6 = objc_opt_class();
  v8 = objc_msgSend__instanceOfActionClass_(self, v7, v6);
  v11 = objc_msgSend_asKBMenuAppear(v8, v9, v10);

  objc_msgSend_setGlomojiType_(v11, v12, 0);
  objc_msgSend_setOriginalInputMode_(v11, v13, appearCopy);

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1D4615D7C;
  v16[3] = &unk_1E84897C8;
  v16[4] = self;
  v17 = v11;
  v15 = v11;
  dispatch_async(queue, v16);
}

- (void)didKBMenuAppear:(unint64_t)appear originalInputMode:(id)mode
{
  modeCopy = mode;
  v7 = sub_1D4620EF8(modeCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D0C0();
  }

  v8 = objc_opt_class();
  v10 = objc_msgSend__instanceOfActionClass_(self, v9, v8);
  v13 = objc_msgSend_asKBMenuAppear(v10, v11, v12);

  objc_msgSend_setGlomojiType_(v13, v14, appear);
  objc_msgSend_setOriginalInputMode_(v13, v15, modeCopy);

  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1D4615EAC;
  v18[3] = &unk_1E84897C8;
  v18[4] = self;
  v19 = v13;
  v17 = v13;
  dispatch_async(queue, v18);
}

- (void)didKBMenuInteraction:(unint64_t)interaction selectedAction:(unint64_t)action newInputMode:(id)mode
{
  modeCopy = mode;
  v9 = sub_1D4620EF8(modeCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D0F4();
  }

  v10 = objc_opt_class();
  v12 = objc_msgSend__instanceOfActionClass_(self, v11, v10);
  v15 = objc_msgSend_asKBMenuInteraction(v12, v13, v14);

  objc_msgSend_setKBMenuInteractionSource_(v15, v16, interaction);
  objc_msgSend_setKBMenuSelectedAction_(v15, v17, action);
  objc_msgSend_setUpdatedInputMode_(v15, v18, modeCopy);

  queue = self->_queue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1D4615FEC;
  v21[3] = &unk_1E84897C8;
  v21[4] = self;
  v22 = v15;
  v20 = v15;
  dispatch_async(queue, v21);
}

- (void)didKBMenuDismiss:(unint64_t)dismiss
{
  v5 = sub_1D4620EF8(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D128();
  }

  v6 = objc_opt_class();
  v8 = objc_msgSend__instanceOfActionClass_(self, v7, v6);
  v11 = objc_msgSend_asKBMenuDismiss(v8, v9, v10);

  objc_msgSend_setKBMenuDismissSource_(v11, v12, dismiss);
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1D46160FC;
  v15[3] = &unk_1E84897C8;
  v15[4] = self;
  v16 = v11;
  v14 = v11;
  dispatch_async(queue, v15);
}

- (void)didDictationBegin:(BOOL)begin usesMultiModalDictation:(BOOL)dictation
{
  v7 = sub_1D461074C(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D15C();
  }

  v8 = objc_opt_class();
  v10 = objc_msgSend__instanceOfActionClass_(self, v9, v8);
  v13 = objc_msgSend_asDictationBegan(v10, v11, v12);

  objc_msgSend_setSource_(v13, v14, 1);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1D4616220;
  block[3] = &unk_1E8489810;
  beginCopy = begin;
  dictationCopy = dictation;
  v18 = v13;
  selfCopy = self;
  v16 = v13;
  dispatch_async(queue, block);
}

- (void)didDictationEnd
{
  v3 = sub_1D461074C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D190();
  }

  v4 = objc_opt_class();
  v6 = objc_msgSend__instanceOfActionClass_(self, v5, v4);
  v9 = objc_msgSend_asDictationEnded(v6, v7, v8);

  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1D4616380;
  v12[3] = &unk_1E84897C8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(queue, v12);
}

- (void)_didInsertionKeyPressOfKey:(id)key withType:(int64_t)type
{
  v6 = objc_opt_class();
  v8 = objc_msgSend__instanceOfActionClass_(self, v7, v6);
  v19 = objc_msgSend_asInsertion(v8, v9, v10);

  objc_msgSend_setTextInputActionsType_(v19, v11, type);
  objc_msgSend_setInsertedTextLength_(v19, v12, 0);
  objc_msgSend_setInsertedEmojiCount_(v19, v13, 0);
  v16 = objc_msgSend_inputActionCount(v19, v14, v15);
  objc_msgSend_setInputActionCountFromMergedActions_(v19, v17, 1 - v16);
  objc_msgSend__didInsertTextAction_(self, v18, v19);
}

- (void)didInsertionKeyPress
{
  v3 = sub_1D461074C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D1C4();
  }

  objc_msgSend__didInsertionKeyPressOfKey_withType_(self, v4, 0, 1);
}

- (void)didInsertionKeyPressOfKey:(id)key withType:(int64_t)type
{
  keyCopy = key;
  v7 = sub_1D461074C(keyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D1F8();
  }

  objc_msgSend__didInsertionKeyPressOfKey_withType_(self, v8, keyCopy, type);
}

- (void)_didDeletionKeyPressOfKey:(id)key withType:(int64_t)type
{
  v6 = objc_opt_class();
  v8 = objc_msgSend__instanceOfActionClass_(self, v7, v6);
  v19 = objc_msgSend_asDeletion(v8, v9, v10);

  objc_msgSend_setTextInputActionsType_(v19, v11, type);
  objc_msgSend_setRemovedTextLength_(v19, v12, 0);
  objc_msgSend_setRemovedEmojiCount_(v19, v13, 0);
  v16 = objc_msgSend_inputActionCount(v19, v14, v15);
  objc_msgSend_setInputActionCountFromMergedActions_(v19, v17, 1 - v16);
  objc_msgSend__didDeleteBackwardAction_(self, v18, v19);
}

- (void)didDeletionKeyPress
{
  v3 = sub_1D461074C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D298();
  }

  objc_msgSend__didDeletionKeyPressOfKey_withType_(self, v4, 0, 1);
}

- (void)didDeletionKeyPressOfKey:(id)key withType:(int64_t)type
{
  keyCopy = key;
  v7 = sub_1D461074C(keyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D2CC();
  }

  objc_msgSend__didDeletionKeyPressOfKey_withType_(self, v8, keyCopy, type);
}

- (IATextInputActionsAnalytics)initWithAnalyticsMetadataObserver:(id)observer withEventHandler:(id)handler
{
  v20.receiver = self;
  v20.super_class = IATextInputActionsAnalytics;
  handlerCopy = handler;
  observerCopy = observer;
  v7 = [(IATextInputActionsAnalytics *)&v20 init];
  *&v7->_useAnalyticsDaemon = 256;
  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v9 = dispatch_queue_create("com.apple.inputAnalytics.IATextInputActionsAnalytics", v8);
  queue = v7->_queue;
  v7->_queue = v9;

  lastAction = v7->_lastAction;
  v7->_lastAction = 0;

  objc_storeWeak(&v7->_analyticsDelegate, observerCopy);
  v12 = [IATextInputActionsServer alloc];
  v15 = objc_msgSend_queue(v7, v13, v14, v20.receiver, v20.super_class);
  v17 = objc_msgSend_initWithQueue_eventHandler_(v12, v16, v15, handlerCopy);

  localServer = v7->_localServer;
  v7->_localServer = v17;

  return v7;
}

- (IATextInputActionsAnalytics)initWithAnalyticsMetadataObserver:(id)observer withServiceName:(id)name
{
  v32 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = IATextInputActionsAnalytics;
  nameCopy = name;
  observerCopy = observer;
  v7 = [(IATextInputActionsAnalytics *)&v25 init];
  *&v7->_useAnalyticsDaemon = 1;
  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v9 = dispatch_queue_create("com.apple.inputAnalytics.IATextInputActionsAnalytics", v8);
  queue = v7->_queue;
  v7->_queue = v9;

  lastAction = v7->_lastAction;
  v7->_lastAction = 0;

  objc_storeWeak(&v7->_analyticsDelegate, observerCopy);
  v12 = [IAXPCClient alloc];
  v14 = objc_msgSend_initWithServiceName_(v12, v13, nameCopy, v25.receiver, v25.super_class);

  xpcClient = v7->_xpcClient;
  v7->_xpcClient = v14;

  v17 = sub_1D461074C(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = v7->_xpcClient;
    v23 = objc_msgSend_server(v20, v21, v22);
    *buf = 138478339;
    v27 = v19;
    v28 = 2048;
    v29 = v20;
    v30 = 2048;
    v31 = v23;
    _os_log_impl(&dword_1D460F000, v17, OS_LOG_TYPE_INFO, "initialized new %{private}@ xpc client 0x%lx with server 0x%lx", buf, 0x20u);
  }

  return v7;
}

- (void)dispatchToAnalyticsQueue:(id)queue
{
  queueCopy = queue;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1D4616AA4;
  block[3] = &unk_1E8489838;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(queue, block);
}

@end