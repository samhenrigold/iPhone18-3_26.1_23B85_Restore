@interface AWDMetricsServerInterface
- (AWDMetricsServerInterface)init;
- (BOOL)setupAWDMetricsServerConnections;
- (void)handleMetricQuery:(unsigned int)query;
@end

@implementation AWDMetricsServerInterface

- (AWDMetricsServerInterface)init
{
  v14.receiver = self;
  v14.super_class = AWDMetricsServerInterface;
  v2 = [(AWDMetricsServerInterface *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.Flagstone.analytics.awd.queue", v3);
    msgQueue = v2->_msgQueue;
    v2->_msgQueue = v4;

    if (v2->_msgQueue)
    {
      v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : init - Message Queue setup", v13, 2u);
      }

      v7 = [[AWDServerConnection alloc] initWithComponentId:137 andBlockOnConfiguration:1];
      awdServerConnection = v2->_awdServerConnection;
      v2->_awdServerConnection = v7;

      if (v2->_awdServerConnection)
      {
        v9 = log_get_logging_obg("com.apple.wpantund.awd", "default");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : init - AWD Server Connection setup", v13, 2u);
        }

        [(AWDMetricsServerInterface *)v2 setupAWDMetricsServerConnections];
        goto LABEL_9;
      }

      v11 = log_get_logging_obg("com.apple.wpantund.awd", "default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [AWDMetricsServerInterface init];
      }
    }

    else
    {
      v11 = log_get_logging_obg("com.apple.wpantund.awd", "default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [AWDMetricsServerInterface init];
      }
    }

    v10 = 0;
    goto LABEL_15;
  }

LABEL_9:
  v10 = v2;
LABEL_15:

  return v10;
}

- (BOOL)setupAWDMetricsServerConnections
{
  awdServerConnection = self->_awdServerConnection;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke;
  v26[3] = &unk_1004C1A18;
  v26[4] = self;
  if (([(AWDServerConnection *)awdServerConnection registerQueriableMetric:8978433 callback:v26]& 1) != 0)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : registered callback for AWDMetricId_Flagstone_EngagementMetrics", buf, 2u);
    }
  }

  else
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [AWDMetricsServerInterface setupAWDMetricsServerConnections];
    }
  }

  v5 = self->_awdServerConnection;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_7;
  v24[3] = &unk_1004C1A18;
  v24[4] = self;
  if (([(AWDServerConnection *)v5 registerQueriableMetric:8978434 callback:v24]& 1) != 0)
  {
    v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : registered callback for AWDMetricId_Flagstone_NetworkRadioMetrics", buf, 2u);
    }
  }

  else
  {
    v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AWDMetricsServerInterface setupAWDMetricsServerConnections];
    }
  }

  v7 = self->_awdServerConnection;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_9;
  v23[3] = &unk_1004C1A18;
  v23[4] = self;
  if (([(AWDServerConnection *)v7 registerQueriableMetric:8978435 callback:v23]& 1) != 0)
  {
    v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : registered callback for AWDMetricId_Flagstone_MACMetrics", buf, 2u);
    }
  }

  else
  {
    v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AWDMetricsServerInterface setupAWDMetricsServerConnections];
    }
  }

  v9 = self->_awdServerConnection;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_11;
  v22[3] = &unk_1004C1A18;
  v22[4] = self;
  if (([(AWDServerConnection *)v9 registerQueriableMetric:8978436 callback:v22]& 1) != 0)
  {
    v10 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : registered callback for AWDMetricId_Flagstone_CoexMetrics", buf, 2u);
    }
  }

  else
  {
    v10 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AWDMetricsServerInterface setupAWDMetricsServerConnections];
    }
  }

  v11 = self->_awdServerConnection;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_13;
  v21[3] = &unk_1004C1A18;
  v21[4] = self;
  if (([(AWDServerConnection *)v11 registerQueriableMetric:8978437 callback:v21]& 1) != 0)
  {
    v12 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : registered callback for AWDMetricId_Flagstone_IPMLEMetrics", buf, 2u);
    }
  }

  else
  {
    v12 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AWDMetricsServerInterface setupAWDMetricsServerConnections];
    }
  }

  v13 = self->_awdServerConnection;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_15;
  v20[3] = &unk_1004C1A18;
  v20[4] = self;
  if (([(AWDServerConnection *)v13 registerQueriableMetric:8978439 callback:v20]& 1) != 0)
  {
    v14 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : registered callback for AWDMetricId_Flagstone_PowerMetrics", buf, 2u);
    }
  }

  else
  {
    v14 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AWDMetricsServerInterface setupAWDMetricsServerConnections];
    }
  }

  v15 = self->_awdServerConnection;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_17;
  v19[3] = &unk_1004C1A18;
  v19[4] = self;
  v16 = [(AWDServerConnection *)v15 registerQueriableMetric:8978440 callback:v19];
  if (v16)
  {
    v17 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : registered callback for AWDMetricId_Flagstone_TopologyMetrics", buf, 2u);
    }
  }

  else
  {
    v17 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AWDMetricsServerInterface setupAWDMetricsServerConnections];
    }
  }

  return v16;
}

void __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke(uint64_t a1, int a2)
{
  v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : setupAWDMetricsServerConnections - incoming metricId = %d", buf, 8u);
  }

  v5 = [*(a1 + 32) msgQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_4;
  v6[3] = &unk_1004C19F0;
  v6[4] = *(a1 + 32);
  v7 = a2;
  dispatch_async(v5, v6);
}

void __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_7(uint64_t a1, int a2)
{
  v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : setupAWDMetricsServerConnections - incoming metricId = %d", buf, 8u);
  }

  v5 = [*(a1 + 32) msgQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_8;
  v6[3] = &unk_1004C19F0;
  v6[4] = *(a1 + 32);
  v7 = a2;
  dispatch_async(v5, v6);
}

void __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_9(uint64_t a1, int a2)
{
  v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : setupAWDMetricsServerConnections - incoming metricId = %d", buf, 8u);
  }

  v5 = [*(a1 + 32) msgQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_10;
  v6[3] = &unk_1004C19F0;
  v6[4] = *(a1 + 32);
  v7 = a2;
  dispatch_async(v5, v6);
}

void __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_11(uint64_t a1, int a2)
{
  v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : setupAWDMetricsServerConnections - incoming metricId = %d", buf, 8u);
  }

  v5 = [*(a1 + 32) msgQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_12;
  v6[3] = &unk_1004C19F0;
  v6[4] = *(a1 + 32);
  v7 = a2;
  dispatch_async(v5, v6);
}

void __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_13(uint64_t a1, int a2)
{
  v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : setupAWDMetricsServerConnections - incoming metricId = %d", buf, 8u);
  }

  v5 = [*(a1 + 32) msgQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_14;
  v6[3] = &unk_1004C19F0;
  v6[4] = *(a1 + 32);
  v7 = a2;
  dispatch_async(v5, v6);
}

void __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_15(uint64_t a1, int a2)
{
  v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : setupAWDMetricsServerConnections - incoming metricId = %d", buf, 8u);
  }

  v5 = [*(a1 + 32) msgQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_16;
  v6[3] = &unk_1004C19F0;
  v6[4] = *(a1 + 32);
  v7 = a2;
  dispatch_async(v5, v6);
}

void __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_17(uint64_t a1, int a2)
{
  v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : setupAWDMetricsServerConnections - incoming metricId = %d", buf, 8u);
  }

  v5 = [*(a1 + 32) msgQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __61__AWDMetricsServerInterface_setupAWDMetricsServerConnections__block_invoke_18;
  v6[3] = &unk_1004C19F0;
  v6[4] = *(a1 + 32);
  v7 = a2;
  dispatch_async(v5, v6);
}

- (void)handleMetricQuery:(unsigned int)query
{
  v3 = *&query;
  if (query != 8978440 || (AWDMetricsClient_IsModified_Topology() & 1) != 0)
  {
    awdServerConnection = [(AWDMetricsServerInterface *)self awdServerConnection];
    v6 = [awdServerConnection newMetricContainerWithIdentifier:v3];

    if (!v6)
    {
      v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(AWDMetricsServerInterface *)v3 handleMetricQuery:v7, v8, v9, v10, v11, v12, v13];
      }

      goto LABEL_46;
    }

    v7 = 0;
    if (v3 <= 8978435)
    {
      if (v3 == 8978433 || v3 == 8978434 || v3 == 8978435)
      {
LABEL_24:
        v7 = objc_opt_new();
        if (!v7)
        {
          goto LABEL_46;
        }

        goto LABEL_25;
      }
    }

    else if (v3 > 8978438)
    {
      if (v3 == 8978439)
      {
        goto LABEL_24;
      }

      if (v3 == 8978440)
      {
        v7 = objc_opt_new();
      }
    }

    else if (v3 == 8978436 || v3 == 8978437)
    {
      goto LABEL_24;
    }

    v14 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(AWDMetricsServerInterface *)v3 handleMetricQuery:v14, v15, v16, v17, v18, v19, v20];
    }

    if (!v7)
    {
      goto LABEL_46;
    }

LABEL_25:
    if (v3 > 8978435)
    {
      switch(v3)
      {
        case 0x890004:
          AWDMetricsClient_GetMetrics_Coex(v7);
        case 0x890005:
          AWDMetricsClient_GetMetrics_IPMLE(v7);
        case 0x890007:
          AWDMetricsClient_GetMetrics_Power(v7);
          AWDMetricsClient_ResetMetrics_Power();
          [v6 setMetric:v7];
          awdServerConnection2 = [(AWDMetricsServerInterface *)self awdServerConnection];
          v22 = [awdServerConnection2 submitMetric:v6];

          if (g_is_loggingEnabled == 1)
          {
            AWDMetricsLogger_PowerMetrics(v7);
          }

          goto LABEL_42;
      }
    }

    else
    {
      switch(v3)
      {
        case 0x890001:
          AWDMetricsClient_GetMetrics_Engagement(v7);
        case 0x890002:
          AWDMetricsClient_GetMetrics_NetworkRadio(v7);
        case 0x890003:
          AWDMetricsClient_GetMetrics_MAC(v7);
      }
    }

    if (v3 == 8978440)
    {
      AWDMetricsClient_GetMetrics_Topology(v7);
      AWDMetricsClient_ResetMetrics_Topology();
      [v6 setMetric:v7];
      awdServerConnection3 = [(AWDMetricsServerInterface *)self awdServerConnection];
      v22 = [awdServerConnection3 submitMetric:v6];

      if (g_is_loggingEnabled == 1)
      {
        AWDMetricsLogger_TopologyMetrics(v7);
      }

LABEL_42:
      if ((v22 & 1) == 0)
      {
        v24 = log_get_logging_obg("com.apple.wpantund.awd", "default");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [(AWDMetricsServerInterface *)v3 handleMetricQuery:v24, v25, v26, v27, v28, v29, v30];
        }
      }
    }

LABEL_46:

    goto LABEL_47;
  }

  v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v31[0] = 67109120;
    v31[1] = 8978440;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : handleMetricQuery with metricId %d return here as topology not modified", v31, 8u);
  }

LABEL_47:
}

- (void)handleMetricQuery:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_2_2(&_mh_execute_header, a2, a3, "AWDMetricsServerInterface : handleMetricQuery with unknown metricId %d", a5, a6, a7, a8, v8);
}

- (void)handleMetricQuery:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_2_2(&_mh_execute_header, a2, a3, "AWDMetricsServerInterface : ERROR submitMetric with metricId %d", a5, a6, a7, a8, v8);
}

- (void)handleMetricQuery:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_2_2(&_mh_execute_header, a2, a3, "AWDMetricsServerInterface : handleMetricQuery unable to create metric container for metricId %d", a5, a6, a7, a8, v8);
}

@end