@interface _ATXAppPredictionPanelSuggestion
- (BOOL)addSuggestion:(id)suggestion asMainSuggestion:(BOOL)mainSuggestion dryRun:(BOOL)run;
- (BOOL)containsIdenticalContentOfSuggestion:(id)suggestion;
- (_ATXAppPredictionPanelSuggestion)initWithAppPredictionPanel:(id)panel containingStack:(id)stack suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
- (_ATXAppPredictionPanelSuggestion)initWithAppPredictionPanel:(id)panel containingStack:(id)stack suggestionLayout:(id)layout suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
- (id)initForPreviewWithHyperParameters:(id)parameters;
@end

@implementation _ATXAppPredictionPanelSuggestion

- (_ATXAppPredictionPanelSuggestion)initWithAppPredictionPanel:(id)panel containingStack:(id)stack suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  panelCopy = panel;
  stackCopy = stack;
  deduplicatorCopy = deduplicator;
  parametersCopy = parameters;
  extensionBundleId = [panelCopy extensionBundleId];
  v16 = [extensionBundleId isEqualToString:*MEMORY[0x277CEB1C0]];

  if ((v16 & 1) == 0)
  {
    v23 = __atxlog_handle_blending(v17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [(_ATXAppPredictionPanelSuggestion *)v23 initWithAppPredictionPanel:v24 containingStack:v25 suggestionDeduplicator:v26 hyperParameters:v27, v28, v29, v30];
    }

    goto LABEL_10;
  }

  v39.receiver = self;
  v39.super_class = _ATXAppPredictionPanelSuggestion;
  v18 = [(_ATXAppPredictionPanelSuggestion *)&v39 init];
  self = v18;
  if (v18)
  {
    objc_storeWeak(&v18->super._stack, stackCopy);
    objc_storeStrong(&self->super._widget, panel);
    objc_storeStrong(&self->super._suggestionDeduplicator, deduplicator);
    objc_storeStrong(&self->super._hyperParameters, parameters);
    v19 = [(ATXHomeScreenWidgetIdentifiable *)self->super._widget size];
    if (v19 == 1)
    {
      self->super._layoutType = 0;
      v20 = objc_opt_new();
      suggestionsBySuggestionLayoutTypes = self->super._suggestionsBySuggestionLayoutTypes;
      self->super._suggestionsBySuggestionLayoutTypes = v20;

      goto LABEL_5;
    }

    v23 = __atxlog_handle_blending(v19);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [(_ATXAppPredictionPanelSuggestion *)v23 initWithAppPredictionPanel:v31 containingStack:v32 suggestionDeduplicator:v33 hyperParameters:v34, v35, v36, v37];
    }

LABEL_10:

    selfCopy = 0;
    goto LABEL_11;
  }

LABEL_5:
  self = self;
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (_ATXAppPredictionPanelSuggestion)initWithAppPredictionPanel:(id)panel containingStack:(id)stack suggestionLayout:(id)layout suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  layoutCopy = layout;
  v14 = [(_ATXAppPredictionPanelSuggestion *)self initWithAppPredictionPanel:panel containingStack:stack suggestionDeduplicator:deduplicator hyperParameters:parameters];
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
    [(_ATXAppPredictionPanelSuggestion *)v17 initWithAppPredictionPanel:v18 containingStack:v19 suggestionLayout:v20 suggestionDeduplicator:v21 hyperParameters:v22, v23, v24];
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (id)initForPreviewWithHyperParameters:(id)parameters
{
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = _ATXAppPredictionPanelSuggestion;
  v6 = [(_ATXAppPredictionPanelSuggestion *)&v14 init];
  if (v6)
  {
    v7 = objc_opt_new();
    widget = v6->super._widget;
    v6->super._widget = v7;

    v9 = *MEMORY[0x277CEB1C0];
    [(ATXHomeScreenWidgetIdentifiable *)v6->super._widget setAppBundleId:*MEMORY[0x277CEB1C0]];
    [(ATXHomeScreenWidgetIdentifiable *)v6->super._widget setExtensionBundleId:v9];
    v10 = ATXSpecialWidgetKindAppPredictions();
    [(ATXHomeScreenWidgetIdentifiable *)v6->super._widget setWidgetKind:v10];

    [(ATXHomeScreenWidgetIdentifiable *)v6->super._widget setSize:1];
    [(ATXHomeScreenWidgetIdentifiable *)v6->super._widget setWidgetUniqueId:*MEMORY[0x277CEBB40]];
    objc_storeStrong(&v6->super._hyperParameters, parameters);
    v6->super._layoutType = 0;
    v11 = objc_opt_new();
    suggestionsBySuggestionLayoutTypes = v6->super._suggestionsBySuggestionLayoutTypes;
    v6->super._suggestionsBySuggestionLayoutTypes = v11;
  }

  return v6;
}

- (BOOL)containsIdenticalContentOfSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 1)
  {
    suggestionDeduplicator = self->super._suggestionDeduplicator;
    _existingSuggestionsInLayout = [(_ATXCompositeLayoutWidgetSuggestionBase *)self _existingSuggestionsInLayout];
    v9 = [(ATXSuggestionDeduplicatorProtocol *)suggestionDeduplicator suggestionIsDuplicate:suggestionCopy existingSuggestions:_existingSuggestionsInLayout shouldCompareAcrossTypes:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)addSuggestion:(id)suggestion asMainSuggestion:(BOOL)mainSuggestion dryRun:(BOOL)run
{
  runCopy = run;
  mainSuggestionCopy = mainSuggestion;
  suggestionCopy = suggestion;
  if ([(_ATXCompositeLayoutWidgetSuggestionBase *)self isLayoutComplete]|| ![(ATXBlendingLayerHyperParameters *)self->super._hyperParameters isSuggestionEligibleForAppPredictionPanel:suggestionCopy])
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _ATXAppPredictionPanelSuggestion;
    v9 = [(_ATXCompositeLayoutWidgetSuggestionBase *)&v11 addSuggestion:suggestionCopy asMainSuggestion:mainSuggestionCopy dryRun:runCopy];
  }

  return v9;
}

- (void)initWithAppPredictionPanel:(uint64_t)a3 containingStack:(uint64_t)a4 suggestionDeduplicator:(uint64_t)a5 hyperParameters:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[_ATXAppPredictionPanelSuggestion initWithAppPredictionPanel:containingStack:suggestionDeduplicator:hyperParameters:]";
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: Widget is not an AppPredictionPanel.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithAppPredictionPanel:(uint64_t)a3 containingStack:(uint64_t)a4 suggestionDeduplicator:(uint64_t)a5 hyperParameters:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[_ATXAppPredictionPanelSuggestion initWithAppPredictionPanel:containingStack:suggestionDeduplicator:hyperParameters:]";
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: Incompatible stack size.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithAppPredictionPanel:(uint64_t)a3 containingStack:(uint64_t)a4 suggestionLayout:(uint64_t)a5 suggestionDeduplicator:(uint64_t)a6 hyperParameters:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[_ATXAppPredictionPanelSuggestion initWithAppPredictionPanel:containingStack:suggestionLayout:suggestionDeduplicator:hyperParameters:]";
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: SuggestionLayout is incompatible with stack size.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end