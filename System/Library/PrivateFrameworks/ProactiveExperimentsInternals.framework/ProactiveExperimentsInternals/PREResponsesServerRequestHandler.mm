@interface PREResponsesServerRequestHandler
- (id)preResponseItemArrayFromQuickResponses:(id)responses;
- (void)preResponseItemsForMessage:(id)message maximumResponses:(unint64_t)responses conversationTurns:(id)turns context:(id)context time:(id)time language:(id)language recipientHandles:(id)handles modelFilePath:(id)self0 modelConfigPath:(id)self1 espressoBinFilePath:(id)self2 vocabFilePath:(id)self3 registerDisplayed:(BOOL)self4 includeCustomResponses:(BOOL)self5 includeResponsesToRobots:(BOOL)self6 completion:(id)self7;
- (void)predictForMessage:(id)message conversationTurns:(id)turns language:(id)language plistPath:(id)path espressoBinPath:(id)binPath vocabPath:(id)vocabPath heads:(id)heads completion:(id)self0;
- (void)registerResponse:(id)response position:(id)position isCanned:(BOOL)canned isUsingQuickResponses:(BOOL)responses locale:(id)locale modelConfigPath:(id)path vocabPath:(id)vocabPath;
@end

@implementation PREResponsesServerRequestHandler

- (void)registerResponse:(id)response position:(id)position isCanned:(BOOL)canned isUsingQuickResponses:(BOOL)responses locale:(id)locale modelConfigPath:(id)path vocabPath:(id)vocabPath
{
  responsesCopy = responses;
  cannedCopy = canned;
  vocabPathCopy = vocabPath;
  pathCopy = path;
  localeCopy = locale;
  positionCopy = position;
  responseCopy = response;
  v20 = pre_sv_responses_handle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D12000, v20, OS_LOG_TYPE_DEFAULT, "PREInternal - Server registerResponse called", buf, 2u);
  }

  [MEMORY[0x277D02598] registerResponse:responseCopy position:positionCopy isCanned:cannedCopy isUsingQuickResponses:responsesCopy locale:localeCopy plistPath:pathCopy vocabPath:vocabPathCopy];
}

- (id)preResponseItemArrayFromQuickResponses:(id)responses
{
  v34 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(responsesCopy, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = responsesCopy;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v26 = *v28;
    v19 = v4;
    do
    {
      v7 = 0;
      v21 = v6;
      do
      {
        if (*v28 != v26)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v27 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          proactiveTrigger = [v8 proactiveTrigger];

          if (proactiveTrigger)
          {
            v10 = pre_sv_responses_handle();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
            {
              proactiveTrigger2 = [v8 proactiveTrigger];
              *buf = 138412290;
              v32 = proactiveTrigger2;
              _os_log_fault_impl(&dword_260D12000, v10, OS_LOG_TYPE_FAULT, "PREInternal - Unexpected proactive trigger received %@", buf, 0xCu);
            }
          }

          else
          {
            v12 = objc_alloc(MEMORY[0x277D41DD0]);
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "categoryId")}];
            v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "modelId")}];
            v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "semanticClassId")}];
            v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "styleGroupId")}];
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "replyTextId")}];
            text = [v8 text];
            lang = [v8 lang];
            v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isCustomResponse")}];
            v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isRobotResponse")}];
            v10 = [v12 initWithCategoryId:v13 modelId:v25 responseClassId:v24 replySubgroupId:v22 replyTextId:v23 replyText:text language:lang isCustomResponse:v16 isRobotResponse:v17];

            v6 = v21;
            v4 = v19;

            [v20 addObject:v10];
          }
        }

        else
        {
          v10 = pre_sv_responses_handle();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_260D12000, v10, OS_LOG_TYPE_FAULT, "PREInternal - Unexpected type received when expecting SGQuickResponse", buf, 2u);
          }
        }

        ++v7;
      }

      while (v6 != v7);
      v6 = [v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v6);
  }

  return v20;
}

- (void)predictForMessage:(id)message conversationTurns:(id)turns language:(id)language plistPath:(id)path espressoBinPath:(id)binPath vocabPath:(id)vocabPath heads:(id)heads completion:(id)self0
{
  v49 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  turnsCopy = turns;
  languageCopy = language;
  pathCopy = path;
  binPathCopy = binPath;
  vocabPathCopy = vocabPath;
  headsCopy = heads;
  completionCopy = completion;
  v15 = pre_sv_responses_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D12000, v15, OS_LOG_TYPE_DEFAULT, "PREInternal - Server predictForMessage called", buf, 2u);
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v16 = getSGMultiHeadInferenceClass_softClass;
  v47 = getSGMultiHeadInferenceClass_softClass;
  if (!getSGMultiHeadInferenceClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __getSGMultiHeadInferenceClass_block_invoke;
    v42 = &unk_279ABC618;
    v43 = &v44;
    __getSGMultiHeadInferenceClass_block_invoke(buf);
    v16 = v45[3];
  }

  v17 = v16;
  _Block_object_dispose(&v44, 8);
  v18 = [v16 predictForMessage:messageCopy conversationTurns:turnsCopy localeIdentifier:languageCopy plistPath:pathCopy espressoBinPath:binPathCopy vocabPath:vocabPathCopy heads:headsCopy];
  if (v18)
  {
    v19 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v48 count:16];
    if (v21)
    {
      v22 = *v36;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v35 + 1) + 8 * i);
          v25 = [v20 objectForKeyedSubscript:v24];
          v26 = [v25 _pas_mappedArrayWithTransform:&__block_literal_global_95];
          [v19 setObject:v26 forKeyedSubscript:v24];
        }

        v21 = [v20 countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v21);
    }

    completionCopy[2](completionCopy, v19, 0);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

id __134__PREResponsesServerRequestHandler_predictForMessage_conversationTurns_language_plistPath_espressoBinPath_vocabPath_heads_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D41DC8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 score];
  v6 = [v3 label];

  v7 = [v4 initWithScore:v5 label:v6];

  return v7;
}

- (void)preResponseItemsForMessage:(id)message maximumResponses:(unint64_t)responses conversationTurns:(id)turns context:(id)context time:(id)time language:(id)language recipientHandles:(id)handles modelFilePath:(id)self0 modelConfigPath:(id)self1 espressoBinFilePath:(id)self2 vocabFilePath:(id)self3 registerDisplayed:(BOOL)self4 includeCustomResponses:(BOOL)self5 includeResponsesToRobots:(BOOL)self6 completion:(id)self7
{
  messageCopy = message;
  turnsCopy = turns;
  contextCopy = context;
  timeCopy = time;
  languageCopy = language;
  handlesCopy = handles;
  pathCopy = path;
  configPathCopy = configPath;
  filePathCopy = filePath;
  vocabFilePathCopy = vocabFilePath;
  completionCopy = completion;
  v27 = pre_sv_responses_handle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D12000, v27, OS_LOG_TYPE_DEFAULT, "PREInternal - Server responsesForMessage called", buf, 2u);
  }

  if (turnsCopy)
  {
    BYTE2(v33) = robots;
    BYTE1(v33) = customResponses;
    LOBYTE(v33) = 1;
    v28 = messageCopy;
    v29 = handlesCopy;
    [MEMORY[0x277D02598] quickResponsesForMessage:messageCopy conversationTurns:turnsCopy maxResponses:responses localeIdentifier:languageCopy recipientHandles:handlesCopy chunkPath:pathCopy plistPath:configPathCopy espressoBinFilePath:filePathCopy vocabFilePath:vocabFilePathCopy useContactNames:v33 includeCustomResponses:? includeResponsesToRobots:?];
  }

  else
  {
    LOWORD(v34) = __PAIR16__(robots, customResponses);
    v28 = messageCopy;
    v29 = handlesCopy;
    [MEMORY[0x277D02598] quickResponsesForMessage:messageCopy context:contextCopy time:timeCopy maxResponses:responses locale:languageCopy recipientHandles:handlesCopy chunkPath:pathCopy plistPath:configPathCopy espressoBinFilePath:filePathCopy vocabFilePath:vocabFilePathCopy includeCustomResponses:v34 includeResponsesToRobots:?];
  }
  v30 = ;
  if (v30)
  {
    v31 = [(PREResponsesServerRequestHandler *)self preResponseItemArrayFromQuickResponses:v30];
  }

  else
  {
    v31 = 0;
  }

  completionCopy[2](completionCopy, v31, 0);
  if (displayed && [v30 count])
  {
    v32 = pre_sv_responses_handle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 0;
      _os_log_impl(&dword_260D12000, v32, OS_LOG_TYPE_DEFAULT, "PREInternal - registerDisplayedQuickResponses", v42, 2u);
    }

    [MEMORY[0x277D02598] registerDisplayedQuickResponses:v30 plistPath:configPathCopy vocabPath:vocabFilePathCopy];
  }
}

@end