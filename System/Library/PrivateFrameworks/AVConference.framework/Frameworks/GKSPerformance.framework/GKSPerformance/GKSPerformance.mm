void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

double machTimeScale(uint64_t a1, uint64_t a2)
{
  if ((_MergedGlobals & 1) == 0)
  {
    machTimeScale_cold_1();
  }

  return *&qword_27E2DC668;
}

uint64_t GKSFacetimeSubmitMetric(int a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "GKSFacetimeSubmitMetric";
      v9 = 1024;
      v10 = 2330;
      v11 = 1024;
      v12 = a1;
      _os_log_impl(&dword_23D482000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AWDFTLog: Metric Id:0x%x ignored", &v5, 0x22u);
    }
  }

  return 0;
}

double machTimeScale_cold_1()
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  qword_27E2DC668 = *&result;
  __dmb(0xBu);
  _MergedGlobals = 1;
  return result;
}