void ParseSTUNMessage_cold_9()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNAddr_cold_1()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNAddr_cold_2()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNAddr_cold_3()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNAddr_cold_4()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNU32_cold_1()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void ParseSTUNU64_cold_1()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_3_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_9_1())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12_1();
}

void GetLocalIFFunctionalTypeForBoundSocket_cold_1()
{
  __error();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_7_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void GetLocalIFIndexForBoundSocket_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void GetLocalIFIndexForBoundSocket_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void GetLocalIFIndexForBoundSocket_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = 136317186;
  v3 = " IFLIST_DISALLOW_2G";
  v8 = a1;
  v9 = 2080;
  v10 = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
  v4 = &unk_23D4C9CFB;
  v11 = 1024;
  v12 = 691;
  if ((a2 & 4) == 0)
  {
    v3 = &unk_23D4C9CFB;
  }

  v13 = 1024;
  v14 = 691;
  if (a2)
  {
    v5 = " IFLIST_EXCLUDE_CELL";
  }

  else
  {
    v5 = &unk_23D4C9CFB;
  }

  v15 = 2080;
  v16 = v3;
  if ((a2 & 2) != 0)
  {
    v6 = " IFLIST_CELL_ONLY";
  }

  else
  {
    v6 = &unk_23D4C9CFB;
  }

  v17 = 2080;
  v18 = v5;
  if ((a2 & 8) != 0)
  {
    v4 = " IFLIST_INCLUDE_LINKLOCAL";
  }

  v19 = 2080;
  v20 = v6;
  v21 = 2080;
  v22 = v4;
  v23 = 1024;
  v24 = a2;
  _os_log_debug_impl(&dword_23D497000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/IPAddr.c:%d: interfaceFilterOptions =%s%s%s%s 0x%X", &v7, 0x50u);
}

void GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_2()
{
  OUTLINED_FUNCTION_7_1();
  __error();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_7_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_7()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(&dword_23D497000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Interfaces count=%d.", v1, 0x22u);
}

void GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_8()
{
  OUTLINED_FUNCTION_7_1();
  __error();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_7_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void IsAWDLInterface_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void IsBluetoothInterface_cold_1(const void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_10_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  CFRelease(a1);
}

void IsBluetoothInterface_cold_2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_10_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void IsBluetoothInterface_cold_3(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_10_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void GetLocalIFIndexForDstIPPort_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void reliableSysctl_cold_1()
{
  OUTLINED_FUNCTION_7_1();
  __error();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_7_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void reliableSysctl_cold_2()
{
  OUTLINED_FUNCTION_7_1();
  __error();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_7_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void reliableSysctl_cold_3(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_10_1();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = -1;
}

void reliableSysctl_cold_4(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_10_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void reliableSysctl_cold_5(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_10_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void reliableSysctl_cold_6(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_10_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void IsInterfaceRoutable_cold_1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_10_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCCTServiceMonitor_GetIsInHomeCountry_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d Device does not have cellular baseband", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetIsInHomeCountry_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d dataStatus is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetIsInHomeCountry_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d isInHomeCountryOut is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetDataIndicatorStatus_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d Device does not have cellular baseband", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetDataIndicatorStatus_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d dataStatus is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetDataIndicatorStatus_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d dataIndicatorStatusOut is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetDataIndicatorStatusOverride_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d Device does not have cellular baseband", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetDataIndicatorStatusOverride_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d dataStatus is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetDataIndicatorStatusOverride_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d dataIndicatorStatusOut is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetRadioAccessTechnology_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d Device does not have cellular baseband", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetRadioAccessTechnology_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d dataStatus is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetRadioAccessTechnology_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d radioAccessTechnologyOut is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_CopyConnectionStatusInterfaceName_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d Device does not have cellular baseband", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_CopyConnectionStatusInterfaceName_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d connectionStatus is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_CopyConnectionStatusInterfaceName_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d interfaceNameOut is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetSignalStrength_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d Device does not have cellular baseband", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetSignalStrength_cold_2()
{
  v4 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x277CE5818];
    v1 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_4_3();
        OUTLINED_FUNCTION_5_0();
        v3 = 283;
        _os_log_impl(&dword_23D497000, v0, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cellular baseband is not active", v2, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      v3 = 283;
      _os_log_debug_impl(&dword_23D497000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Cellular baseband is not active", v2, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetSignalStrength_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d signalStrength is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetSignalStrength_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d Connection status not available", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetSignalStrength_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d maxDisplayBars is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetSignalStrength_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d displayBars is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}

void VCCTServiceMonitor_GetSignalStrength_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_8_1())
    {
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_3_2(&dword_23D497000, v0, v1, " [%s] %s:%d bars is nil", v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2_2();
}