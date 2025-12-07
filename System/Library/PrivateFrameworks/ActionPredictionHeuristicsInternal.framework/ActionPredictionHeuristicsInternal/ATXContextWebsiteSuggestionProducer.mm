@interface ATXContextWebsiteSuggestionProducer
- (ATXContextWebsiteSuggestionProducer)initWithValidDateInterval:(id)interval reasonCode:(int64_t)code score:(double)score;
- (id)_suggestionWithWebsite:(id)website titlesAndSubtitles:(id)subtitles;
- (id)titleAndSubtitleForUrl:(id)url titlesAndSubtitles:(id)subtitles;
- (id)websiteSuggestions;
@end

@implementation ATXContextWebsiteSuggestionProducer

- (ATXContextWebsiteSuggestionProducer)initWithValidDateInterval:(id)interval reasonCode:(int64_t)code score:(double)score
{
  intervalCopy = interval;
  v13.receiver = self;
  v13.super_class = ATXContextWebsiteSuggestionProducer;
  v10 = [(ATXContextWebsiteSuggestionProducer *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_validDateInterval, interval);
    v11->_reasonCode = code;
    v11->_score = score;
  }

  return v11;
}

- (id)websiteSuggestions
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v3 = getATXWebSuggestionsGeneratorClass_softClass;
  v18 = getATXWebSuggestionsGeneratorClass_softClass;
  if (!getATXWebSuggestionsGeneratorClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v20 = __getATXWebSuggestionsGeneratorClass_block_invoke;
    v21 = &unk_278C3CC98;
    v22 = &v15;
    __getATXWebSuggestionsGeneratorClass_block_invoke(&buf);
    v3 = v16[3];
  }

  v4 = v3;
  _Block_object_dispose(&v15, 8);
  v5 = objc_alloc_init(v3);
  v6 = stringForATXSuggestionPredictionReasonCode();
  v7 = [v5 websitePredictionsForContextType:v6 limit:2];
  v8 = __atxlog_handle_context_heuristic(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "ATXContextWebsiteSuggestionProducer: websites %@", &buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__ATXContextWebsiteSuggestionProducer_websiteSuggestions__block_invoke;
  v13[3] = &unk_278C3D3D0;
  v13[4] = self;
  v14 = v5;
  v9 = v5;
  v10 = [v7 _pas_mappedArrayWithTransform:v13];
  v11 = __atxlog_handle_context_heuristic(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "ATXContextWebsiteSuggestionProducer: websiteSuggestions: %@", &buf, 0xCu);
  }

  return v10;
}

id __57__ATXContextWebsiteSuggestionProducer_websiteSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 webpageTitlesAndSubtitles];
  v6 = [v2 _suggestionWithWebsite:v4 titlesAndSubtitles:v5];

  return v6;
}

- (id)_suggestionWithWebsite:(id)website titlesAndSubtitles:(id)subtitles
{
  websiteCopy = website;
  v7 = [(ATXContextWebsiteSuggestionProducer *)self titleAndSubtitleForUrl:websiteCopy titlesAndSubtitles:subtitles];
  if ([v7 count] == 2)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v7 objectAtIndexedSubscript:1];
    v10 = objc_alloc(MEMORY[0x277CEB2D0]);
    startDate = [(NSDateInterval *)self->_validDateInterval startDate];
    endDate = [(NSDateInterval *)self->_validDateInterval endDate];
    v13 = [v10 initWithStartDate:startDate endDate:endDate lockScreenEligible:0 predicate:0];

    v14 = [ATXContextHeuristicSuggestionProducer suggestionWithURL:websiteCopy actionTitle:v8 subtitle:v9 bundleID:@"com.apple.mobilesafari" score:1 << self->_reasonCode predictionReasons:v13 criteria:self->_score dateInterval:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)titleAndSubtitleForUrl:(id)url titlesAndSubtitles:(id)subtitles
{
  v25 = *MEMORY[0x277D85DE8];
  urlCopy = url;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  subtitlesCopy = subtitles;
  v6 = [subtitlesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(subtitlesCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 URLByAppendingPathComponent:&stru_2850AD368];
        v13 = [urlCopy URLByAppendingPathComponent:&stru_2850AD368];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
          v15 = [subtitlesCopy objectForKeyedSubscript:v11];
          v16 = [v15 count];

          if (v16 != 2)
          {
            goto LABEL_13;
          }

          v17 = [subtitlesCopy objectForKeyedSubscript:v11];

          v8 = v17;
        }
      }

      v7 = [subtitlesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

@end