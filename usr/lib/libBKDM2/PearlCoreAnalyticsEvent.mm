@interface PearlCoreAnalyticsEvent
- (BOOL)postEventExtendedBy:(id)by;
- (PearlCoreAnalyticsEvent)initWithName:(id)name;
- (PearlCoreAnalyticsEvent)initWithName:(id)name awdMetric:(id)metric;
- (id)getPrintableArray;
- (void)prepareEventDictionary:(BOOL)dictionary;
- (void)reset;
@end

@implementation PearlCoreAnalyticsEvent

- (void)reset
{
  v11 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(&self->super.super.isa + *MEMORY[0x29EDBFD90]);
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "PearlCoreAnalyticsEvent reset event: %@\n", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = PearlCoreAnalyticsEvent;
  [(BiometricKitCoreAnalyticsEvent *)&v8 reset];
  awdMetric = self->_awdMetric;
  self->_awdMetric = 0;

  awdMetricDictionary = self->_awdMetricDictionary;
  self->_awdMetricDictionary = 0;

  eventDictionary = self->_eventDictionary;
  self->_eventDictionary = 0;
}

- (PearlCoreAnalyticsEvent)initWithName:(id)name
{
  v18[7] = *MEMORY[0x29EDCA608];
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = PearlCoreAnalyticsEvent;
  v5 = [(BiometricKitCoreAnalyticsEvent *)&v17 initWithName:nameCopy];
  if (v5)
  {
    v6 = *MEMORY[0x29EDBFDA8];
    v18[0] = *MEMORY[0x29EDBFDB0];
    v18[1] = v6;
    v7 = *MEMORY[0x29EDBFDC8];
    v18[2] = *MEMORY[0x29EDBFDA0];
    v18[3] = v7;
    v8 = *MEMORY[0x29EDBFDD8];
    v18[4] = *MEMORY[0x29EDBFDD0];
    v18[5] = v8;
    v18[6] = *MEMORY[0x29EDBFDC0];
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v18 count:7];
    v10 = *MEMORY[0x29EDBFD98];
    v11 = *(&v5->super.super.isa + v10);
    *(&v5->super.super.isa + v10) = v9;

    v12 = [&unk_2A1E03A20 objectForKey:nameCopy];
    awdMetricName = v5->_awdMetricName;
    v5->_awdMetricName = v12;

    if (v5->_awdMetricName)
    {
      v14 = [&unk_2A1E039F8 objectForKey:?];
      awdMetricId = v5->_awdMetricId;
      v5->_awdMetricId = v14;

      if (!v5->_awdMetricId)
      {
        [PearlCoreAnalyticsEvent initWithName:v5];
        v5 = 0;
      }
    }
  }

  return v5;
}

- (PearlCoreAnalyticsEvent)initWithName:(id)name awdMetric:(id)metric
{
  metricCopy = metric;
  v8 = [(PearlCoreAnalyticsEvent *)self initWithName:name];
  v9 = v8;
  if (v8)
  {
    if (metricCopy)
    {
      objc_storeStrong(&v8->_awdMetric, metric);
    }

    else
    {
      [PearlCoreAnalyticsEvent initWithName:v8 awdMetric:?];
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)postEventExtendedBy:(id)by
{
  v18 = *MEMORY[0x29EDCA608];
  byCopy = by;
  v5 = MEMORY[0x29EDCA988];
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(&self->super.super.isa + *MEMORY[0x29EDBFD90]);
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "PearlCoreAnalyticsEvent postEvent: %@\n", buf, 0xCu);
  }

  [(BiometricKitCoreAnalyticsEvent *)self updateBoundedFieldValue];
  [(PearlCoreAnalyticsEvent *)self prepareEventDictionary:0];
  if (self->_eventDictionary)
  {
    v13.receiver = self;
    v13.super_class = PearlCoreAnalyticsEvent;
    if ([(BiometricKitCoreAnalyticsEvent *)&v13 postEventExtendedBy:byCopy])
    {
      if (__osLogTrace)
      {
        v5 = __osLogTrace;
      }

      v8 = 1;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(&self->super.super.isa + *MEMORY[0x29EDBFD90]);
        *buf = 138412546;
        v15 = v9;
        v16 = 1024;
        v17 = 1;
        _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "PearlCoreAnalyticsEvent postEvent: %@ result:%d\n", buf, 0x12u);
      }

      goto LABEL_19;
    }
  }

  else
  {
    [PearlCoreAnalyticsEvent postEventExtendedBy:];
  }

  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(&self->super.super.isa + *MEMORY[0x29EDBFD90]);
    *buf = 138412546;
    v15 = v11;
    v16 = 1024;
    v17 = 0;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_ERROR, "PearlCoreAnalyticsEvent postEvent: %@ result:%d\n", buf, 0x12u);
  }

  v8 = 0;
LABEL_19:

  return v8;
}

- (void)prepareEventDictionary:(BOOL)dictionary
{
  v4 = MEMORY[0x29EDB8E00];
  v5 = [(BiometricKitCoreAnalyticsEvent *)self dictionaryRepresentationArchiving:dictionary];
  v6 = [v4 dictionaryWithDictionary:v5];

  dictionaryRepresentation = [(PBCodable *)self->_awdMetric dictionaryRepresentation];
  awdMetricDictionary = self->_awdMetricDictionary;
  self->_awdMetricDictionary = dictionaryRepresentation;

  v9 = self->_awdMetricDictionary;
  v13 = MEMORY[0x29EDCA5F8];
  v14 = 3221225472;
  v15 = __50__PearlCoreAnalyticsEvent_prepareEventDictionary___block_invoke;
  v16 = &unk_29EE54C00;
  v17 = v6;
  selfCopy = self;
  v10 = v6;
  [(NSDictionary *)v9 enumerateKeysAndObjectsUsingBlock:&v13];
  v11 = [MEMORY[0x29EDB8DC0] dictionaryWithDictionary:{v10, v13, v14, v15, v16}];
  eventDictionary = self->_eventDictionary;
  self->_eventDictionary = v11;
}

void __50__PearlCoreAnalyticsEvent_prepareEventDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setObject:v6 forKey:v5];
  }

  else
  {
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(*(a1 + 40) + *MEMORY[0x29EDBFD90]);
      v9 = v7;
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = objc_opt_class();
      v10 = v16;
      _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "PearlCoreAnalyticsEvent(%@) getEventDictionary remove unsupported field: %@ of class: %@\n", &v11, 0x20u);
    }
  }
}

- (id)getPrintableArray
{
  array = [MEMORY[0x29EDB8DE8] array];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  array2 = [MEMORY[0x29EDB8DE8] array];
  [(PearlCoreAnalyticsEvent *)self prepareEventDictionary:1];
  selfCopy = self;
  getEventDictionary = [(PearlCoreAnalyticsEvent *)self getEventDictionary];
  v4 = [getEventDictionary description];
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      [v4 getParagraphStart:&v22 end:&v21 contentsEnd:&v20 forRange:{v7, 0}];
      v8 = [v4 substringWithRange:{v22, v20 - v22}];
      [array2 addObject:v8];

      v7 = v21;
    }

    while (v21 < v6);
  }

  v9 = [array2 count] / 0x14uLL + 1;
  v10 = *MEMORY[0x29EDBFD90];
  v11 = [MEMORY[0x29EDBA050] stringWithFormat:@"PearlCAEvent: %@ (print %ld of %ld):\n", *(&self->super.super.isa + v10), 1, v9];
  if ([array2 count])
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = [array2 objectAtIndexedSubscript:v12];
      [v11 appendString:v14];

      [v11 appendString:@"\n"];
      if (v13 - 1 < v12 / 0x14)
      {
        [array addObject:v11];
        v15 = [MEMORY[0x29EDBA050] stringWithFormat:@"PearlCAEvent: %@ (print %ld of %ld):\n", *(&selfCopy->super.super.isa + v10), ++v13, v9];

        v11 = v15;
      }

      ++v12;
    }

    while (v12 < [array2 count]);
  }

  [array addObject:v11];

  return array;
}

- (void)initWithName:(void *)a1 .cold.1(void *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

- (void)initWithName:(void *)a1 awdMetric:.cold.1(void *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

- (void)postEventExtendedBy:.cold.1()
{
  v4 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v2 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v3 = 75;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v1, 0x30u);
  }
}

@end