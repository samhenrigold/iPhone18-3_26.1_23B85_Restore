@interface PPSValueConverter
- (BOOL)_allowConversionFromMetric:(id)metric toMetric:(id)toMetric;
- (BOOL)_shouldConvertAtTimestamp:(double)timestamp;
- (BOOL)_shouldConvertEvent:(id)event;
- (PPSValueConverter)initWithFilepath:(id)filepath andMetrics:(id)metrics;
- (id)_category;
- (id)_convertEvent:(id)event;
- (id)_convertValue:(id)value atTimestamp:(double)timestamp usingMetric:(id)metric;
- (id)_latestHistory;
- (id)_latestMetricForMetricName:(id)name;
- (id)_sourceMetricForMetricName:(id)name;
- (id)_subsystem;
- (id)convertEventIfNecessary:(id)necessary;
- (id)convertValueIfNeccesary:(id)neccesary atTimestamp:(double)timestamp usingMetric:(id)metric;
- (void)_performGeneration;
@end

@implementation PPSValueConverter

- (PPSValueConverter)initWithFilepath:(id)filepath andMetrics:(id)metrics
{
  filepathCopy = filepath;
  metricsCopy = metrics;
  v12.receiver = self;
  v12.super_class = PPSValueConverter;
  v8 = [(PPSValueConverter *)&v12 init];
  if (v8)
  {
    v9 = [filepathCopy copy];
    filepath = v8->_filepath;
    v8->_filepath = v9;

    objc_storeStrong(&v8->_metrics, metrics);
  }

  return v8;
}

- (id)convertEventIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (![(PPSValueConverter *)self _isInitialized])
  {
    [(PPSValueConverter *)self _performGeneration];
  }

  if ([(PPSValueConverter *)self _shouldConvertEvent:necessaryCopy])
  {
    v5 = [(PPSValueConverter *)self _convertEvent:necessaryCopy];
  }

  else
  {
    v5 = necessaryCopy;
  }

  v6 = v5;

  return v6;
}

- (id)convertValueIfNeccesary:(id)neccesary atTimestamp:(double)timestamp usingMetric:(id)metric
{
  neccesaryCopy = neccesary;
  metricCopy = metric;
  if (![(PPSValueConverter *)self _isInitialized])
  {
    [(PPSValueConverter *)self _performGeneration];
  }

  if ([(PPSValueConverter *)self _shouldConvertAtTimestamp:timestamp])
  {
    v10 = [(PPSValueConverter *)self _convertValue:neccesaryCopy atTimestamp:metricCopy usingMetric:timestamp];
  }

  else
  {
    v10 = neccesaryCopy;
  }

  v11 = v10;

  return v11;
}

- (id)_subsystem
{
  firstObject = [(NSArray *)self->_metrics firstObject];
  subsystem = [firstObject subsystem];

  return subsystem;
}

- (id)_category
{
  firstObject = [(NSArray *)self->_metrics firstObject];
  category = [firstObject category];

  return category;
}

- (id)_latestHistory
{
  timeline = self->_timeline;
  lastObject = [(NSArray *)self->_sortedTimelineIntervals lastObject];
  v4 = [(NSMutableDictionary *)timeline objectForKeyedSubscript:lastObject];

  return v4;
}

- (id)_latestMetricForMetricName:(id)name
{
  nameCopy = name;
  _latestHistory = [(PPSValueConverter *)self _latestHistory];
  v6 = [_latestHistory objectForKeyedSubscript:nameCopy];

  return v6;
}

- (id)_sourceMetricForMetricName:(id)name
{
  v3 = [(NSDictionary *)self->_selectedHistory objectForKeyedSubscript:name];

  return v3;
}

- (BOOL)_allowConversionFromMetric:(id)metric toMetric:(id)toMetric
{
  metricCopy = metric;
  toMetricCopy = toMetric;
  [metricCopy version];
  v8 = v7;
  [toMetricCopy version];
  if (v8 != v9)
  {
    unit = [metricCopy unit];
    unit2 = [toMetricCopy unit];
    if ([unit isEqual:unit2])
    {
    }

    else
    {
      unit3 = [metricCopy unit];
      v12Unit = [unit3 unit];
      unit4 = [toMetricCopy unit];
      v14Unit = [unit4 unit];
      v16 = [v12Unit isEqual:v14Unit];

      if (!v16)
      {
        v17 = 1;
        goto LABEL_6;
      }
    }
  }

  v17 = 0;
LABEL_6:

  return v17;
}

- (id)_convertEvent:(id)event
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  metricKeys = [eventCopy metricKeys];
  v6 = [metricKeys copy];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        metrics = [eventCopy metrics];
        v12 = [metrics objectForKeyedSubscript:v10];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [eventCopy monotonicTimestamp];
          v13 = [(PPSValueConverter *)self _convertValue:v12 atTimestamp:v10 usingMetric:?];
          metrics2 = [eventCopy metrics];
          [metrics2 setObject:v13 forKeyedSubscript:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return eventCopy;
}

- (id)_convertValue:(id)value atTimestamp:(double)timestamp usingMetric:(id)metric
{
  valueCopy = value;
  metricCopy = metric;
  v9 = [(PPSValueConverter *)self _latestMetricForMetricName:metricCopy];
  v10 = [(PPSValueConverter *)self _sourceMetricForMetricName:metricCopy];
  if ([(PPSValueConverter *)self _allowConversionFromMetric:v10 toMetric:v9])
  {
    unit = [v10 unit];
    unit2 = [v9 unit];
    v19 = 0;
    v13 = PPSConvertValueWithPPSUnit(valueCopy, unit, unit2, &v19);
    v14 = v19;

    if (v13)
    {
      v16 = v13;
    }

    else if (v14)
    {
      v17 = PPSReaderLog(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PPSValueConverter _convertValue:metricCopy atTimestamp:v14 usingMetric:v17];
      }
    }
  }

  else
  {
    v13 = valueCopy;
  }

  return v13;
}

- (void)_performGeneration
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, 5.778e-34);
  _os_log_debug_impl(&dword_25E225000, v6, OS_LOG_TYPE_DEBUG, "Done generating metric timeline for '%@::%@'", v5, 0x16u);
}

- (BOOL)_shouldConvertAtTimestamp:(double)timestamp
{
  v44 = *MEMORY[0x277D85DE8];
  if (!self->_sortedTimelineIntervals)
  {
    v5 = PPSReaderLog(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PPSValueConverter _shouldConvertAtTimestamp:v5];
    }

    allKeys = [(NSMutableDictionary *)self->_timeline allKeys];
    v7 = [allKeys sortedArrayUsingSelector:sel_compare_];
    sortedTimelineIntervals = self->_sortedTimelineIntervals;
    self->_sortedTimelineIntervals = v7;
  }

  if ([(NSMutableDictionary *)self->_timeline count]< 2)
  {
    return 0;
  }

  lastObject = [(NSArray *)self->_sortedTimelineIntervals lastObject];
  startDate = [lastObject startDate];
  [startDate timeIntervalSince1970];
  v12 = v11 > timestamp;

  if (!v12)
  {
    return 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = self->_sortedTimelineIntervals;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v14)
  {
    v15 = *v34;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        _latestInterval = [(PPSValueConverter *)self _latestInterval];
        v19 = v17 == _latestInterval;

        if (!v19)
        {
          v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:timestamp];
          v21 = [v17 containsDate:v20];

          if (v21)
          {
            v24 = PPSReaderLog(v22);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              startDate2 = [v17 startDate];
              [startDate2 timeIntervalSince1970];
              v30 = v29;
              endDate = [v17 endDate];
              [endDate timeIntervalSince1970];
              *buf = 134218496;
              v38 = v30;
              v39 = 2048;
              v40 = v32;
              v41 = 2048;
              timestampCopy = timestamp;
              _os_log_debug_impl(&dword_25E225000, v24, OS_LOG_TYPE_DEBUG, "Selecting build interval [%f, %f] for timestamp '%f' as active conversion region!", buf, 0x20u);
            }

            v25 = [(NSMutableDictionary *)self->_timeline objectForKeyedSubscript:v17];
            selectedHistory = self->_selectedHistory;
            self->_selectedHistory = v25;

            v23 = 1;
            goto LABEL_21;
          }
        }
      }

      v14 = [(NSArray *)v13 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_21:

  return v23;
}

- (BOOL)_shouldConvertEvent:(id)event
{
  eventCopy = event;
  [eventCopy monotonicTimestamp];
  LOBYTE(self) = [(PPSValueConverter *)self _shouldConvertAtTimestamp:?];

  return self;
}

- (void)_convertValue:(uint64_t)a1 atTimestamp:(uint64_t)a2 usingMetric:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_25E225000, log, OS_LOG_TYPE_ERROR, "Error while performing value conversion for metric name '%@' = %@", &v3, 0x16u);
}

@end