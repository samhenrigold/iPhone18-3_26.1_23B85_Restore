@interface BLSAlwaysOnFrequencyPerMinuteTimeline
- (BLSAlwaysOnFrequencyPerMinuteTimeline)initWithPerMinuteUpdateFrequency:(int64_t)frequency identifier:(id)identifier configure:(id)configure;
- (id)description;
- (id)unconfiguredEntriesForDateInterval:(id)interval previousEntry:(id)entry;
- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)interval withPreviousEntry:(id)entry;
@end

@implementation BLSAlwaysOnFrequencyPerMinuteTimeline

- (BLSAlwaysOnFrequencyPerMinuteTimeline)initWithPerMinuteUpdateFrequency:(int64_t)frequency identifier:(id)identifier configure:(id)configure
{
  identifierCopy = identifier;
  configureCopy = configure;
  v16.receiver = self;
  v16.super_class = BLSAlwaysOnFrequencyPerMinuteTimeline;
  v10 = [(BLSAlwaysOnTimeline *)&v16 initWithIdentifier:identifierCopy configure:configureCopy];
  v11 = v10;
  if (v10)
  {
    if (frequency <= 0)
    {
      v12 = bls_timelines_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [BLSAlwaysOnFrequencyPerMinuteTimeline initWithPerMinuteUpdateFrequency:frequency identifier:identifierCopy configure:v12];
      }

      frequency = 1;
    }

    v11->_frequencyPerMinute = frequency;
    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v11->_calendar;
    v11->_calendar = autoupdatingCurrentCalendar;
  }

  return v11;
}

- (id)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __52__BLSAlwaysOnFrequencyPerMinuteTimeline_description__block_invoke;
  v10 = &unk_278428B78;
  v4 = v3;
  v11 = v4;
  selfCopy = self;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

id __52__BLSAlwaysOnFrequencyPerMinuteTimeline_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 appendObject:v3 withName:@"id"];

  return [*(a1 + 32) appendDouble:@"freq" withName:4 decimalPrecision:*(*(a1 + 40) + 32)];
}

- (id)unconfiguredEntriesForDateInterval:(id)interval previousEntry:(id)entry
{
  v71 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  entryCopy = entry;
  startDate = [intervalCopy startDate];
  presentationTime = [entryCopy presentationTime];
  v39 = presentationTime;
  if (presentationTime && [startDate compare:presentationTime] != 1)
  {
    v9 = presentationTime;

    v8 = 1;
    startDate = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v41 = v10;
  [v10 setSecond:0];
  v11 = [(NSCalendar *)self->_calendar components:32896 fromDate:startDate];
  v37 = v11;
  if ([v11 second])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v11 nanosecond] == 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  if (v12)
  {
    v13 = startDate;
  }

  else
  {
    v13 = [(NSCalendar *)self->_calendar nextDateAfterDate:startDate matchingComponents:v10 options:5124];
  }

  v14 = v13;
  v15 = self->_calendar;
  frequencyPerMinute = self->_frequencyPerMinute;
  endDate = [intervalCopy endDate];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke;
  v49[3] = &unk_278428BA0;
  v55 = frequencyPerMinute;
  v18 = v15;
  v50 = v18;
  v19 = v14;
  v51 = v19;
  v20 = startDate;
  v52 = v20;
  v56 = v8;
  v21 = array;
  v53 = v21;
  v36 = endDate;
  v54 = v36;
  v22 = MEMORY[0x223D716E0](v49);
  v48 = 0;
  (v22)[2](v22, v19, &v48);
  if ((v48 & 1) == 0)
  {
    calendar = self->_calendar;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke_2;
    v46[3] = &unk_278428BC8;
    v47 = v22;
    [(NSCalendar *)calendar enumerateDatesStartingAfterDate:v19 matchingComponents:v10 options:5120 usingBlock:v46];
  }

  v24 = [v21 count];
  if (v24 >= 2)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke_3;
    v44[3] = &unk_278428BF0;
    v45 = v20;
    v25 = [v21 indexOfObjectPassingTest:v44];
    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v25 <= 1)
      {
LABEL_18:

        goto LABEL_19;
      }

      v24 = v25;
    }

    [v21 removeObjectsInRange:{0, v24 - 1}];
    goto LABEL_18;
  }

LABEL_19:
  v26 = [BLSFidelityThreshold fidelityForUpdateInterval:60.0 / self->_frequencyPerMinute];
  v27 = bls_timelines_log(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    identifier = [(BLSAlwaysOnTimeline *)self identifier];
    v33 = [v21 count];
    v30 = NSStringFromBLSUpdateFidelity(v26);
    bls_shortLoggingString = [intervalCopy bls_shortLoggingString];
    v31 = [v21 bls_boundedDescriptionWithMax:8 transformer:&__block_literal_global_6];
    *buf = 134219522;
    selfCopy = self;
    v59 = 2114;
    v60 = identifier;
    v61 = 1024;
    v62 = v33;
    v63 = 2112;
    v64 = v30;
    v65 = 1024;
    v66 = frequencyPerMinute;
    v67 = 2114;
    v68 = bls_shortLoggingString;
    v69 = 2112;
    v34 = v31;
    v70 = v31;
    _os_log_debug_impl(&dword_21FE25000, v27, OS_LOG_TYPE_DEBUG, "%p:%{public}@ -> %d entries(%@) @ %d/m for %{public}@ : %@", buf, 0x40u);
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke_59;
  v43[3] = &__block_descriptor_40_e16__16__0__NSDate_8l;
  v43[4] = v26;
  v28 = [v21 bs_map:v43];

  return v28;
}

void __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 72);
  v7 = 1;
  v14 = v5;
  v8 = v5;
  while (1)
  {
    v9 = [*(a1 + 32) dateByAddingUnit:128 value:(v7 * (60.0 / v6) + 0.5) toDate:v14 options:0];
    if (*(a1 + 40) != v14 || ((v10 = [*(a1 + 48) compare:v9], !*(a1 + 80)) ? (v11 = v10 != 1) : (v11 = v10 == -1), v11))
    {
      [*(a1 + 56) addObject:v8];
    }

    v12 = v9;

    if ([v12 compare:*(a1 + 64)] == 1)
    {
      break;
    }

    v6 = *(a1 + 72);
    v8 = v12;
    if (v7++ >= v6)
    {
      goto LABEL_12;
    }
  }

  *a3 = 1;

LABEL_12:
}

id __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 bls_shortLoggingString];

  return v2;
}

id __90__BLSAlwaysOnFrequencyPerMinuteTimeline_unconfiguredEntriesForDateInterval_previousEntry___block_invoke_59(uint64_t a1, uint64_t a2)
{
  v2 = [BLSAlwaysOnTimelineUnconfiguredEntry entryForPresentationTime:a2 withRequestedFidelity:*(a1 + 32)];

  return v2;
}

- (int64_t)requestedFidelityForStartEntryInDateInterval:(id)interval withPreviousEntry:(id)entry
{
  if (self)
  {
    return [BLSFidelityThreshold fidelityForUpdateInterval:interval, entry, 60.0 / *(self + 32)];
  }

  return self;
}

- (void)initWithPerMinuteUpdateFrequency:(int)a1 identifier:(uint64_t)a2 configure:(os_log_t)log .cold.1(int a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a1;
  v4 = 2112;
  v5 = a2;
  _os_log_fault_impl(&dword_21FE25000, log, OS_LOG_TYPE_FAULT, "frequency:%d for identifier:%@ must be > 0, using 1 instead", v3, 0x12u);
}

@end