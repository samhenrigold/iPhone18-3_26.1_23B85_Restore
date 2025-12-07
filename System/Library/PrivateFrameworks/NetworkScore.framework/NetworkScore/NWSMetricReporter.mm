@interface NWSMetricReporter
- (void)sendHTTPMetrics:(id)metrics onQueue:(id)queue;
- (void)sendStreamMetrics:(id)metrics onQueue:(id)queue;
@end

@implementation NWSMetricReporter

- (void)sendHTTPMetrics:(id)metrics onQueue:(id)queue
{
  metricsCopy = metrics;
  queueCopy = queue;
  if (os_variant_has_internal_content())
  {
    connection = [(NWSClientConnection *)self connection];

    if (!connection)
    {
      [(NWSClientConnection *)self activateConnectionOn:queueCopy];
    }

    v9 = [metricsCopy count];
    if (!v9 || ([metricsCopy objectAtIndex:0], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass & 1) == 0))
    {
      v13 = nws_log_obj(v9, v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NWSMetricReporter sendHTTPMetrics:onQueue:];
      }
    }

    connection2 = [(NWSClientConnection *)self connection];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__NWSMetricReporter_sendHTTPMetrics_onQueue___block_invoke;
    v19[3] = &unk_27996CFE0;
    v19[4] = self;
    v15 = [connection2 remoteObjectProxyWithErrorHandler:v19];

    if (v15)
    {
      [v15 sendHTTPMetricsWithMetrics:metricsCopy];
    }

    else
    {
      v18 = nws_log_obj(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [NWSMetricReporter sendHTTPMetrics:onQueue:];
      }
    }
  }
}

void __45__NWSMetricReporter_sendHTTPMetrics_onQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = nws_log_obj(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __45__NWSMetricReporter_sendHTTPMetrics_onQueue___block_invoke_cold_1(v3);
  }

  v6 = [*(a1 + 32) connection];
  [v6 invalidate];

  [*(a1 + 32) setConnection:0];
}

- (void)sendStreamMetrics:(id)metrics onQueue:(id)queue
{
  metricsCopy = metrics;
  queueCopy = queue;
  if (os_variant_has_internal_content())
  {
    connection = [(NWSClientConnection *)self connection];

    if (!connection)
    {
      [(NWSClientConnection *)self activateConnectionOn:queueCopy];
    }

    v9 = [metricsCopy count];
    if (!v9 || ([metricsCopy objectAtIndex:0], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass & 1) == 0))
    {
      v13 = nws_log_obj(v9, v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NWSMetricReporter sendStreamMetrics:onQueue:];
      }
    }

    connection2 = [(NWSClientConnection *)self connection];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __47__NWSMetricReporter_sendStreamMetrics_onQueue___block_invoke;
    v19[3] = &unk_27996CFE0;
    v19[4] = self;
    v15 = [connection2 remoteObjectProxyWithErrorHandler:v19];

    if (v15)
    {
      [v15 sendStreamingMetricsWithMetrics:metricsCopy];
    }

    else
    {
      v18 = nws_log_obj(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [NWSMetricReporter sendHTTPMetrics:onQueue:];
      }
    }
  }
}

void __47__NWSMetricReporter_sendStreamMetrics_onQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = nws_log_obj(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __45__NWSMetricReporter_sendHTTPMetrics_onQueue___block_invoke_cold_1(v3);
  }

  v6 = [*(a1 + 32) connection];
  [v6 invalidate];

  [*(a1 + 32) setConnection:0];
}

void __45__NWSMetricReporter_sendHTTPMetrics_onQueue___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_2(&dword_25BA15000, v2, v3, "connection failed with error : %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end