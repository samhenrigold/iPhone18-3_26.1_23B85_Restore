uint64_t H16ISP::H16ISPDevice::ISP_RegisterFirmwareWorkProcessor(uint64_t a1, _DWORD *inputStruct)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  v5 = 0u;
  return IOConnectCallAsyncMethod(v2, 0x28u, inputStruct[4], &reference, 8u, 0, 0, inputStruct, 0x18uLL, 0, 0, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_UnregisterFirmwareWorkProcessor(H16ISP::H16ISPDevice *this, mach_port_t wake_port)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v5 = 0u;
  return IOConnectCallAsyncMethod(v2, 0x29u, wake_port, &reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetFirmwareWorkProcessorItem(uint64_t a1, mach_port_t wake_port, uint64_t a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a3;
  input[1] = 2024;
  v6 = 0u;
  return IOConnectCallAsyncMethod(v3, 0x2Au, wake_port, &reference, 8u, input, 2u, 0, 0, 0, 0, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_CompleteFirmwareWorkProcessorItem(uint64_t a1, mach_port_t wake_port, uint64_t a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a3;
  input[1] = 2024;
  v6 = 0u;
  return IOConnectCallAsyncMethod(v3, 0x2Bu, wake_port, &reference, 8u, input, 2u, 0, 0, 0, 0, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_ReleaseFirmwareWorkProcessorBuffers(H16ISP::H16ISPDevice *this, mach_port_t wake_port)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v5 = 0u;
  return IOConnectCallAsyncMethod(v2, 0x2Eu, wake_port, &reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_ReleaseChannel(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x31u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_EnableS2R(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x42u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_EnableFirmwareRecovery(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x32u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetPearlStatistics(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 3028;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x3Du, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_GetPowerStatistics(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 40;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x4Cu, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_GetToFSACAnalytics(uint64_t a1, unsigned int a2, void *outputStruct)
{
  input[1] = *MEMORY[0x277D85DE8];
  result = 3758097084;
  v5 = *(a1 + 4344);
  if (v5)
  {
    if (outputStruct)
    {
      v6 = 584;
      input[0] = a2;
      return IOConnectCallMethod(v5, 0x4Du, input, 1u, 0, 0, 0, 0, outputStruct, &v6);
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetCamStreamingStatistics(uint64_t a1, unsigned int a2, void *outputStruct)
{
  input[1] = *MEMORY[0x277D85DE8];
  v5 = 8;
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  return IOConnectCallMethod(v3, 0x63u, input, 1u, 0, 0, 0, 0, outputStruct, &v5);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetFWErrorStatistics(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 16;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x64u, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_MemoryDiagnostics(H16ISP::H16ISPDevice *this)
{
  v1 = *(this + 1086);
  if (v1)
  {
    return IOConnectCallScalarMethod(v1, 0x3Eu, 0, 0, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_EnableMOVReplay(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 353;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_DestroyMultiCameraSession(H16ISP::H16ISPDevice *this)
{
  v1 = *(this + 1086);
  if (v1)
  {
    return IOConnectCallScalarMethod(v1, 0x45u, 0, 0, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_IsFirmwareLoaded(H16ISP::H16ISPDevice *this)
{
  output = 0;
  outputCnt = 1;
  result = *(this + 1086);
  if (result)
  {
    return !IOConnectCallScalarMethod(result, 0x39u, 0, 0, &output, &outputCnt) && output == 1;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetSensorConfigInfo(uint64_t a1, unsigned int a2, unsigned int a3, void *outputStruct)
{
  input[2] = *MEMORY[0x277D85DE8];
  v6 = 212;
  v4 = *(a1 + 4344);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallMethod(v4, 0x1Cu, input, 2u, 0, 0, 0, 0, outputStruct, &v6);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetDriverLoggingFlags(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x10u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetFullStatsMode(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x16u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetFirmwareBootArg(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x43u, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_CreateClientLoggingSession(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x1Eu, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_TerminateClientLoggingSession(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x1Fu, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_ShowSharedMemoryAllocations(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  input = a2;
  v2 = *(this + 1086);
  if (v2)
  {
    return IOConnectCallScalarMethod(v2, 0x11u, &input, 1u, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_SetBestMIPIFrequencyIndex(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x1Du, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetBestChargePumpFrequencyIndex(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x2Du, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetBestPixClockFrequencyIndex(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x3Cu, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_InstallFakeSensor(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x2Fu, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_PPMAdmissionCheck(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, _DWORD *a5)
{
  input[3] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 4344);
  if (!v5)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v5, 0x34u, input, 3u, &output, &outputCnt);
  *a5 = output;
  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_PPMActivityStopped(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4344);
  if (!v4)
  {
    return 3758097084;
  }

  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  return IOConnectCallScalarMethod(v4, 0x35u, v6, 3u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetSavagePubKey(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v15[94] = *MEMORY[0x277D85DE8];
  if (*a4 != 128)
  {
    return 3758097090;
  }

  bzero(v11, 0x304uLL);
  v12 = 1308;
  v13 = a2;
  __n = 0x8000000000;
  v8 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x304u, 0, 0xFFFFFFFF);
  if (!v8)
  {
    v9 = BYTE4(__n);
    memcpy(a3, v15, HIDWORD(__n));
    *a4 = v9;
  }

  return v8;
}

uint64_t H16ISP::H16ISPDevice::ISP_SetHostPubKey(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3, int a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a4 != 128)
  {
    return 3758097090;
  }

  bzero(v14, 0x304uLL);
  v17 = 0x8000000003;
  v9 = *(a3 + 5);
  v22 = *(a3 + 4);
  v23 = v9;
  v10 = *(a3 + 7);
  v24 = *(a3 + 6);
  v25 = v10;
  v11 = *(a3 + 1);
  v18 = *a3;
  v19 = v11;
  v12 = *(a3 + 3);
  v20 = *(a3 + 2);
  v15 = 1308;
  v16 = a2;
  v26 = a5;
  v21 = v12;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v14, 0x304u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_YonkersFusing(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned __int8 *a3, unsigned int a4, unsigned int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = 3758097084;
  if (*(this + 1086))
  {
    v11 = fopen("/usr/local/share/firmware/isp/Yonkers/YonkersPatchOverride.DAT", "rb");
    if (v11)
    {
      v12 = v11;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Trying to use override YonkersPatchOverride.DAT file\n", buf, 2u);
      }

      fseeko(v12, 0, 2);
      ftello(v12);
      fseeko(v12, 0, 0);
      operator new[]();
    }

    v16 = a2;
    if (a3 && a4)
    {
      *buf = a3;
      v15 = a4;
      if (H16ISP::H16ISPDevice::ISP_LoadDataFile(this, a2, a3, a4, a5) != -536870212)
      {
        return IOConnectCallScalarMethod(*(this + 1086), 0x41u, buf, 3u, 0, 0);
      }
    }

    else
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR) && (H16ISP::H16ISPDevice::ISP_YonkersFusing(0) & 1) != 0)
      {
        MEMORY[0x22AA55B40](0, 0x1000C8077774924);
      }
    }
  }

  return v5;
}

uint64_t H16ISP::H16ISPDevice::ISP_LoadDataFile(H16ISP::H16ISPDevice *this, unsigned int a2, const unsigned __int8 *a3, unsigned int a4, unsigned int a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = *(this + 1086);
  if (v7)
  {
    v11 = a3;
    v12 = a4;
    v13 = a2;
    v14 = a5;
    v8 = IOConnectCallScalarMethod(v7, 0x25u, &v11, 4u, 0, 0);
  }

  else
  {
    v8 = 3758097084;
  }

  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11) = 67109890;
    HIDWORD(v11) = a2 & 0x7FFFFFFF;
    v9 = "false";
    LOWORD(v12) = 1024;
    if ((a2 & 0x80000000) != 0)
    {
      v9 = "true";
    }

    *(&v12 + 2) = a5;
    HIWORD(v12) = 2080;
    v13 = v9;
    LOWORD(v14) = 1024;
    *(&v14 + 2) = v8;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Load data file: channel: %d, type: %d, isEarlyBootDataFile: %s, status: %08x\n\n", &v11, 0x1Eu);
  }

  return v8;
}

uint64_t H16ISP::H16ISPDevice::ISP_LoadIspAneAFPPFile(H16ISP::H16ISPDevice *this, const unsigned __int8 *a2, unsigned int a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (v3)
  {
    *v6 = a2;
    *&v6[8] = a3;
    v4 = IOConnectCallScalarMethod(v3, 0x62u, v6, 2u, 0, 0);
  }

  else
  {
    v4 = 3758097084;
  }

  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 136315394;
    *&v6[4] = "ISP_LoadIspAneAFPPFile";
    *&v6[12] = 1024;
    *&v6[14] = v4;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - status: %08x\n", v6, 0x12u);
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::ISP_SavageFusing(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned __int8 *a3, unsigned int a4, unsigned int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = 3758097084;
  if (*(this + 1086))
  {
    v11 = fopen("/usr/local/share/firmware/isp/Savage/SavagePatchOverride.DAT", "rb");
    if (v11)
    {
      v12 = v11;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Trying to use SavagePatchOverride.DAT file\n", buf, 2u);
      }

      fseeko(v12, 0, 2);
      ftello(v12);
      fseeko(v12, 0, 0);
      operator new[]();
    }

    v16 = a2;
    if (a3 && a4)
    {
      *buf = a3;
      v15 = a4;
      if (H16ISP::H16ISPDevice::ISP_LoadDataFile(this, a2, a3, a4, a5) != -536870212)
      {
        return IOConnectCallScalarMethod(*(this + 1086), 2u, buf, 3u, 0, 0);
      }
    }

    else
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR) && (H16ISP::H16ISPDevice::ISP_SavageFusing(0) & 1) != 0)
      {
        MEMORY[0x22AA55B40](0, 0x1000C8077774924);
      }
    }
  }

  return v5;
}

uint64_t H16ISP::H16ISPDevice::ISP_SavageAuth(H16ISP::H16ISPDevice *this, unsigned int a2, const unsigned __int8 *a3, uint64_t a4, unsigned int a5)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = *(this + 1086);
  if (v6)
  {
    if (a3 && a4)
    {
      *&buf = a3;
      *(&buf + 1) = a4;
      v22[0] = a2;
      v9 = IOConnectCallScalarMethod(v6, 0x6Du, v22, 1u, 0, 0);
      if (v9)
      {
        v10 = v9;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136315394;
          v18 = "ISP_SavageAuth";
          v19 = 1024;
          v20 = v10;
          v11 = MEMORY[0x277D86220];
          v12 = "%s: Savage Pre Auth failed, status = 0x%x\n";
LABEL_28:
          p_buf = &v17;
          v14 = 18;
          goto LABEL_29;
        }
      }

      else
      {
        DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(this, a2, buf, DWORD2(buf), a5);
        if (DataFile)
        {
          v10 = DataFile;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v17 = 136315394;
            v18 = "ISP_SavageAuth";
            v19 = 1024;
            v20 = v10;
            v11 = MEMORY[0x277D86220];
            v12 = "%s: Data file load failed, status = 0x%x\n";
            goto LABEL_28;
          }
        }

        else
        {
          v10 = IOConnectCallScalarMethod(*(this + 1086), 0x6Eu, v22, 1u, 0, 0);
          if (v10)
          {
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
            {
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v17 = 136315394;
              v18 = "ISP_SavageAuth";
              v19 = 1024;
              v20 = v10;
              v11 = MEMORY[0x277D86220];
              v12 = "%s: Savage Auth failed, status = 0x%x\n";
              goto LABEL_28;
            }
          }
        }
      }
    }

    else
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "ISP_SavageAuth";
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Invalid data file arguments\n", &buf, 0xCu);
      }

      return 3758096385;
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v10 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "ISP_SavageAuth";
      v11 = MEMORY[0x277D86220];
      v12 = "%s: Invalid connection\n";
      p_buf = &buf;
      v14 = 12;
LABEL_29:
      _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, v12, p_buf, v14);
    }
  }

  return v10;
}

uint64_t H16ISP::H16ISPDevice::CopyFileToBuffer(H16ISP::H16ISPDevice *this, const char *__filename, unsigned __int8 **a3, uint64_t *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = 3758097090;
  if (a3 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    v8 = fopen(__filename, "rb");
    if (v8)
    {
      v9 = v8;
      fseeko(v8, 0, 2);
      v10 = ftello(v9);
      fseeko(v9, 0, 0);
      v11 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
      if (v11)
      {
        v12 = v11;
        v13 = fread(v11, 1uLL, v10, v9);
        if (v13 == v10)
        {
          *a3 = v12;
          *a4 = v10;
          v14 = v10;
        }

        else
        {
          v14 = v13;
          free(v12);
        }
      }

      else
      {
        v14 = 0;
      }

      fclose(v9);
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      v4 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315906;
        v17 = "CopyFileToBuffer";
        v18 = 2080;
        v19 = __filename;
        v20 = 2048;
        v21 = v10;
        v22 = 2048;
        v23 = v14;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Trying to use %s: Size = %lld (== %lld ?);\n", &v16, 0x2Au);
        return 0;
      }
    }

    else
    {
      return 3758097136;
    }
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::SendSysConfigCalibrationDataByKey(H16ISP::H16ISPDevice *a1, uint64_t a2, const __CFDictionary *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  DataFile = 3758097090;
  BytePtr = 0;
  *v19 = 0;
  if (a2)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      if (*(a2 + 4) >= 1024)
      {
        v25 = 0u;
        v26 = 0u;
        memset(__str, 0, sizeof(__str));
        v8 = snprintf(__str, 0x40uLL, "%s%s.%s", "/usr/local/share/firmware/isp/", v5, "DAT");
        v9 = H16ISP::H16ISPDevice::CopyFileToBuffer(v8, __str, &BytePtr, v19);
        if (v9)
        {
          if (!a3)
          {
            goto LABEL_34;
          }

          Value = CFDictionaryGetValue(a3, *(a2 + 16));
          if (!Value)
          {
            goto LABEL_34;
          }

          v11 = CFRetain(Value);
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a2 + 8);
            *buf = 136315394;
            v21 = "SendSysConfigCalibrationDataByKey";
            v22 = 2080;
            v23 = v12;
            _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Using %s from unit info plist\n", buf, 0x16u);
          }

          if (!v11)
          {
LABEL_34:
            v13 = *MEMORY[0x277CD28A0];
            v14 = IOServiceNameMatching("AppleH16CamIn");
            MatchingService = IOServiceGetMatchingService(v13, v14);
            v11 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", *(a2 + 24), *MEMORY[0x277CBECE8], 3u);
            if (!v11)
            {
              return 3758097084;
            }
          }

          *v19 = CFDataGetLength(v11);
          BytePtr = CFDataGetBytePtr(v11);
        }

        else
        {
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v21 = __str;
            _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Loaded calibration file from override path: %s\n", buf, 0xCu);
          }

          v11 = 0;
        }

        DataFile = 0;
        if (BytePtr && *v19)
        {
          DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(a1, *a2 | 0x80000000, BytePtr, v19[0], *(a2 + 4));
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(a2 + 8);
            *__str = 136315906;
            *&__str[4] = "SendSysConfigCalibrationDataByKey";
            *&__str[12] = 2080;
            *&__str[14] = v16;
            *&__str[22] = 2048;
            *&__str[24] = *v19;
            LOWORD(v25) = 1024;
            *(&v25 + 2) = DataFile;
            _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - %s - length = %ld; status = %08x\n", __str, 0x26u);
          }
        }

        if (!v9 && BytePtr)
        {
          free(BytePtr);
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  return DataFile;
}

void H16ISP::fdrLogMessages(H16ISP *this, uint64_t a2, const char *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "fdrLogMessages";
    v6 = 2080;
    v7 = a2;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - %s\n", &v4, 0x16u);
  }
}

uint64_t H16ISP::H16ISPDevice::isYonkersSensorSupported(H16ISP::H16ISPDevice *this, unsigned int *a2)
{
  v2 = 0;
  v3 = *(this + 538);
  result = *(v3 + 648);
  for (i = (v3 + 16); ; i += 26)
  {
    if (*(i - 2))
    {
      if (*i == 1718776695 || *i == 1718775412)
      {
        break;
      }
    }

    if (++v2 == 6)
    {
      return result;
    }
  }

  *a2 = v2;
  return result;
}

BOOL H16ISP::H16ISPDevice::isSavageSensorSupported(H16ISP::H16ISPDevice *this, unsigned int *a2)
{
  v2 = 0;
  v3 = *(this + 538) + 16;
  v4 = 1;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 += 26;
    if (v6 == 1718186595 && *(v3 - 8) == 1)
    {
      break;
    }

    v4 = v2 < 5;
    v3 = v5;
    if (++v2 == 6)
    {
      return 0;
    }
  }

  *a2 = v2;
  return v4;
}

uint64_t H16ISP::H16ISPDevice::ISP_IsSupportedFrontAutoFocus(H16ISP::H16ISPDevice *this)
{
  output = 0;
  outputCnt = 1;
  result = *(this + 1086);
  if (result)
  {
    if (IOConnectCallScalarMethod(result, 0x53u, 0, 0, &output, &outputCnt))
    {
      v2 = 1;
    }

    else
    {
      v2 = output == 0;
    }

    return !v2;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetFlickerDetectorHWType(uint64_t result, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(*(result + 4304) + 668);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_SetDARTCacheTTL(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x1Au, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_EnableMIPIClockAdjustments(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x1Bu, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_ClockSet(H16ISP::H16ISPDevice *this, char a2)
{
  bzero(v5, 0xCuLL);
  v6 = 32;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_GeneralProcessStart(H16ISP::H16ISPDevice *a1, unsigned int a2, _WORD *a3)
{
  result = 3758097090;
  if (a2 <= 9 && ((0x2FFu >> a2) & 1) != 0)
  {
    v6 = word_2249D2680[a2];
    bzero(v7, 0x10uLL);
    v8 = 303;
    v9 = v6;
    result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
    if (!result)
    {
      *a3 = v10;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_GeneralProcessStop(H16ISP::H16ISPDevice *this, __int16 a2)
{
  bzero(v5, 0x10uLL);
  v7 = a2;
  v6 = 304;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_GeneralProcessGeneric(uint64_t a1, void *inputStruct, mach_port_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  if (a3)
  {
    v6 = 0u;
    return IOConnectCallAsyncMethod(v3, 0x27u, a3, &reference, 8u, 0, 0, inputStruct, 0x478uLL, 0, 0, 0, 0);
  }

  else
  {

    return IOConnectCallStructMethod(v3, 0x27u, inputStruct, 0x478uLL, 0, 0);
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_GeneralProcess(uint64_t a1, void *inputStruct, mach_port_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  if (a3)
  {
    v6 = 0u;
    return IOConnectCallAsyncMethod(v3, 0x26u, a3, &reference, 8u, 0, 0, inputStruct, 0x3C8uLL, 0, 0, 0, 0);
  }

  else
  {

    return IOConnectCallStructMethod(v3, 0x26u, inputStruct, 0x3C8uLL, 0, 0);
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_GeneralProcessBuffers(uint64_t a1, void *inputStruct, mach_port_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  if (a3)
  {
    v6 = 0u;
    return IOConnectCallAsyncMethod(v3, 0x71u, a3, &reference, 8u, 0, 0, inputStruct, 0x628uLL, 0, 0, 0, 0);
  }

  else
  {

    return IOConnectCallStructMethod(v3, 0x71u, inputStruct, 0x628uLL, 0, 0);
  }
}

uint64_t H16ISP::H16ISPDevice::GetMultiCamSessionStatus(H16ISP::H16ISPDevice *a1, void *a2, unsigned __int16 *a3)
{
  bzero(v9, 0xB4uLL);
  v10 = 13315;
  v6 = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0xB4u, 0, 0xFFFFFFFF);
  v7 = v11;
  memcpy(a2, &v12, 28 * v11);
  *a3 = v7;
  return v6;
}

uint64_t H16ISP::H16ISPDevice::EnableTimewarpRecording(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 14592;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTimewarpParameters(H16ISP::H16ISPDevice *this, int a2, char a3, int a4, int a5, int a6)
{
  bzero(v13, 0x1CuLL);
  v14 = 14593;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTimewarpForceFPS(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 14594;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetTimeOfFlightProjectorMode(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x4Au, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetJasperStatistics(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 100;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x4Eu, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::GetDriverPerformanceMetrics(uint64_t a1, void *outputStruct)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097112;
  }

  v4 = 8;
  return IOConnectCallMethod(v2, 0x6Fu, 0, 0, 0, 0, 0, 0, outputStruct, &v4);
}

uint64_t H16ISP::H16ISPDevice::GetDriverKextInfo(uint64_t a1, void *outputStruct)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097112;
  }

  v4 = 75;
  return IOConnectCallMethod(v2, 0x70u, 0, 0, 0, 0, 0, 0, outputStruct, &v4);
}

uint64_t H16ISP::H16ISPDevice::ISP_MapMPMMemory(H16ISP::H16ISPDevice *this, uint64_t a2, uint64_t a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x54u, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_UnmapMPMMemory(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x55u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetLowMemoryMode(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x6Au, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetLowMemoryMode(H16ISP::H16ISPDevice *this, BOOL *a2)
{
  result = 3758097084;
  v4 = *(this + 1086);
  if (v4)
  {
    if (a2)
    {
      output = 0;
      outputCnt = 1;
      result = IOConnectCallScalarMethod(v4, 0x6Cu, 0, 0, &output, &outputCnt);
      if (!result)
      {
        *a2 = output != 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetDeskViewEnabled(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2640;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_SetAudioBufferReceiverCallbackBlock(uint64_t a1, uint64_t a2)
{
  *(a1 + 4680) = a2;
  v2 = *(a1 + 4712);
  if (v2)
  {
    H16ISP::DCSAudioAccelManager::SetCallbackBlock(v2, a2);
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_SetAudioBufferReceiverCallbackPtr(H16ISP::H16ISPDevice *this, void (*a2)(__CVBuffer *, CMTime *__struct_ptr))
{
  *(this + 586) = a2;
  v2 = *(this + 589);
  if (v2)
  {
    H16ISP::DCSAudioAccelManager::SetCallbackPtr(v2, a2);
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_SetAudioBufferReceiverMessageCallbackBlock(uint64_t a1, uint64_t a2)
{
  *(a1 + 4696) = a2;
  v2 = *(a1 + 4712);
  if (v2)
  {
    H16ISP::DCSAudioAccelManager::SetMessageCallbackBlock(v2, a2);
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_SetAudioBufferReceiverMessageCallbackPtr(H16ISP::H16ISPDevice *this, void (*a2)(unsigned int, unsigned int, unsigned int))
{
  *(this + 588) = a2;
  v2 = *(this + 589);
  if (v2)
  {
    H16ISP::DCSAudioAccelManager::SetMessageCallbackPtr(v2, a2);
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_SetAudioTestMode(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  *(this + 584) = a2;
  v2 = *(this + 589);
  if (v2)
  {
    H16ISP::DCSAudioAccelManager::SetTestMode(v2, a2);
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_EnableAudioAccelStreaming(H16ISP::H16ISPDevice *this, int a2, uint64_t a3, H16ISP::DCSAudioAccelManager **a4)
{
  result = *(this + 589);
  if (!a2)
  {
    if (!result)
    {
      return result;
    }

    v8 = 0;
    if (!H16ISP::DCSAudioAccelManager::GetStreamingStatus(result, &v8))
    {
      if (v8)
      {
        result = H16ISP::DCSAudioAccelManager::StopStreaming(*(this + 589));
        if (result)
        {
          return result;
        }

        result = H16ISP::DCSAudioAccelManager::DestroyStreamSession(*(this + 589));
        if (result)
        {
          return result;
        }

        result = H16ISP::DestroyAudioAccelManager(this + 589, v6);
        if (result)
        {
          return result;
        }

        *(this + 589) = 0;
      }

      return 0;
    }

    return 3758097084;
  }

  if (!result)
  {
    H16ISP::CreateAudioAccelManager(this, (this + 4672), (this + 4712), a4);
  }

  v7 = 0;
  if (H16ISP::DCSAudioAccelManager::GetStreamingStatus(result, &v7))
  {
    return 3758097084;
  }

  if (v7)
  {
    return 0;
  }

  result = H16ISP::DCSAudioAccelManager::CreateStreamSession(*(this + 589));
  if (!result)
  {
    result = H16ISP::DCSAudioAccelManager::StartStreaming(*(this + 589));
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_GetAudioAccelStreaming(H16ISP::H16ISPDevice *this, BOOL *a2)
{
  v3 = *(this + 589);
  if (v3)
  {
    v6 = 0;
    if (H16ISP::DCSAudioAccelManager::GetStreamingStatus(v3, &v6))
    {
      return 3758097084;
    }

    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_EnableAudio(H16ISP::H16ISPDevice *this, char a2, char a3)
{
  bzero(v7, 0xCuLL);
  v8 = -24576;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_GetAudioConfig(H16ISP::H16ISPDevice *a1, void *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  bzero(a2, 0x18uLL);
  *(a2 + 2) = -24574;

  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, a2, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_SetAudioAccelConfig(H16ISP::H16ISPDevice *this, char a2, char a3, char a4, char a5)
{
  bzero(v11, 0x10uLL);
  v12 = -24575;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetExclaveDeviceType(H16ISP::H16ISPDevice *this)
{
  v1 = **(this + 538);
  if (v1 > 96)
  {
    if ((v1 - 100) < 4)
    {
      return 3;
    }

    if ((v1 - 97) < 3)
    {
      return 7;
    }

    if ((v1 - 237) < 3)
    {
      return 9;
    }
  }

  else if (v1 > 68)
  {
    if ((v1 - 69) < 4)
    {
      return 1;
    }

    if (v1 == 79)
    {
      return 8;
    }
  }

  else
  {
    if ((v1 - 51) < 4)
    {
      return 0;
    }

    if (v1 == 58)
    {
      return 4;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t H16ISP::H16ISPDevice::SetupConclave(H16ISP::H16ISPDevice *this, int a2, BOOL *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(this + 4288))
  {
    bzero(v22, 0x20CuLL);
    if (ispExclaveKitCommand())
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v6;
      }

      v7 = 3758097087;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        H16ISP::H16ISPDevice::SetupConclave();
      }
    }

    else
    {
      bzero(v41, 0x30CuLL);
      v40 = 1;
      ExclaveDeviceType = H16ISP::H16ISPDevice::GetExclaveDeviceType(this);
      if (ExclaveDeviceType == -1)
      {
        v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v12 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v12;
        }

        v7 = 3758097084;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          H16ISP::H16ISPDevice::SetupConclave();
        }
      }

      else
      {
        v41[130] = ExclaveDeviceType;
        if (ispExclaveKitCommand())
        {
          v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
          {
            v11 = os_log_create("com.apple.isp", "exclaves");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
          }

          v7 = 3758097087;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            H16ISP::H16ISPDevice::SetupConclave();
          }
        }

        else
        {
          bzero(v24, 0x30CuLL);
          v23 = 65541;
          v24[130] = a2;
          if (a3)
          {
            *(v39 + 15) = *(a3 + 239);
            v13 = *(a3 + 13);
            v37 = *(a3 + 12);
            v38 = v13;
            v39[0] = *(a3 + 14);
            v14 = *(a3 + 9);
            v33 = *(a3 + 8);
            v34 = v14;
            v15 = *(a3 + 11);
            v35 = *(a3 + 10);
            v36 = v15;
            v16 = *(a3 + 5);
            v29 = *(a3 + 4);
            v30 = v16;
            v17 = *(a3 + 7);
            v31 = *(a3 + 6);
            v32 = v17;
            v18 = *(a3 + 1);
            v25 = *a3;
            v26 = v18;
            v19 = *(a3 + 3);
            v27 = *(a3 + 2);
            v28 = v19;
            if (ispExclaveKitCommand())
            {
              v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
              {
                v20 = os_log_create("com.apple.isp", "exclaves");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v20;
              }

              v7 = 3758097087;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPDevice::SetupConclave();
              }
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
            {
              v21 = os_log_create("com.apple.isp", "exclaves");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v21;
            }

            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              H16ISP::H16ISPDevice::SetupConclave();
            }

            return 3758096385;
          }
        }
      }
    }
  }

  else
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
    }

    v7 = 3758097095;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      H16ISP::H16ISPDevice::SetupConclave();
    }
  }

  return v7;
}

uint64_t H16ISP::H16ISPDevice::ISP_SecureStreamConfig(uint64_t a1, void *inputStruct, void *outputStruct)
{
  outputStructCnt = 60;
  v3 = *(a1 + 4344);
  if (v3)
  {
    return IOConnectCallStructMethod(v3, 0x58u, inputStruct, 0x14uLL, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::SetExclusiveExclaveStreamingMode(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  v3 = a3;
  v6 = 1 << a2;
  if (a3)
  {
    v7 = *(this + 1073) | v6;
  }

  else
  {
    v7 = *(this + 1073) & ~v6;
  }

  *(this + 1073) = v7;
  bzero(v9, 0x10uLL);
  v11 = a2;
  v10 = -28670;
  v12 = v3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetExclaveOutputMetadata(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v9 = a2;
  v8 = -28669;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ConfigureExclaveKitDebugServices(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v9, 0x210uLL);
  v9[130] = a2;
  if (ispExclaveKitCommand())
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v4;
    }

    started = 3758097084;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ConfigureExclaveKitDebugServices();
    }
  }

  else if (v10)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      operator new();
    }

    *v7 = v10;
    started = H16ISPExclaveDebugService::StartDebugService(v7, a2);
    if (started)
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::ConfigureExclaveKitDebugServices();
      }
    }
  }

  else
  {
    return 0;
  }

  return started;
}

uint64_t H16ISP::H16ISPDevice::PowerOnExclaveKit(H16ISP::H16ISPDevice *this, uint64_t a2, BOOL *a3)
{
  v3 = a2;
  v4 = H16ISP::H16ISPDevice::SetupConclave(this, a2, a3);
  if (v4)
  {
    v5 = v4;
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      H16ISP::H16ISPDevice::PowerOnExclaveKit();
    }
  }

  else
  {
    bzero(v9, 0x208uLL);
    v9[130] = v3;
    if (ispExclaveKitCommand())
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
      }

      v5 = 3758097087;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::PowerOnExclaveKit();
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t H16ISP::H16ISPDevice::PowerOffExclaveKit(H16ISP::H16ISPDevice *this, int a2)
{
  v3 = *(this + 16);
  if (v3)
  {
    H16ISPExclaveDebugService::StopDebugService(v3);
  }

  bzero(v7, 0x208uLL);
  v7[130] = a2;
  if (!ispExclaveKitCommand())
  {
    return 0;
  }

  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v4;
  }

  v5 = 3758097087;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPDevice::PowerOffExclaveKit();
  }

  return v5;
}

uint64_t H16ISP::H16ISPDevice::ISP_RegisterEPipeDoneCallback(uint64_t a1, _DWORD *inputStruct)
{
  v7 = *MEMORY[0x277D85DE8];
  result = 3758097084;
  v4 = *(a1 + 4344);
  if (v4)
  {
    if (inputStruct)
    {
      v6 = 0u;
      return IOConnectCallAsyncMethod(v4, 0x59u, inputStruct[6], &reference, 8u, 0, 0, inputStruct, 0x20uLL, 0, 0, 0, 0);
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_UnregisterEPipeDoneCallback(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = 3758097090;
  v4 = *(this + 1086);
  if (!v4)
  {
    return 3758097084;
  }

  if (*(this + 1167) <= a2)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_UnregisterEPipeDoneCallback();
    }
  }

  else
  {
    v6[0] = a2;
    return IOConnectCallScalarMethod(v4, 0x5Au, v6, 1u, 0, 0);
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::GetExclaveCameraConfig(uint64_t a1, unsigned int a2, unsigned int a3, void *__dst)
{
  v4 = 3758097090;
  if (*(a1 + 4))
  {
    if (*(a1 + 4668) > a2)
    {
      v5 = *(a1 + 40) + 432 * a2;
      if (*v5 > a3)
      {
        memmove(__dst, (*(v5 + 16) + 60 * a3), 0x3CuLL);
        return 0;
      }
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v4 = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetExclaveCameraConfig();
    }
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::ReadPropertyValueExclave(H16ISP::H16ISPDevice *this, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = 3758097084;
  if (!*(this + 1086))
  {
    return 3758097112;
  }

  v5 = a2;
  if (*(this + 1167) <= a2)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
    }

    v4 = 3758097090;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ReadPropertyValueExclave();
    }
  }

  else
  {
    v7 = a3;
    bzero(v11, 0x214uLL);
    v11[130] = v5;
    v11[131] = v7;
    if (ispExclaveKitCommand())
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::ReadPropertyValueExclave();
      }
    }

    else
    {
      v4 = 0;
      *a4 = v11[132];
    }
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::WritePropertyValueExclave(H16ISP::H16ISPDevice *this, uint64_t a2, int a3, int a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = 3758097084;
  if (!*(this + 1086))
  {
    return 3758097112;
  }

  v5 = a2;
  if (*(this + 1167) <= a2)
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
    }

    v4 = 3758097090;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::WritePropertyValueExclave();
    }
  }

  else
  {
    bzero(v13, 0x208uLL);
    v13[130] = v5;
    v13[131] = a3;
    v13[132] = a4;
    v8 = ispExclaveKitCommand();
    if (v8)
    {
      v9 = v8;
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v15 = "WritePropertyValueExclave";
        v16 = 1024;
        v17 = a3;
        v18 = 1024;
        v19 = v5;
        v20 = 1024;
        v21 = v9;
        _os_log_error_impl(&dword_2247DB000, v10, OS_LOG_TYPE_ERROR, "%s - failed to write property=0x%08x channel=%u err=%u\n", buf, 0x1Eu);
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::SetExclaveAEConfig(H16ISP::H16ISPDevice *a1, int a2, __int128 *a3)
{
  v3 = a3[1];
  v7 = *a3;
  *v5 = 0x900400000000;
  v6 = a2;
  v8 = v3;
  *v9 = a3[2];
  *&v9[12] = *(a3 + 44);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v5, 0x48u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_IsSafeToStartConclave(H16ISP::H16ISPDevice *this, BOOL *a2)
{
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097111;
  }

  output = 0;
  outputCnt = 1;
  v4 = IOConnectCallScalarMethod(v2, 0x5Du, 0, 0, &output, &outputCnt);
  if (v4)
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_IsSafeToStartConclave();
    }
  }

  else
  {
    *a2 = output != 0;
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetPDPConfig(uint64_t a1, unsigned int a2, void *a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  outputStruct = 0;
  v9 = -3;
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097111;
  }

  input[0] = a2;
  v5 = IOConnectCallMethod(v3, 0x5Eu, input, 1u, 0, 0, 0, 0, &outputStruct, &v9);
  v6 = v5;
  if (v5)
  {
    H16ISP::H16ISPDevice::ISP_GetPDPConfig(v5);
  }

  else
  {
    memcpy(a3, outputStruct, v9);
  }

  return v6;
}

uint64_t H16ISP::H16ISPDevice::SetExclaveTargetFrameRate(H16ISP::H16ISPDevice *this, int a2, float a3)
{
  v4 = 0x900700000000;
  v5 = a2;
  v6 = vcvts_n_u32_f32(a3, 8uLL);
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v4, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetDCSConfig(uint64_t a1, void *outputStruct)
{
  v4 = 8;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallMethod(v2, 0x73u, 0, 0, 0, 0, 0, 0, outputStruct, &v4);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::GetChannelSensorID(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v2 = a2;
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (*(this + 4))
  {
    if (*(this + 1167) > a2)
    {
      v4 = *(*(this + 5) + 432 * a2 + 64);
      goto LABEL_9;
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetChannelSensorID();
    }
  }

  v4 = 0;
LABEL_9:
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "GetChannelSensorID";
    v8 = 1024;
    v9 = v4;
    v10 = 1024;
    v11 = v2;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s - sensorID: 0x%04X, chan: %d\n", &v6, 0x18u);
  }

  return v4;
}

float H16ISP::H16ISPDevice::ISP_GetOpticalfNumber(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  result = -1.0;
  if (*(this + 4) == 1 && *(this + 1167) > a2)
  {
    return *(*(this + 6) + 156 * a2 + 140);
  }

  return result;
}

float H16ISP::H16ISPDevice::ISP_GetOpticalEffectiveFocalLength(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  result = -1.0;
  if (*(this + 4) == 1 && *(this + 1167) > a2)
  {
    return *(*(this + 6) + 156 * a2 + 144);
  }

  return result;
}

float H16ISP::H16ISPDevice::ISP_GetOpticalManualParamsFoV(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  result = -1.0;
  if (*(this + 4) == 1 && *(this + 1167) > a2)
  {
    return *(*(this + 6) + 156 * a2 + 152);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_UnloadDataFile(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v5 = *(this + 1086);
  if (v5)
  {
    input[0] = a2;
    input[1] = a3;
    v6 = IOConnectCallScalarMethod(v5, 0x67u, input, 2u, 0, 0);
  }

  else
  {
    v6 = 3758097084;
  }

  printf("Unload data file: channel: %d, type: %d, status: 0x%08X\n", a2, a3, v6);
  return v6;
}

uint64_t H16ISP::H16ISPDevice::ISP_SavagePrePersonalize(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SavagePreFusing(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 1u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_YonkersPrePersonalize(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x3Fu, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_YonkersPreFusing(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x40u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetStrobeState(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097111;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x60u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetLidarState(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097111;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x61u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetCILDutyCycle(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  if (!*(this + 1086))
  {
    return 3758097111;
  }

  if (a2 >= 0xFFFF)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2;
  }

  bzero(v6, 0x10uLL);
  v8 = v3;
  v7 = 1551;
  v4 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v6, 0x10u, 0, 0xFFFFFFFF);
  if (v4)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_SetCILDutyCycle();
    }
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetCILDutyCycleRange(H16ISP::H16ISPDevice *this, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097111;
  }

  output = 0;
  v10 = 0;
  outputCnt = 2;
  result = IOConnectCallScalarMethod(v3, 0x68u, 0, 0, &output, &outputCnt);
  v7 = v10;
  *a2 = output;
  *a3 = v7;
  return result;
}

_BYTE *OUTLINED_FUNCTION_1_9(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_6_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void OUTLINED_FUNCTION_10_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

H16ISP::H16ISPDeviceImpactManager *H16ISP::H16ISPDeviceImpactManager::H16ISPDeviceImpactManager(H16ISP::H16ISPDeviceImpactManager *this, H16ISP::H16ISPDevice *a2)
{
  *this = a2;
  v3 = dispatch_group_create();
  *(this + 1) = v3;
  if (v3)
  {
    v4 = malloc_type_malloc(0x48uLL, 0x1000040773C5DECuLL);
    if (v4)
    {
      v5 = v4;
      pthread_mutex_init(v4, 0);
      LOBYTE(v5[1].__sig) = 1;
      dispatch_set_context(*(this + 1), v5);
      dispatch_set_finalizer_f(*(this + 1), H16ISP::finalize_context);
    }
  }

  return this;
}

void H16ISP::finalize_context(pthread_mutex_t *this, void *a2)
{
  pthread_mutex_destroy(this);

  free(this);
}

void H16ISP::H16ISPDeviceImpactManager::~H16ISPDeviceImpactManager(H16ISP::H16ISPDeviceImpactManager *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    context = dispatch_get_context(*(this + 1));
    if (context)
    {
      v4 = context;
      pthread_mutex_lock(context);
      LOBYTE(v4[1].__sig) = 0;
      pthread_mutex_unlock(v4);
      v2 = *(this + 1);
    }

    dispatch_release(v2);
    *(this + 1) = 0;
  }

  *this = 0;
}

uint64_t H16ISP::QueryDeviceImpactsInternal(NSObject *a1, int a2, const void *a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CC1C60]);
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ([v6 isDeviceImpactAvailable])
    {
      if (a1 && dispatch_get_context(a1))
      {
        v7 = _Block_copy(a3);
        dispatch_group_enter(a1);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = ___ZN6H16ISPL26QueryDeviceImpactsInternalEPU28objcproto17OS_dispatch_group8NSObjectbU13block_pointerFvP25sCIspCmdDeviceImpactEventhE_block_invoke;
        v36[3] = &unk_27853B710;
        v36[4] = a1;
        v36[5] = v7;
        [v6 queryDeviceImpactsWithCompletion:v36];
        if (a2)
        {
          global_queue = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = ___ZN6H16ISPL26QueryDeviceImpactsInternalEPU28objcproto17OS_dispatch_group8NSObjectbU13block_pointerFvP25sCIspCmdDeviceImpactEventhE_block_invoke_2;
          block[3] = &unk_27853B738;
          block[4] = v6;
          dispatch_group_notify(a1, global_queue, block);
        }

        else
        {
          dispatch_group_wait(a1, 0xFFFFFFFFFFFFFFFFLL);
        }

        return 0;
      }

      v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
      {
        v27 = os_log_create("com.apple.isp", "services");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v27;
      }

      v17 = 3758097084;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        H16ISP::QueryDeviceImpactsInternal(v27, v28, v29, v30, v31, v32, v33, v34);
      }
    }

    else
    {
      v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
      {
        v19 = os_log_create("com.apple.isp", "services");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v19;
      }

      v17 = 3758097112;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        H16ISP::QueryDeviceImpactsInternal(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }

LABEL_14:

    return v17;
  }

  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "services");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    H16ISP::QueryDeviceImpactsInternal(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = 3758097095;
  if (v6)
  {
    goto LABEL_14;
  }

  return v17;
}

void ___ZNK6H16ISP25H16ISPDeviceImpactManager17SendDeviceImpactsEv_block_invoke(uint64_t a1, char *a2, unsigned int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 32);
  v3 = MEMORY[0x277D86220];
  if (a3)
  {
    v4 = a3;
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
    v6 = a2 + 8;
    do
    {
      if (v5 == v3)
      {
        v5 = os_log_create("com.apple.isp", "services");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = *v6;
        v8 = *(v6 + 4);
        v9 = *(v6 - 8);
        v10 = *(v6 - 1);
        *buf = 136316162;
        v18 = "SendDeviceImpacts_block_invoke";
        v19 = 1024;
        v20 = v7;
        v21 = 2048;
        v22 = v8;
        v23 = 1024;
        v24 = v9;
        v25 = 2048;
        v26 = v10;
        _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_INFO, "%s - Device Impact Callback: impactType=%u date=%lld simulated=%d peakAccel=%f\n", buf, 0x2Cu);
        v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
      }

      v6 += 20;
      --v4;
    }

    while (v4);
  }

  v11 = H16ISP::H16ISPDevice::SendDeviceImpactSamples(*v14, a2, a3);
  if (v11)
  {
    v12 = v11;
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == v3)
    {
      v13 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ___ZNK6H16ISP25H16ISPDeviceImpactManager17SendDeviceImpactsEv_block_invoke_cold_1(v12, v13);
    }
  }
}

void ___ZN6H16ISPL26QueryDeviceImpactsInternalEPU28objcproto17OS_dispatch_group8NSObjectbU13block_pointerFvP25sCIspCmdDeviceImpactEventhE_block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  context = dispatch_get_context(*(a1 + 32));
  memset(v27, 0, 220);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a2;
  v3 = [a2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v23;
LABEL_3:
    v7 = 0;
    v8 = 0;
    v9 = v5;
    v10 = v5 <= 0xBu;
    v11 = 11 - v5;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = v27 + 20 * v9;
    v13 = 20 * v11;
    while (1)
    {
      if (*v23 != v6)
      {
        objc_enumerationMutation(obj);
      }

      if (v13 == v7)
      {
        break;
      }

      v14 = *(*(&v22 + 1) + 8 * v8);
      v15 = &v12[v7];
      [objc_msgSend(v14 "date")];
      v17 = (v16 * 1000000000.0);
      *(v15 + 2) = [v14 impactType];
      *(v15 + 12) = v17;
      *v15 = [v14 isSimulated];
      [v14 peakAcceleration];
      *&v18 = v18;
      *(v15 + 1) = LODWORD(v18);
      LOBYTE(v9) = v9 + 1;
      ++v8;
      v7 += 20;
      if (v4 == v8)
      {
        v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        v5 = v9;
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  pthread_mutex_lock(context);
  if (LOBYTE(context[1].__sig) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  pthread_mutex_unlock(context);
  _Block_release(*(a1 + 40));
  dispatch_group_leave(*(a1 + 32));
}

double bilinearInterpolate(double *a1, double *a2, double a3, double a4)
{
  v4 = a3 - *a2;
  v5 = a2[2] - a3;
  return ((v5 * a1[1] + v4 * a1[3]) / (v4 + v5) * (a2[3] - a4) + (a4 - a2[1]) * ((v5 * *a1 + v4 * a1[2]) / (v4 + v5))) / (a4 - a2[1] + a2[3] - a4);
}

double InitCubicPoly(double *a1, double a2, double a3, double a4, double a5)
{
  *a1 = a2;
  a1[1] = a4;
  v5 = a3 * 3.0 + a2 * -3.0 + a4 * -2.0 - a5;
  result = a3 * -2.0 + a2 * 2.0 + a4 + a5;
  a1[2] = v5;
  a1[3] = result;
  return result;
}

double InitNonuniformCatmullRom(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = (a3 - a2) / a6 - (a4 - a2) / (a6 + a7);
  v9 = (a4 - a3) / a7;
  *&v8 = v9 + v8;
  v10 = (a5 - a4) / a8 + v9 - (a5 - a3) / (a7 + a8);
  *&v8 = *&v8 * a7;
  v11 = v10 * a7;
  v12 = *&v8;
  v13 = v11;
  *a1 = a3;
  a1[1] = v12;
  v14 = a4 * 3.0 + a3 * -3.0 + v12 * -2.0 - v13;
  result = a4 * -2.0 + a3 * 2.0 + v12 + v13;
  a1[2] = v14;
  a1[3] = result;
  return result;
}

void bicubicInterpolateNonuniform(double (*a1)[4], double *a2, double *a3, double a4, double a5)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v10[0] = cubicInterpolateNonuniform(a1, a3, a5);
  v10[1] = cubicInterpolateNonuniform(&(*a1)[4], a3, a5);
  v10[2] = cubicInterpolateNonuniform(&(*a1)[8], a3, a5);
  v10[3] = cubicInterpolateNonuniform(&(*a1)[12], a3, a5);
  cubicInterpolateNonuniform(v10, a2, a4);
}

void ComputeIdealLs(unsigned __int16 *a1, long double *a2, unsigned int a3)
{
  v3 = a1[7];
  if (a1[7])
  {
    v6 = 0;
    v7 = vcvtd_n_f64_u32(*a1 + 1, 1uLL) + a1[8];
    v8 = a1[6];
    v9 = vcvtd_n_f64_u32(a1[1] + 1, 1uLL) + a1[9];
    v10 = 0.0;
    do
    {
      if (a1[6])
      {
        v11 = a1[4];
        v12 = (a1[5] + v6 * a1[3]) - v9;
        v13 = v12 * v12;
        v14 = a1[6];
        do
        {
          v15 = sqrt((v11 - v7) * (v11 - v7) + v13);
          if (v15 > v10)
          {
            v10 = v15;
          }

          v11 += a1[2];
          --v14;
        }

        while (v14);
      }

      ++v6;
    }

    while (v6 != v3);
    v16 = pow(a3 / 100.0, 0.25);
    v17 = acos(v16);
    v18 = 0;
    v19 = v10 / tan(v17);
    do
    {
      if (v8)
      {
        v20 = a1[4];
        v21 = a1[2];
        v22 = (a1[5] + v18 * a1[3]) - v9;
        v23 = v22 * v22;
        v24 = v8;
        v25 = a2;
        do
        {
          v26 = atan(sqrt((v20 - v7) * (v20 - v7) + v23) / v19);
          v27 = cos(v26);
          *v25++ = pow(v27, 4.0);
          v20 += v21;
          --v24;
        }

        while (v24);
      }

      ++v18;
      a2 += v8;
    }

    while (v18 != v3);
  }
}

uint64_t FTCInterpolateNvm(uint64_t result, uint64_t a2, unsigned __int16 *a3, _WORD *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, float a12)
{
  v15 = a3[7];
  if (!a3[7])
  {
    return result;
  }

  v16 = 0;
  v17 = a3[3];
  v18 = a3[2];
  v19 = a3[5];
  v20 = a4 + 28;
  v21 = a4 + 170;
  v22 = a3[4];
  v23 = a3[6];
  do
  {
    if (!v23)
    {
      goto LABEL_31;
    }

    v24 = 0;
    v25 = (v19 + v16 * v17);
    do
    {
      v26 = (v22 + v24 * v18);
      v27 = a4[20];
      if (a4[20])
      {
        v28 = 0;
        LOWORD(a12) = *a4;
        a12 = LODWORD(a12);
        while (v26 >= (*&v20[2 * v28] * a12))
        {
          if (v27 == ++v28)
          {
            v29 = a4[20];
            goto LABEL_12;
          }
        }

        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

LABEL_12:
      v30 = (v29 - 1);
      v31 = a4[21];
      LOWORD(a12) = a4[1];
      v32 = LODWORD(a12);
      if (a4[21])
      {
        v33 = 0;
        while (v25 >= (*&v21[2 * v33] * v32))
        {
          if (v31 == ++v33)
          {
            LOWORD(v33) = a4[21];
            break;
          }
        }

        if (!v29)
        {
          v30 = 0.0;
        }

        if (v33)
        {
          v34 = (v33 - 1);
          goto LABEL_24;
        }
      }

      else if (!v29)
      {
        v30 = 0.0;
      }

      v34 = 0.0;
LABEL_24:
      if (v30 >= (v27 - 2))
      {
        v30 = (v27 - 2);
      }

      v35 = (v31 - 2);
      v36 = vcvtmd_u64_f64(v30);
      if (v34 >= v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = v34;
      }

      v38 = vcvtmd_u64_f64(v37);
      v39 = v36 + v38 * v27;
      LOBYTE(v37) = *(a2 + v39);
      LOBYTE(v12) = *(a2 + v39 + 1);
      v12 = (*&v12 + -128.0) * 0.125 * 0.0078125 + 1.0;
      v40 = v36 + (v38 + 1) * v27;
      LOBYTE(v13) = *(a2 + v40);
      LOBYTE(v14) = *(a2 + v40 + 1);
      v41 = *&v14;
      v42 = (v41 + -128.0) * 0.125 * 0.0078125 + 1.0;
      LOWORD(v41) = *a4;
      *&v41 = LODWORD(v41);
      v43 = roundf(*&v20[2 * v36] * *&v41);
      v44 = roundf(*&v21[2 * v38] * v32);
      v14 = roundf(*&v20[2 * v36 + 2] * *&v41);
      a12 = roundf(*&v21[2 * v38 + 2] * v32);
      v45 = v26 - v43;
      v46 = v14 - v26;
      v47 = ((*&v13 + -128.0) * 0.125 * 0.0078125 + 1.0) * v46 + v45 * v42;
      v13 = v45 + v46;
      v48 = fmax(fmin(((a12 - v25) * ((((*&v37 + -128.0) * 0.125 * 0.0078125 + 1.0) * v46 + v45 * v12) / (v45 + v46)) + (v25 - v44) * (v47 / (v45 + v46))) / (v25 - v44 + a12 - v25), 2.0), 0.0);
      HIWORD(a12) = 0;
      *(result + 2 * (v24 + v23 * v16)) = llround(fmin(v48 * 4096.0, 65535.0));
      ++v24;
      v23 = a3[6];
    }

    while (v24 < v23);
    v15 = a3[7];
LABEL_31:
    ++v16;
  }

  while (v16 < v15);
  return result;
}

uint64_t LSCComputeGain(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unsigned int a7, int a8)
{
  v8 = *(a5 + 14);
  if (*(a5 + 14))
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a5 + 12);
    do
    {
      if (v11)
      {
        for (i = 0; i < v11; ++i)
        {
          v13 = i + v10 * v11;
          v14 = 1 << a6;
          if (a8 != 2)
          {
            LOWORD(v14) = llround(fmin(*(a3 + 8 * v13) / *(a4 + 8 * v13) * (1 << a6), a7));
          }

          *(result + 2 * v13) = v14;
          if (v14 > v9)
          {
            v9 = v14;
          }

          v11 = *(a5 + 12);
        }

        v8 = *(a5 + 14);
      }

      ++v10;
    }

    while (v10 < v8);
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t ApplyFTCGain(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = *(a4 + 14);
  if (*(a4 + 14))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a4 + 12);
    do
    {
      if (v10)
      {
        v11 = 0;
        do
        {
          v12 = v11 + v7 * v10;
          LOWORD(a6) = *(result + 2 * v12);
          HIWORD(v13) = 17792;
          LOWORD(v13) = *(a3 + 2 * v12);
          a6 = fmin(((LODWORD(a6) * 4096.0) / v13), 65535.0);
          v14 = llround(a6);
          *(result + 2 * v12) = v14;
          if (v9 <= v14)
          {
            v9 = v14;
          }

          v10 = *(a4 + 12);
          ++v11;
        }

        while (v11 < v10);
        v6 = *(a4 + 14);
      }

      ++v8;
      ++v7;
    }

    while (v8 < v6);
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t CICComputeGain(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *(a4 + 14);
  if (*(a4 + 14))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(a4 + 12);
    do
    {
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = v10 + v6 * v9;
          v12 = llround(fmin(1.0 / *(a3 + 8 * v11) * (1 << a5), 65535.0));
          *(result + 2 * v11) = v12;
          if (v7 <= v12)
          {
            v7 = v12;
          }

          v9 = *(a4 + 12);
          ++v10;
        }

        while (v10 < v9);
        v5 = *(a4 + 14);
      }

      ++v8;
      ++v6;
    }

    while (v8 < v5);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t GICComputeGain(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a3 + 14);
  if (*(a3 + 14))
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a3 + 12);
    do
    {
      if (v7)
      {
        v8 = 0;
        do
        {
          *(result + 2 * (v8 + v5 * v7)) = llround(fmin((*(a2 + 8 * (v8 + v5 * v7)) + 1.0) * (1 << a4), 65535.0));
          v7 = *(a3 + 12);
          ++v8;
        }

        while (v8 < v7);
        v4 = *(a3 + 14);
      }

      ++v6;
      ++v5;
    }

    while (v6 < v4);
  }

  return result;
}

char *flip(char *result, int a2, int a3)
{
  v3 = (((a2 * a3) << 32) - 0x100000000) >> 31;
  if (v3 >= 1)
  {
    v4 = &result[v3 - 2];
    do
    {
      v5 = *(v4 + 1);
      *(v4 + 1) = *result;
      *result = v5;
      result += 2;
      v6 = v4 > result;
      v4 -= 2;
    }

    while (v6);
  }

  return result;
}

uint64_t FTCComputeFromNVMApple(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned __int16 *a7, unsigned __int16 *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, float a16, uint64_t a17)
{
  v64[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v21 = 0;
    do
    {
      v60[v21] = *(a5 + 4 * v21);
      ++v21;
    }

    while (a3 > v21);
  }

  if (a4)
  {
    v22 = 0;
    do
    {
      v60[v22 + 71] = *(a6 + 4 * v22);
      ++v22;
    }

    while (a4 > v22);
  }

  v23 = a3 - 1;
  v54 = vdupq_n_s64(0x3F847AE147AE147BuLL);
  v24 = a4 - 1;
  v64[0] = a1 + 18;
  v64[1] = a1 + 36;
  v64[2] = a1 + 54;
  v64[3] = a1 + 72;
  v53[0] = *(a1 + 14) >> 1;
  v25 = *(a1 + 16) >> 1;
  v53[1] = *(a1 + 16) >> 1;
  v57 = a3;
  v58 = a4;
  v55 = 0.98 / (a3 - 1);
  v56 = 0.98 / (a4 - 1);
  v59 = 0x406F400000000000;
  v61[0] = v53[0];
  v61[1] = v25;
  v62 = *(a1 + 20);
  v63 = *(a1 + 28);
  v52 = HIDWORD(v63);
  FTCInterpolateNvm(a17, a2, v61, v53, v63, v55, (a4 - 1), a12, a13, a14, a15, a16);
  if (HIWORD(v52))
  {
    v27 = 0;
    v28 = (a8 + (a4 & 0xFFFE));
    v29 = a17;
    do
    {
      if (v52)
      {
        v30 = 0;
        do
        {
          if (v30 < *a7 - 1 || v30 >= a7[v23] || v27 > *(v28 - 1) && v27 < *v28)
          {
            *(v29 + 2 * v30) = 4096;
          }

          ++v30;
        }

        while (v52 != v30);
      }

      ++v27;
      v29 += 2 * v52;
    }

    while (v27 != HIWORD(v52));
  }

  v31 = *a8;
  if (v31 > 1)
  {
    v32 = (v31 - 2);
    v33 = (a17 + 2 * v52 * v32);
    v34 = (a17 + 2 * (v52 + v52 * v32));
    do
    {
      v35 = v52;
      v36 = v34;
      v37 = v33;
      if (v52)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
          --v35;
        }

        while (v35);
      }

      v33 -= v52;
      v34 -= v52;
    }

    while (v32-- > 0);
  }

  v40 = a8[v24];
  if (v40 < a4)
  {
    v41 = (a17 + 2 * v52 * a8[v24]);
    v42 = 2 * v52;
    v43 = (a17 + 2 * (v40 - 1) * v52);
    do
    {
      v44 = v52;
      v45 = v43;
      v46 = v41;
      if (v52)
      {
        do
        {
          v47 = *v45++;
          *v46++ = v47;
          --v44;
        }

        while (v44);
      }

      ++v40;
      v41 = (v41 + v42);
      v43 = (v43 + v42);
    }

    while (v40 != a4);
  }

  v48 = 0;
  v49 = a1 + 92;
  do
  {
    v50 = v64[v48];
    v62 = *(v50 + 2);
    v63 = *(v50 + 10);
    result = ApplyFTCGain(v49 + 2 * *(v50 + 6), v50, a17, v61, v63, v26);
    ++v48;
  }

  while (v48 != 4);
  return result;
}

uint64_t LSCFlipApple(uint64_t result)
{
  v1 = 0;
  v9[4] = *MEMORY[0x277D85DE8];
  v9[0] = result + 18;
  v9[1] = result + 36;
  v9[2] = result + 54;
  v9[3] = result + 72;
  do
  {
    v2 = v9[v1];
    v3 = (((*(v2 + 14) * *(v2 + 16)) << 32) - 0x100000000) >> 31;
    if (v3 >= 1)
    {
      v4 = *(v2 + 6);
      v5 = (result + 92 + 2 * v4);
      v6 = result + 90 + v3 + 2 * v4;
      do
      {
        v7 = *(v6 + 2);
        *(v6 + 2) = *v5;
        *v5++ = v7;
        v8 = v6 > v5;
        v6 -= 2;
      }

      while (v8);
    }

    ++v1;
  }

  while (v1 != 4);
  return result;
}

unint64_t LSCFlipPerModule(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a1[1] * *a1;
  v5 = a1 + 264;
  v6 = (v4 - 1);
  v7 = a2 + v6;
  v8 = &a1[v6 + 264];
  do
  {
    v9 = v5;
    v10 = v8;
    v11 = a2;
    v12 = v7;
    do
    {
      *(v11 + v2) = v10[v2];
      result = v11 + v2 + 1;
      *(v12 + v2) = v9[v2];
      --v12;
      ++v11;
      --v10;
      ++v9;
    }

    while (v12 + v2 >= result);
    ++v3;
    v2 += v4;
  }

  while (v3 != 4);
  return result;
}

_WORD *averageGreen(_WORD *result, unsigned __int16 *a2, int a3, int a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (*a2 + *result) >> 1;
      *result++ = v5;
      *a2++ = v5;
      ++v4;
    }

    while (a4 * a3 > v4);
  }

  return result;
}

uint64_t LSCAverageGreenApple(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 != *(result + 86))
  {
    LSCAverageGreenApple();
  }

  v2 = *(result + 34);
  if (v2 != *(result + 88))
  {
    LSCAverageGreenApple();
  }

  v3 = v2 * v1;
  if (v3)
  {
    v4 = 0;
    v5 = (result + 92 + 2 * *(result + 78));
    v6 = (result + 92 + 2 * *(result + 24));
    do
    {
      v7 = (*v5 + *v6) >> 1;
      *v6++ = v7;
      *v5++ = v7;
      ++v4;
    }

    while (v3 > v4);
  }

  return result;
}

uint64_t LSCComputeSNFRadialGains(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v8 = 0;
  v86[4] = *MEMORY[0x277D85DE8];
  v9 = *(a3 + 14);
  v10 = *(a3 + 16);
  v86[0] = a3 + 18;
  v86[1] = a3 + 36;
  v86[2] = a3 + 54;
  v86[3] = a3 + 72;
  memset(v85, 0, 32);
  do
  {
    v85[v8] = a3 + 92 + 2 * *(v86[v8] + 6);
    ++v8;
  }

  while (v8 != 4);
  v11 = 0;
  v12 = vcvtd_n_f64_u32(v9, 1uLL);
  v13 = vcvtd_n_f64_u32(v10, 1uLL);
  v14 = a5 + v12;
  v15 = a6 + v13;
  v84[0] = 0;
  v84[1] = v9;
  v84[2] = 0;
  v84[3] = v9;
  v81 = 0;
  v82 = v10;
  v83 = v10;
  v80[0] = 0;
  v80[1] = 0;
  v16 = 0.0;
  do
  {
    v17 = (v14 - v84[v11]);
    v18 = (v15 - *(&v81 + v11 * 4));
    v19 = sqrt(v17 * v17 + v18 * v18);
    *(v80 + v11 * 4) = v19;
    if (v16 < v19)
    {
      v16 = v19;
    }

    ++v11;
  }

  while (v11 != 4);
  bzero(v79, 0x808uLL);
  bzero(v78, 0x404uLL);
  v20 = log2f(v16 * 0.0039062);
  v21 = 0;
  v22 = vcvtps_s32_f32(v20);
  *(a1 + 12) = v22;
  v23 = 256 << v22;
  do
  {
    v24 = 0;
    v25 = v86[v21];
    v26 = v25[1];
    v27 = v25[2];
    result = v25[7];
    v29 = v25[8] - 2;
    v30 = v85[v21];
    do
    {
      v31 = 0;
      v32 = 0;
      v33 = v84[v24] - v14;
      v34 = *(v80 + v24);
      v35 = *(&v81 + v24) - v15;
      do
      {
        v36 = vcvts_n_f32_u32(v31, 8uLL);
        if (v36 >= v16)
        {
          v36 = v16;
        }

        v37 = (v14 + ((v36 * v33) / v34)) * 0.5;
        v38 = (v15 + ((v36 * v35) / v34)) * 0.5;
        v39 = (v37 / v26) & ~((v37 / v26) >> 31);
        v40 = (v38 / v27) & ~((v38 / v27) >> 31);
        if (v39 >= result - 2)
        {
          v39 = result - 2;
        }

        if (v40 >= v29)
        {
          v40 = v29;
        }

        v41 = (v30 + 2 * v40 * result + 2 * v39);
        v42 = vcvts_n_f32_u32(*v41, 0xCuLL);
        v43 = vcvts_n_f32_u32(v41[1], 0xCuLL);
        v44 = (v30 + 2 * (v40 + 1) * result + 2 * v39);
        v45 = v39 * v26;
        v46 = v37 - v45;
        v47 = (v26 + v45) - v37;
        v48 = v78[v32];
        v79[v32] = v79[v32] + ((((v40 + 1) * v27) - v38) * ((v47 * v42 + v46 * v43) / (v46 + v47)) + (v38 - (v40 * v27)) * ((v47 * vcvts_n_f32_u32(*v44, 0xCuLL) + v46 * vcvts_n_f32_u32(v44[1], 0xCuLL)) / (v46 + v47))) / (v38 - (v40 * v27) + ((v40 + 1) * v27) - v38);
        v78[v32++] = v48 + 1;
        v31 += v23;
      }

      while (v32 != 257);
      ++v24;
    }

    while (v24 != 4);
    ++v21;
  }

  while (v21 != 4);
  for (i = 0; i != 257; ++i)
  {
    v50 = v78[i];
    v51 = v79[i];
    if (v50 >= 1)
    {
      v51 = v51 / v50;
      v79[i] = v51;
    }

    *(a1 + 14 + 2 * i) = vcvtd_n_s64_f64(1.0 / v51, 0xCuLL);
  }

  if (a2)
  {
    v52 = 0;
    v53 = 0.0;
    v54 = 0.0;
    do
    {
      v55 = v86[v52];
      v56 = *(v55 + 14);
      v57 = v85[v52];
      LODWORD(v55) = *(v55 + 16);
      v54 = v54 + vcvts_n_f32_u32(*(v57 + 2 * (v56 >> 1)), 0xCuLL) + vcvts_n_f32_u32(*(v57 + 2 * ((v56 >> 1) + (v55 - 1) * v56)), 0xCuLL);
      v53 = v53 + vcvts_n_f32_u32(*(v57 + 2 * (v55 >> 1) * v56), 0xCuLL) + vcvts_n_f32_u32(*(v57 + 2 * (v56 + (v55 >> 1) * v56 - 1)), 0xCuLL);
      ++v52;
    }

    while (v52 != 4);
    v58 = 0;
    v59 = 0;
    v60 = v54 * 0.125;
    v61 = v53 * 0.125;
    v62 = v79;
    while (*v62 <= v61)
    {
      ++v62;
      --v59;
      v58 -= v23;
      if (v59 == -257)
      {
        v63 = v12;
        goto LABEL_34;
      }
    }

    v64 = ~v59;
    v63 = v12;
    if (v64 <= 0xFF)
    {
      v65 = vcvts_n_f32_u32(-v58, 8uLL);
      v66 = vcvts_n_f32_u32(-(v23 + v58), 8uLL);
      v67 = v79[v64];
      v68 = 0.5;
      if (vabdd_f64(*v62, v67) > 1.0e-10)
      {
        v68 = (v61 - v67) / (*v62 - v67);
      }

      v63 = v68 * v65 + (1.0 - v68) * v66;
    }

LABEL_34:
    v69 = 0;
    v70 = 0;
    v71 = v79;
    while (*v71 <= v60)
    {
      ++v71;
      --v70;
      v69 -= v23;
      if (v70 == -257)
      {
        v72 = v13;
        goto LABEL_42;
      }
    }

    v73 = ~v70;
    v72 = v13;
    if (v73 <= 0xFF)
    {
      v74 = vcvts_n_f32_u32(-v69, 8uLL);
      v75 = vcvts_n_f32_u32(-(v23 + v69), 8uLL);
      v76 = v79[v73];
      v77 = 0.5;
      if (vabdd_f64(*v71, v76) > 1.0e-10)
      {
        v77 = (v60 - v76) / (*v71 - v76);
      }

      v72 = v77 * v74 + (1.0 - v77) * v75;
    }

LABEL_42:
    *(a2 + 12) = llround(fmin(v63 / v12 * 4096.0 + 0.5, 65535.0));
    *(a2 + 14) = llround(fmin(v72 / v13 * 4096.0 + 0.5, 65535.0));
  }

  return result;
}

void LSCComputeSNFVerticalGains(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v6 = v5;
  v8 = v7;
  v9 = v1;
  v10 = 0;
  v90[4] = *MEMORY[0x277D85DE8];
  v11 = *(v2 + 14);
  v12 = *(v2 + 16);
  v90[0] = v2 + 18;
  v90[1] = v2 + 36;
  v90[2] = v2 + 54;
  v90[3] = v2 + 72;
  memset(v89, 0, 32);
  do
  {
    v89[v10] = v2 + 92 + 2 * *(v90[v10] + 6);
    ++v10;
  }

  while (v10 != 4);
  v13 = vcvtd_n_f64_u32(v12, 1uLL);
  v14 = vcvtd_n_f64_u32(v11, 1uLL);
  v15 = v3 + v14;
  v16 = v4;
  bzero(v88, 0x808uLL);
  bzero(v87, 0x808uLL);
  v17 = (v11 >> 1);
  v18 = log2f(vcvts_n_f32_u32(v11 >> 1, 8uLL));
  v19 = 0;
  v20 = vcvtps_s32_f32(v18);
  *(v9 + 12) = v20;
  v21 = 256 << v20;
  do
  {
    v22 = 0;
    v23 = v90[v19];
    v24 = v23[1];
    v25 = v23[7];
    v26 = v25 - 2;
    v27 = v23[8];
    v28 = 2 * v25;
    do
    {
      v29 = 0;
      v30 = vcvts_n_f32_u32(v21 * v22, 8uLL);
      if (v30 >= v17)
      {
        v31 = v17;
      }

      else
      {
        v31 = v30;
      }

      v32 = v88[v22];
      v33 = 1;
      do
      {
        v34 = *(&unk_2249D26B8 + v29);
        v35 = v33;
        v36 = (v15 + (v34 * v31)) * 0.5;
        v37 = (v36 / v24);
        if (v37 <= 1)
        {
          v37 = 1;
        }

        if (v37 >= v26)
        {
          v37 = v26;
        }

        if (v27)
        {
          v38 = (v89[v19] + 2 * v37);
          v39 = 0.0;
          v40 = v27;
          v41 = 0.0;
          do
          {
            v39 = v39 + vcvts_n_f32_u32(*v38, 0xCuLL);
            v41 = v41 + vcvts_n_f32_u32(v38[v34], 0xCuLL);
            v38 = (v38 + v28);
            --v40;
          }

          while (v40);
        }

        else
        {
          v41 = 0.0;
          v39 = 0.0;
        }

        v33 = 0;
        v32 = ((((v37 + v34) * v24) - v36) * v39 + (v36 - (v37 * v24)) * v41) / (v36 - (v37 * v24) + ((v37 + v34) * v24) - v36) / v27 + v32;
        v29 = 1;
      }

      while ((v35 & 1) != 0);
      v88[v22++] = v32;
    }

    while (v22 != 257);
    ++v19;
  }

  while (v19 != 4);
  for (i = 0; i != 257; ++i)
  {
    v44 = v88[i] * 0.125;
    v88[i] = v44;
    if (v44 <= 0.0)
    {
      v45 = 1.0;
    }

    else
    {
      v45 = 1.0 / v44;
    }

    v87[i] = v45;
    *(v9 + 14 + 2 * i) = vcvtd_n_s64_f64(v45, 0xCuLL);
  }

  v43 = v13;
  v46 = v16 + v43;
  bzero(v86, 0x408uLL);
  v47 = v12;
  v48 = v12 - v46;
  if (v46 > v48)
  {
    v48 = v46;
  }

  v49 = log2f((v48 + v48) * 0.0078125);
  v50 = 0;
  v51 = 128 << vcvtps_u32_f32(v49);
  do
  {
    v52 = 0;
    v53 = v90[v50];
    v54 = v53[2];
    v55 = v53[8] - 2;
    v56 = v53[7];
    do
    {
      v57 = v46 + (vcvts_n_f32_u32(v51 * v52, 7uLL) - (v51 >> 1));
      if (v57 < 0.0)
      {
        v57 = 0.0;
      }

      if (v57 > v47)
      {
        v57 = v47;
      }

      v58 = v57 * 0.5;
      v59 = (v58 / v54) & ~((v58 / v54) >> 31);
      if (v59 >= v55)
      {
        v59 = v55;
      }

      if (v56)
      {
        v60 = 0;
        v61 = v89[v50];
        v62 = (v61 + 2 * v59 * v56);
        v63 = v59 + 1;
        v64 = (v61 + 2 * (v59 + 1) * v56);
        v65 = 0.0;
        v66 = v56;
        v67 = 0.0;
        do
        {
          v68 = v60 - v15;
          if (v68 < 0.0)
          {
            v68 = -v68;
          }

          if (v68 > v21)
          {
            v68 = v21;
          }

          v69 = v68 / (1 << v20);
          v70 = v69 & ~(v69 >> 31);
          if (v70 >= 127)
          {
            v70 = 127;
          }

          v71 = (v87[v70] * ((v70 + 1) - v69) + (v69 - v70) * v87[v70 + 1]) / (v69 - v70 + (v70 + 1) - v69);
          v72 = *v62++;
          v73 = vcvts_n_f32_u32(v72, 0xCuLL);
          v74 = *v64++;
          v67 = v67 + v73 * v71;
          v65 = v65 + vcvts_n_f32_u32(v74, 0xCuLL) * v71;
          v60 += 2 * v53[1];
          --v66;
        }

        while (v66);
      }

      else
      {
        v63 = v59 + 1;
        v67 = 0.0;
        v65 = 0.0;
      }

      v86[v52] = (((v63 * v54) - v58) * v67 + (v58 - (v59 * v54)) * v65) / (v58 - (v59 * v54) + (v63 * v54) - v58) / v56 + v86[v52];
      ++v52;
    }

    while (v52 != 129);
    ++v50;
  }

  while (v50 != 4);
  v75 = 0;
  v76 = 0.0;
  do
  {
    v77 = v86[v75] * 0.25;
    v86[v75] = v77;
    if (v77 <= 0.0)
    {
      v78 = 0.0;
    }

    else
    {
      v78 = 1.0 / v77;
    }

    if (v78 > v76)
    {
      v76 = v78;
    }

    ++v75;
  }

  while (v75 != 129);
  v79 = 0;
  v80 = 255.0 / v76;
  if (v76 <= 0.0)
  {
    v80 = 1.0;
  }

  do
  {
    v81 = v86[v79];
    if (v81 <= 0.0)
    {
      v82 = 1.0;
    }

    else
    {
      v82 = 1.0 / v81;
    }

    *(v8 + 14 + 2 * v79++) = (v80 * v82);
  }

  while (v79 != 129);
  v83 = 128.0;
  v84 = 14;
  v85 = 128.0 / v80;
  do
  {
    LOWORD(v83) = *(v9 + v84);
    v83 = v85 * *&v83;
    *(v9 + v84) = v83;
    v84 += 2;
  }

  while (v84 != 528);
  if (v6)
  {
    *(v6 + 12) = 4096;
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LSCComputeSNFVerticalGains();
    }
  }
}

uint64_t LSCComputeSNFGainsLLM(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v6 = v5;
  v7 = v1;
  v8 = 0;
  v95[4] = *MEMORY[0x277D85DE8];
  v9 = *(v2 + 14);
  v10 = *(v2 + 16);
  v95[0] = v2 + 18;
  v95[1] = v2 + 36;
  v95[2] = v2 + 54;
  v95[3] = v2 + 72;
  memset(v94, 0, 32);
  do
  {
    v94[v8] = v2 + 92 + 2 * *(v95[v8] + 6);
    ++v8;
  }

  while (v8 != 4);
  v11 = vcvtd_n_f64_u32(v10, 1uLL);
  v12 = vcvtd_n_f64_u32(v9, 1uLL);
  v13 = v3 + v12;
  v14 = v4;
  bzero(v93, 0x808uLL);
  bzero(v92, 0x808uLL);
  v15 = (v9 >> 1);
  v16 = log2f(vcvts_n_f32_u32(v9 >> 1, 8uLL));
  v17 = 0;
  v18 = vcvtps_s32_f32(v16);
  v19 = 256 << v18;
  v20 = vcvtd_n_f64_u32(v6, 8uLL);
  do
  {
    v21 = 0;
    v22 = v95[v17];
    v23 = v22[1];
    v24 = v22[7];
    v25 = v24 - 2;
    v26 = v22[8];
    v27 = 2 * v24;
    do
    {
      v28 = 0;
      v29 = vcvts_n_f32_u32(v19 * v21, 8uLL);
      if (v29 >= v15)
      {
        v30 = v15;
      }

      else
      {
        v30 = v29;
      }

      v31 = v93[v21];
      v32 = 1;
      do
      {
        v33 = *(&unk_2249D26B8 + v28);
        v34 = v32;
        v35 = (v13 + (v33 * v30)) * 0.5;
        v36 = (v35 / v23);
        if (v36 <= 1)
        {
          v36 = 1;
        }

        if (v36 >= v25)
        {
          v36 = v25;
        }

        if (v26)
        {
          v37 = (v94[v17] + 2 * v36);
          v38 = 0.0;
          v39 = v26;
          v40 = 0.0;
          do
          {
            v38 = v38 + v20 * (vcvts_n_f32_u32(*v37, 0xCuLL) + -1.0) + 1.0;
            v40 = v40 + v20 * (vcvts_n_f32_u32(v37[v33], 0xCuLL) + -1.0) + 1.0;
            v37 = (v37 + v27);
            --v39;
          }

          while (v39);
        }

        else
        {
          v40 = 0.0;
          v38 = 0.0;
        }

        v32 = 0;
        v31 = ((((v36 + v33) * v23) - v35) * v38 + (v35 - (v36 * v23)) * v40) / (v35 - (v36 * v23) + ((v36 + v33) * v23) - v35) / v26 + v31;
        v28 = 1;
      }

      while ((v34 & 1) != 0);
      v93[v21++] = v31;
    }

    while (v21 != 257);
    ++v17;
  }

  while (v17 != 4);
  v41 = 0;
  v42 = v11;
  v43 = v14 + v42;
  do
  {
    v44 = v93[v41] * 0.125;
    v93[v41] = v44;
    if (v44 <= 0.0)
    {
      v45 = 1.0;
    }

    else
    {
      v45 = 1.0 / v44;
    }

    v92[v41++] = v45;
  }

  while (v41 != 257);
  v46 = 1 << v18;
  bzero(v91, 0x408uLL);
  v47 = v10;
  v48 = v10 - v43;
  if (v43 > v48)
  {
    v48 = v43;
  }

  v49 = log2f((v48 + v48) * 0.0078125);
  v50 = 0;
  v51 = 128 << vcvtps_u32_f32(v49);
  do
  {
    v52 = 0;
    v53 = v95[v50];
    v54 = v53[2];
    v55 = v53[8] - 2;
    result = v53[7];
    do
    {
      v57 = v43 + (vcvts_n_f32_u32(v51 * v52, 7uLL) - (v51 >> 1));
      if (v57 < 0.0)
      {
        v57 = 0.0;
      }

      if (v57 > v47)
      {
        v57 = v47;
      }

      v58 = v57 * 0.5;
      v59 = (v58 / v54) & ~((v58 / v54) >> 31);
      if (v59 >= v55)
      {
        v59 = v55;
      }

      if (result)
      {
        v60 = 0;
        v61 = v94[v50];
        v62 = (v61 + 2 * v59 * result);
        v63 = v59 + 1;
        v64 = (v61 + 2 * (v59 + 1) * result);
        v65 = 0.0;
        v66 = result;
        v67 = 0.0;
        do
        {
          v68 = v60 - v13;
          if (v68 < 0.0)
          {
            v68 = -v68;
          }

          if (v68 > v19)
          {
            v68 = v19;
          }

          v69 = v68 / v46;
          v70 = v69 & ~(v69 >> 31);
          if (v70 >= 127)
          {
            v70 = 127;
          }

          v71 = v70;
          v72 = v92[v70];
          v73 = v70 + 1;
          v74 = v69;
          v75 = v74 - v71;
          v76 = v73 - v74;
          v77 = v72 * v76 + v75 * v92[v73];
          v78 = *v62++;
          v79 = v75 + v76;
          *&v75 = vcvts_n_f32_u32(v78, 0xCuLL);
          v80 = v77 / v79;
          v81 = *v64++;
          v67 = v67 + (v20 * (*&v75 + -1.0) + 1.0) * v80;
          v65 = v65 + (v20 * (vcvts_n_f32_u32(v81, 0xCuLL) + -1.0) + 1.0) * v80;
          v60 += 2 * v53[1];
          --v66;
        }

        while (v66);
      }

      else
      {
        v63 = v59 + 1;
        v67 = 0.0;
        v65 = 0.0;
      }

      v91[v52] = (((v63 * v54) - v58) * v67 + (v58 - (v59 * v54)) * v65) / (v58 - (v59 * v54) + (v63 * v54) - v58) / result + v91[v52];
      ++v52;
    }

    while (v52 != 129);
    ++v50;
  }

  while (v50 != 4);
  v82 = 0;
  v83 = 0.0;
  do
  {
    v84 = v91[v82] * 0.25;
    v91[v82] = v84;
    if (v84 <= 0.0)
    {
      v85 = 0.0;
    }

    else
    {
      v85 = 1.0 / v84;
    }

    if (v85 > v83)
    {
      v83 = v85;
    }

    ++v82;
  }

  while (v82 != 129);
  v86 = 0;
  v87 = 255.0 / v83;
  if (v83 <= 0.0)
  {
    v87 = 1.0;
  }

  do
  {
    v88 = v91[v86];
    if (v88 <= 0.0)
    {
      v89 = 1.0;
    }

    else
    {
      v89 = 1.0 / v88;
    }

    *(v7 + 14 + 2 * v86++) = (v87 * v89);
  }

  while (v86 != 129);
  for (i = 0; i != 257; ++i)
  {
    *(v7 + 272 + 2 * i) = (v92[i] * 4096.0 * 128.0 / v87);
  }

  *(v7 + 12) = v6;
  return result;
}

void LSCComputeFromNVMApple<unsigned char>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5, uint64_t a6, unsigned int a7, int a8, int a9, uint64_t a10, uint64_t a11, unsigned __int16 a12)
{
  v25 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 14) >> 1;
  v16 = *(a1 + 16) >> 1;
  v19 = a8 / 2;
  v20 = a9 / 2;
  if (a3)
  {
    v12 = 0;
    do
    {
      v14[v12] = *(a10 + 4 * v12);
      ++v12;
    }

    while (a3 > v12);
  }

  if (a4)
  {
    v13 = 0;
    do
    {
      v14[v13 + 27] = *(a11 + 4 * v13);
      ++v13;
    }

    while (a4 > v13);
  }

  v21 = a1 + 18;
  v22 = a1 + 36;
  v23 = a1 + 54;
  v24 = a1 + 72;
  v17 = *(a1 + 20);
  v18 = *(a1 + 28);
  operator new[]();
}

uint64_t LSCInterpolateNvm<unsigned char>(uint64_t result, uint64_t a2, unsigned __int16 *a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v69 = result;
  v79[16] = *MEMORY[0x277D85DE8];
  v70 = a3[7];
  if (a3[7])
  {
    v68 = a3[3];
    v15 = a3[2];
    v67 = a3[5];
    v16 = a4 + 56;
    v17 = a4 + 164;
    v73 = a2 - 2;
    v18 = a3[4];
    v19 = a3[6];
    v71 = 0;
    v72 = v19;
    while (!v19)
    {
LABEL_51:
      if (++v71 == v70)
      {
        return result;
      }
    }

    v20 = 0;
    v21 = (v67 + v71 * v68);
    v22 = *(a4 + 40);
    v23 = *(a4 + 42);
    v24 = -3.0;
    result = v69 + 8 * v71 * v19;
    v75 = result;
    while (1)
    {
      v25 = (v18 + v20 * v15);
      if (v22)
      {
        v26 = 0;
        LOWORD(v24) = *a4;
        *&v24 = LODWORD(v24);
        while (v25 >= (*(v16 + 4 * v26) * *&v24))
        {
          if (v22 == ++v26)
          {
            LOWORD(v26) = v22;
            if (v23)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        if (v23)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LOWORD(v26) = 0;
        if (v23)
        {
LABEL_12:
          v27 = 0;
          LOWORD(v24) = *(a4 + 2);
          *&v24 = LODWORD(v24);
          while (v21 >= (*(v17 + 4 * v27) * *&v24))
          {
            if (v23 == ++v27)
            {
              v28 = v23;
              goto LABEL_19;
            }
          }

          v28 = v27;
          goto LABEL_19;
        }
      }

LABEL_17:
      v28 = 0;
LABEL_19:
      v29 = v26;
      v30 = v26 - 1;
      v31 = v30;
      v32 = v28;
      v33 = v28 - 1;
      v34 = v33;
      if (v29 < 2 || (v35 = v32 - 2, v32 < 2) || (v22 + -3.0 >= v31 ? (v36 = a5 == 0) : (v36 = 1), !v36 ? (v37 = v23 + -3.0 < v34) : (v37 = 1), v37))
      {
        if (!v29)
        {
          v31 = 0.0;
        }

        if (!v32)
        {
          v34 = 0.0;
        }

        if (v31 >= (v22 - 2))
        {
          v31 = (v22 - 2);
        }

        v52 = vcvtmd_u64_f64(v31);
        if (v34 >= (v23 - 2))
        {
          v53 = (v23 - 2);
        }

        else
        {
          v53 = v34;
        }

        v54 = vcvtmd_u64_f64(v53);
        v55 = v52 + v54 * v22;
        LOBYTE(v53) = *(a2 + v55);
        v56 = *(a4 + 48);
        LOBYTE(a9) = *(a2 + v55 + 1);
        v57 = v52 + (v54 + 1) * v22;
        LOBYTE(a10) = *(a2 + v57);
        LOBYTE(a11) = *(a2 + v57 + 1);
        LOWORD(a13) = *a4;
        v58 = LODWORD(a13);
        v59 = roundf(*(v16 + 4 * v52) * v58);
        LOWORD(v13) = *(a4 + 2);
        v60 = LODWORD(v13);
        v61 = roundf(*(v17 + 4 * v54) * v60);
        a13 = roundf(*(v16 + 4 * (v52 + 1)) * v58);
        v13 = roundf(*(v17 + 4 * (v54 + 1)) * v60);
        v62 = v25 - v59;
        v63 = a13 - v25;
        v64 = *&a10 / v56 * v63 + v62 * (*&a11 / v56);
        a11 = v62 + v63;
        a10 = v64 / (v62 + v63);
        v65 = (*&v53 / v56 * v63 + v62 * (*&a9 / v56)) / (v62 + v63);
        a9 = v13 - v21;
        v66 = fmin(((v13 - v21) * v65 + (v21 - v61) * a10) / (v21 - v61 + v13 - v21), 1.0);
        v24 = 1.0 / v56;
        if (v66 <= 1.0 / v56)
        {
          v66 = 1.0 / v56;
        }

        *(result + 8 * v20) = v66;
      }

      else
      {
        v38 = 0;
        v39 = *(a4 + 48);
        v40 = v35;
        v41 = (v73 + v29 + v22 * v35);
        v42 = v79;
        do
        {
          v43 = 0;
          v78[v38] = *(v16 + 4 * (v38 + v29 - 2));
          v44 = *(v17 + 4 * (v38 + v40));
          v77[v38] = v44;
          v45 = v41;
          do
          {
            LOBYTE(v44) = *v45;
            v44 = *&v44 / v39;
            v42[v43] = v44;
            v45 += v22;
            ++v43;
          }

          while (v43 != 4);
          ++v38;
          ++v41;
          v42 += 4;
        }

        while (v38 != 4);
        LOWORD(v44) = *a4;
        v46 = v25 / *&v44;
        v47 = *(v16 + 4 * v30);
        v48 = v46 - v47;
        *&v49 = (*(v16 + 4 * v29) - v47);
        v50 = v48 / *&v49;
        LOWORD(v49) = *(a4 + 2);
        bicubicInterpolateNonuniform(v79, v78, v77, v50, (v21 / v49 - *(v17 + 4 * v33)) / (*(v17 + 4 * v32) - *(v17 + 4 * v33)));
        v24 = 1.0 / v39;
        if (v51 >= 1.0)
        {
          v19 = v72;
          result = v75;
          if (v24 < 1.0)
          {
            v24 = 1.0;
          }
        }

        else
        {
          v19 = v72;
          result = v75;
          if (v51 > v24)
          {
            v24 = v51;
          }
        }

        *(result + 8 * v20) = v24;
      }

      if (++v20 == v19)
      {
        goto LABEL_51;
      }
    }
  }

  return result;
}

void LSCComputeFromNVMApple<unsigned short>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5, uint64_t a6, unsigned int a7, int a8, int a9, uint64_t a10, uint64_t a11, unsigned __int16 a12)
{
  v25 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 14) >> 1;
  v16 = *(a1 + 16) >> 1;
  v19 = a8 / 2;
  v20 = a9 / 2;
  if (a3)
  {
    v12 = 0;
    do
    {
      v14[v12] = *(a10 + 4 * v12);
      ++v12;
    }

    while (a3 > v12);
  }

  if (a4)
  {
    v13 = 0;
    do
    {
      v14[v13 + 27] = *(a11 + 4 * v13);
      ++v13;
    }

    while (a4 > v13);
  }

  v21 = a1 + 18;
  v22 = a1 + 36;
  v23 = a1 + 54;
  v24 = a1 + 72;
  v17 = *(a1 + 20);
  v18 = *(a1 + 28);
  operator new[]();
}

uint64_t LSCInterpolateNvm<unsigned short>(uint64_t result, uint64_t a2, unsigned __int16 *a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v70 = result;
  v81[16] = *MEMORY[0x277D85DE8];
  v71 = a3[7];
  if (a3[7])
  {
    v69 = a3[3];
    v15 = a3[2];
    v68 = a3[5];
    v16 = a4 + 56;
    v17 = a4 + 164;
    v18 = a3[4];
    v19 = a3[6];
    v74 = v18;
    v75 = a2 - 4;
    v72 = 0;
    v73 = v19;
    while (!v19)
    {
LABEL_51:
      if (++v72 == v71)
      {
        return result;
      }
    }

    v20 = 0;
    v21 = (v68 + v72 * v69);
    v22 = *(a4 + 40);
    v23 = *(a4 + 42);
    v24 = -3.0;
    result = v70 + 8 * v72 * v19;
    v25 = 2 * v22;
    v77 = result;
    while (1)
    {
      v26 = (v18 + v20 * v15);
      if (v22)
      {
        v27 = 0;
        LOWORD(v24) = *a4;
        *&v24 = LODWORD(v24);
        while (v26 >= (*(v16 + 4 * v27) * *&v24))
        {
          if (v22 == ++v27)
          {
            LOWORD(v27) = v22;
            if (v23)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        if (v23)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LOWORD(v27) = 0;
        if (v23)
        {
LABEL_12:
          v28 = 0;
          LOWORD(v24) = *(a4 + 2);
          *&v24 = LODWORD(v24);
          while (v21 >= (*(v17 + 4 * v28) * *&v24))
          {
            if (v23 == ++v28)
            {
              v29 = v23;
              goto LABEL_19;
            }
          }

          v29 = v28;
          goto LABEL_19;
        }
      }

LABEL_17:
      v29 = 0;
LABEL_19:
      v30 = v27;
      v31 = v27 - 1;
      v32 = v31;
      v33 = v29;
      v34 = v29 - 1;
      v35 = v34;
      if (v30 < 2 || (v36 = v33 - 2, v33 < 2) || (v22 + -3.0 >= v32 ? (v37 = a5 == 0) : (v37 = 1), !v37 ? (v38 = v23 + -3.0 < v35) : (v38 = 1), v38))
      {
        if (!v30)
        {
          v32 = 0.0;
        }

        if (!v33)
        {
          v35 = 0.0;
        }

        if (v32 >= (v22 - 2))
        {
          v32 = (v22 - 2);
        }

        v53 = vcvtmd_u64_f64(v32);
        if (v35 >= (v23 - 2))
        {
          v54 = (v23 - 2);
        }

        else
        {
          v54 = v35;
        }

        v55 = vcvtmd_u64_f64(v54);
        v56 = v53 + v55 * v22;
        LOWORD(v54) = *(a2 + 2 * v56);
        v57 = *(a4 + 48);
        LOWORD(a9) = *(a2 + 2 * (v56 + 1));
        v58 = v53 + (v55 + 1) * v22;
        LOWORD(a10) = *(a2 + 2 * v58);
        LOWORD(a11) = *(a2 + 2 * (v58 + 1));
        LOWORD(a13) = *a4;
        v59 = LODWORD(a13);
        v60 = roundf(*(v16 + 4 * v53) * v59);
        LOWORD(v13) = *(a4 + 2);
        v61 = LODWORD(v13);
        v62 = roundf(*(v17 + 4 * v55) * v61);
        a13 = roundf(*(v16 + 4 * (v53 + 1)) * v59);
        v13 = roundf(*(v17 + 4 * (v55 + 1)) * v61);
        v63 = v26 - v60;
        v64 = a13 - v26;
        v65 = *&a10 / v57 * v64 + v63 * (*&a11 / v57);
        a11 = v63 + v64;
        a10 = v65 / (v63 + v64);
        v66 = (*&v54 / v57 * v64 + v63 * (*&a9 / v57)) / (v63 + v64);
        a9 = v13 - v21;
        v67 = fmin(((v13 - v21) * v66 + (v21 - v62) * a10) / (v21 - v62 + v13 - v21), 1.0);
        v24 = 1.0 / v57;
        if (v67 <= 1.0 / v57)
        {
          v67 = 1.0 / v57;
        }

        *(result + 8 * v20) = v67;
      }

      else
      {
        v39 = 0;
        v40 = *(a4 + 48);
        v41 = v36;
        v42 = (v75 + 2 * v30 + v25 * v36);
        v43 = v81;
        do
        {
          v44 = 0;
          v80[v39] = *(v16 + 4 * (v39 + (v30 - 2)));
          v45 = *(v17 + 4 * (v39 + v41));
          v79[v39] = v45;
          v46 = v42;
          do
          {
            LOWORD(v45) = *v46;
            v45 = *&v45 / v40;
            v43[v44] = v45;
            v46 = (v46 + v25);
            ++v44;
          }

          while (v44 != 4);
          ++v39;
          ++v42;
          v43 += 4;
        }

        while (v39 != 4);
        LOWORD(v45) = *a4;
        v47 = v26 / *&v45;
        v48 = *(v16 + 4 * v31);
        v49 = v47 - v48;
        *&v50 = (*(v16 + 4 * v30) - v48);
        v51 = v49 / *&v50;
        LOWORD(v50) = *(a4 + 2);
        bicubicInterpolateNonuniform(v81, v80, v79, v51, (v21 / v50 - *(v17 + 4 * v34)) / (*(v17 + 4 * v33) - *(v17 + 4 * v34)));
        v24 = 1.0 / v40;
        if (v52 >= 1.0)
        {
          v19 = v73;
          v18 = v74;
          result = v77;
          if (v24 < 1.0)
          {
            v24 = 1.0;
          }
        }

        else
        {
          v19 = v73;
          v18 = v74;
          result = v77;
          if (v52 > v24)
          {
            v24 = v52;
          }
        }

        *(result + 8 * v20) = v24;
      }

      if (++v20 == v19)
      {
        goto LABEL_51;
      }
    }
  }

  return result;
}

void CICComputeFromNVMApple<unsigned char>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 14) >> 1;
  v13 = *(a1 + 16) >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v11[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v11[v10 + 17] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v16 = a1 + 18;
  v17 = a1 + 36;
  v18 = a1 + 54;
  v19 = a1 + 72;
  v20 = a1 + 90;
  v21 = a1 + 108;
  v22 = a1 + 126;
  v23 = a1 + 144;
  v24 = a1 + 162;
  v25 = a1 + 180;
  v26 = a1 + 198;
  v27 = a1 + 216;
  v28 = a1 + 234;
  v29 = a1 + 252;
  v30 = a1 + 270;
  v31 = a1 + 288;
  ldexp(1.0, __e);
  ldexp(1.0, a7 - 1);
  ldexp(1.0, a7);
  v14 = *(v16 + 2);
  v15 = *(v16 + 10);
  operator new[]();
}

void CICInterpolateNvm<unsigned short>(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v80[16] = *MEMORY[0x277D85DE8];
  v71 = a3[7];
  if (a3[7])
  {
    v69 = a3[3];
    v13 = a3[2];
    v14 = a4 + 56;
    v15 = a4 + 124;
    v68 = a3[5];
    v16 = a3[4];
    v17 = a3[6];
    v75 = v16;
    v76 = a2 - 4;
    v74 = v17;
    v72 = 0;
    v73 = v13;
    while (!v17)
    {
LABEL_43:
      if (++v72 == v71)
      {
        return;
      }
    }

    v18 = 0;
    v19 = (v68 + v72 * v69);
    v20 = *(a4 + 40);
    v21 = *(a4 + 42);
    v22 = -3.0;
    v23 = a1 + 8 * v72 * v17;
    v24 = 2 * v20;
    while (1)
    {
      v25 = (v16 + v18 * v13);
      if (v20)
      {
        v26 = 0;
        LOWORD(v22) = *a4;
        *&v22 = LODWORD(v22);
        while (v25 >= (*(v14 + 4 * v26) * *&v22))
        {
          if (v20 == ++v26)
          {
            LOWORD(v26) = v20;
            if (v21)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        if (v21)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LOWORD(v26) = 0;
        if (v21)
        {
LABEL_12:
          v27 = 0;
          LOWORD(v22) = *(a4 + 2);
          *&v22 = LODWORD(v22);
          while (v19 >= (*(v15 + 4 * v27) * *&v22))
          {
            if (v21 == ++v27)
            {
              v28 = v21;
              goto LABEL_19;
            }
          }

          v28 = v27;
          goto LABEL_19;
        }
      }

LABEL_17:
      v28 = 0;
LABEL_19:
      v29 = v26;
      v30 = v26 - 1;
      v31 = v30;
      v32 = v28;
      v33 = v28 - 1;
      v34 = v33;
      if (v29 < 2 || (v35 = v32 - 2, v32 < 2) || (v20 + -3.0 >= v31 ? (v36 = v21 + -3.0 < v34) : (v36 = 1), v36))
      {
        if (!v29)
        {
          v31 = 0.0;
        }

        if (!v32)
        {
          v34 = 0.0;
        }

        if (v31 >= (v20 - 2))
        {
          v31 = (v20 - 2);
        }

        if (v34 >= (v21 - 2))
        {
          v34 = (v21 - 2);
        }

        v51 = vcvtmd_u64_f64(v31);
        v52 = vcvtmd_u64_f64(v34);
        v53 = v51 + v52 * v20;
        LOWORD(v31) = *(a2 + 2 * v53);
        v54 = *(a4 + 48);
        v55 = *&v31 / v54;
        LOWORD(a8) = *(a2 + 2 * (v53 + 1));
        v56 = *&a8 / v54;
        v57 = v51 + (v52 + 1) * v20;
        LOWORD(a9) = *(a2 + 2 * v57);
        v58 = *&a9 / v54;
        LOWORD(a10) = *(a2 + 2 * (v57 + 1));
        v59 = *&a10 / v54;
        LOWORD(a11) = *a4;
        v60 = LODWORD(a11);
        v61 = roundf(*(v14 + 4 * v51) * v60);
        LOWORD(v11) = *(a4 + 2);
        v62 = LODWORD(v11);
        v63 = roundf(*(v15 + 4 * v52) * v62);
        a11 = roundf(*(v14 + 4 * (v51 + 1)) * v60);
        v11 = roundf(*(v15 + 4 * (v52 + 1)) * v62);
        a10 = v25 - v61;
        v64 = a11 - v25;
        v65 = v58 * v64 + a10 * v59;
        a9 = a10 + v64;
        v66 = v65 / (a10 + v64);
        v67 = (v55 * v64 + a10 * v56) / (a10 + v64);
        a8 = v11 - v19;
        v22 = v19 - v63 + v11 - v19;
        *(v23 + 8 * v18) = fmax(fmin(((v11 - v19) * v67 + (v19 - v63) * v66) / v22, 2.0), 0.5);
      }

      else
      {
        v37 = 0;
        v38 = *(a4 + 48);
        v39 = v35;
        v40 = (v76 + 2 * v29 + v24 * v35);
        v41 = v80;
        do
        {
          v42 = 0;
          v79[v37] = *(v14 + 4 * (v37 + (v29 - 2)));
          v43 = *(v15 + 4 * (v37 + v39));
          v78[v37] = v43;
          v44 = v40;
          do
          {
            LOWORD(v43) = *v44;
            v43 = *&v43 / v38;
            v41[v42] = v43;
            v44 = (v44 + v24);
            ++v42;
          }

          while (v42 != 4);
          ++v37;
          ++v40;
          v41 += 4;
        }

        while (v37 != 4);
        LOWORD(v38) = *a4;
        v45 = v25 / *&v38;
        v46 = *(v14 + 4 * v30);
        v47 = v45 - v46;
        *&v48 = (*(v14 + 4 * v29) - v46);
        v49 = v47 / *&v48;
        LOWORD(v48) = *(a4 + 2);
        bicubicInterpolateNonuniform(v80, v79, v78, v49, (v19 / v48 - *(v15 + 4 * v33)) / (*(v15 + 4 * v32) - *(v15 + 4 * v33)));
        v22 = 2.0;
        if (v50 < 2.0)
        {
          v22 = 0.5;
          if (v50 > 0.5)
          {
            v22 = v50;
          }
        }

        *(v23 + 8 * v18) = v22;
        v13 = v73;
        v17 = v74;
        v16 = v75;
      }

      if (++v18 == v17)
      {
        goto LABEL_43;
      }
    }
  }
}

void CICComputeFromNVMApple<unsigned short>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 14) >> 1;
  v13 = *(a1 + 16) >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v11[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v11[v10 + 17] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v16 = a1 + 18;
  v17 = a1 + 36;
  v18 = a1 + 54;
  v19 = a1 + 72;
  v20 = a1 + 90;
  v21 = a1 + 108;
  v22 = a1 + 126;
  v23 = a1 + 144;
  v24 = a1 + 162;
  v25 = a1 + 180;
  v26 = a1 + 198;
  v27 = a1 + 216;
  v28 = a1 + 234;
  v29 = a1 + 252;
  v30 = a1 + 270;
  v31 = a1 + 288;
  ldexp(1.0, __e);
  ldexp(1.0, a7 - 1);
  ldexp(1.0, a7);
  v14 = *(v16 + 2);
  v15 = *(v16 + 10);
  operator new[]();
}

void GICComputeFromNVMApple<unsigned char>(unsigned __int16 *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v19 = a1[7] >> 1;
  v20 = a1[8] >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v18[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v18[v10 + 27] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v11 = a1 + 9;
  v12 = a1[16];
  v13 = a1[17];
  if (((v12 * v13) & 0xFFFF0000) == 0)
  {
    a1[13] = 0;
    a1[22] = 0;
  }

  v14 = 1;
  v15 = a1 + 9;
  while (1)
  {
    v16 = v14;
    v17 = v15[7];
    if (v17 != v12)
    {
      break;
    }

    if (v15[8] != v13)
    {
      GICComputeFromNVMApple<unsigned char>();
    }

    if (*(v15 + 3) % (v13 * v17))
    {
      GICComputeFromNVMApple<unsigned char>();
    }

    v14 = 0;
    v15 = a1 + 18;
    if ((v16 & 1) == 0)
    {
      ldexp(1.0, __e);
      ldexp(1.0, a7 - 1);
      ldexp(1.0, a7);
      v21 = *(v11 + 1);
      v22 = *(v11 + 5);
      operator new[]();
    }
  }

  GICComputeFromNVMApple<unsigned char>();
}

uint64_t GICInterpolateNvm<short>(uint64_t result, uint64_t a2, unsigned __int16 *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v88 = result;
  v100[16] = *MEMORY[0x277D85DE8];
  v89 = a3[7];
  if (a3[7])
  {
    v90 = 0;
    v87 = a3[3];
    v13 = a3[2];
    v14 = a4 + 7;
    v15 = a4 + 164;
    v94 = a2 - 4;
    v95 = a2 + 2;
    v86 = a3[5];
    v16 = a3[4];
    result = a3[6];
    v96 = a2;
    v92 = result;
    v93 = v16;
    v91 = v13;
    while (!result)
    {
LABEL_77:
      if (++v90 == v89)
      {
        return result;
      }
    }

    v17 = 0;
    v18 = (v86 + v90 * v87);
    v19 = *(a4 + 20);
    v20 = *(a4 + 21);
    v21 = v20;
    v22 = v19 - 1;
    v23 = v88 + 8 * v90 * result;
    v97 = v20 - 1;
    v24 = 2 * v19;
    while (1)
    {
      v25 = (v16 + v17 * v13);
      if (v19)
      {
        break;
      }

      LOWORD(v26) = 0;
      if (!v20)
      {
        goto LABEL_17;
      }

LABEL_12:
      v27 = 0;
      LOWORD(v21) = *(a4 + 1);
      *&v21 = LODWORD(v21);
      while (v18 >= (*&v15[4 * v27] * *&v21))
      {
        if (v20 == ++v27)
        {
          LOWORD(v27) = v20;
          break;
        }
      }

LABEL_18:
      v28 = v26 - 1;
      v29 = v28;
      v30 = v27;
      v31 = v27 - 1;
      v32 = v31;
      if (v26 && v27 && (v19 + -2.0 >= v29 ? (v33 = v20 + -2.0 < v32) : (v33 = 1), !v33))
      {
        if (v26 >= 2u)
        {
          v34 = v27 - 2;
          if (v27 >= 2u && v19 + -3.0 >= v29 && v20 + -3.0 >= v32)
          {
            v36 = 0;
            v37 = a4[6];
            v38 = v34;
            v39 = (v94 + 2 * v26 + v24 * v34);
            v40 = v100;
            do
            {
              v41 = 0;
              v99[v36] = *(v14 + v36 + v26 - 2);
              v98[v36] = *&v15[4 * v36 + 4 * v38];
              v42 = v39;
              do
              {
                v40[v41] = *v42 / v37;
                v42 = (v42 + v24);
                ++v41;
              }

              while (v41 != 4);
              ++v36;
              ++v39;
              v40 += 4;
            }

            while (v36 != 4);
            LOWORD(v37) = *a4;
            v43 = v25 / *&v37;
            v44 = *(v14 + v28);
            v45 = v43 - v44;
            *&v46 = (*(v14 + v26) - v44);
            v47 = v45 / *&v46;
            LOWORD(v46) = *(a4 + 1);
            bicubicInterpolateNonuniform(v100, v99, v98, v47, (v18 / v46 - *&v15[4 * v31]) / (*&v15[4 * v30] - *&v15[4 * v31]));
            v21 = 0.125;
            if (v48 < 0.125)
            {
              v21 = -0.125;
              if (v48 > -0.125)
              {
                v21 = v48;
              }
            }

            *(v23 + 8 * v17) = v21;
            v13 = v91;
            result = v92;
            a2 = v96;
            v16 = v93;
            v22 = v19 - 1;
            goto LABEL_71;
          }
        }

        if (v29 >= (v19 - 2))
        {
          v29 = (v19 - 2);
        }

        if (v32 >= (v20 - 2))
        {
          v32 = (v20 - 2);
        }

        v55 = vcvtmd_u64_f64(v29);
        v56 = vcvtmd_u64_f64(v32);
        v57 = v55 + v56 * v19;
        v58 = a4[6];
        v59 = *(a2 + 2 * v57) / v58;
        v60 = *(a2 + 2 * (v57 + 1)) / v58;
        LOWORD(a11) = *a4;
        v61 = LODWORD(a11);
        v62 = roundf(*(v14 + v55) * v61);
        LOWORD(v11) = *(a4 + 1);
        v63 = LODWORD(v11);
        v64 = roundf(*&v15[4 * v56] * v63);
        a11 = roundf(*(v14 + v55 + 1) * v61);
        v11 = roundf(*&v15[4 * v56 + 4] * v63);
        v65 = v25 - v62;
        v66 = a11 - v25;
        v67 = (*(a2 + 2 * (v55 + (v56 + 1) * v19)) / v58 * v66 + v65 * (*(a2 + 2 * (v55 + (v56 + 1) * v19 + 1)) / v58)) / (v65 + v66);
        v68 = (v59 * v66 + v65 * v60) / (v65 + v66);
        v69 = v18 - v64;
        v70 = v11 - v18;
      }

      else
      {
        if (!v26)
        {
          v29 = 0.0;
        }

        if (!v27)
        {
          v32 = 0.0;
        }

        if (v29 >= (v19 - 1))
        {
          v29 = (v19 - 1);
        }

        if (v32 >= (v20 - 1))
        {
          v32 = (v20 - 1);
        }

        v49 = vcvtmd_u64_f64(v29);
        v50 = vcvtmd_u64_f64(v32);
        if (!(v49 | v50))
        {
          v51 = *(v95 + 2 * v19);
LABEL_69:
          v21 = a4[6];
          v74 = v51 / v21;
          goto LABEL_70;
        }

        if (v49)
        {
          v52 = 0;
        }

        else
        {
          v52 = v97 == v50;
        }

        if (v52)
        {
          v54 = (v20 - 1) * v19 + 1;
          goto LABEL_68;
        }

        if (v22 == v49 && v50 == 0)
        {
          v54 = v19 - 1 + v19;
          goto LABEL_68;
        }

        if (v22 == v49)
        {
          if (v97 == v50)
          {
            v54 = (v20 - 1) * v19 + v19 - 1;
LABEL_68:
            v51 = *(a2 + 2 * v54);
            goto LABEL_69;
          }

          v75 = *a4;
          v76 = *(a4 + 1);
        }

        else
        {
          v75 = *a4;
          v76 = *(a4 + 1);
          if (v49)
          {
            v77 = roundf(*(v14 + v49) * v75);
            v78 = roundf(*&v15[4 * v50] * v76);
            v79 = roundf(*(v14 + v49 + 1) * v75);
            a11 = roundf(*&v15[4 * v50 + 4] * v76);
            v80 = (*(a2 + 2 * (v49 + v50 * v19)) / a4[6] * (v79 - v25) + (v25 - v77) * (*(a2 + 2 * (v49 + v50 * v19 + 1)) / a4[6])) / (v25 - v77 + v79 - v25);
            v71 = (a11 - v18) * v80 + (v18 - v78) * v80;
            v72 = v18 - v78 + a11 - v18;
            goto LABEL_65;
          }
        }

        v81 = a4[6];
        v82 = *(a2 + 2 * (v49 + (v50 + 1) * v19));
        v83 = *(a2 + 2 * (v49 + v50 * v19)) / v81;
        a11 = roundf(*&v15[4 * v50 + 4] * v76);
        v84 = v25 - roundf(*(v14 + v49) * v75);
        v85 = roundf(*(v14 + v49 + 1) * v75) - v25;
        v67 = (v82 / v81 * v85 + v84 * (v82 / v81)) / (v84 + v85);
        v68 = (v83 * v85 + v84 * v83) / (v84 + v85);
        v69 = v18 - roundf(*&v15[4 * v50] * v76);
        v70 = a11 - v18;
      }

      v71 = v70 * v68 + v69 * v67;
      v72 = v69 + v70;
LABEL_65:
      v73 = fmin(v71 / v72, 0.125);
      v21 = -0.125;
      v74 = fmax(v73, -0.125);
LABEL_70:
      *(v23 + 8 * v17) = v74;
LABEL_71:
      if (++v17 == result)
      {
        goto LABEL_77;
      }
    }

    v26 = 0;
    LOWORD(v21) = *a4;
    *&v21 = LODWORD(v21);
    while (v25 >= (*(v14 + v26) * *&v21))
    {
      if (v19 == ++v26)
      {
        LOWORD(v26) = v19;
        if (v20)
        {
          goto LABEL_12;
        }

        goto LABEL_17;
      }
    }

    if (v20)
    {
      goto LABEL_12;
    }

LABEL_17:
    LOWORD(v27) = 0;
    goto LABEL_18;
  }

  return result;
}

void GICComputeFromNVMApple<unsigned short>(unsigned __int16 *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v19 = a1[7] >> 1;
  v20 = a1[8] >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v18[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v18[v10 + 27] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v11 = a1 + 9;
  v12 = a1[16];
  v13 = a1[17];
  if (((v12 * v13) & 0xFFFF0000) == 0)
  {
    a1[13] = 0;
    a1[22] = 0;
  }

  v14 = 1;
  v15 = a1 + 9;
  while (1)
  {
    v16 = v14;
    v17 = v15[7];
    if (v17 != v12)
    {
      break;
    }

    if (v15[8] != v13)
    {
      GICComputeFromNVMApple<unsigned char>();
    }

    if (*(v15 + 3) % (v13 * v17))
    {
      GICComputeFromNVMApple<unsigned char>();
    }

    v14 = 0;
    v15 = a1 + 18;
    if ((v16 & 1) == 0)
    {
      ldexp(1.0, __e);
      ldexp(1.0, a7 - 1);
      ldexp(1.0, a7);
      v21 = *(v11 + 1);
      v22 = *(v11 + 5);
      operator new[]();
    }
  }

  GICComputeFromNVMApple<unsigned char>();
}

H16ISP *H16ISP::createExtrinsicsArray(H16ISP *this, double (*a2)[3], double *a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 24; j += 8)
    {
      H16ISP::addNumberToArray(Mutable, v5, *(this + j));
    }

    H16ISP::addNumberToArray(Mutable, v5, (*a2)[i]);
    this = (this + 24);
  }

  return Mutable;
}

CFMutableArrayRef H16ISP::FaceLandmarkCreateMultiPointRepresentationWithRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v7 = Mutable;
  if (Mutable)
  {
    H16ISP::FaceLandmarkFillMultiPointRepresentationWithRangeInternal(Mutable, a1, v4, v3);
  }

  return v7;
}

void H16ISP::FaceLandmarkFillMultiPointRepresentationWithRangeInternal(__CFArray *a1, uint64_t a2, unsigned int a3, int a4)
{
  v4 = a4;
  if (a3 + a4 > a3)
  {
    v6 = (a2 + 8 * a3);
    do
    {
      v7 = vcvtq_f64_f32(*v6);
      y = v7.y;
      DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v7);
      if (DictionaryRepresentation)
      {
        v10 = DictionaryRepresentation;
        CFArrayAppendValue(a1, DictionaryRepresentation);
        CFRelease(v10);
      }

      ++v6;
      --v4;
    }

    while (v4);
  }
}

void H16ISP::addNumberToArray(H16ISP *this, __CFArray *a2, double a3)
{
  valuePtr = a3;
  v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  CFArrayAppendValue(this, v4);
  CFRelease(v4);
}

unint64_t PDAF::BinPixelCoordinates(int *a1, _DWORD *a2)
{
  v2 = a2[1];
  if (*a2)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    PDAF::BinPixelCoordinates();
  }

  v4 = 2 * v2;
  v5 = a1[1];
  if (*a1 >= 0)
  {
    v6 = *a1 & 1;
  }

  else
  {
    v6 = -(*a1 & 1);
  }

  v7 = a1[1] & 1;
  if (v5 < 0)
  {
    v7 = -v7;
  }

  return (v6 + 2 * (*a1 / (2 * *a2))) | ((v7 + 2 * (v5 / v4)) << 32);
}

float PDAF::EstimateCurve(uint64_t a1, unint64_t a2, float a3)
{
  if (a2 < 2)
  {
    v4 = 1;
  }

  else
  {
    v3 = (a1 + 8);
    v4 = 1;
    while (*v3 <= a3)
    {
      ++v4;
      v3 += 2;
      if (a2 == v4)
      {
        v4 = a2;
        break;
      }
    }
  }

  if (v4 >= a2 - 1)
  {
    v4 = a2 - 1;
  }

  v5 = (a1 + 8 * v4);
  v6 = *(v5 - 2);
  if (*v5 == v6)
  {
    return *(v5 - 1);
  }

  v8 = (a3 - v6) / (*v5 - v6);
  if (v8 <= 1.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = v8 < 0.0;
  v11 = 0.0;
  if (!v10)
  {
    v11 = v9;
  }

  return ((1.0 - v11) * *(v5 - 1)) + (v11 * v5[1]);
}

float PDAF::LinearInterp(uint64_t a1, unint64_t a2, float a3)
{
  if (a2 < 2)
  {
    v4 = 1;
  }

  else
  {
    v3 = (a1 + 8);
    v4 = 1;
    while (*v3 <= a3)
    {
      ++v4;
      v3 += 2;
      if (a2 == v4)
      {
        v4 = a2;
        break;
      }
    }
  }

  if (v4 >= a2 - 1)
  {
    v4 = a2 - 1;
  }

  v5 = (a1 + 8 * v4);
  v6 = *(v5 - 2);
  if (*v5 == v6)
  {
    return *(v5 - 1);
  }

  v8 = (a3 - v6) / (*v5 - v6);
  if (v8 <= 1.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = v8 < 0.0;
  v11 = 0.0;
  if (!v10)
  {
    v11 = v9;
  }

  return ((1.0 - v11) * *(v5 - 1)) + (v11 * v5[1]);
}

uint64_t PDAF::FocusingBehavior::print(PDAF::FocusingBehavior *this)
{
  v2 = MEMORY[0x277D85DF8];
  if (*this == 1)
  {
    v3 = *MEMORY[0x277D85DF8];
    v4 = "focusingMode            = LOCK_WHEN_DONE\n";
    v5 = 41;
    goto LABEL_5;
  }

  if (!*this)
  {
    v3 = *MEMORY[0x277D85DF8];
    v4 = "focusingMode            = CONTINUOUS\n";
    v5 = 37;
LABEL_5:
    fwrite(v4, v5, 1uLL, v3);
  }

  v6 = 1;
  fwrite("focusMethods =\n", 0xFuLL, 1uLL, *v2);
  v7 = 0;
  do
  {
    v8 = v6;
    v9 = *(this + v7 + 1);
    if (v9 <= 5)
    {
      fprintf(*v2, off_27853B778[v9], v7);
    }

    v6 = 0;
    v7 = 1;
  }

  while ((v8 & 1) != 0);
  result = fprintf(*v2, "lensMotionSpeedHint     = %u\n", *(this + 12));
  if (*this)
  {
    if (*this != 1)
    {
      return result;
    }

    fwrite("lockWhenDoneMode =\n", 0x13uLL, 1uLL, *v2);
    fprintf(*v2, "timeLimit                     = %u\n", *(this + 4));
    fprintf(*v2, "minScanCoverage               = %u\n", *(this + 5));
    v11 = 24;
  }

  else
  {
    fwrite("continuousMode =\n", 0x11uLL, 1uLL, *v2);
    v11 = 16;
  }

  return fprintf(*v2, "minOnTargetDurationToBeStable = %u\n", *(this + v11));
}

void PDAF::MiniMap::set(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, _OWORD *a6, char a7, char a8, void *__src)
{
  if (!__src)
  {
    PDAF::MiniMap::set();
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = *a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = *a6;
  *(a1 + 48) = a7;
  *(a1 + 49) = a8;
  v10 = *(a4 + 4) * a5;
  if (v10 >= 0x1801)
  {
    *(a1 + 20) = 0x1800 / a5;
    v10 = 0x1800 / a5 * a5;
    *(a1 + 44) = (*(a1 + 44) * (0x1800 / a5) + *(a4 + 4) / 2) / *(a4 + 4);
  }

  if (!v10 || (memcpy((a1 + 50), __src, v10), v10 >> 11 <= 2))
  {

    bzero((a1 + v10 + 50), 6144 - v10);
  }
}

void PDAF::MiniMap::clear(PDAF::MiniMap *this, int a2)
{
  *(this + 24) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    bzero(this + 50, 0x1800uLL);
  }
}

__n128 ISPExclaveSensorMetadata::ISPExclaveSensorMetadata(uint64_t a1, _OWORD *a2, __int128 *a3, __n128 *a4)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 32) = v5;
  v8 = *a3;
  *(a1 + 108) = *(a3 + 2);
  *(a1 + 92) = v8;
  result = *a4;
  *(a1 + 116) = *a4;
  return result;
}

{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 32) = v5;
  v8 = *a3;
  *(a1 + 108) = *(a3 + 2);
  *(a1 + 92) = v8;
  result = *a4;
  *(a1 + 116) = *a4;
  return result;
}

void H16ISP::H16ISPGraphExclaveSyncNode::H16ISPGraphExclaveSyncNode(H16ISP::H16ISPGraphExclaveSyncNode *this, H16ISP::H16ISPDevice *a2)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 24);
  *v3 = &unk_2838148A0;
  *(v3 + 80) = a2;
  *(v3 + 88) = 0x4059000000000000;
  *(v3 + 96) = 6;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 104) = 0;
}

{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 24);
  *v3 = &unk_2838148A0;
  *(v3 + 80) = a2;
  *(v3 + 88) = 0x4059000000000000;
  *(v3 + 96) = 6;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 104) = 0;
}

void H16ISP::H16ISPGraphExclaveSyncNode::~H16ISPGraphExclaveSyncNode(H16ISP::H16ISPGraphExclaveSyncNode *this)
{
  v6 = *MEMORY[0x277D85DE8];
  *this = &unk_2838148A0;
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "~H16ISPGraphExclaveSyncNode";
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_INFO, "%s - [Exclaves]: Sync Node being deconstructed!\n", &v4, 0xCu);
  }

  (*(*this + 56))(this);
  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  H16ISP::H16ISPGraphExclaveSyncNode::~H16ISPGraphExclaveSyncNode(this);

  JUMPOUT(0x22AA55B60);
}

void sub_22495B2F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t H16ISP::H16ISPGraphExclaveSyncNode::onActivate(H16ISP::H16ISPGraphExclaveSyncNode *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "onActivate";
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_INFO, "%s - [Exclaves]: Sync node activated!\n", &v3, 0xCu);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveSyncNode::onDeactivate(H16ISP::H16ISPGraphExclaveSyncNode *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "onDeactivate";
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_INFO, "%s - [Exclaves]: Sync node being deactivated!\n", &v5, 0xCu);
  }

  v3 = *(this + 13);
  if (v3 != *(this + 14))
  {
    do
    {
      H16ISP::H16ISPFilterGraphMessage::Release(*v3);
      v3 += 2;
    }

    while (v3 != *(this + 14));
    v3 = *(this + 13);
  }

  *(this + 14) = v3;
  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveSyncNode::onMessageProcessing(H16ISP::H16ISPDevice **this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  rep = 0;
  pthread_mutex_lock((a2 + 8));
  if (H16ISP::H16ISPDevice::enabledExclaveDebug(this[10]))
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a2 + 90);
      *buf = 136315650;
      v48 = "onMessageProcessing";
      v49 = 1024;
      v50 = v5;
      v51 = 1024;
      v52 = v5;
      _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "%s - [Exclaves]: Sync Node current message requestID=0x%08X, frameID=%U\n", buf, 0x18u);
    }
  }

  v7 = this[13];
  v6 = this + 13;
  if (v7 == this[14])
  {
LABEL_11:
    pthread_mutex_unlock((a2 + 8));
    pthread_mutex_lock((a2 + 8));
    ++*a2;
    pthread_mutex_unlock((a2 + 8));
    v15.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    rep = v15.__d_.__rep_;
    v17 = this[14];
    v16 = this[15];
    if (v17 >= v16)
    {
      v19 = (v17 - *v6) >> 4;
      v20 = v19 + 1;
      if ((v19 + 1) >> 60)
      {
        std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
      }

      v21 = v16 - *v6;
      if (v21 >> 3 > v20)
      {
        v20 = v21 >> 3;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF0)
      {
        v22 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        std::allocator<H16ISP::ExclaveMessageStruct>::allocate_at_least[abi:ne200100]((this + 13), v22);
      }

      v28 = (16 * v19);
      v28->__d_.__rep_ = a2;
      v28[1].__d_.__rep_ = v15.__d_.__rep_;
      v18 = (16 * v19 + 16);
      v29 = this[13];
      v30 = (this[14] - v29);
      v31 = (16 * v19 - v30);
      memcpy(v31, v29, v30);
      v32 = this[13];
      this[13] = v31;
      this[14] = v18;
      this[15] = 0;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      v17->__d_.__rep_ = a2;
      v17[1].__d_.__rep_ = v15.__d_.__rep_;
      v18 = &v17[2];
    }

    this[14] = v18;
    H16ISP::H16ISPGraphExclaveSyncNode::cleanupMessageList(this, &rep);
    return 3758097130;
  }

  v8 = (v7 + 16);
  while (1)
  {
    v9 = *v7;
    pthread_mutex_lock((*v7 + 8));
    if (*(v9 + 360) == *(a2 + 180))
    {
      v14 = *(v9 + 387);
      if (*(a2 + 387) != v14)
      {
        break;
      }
    }

    pthread_mutex_unlock((*v7 + 8));
    v7 = (v7 + 16);
    v8 = (v8 + 16);
    if (v7 == this[14])
    {
      goto LABEL_11;
    }
  }

  if ((v14 & 1) == 0)
  {
    v23 = *(a2 + 47);
    if (v23)
    {
      LOWORD(v10) = v23[46];
      v24 = v10;
      LOWORD(v11) = v23[47];
      v25 = v11;
      LOWORD(v12) = v23[48];
      v26 = v12;
      LOWORD(v13) = v23[49];
      v27 = v13;
LABEL_32:
      v35 = *v7;
      *(v9 + 88) = *(a2 + 11);
      *(v9 + 392) = v24;
      *(v9 + 400) = v25;
      *(v9 + 408) = v26;
      *(v9 + 416) = v27;
      v36 = v35;
      goto LABEL_33;
    }
  }

  v34 = *(v9 + 376);
  if (v34)
  {
    LOWORD(v10) = v34[46];
    v24 = v10;
    LOWORD(v11) = v34[47];
    v25 = v11;
    LOWORD(v12) = v34[48];
    v26 = v12;
    LOWORD(v13) = v34[49];
    v27 = v13;
    if ((v14 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v24 = *MEMORY[0x277CBF398];
    v25 = *(MEMORY[0x277CBF398] + 8);
    v26 = *(MEMORY[0x277CBF398] + 16);
    v27 = *(MEMORY[0x277CBF398] + 24);
    if ((v14 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  *(a2 + 11) = *(v9 + 88);
  *(a2 + 49) = v24;
  *(a2 + 50) = v25;
  *(a2 + 51) = v26;
  *(a2 + 52) = v27;
  v35 = *v7;
  v36 = a2;
LABEL_33:
  pthread_mutex_unlock((v35 + 8));
  pthread_mutex_unlock((a2 + 8));
  v37 = this[4];
  v38 = this[5];
  v39 = (v37 + 8 * (this[7] >> 9));
  if (v38 == v37)
  {
    v40 = 0;
  }

  else
  {
    v40 = (*v39 + 8 * (this[7] & 0x1FF));
  }

  while (1)
  {
    if (v38 == v37)
    {
      v43 = 0;
    }

    else
    {
      v42 = this[7] + this[8];
      v43 = *(v37 + ((v42 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v42 & 0x1FF);
    }

    if (v40 == v43)
    {
      break;
    }

    (*(**v40 + 32))(*v40, v36);
    if ((++v40 - *v39) == 4096)
    {
      v41 = v39[1];
      ++v39;
      v40 = v41;
    }

    v37 = this[4];
    v38 = this[5];
  }

  H16ISP::H16ISPFilterGraphMessage::Release(*v7);
  v44 = this[14];
  v45 = v44 - v8;
  if (v44 != v8)
  {
    memmove(v8 - 16, v8, v44 - v8);
  }

  this[14] = (v8 + v45 - 16);
  return 3758097130;
}

void H16ISP::H16ISPGraphExclaveSyncNode::cleanupMessageList(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 104);
  v3 = *(a1 + 112);
  if (v4 == v3)
  {
    v9 = *(a1 + 104);
  }

  else
  {
    v6 = (v4 + 2);
    v7 = -16 - v4;
    v8 = MEMORY[0x277D86220];
    v9 = *(a1 + 104);
    do
    {
      if ((*(v9 + 1) - *a2) / 1000000.0 > *(a1 + 88))
      {
        v10 = *v9;
        pthread_mutex_lock((*v9 + 8));
        v11 = *(v10 + 360);
        pthread_mutex_unlock((*v9 + 8));
        H16ISP::H16ISPFilterGraphMessage::Release(*v9);
        v12 = *(a1 + 112);
        v13 = &v12[v7];
        if (v6 != v12)
        {
          memmove(v6 - 16, v6, &v12[v7]);
        }

        *(a1 + 112) = &v13[(v6 - 16)];
        v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v8)
        {
          v14 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v14;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v26 = "cleanupMessageList";
          v27 = 1024;
          v28 = v11;
          _os_log_error_impl(&dword_2247DB000, v14, OS_LOG_TYPE_ERROR, "%s - [Exclaves]: Message Drop Timeout!, requestid=0x%0X\n", buf, 0x12u);
        }
      }

      v9 += 16;
      v3 = *(a1 + 112);
      v6 += 16;
      v7 -= 16;
    }

    while (v9 != v3);
    v4 = *(a1 + 104);
  }

  if (*(a1 + 96) < ((v9 - v4) >> 4) && v4 != v3)
  {
    v16 = -16 - v4;
    v17 = MEMORY[0x277D86220];
    v18 = v4;
    do
    {
      v19 = *v4;
      pthread_mutex_lock((*v4 + 8));
      v20 = *(v19 + 90);
      pthread_mutex_unlock((*v4 + 8));
      H16ISP::H16ISPFilterGraphMessage::Release(*v4);
      v21 = *(a1 + 112);
      v22 = v21 + v16;
      if (v18 + 2 != v21)
      {
        memmove(v18, v18 + 2, v21 + v16);
      }

      *(a1 + 112) = v18 + v22;
      v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v17)
      {
        v23 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v23;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "cleanupMessageList";
        v27 = 1024;
        v28 = v20;
        _os_log_error_impl(&dword_2247DB000, v23, OS_LOG_TYPE_ERROR, "%s - [Exclaves]: Message Drop due to above queue size!, requestid=0x%0X\n", buf, 0x12u);
      }

      v24 = *(a1 + 112);
      if (*(a1 + 96) >= ((v24 - *(a1 + 104)) >> 4))
      {
        break;
      }

      v4 += 2;
      v18 += 2;
      v16 -= 16;
    }

    while (v4 != v24);
  }
}

void std::allocator<H16ISP::ExclaveMessageStruct>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ImageUtils::Cornerfinder(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a1 + 20);
  v15 = *(a1 + 8);
  Matrix<double>::Resize(a5, 2, v14);
  memcpy(*(a5 + 8), v15, 8 * (2 * v14));
  Matrix<BOOL>::Resize(a6, 1, v14);
  Matrix<BOOL>::Resize(a7, 1, v14);
  Matrix<BOOL>::Resize(a8, 1, v14);
  v27 = a3;
  LODWORD(a6) = (2 * a3) | 1;
  Matrix<double>::Matrix(v33, (2 * a4) | 1, a6);
  Matrix<double>::Matrix(v31, (2 * a4) | 1, a6);
  v28 = a6;
  Matrix<double>::Matrix(v29, (2 * a4) | 1, a6);
  v16 = -a4;
  if (-a4 <= a4)
  {
    v17 = -a3;
    v18 = v30;
    v19 = v32;
    v20 = v34;
    v21 = a4;
    do
    {
      v22 = a4;
      if (v17 <= v27)
      {
        v23 = exp(-(v16 / v21 * (v16 / v21)));
        v24 = v28;
        do
        {
          *v20++ = v23 * exp(-(v17 / v27 * (v17 / v27)));
          *v19++ = v17;
          *v18++ = v16;
          ++v17;
          --v24;
        }

        while (v24);
      }

      a4 = v22;
      v25 = v16++ == v22;
      v17 = -v27;
    }

    while (!v25);
  }

  if (v14)
  {
    operator new[]();
  }

  Matrix<double>::~Matrix(v29);
  Matrix<double>::~Matrix(v31);
  return Matrix<double>::~Matrix(v33);
}

void sub_22495C468(_Unwind_Exception *a1)
{
  Matrix<double>::~Matrix(v1 - 216);
  Matrix<double>::~Matrix(v1 - 184);
  _Unwind_Resume(a1);
}

double ImageUtils::DetectArucoMarker(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 20);
  v5 = *(a1 + 8);
  Matrix<BOOL>::Matrix(v22, v4, v3);
  v6 = v23;
  ImageUtils::OtsuThreshold(a1);
  v8 = v3 * v4;
  if (v3 * v4)
  {
    do
    {
      v9 = *v5++;
      *v6++ = v9 > v7;
      --v8;
    }

    while (v8);
  }

  v10 = 0;
  v11 = vcvtmd_u64_f64(v4 / 7.0);
  v12 = v3 * v11;
  v13 = v3 - v11;
LABEL_4:
  v14 = 0;
  if (v10 == 6 || v10 == 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 6;
  }

  while (1)
  {
    if (v11)
    {
      v17 = 0;
      v18 = 0;
      v19 = &v23[(v12 * v10) + v14 * v11];
      do
      {
        v20 = 0;
        do
        {
          v18 += v19[v20++];
        }

        while (v11 != v20);
        ++v17;
        v19 += v11 + v13;
      }

      while (v17 != v11);
      if (v18 > (v11 * v11) >> 1)
      {
        break;
      }
    }

    v14 += v16;
    if (v14 > 6)
    {
      if (++v10 == 7)
      {
        operator new[]();
      }

      goto LABEL_4;
    }
  }

  Matrix<BOOL>::~Matrix(v22);
  return -1.0;
}

void sub_22495C920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  Matrix<BOOL>::~Matrix(va);
  Matrix<BOOL>::~Matrix(va1);
  Matrix<BOOL>::~Matrix(v16 - 96);
  _Unwind_Resume(a1);
}

uint64_t CheckParity(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  Matrix<BOOL>::Resize(a2, *(a1 + 16), *(a1 + 20));
  v4 = 0;
  v5 = *(a2 + 8);
  v6 = *(v3 + 9);
  *v5 = *v3;
  *(v5 + 9) = v6;
  v7 = v5 + 2;
  v8 = 5;
  do
  {
    v9 = (*v3 == v3[1]) | (2 * (v3[2] != v3[3])) | (4 * ((v3[2] ^ v3[1]) != v3[4]));
    if (v9 > 3)
    {
      if (v9 <= 5)
      {
        ++v4;
        if (v9 == 4)
        {
          v7[2] ^= 1u;
        }

        else
        {
          *(v7 - 1) ^= 1u;
        }

        goto LABEL_15;
      }

      if (v9 == 6)
      {
        ++v4;
        *v7 ^= 1u;
        goto LABEL_15;
      }

LABEL_13:
      v4 += 2;
      goto LABEL_15;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        ++v4;
        v7[1] ^= 1u;
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    if (v9)
    {
      ++v4;
      *(v7 - 2) ^= 1u;
    }

LABEL_15:
    v3 += 5;
    v7 += 5;
    --v8;
  }

  while (v8);
  if (v4 == 1)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void ImageUtils::GetInitialGuessLineScan(uint64_t *a1, uint64_t *a2, uint64_t a3, double *a4, int32x2_t *a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a3 + 20);
  v14 = *(a3 + 8);
  Matrix<double>::Matrix(&v99, 2, *(a3 + 20));
  v99 = &unk_283813CF8;
  v15 = v100;
  Matrix<BOOL>::Matrix(&v95, 1, v13);
  v95 = &unk_283814388;
  bzero(v96, (v98 * v97));
  if (v13)
  {
    v16 = 0;
    v17 = 0;
    v18 = v96;
    v19 = v96 + 1;
    v20 = v13 - 1;
    v21 = v14 + 1;
    do
    {
      if (v18[v16] == 1)
      {
        ++v16;
      }

      else
      {
        v22 = 1;
        v18[v16] = 1;
        v23 = *v14;
        v24 = v14[v13];
        if (++v16 >= v13)
        {
          v29 = v14[v13];
          v28 = *v14;
        }

        else
        {
          v25 = v21;
          v26 = v20;
          v27 = v19;
          v28 = *v14;
          v29 = v14[v13];
          do
          {
            v30 = *v25;
            v31 = v25[v13];
            if (sqrt((v23 - *v25) * (v23 - *v25) + (v24 - v31) * (v24 - v31)) <= 5.0)
            {
              *v27 = 1;
              v28 = v28 + v30;
              v29 = v29 + v31;
              ++v22;
            }

            ++v27;
            ++v25;
            --v26;
          }

          while (v26);
        }

        if (v22 >= a6)
        {
          *v15 = v28 / v22;
          v15[v13] = v29 / v22;
          ++v15;
          ++v17;
        }
      }

      ++v14;
      ++v19;
      --v20;
      ++v21;
    }

    while (v16 != v13);
  }

  else
  {
    v17 = 0;
  }

  Matrix<double>::Matrix(&v93, 2, v17);
  v93 = &unk_283813CF8;
  memcpy(v94, v100, 8 * v17);
  memcpy(&v94[8 * v17], &v100[v13], 8 * v17);
  v91 = 2;
  v92 = 0;
  v89 = &unk_283813CF8;
  v90 = 0;
  v87[1] = 0;
  v87[2] = 1;
  v88 = 0;
  v87[0] = &unk_283814388;
  v84 = 0;
  v85 = 1;
  v86 = 0;
  v83 = &unk_283814388;
  v80 = 0;
  v81 = 1;
  v82 = 0;
  v79 = &unk_283814388;
  ImageUtils::Cornerfinder(&v93, a5, 3u, 3, &v89, v87, &v83, &v79);
  v32 = v17;
  v33 = 0;
  if (v17)
  {
    v34 = v80;
    v35 = v84;
    v36 = v90;
    v37 = v94;
    do
    {
      if ((*v35 & 1) == 0 && (*v34 & 1) == 0)
      {
        *v37 = *v36;
        v37[v32] = v36[v32];
        ++v37;
        ++v33;
      }

      ++v35;
      ++v34;
      ++v36;
      --v17;
    }

    while (v17);
  }

  Matrix<double>::Matrix(&v77, 2, v33);
  v77 = &unk_283813CF8;
  memcpy(__dst, v94, 8 * v33);
  memcpy(__dst + 8 * v33, &v94[8 * v32], 8 * v33);
  Matrix<int>::Matrix(&v73, 2, v33);
  v73 = &unk_283814980;
  memset(__b, 255, 4 * (v76 * v75));
  v38 = __b;
  Matrix<int>::Matrix(v69, *(a4 + 1) + 1, *a4 + 1);
  memset(v70, 255, 4 * (*(a4 + 1) + 1 + (*(a4 + 1) + 1) * *a4));
  Matrix<unsigned int>::Matrix(v68, 1, v33);
  v68[0] = &unk_283814350;
  v39 = v68[1];
  Matrix<BOOL>::Matrix(v65, 1, v33);
  v65[0] = &unk_283814388;
  bzero(v65[1], (v67 * v66));
  Matrix<unsigned int>::Matrix(&v64, 1, v33);
  v64 = &unk_283814350;
  Matrix<BOOL>::Matrix(v61, 1, v33);
  v40 = v33;
  v61[0] = &unk_283814388;
  bzero(v61[1], (v63 * v62));
  v41 = *a1;
  v42 = (a1[1] - *a1) >> 5;
  v43 = &v38[v40];
  if (v42)
  {
    v44 = 0;
    v45 = *a2;
    v46 = v39;
    do
    {
      v59 = 1;
      v60 = 0;
      v58 = 0;
      v57 = &unk_283812C88;
      v55 = 1;
      v56 = 0;
      v54 = 0;
      v53 = &unk_283814350;
      NearestNeighbor(&v77, v45, &v57, &v53);
      if (*v58 <= 3.0 && v58[1] <= 3.0 && v58[2] <= 3.0 && v58[3] <= 3.0)
      {
        v47 = 0;
        v48 = v54;
        v49 = *(v41 + 8);
        do
        {
          v50 = *(v49 + v47);
          v51 = *(v49 + v47 + 16);
          v38[*(v48 + v47)] = v50;
          *&v43[4 * *(v48 + v47)] = v51;
          if (v71 <= v51 || v72 <= v50)
          {
            __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
          }

          *(v70 + v50 + v72 * v51) = *(v48 + v47);
          *(v46 + v47) = *(v48 + v47);
          v47 += 4;
        }

        while (v47 != 16);
        v46 += v47;
      }

      Matrix<unsigned int>::~Matrix(&v53);
      Matrix<double>::~Matrix(&v57);
      ++v44;
      v41 += 32;
      v45 += 32;
    }

    while (v44 != v42);
  }

  v57 = &unk_283812C58;
  operator new[]();
}

void sub_22495E17C(_Unwind_Exception *a1)
{
  Matrix<double>::~Matrix(&STACK[0x238]);
  Matrix<BOOL>::~Matrix(&STACK[0x258]);
  Matrix<unsigned int>::~Matrix(&STACK[0x278]);
  Matrix<BOOL>::~Matrix(&STACK[0x298]);
  Matrix<unsigned int>::~Matrix(&STACK[0x2B8]);
  Matrix<int>::~Matrix(&STACK[0x2D8]);
  Matrix<int>::~Matrix(&STACK[0x2F8]);
  Matrix<double>::~Matrix(&STACK[0x318]);
  Matrix<BOOL>::~Matrix(&STACK[0x338]);
  Matrix<BOOL>::~Matrix(&STACK[0x358]);
  Matrix<BOOL>::~Matrix(&STACK[0x378]);
  Matrix<double>::~Matrix(v1 - 232);
  Matrix<double>::~Matrix(v1 - 200);
  Matrix<BOOL>::~Matrix(v1 - 168);
  Matrix<double>::~Matrix(v1 - 136);
  _Unwind_Resume(a1);
}

uint64_t NearestNeighbor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 20);
  v8 = *(a2 + 8);
  v9 = *(a1 + 20);
  Matrix<double>::Resize(a3, 1, v7);
  v10 = *(a3 + 8);
  result = Matrix<float>::Resize(a4, 1, v7);
  if (v7)
  {
    v12 = 0;
    v13 = *(a4 + 8);
    do
    {
      v14 = *v8;
      v15 = v8[v7];
      v16 = *(a1 + 8);
      v17 = sqrt((*v16 - *v8) * (*v16 - *v8) + (v16[v9] - v15) * (v16[v9] - v15));
      *v10 = v17;
      *v13 = 0;
      if (v9 >= 2)
      {
        v18 = v16 + 1;
        v19 = 1;
        do
        {
          v20 = sqrt((*v18 - v14) * (*v18 - v14) + (v18[v9] - v15) * (v18[v9] - v15));
          if (v20 < v17)
          {
            *v10 = v20;
            *v13 = v19;
            v17 = v20;
          }

          ++v19;
          ++v18;
        }

        while (v9 != v19);
      }

      ++v12;
      ++v8;
      ++v10;
      ++v13;
    }

    while (v12 != v7);
  }

  return result;
}

void ScanPointsOnLine(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, const void **a6)
{
  if (*(a2 + 20) == 1)
  {
    if (*(a3 + 20) == 1)
    {
      if (*(a5 + 20) == 1)
      {
        operator new[]();
      }

      ScanPointsOnLine();
    }

    ScanPointsOnLine();
  }

  ScanPointsOnLine();
}

void sub_22495EA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  Matrix<double>::~Matrix(&a23);
  Matrix<double>::~Matrix(&a27);
  Matrix<double>::~Matrix(&a31);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(v34 - 176);
  _Unwind_Resume(a1);
}

uint64_t MatrixNxPts<2u,double>::operator*@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Matrix<double>::operator*(a1, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &unk_283813CF8;
  *(a2 + 8) = v4;
  *(a2 + 16) = 2;
  *(a2 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

void sub_22495F824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  Matrix<double>::~Matrix(&a26);
  a26 = &a40;
  std::vector<ImageUtils::Marker>::__destroy_vector::operator()[abi:ne200100](&a26);
  Matrix<double>::~Matrix(&a47);
  Matrix<double>::~Matrix(&a51);
  a26 = &a55;
  std::vector<ImageUtils::Rect>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = &a58;
  std::vector<ImageUtils::Blob>::__destroy_vector::operator()[abi:ne200100](&a26);
  Matrix<BOOL>::~Matrix(&a61);
  a26 = &a65;
  std::vector<ImageUtils::Blob>::__destroy_vector::operator()[abi:ne200100](&a26);
  Matrix<unsigned short>::~Matrix(v65 - 248);
  Matrix<BOOL>::~Matrix(v65 - 216);
  Matrix<BOOL>::~Matrix(v65 - 184);
  Matrix<BOOL>::~Matrix(v65 - 152);
  _Unwind_Resume(a1);
}

void std::vector<ImageUtils::Rect>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  if (a1[1] < a1[2])
  {
    std::vector<ImageUtils::Rect>::__construct_one_at_end[abi:ne200100]<ImageUtils::Rect const&>(a1, a2);
  }

  std::vector<ImageUtils::Rect>::__emplace_back_slow_path<ImageUtils::Rect const&>(a1, a2);
}

uint64_t MatrixNxPts<2u,double>::operator+@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, double a3@<D0>)
{
  Matrix<double>::operator+(a2, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a1 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a1 = &unk_283813CF8;
  *(a1 + 8) = v4;
  *(a1 + 16) = 2;
  *(a1 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

uint64_t MatrixNxPts<2u,double>::operator/@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Matrix<double>::operator/(a1, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &unk_283813CF8;
  *(a2 + 8) = v4;
  *(a2 + 16) = 2;
  *(a2 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

uint64_t MatrixNxPts<2u,double>::operator-@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Matrix<double>::operator-(a1, &v7, a3);
  v4 = v8;
  v5 = v9;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &unk_283813CF8;
  *(a2 + 8) = v4;
  *(a2 + 16) = 2;
  *(a2 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

double Circshift(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 20);
  Matrix<double>::Resize(a3, 2, v6);
  if (v6)
  {
    v8 = *(a1 + 8);
    v9 = *(a3 + 8);
    v10 = -a2;
    v11 = v6;
    do
    {
      v12 = (v8 + 8 * (v10 % v6));
      *v9 = *v12;
      result = *&v12[v6];
      *&v9[v6] = result;
      ++v9;
      ++v10;
      --v11;
    }

    while (v11);
  }

  return result;
}

void std::vector<ImageUtils::Marker>::push_back[abi:ne200100](void *a1, void *a2)
{
  if (a1[1] < a1[2])
  {
    std::vector<ImageUtils::Marker>::__construct_one_at_end[abi:ne200100]<ImageUtils::Marker const&>(a1, a2);
  }

  std::vector<ImageUtils::Marker>::__emplace_back_slow_path<ImageUtils::Marker const&>(a1, a2);
}

void sub_22495FDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  Matrix<double>::~Matrix(&a9);
  Matrix<double>::~Matrix(&a13);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t SurfaceFittingSubPixelRefinement@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v30 = *(a1 + 20);
  v31 = *(a1 + 16);
  v8 = *(a2 + 20);
  Matrix<double>::Matrix(a4, 2, v8);
  *a4 = &unk_283813CF8;
  memcpy(*(a4 + 8), *(v5 + 8), 8 * (2 * v8));
  v9 = *(a4 + 8);
  LODWORD(v5) = ((2 * a3) | 1) * ((2 * a3) | 1);
  Matrix<double>::Matrix(v35, v5, 6);
  Matrix<double>::Matrix(v34, 1, v5);
  v34[0] = &unk_283812C88;
  if (v8)
  {
    v10 = 0;
    do
    {
      v11 = llround(*v9);
      v12 = llround(v9[v8]);
      if (v11 >= a3 && v11 + a3 < v30 && v12 >= a3 && v12 + a3 < v31)
      {
        if ((a3 & 0x80000000) == 0)
        {
          v16 = v34[1];
          v17 = v36;
          v18 = *(a1 + 16);
          v19 = -a3;
          v20 = v12 - a3;
          v21 = (v12 - a3) * (v11 - a3);
          do
          {
            v22 = v19 + v12;
            v23 = *(a1 + 20);
            v24 = 8 * (v11 - a3) + 8 * v23 * v20;
            v25 = v21;
            v26 = v11 - a3;
            v27 = (2 * a3) | 1;
            do
            {
              *v17 = (v26 * v26);
              *(v17 + 8) = v25;
              *(v17 + 16) = (v22 * v22);
              *(v17 + 24) = v26;
              *(v17 + 32) = (v19 + v12);
              *(v17 + 40) = 0x3FF0000000000000;
              if (v22 >= v18 || v26 >= v23)
              {
                __assert_rtn("operator()", "Matrix.hpp", 125, "row < m_rows && col < m_cols");
              }

              *v16++ = *(*(a1 + 8) + v24);
              v17 += 48;
              ++v26;
              v24 += 8;
              v25 += v20;
              --v27;
            }

            while (v27);
            ++v20;
            v21 += v11 - a3;
          }

          while (v19++ != a3);
        }

        v32[2] = 1;
        v33 = 0;
        v32[0] = &unk_283812C88;
        v32[1] = 0;
        Matrix<double>::SolveUsingQR(v35, v34, v32);
      }

      ++v10;
      ++v9;
    }

    while (v10 != v8);
  }

  Matrix<double>::~Matrix(v34);
  return Matrix<double>::~Matrix(v35);
}

void sub_22496019C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(va1);
  Matrix<double>::~Matrix(va2);
  Matrix<double>::~Matrix(v5);
  _Unwind_Resume(a1);
}

uint64_t ImageUtils::DetectAndTrackChessBoard(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, _BYTE *a6, _BYTE *a7, uint64_t *a8, double a9, uint64_t a10)
{
  v15 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *a7 = 0;
  v10 = *a1;
  v11 = a1[1] - *a1;
  std::vector<Matrix<double>>::resize(a8, (v11 >> 5));
  for (i = 1; (i & 1) != 0; i = 0)
  {
    if ((v11 & 0x1FFFFFFFE0) != 0)
    {
      Matrix<double>::Matrix(v14, v10, 0, -1);
    }
  }

  return 1;
}

void sub_224960C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char *a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  Matrix<double>::~Matrix(&a31);
  Matrix<unsigned int>::~Matrix(&a35);
  Matrix<double>::~Matrix(&a39);
  Matrix<double>::~Matrix(&a43);
  Matrix<double>::~Matrix(&a47);
  a47 = &a51;
  std::vector<ImageUtils::Rect>::__destroy_vector::operator()[abi:ne200100](&a47);
  a47 = &a54;
  std::vector<ImageUtils::Marker>::__destroy_vector::operator()[abi:ne200100](&a47);
  Matrix<double>::~Matrix(&a57);
  Matrix<double>::~Matrix(&a61);
  Matrix<double>::~Matrix(&a65);
  *(v67 - 208) = &a66;
  std::vector<Matrix<double>>::__destroy_vector::operator()[abi:ne200100]((v67 - 208));
  *(v67 - 208) = &a67;
  std::vector<MatrixNxPts<2u,unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v67 - 208));
  Matrix<unsigned int>::~Matrix(&STACK[0x210]);
  *(v67 - 208) = &STACK[0x230];
  std::vector<ImageUtils::Rect>::__destroy_vector::operator()[abi:ne200100]((v67 - 208));
  *(v67 - 208) = &STACK[0x248];
  std::vector<ImageUtils::Marker>::__destroy_vector::operator()[abi:ne200100]((v67 - 208));
  Matrix<double>::~Matrix(&STACK[0x280]);
  Matrix<double>::~Matrix(v67 - 240);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<Matrix<double>>::resize(uint64_t *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = (v3 - *result) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 32 * a2;
      if (v3 != v6)
      {
        v7 = v3 - 32;
        v8 = (v3 - 32);
        v9 = (v3 - 32);
        do
        {
          v10 = *v9;
          v9 -= 4;
          result = (*v10)(v8);
          v7 -= 32;
          v11 = v8 == v6;
          v8 = v9;
        }

        while (!v11);
      }

      v2[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return std::vector<Matrix<double>>::__append(result, v5);
  }

  return result;
}

void std::vector<MatrixNxPts<2u,unsigned int>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  if (a1[1] < a1[2])
  {
    std::vector<MatrixNxPts<2u,unsigned int>>::__construct_one_at_end[abi:ne200100]<MatrixNxPts<2u,unsigned int> const&>(a1, a2);
  }

  std::vector<MatrixNxPts<2u,unsigned int>>::__emplace_back_slow_path<MatrixNxPts<2u,unsigned int> const&>(a1, a2);
}

void std::vector<MatrixNxPts<2u,double>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  if (a1[1] < a1[2])
  {
    std::vector<MatrixNxPts<2u,double>>::__construct_one_at_end[abi:ne200100]<MatrixNxPts<2u,double> const&>(a1, a2);
  }

  std::vector<MatrixNxPts<2u,double>>::__emplace_back_slow_path<MatrixNxPts<2u,double> const&>(a1, a2);
}

void std::vector<MatrixNxPts<3u,double>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  if (a1[1] < a1[2])
  {
    std::vector<MatrixNxPts<3u,double>>::__construct_one_at_end[abi:ne200100]<MatrixNxPts<3u,double> const&>(a1, a2);
  }

  std::vector<MatrixNxPts<3u,double>>::__emplace_back_slow_path<MatrixNxPts<3u,double> const&>(a1, a2);
}

uint64_t MatrixNxPts<2u,double>::operator-@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Matrix<double>::operator-(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  *(a3 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a3 = &unk_283813CF8;
  *(a3 + 8) = v4;
  *(a3 + 16) = 2;
  *(a3 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

uint64_t Matrix<int>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283814918;
  if (*(a1 + 8) && *(a1 + 24) == 1)
  {
    MEMORY[0x22AA55B40]();
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  return a1;
}

void Matrix<int>::~Matrix(uint64_t a1)
{
  Matrix<int>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

void std::vector<ImageUtils::Rect>::__emplace_back_slow_path<ImageUtils::Rect const&>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 59))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 4 > v3)
    {
      v3 = v5 >> 4;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFE0)
    {
      v6 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    v8 = a1;
    if (v6)
    {
      std::allocator<ImageUtils::Rect>::allocate_at_least[abi:ne200100](a1, v6);
    }

    *(&v7 + 1) = 0;
    Matrix<double>::Matrix(32 * v2, a2, 0, -1);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void sub_2249611FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ImageUtils::Rect>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<ImageUtils::Rect>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ImageUtils::Rect>,ImageUtils::Rect*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    Matrix<double>::Matrix(a4, a2, 0, -1);
  }
}

void sub_224961308(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = Matrix<double>::~Matrix(v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ImageUtils::Rect>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    Matrix<double>::~Matrix(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ImageUtils::Marker>::__construct_one_at_end[abi:ne200100]<ImageUtils::Marker const&>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *v2 = *a2;
  Matrix<double>::Matrix((v2 + 1), (a2 + 1), 0, -1);
}

void std::vector<ImageUtils::Marker>::__emplace_back_slow_path<ImageUtils::Marker const&>(void *a1, void *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x666666666666666)
  {
    if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
    {
      v5 = 0x666666666666666;
    }

    else
    {
      v5 = v3;
    }

    v8 = a1;
    if (v5)
    {
      std::allocator<ImageUtils::Marker>::allocate_at_least[abi:ne200100](a1, v5);
    }

    v6 = 0;
    v7 = 40 * v2;
    *(40 * v2) = *a2;
    Matrix<double>::Matrix(40 * v2 + 8, (a2 + 1), 0, -1);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void sub_22496152C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ImageUtils::Marker>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<ImageUtils::Marker>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ImageUtils::Marker>,ImageUtils::Marker*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    *a4 = *a2;
    Matrix<double>::Matrix((a4 + 1), (a2 + 1), 0, -1);
  }
}

void sub_224961648(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 32;
    do
    {
      v5 = Matrix<double>::~Matrix(v5) - 40;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ImageUtils::Marker>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    Matrix<double>::~Matrix(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ImageUtils::Marker>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 40;
        Matrix<double>::~Matrix((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<ImageUtils::Rect>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = Matrix<double>::~Matrix(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void Matrix<double>::SolveUsingQR(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v22 = *(a1 + 20);
  v6 = v22;
  v23 = v5;
  Matrix<double>::Matrix(v20, v5, v22);
  if (v6 >= 1)
  {
    v7 = *(a1 + 8);
    v8 = &v7[v6];
    v9 = v21;
    v10 = v5 * v6;
    do
    {
      if (v10 >= 1)
      {
        v11 = v7;
        do
        {
          *v9++ = *v11;
          v11 += v6;
        }

        while (v11 < &v7[v10]);
      }

      ++v7;
    }

    while (v7 < v8);
  }

  v19 = 0.0;
  v17 = 0;
  v18 = -1;
  v16 = 78;
  if (v5 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v5;
  }

  v14 = v12;
  v15 = 1;
  Matrix<double>::Matrix(v13, 1, v12);
  v13[0] = &unk_283812C88;
  memcpy(v13[1], *(a2 + 8), 8 * *(a2 + 20));
  dgels_NEWLAPACK();
  if (!v17)
  {
    v18 = v19;
    operator new[]();
  }

  __assert_rtn("SolveUsingQR", "Matrix.hpp", 2234, "!info");
}

void sub_224961A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(va1);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<Matrix<double>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = v4 + 32 * a2;
      v12 = result[1];
      do
      {
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        *v4 = &unk_283812C58;
        *(v4 + 24) = 0;
        v4 += 32;
        v12 += 32;
      }

      while (v4 != v11);
      v4 = v11;
    }

    result[1] = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v23 = result;
    if (v10)
    {
      std::allocator<Matrix<double>>::allocate_at_least[abi:ne200100](result, v10);
    }

    v13 = 32 * v8;
    v20 = 0;
    v21 = 32 * v8;
    *(&v22 + 1) = 0;
    v14 = 32 * v8;
    v15 = 32 * v8;
    do
    {
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      *v15 = &unk_283812C58;
      *(v15 + 24) = 0;
      v15 += 32;
      v14 += 32;
    }

    while (v15 != 32 * v8 + 32 * a2);
    *&v22 = v13 + 32 * a2;
    v16 = result[1];
    v17 = v13 + *result - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Matrix<double>>,Matrix<double>*>(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<Matrix<double>>::~__split_buffer(&v20);
  }

  return result;
}

void sub_224961BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<Matrix<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<MatrixNxPts<2u,unsigned int>>::__emplace_back_slow_path<MatrixNxPts<2u,unsigned int> const&>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 59))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 4 > v3)
    {
      v3 = v5 >> 4;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFE0)
    {
      v6 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    v8 = a1;
    if (v6)
    {
      std::allocator<MatrixNxPts<2u,unsigned int>>::allocate_at_least[abi:ne200100](a1, v6);
    }

    *(&v7 + 1) = 0;
    Matrix<unsigned int>::Matrix(32 * v2, a2, 0, -1);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void sub_224961D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<MatrixNxPts<2u,unsigned int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void MatrixNxPts<2u,unsigned int>::~MatrixNxPts(uint64_t a1)
{
  Matrix<unsigned int>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

void std::allocator<MatrixNxPts<2u,unsigned int>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MatrixNxPts<2u,unsigned int>>,MatrixNxPts<2u,unsigned int>*>(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    Matrix<unsigned int>::Matrix(a4, a2, 0, -1);
  }
}

void sub_224961E9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MatrixNxPts<2u,unsigned int>>,MatrixNxPts<2u,unsigned int>*>();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<MatrixNxPts<2u,unsigned int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<MatrixNxPts<2u,double>>::__emplace_back_slow_path<MatrixNxPts<2u,double> const&>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 59))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 4 > v3)
    {
      v3 = v5 >> 4;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFE0)
    {
      v6 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    v8 = a1;
    if (v6)
    {
      std::allocator<Matrix<double>>::allocate_at_least[abi:ne200100](a1, v6);
    }

    *(&v7 + 1) = 0;
    Matrix<double>::Matrix(32 * v2, a2, 0, -1);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void sub_2249620A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<Matrix<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MatrixNxPts<2u,double>>,MatrixNxPts<2u,double>*>(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    Matrix<double>::Matrix(a4, a2, 0, -1);
  }
}

void sub_224962188(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Matrix<double>>,Matrix<double>*>();
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MatrixNxPts<3u,double>>::__emplace_back_slow_path<MatrixNxPts<3u,double> const&>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 59))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 4 > v3)
    {
      v3 = v5 >> 4;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFE0)
    {
      v6 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    v8 = a1;
    if (v6)
    {
      std::allocator<Matrix<double>>::allocate_at_least[abi:ne200100](a1, v6);
    }

    *(&v7 + 1) = 0;
    Matrix<double>::Matrix(32 * v2, a2, 0, -1);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void sub_224962320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<Matrix<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MatrixNxPts<3u,double>>,MatrixNxPts<3u,double>*>(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    Matrix<double>::Matrix(a4, a2, 0, -1);
  }
}

void sub_224962408(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Matrix<double>>,Matrix<double>*>();
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MatrixNxPts<2u,unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 4;
      v7 = v4 - 4;
      v8 = v4 - 4;
      do
      {
        v9 = *v8;
        v8 -= 4;
        (*v9)(v7);
        v6 -= 4;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t Matrix<int>::Matrix(uint64_t a1, int a2, int a3)
{
  *a1 = &unk_283814918;
  if (a3 * a2)
  {
    operator new[]();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = 0;
  return a1;
}

void MatrixNxPts<2u,int>::~MatrixNxPts(uint64_t a1)
{
  Matrix<int>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

void Matrix<double>::operator+(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = a3;
  Matrix<double>::Matrix(a2, *(a1 + 16), *(a1 + 20));
  vDSPVsadd<double>(*(a1 + 8), 1, &v5, *(a2 + 8), 1, *(a1 + 20) * *(a1 + 16));
}

uint64_t dumpTailspinOnDispatchQueue(char *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v81 = *MEMORY[0x277D85DE8];
  v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  v9 = MEMORY[0x277D86220];
  if (!v8)
  {
    v28 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == MEMORY[0x277D86220])
    {
      v28 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v28;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      dumpTailspinOnDispatchQueue_cold_6(a2, v28);
    }

    return 0;
  }

  v10 = v8;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v12 = *MEMORY[0x277D82D08];
  v65[0] = v10;
  v13 = *MEMORY[0x277D82D38];
  v64[0] = v12;
  v64[1] = v13;
  v65[1] = [MEMORY[0x277CCABB0] numberWithInt:getpid()];
  v64[2] = *MEMORY[0x277D82D18];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:has_internal_diagnostics ^ 1u];
  v15 = *MEMORY[0x277D82D00];
  v65[2] = v14;
  v65[3] = MEMORY[0x277CBEC38];
  v16 = *MEMORY[0x277D82CC0];
  v64[3] = v15;
  v64[4] = v16;
  v17 = *MEMORY[0x277D82CC8];
  v65[4] = MEMORY[0x277CBEC38];
  v65[5] = MEMORY[0x277CBEC38];
  v18 = *MEMORY[0x277D82CB8];
  v64[5] = v17;
  v64[6] = v18;
  v64[7] = *MEMORY[0x277D82CD0];
  v65[6] = MEMORY[0x277CBEC38];
  v65[7] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:8];
  CFRelease(v10);
  v20 = GetCameraUserspaceLogStream__servicesLog;
  if (GetCameraUserspaceLogStream__servicesLog == v9)
  {
    v20 = os_log_create("com.apple.isp", "services");
    GetCameraUserspaceLogStream__servicesLog = v20;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v74 = a1;
    v75 = 2112;
    v76 = v19;
    v77 = 2048;
    v78 = a3;
    v79 = 2048;
    v80 = a4;
    _os_log_impl(&dword_2247DB000, v20, OS_LOG_TYPE_DEFAULT, "dumpTailspinWithOptionsOnQueue %s %@ %p %p\n", buf, 0x2Au);
  }

  v21 = strlen(a1);
  if (v21 >= 0x401)
  {
    v29 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v29 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v29;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      dumpTailspinOnDispatchQueue_cold_1(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    return 0;
  }

  v22 = v21;
  v23 = strrchr(a1, 47);
  if (v23)
  {
    v24 = v23;
    v25 = v19;
    v26 = v23 - a1;
    __strncpy_chk();
    buf[v26] = 0;
    v27 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v27 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v27;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v66) = 136315138;
      *(&v66 + 4) = buf;
      _os_log_impl(&dword_2247DB000, v27, OS_LOG_TYPE_DEFAULT, "creating directory %s\n", &v66, 0xCu);
    }

    if (mkdir(buf, 0x1EDu) && *__error() != 17)
    {
      v51 = GetCameraUserspaceLogStream__servicesLog;
      if (GetCameraUserspaceLogStream__servicesLog == v9)
      {
        v51 = os_log_create("com.apple.isp", "services");
        GetCameraUserspaceLogStream__servicesLog = v51;
      }

      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        dumpTailspinOnDispatchQueue_cold_2();
      }

      return 0;
    }

    strncpy(&buf[v26], v24, v22 - v26);
    v19 = v25;
  }

  else
  {
    strncpy(buf, a1, 0x400uLL);
  }

  v63 = 0;
  if (time(&v63) == -1)
  {
    v43 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v43 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v43;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      dumpTailspinOnDispatchQueue_cold_5(v43, v44, v45, v46, v47, v48, v49, v50);
    }

    return 0;
  }

  v37 = localtime(&v63);
  v38 = strftime(&buf[v22], 1024 - v22, "_%Y.%m.%d_%H-%M-%S%z.tailspin", v37);
  v39 = GetCameraUserspaceLogStream__servicesLog;
  if (!v38)
  {
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v39 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v39;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      dumpTailspinOnDispatchQueue_cold_4(v39, v52, v53, v54, v55, v56, v57, v58);
    }

    return 0;
  }

  if (GetCameraUserspaceLogStream__servicesLog == v9)
  {
    v39 = os_log_create("com.apple.isp", "services");
    GetCameraUserspaceLogStream__servicesLog = v39;
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v66) = 136315138;
    *(&v66 + 4) = buf;
    _os_log_impl(&dword_2247DB000, v39, OS_LOG_TYPE_DEFAULT, "creating tailspin file %s\n", &v66, 0xCu);
  }

  v40 = open(buf, 514, 420);
  if (v40 < 0)
  {
    v59 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v59 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v59;
    }

    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      dumpTailspinOnDispatchQueue_cold_3();
    }

    return 0;
  }

  v41 = v40;
  if (a3)
  {
    *&v66 = MEMORY[0x277D85DD0];
    *(&v66 + 1) = 3221225472;
    v67 = __dumpTailspinWithOptionsOnQueue_block_invoke;
    v68 = &unk_27853B7B0;
    v72 = v40;
    v70 = a4;
    v71 = a1;
    v69 = v19;
    tailspin_dump_output_with_options();
    return 1;
  }

  else
  {
    v61 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v61 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v61;
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v66) = 136315138;
      *(&v66 + 4) = buf;
      _os_log_impl(&dword_2247DB000, v61, OS_LOG_TYPE_DEFAULT, "Dump tailspin to %s begin ...\n", &v66, 0xCu);
    }

    v42 = tailspin_dump_output_with_options_sync();
    v62 = GetCameraUserspaceLogStream__servicesLog;
    if (GetCameraUserspaceLogStream__servicesLog == v9)
    {
      v62 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v62;
    }

    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v66) = 0;
      _os_log_impl(&dword_2247DB000, v62, OS_LOG_TYPE_DEFAULT, "Dump tailspin end ...\n", &v66, 2u);
    }

    fsync(v41);
    close(v41);
  }

  return v42;
}

uint64_t dumpTailspinInBackground(char *a1, const char *a2, uint64_t a3)
{
  global_queue = dispatch_get_global_queue(9, 0);

  return dumpTailspinOnDispatchQueue(a1, a2, global_queue, a3);
}

uint64_t __dumpTailspinWithOptionsOnQueue_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  fsync(*(a1 + 56));
  close(*(a1 + 56));
  v4 = GetCameraUserspaceLogStream__servicesLog;
  if (a2)
  {
    if (GetCameraUserspaceLogStream__servicesLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D82D08]];
      v6 = *(a1 + 48);
      v8 = 138412546;
      v9 = v5;
      v10 = 2080;
      v11 = v6;
      _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "Tailspin with reason '%@' stored at path %s\n", &v8, 0x16u);
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream__servicesLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream__servicesLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __dumpTailspinWithOptionsOnQueue_block_invoke_cold_1(a1);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

H16ISP::H16ISPGeneralProcessFrameReceiver *H16ISP::H16ISPGeneralProcessFrameReceiver::H16ISPGeneralProcessFrameReceiver(H16ISP::H16ISPGeneralProcessFrameReceiver *this, H16ISP::H16ISPDevice *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 184) = 0;
  *(this + 33) = 0;
  *(this + 68) = 0;
  *(this + 35) = 0;
  *(this + 36) = a2;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 44) = 0x4000000000000000;
  *(this + 90) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  pthread_mutex_init((this + 48), 0);
  pthread_mutex_init(this + 3, 0);
  *(this + 32) = 0;
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 2);
  pthread_mutex_init((this + 112), &v4);
  pthread_mutexattr_destroy(&v4);
  *(this + 22) = dispatch_semaphore_create(0);
  return this;
}

void H16ISP::H16ISPGeneralProcessFrameReceiver::~H16ISPGeneralProcessFrameReceiver(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  if (*this)
  {
    H16ISP::H16ISPGeneralProcessFrameReceiver::stopReceive(this);
  }

  if (*(this + 35))
  {
    H16ISP::H16ISPGeneralProcessFrameReceiver::removeIODispatcherFromRunLoop(this);
  }

  pthread_mutex_destroy((this + 48));
  pthread_mutex_destroy((this + 112));
  pthread_mutex_destroy(this + 3);
  H16ISP::H16ISPDevice::ISP_FlushInactiveDARTMappings(*(this + 36));
  dispatch_release(*(this + 22));
  std::deque<__CVBuffer *>::~deque[abi:ne200100](this + 37);
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::stopReceive(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  v2 = 3758097110;
  pthread_mutex_lock((this + 48));
  if (*this)
  {
    H16ISP::H16ISPGeneralProcessFrameReceiver::stopNoDataTimer(this);
    pthread_mutex_lock((this + 112));
    *(this + 344) = 1;
    pthread_mutex_unlock((this + 112));
    v3 = 2001;
    do
    {
      pthread_mutex_lock((this + 112));
      if (!*(this + 42))
      {
        v2 = 0;
        goto LABEL_32;
      }

      usleep(0x3E8u);
      --v3;
    }

    while (v3);
    printf("H16ISPGeneralProcessFrameReceiver: Did not get all pending requests back from kernel. remaining: %d.\n", *(this + 42));
    v4 = *(this + 38);
    v5 = *(this + 39);
    v6 = &v4[*(this + 41) >> 9];
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = (*v6 + 8 * (*(this + 41) & 0x1FFLL));
    }

    while (1)
    {
      v8 = v5 - v4;
      if (v8)
      {
        v9 = *(this + 42) + *(this + 41);
        v10 = *(v4 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF);
      }

      else
      {
        v10 = 0;
      }

      if (v7 == v10)
      {
        break;
      }

      v11 = *v7;
      if (*v7)
      {
        CVPixelBufferRelease(*(v11 + 8));
        CVPixelBufferRelease(*(v11 + 32));
        v12 = *(v11 + 40);
        if (v12)
        {
          CVPixelBufferRelease(v12);
        }

        if (*(v11 + 944))
        {
          v13 = 0;
          do
          {
            CVPixelBufferRelease(*(v11 + 48 + 8 * v13++));
          }

          while (v13 < *(v11 + 944));
        }

        printf("H16ISPGeneralProcessFrameReceiver: Request not returned 0x%p\n", v11);
        MEMORY[0x22AA55B60](v11, 0x10E0C40926370D1);
      }

      else
      {
        printf("H16ISPGeneralProcessFrameReceiver: Request not returned 0x%p\n", 0);
      }

      if (++v7 - *v6 == 4096)
      {
        v14 = v6[1];
        ++v6;
        v7 = v14;
      }

      v4 = *(this + 38);
      v5 = *(this + 39);
    }

    *(this + 42) = 0;
    v15 = v8 >> 3;
    if (v15 >= 3)
    {
      do
      {
        operator delete(*v4);
        v16 = *(this + 39);
        v4 = (*(this + 38) + 8);
        *(this + 38) = v4;
        v15 = (v16 - v4) >> 3;
      }

      while (v15 > 2);
    }

    if (v15 == 1)
    {
      v17 = 256;
    }

    else
    {
      if (v15 != 2)
      {
LABEL_32:
        pthread_mutex_unlock((this + 112));
        *(this + 344) = 0;
        *this = 0;
        goto LABEL_33;
      }

      v17 = 512;
    }

    *(this + 41) = v17;
    goto LABEL_32;
  }

  v2 = 3758097122;
LABEL_33:
  pthread_mutex_unlock((this + 48));
  return v2;
}

void H16ISP::H16ISPGeneralProcessFrameReceiver::removeIODispatcherFromRunLoop(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  v2 = *(this + 35);
  if (v2)
  {
    CFRunLoopRemoveSource(*(this + 1), v2, *MEMORY[0x277CBF058]);
    CFRelease(*(this + 35));
    *(this + 35) = 0;
  }

  v3 = *(this + 33);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(this + 33));
    *(this + 33) = 0;
  }

  v4 = *(this + 68);
  if (v4)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], v4, 1u, -1);
    *(this + 68) = 0;
  }
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::setupFrameReceiver(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  *(this + 1) = CFRunLoopGetCurrent();

  return H16ISP::H16ISPGeneralProcessFrameReceiver::addIODispatcherToRunLoop(this);
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::addIODispatcherToRunLoop(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  v2 = IOCreateReceivePort(0x39u, this + 68);
  if (!v2)
  {
    v2 = 3758097085;
    shouldFreeInfo = 0;
    context.version = 1;
    context.info = this;
    memset(&context.retain, 0, 24);
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], *(this + 68), MEMORY[0x277CD27F0], &context, &shouldFreeInfo);
    *(this + 33) = v5;
    if (v5)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(v4, v5, 0);
      *(this + 35) = RunLoopSource;
      if (RunLoopSource)
      {
        CFRunLoopAddSource(*(this + 1), RunLoopSource, *MEMORY[0x277CBF058]);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::registerFrameReceiveCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return 0;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::registerMessageCallback(H16ISP::H16ISPGeneralProcessFrameReceiver *this, void (*a2)(unsigned int, unsigned int, unsigned int, void *, void *, void *), void *a3)
{
  *(this + 4) = a2;
  *(this + 5) = a3;
  return 0;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::startReceive(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  pthread_mutex_lock((this + 48));
  if (*this == 1)
  {
    v2 = 3758097122;
  }

  else
  {
    v2 = 0;
    *(this + 344) = 0;
    *this = 1;
  }

  pthread_mutex_unlock((this + 48));
  return v2;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::stopNoDataTimer(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  pthread_mutex_lock(this + 3);
  v2 = *(this + 32);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(this + 32));
    *(this + 32) = 0;
  }

  return pthread_mutex_unlock(this + 3);
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::completeAllRequests(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  pthread_mutex_lock((this + 48));
  if (*this)
  {
    pthread_mutex_lock((this + 112));
    if (*(this + 42))
    {
      *(this + 184) = 1;
      pthread_mutex_unlock((this + 112));
      v2 = dispatch_time(0, 2000000000);
      if (dispatch_semaphore_wait(*(this + 22), v2))
      {
        v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v3 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
        }

        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPGeneralProcessFrameReceiver::completeAllRequests(this + 42, v3);
        }

        v4 = *(this + 38);
        v5 = *(this + 39);
        v6 = (v4 + 8 * (*(this + 41) >> 9));
        if (v5 == v4)
        {
          v7 = 0;
        }

        else
        {
          v7 = (*v6 + 8 * (*(this + 41) & 0x1FFLL));
        }

        while (1)
        {
          if (v5 == v4)
          {
            v10 = 0;
          }

          else
          {
            v9 = *(this + 42) + *(this + 41);
            v10 = *(v4 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF);
          }

          if (v7 == v10)
          {
            break;
          }

          v11 = *v7++;
          printf("H16ISPGeneralProcessFrameReceiver: Request not returned 0x%p\n", v11);
          if ((v7 - *v6) == 4096)
          {
            v12 = v6[1];
            ++v6;
            v7 = v12;
          }

          v4 = *(this + 38);
          v5 = *(this + 39);
        }

        v8 = 3758097110;
        goto LABEL_22;
      }
    }

    else
    {
      pthread_mutex_unlock((this + 112));
    }

    v8 = 0;
LABEL_22:
    pthread_mutex_lock((this + 112));
    *(this + 184) = 0;
    pthread_mutex_unlock((this + 112));
    pthread_mutex_unlock((this + 48));
    return v8;
  }

  pthread_mutex_unlock((this + 48));
  return 3758097122;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::GeneralProcess(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v157 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((v1 + 48));
  if ((*(v6 + 344) & 1) != 0 || *v6 != 1)
  {
    pthread_mutex_unlock((v6 + 48));
    return 3758097122;
  }

  v7 = *(v5 + 1);
  if (v7)
  {
    if (*(v5 + 4))
    {
      v8 = v5[236];
      if ((v8 - 21) >= 0xFFFFFFEC)
      {
        v11 = &BytesPerRow;
        v12 = 12;
        do
        {
          if (!*&v5[v12])
          {
            goto LABEL_6;
          }

          v12 += 2;
          --v8;
        }

        while (v8);
        v123 = v3;
        if ((v3 & 1) == 0)
        {
          CVPixelBufferRetain(v7);
          v13 = *(v5 + 2);
          if (v13)
          {
            CVPixelBufferRetain(v13);
          }

          CVPixelBufferRetain(*(v5 + 4));
          v14 = *(v5 + 5);
          if (v14)
          {
            CVPixelBufferRetain(v14);
          }

          if (v5[236])
          {
            v15 = 0;
            do
            {
              CVPixelBufferRetain(*&v5[2 * v15++ + 12]);
            }

            while (v15 < v5[236]);
          }
        }

        bzero(inputStruct, 0x3C8uLL);
        IOSurface = CVPixelBufferGetIOSurface(*(v5 + 1));
        ID = IOSurfaceGetID(IOSurface);
        v17 = *(v5 + 2);
        v124 = v6;
        v127 = v5 + 12;
        if (v17)
        {
          v18 = CVPixelBufferGetIOSurface(v17);
          LODWORD(v17) = IOSurfaceGetID(v18);
        }

        v143 = v17;
        v126 = v5;
        v19 = (v5 + 2);
        PixelFormatType = CVPixelBufferGetPixelFormatType(*(v5 + 1));
        H16ISP::getFrameFormatMetaInfo(PixelFormatType, &v135);
        FrameFormat = H16ISP::getFrameFormat(PixelFormatType);
        Width = CVPixelBufferGetWidth(*v19);
        Height = CVPixelBufferGetHeight(*v19);
        v22 = v126[6];
        v149 = Height;
        v150 = v22;
        if (FrameFormat != 15 && FrameFormat)
        {
          v29 = *(v126 + 1);
          if (v136 == 2)
          {
            v30 = CVPixelBufferGetIOSurface(v29);
            BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            v32 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            AllocSize = IOSurfaceGetAllocSize(v30);
            DataSize = v32 - BaseAddressOfCompressedTileDataRegionOfPlane;
            v141 = AllocSize - (v32 - BaseAddressOfCompressedTileDataRegionOfPlane);
            BytesPerRowOfTileDataOfPlane = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
            v34 = *(v126 + 2);
            if (!v34)
            {
              goto LABEL_32;
            }

            v35 = CVPixelBufferGetIOSurface(v34);
            v36 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            v37 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            v38 = IOSurfaceGetAllocSize(v35);
            v144 = v37 - v36;
            v145 = v38 - DataSize;
            v28 = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
          }

          else
          {
            BytesPerRowOfTileDataOfPlane = CVPixelBufferGetBytesPerRow(v29);
            DataSize = CVPixelBufferGetDataSize(*(v126 + 1));
            v141 = 0;
            v39 = *(v126 + 2);
            if (!v39)
            {
              goto LABEL_32;
            }

            BytesPerRow = CVPixelBufferGetBytesPerRow(v39);
            v40 = CVPixelBufferGetDataSize(*(v126 + 2));
            v28 = 0;
            v144 = v40;
            v11 = &v145;
          }
        }

        else
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(v126 + 1), 0);
          DataSize = CVPixelBufferGetHeight(*(v126 + 1)) * BytesPerRowOfPlane;
          v24 = CVPixelBufferGetBytesPerRowOfPlane(*(v126 + 1), 1uLL);
          v141 = (CVPixelBufferGetHeight(*(v126 + 1)) * v24) >> 1;
          BytesPerRowOfTileDataOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(v126 + 1), 0);
          v25 = *(v126 + 2);
          if (!v25)
          {
            goto LABEL_32;
          }

          v26 = CVPixelBufferGetBytesPerRowOfPlane(v25, 0);
          v144 = CVPixelBufferGetHeight(*(v126 + 2)) * v26;
          v27 = CVPixelBufferGetBytesPerRowOfPlane(*(v126 + 2), 1uLL);
          v145 = (CVPixelBufferGetHeight(*(v126 + 2)) * v27) >> 1;
          v28 = CVPixelBufferGetBytesPerRowOfPlane(*(v126 + 2), 0);
        }

        *v11 = v28;
LABEL_32:
        v41 = 0;
        if (PixelFormatType != 875704438 && PixelFormatType != 2016686640 && PixelFormatType != 2037741171)
        {
          if (BYTE8(v135))
          {
            v42 = 0;
          }

          else
          {
            v42 = v136 == 2;
          }

          v41 = !v42;
        }

        v151 = v41;
        v43 = CVPixelBufferGetIOSurface(*(v126 + 4));
        v152 = IOSurfaceGetID(v43);
        v153 = CVPixelBufferGetDataSize(*(v126 + 4));
        v44 = v126;
        v45 = *(v126 + 5);
        if (v45)
        {
          v46 = CVPixelBufferGetIOSurface(v45);
          v155[215] = IOSurfaceGetID(v46);
          v155[216] = CVPixelBufferGetDataSize(*(v126 + 5));
          v44 = v126;
        }

        LODWORD(v47) = *(v44 + 236);
        if (v47)
        {
          v48 = 0;
          v49 = (v44 + 28);
          v125 = (v44 + 108);
          v50 = v127;
          do
          {
            v51 = CVPixelBufferGetPixelFormatType(*&v50[2 * v48]);
            v52 = CVPixelBufferGetIOSurface(*&v127[2 * v48]);
            v155[v48] = IOSurfaceGetID(v52);
            FrameFormatMetaInfo = H16ISP::getFrameFormatMetaInfo(v51, &v133);
            v54 = DWORD1(v133);
            if (!FrameFormatMetaInfo)
            {
              v54 = 0;
            }

            v155[v48 + 80] = v54;
            if (!v54 || (v54 != 15 ? (v55 = v134 == 2) : (v55 = 1), v55))
            {
              v56 = CVPixelBufferGetBytesPerRowOfPlane(*&v127[2 * v48], 0);
            }

            else
            {
              v56 = CVPixelBufferGetBytesPerRow(*&v127[2 * v48]);
            }

            v57 = &v49[8 * v48];
            v58 = *v57;
            v59 = v57[1];
            v60 = v57[2];
            v61 = v57[3];
            v155[v48 + 60] = v56;
            v155[v48 + 100] = v58;
            v155[v48 + 120] = v59;
            v155[v48 + 140] = v60;
            v155[v48 + 160] = v61;
            *(&v155[180] + v48) = CVPixelBufferGetWidth(*&v127[2 * v48]);
            *(&v155[190] + v48) = CVPixelBufferGetHeight(*&v127[2 * v48]);
            *(&v155[200] + v48) = v125[v48];
            v62 = v155[v48 + 80];
            if (v62 != 15 && v62)
            {
              v66 = *&v127[2 * v48];
              if (v134 == 2)
              {
                v67 = CVPixelBufferGetIOSurface(v66);
                v68 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
                v69 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
                v70 = IOSurfaceGetAllocSize(v67);
                v155[2 * v48 + 20] = v69 - v68;
                v65 = v70 - (v69 - v68);
              }

              else
              {
                v71 = CVPixelBufferGetBytesPerRow(v66);
                v72 = CVPixelBufferGetHeight(*&v127[2 * v48]);
                v65 = 0;
                v155[2 * v48 + 20] = v72 * v71;
              }
            }

            else
            {
              v63 = CVPixelBufferGetBytesPerRowOfPlane(*&v127[2 * v48], 0);
              v155[2 * v48 + 20] = CVPixelBufferGetHeight(*&v127[2 * v48]) * v63;
              v64 = CVPixelBufferGetBytesPerRowOfPlane(*&v127[2 * v48], 1uLL);
              v65 = (CVPixelBufferGetHeight(*&v127[2 * v48]) * v64) >> 1;
            }

            v73 = 0;
            v155[2 * v48 + 21] = v65;
            v50 = v127;
            if (v51 != 875704438 && v51 != 2016686640 && v51 != 2037741171)
            {
              if (BYTE8(v133))
              {
                v74 = 0;
              }

              else
              {
                v74 = v134 == 2;
              }

              v73 = !v74;
            }

            *(&v155[210] + v48++) = v73;
            v44 = v126;
            v47 = v126[236];
          }

          while (v48 < v47);
        }

        inputStruct[0] = *v44;
        v75 = inputStruct[0];
        v76 = *(v44 + 1);
        v154 = v47;
        v138 = v76;
        v156 = H16ISP::H16ISPGeneralProcessFrameReceiver::FrameDone;
        bzero(__src, 0xE08uLL);
        LOWORD(__src[0]) = v75;
        extraRowsOnBottom = 0;
        extraColumnsOnRight = 0;
        v77 = v136 == 2;
        BYTE2(__src[0]) = v136 == 2;
        WORD2(__src[0]) = 1;
        v78 = v44 + 1;
        CVPixelBufferGetExtendedPixels(v44[1], 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
        v79 = CVPixelBufferGetIOSurface(v44[1]);
        PlaneCount = CVPixelBufferGetPlaneCount(*v78);
        if (v136 == 2)
        {
          v81 = PlaneCount;
          if (PlaneCount)
          {
            v82 = 0;
            v83 = 1;
            do
            {
              v84 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
              BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
              v86 = &__src[1] + 28 * v82;
              *v86 = 0;
              *(v86 + 1) = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
              *(v86 + 2) = BaseAddressOfCompressedTileHeaderRegionOfPlane - v84;
              v87 = *(&DataSize + v82) - (BaseAddressOfCompressedTileHeaderRegionOfPlane - v84);
              *(v86 + 3) = BaseAddressOfCompressedTileHeaderRegionOfPlane - v84;
              *(v86 + 4) = v87;
              WidthOfPlane = IOSurfaceGetWidthOfPlane(v79, v82);
              *(v86 + 10) = extraColumnsOnRight + WidthOfPlane;
              HeightOfPlane = IOSurfaceGetHeightOfPlane(v79, v82);
              *(v86 + 11) = extraRowsOnBottom + HeightOfPlane;
              *(v86 + 6) = IOSurfaceGetCompressionFootprintOfPlane();
              v82 = v83;
              v90 = v81 > v83++;
            }

            while (v90);
            v77 = 1;
          }

          BYTE2(__src[0]) = v77;
        }

        v91 = v126;
        v92 = *(v126 + 2);
        if (v92)
        {
          WORD2(__src[0]) = 2;
          CVPixelBufferGetExtendedPixels(v92, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
          v93 = CVPixelBufferGetIOSurface(*(v126 + 2));
          v94 = CVPixelBufferGetPixelFormatType(*(v126 + 2));
          v95 = CVPixelBufferGetPlaneCount(*(v126 + 2));
          v96 = H16ISP::getFrameFormatMetaInfo(v94, &v128);
          if (v129 == 2)
          {
            v97 = v96;
          }

          else
          {
            v97 = 0;
          }

          if (v97 == 1)
          {
            if (v95)
            {
              v98 = 0;
              v99 = 1;
              do
              {
                v100 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
                v101 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
                v102 = &__src[15] + 28 * v98;
                *v102 = 0;
                *(v102 + 1) = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
                *(v102 + 2) = v101 - v100;
                v103 = *(&DataSize + v98) - (v101 - v100);
                *(v102 + 3) = v101 - v100;
                *(v102 + 4) = v103;
                v104 = IOSurfaceGetWidthOfPlane(v93, v98);
                *(v102 + 10) = extraColumnsOnRight + v104;
                v105 = IOSurfaceGetHeightOfPlane(v93, v98);
                *(v102 + 11) = extraRowsOnBottom + v105;
                *(v102 + 6) = IOSurfaceGetCompressionFootprintOfPlane();
                v98 = v99;
                v90 = v95 > v99++;
              }

              while (v90);
              v77 = 1;
            }

            BYTE2(__src[0]) = v77;
          }

          v91 = v126;
        }

        v106 = *(v91 + 236);
        HIWORD(__src[0]) = v106;
        if (v106)
        {
          v107 = 0;
          v108 = BYTE3(__src[0]);
          do
          {
            v109 = &v127[2 * v107];
            v110 = CVPixelBufferGetIOSurface(*v109);
            v111 = CVPixelBufferGetPixelFormatType(*v109);
            v112 = CVPixelBufferGetPlaneCount(*v109);
            CVPixelBufferGetExtendedPixels(*v109, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
            H16ISP::getFrameFormatMetaInfo(v111, &v133);
            if (v112)
            {
              v113 = 0;
              v114 = 1;
              do
              {
                if (v134 == 2)
                {
                  v115 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
                  v116 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
                  v117 = &__src[14 * v107 + 225] + 28 * v113;
                  *v117 = 0;
                  *(v117 + 1) = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
                  *(v117 + 2) = v116 - v115;
                  v118 = v155[2 * v107 + 20 + v113] - (v116 - v115);
                  *(v117 + 3) = v116 - v115;
                  *(v117 + 4) = v118;
                  v119 = IOSurfaceGetWidthOfPlane(v110, v113);
                  *(v117 + 10) = extraColumnsOnRight + v119;
                  v120 = IOSurfaceGetHeightOfPlane(v110, v113);
                  *(v117 + 11) = extraRowsOnBottom + v120;
                  *(v117 + 6) = IOSurfaceGetCompressionFootprintOfPlane();
                  v108 = 1;
                }

                else
                {
                  v108 = 0;
                }

                v113 = v114;
                v90 = v112 > v114++;
              }

              while (v90);
            }

            ++v107;
            v91 = v126;
          }

          while (v126[236] > v107);
          BYTE3(__src[0]) = v108;
        }

        v121 = v91 + 4;
        CVPixelBufferLockBaseAddress(v91[4], 0);
        BaseAddress = CVPixelBufferGetBaseAddress(*v121);
        memcpy(&BaseAddress[*(BaseAddress + 7)], __src, 0xE08uLL);
        CVPixelBufferUnlockBaseAddress(*v121, 0);
        if ((v123 & 1) == 0)
        {
          operator new();
        }

        v9 = H16ISP::H16ISPDevice::ISP_GeneralProcess(*(v124 + 36), inputStruct, 0);
        pthread_mutex_unlock((v124 + 48));
        return v9;
      }
    }
  }

LABEL_6:
  v9 = 3758097090;
  pthread_mutex_unlock((v6 + 48));
  return v9;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::FrameDone(uint64_t this, void *a2, void *a3, unint64_t *a4)
{
  if (this)
  {
    v4 = a4;
    v6 = a2;
    v7 = this;
    pthread_mutex_lock((this + 112));
    v8 = *(v7 + 328);
    v9 = *(v7 + 304);
    v10 = *(v7 + 312);
    v11 = v9 + 8 * (v8 >> 9);
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = (*v11 + 8 * (*(v7 + 328) & 0x1FFLL));
    }

LABEL_6:
    v13 = v12;
    while (1)
    {
      v14 = v10 == v9 ? 0 : *(v9 + (((*(v7 + 336) + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v7 + 336) + v8) & 0x1FF);
      if (v13 == v14)
      {
        break;
      }

      v15 = *v13;
      if (*v13 && a3[2] == *(v15 + 1964))
      {
        std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::erase((v7 + 296), v11, v12);
        *(v15 + 948) = v6;
        if (v4 < 5)
        {
          v17 = 0;
          *(v15 + 952) = 0;
        }

        else
        {
          *(v15 + 952) = a3[3];
          v17 = a3[4];
        }

        *(v15 + 960) = v17;
        v18 = *(v7 + 16);
        if (v18)
        {
          v18(*(v7 + 24), v15);
        }

        v19 = *(v15 + 8);
        if (v19)
        {
          CVPixelBufferRelease(v19);
        }

        v20 = *(v15 + 16);
        if (v20)
        {
          CVPixelBufferRelease(v20);
        }

        v21 = *(v15 + 1960);
        if (v21)
        {
          for (i = 0; i < v21; ++i)
          {
            v23 = *(v15 + 1720 + 8 * i);
            if (v23)
            {
              CVPixelBufferRelease(v23);
              v21 = *(v15 + 1960);
            }
          }
        }

        v24 = *(v15 + 32);
        if (v24)
        {
          CVPixelBufferRelease(v24);
        }

        v25 = *(v15 + 216);
        if (v25)
        {
          CVPixelBufferRelease(v25);
        }

        v26 = *(v15 + 208);
        if (v26)
        {
          CVPixelBufferRelease(v26);
        }

        v27 = *(v15 + 40);
        if (v27)
        {
          CVPixelBufferRelease(v27);
        }

        v28 = *(v15 + 944);
        if (v28)
        {
          for (j = 0; j < v28; ++j)
          {
            v30 = *(v15 + 48 + 8 * j);
            if (v30)
            {
              CVPixelBufferRelease(v30);
              v28 = *(v15 + 944);
            }
          }
        }

        MEMORY[0x22AA55B60](v15, 0x10E0C40926370D1);
        if (*(v7 + 336))
        {
          H16ISP::H16ISPGeneralProcessFrameReceiver::tickleNoDataTimer(v7);
        }

        else
        {
          H16ISP::H16ISPGeneralProcessFrameReceiver::stopNoDataTimer(v7);
        }

        if (*(v7 + 184) == 1 && !*(v7 + 336))
        {
          dispatch_semaphore_signal(*(v7 + 176));
        }

        break;
      }

      v13 += 8;
      v12 += 8;
      if ((*v11 + 4096) == v12)
      {
        v16 = *(v11 + 8);
        v11 += 8;
        v12 = v16;
        goto LABEL_6;
      }
    }

    return pthread_mutex_unlock((v7 + 112));
  }

  return this;
}

void std::deque<H16ISP::H16ISPGeneralProcessFrameReceiverRequest *>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<H16ISP::H16ISPGeneralProcessFrameReceiverRequest *>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::startNoDataTimer(H16ISP::H16ISPGeneralProcessFrameReceiver *this)
{
  v2 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableISPBringup", @"com.apple.coremedia", 0);
  pthread_mutex_lock(this + 3);
  v3 = *(this + 32);
  if (v3)
  {
    CFRunLoopTimerInvalidate(v3);
    CFRelease(*(this + 32));
    *(this + 32) = 0;
  }

  context.version = 0;
  context.info = this;
  memset(&context.retain, 0, 24);
  v4 = CFAbsoluteTimeGetCurrent() + *(this + 44);
  v5 = 200.0;
  if (!v2)
  {
    v5 = 0.0;
  }

  v6 = CFRunLoopTimerCreate(0, v5 + v4, 0.0, 0, 0, H16ISP::H16ISPGeneralProcessFrameReceiver::NoDataTimeout, &context);
  *(this + 32) = v6;
  if (v6)
  {
    CFRunLoopAddTimer(*(this + 1), v6, *MEMORY[0x277CBF058]);
  }

  return pthread_mutex_unlock(this + 3);
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::GeneralProcessBuffers(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v118 = v2;
  v4 = v3;
  v5 = v1;
  v134 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((v1 + 48));
  if ((*(v5 + 344) & 1) != 0 || *v5 != 1)
  {
    pthread_mutex_unlock((v5 + 48));
    return 3758097122;
  }

  v6 = *(v4 + 490);
  if (v6 >= 0x15 || *(v4 + 236) >= 0x15u)
  {
    v7 = v5;
    v8 = 3758097090;
    pthread_mutex_unlock((v7 + 48));
    return v8;
  }

  if ((v118 & 1) == 0)
  {
    v10 = *(v4 + 4);
    if (v10)
    {
      CVPixelBufferRetain(v10);
      v6 = *(v4 + 490);
    }

    if (v6)
    {
      for (i = 0; i < v6; ++i)
      {
        v12 = *&v4[4 * i + 860];
        if (v12)
        {
          CVPixelBufferRetain(v12);
          v6 = *(v4 + 490);
        }
      }
    }

    v13 = *(v4 + 5);
    if (v13)
    {
      CVPixelBufferRetain(v13);
    }

    v14 = *(v4 + 236);
    if (v14)
    {
      for (j = 0; j < v14; ++j)
      {
        v16 = *&v4[4 * j + 24];
        if (v16)
        {
          CVPixelBufferRetain(v16);
          v14 = *(v4 + 236);
        }
      }
    }
  }

  v117 = v5;
  bzero(inputStruct, 0x628uLL);
  LODWORD(v17) = *(v4 + 490);
  v121 = v4;
  if (v17)
  {
    v18 = 0;
    v19 = v4 + 860;
    v20 = 48;
    v21 = 572;
    while (1)
    {
      v22 = *&v19[4 * v18];
      if (v22)
      {
        break;
      }

LABEL_43:
      ++v18;
      v17 = *(v4 + 490);
      v20 += 4;
      v21 += 4;
      if (v18 >= v17)
      {
        goto LABEL_48;
      }
    }

    IOSurface = CVPixelBufferGetIOSurface(v22);
    v24 = &inputStruct[2 * v18];
    *(v24 + 3) = IOSurfaceGetID(IOSurface);
    PixelFormatType = CVPixelBufferGetPixelFormatType(*&v19[4 * v18]);
    H16ISP::getFrameFormatMetaInfo(PixelFormatType, &v127);
    *(&__src[424] + v21) = H16ISP::getFrameFormat(PixelFormatType);
    *(&__src[434] + v21) = CVPixelBufferGetWidth(*&v19[4 * v18]);
    Height = CVPixelBufferGetHeight(*&v19[4 * v18]);
    v27 = &inputStruct[v21 / 2];
    *(v27 - 20) = Height;
    *v27 = *&v121[4 * v18 + 1880];
    v28 = *(&__src[424] + v21);
    if (v28 == 15 || v28 == 0)
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*&v19[4 * v18], 0);
      *&inputStruct[v20 - 2] = CVPixelBufferGetHeight(*&v19[4 * v18]) * BytesPerRowOfPlane;
      v31 = CVPixelBufferGetBytesPerRowOfPlane(*&v19[4 * v18], 1uLL);
      *&inputStruct[v20] = (CVPixelBufferGetHeight(*&v19[4 * v18]) * v31) >> 1;
      BytesPerRowOfTileDataOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*&v19[4 * v18], 0);
    }

    else
    {
      v35 = *&v19[4 * v18];
      if (v128 != 2)
      {
        *(v24 + 63) = CVPixelBufferGetBytesPerRow(v35);
        DataSize = CVPixelBufferGetDataSize(*&v19[4 * v18]);
        v42 = &inputStruct[v20];
        *(v42 - 1) = DataSize;
        *v42 = 0;
LABEL_33:
        v33 = 0;
        v4 = v121;
        if (PixelFormatType != 875704438 && PixelFormatType != 2016686640 && PixelFormatType != 2037741171)
        {
          if (BYTE8(v127))
          {
            v34 = 0;
          }

          else
          {
            v34 = v128 == 2;
          }

          v33 = !v34;
        }

        *(&v132[140] + v18) = v33;
        goto LABEL_43;
      }

      v36 = CVPixelBufferGetIOSurface(v35);
      BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
      v38 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
      AllocSize = IOSurfaceGetAllocSize(v36);
      v40 = &inputStruct[v20];
      *(v40 - 1) = v38 - BaseAddressOfCompressedTileDataRegionOfPlane;
      *v40 = AllocSize - (v38 - BaseAddressOfCompressedTileDataRegionOfPlane);
      BytesPerRowOfTileDataOfPlane = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
    }

    *(v24 + 63) = BytesPerRowOfTileDataOfPlane;
    goto LABEL_33;
  }

LABEL_48:
  v131 = v17;
  v43 = *(v4 + 4);
  if (v43)
  {
    v44 = CVPixelBufferGetIOSurface(v43);
    v132[145] = IOSurfaceGetID(v44);
    v132[146] = CVPixelBufferGetDataSize(*(v121 + 4));
    v4 = v121;
  }

  v45 = *(v4 + 5);
  if (v45)
  {
    v46 = CVPixelBufferGetIOSurface(v45);
    v132[363] = IOSurfaceGetID(v46);
    v132[364] = CVPixelBufferGetDataSize(*(v121 + 5));
    v4 = v121;
  }

  if (*(v4 + 236))
  {
    v47 = 1524;
    v48 = 382;
    v49 = 342;
    v50 = 702;
    v51 = 224;
    do
    {
      v52 = &v4[v48 - 358];
      if (*v52)
      {
        v53 = CVPixelBufferGetPixelFormatType(*v52);
        v54 = CVPixelBufferGetIOSurface(*v52);
        v55 = &inputStruct[v49];
        *&inputStruct[v49] = IOSurfaceGetID(v54);
        FrameFormatMetaInfo = H16ISP::getFrameFormatMetaInfo(v53, &v125);
        v57 = DWORD1(v125);
        if (!FrameFormatMetaInfo)
        {
          v57 = 0;
        }

        *(v55 + 80) = v57;
        if (!v57 || (v57 != 15 ? (v58 = v126 == 2) : (v58 = 1), v58))
        {
          BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(*v52, 0);
        }

        else
        {
          BytesPerRow = CVPixelBufferGetBytesPerRow(*v52);
        }

        v60 = *&v121[v51];
        v61 = *&v121[v51 + 8];
        v62 = *&v121[v51 + 16];
        v63 = *&v121[v51 + 24];
        v64 = &inputStruct[v49];
        v64[60] = BytesPerRow;
        v64[100] = v60;
        v64[120] = v61;
        v64[140] = v62;
        v64[160] = v63;
        v65 = &inputStruct[v50];
        inputStruct[v50] = CVPixelBufferGetWidth(*v52);
        v65[20] = CVPixelBufferGetHeight(*v52);
        v65[40] = *&v121[v49 * 2 + 180];
        v66 = *(v55 + 80);
        if (v66 != 15 && v66)
        {
          v70 = *v52;
          if (v126 == 2)
          {
            v71 = CVPixelBufferGetIOSurface(v70);
            v72 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            v73 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
            v74 = IOSurfaceGetAllocSize(v71);
            *&inputStruct[v48] = v73 - v72;
            v69 = v74 - (v73 - v72);
          }

          else
          {
            v75 = CVPixelBufferGetBytesPerRow(v70);
            v76 = CVPixelBufferGetHeight(*v52);
            v69 = 0;
            *&inputStruct[v48] = v76 * v75;
          }
        }

        else
        {
          v67 = CVPixelBufferGetBytesPerRowOfPlane(*v52, 0);
          *&inputStruct[v48] = CVPixelBufferGetHeight(*v52) * v67;
          v68 = CVPixelBufferGetBytesPerRowOfPlane(*v52, 1uLL);
          v69 = (CVPixelBufferGetHeight(*v52) * v68) >> 1;
        }

        v77 = 0;
        *&inputStruct[v48 + 2] = v69;
        if (v53 != 875704438 && v53 != 2016686640 && v53 != 2037741171)
        {
          if (BYTE8(v125))
          {
            v78 = 0;
          }

          else
          {
            v78 = v126 == 2;
          }

          v77 = !v78;
        }

        *(inputStruct + v47) = v77;
      }

      v4 = v121;
      v79 = *(v121 + 236);
      v80 = v47 - 1523;
      ++v47;
      v48 += 4;
      v49 += 2;
      ++v50;
      v51 += 32;
    }

    while (v80 < v79);
  }

  else
  {
    LODWORD(v79) = 0;
  }

  inputStruct[0] = *v4;
  v81 = inputStruct[0];
  v82 = *(v4 + 1);
  v132[147] = v79;
  v130 = v82;
  v133 = H16ISP::H16ISPGeneralProcessFrameReceiver::FrameDone;
  bzero(__src, 0xE08uLL);
  LOWORD(__src[0]) = v81;
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  v83 = v128 == 2;
  v84 = *(v4 + 490);
  WORD2(__src[0]) = v84;
  if (v84)
  {
    v85 = 0;
    v119 = v4 + 860;
    while (1)
    {
      v86 = *&v119[4 * v85];
      if (v86)
      {
        CVPixelBufferGetExtendedPixels(v86, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
        v87 = CVPixelBufferGetIOSurface(*&v119[4 * v85]);
        PlaneCount = CVPixelBufferGetPlaneCount(*&v119[4 * v85]);
        if (v128 != 2)
        {
          goto LABEL_91;
        }

        v89 = PlaneCount;
        v4 = v121;
        if (PlaneCount)
        {
          break;
        }
      }

LABEL_92:
      if (++v85 >= *(v4 + 490))
      {
        LODWORD(v79) = *(v4 + 236);
        goto LABEL_94;
      }
    }

    v90 = 0;
    v91 = 1;
    do
    {
      v92 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
      BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
      v94 = &__src[1] + 28 * v90;
      *v94 = 0;
      *(v94 + 1) = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
      *(v94 + 2) = BaseAddressOfCompressedTileHeaderRegionOfPlane - v92;
      v95 = v132[v90] - (BaseAddressOfCompressedTileHeaderRegionOfPlane - v92);
      *(v94 + 3) = BaseAddressOfCompressedTileHeaderRegionOfPlane - v92;
      *(v94 + 4) = v95;
      WidthOfPlane = IOSurfaceGetWidthOfPlane(v87, v90);
      *(v94 + 10) = extraColumnsOnRight + WidthOfPlane;
      HeightOfPlane = IOSurfaceGetHeightOfPlane(v87, v90);
      *(v94 + 11) = extraRowsOnBottom + HeightOfPlane;
      *(v94 + 6) = IOSurfaceGetCompressionFootprintOfPlane();
      v90 = v91;
      v98 = v89 > v91++;
    }

    while (v98);
    v83 = 1;
LABEL_91:
    v4 = v121;
    goto LABEL_92;
  }

LABEL_94:
  BYTE2(__src[0]) = v83;
  HIWORD(__src[0]) = v79;
  if (v79)
  {
    v99 = 0;
    v120 = v4 + 24;
    v100 = BYTE3(__src[0]);
    do
    {
      v101 = v99;
      v102 = *&v120[4 * v99];
      if (v102)
      {
        v103 = CVPixelBufferGetIOSurface(v102);
        v104 = CVPixelBufferGetPixelFormatType(*&v120[4 * v101]);
        v105 = CVPixelBufferGetPlaneCount(*&v120[4 * v101]);
        CVPixelBufferGetExtendedPixels(*&v120[4 * v101], 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
        H16ISP::getFrameFormatMetaInfo(v104, &v125);
        if (v105)
        {
          v106 = 0;
          v107 = 1;
          do
          {
            if (v126 == 2)
            {
              v108 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
              v109 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
              v110 = &__src[14 * v101 + 225] + 28 * v106;
              *v110 = 0;
              *(v110 + 1) = IOSurfaceGetBytesPerRowOfTileDataOfPlane();
              *(v110 + 2) = v109 - v108;
              v111 = v132[2 * v101 + 168 + v106] - (v109 - v108);
              *(v110 + 3) = v109 - v108;
              *(v110 + 4) = v111;
              v112 = IOSurfaceGetWidthOfPlane(v103, v106);
              *(v110 + 10) = extraColumnsOnRight + v112;
              v113 = IOSurfaceGetHeightOfPlane(v103, v106);
              *(v110 + 11) = extraRowsOnBottom + v113;
              *(v110 + 6) = IOSurfaceGetCompressionFootprintOfPlane();
              v100 = 1;
            }

            else
            {
              v100 = 0;
            }

            v106 = v107;
            v98 = v105 > v107++;
          }

          while (v98);
        }
      }

      v99 = v101 + 1;
      v4 = v121;
    }

    while (*(v121 + 236) > (v101 + 1));
    BYTE3(__src[0]) = v100;
  }

  v114 = *(v4 + 4);
  if (v114)
  {
    CVPixelBufferLockBaseAddress(v114, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*(v121 + 4));
    v116 = BaseAddress[7];
    if (v116)
    {
      memcpy(BaseAddress + v116, __src, 0xE08uLL);
    }

    CVPixelBufferUnlockBaseAddress(*(v121 + 4), 0);
  }

  if ((v118 & 1) == 0)
  {
    operator new();
  }

  v8 = H16ISP::H16ISPDevice::ISP_GeneralProcessBuffers(*(v117 + 36), inputStruct, 0);
  pthread_mutex_unlock((v117 + 48));
  return v8;
}