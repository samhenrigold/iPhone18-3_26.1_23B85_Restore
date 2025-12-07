@interface BLSAlwaysOnTimeline
+ (_NSRange)rangeOfEntries:(id)entries forDateInterval:(id)interval shouldIncludePrevious:(BOOL)previous;
+ (id)constructFrameSpecifiersForTimelines:(id)timelines dateInterval:(id)interval shouldConstructStartSpecifier:(BOOL)specifier framesPerSecond:(double)second previousSpecifier:(id)previousSpecifier;
+ (id)emptyTimelineWithIdentifier:(id)identifier;
+ (id)everyMinuteTimelineWithIdentifier:(id)identifier configure:(id)configure;
+ (id)timelineWithEntries:(id)entries identifier:(id)identifier configure:(id)configure;
+ (id)timelineWithPerMinuteUpdateFrequency:(int64_t)frequency identifier:(id)identifier configure:(id)configure;
+ (id)timelineWithUpdateInterval:(double)interval startDate:(id)date identifier:(id)identifier configure:(id)configure;
+ (int64_t)requestedFidelityForTimelines:(id)timelines inDateInterval:(id)interval;
+ (void)entriesCombinerForTimelines:(char)timelines@<W3> dateInterval:(void *)interval@<X4> shouldConstructStartSpecifier:(uint64_t)specifier@<X8> framesPerSecond:(double)second@<D0> previousSpecifier:;
- (BLSAlwaysOnTimeline)initWithIdentifier:(id)identifier configure:(id)configure;
- (id)configureEntries:(id)entries previousEntry:(id)entry;
- (id)configureEntry:(id)entry previousEntry:(id)previousEntry;
- (id)description;
- (int64_t)estimatedFidelityForPresentationTime:(id)time nextPresentationTime:(id)presentationTime;
- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)interval withPreviousEntry:(id)entry;
- (void)entryBookkeepersForDateInterval:(char)interval@<W2> shouldConstructStartEntry:(void *)entry@<X3> framesPerSecond:(void *)second@<X8> previousSpecifier:(double)specifier@<D0>;
- (void)entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:;
@end

@implementation BLSAlwaysOnTimeline

+ (id)emptyTimelineWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[BLSAlwaysOnTimeline alloc] initWithIdentifier:identifierCopy configure:0];

  return v4;
}

+ (id)timelineWithPerMinuteUpdateFrequency:(int64_t)frequency identifier:(id)identifier configure:(id)configure
{
  identifierCopy = identifier;
  configureCopy = configure;
  v9 = [[BLSAlwaysOnFrequencyPerMinuteTimeline alloc] initWithPerMinuteUpdateFrequency:frequency identifier:identifierCopy configure:configureCopy];

  return v9;
}

+ (id)everyMinuteTimelineWithIdentifier:(id)identifier configure:(id)configure
{
  identifierCopy = identifier;
  configureCopy = configure;
  v7 = [[BLSAlwaysOnFrequencyPerMinuteTimeline alloc] initWithPerMinuteUpdateFrequency:1 identifier:identifierCopy configure:configureCopy];

  return v7;
}

+ (id)timelineWithUpdateInterval:(double)interval startDate:(id)date identifier:(id)identifier configure:(id)configure
{
  dateCopy = date;
  identifierCopy = identifier;
  configureCopy = configure;
  v12 = [[BLSAlwaysOnPeriodicTimeline alloc] initWithUpdateInterval:dateCopy startDate:identifierCopy identifier:configureCopy configure:interval];

  return v12;
}

+ (id)timelineWithEntries:(id)entries identifier:(id)identifier configure:(id)configure
{
  entriesCopy = entries;
  identifierCopy = identifier;
  configureCopy = configure;
  v10 = [[BLSAlwaysOnExplicitEntriesTimeline alloc] initWithEntries:entriesCopy identifier:identifierCopy configure:configureCopy];

  return v10;
}

- (BLSAlwaysOnTimeline)initWithIdentifier:(id)identifier configure:(id)configure
{
  identifierCopy = identifier;
  configureCopy = configure;
  v14.receiver = self;
  v14.super_class = BLSAlwaysOnTimeline;
  v9 = [(BLSAlwaysOnTimeline *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    v11 = [configureCopy copy];
    configureEntryBlock = v10->_configureEntryBlock;
    v10->_configureEntryBlock = v11;
  }

  return v10;
}

- (id)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __34__BLSAlwaysOnTimeline_description__block_invoke;
  v10 = &unk_278428B78;
  v4 = v3;
  v11 = v4;
  selfCopy = self;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)configureEntry:(id)entry previousEntry:(id)previousEntry
{
  entryCopy = entry;
  previousEntryCopy = previousEntry;
  identifier = [(BLSAlwaysOnTimeline *)self identifier];
  if (!identifier)
  {
    v9 = bls_timelines_log(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BLSAlwaysOnTimeline configureEntry:v9 previousEntry:?];
    }
  }

  [entryCopy setTimelineIdentifier:identifier];
  configureEntryBlock = self->_configureEntryBlock;
  if (configureEntryBlock)
  {
    configureEntryBlock[2](configureEntryBlock, entryCopy, previousEntryCopy);
  }

  v11 = [entryCopy copy];

  return v11;
}

- (id)configureEntries:(id)entries previousEntry:(id)entry
{
  v21 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  entryCopy = entry;
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = entriesCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      v13 = entryCopy;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        entryCopy = [(BLSAlwaysOnTimeline *)self configureEntry:*(*(&v16 + 1) + 8 * v12) previousEntry:v13, v16];
        [array addObject:entryCopy];

        ++v12;
        v13 = entryCopy;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [array copy];

  return v14;
}

+ (_NSRange)rangeOfEntries:(id)entries forDateInterval:(id)interval shouldIncludePrevious:(BOOL)previous
{
  obj = previous;
  v46 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  intervalCopy = interval;
  v6 = [entriesCopy count];
  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (entriesCopy)
  {
    v9 = v6;
    if (v6)
    {
      startDate = [intervalCopy startDate];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v11 = entriesCopy;
      v12 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v12)
      {
        v13 = 0;
        v14 = *v41;
        while (2)
        {
          v15 = 0;
          v16 = -v13;
          v13 += v12;
          do
          {
            if (*v41 != v14)
            {
              objc_enumerationMutation(v11);
            }

            presentationTime = [*(*(&v40 + 1) + 8 * v15) presentationTime];
            v18 = [presentationTime compare:startDate];

            if (v18 != -1)
            {
              if (v16)
              {
                v19 = v18 == 0;
              }

              else
              {
                v19 = 1;
              }

              v20 = !v19 && obj;
              v8 = (v20 << 63 >> 63) - v16;
              goto LABEL_19;
            }

            ++v15;
            --v16;
          }

          while (v12 != v15);
          v12 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v8 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:

      if (obj && v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = v9 - 1;
        v7 = 1;
      }

      else if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = 0;
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        endDate = [intervalCopy endDate];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        reverseObjectEnumerator = [v11 reverseObjectEnumerator];
        obja = reverseObjectEnumerator;
        v23 = [reverseObjectEnumerator countByEnumeratingWithState:&v36 objects:v44 count:16];
        v7 = v9 - v8;
        if (v23)
        {
          v24 = *v37;
          v31 = v9 - v8;
          while (2)
          {
            v25 = 0;
            v26 = -v7;
            v7 -= v23;
            do
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(obja);
              }

              presentationTime2 = [*(*(&v36 + 1) + 8 * v25) presentationTime];
              v28 = [endDate compare:presentationTime2] == -1;

              if (!v28)
              {
                reverseObjectEnumerator = obja;
                v7 = (-v26 < v31) - v26;
                goto LABEL_34;
              }

              ++v25;
              ++v26;
            }

            while (v23 != v25);
            reverseObjectEnumerator = obja;
            v23 = [obja countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_34:
      }
    }
  }

  v29 = v8;
  v30 = v7;
  result.length = v30;
  result.location = v29;
  return result;
}

- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)interval withPreviousEntry:(id)entry
{
  v29 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  entryCopy = entry;
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  if (v8 == v9)
  {
    requestedFidelity = 0;
  }

  else
  {
    v10 = bls_timelines_log(v9);
    v11 = v10;
    if ([BLSAlwaysOnTimeline requestedFidelityForStartEntryInDateInterval:withPreviousEntry:]::didFaultOnce)
    {
      v12 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v12 = OS_LOG_TYPE_FAULT;
    }

    if (os_log_type_enabled(v10, v12))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v23 = 134218498;
      selfCopy = self;
      v25 = 2114;
      v26 = v14;
      v27 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_21FE25000, v11, v12, "%p class:%{public}@ should override requestedFidelityForStartEntryInDateInterval:withPreviousEntry: to avoid brute force method for timeline:%{public}@", &v23, 0x20u);
    }

    [BLSAlwaysOnTimeline requestedFidelityForStartEntryInDateInterval:withPreviousEntry:]::didFaultOnce = 1;
    if (entryCopy)
    {
      requestedFidelity = [entryCopy requestedFidelity];
    }

    else
    {
      v16 = [(BLSAlwaysOnTimeline *)self unconfiguredEntriesForDateInterval:intervalCopy previousEntry:0];
      v17 = [v16 count];
      if (v17)
      {
        firstObject = [v16 firstObject];
        requestedFidelity = [firstObject requestedFidelity];
        if (requestedFidelity == -1)
        {
          if (v17 == 1)
          {
            requestedFidelity = 0;
          }

          else
          {
            v19 = [v16 objectAtIndexedSubscript:1];
            presentationTime = [firstObject presentationTime];
            presentationTime2 = [v19 presentationTime];
            requestedFidelity = [(BLSAlwaysOnTimeline *)self estimatedFidelityForPresentationTime:presentationTime nextPresentationTime:presentationTime2];
          }
        }
      }

      else
      {
        requestedFidelity = 0;
      }
    }
  }

  return requestedFidelity;
}

- (int64_t)estimatedFidelityForPresentationTime:(id)time nextPresentationTime:(id)presentationTime
{
  [presentationTime timeIntervalSinceDate:time];
  result = [BLSFidelityThreshold fidelityForUpdateInterval:?];
  if (result == 3)
  {
    return 2;
  }

  return result;
}

- (void)entryBookkeepersForDateInterval:(char)interval@<W2> shouldConstructStartEntry:(void *)entry@<X3> framesPerSecond:(void *)second@<X8> previousSpecifier:(double)specifier@<D0>
{
  v55 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v52 = a2;
  intervalCopy = interval;
  specifierCopy = specifier;
  entryCopy = entry;
  v12 = entryCopy;
  second[1] = 0;
  second[2] = 0;
  *second = 0;
  if (self)
  {
    v49[0] = &specifierCopy;
    v49[1] = second;
    if (entryCopy)
    {
      identifier = [self identifier];
      v14 = [v12 entrySpecifierForTimelineIdentifier:identifier];
    }

    else
    {
      v14 = 0;
    }

    timelineEntry = [(BLSAlwaysOnTimelineEntrySpecifier *)v14 timelineEntry];
    v15 = [selfCopy unconfiguredEntriesForDateInterval:v52 previousEntry:timelineEntry];
    v16 = v15;
    if (timelineEntry && [v15 count] && (objc_msgSend(v16, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "presentationTime"), v18 = objc_claimAutoreleasedReturnValue(), -[BLSAlwaysOnTimelineEntry presentationTime](timelineEntry, "presentationTime"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqualToDate:", v19), v19, v18, v17, v20))
    {
      previousTimelineEntry = [(BLSAlwaysOnTimelineEntrySpecifier *)v14 previousTimelineEntry];
      v22 = timelineEntry;
      timelineEntry = previousTimelineEntry;

      [BLSAlwaysOnTimeline entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:]::$_0::operator()(v49, timelineEntry, 0);
    }

    else
    {
      if (v14)
      {
        BLSTimelineEntryBookkeeper::BLSTimelineEntryBookkeeper(&v45, v14);
      }

      else
      {
        memset(v47, 0, 33);
        v45 = 0u;
        v46 = 0u;
      }

      v23 = second[1];
      if (v23 >= second[2])
      {
        v28 = std::vector<BLSTimelineEntryBookkeeper>::__emplace_back_slow_path<BLSTimelineEntryBookkeeper>(second, &v45);
      }

      else
      {
        v24 = v45;
        v45 = 0u;
        *v23 = v24;
        v25 = v46;
        v46 = 0u;
        *(v23 + 16) = v25;
        v26 = *v47;
        *v47 = 0;
        *(v23 + 32) = v26;
        v27 = *&v47[8];
        *(v23 + 49) = *&v47[17];
        *(v23 + 40) = v27;
        v28 = v23 + 72;
      }

      second[1] = v28;
    }

    v43 = 0;
    v44 = &selfCopy;
    v42 = 0;
    *&v45 = &v42;
    *(&v45 + 1) = &v44;
    *&v46 = &selfCopy;
    *(&v46 + 1) = &v43;
    *v47 = &intervalCopy;
    *&v47[8] = &v52;
    *&v47[16] = &specifierCopy;
    *&v47[24] = v49;
    *&v47[32] = &timelineEntry;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = v16;
    v30 = [v29 countByEnumeratingWithState:&v38 objects:v54 count:16];
    if (v30)
    {
      v31 = *v39;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(v29);
          }

          [BLSAlwaysOnTimeline entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:]::$_2::operator()(&v45, *(*(&v38 + 1) + 8 * i));
        }

        v30 = [v29 countByEnumeratingWithState:&v38 objects:v54 count:16];
      }

      while (v30);
    }

    if (v42)
    {
      [BLSAlwaysOnTimeline entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:]::$_2::operator()(&v45, 0);
    }

    else if (intervalCopy == 1)
    {
      v33 = [selfCopy requestedFidelityForStartEntryInDateInterval:v52 withPreviousEntry:{timelineEntry, v38}];
      v34 = selfCopy;
      startDate = [v52 startDate];
      v36 = [BLSAlwaysOnTimelineUnconfiguredEntry entryForPresentationTime:startDate withRequestedFidelity:v33];
      v37 = [v34 configureEntry:v36 previousEntry:timelineEntry];

      [BLSAlwaysOnTimeline entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:]::$_0::operator()(v49, v37, timelineEntry);
    }
  }
}

- (void)entryBookkeepersForDateInterval:shouldConstructStartEntry:framesPerSecond:previousSpecifier:
{
  v9 = a2;
  v5 = a3;
  if ([v9 requestedFidelity] == -1)
  {
    v6 = **self;
    presentationTime = [v9 presentationTime];
    v8 = v5[2](v5);
    [v9 setRequestedFidelity:{objc_msgSend(v6, "estimatedFidelityForPresentationTime:nextPresentationTime:", presentationTime, v8)}];
  }
}

+ (void)entriesCombinerForTimelines:(char)timelines@<W3> dateInterval:(void *)interval@<X4> shouldConstructStartSpecifier:(uint64_t)specifier@<X8> framesPerSecond:(double)second@<D0> previousSpecifier:
{
  v45[16] = *MEMORY[0x277D85DE8];
  v30 = a2;
  v12 = a3;
  intervalCopy = interval;
  objc_opt_self();
  v14 = v12;
  v15 = v14;
  if (intervalCopy)
  {
    presentationInterval = [intervalCopy presentationInterval];
    startDate = [presentationInterval startDate];

    startDate2 = [v14 startDate];
    v19 = [startDate2 compare:startDate];

    v15 = v14;
    if (v19 == -1)
    {
      v20 = objc_alloc(MEMORY[0x277CCA970]);
      endDate = [v14 endDate];
      v22 = [endDate laterDate:startDate];
      v15 = [v20 initWithStartDate:startDate endDate:v22];
    }
  }

  specifierCopy = specifier;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v23 = v30;
  v24 = [v23 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v24)
  {
    v25 = *v41;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [(BLSAlwaysOnTimeline *)*(*(&v40 + 1) + 8 * i) entryBookkeepersForDateInterval:v14 shouldConstructStartEntry:timelines framesPerSecond:intervalCopy previousSpecifier:&v34, second];
        v37 = v34;
        v38 = v35;
        v35 = 0;
        v34 = 0uLL;
        v39 = v37;
        v27 = v32;
        if (v32 >= v33)
        {
          v28 = std::vector<BLSTimelineEntryIterator>::__emplace_back_slow_path<BLSTimelineEntryIterator>(&v31, v36);
        }

        else
        {
          *v32 = v36[0];
          v27[2] = 0;
          v27[3] = 0;
          v27[1] = 0;
          *(v27 + 1) = v37;
          v27[3] = v38;
          v37 = 0uLL;
          v38 = 0;
          v27[4] = v39;
          v28 = (v27 + 5);
        }

        v32 = v28;
        v44 = &v37;
        std::vector<BLSTimelineEntryBookkeeper>::__destroy_vector::operator()[abi:ne200100](&v44);
        v44 = &v34;
        std::vector<BLSTimelineEntryBookkeeper>::__destroy_vector::operator()[abi:ne200100](&v44);
      }

      v24 = [v23 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v24);
  }

  BLSTimelineEntriesCombiner::BLSTimelineEntriesCombiner(specifierCopy, &v31, v15, second);
  v45[0] = &v31;
  std::vector<BLSTimelineEntryIterator>::__destroy_vector::operator()[abi:ne200100](v45);
}

+ (id)constructFrameSpecifiersForTimelines:(id)timelines dateInterval:(id)interval shouldConstructStartSpecifier:(BOOL)specifier framesPerSecond:(double)second previousSpecifier:(id)previousSpecifier
{
  specifierCopy = specifier;
  v33 = *MEMORY[0x277D85DE8];
  timelinesCopy = timelines;
  intervalCopy = interval;
  previousSpecifierCopy = previousSpecifier;
  v14 = bls_timelines_log(previousSpecifierCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [timelinesCopy bls_boundedDescriptionWithMax:10];
    [BLSAlwaysOnTimeline constructFrameSpecifiersForTimelines:v15 dateInterval:buf shouldConstructStartSpecifier:v14 framesPerSecond:? previousSpecifier:?];
  }

  if ([timelinesCopy count])
  {
    [(BLSAlwaysOnTimeline *)timelinesCopy entriesCombinerForTimelines:intervalCopy dateInterval:specifierCopy shouldConstructStartSpecifier:previousSpecifierCopy framesPerSecond:v26 previousSpecifier:second];
    v16 = BLSTimelineEntriesCombiner::constructFrameSpecifiers(v26);

    v29 = v26;
    std::vector<BLSTimelineEntryIterator>::__destroy_vector::operator()[abi:ne200100](&v29);
  }

  else if (specifierCopy)
  {
    v17 = [BLSAlwaysOnFrameSpecifier alloc];
    v18 = [BLSAlwaysOnTimelineEntrySpecifier alloc];
    v19 = [BLSAlwaysOnTimelineEntry alloc];
    startDate = [intervalCopy startDate];
    [intervalCopy duration];
    v21 = [(BLSAlwaysOnTimelineEntry *)v19 initWithPresentationTime:startDate requestedFidelity:0 animated:0 duration:0 timelineIdentifier:0 userObject:?];
    v22 = [(BLSAlwaysOnTimelineEntrySpecifier *)v18 initWithTimelineEntry:v21 percentComplete:0 previousTimelineEntry:1 didChange:1.0];
    v30 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v24 = [(BLSAlwaysOnFrameSpecifier *)v17 initWithTimelineEntrySpecifiers:v23 presentationInterval:intervalCopy];
    v31 = v24;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

+ (int64_t)requestedFidelityForTimelines:(id)timelines inDateInterval:(id)interval
{
  v19 = *MEMORY[0x277D85DE8];
  timelinesCopy = timelines;
  intervalCopy = interval;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = timelinesCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v8)
  {

LABEL_13:
    v10 = 1;
    goto LABEL_14;
  }

  v9 = *v15;
  v10 = -1;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [*(*(&v14 + 1) + 8 * i) requestedFidelityForStartEntryInDateInterval:intervalCopy withPreviousEntry:{0, v14}];
      if (v12 > v10)
      {
        v10 = v12;
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v8);

  if (v10 == -1)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v10;
}

- (void)configureEntry:(uint64_t)a1 previousEntry:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218242;
  v3 = a1;
  v4 = 2114;
  v5 = a1;
  _os_log_fault_impl(&dword_21FE25000, a2, OS_LOG_TYPE_FAULT, "%p nil identifier for timeline:%{public}@", &v2, 0x16u);
}

+ (void)constructFrameSpecifiersForTimelines:(os_log_t)log dateInterval:shouldConstructStartSpecifier:framesPerSecond:previousSpecifier:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_21FE25000, log, OS_LOG_TYPE_DEBUG, "constructFrameSpecifiersForTimelines:%{public}@", buf, 0xCu);
}

@end