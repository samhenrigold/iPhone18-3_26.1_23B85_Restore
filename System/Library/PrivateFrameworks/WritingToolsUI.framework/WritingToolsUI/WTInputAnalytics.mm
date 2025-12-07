@interface WTInputAnalytics
+ (id)getIAChannelWritingTools;
+ (id)getIAPayloadKeyWritingToolsUI;
+ (id)getIAPayloadValueWritingToolsUIAffordance;
+ (id)getIASignalWritingToolsPanelRequested;
+ (void)sendSignal:(id)signal toChannel:(id)channel withPayload:(id)payload;
+ (void)sendWritingToolsSignal:(id)signal payload:(id)payload;
@end

@implementation WTInputAnalytics

+ (void)sendSignal:(id)signal toChannel:(id)channel withPayload:(id)payload
{
  signalCopy = signal;
  channelCopy = channel;
  payloadCopy = payload;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v10 = getIASignalAnalyticsClass_softClass_0;
  v17 = getIASignalAnalyticsClass_softClass_0;
  if (!getIASignalAnalyticsClass_softClass_0)
  {
    InputAnalyticsLibraryCore_0(0);
    v15[3] = objc_getClass("IASignalAnalytics");
    getIASignalAnalyticsClass_softClass_0 = v15[3];
    v10 = v15[3];
  }

  v11 = v10;
  _Block_object_dispose(&v14, 8);
  if (v10)
  {
    [v10 sendSignal:signalCopy toChannel:channelCopy withPayload:payloadCopy];
  }

  else
  {
    v13 = WTInputAnalyticsLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WTInputAnalytics sendSignal:v13 toChannel:? withPayload:?];
    }
  }
}

+ (void)sendWritingToolsSignal:(id)signal payload:(id)payload
{
  payloadCopy = payload;
  signalCopy = signal;
  v7 = +[WTInputAnalytics getIAChannelWritingTools];
  [WTInputAnalytics sendSignal:signalCopy toChannel:v7 withPayload:payloadCopy];
}

+ (id)getIAChannelWritingTools
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAChannelWritingToolsSymbolLoc_ptr_0;
  v11 = getIAChannelWritingToolsSymbolLoc_ptr_0;
  if (!getIAChannelWritingToolsSymbolLoc_ptr_0)
  {
    v3 = InputAnalyticsLibrary_0();
    v9[3] = dlsym(v3, "IAChannelWritingTools");
    getIAChannelWritingToolsSymbolLoc_ptr_0 = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

+ (id)getIASignalWritingToolsPanelRequested
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIASignalWritingToolsPanelRequestedSymbolLoc_ptr;
  v11 = getIASignalWritingToolsPanelRequestedSymbolLoc_ptr;
  if (!getIASignalWritingToolsPanelRequestedSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary_0();
    v9[3] = dlsym(v3, "IASignalWritingToolsPanelRequested");
    getIASignalWritingToolsPanelRequestedSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

+ (id)getIAPayloadKeyWritingToolsUI
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadKeyWritingToolsUISymbolLoc_ptr_0;
  v11 = getIAPayloadKeyWritingToolsUISymbolLoc_ptr_0;
  if (!getIAPayloadKeyWritingToolsUISymbolLoc_ptr_0)
  {
    v3 = InputAnalyticsLibrary_0();
    v9[3] = dlsym(v3, "IAPayloadKeyWritingToolsUI");
    getIAPayloadKeyWritingToolsUISymbolLoc_ptr_0 = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

+ (id)getIAPayloadValueWritingToolsUIAffordance
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadValueWritingToolsUIAffordanceSymbolLoc_ptr;
  v11 = getIAPayloadValueWritingToolsUIAffordanceSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsUIAffordanceSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary_0();
    v9[3] = dlsym(v3, "IAPayloadValueWritingToolsUIAffordance");
    getIAPayloadValueWritingToolsUIAffordanceSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    v7 = v6;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v4 = *v2;

  return v4;
}

@end