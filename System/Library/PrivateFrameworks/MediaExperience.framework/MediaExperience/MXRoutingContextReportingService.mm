@interface MXRoutingContextReportingService
- (MXRoutingContextReportingService)initWithModificationMetrics:(id)metrics useMockService:(BOOL)service;
- (void)dealloc;
@end

@implementation MXRoutingContextReportingService

- (MXRoutingContextReportingService)initWithModificationMetrics:(id)metrics useMockService:(BOOL)service
{
  v17 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = MXRoutingContextReportingService;
  v5 = [(MXRoutingContextReportingService *)&v16 init:metrics];
  metricsCopy = metrics;
  v5->_modificationMetrics = metricsCopy;
  v7 = FigEndpointDescriptorUtility_AreRouteIDsTheSame([(MXRoutingContextModificationMetrics *)metricsCopy currentRouteDescriptors], [(MXRoutingContextModificationMetrics *)v5->_modificationMetrics previousRouteDescriptors]);
  v8 = FigEndpointDescriptorUtility_AreRouteDescriptorsOfTypeAirPlay([(MXRoutingContextModificationMetrics *)v5->_modificationMetrics currentRouteDescriptors]);
  routeChangeFailed = [(MXRoutingContextModificationMetrics *)v5->_modificationMetrics routeChangeFailed];
  if (MX_FeatureFlags_IsRoutingContextReportingEnabled(routeChangeFailed, v10))
  {
    mReportingServiceImpl = [[MXRoutingContextReportingRTCServiceImpl alloc] initWithFigEndpointType:[(MXRoutingContextModificationMetrics *)v5->_modificationMetrics figEndpointType] routeChangeSucceeded:routeChangeFailed == 0];
  }

  else
  {
    mReportingServiceImpl = 0;
  }

  v5->mReportingServiceImpl = mReportingServiceImpl;
  if (routeChangeFailed)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (v7)
    {
      v13 = 1;
    }

    else
    {
      v13 = v8 == 0;
    }

    if (v13)
    {
      if (dword_1EB75DE40)
      {
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        mReportingServiceImpl = v5->mReportingServiceImpl;
      }

      v5->mReportingServiceImpl = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MXRoutingContextReportingService;
  [(MXRoutingContextReportingService *)&v3 dealloc];
}

@end