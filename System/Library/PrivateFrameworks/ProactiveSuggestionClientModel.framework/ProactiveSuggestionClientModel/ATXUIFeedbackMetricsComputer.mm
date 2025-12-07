@interface ATXUIFeedbackMetricsComputer
- (ATXUIFeedbackMetricsComputer)init;
- (ATXUIFeedbackMetricsComputer)initWithUIFeedbackResultStream:(id)stream;
- (id)_computeResultForClientModel:(id)model query:(id)query publisher:(id)publisher resultSpecification:(id)specification;
- (id)_computeResultForConsumerSubType:(unsigned __int8)type query:(id)query publisher:(id)publisher resultSpecification:(id)specification;
- (id)computeResultForQuery:(id)query resultSpecification:(id)specification;
- (void)_updateNonTrendPlotSectionsInResult:(id)result withFeedbackResult:(id)feedbackResult;
- (void)_updateResultSection:(id)section withSuggestions:(id)suggestions clientModelId:(id)id consumerSubType:(unsigned __int8)type;
@end

@implementation ATXUIFeedbackMetricsComputer

- (ATXUIFeedbackMetricsComputer)init
{
  v3 = objc_opt_new();
  v4 = [(ATXUIFeedbackMetricsComputer *)self initWithUIFeedbackResultStream:v3];

  return v4;
}

- (ATXUIFeedbackMetricsComputer)initWithUIFeedbackResultStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = ATXUIFeedbackMetricsComputer;
  v6 = [(ATXUIFeedbackMetricsComputer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, stream);
  }

  return v7;
}

- (id)computeResultForQuery:(id)query resultSpecification:(id)specification
{
  queryCopy = query;
  specificationCopy = specification;
  if ([queryCopy clientModelType] || (v8 = objc_msgSend(queryCopy, "consumerSubType"), v8))
  {
    stream = self->_stream;
    startDate = [queryCopy startDate];
    [startDate timeIntervalSinceReferenceDate];
    v11 = [(ATXBiomeProactiveSuggestionUIFeedbackResultStream *)stream publisherFromStartTime:?];

    if ([queryCopy clientModelType])
    {
      v12 = +[ATXProactiveSuggestionClientModel clientModelIdFromClientModelType:](ATXProactiveSuggestionClientModel, "clientModelIdFromClientModelType:", [queryCopy clientModelType]);
      v13 = [(ATXUIFeedbackMetricsComputer *)self _computeResultForClientModel:v12 query:queryCopy publisher:v11 resultSpecification:specificationCopy];
    }

    else
    {
      v13 = -[ATXUIFeedbackMetricsComputer _computeResultForConsumerSubType:query:publisher:resultSpecification:](self, "_computeResultForConsumerSubType:query:publisher:resultSpecification:", [queryCopy consumerSubType], queryCopy, v11, specificationCopy);
    }
  }

  else
  {
    v15 = __atxlog_handle_metrics(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXUIFeedbackMetricsComputer computeResultForQuery:v15 resultSpecification:?];
    }

    v13 = 0;
  }

  return v13;
}

- (id)_computeResultForClientModel:(id)model query:(id)query publisher:(id)publisher resultSpecification:(id)specification
{
  modelCopy = model;
  queryCopy = query;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke;
  v30[3] = &unk_1E86A3F90;
  v12 = queryCopy;
  v31 = v12;
  v32 = modelCopy;
  v13 = modelCopy;
  specificationCopy = specification;
  v15 = [publisher filterWithIsIncluded:v30];
  v16 = [ATXUIFeedbackMetricsResult alloc];
  startDate = [v12 startDate];
  endDate = [v12 endDate];
  v19 = [(ATXUIFeedbackMetricsResult *)v16 initWithSpecification:specificationCopy startDate:startDate endDate:endDate];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke_14;
  v26[3] = &unk_1E86A3FD8;
  v27 = v12;
  selfCopy = self;
  v20 = v19;
  v29 = v20;
  v21 = v12;
  v22 = [v15 sinkWithCompletion:&__block_literal_global_2 shouldContinue:v26];
  v23 = v29;
  v24 = v20;

  return v20;
}

BOOL __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 sessionEndDate];
  v6 = [*(a1 + 32) startDate];
  v7 = [v5 earlierDate:v6];
  v8 = [v3 eventBody];
  v9 = [v8 sessionEndDate];

  if (v7 == v9 || (v10 = *(a1 + 40), [v3 eventBody], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "clientModelId"), v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v10) = objc_msgSend(v10, "isEqualToString:", v12), v12, v11, !v10))
  {
    v15 = 0;
  }

  else if ([*(a1 + 32) consumerSubType])
  {
    v13 = [v3 eventBody];
    v14 = [v13 consumerSubType];
    v15 = v14 == [*(a1 + 32) consumerSubType];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

void __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_metrics(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke_2_cold_1(v2);
    }
  }
}

BOOL __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke_14(id *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 sessionEndDate];
  v5 = [a1[4] endDate];
  v6 = [v4 laterDate:v5];
  v7 = [v3 sessionEndDate];

  if (v6 != v7)
  {
    [a1[5] _updateNonTrendPlotSectionsInResult:a1[6] withFeedbackResult:v3];
    v8 = [a1[6] trendPlot];
    v9 = [v3 sessionEndDate];
    v10 = [v8 binAtDate:v9];

    if (v10)
    {
      v11 = [v10 data];
      v12 = [v3 shownSuggestions];
      [v11 setImpressionCount:{objc_msgSend(v11, "impressionCount") + objc_msgSend(v12, "count")}];

      v13 = [v10 data];
      v14 = [v3 engagedSuggestions];
      [v13 setEngagementCount:{objc_msgSend(v13, "engagementCount") + objc_msgSend(v14, "count")}];

      v15 = [v10 data];
      v16 = [v3 rejectedSuggestions];
      [v15 setRejectionCount:{objc_msgSend(v15, "rejectionCount") + objc_msgSend(v16, "count")}];
    }
  }

  return v6 != v7;
}

- (id)_computeResultForConsumerSubType:(unsigned __int8)type query:(id)query publisher:(id)publisher resultSpecification:(id)specification
{
  queryCopy = query;
  specificationCopy = specification;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __101__ATXUIFeedbackMetricsComputer__computeResultForConsumerSubType_query_publisher_resultSpecification___block_invoke;
  v40[3] = &unk_1E86A4000;
  v12 = queryCopy;
  v41 = v12;
  typeCopy = type;
  v13 = [publisher filterWithIsIncluded:v40];
  v14 = [ATXUIFeedbackMetricsResult alloc];
  startDate = [v12 startDate];
  endDate = [v12 endDate];
  v17 = [(ATXUIFeedbackMetricsResult *)v14 initWithSpecification:specificationCopy startDate:startDate endDate:endDate];

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__1;
  v38[4] = __Block_byref_object_dispose__1;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v20 = objc_opt_new();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __101__ATXUIFeedbackMetricsComputer__computeResultForConsumerSubType_query_publisher_resultSpecification___block_invoke_20;
  v30[3] = &unk_1E86A4028;
  v21 = v12;
  v31 = v21;
  selfCopy = self;
  v22 = v17;
  v33 = v22;
  v37 = v38;
  v23 = v18;
  v34 = v23;
  v24 = v19;
  v35 = v24;
  v25 = v20;
  v36 = v25;
  v26 = [v13 sinkWithCompletion:&__block_literal_global_19 shouldContinue:v30];
  v27 = v36;
  v28 = v22;

  _Block_object_dispose(v38, 8);

  return v28;
}

BOOL __101__ATXUIFeedbackMetricsComputer__computeResultForConsumerSubType_query_publisher_resultSpecification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 sessionEndDate];
  v6 = [*(a1 + 32) startDate];
  v7 = [v5 earlierDate:v6];
  v8 = [v3 eventBody];
  v9 = [v8 sessionEndDate];

  if (v7 == v9)
  {
    v11 = 0;
  }

  else
  {
    v10 = [v3 eventBody];
    v11 = [v10 consumerSubType] == *(a1 + 40);
  }

  return v11;
}

void __101__ATXUIFeedbackMetricsComputer__computeResultForConsumerSubType_query_publisher_resultSpecification___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_metrics(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke_2_cold_1(v2);
    }
  }
}

BOOL __101__ATXUIFeedbackMetricsComputer__computeResultForConsumerSubType_query_publisher_resultSpecification___block_invoke_20(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = [a2 eventBody];
  v4 = [v3 sessionEndDate];
  v5 = [*(a1 + 32) endDate];
  v6 = [v4 laterDate:v5];
  v7 = [v3 sessionEndDate];

  if (v6 != v7)
  {
    [*(a1 + 40) _updateNonTrendPlotSectionsInResult:*(a1 + 48) withFeedbackResult:v3];
    v8 = [v3 sessionStartDate];
    v9 = [v8 isEqualToDate:*(*(*(a1 + 80) + 8) + 40)];

    if ((v9 & 1) == 0)
    {
      [*(a1 + 56) removeAllObjects];
      [*(a1 + 64) removeAllObjects];
      [*(a1 + 72) removeAllObjects];
      v10 = [v3 sessionStartDate];
      v11 = *(*(a1 + 80) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v13 = [*(a1 + 48) trendPlot];
    v14 = [v3 sessionEndDate];
    v15 = [v13 binAtDate:v14];

    if (v15)
    {
      v50 = v7;
      v51 = v6;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v16 = [v3 shownSuggestions];
      v17 = [v16 countByEnumeratingWithState:&v60 objects:v66 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v61;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v61 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v60 + 1) + 8 * i);
            v22 = *(a1 + 56);
            v23 = [v21 executableIdentifier];
            LOBYTE(v22) = [v22 containsObject:v23];

            if ((v22 & 1) == 0)
            {
              v24 = [v15 data];
              [v24 setImpressionCount:{objc_msgSend(v24, "impressionCount") + 1}];

              v25 = *(a1 + 56);
              v26 = [v21 executableIdentifier];
              [v25 addObject:v26];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v60 objects:v66 count:16];
        }

        while (v18);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v27 = [v3 engagedSuggestions];
      v28 = [v27 countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v57;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v57 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v56 + 1) + 8 * j);
            v33 = *(a1 + 64);
            v34 = [v32 executableIdentifier];
            LOBYTE(v33) = [v33 containsObject:v34];

            if ((v33 & 1) == 0)
            {
              v35 = [v15 data];
              [v35 setEngagementCount:{objc_msgSend(v35, "engagementCount") + 1}];

              v36 = *(a1 + 64);
              v37 = [v32 executableIdentifier];
              [v36 addObject:v37];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v56 objects:v65 count:16];
        }

        while (v29);
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v38 = [v3 rejectedSuggestions];
      v39 = [v38 countByEnumeratingWithState:&v52 objects:v64 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v53;
        do
        {
          for (k = 0; k != v40; ++k)
          {
            if (*v53 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v52 + 1) + 8 * k);
            v44 = *(a1 + 72);
            v45 = [v43 executableIdentifier];
            LOBYTE(v44) = [v44 containsObject:v45];

            if ((v44 & 1) == 0)
            {
              v46 = [v15 data];
              [v46 setRejectionCount:{objc_msgSend(v46, "rejectionCount") + 1}];

              v47 = *(a1 + 72);
              v48 = [v43 executableIdentifier];
              [v47 addObject:v48];
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v52 objects:v64 count:16];
        }

        while (v40);
      }

      v7 = v50;
      v6 = v51;
    }
  }

  return v6 != v7;
}

- (void)_updateNonTrendPlotSectionsInResult:(id)result withFeedbackResult:(id)feedbackResult
{
  feedbackResultCopy = feedbackResult;
  resultCopy = result;
  sectionForShownSuggestions = [resultCopy sectionForShownSuggestions];
  shownSuggestions = [feedbackResultCopy shownSuggestions];
  clientModelId = [feedbackResultCopy clientModelId];
  -[ATXUIFeedbackMetricsComputer _updateResultSection:withSuggestions:clientModelId:consumerSubType:](self, "_updateResultSection:withSuggestions:clientModelId:consumerSubType:", sectionForShownSuggestions, shownSuggestions, clientModelId, [feedbackResultCopy consumerSubType]);

  sectionForEngagedSuggestions = [resultCopy sectionForEngagedSuggestions];
  engagedSuggestions = [feedbackResultCopy engagedSuggestions];
  clientModelId2 = [feedbackResultCopy clientModelId];
  -[ATXUIFeedbackMetricsComputer _updateResultSection:withSuggestions:clientModelId:consumerSubType:](self, "_updateResultSection:withSuggestions:clientModelId:consumerSubType:", sectionForEngagedSuggestions, engagedSuggestions, clientModelId2, [feedbackResultCopy consumerSubType]);

  sectionForRejectedSuggestions = [resultCopy sectionForRejectedSuggestions];

  rejectedSuggestions = [feedbackResultCopy rejectedSuggestions];
  clientModelId3 = [feedbackResultCopy clientModelId];
  consumerSubType = [feedbackResultCopy consumerSubType];

  [(ATXUIFeedbackMetricsComputer *)self _updateResultSection:sectionForRejectedSuggestions withSuggestions:rejectedSuggestions clientModelId:clientModelId3 consumerSubType:consumerSubType];
}

- (void)_updateResultSection:(id)section withSuggestions:(id)suggestions clientModelId:(id)id consumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  v36 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  suggestionsCopy = suggestions;
  idCopy = id;
  clientModelBreakdown = [sectionCopy clientModelBreakdown];
  v27 = idCopy;
  [clientModelBreakdown incrementCountForCategory:idCopy by:{objc_msgSend(suggestionsCopy, "count")}];

  consumerSubTypeBreakdown = [sectionCopy consumerSubTypeBreakdown];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:typeCopy];
  [consumerSubTypeBreakdown incrementCountForCategory:v14 by:{objc_msgSend(suggestionsCopy, "count")}];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = suggestionsCopy;
  v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      v18 = 0;
      do
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v31 + 1) + 8 * v18);
        scoreDistribution = [sectionCopy scoreDistribution];
        scoreSpecification = [v19 scoreSpecification];
        [scoreSpecification rawScore];
        [scoreDistribution recordScore:?];

        confidenceBreakdown = [sectionCopy confidenceBreakdown];
        v23 = MEMORY[0x1E696AD98];
        scoreSpecification2 = [v19 scoreSpecification];
        v25 = [v23 numberWithInteger:{objc_msgSend(scoreSpecification2, "suggestedConfidenceCategory")}];
        [confidenceBreakdown incrementCountForCategory:v25 by:1];

        predictionReasons = [v19 predictionReasons];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __99__ATXUIFeedbackMetricsComputer__updateResultSection_withSuggestions_clientModelId_consumerSubType___block_invoke;
        v29[3] = &unk_1E86A4050;
        v30 = sectionCopy;
        ATXSuggestionPredictionReasonEnumerateReasonCodes(predictionReasons, v29);

        ++v18;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }
}

void __99__ATXUIFeedbackMetricsComputer__updateResultSection_withSuggestions_clientModelId_consumerSubType___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) predictionReasonCodeBreakdown];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v4 incrementCountForCategory:v3 by:1];
}

void __97__ATXUIFeedbackMetricsComputer__computeResultForClientModel_query_publisher_resultSpecification___block_invoke_2_cold_1(void *a1)
{
  v1 = [a1 error];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_4(&dword_1DEFC4000, v2, v3, "ATXUIFeedbackMetricsComputer: Biome query completed with error %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end