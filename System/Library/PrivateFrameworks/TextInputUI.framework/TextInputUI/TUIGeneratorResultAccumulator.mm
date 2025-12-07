@interface TUIGeneratorResultAccumulator
@end

@implementation TUIGeneratorResultAccumulator

void *__99___TUIGeneratorResultAccumulator_initWithRequestContext_enabledCandidateSources_policy_onComplete___block_invoke(void *result)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((*(result[4] + 8) & 1) == 0)
  {
    v1 = result;
    v2 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [*(v1[4] + 48) accumulatorTimeout];
      v4 = 134217984;
      v5 = v3;
      _os_log_error_impl(&dword_18FFDC000, v2, OS_LOG_TYPE_ERROR, "Result accumulator timeout: %f, exceeded.", &v4, 0xCu);
    }

    return [v1[4] completionBlockJustOnce:1];
  }

  return result;
}

@end