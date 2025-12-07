uint64_t SNATMAP_MakeRequest(unsigned int a1, unsigned int a2, _DWORD *a3, int *a4)
{
  result = 1;
  if (a3 && a4)
  {
    if (*a4 >= 16)
    {
      v9 = arc4random();
      result = 0;
      *a3 = 0x1000000;
      a3[1] = bswap32(v9 & 0x7FFFFFFF);
      a3[2] = bswap32(a1);
      a3[3] = (bswap32(a2) >> 16) | 0xAAAA0000;
      *a4 = 16;
    }

    else
    {
      return 8;
    }
  }

  return result;
}

uint64_t ProcessSNATMAPResponse(uint64_t a1, int a2, _DWORD *a3, _WORD *a4)
{
  result = 1;
  if (a1 && a2 == 16)
  {
    v6 = *a1;
    if (*a1 == 0x2000000)
    {
      v7 = *(a1 + 12);
      if (a3)
      {
        v8 = ~*(a1 + 8);
        if (*a3 != v8)
        {
          *a3 = bswap32(v8);
        }
      }

      if (a4 && *a4 != ~v7)
      {
        result = 0;
        *a4 = bswap32(~v7) >> 16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessSNATMAPResponse_cold_1(v9, bswap32(v6), v10);
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t GetSNATMAPServer(_DWORD *a1, __int16 *a2)
{
  if (a1)
  {
    *a1 = _gConfiguredSMIP;
  }

  if (a2)
  {
    *a2 = _gConfiguredSMPort;
  }

  Class = objc_getClass("GKSConnectivitySettings");
  v5 = [Class getUid("getCachedIPPort")];
  if (v5)
  {
    if (a1)
    {
      *a1 = *(v5 + 5);
    }

    v6 = *(v5 + 18);
    if (a2)
    {
      *a2 = v6;
    }

    _gConfiguredSMIP = *(v5 + 5);
    _gConfiguredSMPort = v6;
    _gSMIPWasConfigured = 1;
    free(v5);
  }

  else if ((_gSMIPWasConfigured & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      GetSNATMAPServer_cold_1(v7, v8);
    }
  }

  return 0;
}

BOOL SNATMAP_IsEqualNonce(uint64_t a1, unint64_t a2, int a3)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 8)
    {
      return *(a1 + 4) == a3;
    }
  }

  return result;
}

uint64_t SNATMAP_GetNonceValue(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  result = 1;
  if (a2 >= 8 && a1)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a1 + 4);
    }
  }

  return result;
}

void ProcessSNATMAPResponse_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = 136316162;
  v4 = a1;
  v5 = 2080;
  v6 = "ProcessSNATMAPResponse";
  v7 = 1024;
  v8 = 100;
  v9 = 1024;
  v10 = 100;
  v11 = 1024;
  v12 = a2;
  _os_log_error_impl(&dword_23D5E6000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/SNATMAP.subproj/Sources/snatmap.c:%d: incorrect SNATMAP message type(%d)", &v3, 0x28u);
}

void GetSNATMAPServer_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "GetSNATMAPServer";
  v6 = 1024;
  v7 = 142;
  _os_log_error_impl(&dword_23D5E6000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d We don't have a snatmap server...", &v2, 0x1Cu);
}