@interface NTPBPersonalizationAggregateDelta(FCAdditions)
- (char)addAction:()FCAdditions count:;
- (uint64_t)applyToAggregate:()FCAdditions withTreatment:;
- (void)applyToDelta:()FCAdditions;
@end

@implementation NTPBPersonalizationAggregateDelta(FCAdditions)

- (char)addAction:()FCAdditions count:
{
  eventsCount = [self eventsCount];
  result = [self events];
  if (eventsCount && (v9 = &result[4 * eventsCount], v10 = *(v9 - 1), (v10 & 0x3F) == a3))
  {
    *(v9 - 1) = a3 | ((a4 + (v10 >> 6)) << 6);
  }

  else
  {

    return [self addEvents:a3 | (a4 << 6)];
  }

  return result;
}

- (uint64_t)applyToAggregate:()FCAdditions withTreatment:
{
  v85 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "treatment"];
    *buf = 136315906;
    v72 = "[NTPBPersonalizationAggregateDelta(FCAdditions) applyToAggregate:withTreatment:]";
    v73 = 2080;
    v74 = "NTPBPersonalizationAggregateDelta+FCAdditions.m";
    v75 = 1024;
    *v76 = 42;
    *&v76[4] = 2114;
    *&v76[6] = v59;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  featureKey = [v6 featureKey];
  v9 = [featureKey isEqualToString:@"f0"];

  if (![v6 eventCount])
  {
    [self defaultClicks];
    [v6 setClicks:?];
    [self defaultImpressions];
    [v6 setImpressions:?];
  }

  if (v9)
  {
    baselineClicksByAction = [v7 baselineClicksByAction];
    baselineImpressionsByAction = [v7 baselineImpressionsByAction];
  }

  else
  {
    baselineClicksByAction = [v7 featureClicksByAction];
    baselineImpressionsByAction = [v7 featureImpressionsByAction];
  }

  v11 = baselineImpressionsByAction;
  [v6 clicks];
  v13 = v12;
  [v6 impressions];
  v15 = v14;
  eventCount = [v6 eventCount];
  events = [self events];
  [self impressionBias];
  if (v17 == 0.0)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = v17;
  }

  [self groupBias];
  v20 = v19;
  v21 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v47 = v21;
    featureKey2 = [v6 featureKey];
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "eventsCount")}];
    *buf = 138412546;
    v72 = featureKey2;
    v73 = 2112;
    v74 = v49;
    _os_log_debug_impl(&dword_1B63EF000, v47, OS_LOG_TYPE_DEBUG, "%@ - Applying %@ events to aggregate", buf, 0x16u);
  }

  v64 = v6;
  selfCopy = self;
  eventsCount = [self eventsCount];
  if (eventsCount)
  {
    v23 = eventsCount;
    v24 = 0;
    v25 = 0;
    v65 = v20;
    v66 = v18;
    v60 = v11;
    do
    {
      v26 = *(events + 4 * v25);
      v27 = v20 * *&baselineClicksByAction[v26 & 0x3F].isa;
      v28 = v20 * (v18 * *(v11 + 8 * (v26 & 0x3F)));
      v29 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
      {
        log = v29;
        featureKey3 = [v64 featureKey];
        v42 = NSStringFromFCPersonalizationAction(v26 & 0x3F);
        v43 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
        [MEMORY[0x1E696AD98] numberWithDouble:v28];
        v44 = v63 = v24;
        *buf = 138413058;
        v72 = featureKey3;
        v73 = 2112;
        v74 = v42;
        v75 = 2112;
        *v76 = v43;
        *&v76[8] = 2112;
        *&v76[10] = v44;
        _os_log_debug_impl(&dword_1B63EF000, log, OS_LOG_TYPE_DEBUG, "%@ - Applying action %@ C : %@, I : %@", buf, 0x2Au);

        v24 = v63;
        v11 = v60;
      }

      if (v27 != 0.0 || v28 != 0.0)
      {
        v30 = v26 >> 6;
        if (v26 >= 0x40)
        {
          do
          {
            defaultScoringConfig = [v7 defaultScoringConfig];
            [defaultScoringConfig decayFactor];
            v33 = v32;
            v34 = v27;
            if (v32 != 1.0)
            {
              v34 = (1.0 - pow(v32, v27)) / (1.0 - v32);
            }

            v35 = pow(v33, v28);

            defaultScoringConfig2 = [v7 defaultScoringConfig];
            [defaultScoringConfig2 decayFactor];
            v38 = v37;
            v39 = pow(v37, v28);
            v40 = v28;
            if (v38 != 1.0)
            {
              v40 = (1.0 - v39) / (1.0 - v38);
            }

            v13 = v34 + v13 * v35;
            v15 = v40 + v15 * v39;

            --v30;
          }

          while (v30);
        }

        eventCount += v26 >> 6;
        v24 = 1;
        v20 = v65;
        v18 = v66;
      }

      ++v25;
    }

    while (v25 != v23);
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  v45 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v69 = v45;
    featureKey4 = [v64 featureKey];
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(selfCopy, "timestamp")}];
    v51 = MEMORY[0x1E696AD98];
    [v64 clicks];
    v52 = [v51 numberWithDouble:?];
    v53 = MEMORY[0x1E696AD98];
    [v64 impressions];
    v54 = [v53 numberWithDouble:?];
    v55 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v64, "eventCount")}];
    v56 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    v57 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:eventCount];
    *buf = 138414082;
    v72 = featureKey4;
    v73 = 2112;
    v74 = v50;
    v75 = 2112;
    *v76 = v52;
    *&v76[8] = 2112;
    *&v76[10] = v54;
    v77 = 2112;
    v78 = v55;
    v79 = 2112;
    v80 = v56;
    v81 = 2112;
    v82 = v57;
    v83 = 2112;
    v84 = v58;
    _os_log_debug_impl(&dword_1B63EF000, v69, OS_LOG_TYPE_DEBUG, "%@ - Updating aggregate at %@ from C : %@ I : %@ EC : %@ to C : %@ I : %@ EC : %@", buf, 0x52u);
  }

  [v64 setClicks:v13];
  [v64 setImpressions:v15];
  [v64 setEventCount:eventCount];
  [v64 setTimestamp:{objc_msgSend(selfCopy, "timestamp")}];

  return v24 & 1;
}

- (void)applyToDelta:()FCAdditions
{
  v8 = a3;
  if (![v8 eventsCount])
  {
    [self defaultClicks];
    [v8 setDefaultClicks:?];
    [self defaultImpressions];
    [v8 setDefaultImpressions:?];
    [self impressionBias];
    [v8 setImpressionBias:?];
    [self groupBias];
    [v8 setGroupBias:?];
  }

  events = [self events];
  eventsCount = [self eventsCount];
  if (eventsCount)
  {
    v6 = eventsCount;
    do
    {
      v7 = *events++;
      [v8 addAction:v7 & 0x3F count:v7 >> 6];
      --v6;
    }

    while (v6);
  }

  [v8 setTimestamp:{objc_msgSend(self, "timestamp")}];
}

@end