@interface MTRMetricsCollector
+ (id)sharedInstance;
- (MTRMetricsCollector)init;
- (id)metricSnapshotForCategory:(id)category removeMetrics:(BOOL)metrics;
- (id)metricSnapshotForCommissioning:(BOOL)commissioning;
- (void)handleMetricEvent:(MetricEvent *)event;
- (void)registerTracingBackend;
- (void)resetMetrics;
- (void)unregisterTracingBackend;
@end

@implementation MTRMetricsCollector

+ (id)sharedInstance
{
  if (qword_27DF776E8 != -1)
  {
    sub_23952DCCC();
  }

  v3 = qword_27DF776E0;

  return v3;
}

- (MTRMetricsCollector)init
{
  v8.receiver = self;
  v8.super_class = MTRMetricsCollector;
  v2 = [(MTRMetricsCollector *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    metricsDataCollection = v3->_metricsDataCollection;
    v3->_metricsDataCollection = dictionary;

    v3->_tracingBackendRegistered = 0;
    v6 = v3;
  }

  return v3;
}

- (void)registerTracingBackend
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_tracingBackendRegistered)
  {
    sub_23948B790(&self->_tracingBackend._vptr$Backend);
    v3 = sub_2393D9044(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Registered tracing backend with the registry", v4, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "Registered tracing backend with the registry");
    }

    self->_tracingBackendRegistered = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterTracingBackend
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_tracingBackendRegistered)
  {
    sub_23948B824(&self->_tracingBackend._vptr$Backend);
    v3 = sub_2393D9044(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Unregistered tracing backend with the registry", v4, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "Unregistered tracing backend with the registry");
    }

    self->_tracingBackendRegistered = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)handleMetricEvent:(MetricEvent *)event
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (*(&event->var2 + 4) <= 3u)
  {
    v5 = @"_end";
    if (event->var0 != 1)
    {
      v5 = @"_begin";
    }

    if (event->var0 == 2)
    {
      v6 = @"_event";
    }

    else
    {
      v6 = v5;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%@", event->var1, v6];
    v8 = [[MTRMetricData alloc] initWithMetricEvent:event];
    if (event->var0 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%@", event->var1, @"_begin"];
      v10 = [(NSMutableDictionary *)self->_metricsDataCollection objectForKeyedSubscript:v9];
      if (v10)
      {
        [(MTRMetricData *)v8 setDurationFromMetricData:v10];
      }

      else
      {
        v11 = sub_2393D9044(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          var1 = event->var1;
          *buf = 136315138;
          v17 = var1;
          _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Unable to find Begin event corresponding to Metric Event: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1, "Unable to find Begin event corresponding to Metric Event: %s", event->var1);
        }
      }
    }

    v13 = [(NSMutableDictionary *)self->_metricsDataCollection valueForKey:v7];
    if (!v13 || (v14 = event->var0 == 2, v13, v14))
    {
      if (strcmp(event->var1, "core_dcm_commission_stage") || sub_2393ABB14(event, v15) != 40)
      {
        [(NSMutableDictionary *)self->_metricsDataCollection setValue:v8 forKey:v7];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)metricSnapshotForCommissioning:(BOOL)commissioning
{
  commissioningCopy = commissioning;
  os_unfair_lock_lock(&self->_lock);
  array = [MEMORY[0x277CBEB18] array];
  v6 = [[MTRMetrics alloc] initWithCapacity:[(NSMutableDictionary *)self->_metricsDataCollection count]];
  metricsDataCollection = self->_metricsDataCollection;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = sub_2393AC554;
  v16 = &unk_278A75BA8;
  v8 = array;
  v17 = v8;
  v9 = v6;
  v18 = v9;
  [(NSMutableDictionary *)metricsDataCollection enumerateKeysAndObjectsUsingBlock:&v13];
  if (commissioningCopy)
  {
    [(NSMutableDictionary *)self->_metricsDataCollection removeObjectsForKeys:v8, v13, v14, v15, v16, v17];
  }

  v10 = v18;
  v11 = v9;

  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)metricSnapshotForCategory:(id)category removeMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  categoryCopy = category;
  os_unfair_lock_lock(&self->_lock);
  categoryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"dwnfw__%@__", categoryCopy];
  array = [MEMORY[0x277CBEB18] array];
  v9 = [[MTRMetrics alloc] initWithCapacity:[(NSMutableDictionary *)self->_metricsDataCollection count]];
  metricsDataCollection = self->_metricsDataCollection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2393AC7D4;
  v17[3] = &unk_278A75BD0;
  v11 = categoryCopy;
  v18 = v11;
  v12 = array;
  v19 = v12;
  v13 = v9;
  v20 = v13;
  [(NSMutableDictionary *)metricsDataCollection enumerateKeysAndObjectsUsingBlock:v17];
  if (metricsCopy)
  {
    [(NSMutableDictionary *)self->_metricsDataCollection removeObjectsForKeys:v12];
  }

  v14 = v20;
  v15 = v13;

  os_unfair_lock_unlock(&self->_lock);

  return v15;
}

- (void)resetMetrics
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_metricsDataCollection removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

@end