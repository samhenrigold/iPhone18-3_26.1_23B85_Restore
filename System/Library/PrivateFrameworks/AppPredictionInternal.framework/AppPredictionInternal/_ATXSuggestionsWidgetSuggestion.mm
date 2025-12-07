@interface _ATXSuggestionsWidgetSuggestion
- (BOOL)addSuggestion:(id)suggestion asMainSuggestion:(BOOL)mainSuggestion dryRun:(BOOL)run;
- (BOOL)containsIdenticalContentOfSuggestion:(id)suggestion;
- (_ATXSuggestionsWidgetSuggestion)initWithSuggestionsWidget:(id)widget containingStack:(id)stack suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
- (_ATXSuggestionsWidgetSuggestion)initWithSuggestionsWidget:(id)widget containingStack:(id)stack suggestionLayout:(id)layout suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
- (id)initForPreviewOfSize:(unint64_t)size hyperParameters:(id)parameters;
@end

@implementation _ATXSuggestionsWidgetSuggestion

- (_ATXSuggestionsWidgetSuggestion)initWithSuggestionsWidget:(id)widget containingStack:(id)stack suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  widgetCopy = widget;
  stackCopy = stack;
  deduplicatorCopy = deduplicator;
  parametersCopy = parameters;
  extensionBundleId = [widgetCopy extensionBundleId];
  v16 = [extensionBundleId isEqualToString:*MEMORY[0x277CEBBA0]];

  if (v16)
  {
    v40.receiver = self;
    v40.super_class = _ATXSuggestionsWidgetSuggestion;
    v18 = [(_ATXSuggestionsWidgetSuggestion *)&v40 init];
    self = v18;
    if (!v18)
    {
LABEL_13:
      self = self;
      selfCopy = self;
      goto LABEL_14;
    }

    objc_storeWeak(&v18->super._stack, stackCopy);
    objc_storeStrong(&self->super._widget, widget);
    objc_storeStrong(&self->super._suggestionDeduplicator, deduplicator);
    objc_storeStrong(&self->super._hyperParameters, parameters);
    if (![(ATXHomeScreenWidgetIdentifiable *)self->super._widget size])
    {
      v19 = 5;
      goto LABEL_12;
    }

    if ([(ATXHomeScreenWidgetIdentifiable *)self->super._widget size]== 1)
    {
      v19 = 9;
LABEL_12:
      self->super._layoutType = v19;
      v30 = objc_opt_new();
      suggestionsBySuggestionLayoutTypes = self->super._suggestionsBySuggestionLayoutTypes;
      self->super._suggestionsBySuggestionLayoutTypes = v30;

      goto LABEL_13;
    }

    v29 = [(ATXHomeScreenWidgetIdentifiable *)self->super._widget size];
    if (v29 == 2)
    {
      v19 = 11;
      goto LABEL_12;
    }

    v20 = __atxlog_handle_blending(v29);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [(_ATXSuggestionsWidgetSuggestion *)v20 initWithSuggestionsWidget:v33 containingStack:v34 suggestionDeduplicator:v35 hyperParameters:v36, v37, v38, v39];
    }
  }

  else
  {
    v20 = __atxlog_handle_blending(v17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [(_ATXSuggestionsWidgetSuggestion *)v20 initWithSuggestionsWidget:v21 containingStack:v22 suggestionDeduplicator:v23 hyperParameters:v24, v25, v26, v27];
    }
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (_ATXSuggestionsWidgetSuggestion)initWithSuggestionsWidget:(id)widget containingStack:(id)stack suggestionLayout:(id)layout suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  layoutCopy = layout;
  v14 = [(_ATXSuggestionsWidgetSuggestion *)self initWithSuggestionsWidget:widget containingStack:stack suggestionDeduplicator:deduplicator hyperParameters:parameters];
  if (!v14)
  {
    goto LABEL_4;
  }

  layoutType = [layoutCopy layoutType];
  if (layoutType == v14->super._layoutType)
  {
    objc_storeStrong(&v14->super._suggestionLayout, layout);
LABEL_4:
    v16 = v14;
    goto LABEL_8;
  }

  v17 = __atxlog_handle_blending(layoutType);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [(_ATXSuggestionsWidgetSuggestion *)v17 initWithSuggestionsWidget:v18 containingStack:v19 suggestionLayout:v20 suggestionDeduplicator:v21 hyperParameters:v22, v23, v24];
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (id)initForPreviewOfSize:(unint64_t)size hyperParameters:(id)parameters
{
  parametersCopy = parameters;
  v29.receiver = self;
  v29.super_class = _ATXSuggestionsWidgetSuggestion;
  v8 = [(_ATXSuggestionsWidgetSuggestion *)&v29 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v8->super._hyperParameters, parameters);
  v10 = objc_opt_new();
  widget = v9->super._widget;
  v9->super._widget = v10;

  v12 = *MEMORY[0x277CEBBA0];
  [(ATXHomeScreenWidgetIdentifiable *)v9->super._widget setAppBundleId:*MEMORY[0x277CEBBA0]];
  [(ATXHomeScreenWidgetIdentifiable *)v9->super._widget setExtensionBundleId:v12];
  v13 = ATXSpecialWidgetKindSiriSuggestions();
  [(ATXHomeScreenWidgetIdentifiable *)v9->super._widget setWidgetKind:v13];

  [(ATXHomeScreenWidgetIdentifiable *)v9->super._widget setSize:size];
  if (![(ATXHomeScreenWidgetIdentifiable *)v9->super._widget size])
  {
    v14 = MEMORY[0x277CEBBA8];
    v15 = 5;
    goto LABEL_8;
  }

  if ([(ATXHomeScreenWidgetIdentifiable *)v9->super._widget size]== 1)
  {
    v14 = MEMORY[0x277CEBBB0];
    v15 = 9;
LABEL_8:
    [(ATXHomeScreenWidgetIdentifiable *)v9->super._widget setWidgetUniqueId:*v14];
    v9->super._layoutType = v15;
    v17 = objc_opt_new();
    suggestionsBySuggestionLayoutTypes = v9->super._suggestionsBySuggestionLayoutTypes;
    v9->super._suggestionsBySuggestionLayoutTypes = v17;

LABEL_9:
    v19 = v9;
    goto LABEL_10;
  }

  v16 = [(ATXHomeScreenWidgetIdentifiable *)v9->super._widget size];
  if (v16 == 2)
  {
    v14 = MEMORY[0x277CEBBB8];
    v15 = 11;
    goto LABEL_8;
  }

  v21 = __atxlog_handle_blending(v16);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    [(_ATXSuggestionsWidgetSuggestion *)v21 initForPreviewOfSize:v22 hyperParameters:v23, v24, v25, v26, v27, v28];
  }

  v19 = 0;
LABEL_10:

  return v19;
}

- (BOOL)containsIdenticalContentOfSuggestion:(id)suggestion
{
  suggestionDeduplicator = self->super._suggestionDeduplicator;
  suggestionCopy = suggestion;
  _existingSuggestionsInLayout = [(_ATXCompositeLayoutWidgetSuggestionBase *)self _existingSuggestionsInLayout];
  LOBYTE(suggestionDeduplicator) = [(ATXSuggestionDeduplicatorProtocol *)suggestionDeduplicator suggestionIsDuplicate:suggestionCopy existingSuggestions:_existingSuggestionsInLayout shouldCompareAcrossTypes:1];

  return suggestionDeduplicator;
}

- (BOOL)addSuggestion:(id)suggestion asMainSuggestion:(BOOL)mainSuggestion dryRun:(BOOL)run
{
  runCopy = run;
  mainSuggestionCopy = mainSuggestion;
  suggestionCopy = suggestion;
  if ([(_ATXCompositeLayoutWidgetSuggestionBase *)self isLayoutComplete]|| ![(ATXBlendingLayerHyperParameters *)self->super._hyperParameters isSuggestionEligibleForSuggestionsWidget:suggestionCopy])
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _ATXSuggestionsWidgetSuggestion;
    v9 = [(_ATXCompositeLayoutWidgetSuggestionBase *)&v11 addSuggestion:suggestionCopy asMainSuggestion:mainSuggestionCopy dryRun:runCopy];
  }

  return v9;
}

- (void)initWithSuggestionsWidget:(uint64_t)a3 containingStack:(uint64_t)a4 suggestionDeduplicator:(uint64_t)a5 hyperParameters:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[_ATXSuggestionsWidgetSuggestion initWithSuggestionsWidget:containingStack:suggestionDeduplicator:hyperParameters:]";
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: Widget is not a SuggestionsWidget.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithSuggestionsWidget:(uint64_t)a3 containingStack:(uint64_t)a4 suggestionDeduplicator:(uint64_t)a5 hyperParameters:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[_ATXSuggestionsWidgetSuggestion initWithSuggestionsWidget:containingStack:suggestionDeduplicator:hyperParameters:]";
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: Incompatible stack size.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithSuggestionsWidget:(uint64_t)a3 containingStack:(uint64_t)a4 suggestionLayout:(uint64_t)a5 suggestionDeduplicator:(uint64_t)a6 hyperParameters:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[_ATXSuggestionsWidgetSuggestion initWithSuggestionsWidget:containingStack:suggestionLayout:suggestionDeduplicator:hyperParameters:]";
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: SuggestionLayout is incompatible with stack size.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initForPreviewOfSize:(uint64_t)a3 hyperParameters:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[_ATXSuggestionsWidgetSuggestion initForPreviewOfSize:hyperParameters:]";
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: Incompatible stack size.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end