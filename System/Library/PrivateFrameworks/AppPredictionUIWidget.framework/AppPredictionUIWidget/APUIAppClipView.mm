@interface APUIAppClipView
- (void)layoutSuggestion:(id)suggestion;
- (void)openPredictionAction;
@end

@implementation APUIAppClipView

- (void)layoutSuggestion:(id)suggestion
{
  v53[1] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  if (suggestionCopy)
  {
    [(APUISuggestionView *)self setSuggestion:suggestionCopy];
    [(APUISuggestionView *)self createViewsIfNeeded];
    v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapRecognized_];
    tapRecognizer = self->_tapRecognizer;
    self->_tapRecognizer = v5;

    [(UITapGestureRecognizer *)self->_tapRecognizer setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)self->_tapRecognizer setNumberOfTouchesRequired:1];
    [(APUIAppClipView *)self addGestureRecognizer:self->_tapRecognizer];
    titleLabel = [(APUISuggestionView *)self titleLabel];
    uiSpecification = [suggestionCopy uiSpecification];
    title = [uiSpecification title];
    [titleLabel setText:title];

    v10 = MEMORY[0x277CCAAC8];
    executableSpecification = [suggestionCopy executableSpecification];
    executableClassString = [executableSpecification executableClassString];
    v13 = NSClassFromString(executableClassString);
    executableSpecification2 = [suggestionCopy executableSpecification];
    executable = [executableSpecification2 executable];
    v51 = 0;
    v16 = [v10 unarchivedObjectOfClass:v13 fromData:executable error:&v51];
    v17 = v51;

    if (v16 || !v17)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        objc_storeStrong(&self->_prediction, v16);
        clipMetadata = [(ATXHeroData *)self->_prediction clipMetadata];
        fullAppCachedIconFilePath = [clipMetadata fullAppCachedIconFilePath];
        v23 = [fullAppCachedIconFilePath copy];

        if (v23)
        {
          v24 = dispatch_get_global_queue(25, 0);
          v45 = MEMORY[0x277D85DD0];
          v46 = 3221225472;
          v47 = __36__APUIAppClipView_layoutSuggestion___block_invoke;
          v48 = &unk_278C909F0;
          v49 = v23;
          selfCopy = self;
          dispatch_async(v24, &v45);
        }

        v25 = [(APUISuggestionView *)self titleLabel:v45];
        clipMetadata2 = [(ATXHeroData *)self->_prediction clipMetadata];
        localizedTitleForClipSuggestion = [clipMetadata2 localizedTitleForClipSuggestion];
        [v25 setText:localizedTitleForClipSuggestion];

        subtitleLabel = [(APUISuggestionView *)self subtitleLabel];
        clipMetadata3 = [(ATXHeroData *)self->_prediction clipMetadata];
        localizedSubtitleForClipSuggestion = [clipMetadata3 localizedSubtitleForClipSuggestion];
        [subtitleLabel setText:localizedSubtitleForClipSuggestion];
      }

      else
      {
        v23 = __atxlog_handle_ui(isKindOfClass);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(APUIAppClipView *)v16 layoutSuggestion:v23];
        }
      }

      v31 = MEMORY[0x277D74270];
      v32 = MEMORY[0x277D755B8];
      v33 = [MEMORY[0x277D755D0] configurationWithScale:1];
      v34 = [v32 systemImageNamed:@"location.fill" withConfiguration:v33];
      v19 = [v31 textAttachmentWithImage:v34];

      v35 = objc_opt_new();
      v36 = objc_alloc(MEMORY[0x277CCA898]);
      uiSpecification2 = [suggestionCopy uiSpecification];
      reason = [uiSpecification2 reason];
      v39 = [v36 initWithString:reason];
      [v35 appendAttributedString:v39];

      v40 = objc_alloc(MEMORY[0x277CCA898]);
      v52 = *MEMORY[0x277D740D0];
      v53[0] = &unk_2852057B0;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      v42 = [v40 initWithString:@"​" attributes:v41];
      [v35 appendAttributedString:v42];

      v43 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v19];
      [v35 appendAttributedString:v43];

      reasonLabel = [(APUISuggestionView *)self reasonLabel];
      [reasonLabel setAttributedText:v35];

      [(APUISuggestionView *)self installReasonLabelIfNecessary];
    }

    else
    {
      v19 = __atxlog_handle_ui(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [APUIAppClipView layoutSuggestion:];
      }
    }
  }

  else
  {
    v17 = __atxlog_handle_ui(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [APUIAppClipView layoutSuggestion:v17];
    }
  }
}

void __36__APUIAppClipView_layoutSuggestion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] imageWithContentsOfFile:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = +[APUIAppIconDataSource _appClipIconTreatmentForCGImage:](APUIAppIconDataSource, "_appClipIconTreatmentForCGImage:", [v2 CGImage]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__APUIAppClipView_layoutSuggestion___block_invoke_2;
    v6[3] = &unk_278C909F0;
    v6[4] = *(a1 + 40);
    v7 = v4;
    v5 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __36__APUIAppClipView_layoutSuggestion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) iconView];
  [v2 setImage:*(a1 + 40)];
}

- (void)openPredictionAction
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = 5517;
  _os_log_error_impl(&dword_240036000, log, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: tried to tap a suggestion before the last execution ended", &v1, 0xCu);
}

void __39__APUIAppClipView_openPredictionAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 view:*(a1 + 32) didTapSuggestion:*(a1 + 40)];
}

void __39__APUIAppClipView_openPredictionAction__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_ui(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__APUIAppClipView_openPredictionAction__block_invoke_2_cold_1();
    }

    v6 = v12;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v7 = __39__APUIAppClipView_openPredictionAction__block_invoke_33;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 48) clipMetadata];
      v9 = [v8 clipURL];
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: Opened app clip request for url: %@", buf, 0xCu);
    }

    v6 = v11;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v7 = __39__APUIAppClipView_openPredictionAction__block_invoke_34;
  }

  v6[2] = v7;
  v6[3] = &unk_278C909F0;
  v10 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v6[5] = v10;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __39__APUIAppClipView_openPredictionAction__block_invoke_33(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 view:*(a1 + 32) didFailExecutingSuggestion:*(a1 + 40)];
}

void __39__APUIAppClipView_openPredictionAction__block_invoke_34(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 view:*(a1 + 32) didFinishExecutingSuggestion:*(a1 + 40)];
}

- (void)layoutSuggestion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  _os_log_error_impl(&dword_240036000, a2, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: error class ATXHeroData expected. Class read: %@", v5, 0x16u);
}

- (void)layoutSuggestion:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_240036000, v0, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: error unarchiving data for clip suggestion: %@", v1, 0x16u);
}

void __39__APUIAppClipView_openPredictionAction__block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_240036000, v0, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: Error while opening app clip: %@", v1, 0x16u);
}

@end