@interface CDMContextualSpanMatcherService
- (id)getPredictor;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)setup;
@end

@implementation CDMContextualSpanMatcherService

- (id)handleRequestCommandTypeNames
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMContextualSpanMatcherRequestCommand];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)getPredictor
{
  v2 = objc_alloc_init(MEMORY[0x1E69AE138]);

  return v2;
}

- (id)handle:(id)handle
{
  v19 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[CDMContextualSpanMatcherService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Calling ContextualSpanMatcher", &v15, 0xCu);
  }

  if (handleCopy && ([handleCopy contextualSpanMatcherRequest], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    if (self->_overrideSpansForReplay)
    {
      v7 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136315138;
        v16 = "[CDMContextualSpanMatcherService handle:]";
        _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s ContextualSpanMatcher is using override contextual spans", &v15, 0xCu);
      }

      v8 = [[CDMContextualSpanMatcherResponseCommand alloc] initWithMentions:self->_overrideSpansForReplay];
    }

    else
    {
      contextualSpanMatcherRequest = [handleCopy contextualSpanMatcherRequest];
      v12 = [(CDMContextualSpanMatcherService *)self getContextualSpansInternal:contextualSpanMatcherRequest];

      v13 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136315394;
        v16 = "[CDMContextualSpanMatcherService handle:]";
        v17 = 2112;
        v18 = v12;
        _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s #ContextualSpanMatcherService obtained response: %@; handling now", &v15, 0x16u);
      }

      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 136315138;
        v16 = "[CDMContextualSpanMatcherService handle:]";
        _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s Returning from ContextualSpanMatcher", &v15, 0xCu);
      }

      v8 = [[CDMContextualSpanMatcherResponseCommand alloc] initWithContextualSpanMatcherResponse:v12];
    }
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CDMContextualSpanMatcherService handle:]";
      _os_log_error_impl(&dword_1DC287000, v9, OS_LOG_TYPE_ERROR, "%s [ERR]: ContextualSpanMatcher: Either Request and/or Predictor is nil", &v15, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)setup:(id)setup
{
  v16 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[CDMContextualSpanMatcherService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Setting up ContextualSpanMatcher service", &v14, 0xCu);
  }

  dynamicConfig = [setupCopy dynamicConfig];

  overrideContextualSpans = [dynamicConfig overrideContextualSpans];
  overrideSpansForReplay = self->_overrideSpansForReplay;
  self->_overrideSpansForReplay = overrideContextualSpans;

  self->super.super._serviceState = 2;
  getPredictor = [(CDMContextualSpanMatcherService *)self getPredictor];
  contextualSpanMatcher = self->_contextualSpanMatcher;
  self->_contextualSpanMatcher = getPredictor;

  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[CDMContextualSpanMatcherService setup:]";
    _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s ContextualSpanMatcher service loaded", &v14, 0xCu);
  }

  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];

  return createSetupResponseCommand;
}

@end