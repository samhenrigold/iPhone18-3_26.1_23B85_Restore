@interface ATXToolKitActionStream
+ (void)sanitizeTitleForToolKitIntents:(id)intents withCompletion:(id)completion;
@end

@implementation ATXToolKitActionStream

+ (void)sanitizeTitleForToolKitIntents:(id)intents withCompletion:(id)completion
{
  intentsCopy = intents;
  completionCopy = completion;
  v7 = [intentsCopy _pas_mappedArrayWithTransform:&__block_literal_global_6];
  v8 = [v7 count];
  v9 = [intentsCopy count];
  if (v8 == v9)
  {
    v10 = MEMORY[0x1E69C5B68];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__ATXToolKitActionStream_sanitizeTitleForToolKitIntents_withCompletion___block_invoke_11;
    v12[3] = &unk_1E80C1260;
    v13 = intentsCopy;
    v14 = completionCopy;
    [v10 fetchTitlesFromToolInvocations:v7 completionHandler:v12];
  }

  else
  {
    v11 = __atxlog_handle_action_prediction(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXToolKitActionStream *)v7 sanitizeTitleForToolKitIntents:intentsCopy withCompletion:v11];
    }

    (*(completionCopy + 2))(completionCopy, intentsCopy);
  }
}

id __72__ATXToolKitActionStream_sanitizeTitleForToolKitIntents_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 action];
  v3 = [v2 encodedToolInvocation];

  return v3;
}

void __72__ATXToolKitActionStream_sanitizeTitleForToolKitIntents_withCompletion___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6 && (v8 = [v5 count], v6 = objc_msgSend(*(a1 + 32), "count"), v8 == v6))
  {
    if ([*(a1 + 32) count])
    {
      v9 = 0;
      do
      {
        v10 = [*(a1 + 32) objectAtIndexedSubscript:v9];
        v11 = [v10 action];
        v12 = [v5 objectAtIndexedSubscript:v9];
        [v11 setTitle:v12];

        ++v9;
      }

      while (v9 < [*(a1 + 32) count]);
    }
  }

  else
  {
    v13 = __atxlog_handle_action_prediction(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __72__ATXToolKitActionStream_sanitizeTitleForToolKitIntents_withCompletion___block_invoke_11_cold_1(v7, v13);
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)sanitizeTitleForToolKitIntents:(NSObject *)a3 withCompletion:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 134218240;
  v6 = [a1 count];
  v7 = 2048;
  v8 = [a2 count];
  _os_log_error_impl(&dword_1BF549000, a3, OS_LOG_TYPE_ERROR, "Failed to encodedInvocations.count != toolKitIntents.count ==> %ld != %ld", &v5, 0x16u);
}

void __72__ATXToolKitActionStream_sanitizeTitleForToolKitIntents_withCompletion___block_invoke_11_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch titles: %@", &v2, 0xCu);
}

@end