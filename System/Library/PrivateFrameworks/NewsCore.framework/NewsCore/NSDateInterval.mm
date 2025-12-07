@interface NSDateInterval
@end

@implementation NSDateInterval

id __72__NSDateInterval_FCAdditions__fc_safeDateIntervalWithStartDate_endDate___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AB80]);
  v3 = v2;
  if (*(a1 + 32) || *(a1 + 40))
  {
    v4 = [v2 initWithStartDate:0.0 duration:?];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] date];
    v4 = [v3 initWithStartDate:v6 duration:0.0];
  }

  return v4;
}

id __72__NSDateInterval_FCAdditions__fc_safeDateIntervalWithStartDate_endDate___block_invoke_2(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:*(a1 + 32) endDate:*(a1 + 40)];

  return v1;
}

void __73__NSDateInterval_FCAdditions__fc_durationOfDateIntervalsIgnoringOverlap___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (v7)
        {
          if ([*(*(&v13 + 1) + 8 * i) intersectsDateInterval:{v7, v13}])
          {
            v11 = [v10 fc_unionWithDateInterval:v7];
          }

          else
          {
            [v3 addObject:v7];
            v11 = v10;
          }

          v12 = v11;

          v7 = v12;
        }

        else
        {
          v7 = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [v3 addObject:v7];
}

@end