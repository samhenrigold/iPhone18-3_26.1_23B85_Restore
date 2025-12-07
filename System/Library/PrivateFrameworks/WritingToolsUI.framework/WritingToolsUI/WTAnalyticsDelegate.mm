@interface WTAnalyticsDelegate
- (WTAnalyticsDelegate)initWithSmartReplyBool:(BOOL)bool smartReplyConfig:(id)config analyticsUUID:(id)d requestedTool:(int64_t)tool isEditable:(BOOL)editable;
- (id)getWritingToolsFeatureDetailsForCompositionSessionType:(int64_t)type;
- (id)getWritingToolsFeatureDetailsForRequestedTool:(int64_t)tool;
- (void)applicationDidBecomeActive;
- (void)applicationDidEnterBackground;
- (void)applicationWillTerminate;
- (void)compositionSession:(id)session didReceiveText:(id)text replacementRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished;
- (void)didBeginWritingToolsSession:(id)session contexts:(id)contexts;
- (void)didEndWritingToolsSession:(id)session accepted:(BOOL)accepted;
- (void)endWritingTools;
- (void)proofreadingSession:(id)session didReceiveSuggestions:(id)suggestions processedRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished;
- (void)proofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context;
- (void)redo;
- (void)sendWritingToolsOnlySignal:(id)signal withPayload:(id)payload;
- (void)sendWritingToolsOrSmartReplySignal:(id)signal withPayload:(id)payload;
- (void)undo;
- (void)willBeginWritingToolsSession:(id)session requestContexts:(id)contexts;
- (void)writingToolsSession:(id)session didReceiveAction:(int64_t)action;
@end

@implementation WTAnalyticsDelegate

- (WTAnalyticsDelegate)initWithSmartReplyBool:(BOOL)bool smartReplyConfig:(id)config analyticsUUID:(id)d requestedTool:(int64_t)tool isEditable:(BOOL)editable
{
  editableCopy = editable;
  boolCopy = bool;
  v49[3] = *MEMORY[0x1E69E9840];
  configCopy = config;
  dCopy = d;
  v38.receiver = self;
  v38.super_class = WTAnalyticsDelegate;
  v14 = [(WTAnalyticsDelegate *)&v38 init];
  v15 = v14;
  if (v14)
  {
    [(WTAnalyticsDelegate *)v14 setFromSmartReply:boolCopy];
    v16 = WTIATextAssistantLog([(WTAnalyticsDelegate *)v15 setIsEditableText:editableCopy]);
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D451D000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WTPanelBringup", &unk_1D455D3B5, buf, 2u);
    }

    v18 = WTIATextAssistantLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [WTAnalyticsDelegate initWithSmartReplyBool:v18 smartReplyConfig:? analyticsUUID:? requestedTool:? isEditable:?];
    }

    if (configCopy)
    {
      inputContextHistory = [configCopy inputContextHistory];
      threadIdentifier = [inputContextHistory threadIdentifier];
      threadIdentifier = v15->_threadIdentifier;
      v15->_threadIdentifier = threadIdentifier;
    }

    else
    {
      inputContextHistory = v15->_threadIdentifier;
      v15->_threadIdentifier = 0;
    }

    objc_storeStrong(&v15->_analyticsUUID, d);
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v22 = getIASignalWritingToolsPanelAppearedSymbolLoc_ptr;
    v47 = getIASignalWritingToolsPanelAppearedSymbolLoc_ptr;
    if (!getIASignalWritingToolsPanelAppearedSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = __getIASignalWritingToolsPanelAppearedSymbolLoc_block_invoke;
      v42 = &unk_1E8480B48;
      v43 = &v44;
      v23 = InputAnalyticsLibrary();
      v24 = dlsym(v23, "IASignalWritingToolsPanelAppeared");
      *(v43[1] + 24) = v24;
      getIASignalWritingToolsPanelAppearedSymbolLoc_ptr = *(v43[1] + 24);
      v22 = v45[3];
    }

    _Block_object_dispose(&v44, 8);
    if (!v22)
    {
      goto LABEL_17;
    }

    v25 = *v22;
    v26 = getIAPayloadKeyWritingToolsFeatureDetails();
    v48[0] = v26;
    v27 = [(WTAnalyticsDelegate *)v15 getWritingToolsFeatureDetailsForRequestedTool:tool];
    v49[0] = v27;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v28 = getIAPayloadKeyWritingToolsUISymbolLoc_ptr;
    v47 = getIAPayloadKeyWritingToolsUISymbolLoc_ptr;
    if (!getIAPayloadKeyWritingToolsUISymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = __getIAPayloadKeyWritingToolsUISymbolLoc_block_invoke;
      v42 = &unk_1E8480B48;
      v43 = &v44;
      v29 = InputAnalyticsLibrary();
      v30 = dlsym(v29, "IAPayloadKeyWritingToolsUI");
      *(v43[1] + 24) = v30;
      getIAPayloadKeyWritingToolsUISymbolLoc_ptr = *(v43[1] + 24);
      v28 = v45[3];
    }

    _Block_object_dispose(&v44, 8);
    if (!v28)
    {
LABEL_17:
      [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
      __break(1u);
    }

    v31 = *v28;
    v49[1] = @"Unspecified";
    v48[1] = v31;
    v48[2] = @"IsEditable";
    v32 = MEMORY[0x1E696AD98];
    v33 = v31;
    v34 = [v32 numberWithBool:{-[WTAnalyticsDelegate isEditableText](v15, "isEditableText")}];
    v49[2] = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:3];
    [(WTAnalyticsDelegate *)v15 sendWritingToolsOnlySignal:v25 withPayload:v35];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel_applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];
    [defaultCenter addObserver:v15 selector:sel_applicationDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];
    [defaultCenter addObserver:v15 selector:sel_applicationWillTerminate name:*MEMORY[0x1E69DDBD0] object:0];
  }

  return v15;
}

- (id)getWritingToolsFeatureDetailsForCompositionSessionType:(int64_t)type
{
  v3 = @"SummaryTransform";
  if (type > 6)
  {
    if (type > 9)
    {
      switch(type)
      {
        case 10:
          v3 = @"Compose";
          break;
        case 11:
          v3 = @"SmartReply";
          break;
        case 12:
          v3 = getIAPayloadValueWritingToolsFeatureDetailsProofreadingReview(@"SummaryTransform", a2);
          break;
      }
    }

    else if (type == 7)
    {
      v3 = getIAPayloadValueWritingToolsFeatureDetailsTakeawaysTransform(@"SummaryTransform", a2);
    }

    else
    {
      if (type == 8)
      {
        getIAPayloadValueWritingToolsFeatureDetailsBulletsTransform(@"SummaryTransform", a2);
      }

      else
      {
        getIAPayloadValueWritingToolsFeatureDetailsTablesTransform(@"SummaryTransform", a2);
      }
      v3 = ;
    }
  }

  else if (type > 2)
  {
    switch(type)
    {
      case 3:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsProfessionalTone(@"SummaryTransform", a2);
        break;
      case 4:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsConciseTone(@"SummaryTransform", a2);
        break;
      case 5:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsOpenEndedTone(@"SummaryTransform", a2);
        break;
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      v3 = getIAPayloadValueWritingToolsFeatureDetailsMagicRewrite(@"SummaryTransform", a2);
    }

    else if (type == 2)
    {
      v3 = getIAPayloadValueWritingToolsFeatureDetailsFriendlyTone(@"SummaryTransform", a2);
    }
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v4 = getIAPayloadValueWritingToolsFeatureDetailsGenericSymbolLoc_ptr;
    v12 = getIAPayloadValueWritingToolsFeatureDetailsGenericSymbolLoc_ptr;
    if (!getIAPayloadValueWritingToolsFeatureDetailsGenericSymbolLoc_ptr)
    {
      v5 = InputAnalyticsLibrary();
      v10[3] = dlsym(v5, "IAPayloadValueWritingToolsFeatureDetailsGeneric");
      getIAPayloadValueWritingToolsFeatureDetailsGenericSymbolLoc_ptr = v10[3];
      v4 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v4)
    {
      [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
      v8 = v7;
      _Block_object_dispose(&v9, 8);
      _Unwind_Resume(v8);
    }

    v3 = *v4;
  }

  return v3;
}

- (id)getWritingToolsFeatureDetailsForRequestedTool:(int64_t)tool
{
  v3 = @"Index";
  if (tool <= 18)
  {
    if (tool <= 10)
    {
      if (tool != 1)
      {
        if (tool == 2)
        {
          v3 = getIAPayloadValueWritingToolsFeatureDetailsMagicRewrite(@"Index", a2);
          goto LABEL_31;
        }

        if (tool != 3)
        {
          goto LABEL_31;
        }
      }

      v3 = getIAPayloadValueWritingToolsFeatureDetailsProofreadingReview(@"Index", a2);
      goto LABEL_31;
    }

    switch(tool)
    {
      case 11:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsFriendlyTone(@"Index", a2);
        break;
      case 12:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsProfessionalTone(@"Index", a2);
        break;
      case 13:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsConciseTone(@"Index", a2);
        break;
    }
  }

  else if (tool <= 22)
  {
    switch(tool)
    {
      case 19:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsOpenEndedTone(@"Index", a2);
        break;
      case 21:
        v3 = @"SummaryTransform";
        break;
      case 22:
        v3 = getIAPayloadValueWritingToolsFeatureDetailsTakeawaysTransform(@"Index", a2);
        break;
    }
  }

  else if (tool > 100)
  {
    v4 = @"Compose";
    if (tool != 201)
    {
      v4 = @"Index";
    }

    if (tool == 101)
    {
      v3 = @"SmartReply";
    }

    else
    {
      v3 = v4;
    }
  }

  else if (tool == 23)
  {
    v3 = getIAPayloadValueWritingToolsFeatureDetailsBulletsTransform(@"Index", a2);
  }

  else if (tool == 24)
  {
    v3 = getIAPayloadValueWritingToolsFeatureDetailsTablesTransform(@"Index", a2);
  }

LABEL_31:

  return v3;
}

- (void)sendWritingToolsOnlySignal:(id)signal withPayload:(id)payload
{
  signalCopy = signal;
  payloadCopy = payload;
  if (![(WTAnalyticsDelegate *)self fromSmartReply])
  {
    IASignalAnalyticsClass = getIASignalAnalyticsClass();
    v9 = getIAChannelWritingTools(IASignalAnalyticsClass, v8);
    uUIDString = [(NSUUID *)self->_analyticsUUID UUIDString];
    [IASignalAnalyticsClass sendSignal:signalCopy toChannel:v9 withUniqueStringID:uUIDString withPayload:payloadCopy];
  }
}

- (void)sendWritingToolsOrSmartReplySignal:(id)signal withPayload:(id)payload
{
  signalCopy = signal;
  payloadCopy = payload;
  fromSmartReply = [(WTAnalyticsDelegate *)self fromSmartReply];
  if (fromSmartReply)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v10 = getIAChannelSmartRepliesSymbolLoc_ptr;
    v22 = getIAChannelSmartRepliesSymbolLoc_ptr;
    if (!getIAChannelSmartRepliesSymbolLoc_ptr)
    {
      v11 = InputAnalyticsLibrary();
      v20[3] = dlsym(v11, "IAChannelSmartReplies");
      getIAChannelSmartRepliesSymbolLoc_ptr = v20[3];
      v10 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v10)
    {
      [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
      v18 = v17;
      _Block_object_dispose(&v19, 8);
      _Unwind_Resume(v18);
    }

    v12 = *v10;
  }

  else
  {
    v12 = getIAChannelWritingTools(fromSmartReply, v9);
  }

  v13 = v12;
  if ([(WTAnalyticsDelegate *)self fromSmartReply]&& (threadIdentifier = self->_threadIdentifier) != 0)
  {
    uUIDString = [(NSString *)threadIdentifier copy];
  }

  else
  {
    uUIDString = [(NSUUID *)self->_analyticsUUID UUIDString];
  }

  v16 = uUIDString;
  [getIASignalAnalyticsClass() sendSignal:signalCopy toChannel:v13 withUniqueStringID:uUIDString withPayload:payloadCopy];
}

- (void)applicationDidEnterBackground
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getIASignalWritingToolsUISuspendedSymbolLoc_ptr;
  v10 = getIASignalWritingToolsUISuspendedSymbolLoc_ptr;
  if (!getIASignalWritingToolsUISuspendedSymbolLoc_ptr)
  {
    v4 = InputAnalyticsLibrary();
    v8[3] = dlsym(v4, "IASignalWritingToolsUISuspended");
    getIASignalWritingToolsUISuspendedSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v6 = v5;
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  [(WTAnalyticsDelegate *)self sendWritingToolsOrSmartReplySignal:*v3 withPayload:0];
}

- (void)applicationDidBecomeActive
{
  if (InputAnalyticsLibraryCore(0) && getIASignalWritingToolsUIResumedSymbolLoc())
  {
    IASignalWritingToolsUIResumedSymbolLoc = getIASignalWritingToolsUIResumedSymbolLoc();
    if (!IASignalWritingToolsUIResumedSymbolLoc)
    {
      [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
      [(WTAnalyticsDelegate *)v5 applicationWillTerminate];
      return;
    }

    v4 = *IASignalWritingToolsUIResumedSymbolLoc;
  }

  else
  {
    v4 = @"UIResumed";
  }

  v7 = v4;
  [(WTAnalyticsDelegate *)self sendWritingToolsOrSmartReplySignal:v4 withPayload:0];
}

- (void)applicationWillTerminate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getIASignalWritingToolsUITerminatedSymbolLoc_ptr;
  v10 = getIASignalWritingToolsUITerminatedSymbolLoc_ptr;
  if (!getIASignalWritingToolsUITerminatedSymbolLoc_ptr)
  {
    v4 = InputAnalyticsLibrary();
    v8[3] = dlsym(v4, "IASignalWritingToolsUITerminated");
    getIASignalWritingToolsUITerminatedSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v6 = v5;
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  [(WTAnalyticsDelegate *)self sendWritingToolsOrSmartReplySignal:*v3 withPayload:0];
}

- (void)willBeginWritingToolsSession:(id)session requestContexts:(id)contexts
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(WTAnalyticsDelegate *)self setProofreadingSuggestions:v5];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(WTAnalyticsDelegate *)self setUuidSuggestionMapping:v6];

  [(WTAnalyticsDelegate *)self setNumDrafts:0];

  [(WTAnalyticsDelegate *)self setCurrentDraftNumber:0];
}

- (void)didBeginWritingToolsSession:(id)session contexts:(id)contexts
{
  v66 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  contextsCopy = contexts;
  v48 = sessionCopy;
  type = [sessionCopy type];
  compositionSessionType = [sessionCopy compositionSessionType];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = contextsCopy;
  v7 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v7)
  {
    v8 = *v53;
    v9 = &stru_1F4FC5520;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        range = [v11 range];
        [v11 range];
        v14 = v13;
        attributedText = [v11 attributedText];
        string = [attributedText string];
        LOBYTE(range) = v14 + range > [string length];

        attributedText2 = [v11 attributedText];
        string2 = [attributedText2 string];
        if (range)
        {

          attributedText2 = WTIAWritingToolsLog(v19);
          if (os_log_type_enabled(attributedText2, OS_LOG_TYPE_ERROR))
          {
            range2 = [v11 range];
            [v11 range];
            v22 = v21;
            attributedText3 = [v11 attributedText];
            string3 = [attributedText3 string];
            v25 = [string3 length];
            *buf = 134218496;
            *&buf[4] = range2;
            *&buf[12] = 2048;
            *&buf[14] = v22;
            *&buf[22] = 2048;
            v64 = v25;
            _os_log_error_impl(&dword_1D451D000, attributedText2, OS_LOG_TYPE_ERROR, "context.range (%lu, %lu) out of bounds (%lu)!", buf, 0x20u);
          }
        }

        else
        {
          range3 = [v11 range];
          v28 = [string2 substringWithRange:{range3, v27}];

          string2 = v28;
        }

        if (string2)
        {
          v29 = [(__CFString *)v9 stringByAppendingString:string2];

          v9 = v29;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = &stru_1F4FC5520;
  }

  if (type == 2)
  {
    v32 = [(WTAnalyticsDelegate *)self getWritingToolsFeatureDetailsForCompositionSessionType:compositionSessionType];
  }

  else
  {
    if (type != 1)
    {
      v33 = WTIAWritingToolsLog(v30);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [WTAnalyticsDelegate didBeginWritingToolsSession:contexts:];
      }

      goto LABEL_30;
    }

    v32 = getIAPayloadValueWritingToolsFeatureDetailsProofreadingReview(v30, v31);
  }

  v33 = v32;
  if (v32)
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v34 = getIASignalWritingToolsActionSelectedSymbolLoc_ptr;
    v59 = getIASignalWritingToolsActionSelectedSymbolLoc_ptr;
    if (!getIASignalWritingToolsActionSelectedSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getIASignalWritingToolsActionSelectedSymbolLoc_block_invoke;
      v64 = &unk_1E8480B48;
      v65 = &v56;
      v35 = InputAnalyticsLibrary();
      v36 = dlsym(v35, "IASignalWritingToolsActionSelected");
      *(v65[1] + 24) = v36;
      getIASignalWritingToolsActionSelectedSymbolLoc_ptr = *(v65[1] + 24);
      v34 = v57[3];
    }

    _Block_object_dispose(&v56, 8);
    if (!v34)
    {
      goto LABEL_32;
    }

    v37 = *v34;
    v38 = getIAPayloadKeyWritingToolsFeatureDetails();
    v61[0] = v33;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v39 = getIAPayloadKeyWritingToolsInputTextSymbolLoc_ptr;
    v59 = getIAPayloadKeyWritingToolsInputTextSymbolLoc_ptr;
    v60[0] = v38;
    if (!getIAPayloadKeyWritingToolsInputTextSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getIAPayloadKeyWritingToolsInputTextSymbolLoc_block_invoke;
      v64 = &unk_1E8480B48;
      v65 = &v56;
      v40 = InputAnalyticsLibrary();
      v41 = dlsym(v40, "IAPayloadKeyWritingToolsInputText");
      *(v65[1] + 24) = v41;
      getIAPayloadKeyWritingToolsInputTextSymbolLoc_ptr = *(v65[1] + 24);
      v39 = v57[3];
    }

    _Block_object_dispose(&v56, 8);
    if (!v39)
    {
LABEL_32:
      [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
      __break(1u);
    }

    v42 = *v39;
    v61[1] = v9;
    v60[1] = v42;
    v60[2] = @"IsEditable";
    v43 = MEMORY[0x1E696AD98];
    v44 = v42;
    v45 = [v43 numberWithBool:{-[WTAnalyticsDelegate isEditableText](self, "isEditableText")}];
    v61[2] = v45;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3];
    [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v37 withPayload:v46];

LABEL_30:
  }
}

- (void)writingToolsSession:(id)session didReceiveAction:(int64_t)action
{
  v40[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if ([sessionCopy type] == 2)
  {
    v8 = getIAPayloadValueWritingToolsUIRewritingView(2, v7);
  }

  else
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v10 = getIAPayloadValueWritingToolsUIProofreadingViewSymbolLoc_ptr;
    v36 = getIAPayloadValueWritingToolsUIProofreadingViewSymbolLoc_ptr;
    if (!getIAPayloadValueWritingToolsUIProofreadingViewSymbolLoc_ptr)
    {
      v11 = InputAnalyticsLibrary();
      v34[3] = dlsym(v11, "IAPayloadValueWritingToolsUIProofreadingView");
      getIAPayloadValueWritingToolsUIProofreadingViewSymbolLoc_ptr = v34[3];
      v10 = v34[3];
    }

    _Block_object_dispose(&v33, 8);
    if (!v10)
    {
      goto LABEL_25;
    }

    v8 = *v10;
  }

  v12 = v8;
  if (action != 3)
  {
    if (action == 2)
    {
      v13 = getIASignalWritingToolsButtonTapped(v8, v9);
      v22 = getIAPayloadKeyWritingToolsInteractionType(v13, v21);
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v23 = getIAPayloadValueWritingToolsInteractionTypeShowRewrittenSymbolLoc_ptr;
      v36 = getIAPayloadValueWritingToolsInteractionTypeShowRewrittenSymbolLoc_ptr;
      v37 = v22;
      if (!getIAPayloadValueWritingToolsInteractionTypeShowRewrittenSymbolLoc_ptr)
      {
        v24 = InputAnalyticsLibrary();
        v34[3] = dlsym(v24, "IAPayloadValueWritingToolsInteractionTypeShowRewritten");
        getIAPayloadValueWritingToolsInteractionTypeShowRewrittenSymbolLoc_ptr = v34[3];
        v23 = v34[3];
      }

      _Block_object_dispose(&v33, 8);
      if (v23)
      {
        v38 = *v23;
        v25 = MEMORY[0x1E695DF20];
        v26 = v38;
        v27 = [v25 dictionaryWithObjects:&v38 forKeys:&v37 count:1];

        [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v13 withPayload:v27];
        goto LABEL_23;
      }
    }

    else
    {
      if (action != 1)
      {
        v13 = WTIAWritingToolsLog(v8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [WTAnalyticsDelegate writingToolsSession:didReceiveAction:];
        }

        goto LABEL_23;
      }

      v13 = getIASignalWritingToolsButtonTapped(v8, v9);
      v15 = getIAPayloadKeyWritingToolsInteractionType(v13, v14);
      v39 = v15;
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v16 = getIAPayloadValueWritingToolsInteractionTypeShowOriginalSymbolLoc_ptr;
      v36 = getIAPayloadValueWritingToolsInteractionTypeShowOriginalSymbolLoc_ptr;
      if (!getIAPayloadValueWritingToolsInteractionTypeShowOriginalSymbolLoc_ptr)
      {
        v17 = InputAnalyticsLibrary();
        v34[3] = dlsym(v17, "IAPayloadValueWritingToolsInteractionTypeShowOriginal");
        getIAPayloadValueWritingToolsInteractionTypeShowOriginalSymbolLoc_ptr = v34[3];
        v16 = v34[3];
      }

      _Block_object_dispose(&v33, 8);
      if (v16)
      {
        v40[0] = *v16;
        v18 = MEMORY[0x1E695DF20];
        v19 = v40[0];
        v20 = [v18 dictionaryWithObjects:v40 forKeys:&v39 count:1];

        [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v13 withPayload:v20];
LABEL_23:

        goto LABEL_24;
      }
    }

LABEL_25:
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    __break(1u);
  }

  [(WTAnalyticsDelegate *)self setNumDrafts:[(WTAnalyticsDelegate *)self numDrafts]+ 1];
  v28 = [(WTAnalyticsDelegate *)self setCurrentDraftNumber:[(WTAnalyticsDelegate *)self numDrafts]];
  v30 = getIAPayloadValueWritingToolsUIRewritingView(v28, v29);
  v31 = v12 == v30;

  if (!v31)
  {
    v13 = WTIAWritingToolsLog(v32);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WTAnalyticsDelegate writingToolsSession:v12 didReceiveAction:v13];
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)didEndWritingToolsSession:(id)session accepted:(BOOL)accepted
{
  acceptedCopy = accepted;
  v91 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if ([sessionCopy type] == 1)
  {
    v76 = sessionCopy;
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    proofreadingSuggestions = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
    v10 = [proofreadingSuggestions count];

    v11 = 0;
    if (v10)
    {
      v12 = 0;
      do
      {
        if (acceptedCopy)
        {
          proofreadingSuggestions2 = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
          v14 = [proofreadingSuggestions2 objectAtIndexedSubscript:v12];
          state = [v14 state];

          if (state == 3)
          {
            v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
            v19 = v8;
            goto LABEL_13;
          }

          if (state == 1)
          {
            v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
            v19 = v7;
LABEL_13:
            [v19 addObject:v17];
            v11 = 1;
            goto LABEL_16;
          }

          if (state)
          {
            v17 = WTIAWritingToolsLog(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              proofreadingSuggestions3 = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
              v23 = [proofreadingSuggestions3 objectAtIndexedSubscript:v12];
              state2 = [v23 state];
              *buf = 134218240;
              v88 = state2;
              v89 = 2048;
              v90 = v12;
              _os_log_error_impl(&dword_1D451D000, v17, OS_LOG_TYPE_ERROR, "didEndWritingToolsSession: Unexpected proofreading suggestion state %lu for index %lu", buf, 0x16u);
            }

            goto LABEL_16;
          }

          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          v18 = v7;
        }

        else
        {
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          v18 = v8;
        }

        [v18 addObject:v17];
LABEL_16:

        ++v12;
        proofreadingSuggestions4 = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
        v21 = [proofreadingSuggestions4 count];
      }

      while (v12 < v21);
    }

    if ([v7 count])
    {
      IAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc = InputAnalyticsLibraryCore(0);
      if (IAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc && (IAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc = getIAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc()) != 0)
      {
        IAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc = getIAPayloadValueWritingToolsInteractionTypeUnspecified();
        v31 = IAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc;
      }

      else
      {
        v31 = @"Unspecified";
      }

      v75 = getIASignalWritingToolsResultsAccepted(IAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc, v30);
      v74 = getIAPayloadKeyWritingToolsAcceptedAll(v75, v32);
      v85[0] = v74;
      v33 = MEMORY[0x1E696AD98];
      if (v11)
      {
        v34 = 0;
      }

      else
      {
        v35 = [v7 count];
        proofreadingSuggestions5 = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
        v34 = v35 == [proofreadingSuggestions5 count];
      }

      v36 = [v33 numberWithInt:v34];
      v86[0] = v36;
      v38 = getIAPayloadKeyWritingToolsResultIndices(v36, v37);
      v85[1] = v38;
      v86[1] = v7;
      v40 = getIAPayloadKeyWritingToolsInteractionType(v38, v39);
      v85[2] = v40;
      v41 = v31;
      v86[2] = v31;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:3];
      [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v75 withPayload:v42];

      if ((v11 & 1) == 0)
      {
      }
    }

    v43 = [v8 count];
    if (v43)
    {
      v45 = getIASignalWritingToolsResultsRejected(v43, v44);
      v47 = getIAPayloadKeyWritingToolsRejectedAll(v45, v46);
      v83[0] = v47;
      v48 = [MEMORY[0x1E696AD98] numberWithInt:!acceptedCopy];
      v84[0] = v48;
      v50 = getIAPayloadKeyWritingToolsResultIndices(v48, v49);
      v83[1] = v50;
      v84[1] = v8;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];
      [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v45 withPayload:v51];
    }

    sessionCopy = v76;
    goto LABEL_39;
  }

  type = [sessionCopy type];
  if (type != 2)
  {
    v7 = WTIAWritingToolsLog(type);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WTAnalyticsDelegate didEndWritingToolsSession:sessionCopy accepted:v7];
    }

    goto LABEL_39;
  }

  if (acceptedCopy)
  {
    v26 = InputAnalyticsLibraryCore(0);
    if (v26 && (v26 = getIAPayloadValueWritingToolsInteractionTypeUnspecifiedSymbolLoc()) != 0)
    {
      v28 = sessionCopy;
      v26 = getIAPayloadValueWritingToolsInteractionTypeUnspecified();
      v7 = v26;
    }

    else
    {
      v28 = sessionCopy;
      v7 = @"Unspecified";
    }

    v63 = getIASignalWritingToolsResultsAccepted(v26, v27);
    v65 = getIAPayloadKeyWritingToolsAcceptedAll(v63, v64);
    v81[0] = v65;
    v82[0] = MEMORY[0x1E695E110];
    v67 = getIAPayloadKeyWritingToolsResultIndices(v65, v66);
    v81[1] = v67;
    v68 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WTAnalyticsDelegate currentDraftNumber](self, "currentDraftNumber")}];
    v80 = v68;
    v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
    v82[1] = v69;
    v71 = getIAPayloadKeyWritingToolsInteractionType(v69, v70);
    v81[2] = v71;
    v82[2] = v7;
    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:3];
    [(WTAnalyticsDelegate *)self sendWritingToolsOrSmartReplySignal:v63 withPayload:v72];

    sessionCopy = v28;
    goto LABEL_39;
  }

  requestedTool = [sessionCopy requestedTool];
  if (requestedTool != 201 || (requestedTool = [(WTAnalyticsDelegate *)self currentDraftNumber], requestedTool >= 1))
  {
    v7 = getIASignalWritingToolsResultsRejected(requestedTool, v53);
    getIAPayloadKeyWritingToolsRejectedAll(v7, v54);
    v56 = v55 = sessionCopy;
    v78[0] = v56;
    v57 = [MEMORY[0x1E696AD98] numberWithInt:1];
    v79[0] = v57;
    v59 = getIAPayloadKeyWritingToolsResultIndices(v57, v58);
    v78[1] = v59;
    v60 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WTAnalyticsDelegate currentDraftNumber](self, "currentDraftNumber")}];
    v77 = v60;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
    v79[1] = v61;
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
    [(WTAnalyticsDelegate *)self sendWritingToolsOrSmartReplySignal:v7 withPayload:v62];

    sessionCopy = v55;
LABEL_39:
  }

  [(WTAnalyticsDelegate *)self setProofreadingSuggestions:0];
  [(WTAnalyticsDelegate *)self setUuidSuggestionMapping:0];
}

- (void)proofreadingSession:(id)session didReceiveSuggestions:(id)suggestions processedRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished
{
  finishedCopy = finished;
  v34[1] = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  proofreadingSuggestions = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
  [proofreadingSuggestions addObjectsFromArray:suggestionsCopy];

  if (finishedCopy)
  {
    proofreadingSuggestions2 = [(WTAnalyticsDelegate *)self proofreadingSuggestions];
    v12 = [proofreadingSuggestions2 count];

    v15 = getIASignalWritingToolsResultsOffered(v13, v14);
    v17 = getIAPayloadKeyWritingToolsNumResultsOffered(v15, v16);
    v33 = v17;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
    v34[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v15 withPayload:v19];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = suggestionsCopy;
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      v24 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v28 + 1) + 8 * v24);
        uuidSuggestionMapping = [(WTAnalyticsDelegate *)self uuidSuggestionMapping];
        uuid = [v25 uuid];
        [uuidSuggestionMapping setObject:v25 forKeyedSubscript:uuid];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v22);
  }
}

- (void)proofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context
{
  dCopy = d;
  uuidSuggestionMapping = [(WTAnalyticsDelegate *)self uuidSuggestionMapping];
  v9 = [uuidSuggestionMapping objectForKeyedSubscript:dCopy];

  [v9 setState:state];
}

- (void)compositionSession:(id)session didReceiveText:(id)text replacementRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished
{
  finishedCopy = finished;
  v32[2] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  textCopy = text;
  contextCopy = context;
  if (finishedCopy)
  {
    numDrafts = [(WTAnalyticsDelegate *)self numDrafts];
    v16 = getIASignalWritingToolsResultsOffered(numDrafts, v15);
    v18 = getIAPayloadKeyWritingToolsNumResultsOffered(v16, v17);
    v30 = v18;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
    v32[0] = v19;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v20 = getIAPayloadKeyWritingToolsResultIndexSymbolLoc_ptr;
    v29 = getIAPayloadKeyWritingToolsResultIndexSymbolLoc_ptr;
    if (!getIAPayloadKeyWritingToolsResultIndexSymbolLoc_ptr)
    {
      v21 = InputAnalyticsLibrary();
      v27[3] = dlsym(v21, "IAPayloadKeyWritingToolsResultIndex");
      getIAPayloadKeyWritingToolsResultIndexSymbolLoc_ptr = v27[3];
      v20 = v27[3];
    }

    _Block_object_dispose(&v26, 8);
    if (!v20)
    {
      [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
      __break(1u);
    }

    v31 = *v20;
    v22 = MEMORY[0x1E696AD98];
    v23 = v31;
    v24 = [v22 numberWithUnsignedInteger:numDrafts];
    v32[1] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v30 count:2];
    [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:v16 withPayload:v25];
  }
}

- (void)endWritingTools
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getIASignalWritingToolsPanelDismissedSymbolLoc_ptr;
  v10 = getIASignalWritingToolsPanelDismissedSymbolLoc_ptr;
  if (!getIASignalWritingToolsPanelDismissedSymbolLoc_ptr)
  {
    v4 = InputAnalyticsLibrary();
    v8[3] = dlsym(v4, "IASignalWritingToolsPanelDismissed");
    getIASignalWritingToolsPanelDismissedSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v6 = v5;
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  [(WTAnalyticsDelegate *)self sendWritingToolsOnlySignal:*v3 withPayload:0];
}

- (void)undo
{
  currentDraftNumber = [(WTAnalyticsDelegate *)self currentDraftNumber];
  v4 = 2;
  if (currentDraftNumber > 2)
  {
    v4 = currentDraftNumber;
  }

  [(WTAnalyticsDelegate *)self setCurrentDraftNumber:v4 - 1];
}

- (void)redo
{
  currentDraftNumber = [(WTAnalyticsDelegate *)self currentDraftNumber];
  numDrafts = [(WTAnalyticsDelegate *)self numDrafts];
  if (currentDraftNumber + 1 > numDrafts)
  {
    v5 = currentDraftNumber + 1;
  }

  else
  {
    v5 = numDrafts;
  }

  [(WTAnalyticsDelegate *)self setCurrentDraftNumber:v5];
}

- (void)initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:.cold.2()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  [WTAnalyticsDelegate didBeginWritingToolsSession:contexts:];
}

- (void)didBeginWritingToolsSession:contexts:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1D451D000, v0, OS_LOG_TYPE_ERROR, "Unsupported session type: %lu", v1, 0xCu);
}

- (void)writingToolsSession:(uint64_t)a1 didReceiveAction:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = getIAPayloadValueWritingToolsUIRewritingView(a1, a2);
  OUTLINED_FUNCTION_0();
  v6 = 2048;
  v7 = a1;
  _os_log_error_impl(&dword_1D451D000, a2, OS_LOG_TYPE_ERROR, "WTActionShowRewritten action performed, expected UI to be rewriting view (%lu) but got %lu", v5, 0x16u);
}

- (void)writingToolsSession:didReceiveAction:.cold.5()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1D451D000, v0, OS_LOG_TYPE_DEBUG, "didReceiveAction: %lu ignored", v1, 0xCu);
}

- (void)didEndWritingToolsSession:(void *)a1 accepted:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 type];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1D451D000, a2, OS_LOG_TYPE_ERROR, "didEndWritingToolsSession: Unsupported session type: %lu", v3, 0xCu);
}

@end