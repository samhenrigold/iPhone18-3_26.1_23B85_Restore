@interface ThreadNetworkManagerInstance(RCP2CAMetrics_extension)
- (void)generateAPLifeInfoMetrics;
- (void)getMetricsBetweenRoleChanges;
- (void)noteBTWIFILoadOnThreadStart;
- (void)resetNetworkRadioHistogramMetrics;
- (void)updateThreadSessionStartTime;
@end

@implementation ThreadNetworkManagerInstance(RCP2CAMetrics_extension)

- (void)updateThreadSessionStartTime
{
  v1 = 136315394;
  v2 = "TNMRCP2:CA:";
  v3 = 2048;
  v4 = *&threadSessionMetrics[0];
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%sthreadStartTime:%lld", &v1, 0x16u);
}

- (void)noteBTWIFILoadOnThreadStart
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "TNMRCP2:CA:";
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, self, a3, " %sCouldn't get BTWifiLoadinfo as input is Null", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)generateThreadSessionEvent:()RCP2CAMetrics_extension .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ThreadNetworkManagerInstance(RCP2CAMetrics_extension) generateThreadSessionEvent:]";
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, a1, a3, "%s unexpected event.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)generateThreadSessionEvent:()RCP2CAMetrics_extension .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "TNMRCP2:CA:";
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, a1, a3, "%scoex Task Period ValMap is empty.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)resetMetrics:()RCP2CAMetrics_extension .cold.1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "TNMRCP2:CA:";
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%sFail to reset %s", buf, 0x16u);
}

- (void)getMetricsBetweenRoleChanges
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ThreadNetworkManagerInstance(RCP2CAMetrics_extension) getMetricsBetweenRoleChanges]";
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, self, a3, "%s mThreadInfoBetweenRoles.fromStateToState string length less than or equal to zero.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)resetNetworkRadioHistogramMetrics
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "TNMRCP2:CA:";
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, self, a3, "%sFailed to reset kWPANTUNDVendor_Neighbor_RSSI_Histogram stats", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getBTWifiLoadInfoEvent:()RCP2CAMetrics_extension .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "TNMRCP2:CA:";
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, a1, a3, "%sFailed to get thread channel", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)calculateCoexTaskPeriod:()RCP2CAMetrics_extension .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 134218496;
  v3 = *&threadSessionMetrics[0];
  v4 = 2048;
  v5 = qword_1004E5CB8;
  v6 = 2048;
  v7 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "threadStartTime = %lld, prevCoexChangeTime = %lld, currentCoexChangeTime = %lld.", &v2, 0x20u);
}

- (void)calculateCoexTaskPeriod:()RCP2CAMetrics_extension .cold.2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "TNMRCP2:CA:";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%sValMap key is NULL.", buf, 0xCu);
}

- (void)calculateCoexTaskPeriod:()RCP2CAMetrics_extension .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "TNMRCP2:CA:";
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, a1, a3, "%sPrevious coex task valmap is empty.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)calculateCoexTaskPeriod:()RCP2CAMetrics_extension .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "TNMRCP2:CA:";
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, a1, a3, "%sCurrent system time is incorrect which results in wrong time difference being calculated for Coex task period calculation.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)updateThreadSessionStopReason:()RCP2CAMetrics_extension .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "TNMRCP2:CA:";
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, a1, a3, "%sInput string sessionStopReason is NULL", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getThreadSessionRejectInfoMetrics:()RCP2CAMetrics_extension .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "TNMRCP2:CA:";
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, a1, a3, "%sNSMutableDictionary is NULL", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)generateAPLifeInfoMetrics
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "TNMRCP2:CA:";
  OUTLINED_FUNCTION_0_3(&_mh_execute_header, self, a3, "%sError Time diff between Application processor on and off is zero.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end