void OSPFParse_ParsePacketHeader_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_7_1();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }
  }

  *a3 = a1;
  OUTLINED_FUNCTION_21_0();
}

void OSPFParse_ParsePacketHeader_cold_2()
{
  OUTLINED_FUNCTION_10_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_7_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *v0 = v1;
  OUTLINED_FUNCTION_21_0();
}

void OSPFParse_ParsePacketHeader_cold_3()
{
  OUTLINED_FUNCTION_10_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_7_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *v0 = v1;
  OUTLINED_FUNCTION_21_0();
}

void OSPFParse_ParsePacketHeader_cold_4(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_5_0();
      v6 = 1103;
      v7 = v3;
      v8 = a1;
      OUTLINED_FUNCTION_20_1(&dword_24E50C000, v2, v4, " [%s] %s:%d bufferLength=%d is too small", v5);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void OSPFParse_ParsePacketHeader_cold_5()
{
  v5 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v3 = 136315906;
      v4 = v0;
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_20_1(&dword_24E50C000, v1, v2, " [%s] %s:%d Bad destination count=%d", &v3);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void OSPFParse_ParsePacketHeader_cold_6(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_5_0();
      v6 = 1082;
      v7 = v3;
      v8 = a1;
      OUTLINED_FUNCTION_20_1(&dword_24E50C000, v2, v4, " [%s] %s:%d bufferLength=%d is too small for header", v5);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void OSPFParse_ParsePacketHeader_cold_7()
{
  v5 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_10();
      v4 = 1081;
      _os_log_error_impl(&dword_24E50C000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is NULL", &v2, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void _OSPFParse_ParseExtractOptions_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v5 = v0;
  OUTLINED_FUNCTION_5_0();
  v6 = 1203;
  v7 = v1;
  v8 = 1203;
  OUTLINED_FUNCTION_20_1(&dword_24E50C000, v2, v3, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/OSPF.c:%d: malloc failed", v4);
}

void OSPFParse_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = 136316162;
  v5 = a1;
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  v6 = 1577;
  v7 = v1;
  v8 = 12;
  v9 = v1;
  v10 = v2;
  _os_log_error_impl(&dword_24E50C000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d OSPF version mismatch: expected %d, got %d\n", &v4, 0x28u);
}

void _OSPFParse_ParsePacketHeartbeat_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d payload=NULL", v2, v3, v4, v5);
}

void _OSPFParse_ParsePacketDD_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d payload=NULL", v2, v3, v4, v5);
}

void _OSPFParse_ParsePacketLSA_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d payload=NULL", v2, v3, v4, v5);
}

void _OSPFParse_ParsePacketLSAAck_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d payload=NULL", v2, v3, v4, v5);
}

void GCK_BWE_CalcRxEstimate_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void GCK_BWE_CalcRxEstimate_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void GCK_BWE_CalcRxEstimate_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void GCK_BWE_CalcRxEstimate_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void BWEstCheckIfLargeFrameNeeded_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void GCK_BWE_TrackLargeFrameState_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void GCK_BWE_CreateHandle_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  v3 = 2049;
  v4 = v0;
  v5 = 2049;
  _os_log_error_impl(&dword_24E50C000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/BWE/BWE_GCK.c:%d: GCK_BWE_CreateHandle failed", v2, 0x22u);
}

void GCK_BWE_CreateHandle_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5_2();
  _os_log_fault_impl(&dword_24E50C000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/BWE/BWE_GCK.c:%d: calloc(%d) failed", v1, 0x28u);
}

void GCK_BWE_CreateHandle_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5_2();
  _os_log_error_impl(&dword_24E50C000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/BWE/BWE_GCK.c:%d: calloc(%d) failed", v1, 0x28u);
}

double machTimeScale_cold_1()
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  qword_27F20E558 = *&result;
  __dmb(0xBu);
  _MergedGlobals_0 = 1;
  return result;
}

void gkDiscoveryBrowseCallback_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d browse callback called with error [%d] - ignoring.", v2, v3, v4, v5);
}

void gkDiscoveryBrowseCallback_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d gkDiscovery: failed to generate fullname, invalid inputs", v2, v3, v4, v5);
}

void gkDiscoveryBrowseCallback_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d service query record failed with error [%d]", v2, v3, v4, v5);
}

void gkDiscoveryBrowseCallback_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d set dispatch queue failed with error [%d]", v2, v3, v4, v5);
}

void gkDiscoveryBrowseCallback_cold_5()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d cannot resolve full name!", v2, v3, v4, v5);
}

void gkDiscoveryBrowseCallback_cold_6()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d context == NULL!", v2, v3, v4, v5);
}

void gkDiscoveryResolveCallback_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d getAddrCallback called with error [%d]", v2, v3, v4, v5);
}

void gkDiscoveryResolveCallback_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d set dispatch queue failed with error [%d]", v2, v3, v4, v5);
}

void gkDiscoveryResolveCallback_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d service get addr info failed with error [%d]", v2, v3, v4, v5);
}

void gkDiscoveryResolveCallback_cold_4()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d context == NULL!", v2, v3, v4, v5);
}

void gkDiscoveryRegisterCallback_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d discovery register callback called with error [%d]", v2, v3, v4, v5);
}

void gkDiscoveryTxtCallback_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d txtCallback called with error [%d]", v2, v3, v4, v5);
}

void gkDiscoveryTxtCallback_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d context == NULL!", v2, v3, v4, v5);
}

void gkDiscoveryGetAddrCallback_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d getAddrCallback called with error [%d]", v2, v3, v4, v5);
}

void gkDiscoveryGetAddrCallback_cold_2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d context == NULL!", v2, v3, v4, v5);
}

void CheckInHandleDebug()
{
    ;
  }
}

void CheckOutHandleDebug()
{
    ;
  }
}

void CreateHandle()
{
    ;
  }
}

void GKSConnectivitySettings_GetICETimeout()
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}