@interface _LTTextTranslationRequest
- (NSArray)ignoringAttributes;
- (id)_getStoredAttributesForRequestIdentifier:(id)identifier alignmentIdentifier:(id)alignmentIdentifier;
- (id)_paragraphRequestForText:(id)text;
- (id)_replaceAdaptiveImageGlyphsIfNeededForText:(id)text requestUniqueID:(id)d;
- (id)serviceDelegate;
- (void)_addAlignmentAttributesToResult:(id)result requestIdentifier:(id)identifier;
- (void)_callCompletionHandlersWithResult:(id)result error:(id)error;
- (void)_cleanUpTemporaryStorage;
- (void)_constructFinalParagraphResult;
- (void)_handleParagraphResponse:(id)response error:(id)error;
- (void)_saveAttributes:(id)attributes forRequestUniqueID:(id)d alignmentIdentifier:(id)identifier;
- (void)_startTranslationWithService:(id)service done:(id)done;
- (void)_submitMessagesSELFLoggingIfNeededForInvocationStart:(BOOL)start error:(id)error;
- (void)_translationFailedWithError:(id)error;
- (void)setText:(id)text;
- (void)translationDidFinishWithError:(id)error;
- (void)translatorDidTranslate:(id)translate;
@end

@implementation _LTTextTranslationRequest

- (NSArray)ignoringAttributes
{
  taskHint = [(_LTTranslationRequest *)self taskHint];
  ignoringAttributes = self->_ignoringAttributes;
  if (taskHint == 11)
  {
    if (!ignoringAttributes)
    {
      ignoringAttributes = MEMORY[0x277CBEBF8];
    }

    v5 = [(NSArray *)ignoringAttributes arrayByAddingObject:@"CTAdaptiveImageProvider"];
  }

  else
  {
    v5 = [(NSArray *)ignoringAttributes copy];
  }

  return v5;
}

- (id)_replaceAdaptiveImageGlyphsIfNeededForText:(id)text requestUniqueID:(id)d
{
  textCopy = text;
  dCopy = d;
  preserveGenmoji = [(_LTTextTranslationRequest *)self preserveGenmoji];
  if ((preserveGenmoji & 1) == 0)
  {
    v24 = _LTOSLogTranslationEngine(preserveGenmoji, v9);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [_LTTextTranslationRequest _replaceAdaptiveImageGlyphsIfNeededForText:requestUniqueID:];
    }

    goto LABEL_9;
  }

  if (([textCopy lt_containsSubstringWithAttribute:@"CTAdaptiveImageProvider"] & 1) == 0)
  {
LABEL_9:
    v23 = textCopy;
    goto LABEL_14;
  }

  if (!self->_genmojiReplacementManager)
  {
    v10 = objc_alloc_init(_LTGenmojiReplacementManager);
    genmojiReplacementManager = self->_genmojiReplacementManager;
    self->_genmojiReplacementManager = v10;
  }

  v12 = [MEMORY[0x277CBEB58] set];
  string = [textCopy string];
  v14 = [string length];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __88___LTTextTranslationRequest__replaceAdaptiveImageGlyphsIfNeededForText_requestUniqueID___block_invoke;
  v37[3] = &unk_278B6DA90;
  v15 = v12;
  v38 = v15;
  [string _enumerateEmojiTokensInRange:0 block:{v14, v37}];
  v16 = +[_LTGenmojiReplacementManager rareEmojiPlaceholderCandidates];
  v17 = [v16 mutableCopy];

  [v17 minusSet:v15];
  allObjects = [v17 allObjects];
  if ([allObjects count])
  {
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = 0;
    v20 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:textCopy];
    v21 = [v20 length];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __88___LTTextTranslationRequest__replaceAdaptiveImageGlyphsIfNeededForText_requestUniqueID___block_invoke_231;
    v30 = &unk_278B6DAB8;
    v31 = allObjects;
    v35 = v36;
    v32 = dCopy;
    v22 = v20;
    v33 = v22;
    selfCopy = self;
    [v22 enumerateAttribute:@"CTAdaptiveImageProvider" inRange:0 options:v21 usingBlock:{0, &v27}];
    v23 = [v22 copy];

    _Block_object_dispose(v36, 8);
  }

  else
  {
    v25 = _LTOSLogTranslationEngine(0, v19);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [_LTTextTranslationRequest _replaceAdaptiveImageGlyphsIfNeededForText:requestUniqueID:];
    }

    v23 = textCopy;
  }

LABEL_14:

  return v23;
}

- (id)_paragraphRequestForText:(id)text
{
  textCopy = text;
  v5 = [_LTParagraphTranslationRequest alloc];
  localePair = [(_LTTranslationRequest *)self localePair];
  v7 = [(_LTTranslationRequest *)v5 initWithLocalePair:localePair];

  [(_LTTranslationRequest *)v7 setTaskHint:[(_LTTranslationRequest *)self taskHint]];
  string = [textCopy string];
  [(_LTParagraphTranslationRequest *)v7 setText:string];

  array = [MEMORY[0x277CBEB18] array];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  uniqueID = [(_LTTranslationRequest *)v7 uniqueID];
  v11 = [(_LTTextTranslationRequest *)self _replaceAdaptiveImageGlyphsIfNeededForText:textCopy requestUniqueID:uniqueID];

  v12 = [v11 length];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54___LTTextTranslationRequest__paragraphRequestForText___block_invoke;
  v19[3] = &unk_278B6DAE0;
  v24 = v25;
  v13 = v11;
  v20 = v13;
  selfCopy = self;
  v14 = array;
  v22 = v14;
  v15 = v7;
  v23 = v15;
  [v13 enumerateAttributesInRange:0 options:v12 usingBlock:{0, v19}];
  [(_LTParagraphTranslationRequest *)v15 setRanges:v14];
  v16 = v23;
  v17 = v15;

  _Block_object_dispose(v25, 8);

  return v17;
}

- (void)setText:(id)text
{
  v29 = *MEMORY[0x277D85DE8];
  textCopy = text;
  objc_storeStrong(&self->_text, text);
  text = [(_LTTextTranslationRequest *)self text];
  paragraphs = [text paragraphs];

  v8 = [paragraphs count];
  if (v8 || (v8 = [(_LTTextTranslationRequest *)self requiresMultiParagraphPathway], v8))
  {
    if (self->_session || ([(_LTTranslationRequest *)self batchSessionUUID], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = _LTOSLogTranslationEngine(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [_LTTextTranslationRequest setText:];
      }
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    v13 = [_LTTranslationSession alloc];
    logIdentifier = [(_LTTranslationRequest *)self logIdentifier];
    v15 = [(_LTTranslationSession *)v13 initForFutureServiceWithSessionID:uUID selfLoggingInvocationId:logIdentifier];
    session = self->_session;
    self->_session = v15;

    v19 = _LTOSLogTranslationEngine(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v27 = 138543362;
      v28 = uUID;
      _os_log_impl(&dword_23AAF5000, v19, OS_LOG_TYPE_INFO, "Created _LTTranslationSession for use in a _LTTextTranslationRequest. SessionID: %{public}@", &v27, 0xCu);
    }

    uniqueID2 = [uUID copy];
    [(_LTTranslationRequest *)self setBatchSessionUUID:uniqueID2];
  }

  else
  {
    v21 = _LTOSLogTranslationEngine(v8, v9);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      uniqueID = [(_LTTranslationRequest *)self uniqueID];
      v27 = 138543362;
      v28 = uniqueID;
      _os_log_impl(&dword_23AAF5000, v22, OS_LOG_TYPE_INFO, "_LTTranslationRequest had text set, creating sub-request with suggested uniqueID: %{public}@", &v27, 0xCu);
    }

    v24 = [_LTTextToSpeechTranslationRequest alloc];
    uUID = [(_LTTranslationRequest *)self localePair];
    uniqueID2 = [(_LTTranslationRequest *)self uniqueID];
    v25 = [(_LTTextToSpeechTranslationRequest *)v24 initWithLocalePair:uUID suggestedUniqueID:uniqueID2];
    request = self->_request;
    self->_request = v25;
  }
}

- (id)serviceDelegate
{
  request = self->_request;
  if (!request)
  {
    request = self->_session;
  }

  return request;
}

- (void)_startTranslationWithService:(id)service done:(id)done
{
  v56[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  doneCopy = done;
  v7 = _LTOSLogTranslationEngine(doneCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAF5000, v7, OS_LOG_TYPE_INFO, "Text Translation: start with service", buf, 2u);
  }

  logIdentifier = [(_LTTranslationRequest *)self logIdentifier];
  localePair = [(_LTTranslationRequest *)self localePair];
  [(_LTTranslationRequest *)self setLogIdentifier:logIdentifier];

  [(_LTTextTranslationRequest *)self _submitMessagesSELFLoggingIfNeededForInvocationStart:1 error:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  savedAttributes = self->_savedAttributes;
  self->_savedAttributes = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  receivedParagraphs = self->_receivedParagraphs;
  self->_receivedParagraphs = dictionary2;

  paragraphOrder = self->_paragraphOrder;
  self->_paragraphOrder = 0;

  v15 = [doneCopy copy];
  done = self->_done;
  self->_done = v15;

  self->_outstandingCount = 0;
  self->_translationFinished = 0;
  v17 = self->_session == 0;
  v20 = _LTOSLogTranslationEngine(v18, v19);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (v21)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23AAF5000, v20, OS_LOG_TYPE_INFO, "Fallback to text to speech translation", buf, 2u);
    }

    [(_LTTranslationRequest *)self->_request setTaskHint:[(_LTTranslationRequest *)self taskHint]];
    [(_LTTranslationRequest *)self->_request setForcedOfflineTranslation:[(_LTTranslationRequest *)self forcedOfflineTranslation]];
    [(_LTTranslationRequest *)self->_request setPreferOnDeviceIfAvailable:[(_LTTranslationRequest *)self preferOnDeviceIfAvailable]];
    [(_LTTranslationRequest *)self->_request setCensorSpeech:[(_LTTranslationRequest *)self censorSpeech]];
    text = [(_LTTextTranslationRequest *)self text];
    string = [text string];
    [(_LTTextToSpeechTranslationRequest *)self->_request setText:string];

    [(_LTTextToSpeechTranslationRequest *)self->_request setDelegate:self];
    appIdentifier = [(_LTTranslationRequest *)self appIdentifier];
    [(_LTTranslationRequest *)self->_request setAppIdentifier:appIdentifier];

    [(_LTTranslationRequest *)self->_request setSourceOrigin:[(_LTTranslationRequest *)self sourceOrigin]];
    [(_LTTranslationRequest *)self->_request setIsFinal:[(_LTTranslationRequest *)self isFinal]];
    [(_LTTranslationRequest *)self->_request set_supportsGenderDisambiguation:[(_LTTranslationRequest *)self _supportsGenderDisambiguation]];
    [(_LTTranslationRequest *)self->_request setOverrideOngoingSessionIfNeeded:[(_LTTranslationRequest *)self overrideOngoingSessionIfNeeded]];
    logIdentifier2 = [(_LTTranslationRequest *)self logIdentifier];
    [(_LTTranslationRequest *)self->_request setLogIdentifier:logIdentifier2];

    [(_LTTextToSpeechTranslationRequest *)self->_request _startTranslationWithService:serviceCopy done:doneCopy];
  }

  else
  {
    if (v21)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23AAF5000, v20, OS_LOG_TYPE_INFO, "Using paragraph translation", buf, 2u);
    }

    logIdentifier3 = [(_LTTranslationRequest *)self logIdentifier];
    [(_LTTranslationSession *)self->_session setLogIdentifier:logIdentifier3];

    [(_LTTranslationSession *)self->_session prepareWithService:serviceCopy];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    text2 = [(_LTTextTranslationRequest *)self text];
    paragraphs = [text2 paragraphs];

    if (![paragraphs count])
    {
      text3 = [(_LTTextTranslationRequest *)self text];
      v56[0] = text3;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];

      paragraphs = v28;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = paragraphs;
    v29 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v29)
    {
      v30 = *v52;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v52 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = [(_LTTextTranslationRequest *)self _paragraphRequestForText:*(*(&v51 + 1) + 8 * i)];
          [v32 setTaskHint:{-[_LTTranslationRequest taskHint](self, "taskHint")}];
          [v32 setCensorSpeech:{-[_LTTranslationRequest censorSpeech](self, "censorSpeech")}];
          [v32 setForcedOfflineTranslation:{-[_LTTranslationRequest forcedOfflineTranslation](self, "forcedOfflineTranslation")}];
          [v32 setPreferOnDeviceIfAvailable:{-[_LTTranslationRequest preferOnDeviceIfAvailable](self, "preferOnDeviceIfAvailable")}];
          appIdentifier2 = [(_LTTranslationRequest *)self appIdentifier];
          [v32 setAppIdentifier:appIdentifier2];

          [v32 setSourceOrigin:{-[_LTTranslationRequest sourceOrigin](self, "sourceOrigin")}];
          [v32 setIsFinal:{-[_LTTranslationRequest isFinal](self, "isFinal")}];
          [v32 set_supportsGenderDisambiguation:{-[_LTTranslationRequest _supportsGenderDisambiguation](self, "_supportsGenderDisambiguation")}];
          [v32 setOverrideOngoingSessionIfNeeded:{-[_LTTranslationRequest overrideOngoingSessionIfNeeded](self, "overrideOngoingSessionIfNeeded")}];
          logIdentifier4 = [(_LTTranslationRequest *)self logIdentifier];
          [v32 setLogIdentifier:logIdentifier4];

          objc_initWeak(buf, self);
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __63___LTTextTranslationRequest__startTranslationWithService_done___block_invoke;
          v48[3] = &unk_278B6DB08;
          objc_copyWeak(&v49, buf);
          [v32 setCompletionHandler:v48];
          uniqueID = [v32 uniqueID];
          [(NSArray *)array2 addObject:uniqueID];

          [array addObject:v32];
          objc_destroyWeak(&v49);
          objc_destroyWeak(buf);
        }

        v29 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v29);
    }

    v36 = self->_paragraphOrder;
    self->_paragraphOrder = array2;
    v37 = array2;

    *(&self->super.super.isa + v44) = [(NSArray *)v37 count];
    v38 = [doneCopy copy];
    v39 = self->_done;
    self->_done = v38;

    [(_LTTranslationSession *)self->_session translate:array];
  }
}

- (void)_translationFailedWithError:(id)error
{
  errorCopy = error;
  v6 = _LTOSLogTranslationEngine(errorCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_LTTextTranslationRequest _translationFailedWithError:];
  }

  [(_LTTextTranslationRequest *)self _callCompletionHandlersWithResult:0 error:errorCopy];
}

- (void)_constructFinalParagraphResult
{
  v3 = _LTOSLogTranslationEngine(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_INFO, "Constructing final paragraph result", buf, 2u);
  }

  v4 = [(NSMutableDictionary *)self->_receivedParagraphs copy];
  objc_initWeak(buf, self);
  paragraphOrder = self->_paragraphOrder;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __59___LTTextTranslationRequest__constructFinalParagraphResult__block_invoke;
  v14 = &unk_278B6DB30;
  v6 = v4;
  v15 = v6;
  objc_copyWeak(&v16, buf);
  v7 = [(NSArray *)paragraphOrder _ltCompactMap:&v11];
  v8 = [_LTCombinedTranslationResult alloc];
  v9 = [(_LTTranslationRequest *)self localePair:v11];
  v10 = [(_LTCombinedTranslationResult *)v8 initWithParagraphResults:v7 localePair:v9];

  [(_LTTranslationRequest *)self logIdentifier];
  [(_LTTextTranslationRequest *)self _callCompletionHandlersWithResult:v10 error:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)_handleParagraphResponse:(id)response error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v8 = responseCopy;
  if (error)
  {
    [(_LTTextTranslationRequest *)self translationDidFinishWithError:error];
  }

  else
  {
    v9 = _LTOSLogTranslationEngine(responseCopy, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      identifier = [v8 identifier];
      v20 = 138543362;
      v21 = identifier;
      _os_log_impl(&dword_23AAF5000, v10, OS_LOG_TYPE_INFO, "Received translated paragraph for ID: %{public}@", &v20, 0xCu);
    }

    receivedParagraphs = self->_receivedParagraphs;
    identifier2 = [v8 identifier];
    [(NSMutableDictionary *)receivedParagraphs setObject:v8 forKeyedSubscript:identifier2];

    outstandingCount = self->_outstandingCount;
    if (outstandingCount)
    {
      self->_outstandingCount = outstandingCount - 1;
      v17 = _LTOSLogTranslationEngine(v14, v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = self->_outstandingCount;
        v20 = 134217984;
        v21 = v18;
        _os_log_impl(&dword_23AAF5000, v17, OS_LOG_TYPE_INFO, "New outstanding count: %zd", &v20, 0xCu);
      }

      if (!self->_outstandingCount)
      {
        [(_LTTextTranslationRequest *)self _constructFinalParagraphResult];
      }
    }

    else
    {
      v19 = _LTOSLogTranslationEngine(v14, v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [_LTTextTranslationRequest _handleParagraphResponse:v19 error:v8];
      }
    }
  }
}

- (id)_getStoredAttributesForRequestIdentifier:(id)identifier alignmentIdentifier:(id)alignmentIdentifier
{
  v5 = [(_LTTextTranslationRequest *)self _alignmentAttributeKeyFromRequestIdentifier:identifier alignmentIdentifier:alignmentIdentifier];
  v6 = [(NSMutableDictionary *)self->_savedAttributes objectForKeyedSubscript:v5];

  return v6;
}

- (void)_saveAttributes:(id)attributes forRequestUniqueID:(id)d alignmentIdentifier:(id)identifier
{
  attributesCopy = attributes;
  v9 = [(_LTTextTranslationRequest *)self _alignmentAttributeKeyFromRequestIdentifier:d alignmentIdentifier:identifier];
  [(NSMutableDictionary *)self->_savedAttributes setObject:attributesCopy forKeyedSubscript:v9];
}

- (void)_addAlignmentAttributesToResult:(id)result requestIdentifier:(id)identifier
{
  v36 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  identifierCopy = identifier;
  if (resultCopy)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = resultCopy;
    obj = [resultCopy alignments];
    v8 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          identifier = [v12 identifier];
          v14 = [(_LTTextTranslationRequest *)self _getStoredAttributesForRequestIdentifier:identifierCopy alignmentIdentifier:identifier];

          identifier2 = [v12 identifier];
          v16 = [(_LTTextTranslationRequest *)self _alignmentAttributeKeyFromRequestIdentifier:identifierCopy alignmentIdentifier:identifier2];

          v19 = _LTOSLogTranslationEngine(v17, v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = v19;
            text = [v12 text];
            *buf = 138740483;
            v30 = text;
            v31 = 2114;
            v32 = v16;
            v33 = 2114;
            v34 = v14;
            _os_log_impl(&dword_23AAF5000, v20, OS_LOG_TYPE_INFO, "Alignment '%{sensitive}@' ID: %{public}@; attributes: %{public}@", buf, 0x20u);
          }

          [v12 setSourceAttributes:v14];
        }

        v9 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v9);
    }

    v22 = [(_LTGenmojiReplacementManager *)self->_genmojiReplacementManager replacementInfoForRequestID:identifierCopy];
    resultCopy = v23;
    if ([v22 count])
    {
      [v23 setReplacementInfos:v22];
    }
  }
}

- (void)translatorDidTranslate:(id)translate
{
  v12[1] = *MEMORY[0x277D85DE8];
  translateCopy = translate;
  v6 = _LTOSLogTranslationEngine(translateCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_23AAF5000, v6, OS_LOG_TYPE_INFO, "Received text to speech result", v11, 2u);
  }

  if (translateCopy)
  {
    v12[0] = translateCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = [_LTCombinedTranslationResult alloc];
  localePair = [(_LTTranslationRequest *)self localePair];
  v10 = [(_LTCombinedTranslationResult *)v8 initWithParagraphResults:v7 localePair:localePair];

  [(_LTTranslationRequest *)self logIdentifier];
  [(_LTTextTranslationRequest *)self _callCompletionHandlersWithResult:v10 error:0];
}

- (void)translationDidFinishWithError:(id)error
{
  errorCopy = error;
  if (!self->_translationFinished)
  {
    self->_translationFinished = 1;
    done = self->_done;
    if (done)
    {
      done[2]();
      v7 = self->_done;
      self->_done = 0;
    }

    if (errorCopy)
    {
      [(_LTTranslationRequest *)self->_request logIdentifier];

      v10 = _LTOSLogTranslationEngine(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_LTTextTranslationRequest _translationFailedWithError:];
      }

      [(_LTTextTranslationRequest *)self _callCompletionHandlersWithResult:0 error:errorCopy];
    }

    else
    {
      v11 = _LTOSLogTranslationEngine(done, v4);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [_LTTextTranslationRequest translationDidFinishWithError:];
      }
    }
  }
}

- (void)_callCompletionHandlersWithResult:(id)result error:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  v9 = errorCopy;
  if (self->_hasCalledCompletionHandler)
  {
    v10 = _LTOSLogTranslationEngine(errorCopy, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_LTTextTranslationRequest *)resultCopy _callCompletionHandlersWithResult:v9 error:v10];
    }
  }

  else
  {
    self->_hasCalledCompletionHandler = 1;
    if (!self->_receivedParagraphs)
    {
      v11 = _LTOSLogTranslationEngine(errorCopy, v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_LTTextTranslationRequest _callCompletionHandlersWithResult:error:];
      }
    }

    textTranslationHandler = [(_LTTextTranslationRequest *)self textTranslationHandler];

    if (textTranslationHandler)
    {
      paragraphResults = [resultCopy paragraphResults];
      if ([paragraphResults count] == 1)
      {
        firstObject = [paragraphResults firstObject];
      }

      else
      {
        firstObject = 0;
      }

      translatedText = [resultCopy translatedText];
      v20 = _LTOSLogTranslationEngine(translatedText, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        *v29 = 134218498;
        *&v29[4] = [translatedText length];
        *&v29[12] = 1024;
        *&v29[14] = firstObject != 0;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_23AAF5000, v21, OS_LOG_TYPE_DEFAULT, "Calling _LTTextTranslationRequest.textTranslationHandler with translatedText of length %zu; has result: %{BOOL}i; error: %@", v29, 0x1Cu);
      }

      textTranslationHandler2 = [(_LTTextTranslationRequest *)self textTranslationHandler];
      (textTranslationHandler2)[2](textTranslationHandler2, translatedText, firstObject, v9);
    }

    else
    {
      v17 = _LTOSLogTranslationEngine(v13, v14);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [_LTTextTranslationRequest _callCompletionHandlersWithResult:error:];
      }
    }

    completionHandler = [(_LTTextTranslationRequest *)self completionHandler];

    v26 = _LTOSLogTranslationEngine(v24, v25);
    v27 = v26;
    if (completionHandler)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 67109378;
        *&v29[4] = resultCopy != 0;
        *&v29[8] = 2112;
        *&v29[10] = v9;
        _os_log_impl(&dword_23AAF5000, v27, OS_LOG_TYPE_DEFAULT, "Calling _LTTextTranslationRequest.completionHandler; has result: %{BOOL}i; error: %@", v29, 0x12u);
      }

      completionHandler2 = [(_LTTextTranslationRequest *)self completionHandler];
      (completionHandler2)[2](completionHandler2, resultCopy, v9);
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [_LTTextTranslationRequest _callCompletionHandlersWithResult:error:];
    }

    [(_LTTextTranslationRequest *)self _submitMessagesSELFLoggingIfNeededForInvocationStart:0 error:v9];
    [(_LTTextTranslationRequest *)self _cleanUpTemporaryStorage];
  }
}

- (void)_cleanUpTemporaryStorage
{
  paragraphOrder = self->_paragraphOrder;
  self->_paragraphOrder = 0;

  receivedParagraphs = self->_receivedParagraphs;
  self->_receivedParagraphs = 0;

  savedAttributes = self->_savedAttributes;
  self->_savedAttributes = 0;

  session = self->_session;
  self->_session = 0;

  request = self->_request;
  self->_request = 0;

  done = self->_done;
  if (done)
  {
    done[2]();
    v9 = self->_done;
    self->_done = 0;
  }
}

- (void)_submitMessagesSELFLoggingIfNeededForInvocationStart:(BOOL)start error:(id)error
{
  startCopy = start;
  errorCopy = error;
  v7 = untrustedClientIdentifier();
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_284DC98A0];
  if (-[_LTTranslationRequest taskHint](self, "taskHint") == 11 || [v8 containsObject:v7])
  {
    if (startCopy || ([(_LTTranslationRequest *)self logIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      logIdentifier = [(_LTTranslationRequest *)self logIdentifier];
      if (logIdentifier)
      {
        [(_LTTranslationRequest *)self setLogIdentifier:logIdentifier];
      }

      else
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        [(_LTTranslationRequest *)self setLogIdentifier:uUID];
      }

      v14 = 2;
      if (errorCopy)
      {
        v14 = 3;
      }

      if (startCopy)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      v16 = [_LTSELFLoggingEventData alloc];
      logIdentifier2 = [(_LTTranslationRequest *)self logIdentifier];
      v18 = [(_LTSELFLoggingEventData *)v16 initWithType:v15 invocationId:logIdentifier2];

      v19 = [[_LTSELFLoggingInvocationOptions alloc] initWithTask:0 inputMode:0 invocationType:17 translateAppContext:0];
      [(_LTSELFLoggingEventData *)v18 setStartInvocationOptions:v19];
      localePair = [(_LTTranslationRequest *)self localePair];
      [(_LTSELFLoggingEventData *)v18 setTranslationLocalePair:localePair];

      [(_LTSELFLoggingEventData *)v18 setUntrustedClientIdentifier:v7];
      [(_LTSELFLoggingEventData *)v18 setInvocationEndedError:errorCopy];
      [_LTTranslator selfLoggingEventWithData:v18];
    }

    else
    {
      v21 = _LTOSLogSELFLogging(v10, v11);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_23AAF5000, v21, OS_LOG_TYPE_INFO, "Ignoring Messages invocation ended event since the log identifier was never set", v22, 2u);
      }
    }
  }
}

- (void)_replaceAdaptiveImageGlyphsIfNeededForText:requestUniqueID:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_translationFailedWithError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_handleParagraphResponse:(void *)a1 error:(void *)a2 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_FAULT, "Received a paragraph response with ID %{public}@, but we didn't expect any paragraphs to be outstanding; this should never happen", v5, 0xCu);
}

- (void)_callCompletionHandlersWithResult:error:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_callCompletionHandlersWithResult:(os_log_t)log error:.cold.4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a1 != 0;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&dword_23AAF5000, log, OS_LOG_TYPE_ERROR, "Attempted to call completionHandler even though it's already been called, will not call it again. Combined result exists: %{BOOL}i; error: %@", v3, 0x12u);
}

@end