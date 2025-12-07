@interface _DKPredictionQueryFeedback
- (void)logPredictionQueryFeedback:(id)feedback endHistogram:(id)histogram withStorage:(id)storage;
@end

@implementation _DKPredictionQueryFeedback

- (void)logPredictionQueryFeedback:(id)feedback endHistogram:(id)histogram withStorage:(id)storage
{
  v26[1] = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  histogramCopy = histogram;
  storageCopy = storage;
  date = [MEMORY[0x1E695DF00] date];
  v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  if (!feedbackCopy)
  {
    v13 = &stru_1F05B9908;
    if (!histogramCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  countDictionary = [feedbackCopy countDictionary];
  [v11 setValue:countDictionary forKey:@"startCountDiction"];
  v13 = [&stru_1F05B9908 stringByAppendingString:@"_startHistogramExists"];

  if (histogramCopy)
  {
LABEL_3:
    countDictionary2 = [histogramCopy countDictionary];
    [v11 setValue:countDictionary2 forKey:@"endCountDictionary"];
    v15 = [(__CFString *)v13 stringByAppendingString:@"_endHistogramExists"];

    v13 = v15;
  }

LABEL_4:
  if ([v11 count] && (+[_DKDeviceActivityLevelFeedbackMetadataKey predictionQueryResults](_DKDeviceActivityLevelFeedbackMetadataKey, "predictionQueryResults"), v16 = objc_claimAutoreleasedReturnValue(), v25 = v16, v26[0] = v11, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v26, &v25, 1), v17 = objc_claimAutoreleasedReturnValue(), v16, v17) || (v17 = 0, (-[__CFString isEqualToString:](v13, "isEqualToString:", &stru_1F05B9908) & 1) == 0))
  {
    v18 = +[_DKSystemEventStreams deviceActivityLevelFeedbackStream];
    v19 = [_DKEvent eventWithStream:v18 source:0 startDate:date endDate:date identifierStringValue:v13 metadata:v17];

    if (v19)
    {
      v24 = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      v23 = 0;
      [storageCopy saveObjects:v20 error:&v23];
      v21 = v23;

      if (v21)
      {
        v22 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [_DKPredictionQueryFeedback logPredictionQueryFeedback:v21 endHistogram:v22 withStorage:?];
        }
      }
    }
  }
}

- (void)logPredictionQueryFeedback:(uint64_t)a1 endHistogram:(NSObject *)a2 withStorage:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Encountered error while saving event to knowledgeStore for _DKPredictionQueryFeedback: %@", &v2, 0xCu);
}

@end