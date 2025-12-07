@interface NSCalendar(SchoolTime)
- (id)SCL_orderedWeekdays;
- (uint64_t)SCL_nonWeekendDays;
- (void)SCL_enumerateWeekdaysUsingBlock:()SchoolTime;
- (void)SCL_nonWeekendDays;
@end

@implementation NSCalendar(SchoolTime)

- (void)SCL_enumerateWeekdaysUsingBlock:()SchoolTime
{
  v4 = a3;
  firstWeekday = [self firstWeekday];
  v6 = firstWeekday;
  v9 = 0;
  if (firstWeekday > 7)
  {
    goto LABEL_8;
  }

  v7 = firstWeekday;
LABEL_3:
  v4[2](v4, v7, &v9);
  while (v7 != 7)
  {
    ++v7;
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  if (v6 >= 2)
  {
LABEL_8:
    v8 = 1;
    do
    {
      if ((v9 & 1) == 0)
      {
        v4[2](v4, v8, &v9);
      }

      ++v8;
    }

    while (v6 != v8);
  }
}

- (id)SCL_orderedWeekdays
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NSCalendar_SchoolTime__SCL_orderedWeekdays__block_invoke;
  v5[3] = &unk_279B6C988;
  v3 = v2;
  v6 = v3;
  [self SCL_enumerateWeekdaysUsingBlock:v5];

  return v3;
}

- (uint64_t)SCL_nonWeekendDays
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  v3 = [MEMORY[0x277CBEB58] set];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v23 = __44__NSCalendar_SchoolTime__SCL_nonWeekendDays__block_invoke;
  v24 = &unk_279B6C9B0;
  v4 = v3;
  v25 = v4;
  for (i = 1; i != 8; ++i)
  {
    if ((i - 8) >= 0xFFFFFFF9)
    {
      v23(v22, i);
    }
  }

  v6 = 0;
  v7 = 7;
  do
  {
    v8 = v2;
    v9 = [self component:512 fromDate:v2];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    [v4 removeObject:v10];

    v11 = [self isDateInWeekend:v8];
    if ((v9 - 1) >= 7)
    {
      v12 = 0;
    }

    else
    {
      v12 = (1 << (v9 - 1));
    }

    v13 = v12 | v6;
    if ((v11 & 1) == 0)
    {
      v6 = v13;
    }

    v2 = [self dateByAddingUnit:512 value:1 toDate:v8 options:0];

    --v7;
  }

  while (v7);
  if ([v4 count])
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      v15 = MEMORY[0x277CBEAD8];
      v16 = *MEMORY[0x277CBE648];
      calendarIdentifier = [self calendarIdentifier];
      locale = [self locale];
      localeIdentifier = [locale localeIdentifier];
      timeZone = [self timeZone];
      [v15 raise:v16 format:{@"Did not iterate all weekdays; %@; %@ %@ - %@", v4, calendarIdentifier, localeIdentifier, timeZone}];
    }

    else
    {
      calendarIdentifier = scl_framework_log(has_internal_diagnostics);
      if (os_log_type_enabled(calendarIdentifier, OS_LOG_TYPE_FAULT))
      {
        [(NSCalendar(SchoolTime) *)v4 SCL_nonWeekendDays];
      }
    }
  }

  return v6;
}

- (void)SCL_nonWeekendDays
{
  v18 = *MEMORY[0x277D85DE8];
  calendarIdentifier = [a2 calendarIdentifier];
  locale = [a2 locale];
  localeIdentifier = [locale localeIdentifier];
  timeZone = [a2 timeZone];
  v10 = 138544130;
  selfCopy = self;
  v12 = 2114;
  v13 = calendarIdentifier;
  v14 = 2114;
  v15 = localeIdentifier;
  v16 = 2114;
  v17 = timeZone;
  _os_log_fault_impl(&dword_264829000, a3, OS_LOG_TYPE_FAULT, "Did not iterate all weekdays; %{public}@; %{public}@ %{public}@ - %{public}@", &v10, 0x2Au);
}

@end