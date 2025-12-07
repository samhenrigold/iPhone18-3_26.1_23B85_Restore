@interface SGQuickResponsesML
+ (BOOL)_isImageAttachment:(id)attachment;
+ (BOOL)_isSharingSenderLocation:(id)location senderName:(id)name;
- (SGQuickResponsesML)initWithTraining:(id)training;
- (id)_dynamicLabelContentForReply:(id)reply prompt:(id)prompt language:(id)language;
- (void)trainQuickResponsesForMessage:(id)message withConversationHistory:(id)history;
@end

@implementation SGQuickResponsesML

- (void)trainQuickResponsesForMessage:(id)message withConversationHistory:(id)history
{
  v97 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  historyCopy = history;
  likelyLanguage = [historyCopy likelyLanguage];

  if (!likelyLanguage)
  {
    messages = sgLogHandle();
    if (!os_log_type_enabled(messages, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v18 = "Quick responses: No likely language prediction for conversation";
LABEL_13:
    _os_log_debug_impl(&dword_231E60000, messages, OS_LOG_TYPE_DEBUG, v18, buf, 2u);
    goto LABEL_33;
  }

  conversationIdentifier = [messageCopy conversationIdentifier];
  v11 = [conversationIdentifier length];

  if (!v11)
  {
    messages = sgLogHandle();
    if (!os_log_type_enabled(messages, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v18 = "Quick responses: Text message has no conversation identifier";
    goto LABEL_13;
  }

  if ([SGDetectedAttributeDissector isTwoPersonConversation:messageCopy])
  {
    messages = [historyCopy messages];
    v13 = [messages objectAtIndexedSubscript:objc_msgSend_count(messages) - 1];
    message = [v13 message];
    textContent = [message textContent];

    if ([textContent length] >= 0x65)
    {
      v16 = sgLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v17 = "Quick responses: response message is much too long for labeling or DP reporting";
LABEL_17:
        _os_log_debug_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEBUG, v17, buf, 2u);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    if (objc_msgSend_count(messages) <= 1)
    {
      v16 = sgLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v17 = "Quick responses: processing requires at least two text messages";
        goto LABEL_17;
      }

LABEL_32:

      goto LABEL_33;
    }

    v19 = MEMORY[0x277D025A8];
    likelyLanguage2 = [historyCopy likelyLanguage];
    LOBYTE(v19) = [v19 areModelsAvailableInLanguage:likelyLanguage2];

    if ((v19 & 1) == 0)
    {
      v16 = sgLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        likelyLanguage3 = [historyCopy likelyLanguage];
        *buf = 138412290;
        *v90 = likelyLanguage3;
        _os_log_debug_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEBUG, "Quick responses: No model available for language: %@", buf, 0xCu);
      }

      goto LABEL_32;
    }

    v87 = textContent;
    v16 = [messages objectAtIndexedSubscript:objc_msgSend_count(messages) - 2];
    message2 = [v16 message];
    sender = [message2 sender];
    handles = [sender handles];
    v88 = v13;
    if (objc_msgSend_count(handles) == 1)
    {
      message3 = [v13 message];
      [message3 sender];
      v24 = v86 = v16;
      handles2 = [v24 handles];
      v83 = objc_msgSend_count(handles2);

      v16 = v86;
      if (v83 == 1)
      {
        message4 = [v86 message];
        sender2 = [message4 sender];
        handles3 = [sender2 handles];
        firstObject = [handles3 firstObject];
        message5 = [v88 message];
        sender3 = [message5 sender];
        handles4 = [sender3 handles];
        firstObject2 = [handles4 firstObject];
        v74 = [firstObject isEqualToString:firstObject2];

        if (v74)
        {
          v31 = sgLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_231E60000, v31, OS_LOG_TYPE_DEBUG, "Quick responses: processing requires the reply to be to a different person's prompt", buf, 2u);
          }

          v13 = v88;
          v16 = v86;
          goto LABEL_31;
        }

        v33 = MEMORY[0x277D02580];
        likelyLanguage4 = [historyCopy likelyLanguage];
        v31 = [v33 transformerInstanceForLanguage:likelyLanguage4 mode:0];

        config = [v31 config];
        classificationParams = [config classificationParams];

        v37 = [SGTextMessageConversationTracker getMergedPrompt:historyCopy withParams:classificationParams];
        v85 = v37;
        if (![v37 length] || !objc_msgSend(v87, "length"))
        {
          v40 = sgLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v41 = "Quick responses: processing requires the prompt and the reply to have text content";
            v42 = v40;
            v43 = 2;
            goto LABEL_74;
          }

LABEL_43:
          v13 = v88;
          v16 = v86;
LABEL_44:

LABEL_31:
          textContent = v87;
          goto LABEL_32;
        }

        maxPromptLength = [classificationParams maxPromptLength];
        if (maxPromptLength >= 0x400)
        {
          v39 = 1024;
        }

        else
        {
          v39 = maxPromptLength;
        }

        if ([v37 length] > v39)
        {
          v40 = sgLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *v90 = v39;
            v41 = "Quick responses: processing requires the prompt to be no more than %lu characters in length";
            v42 = v40;
            v43 = 12;
LABEL_74:
            _os_log_debug_impl(&dword_231E60000, v42, OS_LOG_TYPE_DEBUG, v41, buf, v43);
            goto LABEL_43;
          }

          goto LABEL_43;
        }

        likelyLanguage5 = [historyCopy likelyLanguage];
        v45 = [(SGQuickResponsesML *)self _dynamicLabelContentForReply:v88 prompt:v37 language:likelyLanguage5];

        v81 = v45;
        if (v45)
        {
          v78 = classificationParams;
          v46 = sgLogHandle();
          v47 = 0x277D02000;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v90 = v81;
            _os_log_debug_impl(&dword_231E60000, v46, OS_LOG_TYPE_DEBUG, "Quick responses: using dynamic label with unique identifier %@", buf, 0xCu);
          }

          v40 = v81;
        }

        else
        {
          v40 = v87;
          maxReplyLength = [classificationParams maxReplyLength];
          if (maxReplyLength >= 0x400)
          {
            v49 = 1024;
          }

          else
          {
            v49 = maxReplyLength;
          }

          if ([v40 length]> v49)
          {
            v50 = sgLogHandle();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              *v90 = v49;
              _os_log_debug_impl(&dword_231E60000, v50, OS_LOG_TYPE_DEBUG, "Quick responses: not keeping response message because it is greater than %lu characters in length", buf, 0xCu);
            }

            v13 = v88;
            v16 = v86;
            goto LABEL_81;
          }

          v78 = classificationParams;
          v47 = 0x277D02000uLL;
        }

        v51 = *(v47 + 1408);
        likelyLanguage6 = [historyCopy likelyLanguage];
        v53 = [v51 labelOf:v40 inLanguage:likelyLanguage6];

        if (v53)
        {
          v75 = v81 != 0;
          v54 = *(v47 + 1408);
          likelyLanguage7 = [historyCopy likelyLanguage];
          v82 = v53;
          v56 = [v54 shouldSampleForLabel:v53 inLanguage:likelyLanguage7 isDynamicLabel:v75];

          v57 = sgLogHandle();
          v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG);
          if ((v56 & 1) == 0)
          {
            v67 = v57;
            v16 = v86;
            classificationParams = v78;
            if (v58)
            {
              *buf = 138412290;
              v50 = v82;
              *v90 = v82;
              _os_log_debug_impl(&dword_231E60000, v67, OS_LOG_TYPE_DEBUG, "Quick responses: dropping sample with label %@", buf, 0xCu);
              v13 = v88;
            }

            else
            {
              v13 = v88;
              v50 = v82;
            }

            goto LABEL_80;
          }

          if (v58)
          {
            *buf = 138412290;
            *v90 = v82;
            _os_log_debug_impl(&dword_231E60000, v57, OS_LOG_TYPE_DEBUG, "Quick responses: keeping sample with label %@", buf, 0xCu);
          }

          source = [v31 source];
          sessionDescriptor = [source sessionDescriptor];

          featurizer = [v31 featurizer];
          v62 = [featurizer transform:v85];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesML.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"[vector isKindOfClass:PMLSparseVector.class]"}];
          }

          v76 = v62;
          if (self->_localTraining && ([messageCopy spotlightReference], v63 = objc_claimAutoreleasedReturnValue(), v63, v63) && v62 && sessionDescriptor)
          {
            localTraining = self->_localTraining;
            v50 = v82;
            unsignedIntegerValue = [v82 unsignedIntegerValue];
            spotlightReference = [messageCopy spotlightReference];
            v66 = unsignedIntegerValue;
            v67 = sessionDescriptor;
            [(PMLTrainingProtocol *)localTraining addSessionWithCovariates:v62 label:v66 sessionDescriptor:sessionDescriptor spotlightReference:spotlightReference isInternal:0];
            v16 = v86;
          }

          else
          {
            v67 = sessionDescriptor;
            spotlightReference = sgLogHandle();
            if (os_log_type_enabled(spotlightReference, OS_LOG_TYPE_DEBUG))
            {
              v71 = self->_localTraining != 0;
              spotlightReference2 = [messageCopy spotlightReference];
              version = [sessionDescriptor version];
              *buf = 67110146;
              *v90 = v71;
              *&v90[4] = 1024;
              *&v90[6] = spotlightReference2 != 0;
              v91 = 1024;
              v92 = v76 != 0;
              v93 = 1024;
              v94 = sessionDescriptor != 0;
              v95 = 2112;
              v96 = version;
              _os_log_debug_impl(&dword_231E60000, spotlightReference, OS_LOG_TYPE_DEBUG, "Quick responses: not adding session for training - localTraining %d, spotlightReference %d, vector %d, sessionDescriptor %d, version: %@", buf, 0x24u);
            }

            v16 = v86;
            v50 = v82;
          }

          v13 = v88;
        }

        else
        {
          v50 = 0;
          v67 = sgLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            likelyLanguage8 = [historyCopy likelyLanguage];
            *buf = 138412290;
            *v90 = likelyLanguage8;
            _os_log_error_impl(&dword_231E60000, v67, OS_LOG_TYPE_ERROR, "Quick responses: labeler failed to offer positive or negative label in language %@", buf, 0xCu);
          }

          v13 = v88;
          v16 = v86;
        }

        classificationParams = v78;
LABEL_80:

LABEL_81:
        goto LABEL_44;
      }
    }

    else
    {
    }

    v31 = sgLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v31, OS_LOG_TYPE_DEBUG, "Quick responses: processing requires the prompt and reply to have a single sender handle", buf, 2u);
    }

    v13 = v88;
    goto LABEL_31;
  }

  messages = sgLogHandle();
  if (os_log_type_enabled(messages, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    v18 = "Quick responses: processing is disabled for group messages";
    goto LABEL_13;
  }

LABEL_33:
}

- (id)_dynamicLabelContentForReply:(id)reply prompt:(id)prompt language:(id)language
{
  v87 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  promptCopy = prompt;
  languageCopy = language;
  message = [replyCopy message];
  attachmentFilename = [message attachmentFilename];

  message2 = [replyCopy message];
  sender = [message2 sender];
  displayName = [sender displayName];

  if (attachmentFilename)
  {
    if ([SGQuickResponsesML _isImageAttachment:attachmentFilename])
    {
      v15 = @"photoSharingUEhPVE8K";
      goto LABEL_56;
    }

    if ([SGQuickResponsesML _isSharingSenderLocation:attachmentFilename senderName:displayName])
    {
      v15 = @"firstPartyLocTE9DLjFwCg";
      goto LABEL_56;
    }
  }

  if (!displayName)
  {
    v15 = 0;
    goto LABEL_56;
  }

  v74 = languageCopy;
  v75 = displayName;
  v73 = attachmentFilename;
  detectedData = [replyCopy detectedData];
  if (!objc_msgSend_count(detectedData))
  {
    v17 = 0;
    v15 = 0;
    goto LABEL_55;
  }

  v71 = promptCopy;
  v72 = replyCopy;
  v17 = 0;
  v18 = 0;
  v19 = -1;
  v20 = 1;
  do
  {
    v21 = [detectedData objectAtIndexedSubscript:v20 - 1];
    matchType = [v21 matchType];

    switch(matchType)
    {
      case 2:
        v19 = 2;
        goto LABEL_16;
      case 1:
        v19 = 1;
LABEL_16:
        v28 = [detectedData objectAtIndexedSubscript:v20 - 1];

        ++v18;
        v17 = v28;
        break;
      case 0:
        v23 = v19;
        v24 = +[SGContactPipelineHelper sharedInstance];
        v25 = [detectedData objectAtIndexedSubscript:v20 - 1];
        valueString = [v25 valueString];
        v27 = [v24 numberMatchesContactsForm:valueString];

        if ((v27 & 1) == 0)
        {
          v19 = v23;
          break;
        }

        v19 = 0;
        goto LABEL_16;
    }

    if (objc_msgSend_count(detectedData) <= v20)
    {
      break;
    }

    ++v20;
  }

  while (v18 < 2);
  if (v18 == 1)
  {
    valueString2 = [v17 valueString];
    promptCopy = v71;
    replyCopy = v72;
    if (!valueString2)
    {
      range = [v17 range];
      v32 = v31;
      message3 = [v72 message];
      valueString2 = [message3 textContent];

      if (range + v32 > [valueString2 length])
      {
        v34 = sgLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v82 = range;
          v83 = 2048;
          v84 = v32;
          v85 = 2048;
          v86 = [valueString2 length];
          _os_log_error_impl(&dword_231E60000, v34, OS_LOG_TYPE_ERROR, "Range {%tu, %tu} out of bounds; string length: %tu", buf, 0x20u);
        }

        v15 = 0;
        replyCopy = v72;
        goto LABEL_54;
      }

      v35 = objc_autoreleasePoolPush();
      v36 = [valueString2 substringWithRange:{range, v32}];
      objc_autoreleasePoolPop(v35);

      valueString2 = v36;
      replyCopy = v72;
    }

    v37 = [SGContactPipelineHelper findContactsForDetailType:v19 andValue:valueString2];
    v34 = v37;
    if (!v37 || !objc_msgSend_count(v37))
    {
LABEL_36:
      v15 = 0;
      goto LABEL_54;
    }

    v67 = v19;
    message4 = [replyCopy message];
    sender2 = [message4 sender];
    handles = [sender2 handles];
    firstObject = [handles firstObject];
    v70 = v34;
    v41 = [SGContactPipelineHelper personExistsInContacts:v34 name:v75 handle:firstObject];

    if (v41)
    {
      if (v67 < 3)
      {
        v15 = off_27894D3B0[v67];
        goto LABEL_54;
      }

      goto LABEL_36;
    }

    v69 = valueString2;
    v42 = objc_opt_new();
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v43 = v34;
    v44 = [v43 countByEnumeratingWithState:&v76 objects:v80 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v77;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v77 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v76 + 1) + 8 * i);
          givenName = [v48 givenName];
          v50 = [givenName length];

          if (v50)
          {
            givenName2 = [v48 givenName];
            lowercaseString = [givenName2 lowercaseString];
            [v42 addObject:lowercaseString];
          }

          familyName = [v48 familyName];
          v54 = [familyName length];

          if (v54)
          {
            familyName2 = [v48 familyName];
            lowercaseString2 = [familyName2 lowercaseString];
            [v42 addObject:lowercaseString2];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v76 objects:v80 count:16];
      }

      while (v45);
    }

    v57 = objc_autoreleasePoolPush();
    v58 = [[SGNameDetector alloc] initWithLanguage:v74];
    promptCopy = v71;
    v59 = [(SGNameDetector *)v58 detectNames:v71 withNameSet:v42];

    objc_autoreleasePoolPop(v57);
    if (objc_msgSend_count(v59) == 1 && (v60 = objc_autoreleasePoolPush(), [v59 firstObject], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v61, "range"), objc_msgSend(v71, "substringWithRange:", v62, v63), v64 = objc_claimAutoreleasedReturnValue(), v61, promptCopy = v71, objc_autoreleasePoolPop(v60), v65 = +[SGContactPipelineHelper personExistsInContacts:name:handle:](SGContactPipelineHelper, "personExistsInContacts:name:handle:", v43, v64, 0), v64, v65) && v67 < 3)
    {
      v15 = off_27894D3C8[v67];
    }

    else
    {

      v15 = 0;
    }

    replyCopy = v72;
    valueString2 = v69;
    v34 = v70;
LABEL_54:
  }

  else
  {
    v15 = 0;
    promptCopy = v71;
    replyCopy = v72;
  }

LABEL_55:

  attachmentFilename = v73;
  languageCopy = v74;
  displayName = v75;
LABEL_56:

  return v15;
}

- (SGQuickResponsesML)initWithTraining:(id)training
{
  trainingCopy = training;
  v9.receiver = self;
  v9.super_class = SGQuickResponsesML;
  v6 = [(SGQuickResponsesML *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localTraining, training);
  }

  return v7;
}

+ (BOOL)_isImageAttachment:(id)attachment
{
  lowercaseString = [attachment lowercaseString];
  pathExtension = [lowercaseString pathExtension];

  LOBYTE(lowercaseString) = [&unk_28474A5E8 containsObject:pathExtension];
  return lowercaseString;
}

+ (BOOL)_isSharingSenderLocation:(id)location senderName:(id)name
{
  locationCopy = location;
  nameCopy = name;
  v10 = 1;
  if (([@"CL.loc.vcf" isEqualToString:locationCopy] & 1) == 0 && (objc_msgSend(@"Shared Location.loc.vcf", "isEqualToString:", locationCopy) & 1) == 0)
  {
    if (!nameCopy || (v7 = objc_autoreleasePoolPush(), v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@'s Location.loc.vcf", nameCopy], v9 = objc_msgSend(v8, "isEqualToString:", locationCopy), v8, objc_autoreleasePoolPop(v7), (v9 & 1) == 0))
    {
      v10 = 0;
    }
  }

  return v10;
}

@end