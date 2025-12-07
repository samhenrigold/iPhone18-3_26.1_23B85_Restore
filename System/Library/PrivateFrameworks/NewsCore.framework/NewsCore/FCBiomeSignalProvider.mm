@interface FCBiomeSignalProvider
+ (void)fetchSignalsFromBiomeWithSafariBlockoutDuration:(double)duration maxExternalSignalEventCount:(int64_t)count resultsBlock:(id)block;
@end

@implementation FCBiomeSignalProvider

+ (void)fetchSignalsFromBiomeWithSafariBlockoutDuration:(double)duration maxExternalSignalEventCount:(int64_t)count resultsBlock:(id)block
{
  v53 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v8 = blockCopy;
  if (count <= 0)
  {
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke;
    v42[3] = &unk_1E7C46E00;
    countCopy = count;
    v43 = blockCopy;
    __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke(v42);
    v32 = v43;
  }

  else
  {
    if (!blockCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "resultsBlock"];
      *buf = 136315906;
      countCopy2 = "+[FCBiomeSignalProvider fetchSignalsFromBiomeWithSafariBlockoutDuration:maxExternalSignalEventCount:resultsBlock:]";
      v47 = 2080;
      v48 = "FCBiomeSignalProvider.m";
      v49 = 1024;
      v50 = 32;
      v51 = 2114;
      v52 = v33;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v34 = v8;
    v9 = FCBiomeLog;
    if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      countCopy2 = count;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Querying Biome for Safari and App Signals with maxExternalSignalEventCount %ld", buf, 0xCu);
    }

    v10 = BiomeLibrary();
    v11 = [v10 App];
    inFocus = [v11 InFocus];

    v13 = BiomeLibrary();
    v14 = [v13 App];
    webUsage = [v14 WebUsage];

    v16 = objc_opt_new();
    v17 = objc_opt_new();
    v18 = [objc_alloc(MEMORY[0x1E698F2D0]) initWithStartDate:0 endDate:0 maxEvents:0 lastN:count reversed:0];
    v19 = [inFocus publisherWithUseCase:@"AutoFavorites" options:v18];
    v20 = objc_opt_new();
    v21 = [v19 reduceWithInitial:v20 nextPartialResult:&__block_literal_global_76_0];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_81;
    v39[3] = &unk_1E7C386C8;
    v22 = v16;
    v40 = v22;
    v41 = &__block_literal_global_172;
    v23 = [v21 sinkWithCompletion:&__block_literal_global_80_0 receiveInput:v39];

    v24 = webUsage;
    v25 = [webUsage publisherWithUseCase:@"AutoFavorites" options:v18];
    v26 = objc_opt_new();
    v27 = [v25 reduceWithInitial:v26 nextPartialResult:&__block_literal_global_85];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_88;
    v35[3] = &unk_1E7C46ED0;
    v28 = v17;
    v36 = v28;
    v37 = &__block_literal_global_172;
    durationCopy = duration;
    v29 = [v27 sinkWithCompletion:&__block_literal_global_87_0 receiveInput:v35];

    v8 = v34;
    if (v34)
    {
      v30 = [v22 copy];
      v31 = [v28 copy];
      v34[2](v34, v30, v31);
    }

    v32 = inFocus;
  }
}

uint64_t __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCBiomeLog;
  if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "See maxExternalSignalEventCount specified as %ld, skipping query for external signals", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0]);
  }

  return result;
}

id __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_class();
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 fc_arrayOfObjectsPassingTest:&__block_literal_global_10_2];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_68_4];

  v7 = FCBiomeLog;
  if (v6)
  {
    if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v11 = 134217984;
      v12 = [v6 count];
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "Got back %lu results from Biome", &v11, 0xCu);
    }

    v9 = v6;
  }

  else
  {
    if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v2;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Didn't get an array back from Biome, instead got %{public}@", &v11, 0xCu);
    }

    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

BOOL __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if ([v2 conformsToProtocol:&unk_1F2EFF038])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Got back an array from Biome that had an object that didn't conform to FCPersonalizationExternalSignal : %@", v3];
    *buf = 136315906;
    v9 = "+[FCBiomeSignalProvider fetchSignalsFromBiomeWithSafariBlockoutDuration:maxExternalSignalEventCount:resultsBlock:]_block_invoke_2";
    v10 = 2080;
    v11 = "FCBiomeSignalProvider.m";
    v12 = 1024;
    v13 = 56;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  return v5 != 0;
}

uint64_t __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

id __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_73(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 eventBody];
  [v4 addObject:v5];

  return v4;
}

void __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_2_77(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 error];

  v4 = FCBiomeLog;
  if (v3)
  {
    if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v2 error];
      v7 = [v6 localizedDescription];
      v8 = 138543362;
      v9 = v7;
      _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Encountered an error getting appsStream. Error=%{public}@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "AppsStream completed with no error.", &v8, 2u);
  }
}

void __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_81(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObjectsFromArray:v2];
}

id __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_2_83(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 eventBody];
  [v4 addObject:v5];

  return v4;
}

void __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 error];

  v4 = FCBiomeLog;
  if (v3)
  {
    if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v2 error];
      v7 = [v6 localizedDescription];
      v8 = 138543362;
      v9 = v7;
      _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Encountered an error getting WebUsageStream. Error=%{public}@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "WebUsageStream completed with no error.", &v8, 2u);
  }
}

void __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_88(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695DEC8];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_2_89;
  v20[3] = &unk_1E7C46ED0;
  v5 = *(a1 + 32);
  v22 = *(a1 + 40);
  v6 = v3;
  v21 = v6;
  v23 = *(a1 + 48);
  v7 = [v4 fc_array:v20];
  [v5 addObjectsFromArray:v7];

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  LODWORD(v7) = [v8 BOOLForKey:@"personalization_disregard_time_for_suggestions"];

  v9 = FCBiomeLog;
  v10 = os_log_type_enabled(FCBiomeLog, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v11 = v9;
      objc_opt_class();
      if (v6)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v6;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v14 = v12;
      v15 = [v14 count];
      v16 = [*(a1 + 32) count];
      *buf = 134218240;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v17 = "Asked to disregard time for Safari results, Raw results count %lu and final results count %lu";
LABEL_16:
      _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);
    }
  }

  else if (v10)
  {
    v11 = v9;
    objc_opt_class();
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v6;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v18 = [v14 count];
    v19 = [*(a1 + 32) count];
    *buf = 134218240;
    v25 = v18;
    v26 = 2048;
    v27 = v19;
    v17 = "Raw Safari results pruned from %lu to %lu after applying blackout duration";
    goto LABEL_16;
  }
}

void __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_2_89(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 40) + 16))();
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"personalization_disregard_time_for_suggestions"];

  if (v6)
  {
    [v3 addObjectsFromArray:v4];
  }

  else
  {
    v7 = objc_opt_new();
    v8 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_3_92;
    v10[3] = &unk_1E7C46EA8;
    v11 = v7;
    v13 = v8;
    v12 = v3;
    v9 = v7;
    [v4 enumerateObjectsUsingBlock:v10];
  }
}

void __114__FCBiomeSignalProvider_fetchSignalsFromBiomeWithSafariBlockoutDuration_maxExternalSignalEventCount_resultsBlock___block_invoke_3_92(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 content];
  v5 = [FCPersonalizationURLMapping domainForURL:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (!v6 || ([v3 date], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeIntervalSinceDate:", v7), v9 = v8, v10 = *(a1 + 48), v7, v9 >= v10))
    {
      v11 = *(a1 + 32);
      v12 = [v3 date];
      [v11 fc_safelySetObject:v12 forKey:v5];

      [*(a1 + 40) fc_safelyAddObject:v3];
    }
  }

  else
  {
    v13 = FCProgressivePersonalizationLog;
    if (!os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v14 = v13;
    v6 = [v3 content];
    v15 = [v6 description];
    v16 = 138543362;
    v17 = v15;
    _os_log_error_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_ERROR, "Encountered signal resulting in a nil-domain: %{public}@", &v16, 0xCu);
  }

LABEL_7:
}

@end