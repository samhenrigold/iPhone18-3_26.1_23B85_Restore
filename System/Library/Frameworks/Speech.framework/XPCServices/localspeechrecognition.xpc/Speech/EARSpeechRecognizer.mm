@interface EARSpeechRecognizer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)pauseRecognition;
- (void)prepareForReuseWithNewSupportedFeatures:(id)features clientInfo:(id)info analysisContext:(id)context analysisOptions:(id)options;
- (void)resumeRecognitionWithLeftContext:(id)context rightContext:(id)rightContext selectedText:(id)text;
- (void)runRecognitionWithResultStream:(id)stream language:(id)language task:(id)task samplingRate:(unint64_t)rate lastStringOfPriorFinalResult:(id)result reply:(id)reply;
- (void)setClientInfo:(id)info;
- (void)setExtraLmList:(id)list sandboxExtensions:(id)extensions;
- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0;
@end

@implementation EARSpeechRecognizer

- (void)prepareForReuseWithNewSupportedFeatures:(id)features clientInfo:(id)info analysisContext:(id)context analysisOptions:(id)options
{
  featuresCopy = features;
  infoCopy = info;
  contextCopy = context;
  optionsCopy = options;
  selfCopy = self;
  sub_100027854(featuresCopy, infoCopy, contextCopy, options);
}

- (void)runRecognitionWithResultStream:(id)stream language:(id)language task:(id)task samplingRate:(unint64_t)rate lastStringOfPriorFinalResult:(id)result reply:(id)reply
{
  v11 = _Block_copy(reply);
  v12 = sub_100046E5C();
  v14 = v13;
  v15 = sub_100046E5C();
  v17 = v16;
  v18 = sub_100046E5C();
  v20 = v19;
  _Block_copy(v11);
  streamCopy = stream;
  selfCopy = self;
  sub_100028AE8(streamCopy, v12, v14, v15, v17, rate, v18, v20, selfCopy, v11);
  _Block_release(v11);

  v14, v23, v24, v25, v26, v27, v28, v29;
  v17, v30, v31, v32, v33, v34, v35, v36;

  v20, v37, v38, v39, v40, v41, v42, v43;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100029C48(listenerCopy, connectionCopy);

  return v9;
}

- (void)setExtraLmList:(id)list sandboxExtensions:(id)extensions
{
  v5 = sub_100046EFC();
  v6 = sub_100046EFC();
  selfCopy = self;
  sub_100029E80(v5, v6);

  v5, v8, v9, v10, v11, v12, v13, v14;

  v6, v15, v16, v17, v18, v19, v20, v21;
}

- (void)pauseRecognition
{
  selfCopy = self;
  sub_10002A824(selfCopy, v2, v3, v4, v5);
}

- (void)resumeRecognitionWithLeftContext:(id)context rightContext:(id)rightContext selectedText:(id)text
{
  v6 = sub_100046E5C();
  v8 = v7;
  v9 = sub_100046E5C();
  v11 = v10;
  v12 = sub_100046E5C();
  v14 = v13;
  selfCopy = self;
  sub_10002A9A4(v6, v8, v9, v11, v12, v14);

  v8, v16, v17, v18, v19, v20, v21, v22;
  v11, v23, v24, v25, v26, v27, v28, v29;

  v14, v30, v31, v32, v33, v34, v35, v36;
}

- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0
{
  postfixTextCopy = postfixText;
  if (text)
  {
    v48 = sub_100046E5C();
    v49 = v16;
    if (postfixTextCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v47 = 0;
    if (selectedText)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v48 = 0;
  v49 = 0;
  if (!postfixText)
  {
    goto LABEL_6;
  }

LABEL_3:
  v47 = sub_100046E5C();
  postfixTextCopy = v17;
  if (selectedText)
  {
LABEL_4:
    v18 = sub_100046E5C();
    selectedText = v19;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  selfCopy = self;
  sub_10002AC54(v48, v49, v47, postfixTextCopy, v18, selectedText, activeCopy, visibleTextCopy, suppressionCopy, commandSuppressionCopy, eventCopy);

  selectedText, v26, v27, v28, v29, v30, v31, v32;
  postfixTextCopy, v33, v34, v35, v36, v37, v38, v39;

  v49, v40, v41, v42, v43, v44, v45, v46;
}

- (void)setClientInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_10002B210();
}

@end